struct Struct_1 {
    a: vec2<f32>,
    b: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<u32>,
    c: Struct_1,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec2<bool>,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
    c: i32,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_4,
    c: bool,
    d: vec4<i32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: vec2<u32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(vec2<f32>(-3375f, 1000f), 2147483647i), Struct_1(vec2<f32>(876f, 1621f), -15615i), Struct_1(vec2<f32>(-1118f, -1000f), 0i), Struct_1(vec2<f32>(873f, -828f), 778i), Struct_1(vec2<f32>(-156f, 628f), 1i), Struct_1(vec2<f32>(226f, -500f), 1i), Struct_1(vec2<f32>(-1877f, 951f), i32(-2147483648)), Struct_1(vec2<f32>(-241f, -123f), 15011i), Struct_1(vec2<f32>(2933f, 1283f), -19515i), Struct_1(vec2<f32>(-1842f, 816f), i32(-2147483648)), Struct_1(vec2<f32>(730f, 104f), 2147483647i), Struct_1(vec2<f32>(2937f, -133f), 1i), Struct_1(vec2<f32>(806f, -1000f), 1i), Struct_1(vec2<f32>(915f, -208f), 39944i), Struct_1(vec2<f32>(1000f, 1033f), 1i));

var<private> global1: Struct_3 = Struct_3(2610u, vec2<bool>(false, true), Struct_2(vec4<f32>(-151f, -251f, -2083f, 657f), vec4<u32>(1880u, 20636u, 0u, 46601u), Struct_1(vec2<f32>(419f, -277f), i32(-2147483648)), -43577i, Struct_1(vec2<f32>(-481f, -628f), i32(-2147483648))), Struct_2(vec4<f32>(494f, -1000f, 165f, 1007f), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 63801u), Struct_1(vec2<f32>(-2326f, -414f), 2147483647i), 24565i, Struct_1(vec2<f32>(1000f, -1446f), 37006i)));

var<private> global2: u32 = 0u;

var<private> global3: u32 = 0u;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: vec2<bool>) -> Struct_1 {
    return global1.d.c;
}

fn func_3(arg_0: i32, arg_1: vec4<u32>) -> vec4<u32> {
    var var_0 = all(!(!vec3<bool>(false, false == global1.b.x, global1.b.x)));
    global1 = Struct_3(_wgslsmith_div_u32(firstLeadingBit(global1.a), 4294967295u), global1.b, Struct_2(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(global1.d.a)), global1.c.a)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.d.c.a.x, global1.d.c.a.x, -555f, 325f) * _wgslsmith_f_op_vec4_f32(-global1.c.a)))), ~min(global1.c.b, vec4<u32>(1u, 1u, arg_1.x, arg_1.x)), Struct_1(_wgslsmith_div_vec2_f32(func_2(vec2<bool>(true, global1.b.x)).a, vec2<f32>(global1.c.c.a.x, global1.c.c.a.x)), 1i), -14424i, func_2(select(global1.b, vec2<bool>(global1.b.x, false), vec2<bool>(true, false)))), Struct_2(vec4<f32>(-148f, _wgslsmith_f_op_f32(-global1.c.e.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global1.d.a.x, -978f))), 1f), vec4<u32>(u_input.a.x ^ ~u_input.e, ~_wgslsmith_div_u32(1u, 52179u), _wgslsmith_mod_u32(1u, _wgslsmith_mult_u32(32480u, global1.c.b.x)), u_input.a.x), func_2(vec2<bool>(global1.b.x, -855f == global1.c.e.a.x)), ~(firstLeadingBit(arg_0) | ~arg_0), Struct_1(global1.d.c.a, abs(global1.c.c.b))));
    let var_1 = global0[_wgslsmith_index_u32(56251u, 15u)];
    global3 = global1.a;
    var var_2 = -524f;
    return ~(~u_input.a);
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: bool, arg_3: Struct_4) -> bool {
    var var_0 = -259f;
    global0 = array<Struct_1, 15>();
    var var_1 = vec2<u32>(_wgslsmith_mult_u32(u_input.b, select(global1.a, ~_wgslsmith_mod_u32(u_input.e, arg_1.b.x), any(select(vec4<bool>(arg_2, true, true, true), vec4<bool>(arg_2, arg_2, false, global1.b.x), global1.b.x)))), arg_1.b.x);
    var var_2 = _wgslsmith_clamp_vec3_u32(abs(u_input.d.zwz), ~countOneBits(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.e, global1.d.b.x, 65148u), ~vec3<u32>(arg_1.b.x, 4294967295u, 1u))), vec3<u32>(~(~u_input.e), ~var_1.x, firstLeadingBit(abs(17061u)) << (firstLeadingBit(firstLeadingBit(26172u)) % 32u)));
    var_2 = ~u_input.d.yxy;
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global1.c.a.x))))) == _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(200f * -723f) * global1.d.e.a.x))));
}

fn func_1(arg_0: Struct_2) -> Struct_3 {
    let var_0 = abs(arg_0.d ^ 24625i);
    global2 = 125876u;
    var var_1 = func_2(vec2<bool>(arg_0.e.a.x > global1.d.e.a.x, false));
    var_1 = func_2(!(!select(vec2<bool>(true, true), vec2<bool>(global1.b.x, global1.b.x), global1.b.x)));
    var var_2 = 0i;
    return Struct_3(66595u, select(select(vec2<bool>(all(vec4<bool>(false, global1.b.x, global1.b.x, false)), any(vec4<bool>(global1.b.x, global1.b.x, false, global1.b.x))), !vec2<bool>(global1.b.x, global1.b.x), !global1.b), vec2<bool>(true, false), func_4(abs(vec4<i32>(global1.c.e.b, -1i, 2147483647i, global1.d.d)), Struct_2(_wgslsmith_f_op_vec4_f32(-global1.d.a), func_3(1i, vec4<u32>(21279u, 82948u, 46954u, 1u)), Struct_1(var_1.a, arg_0.c.b), 0i, func_2(vec2<bool>(global1.b.x, global1.b.x))), false, Struct_4(~var_0, Struct_1(arg_0.a.zx, -9862i), 64798i))), Struct_2(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1870f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.a.x))), _wgslsmith_f_op_f32(ceil(-1330f)), _wgslsmith_f_op_f32(-var_1.a.x)), global1.c.b, global0[_wgslsmith_index_u32(3513u, 15u)], -_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.d, -2147483647i), vec2<i32>(-23949i, -2147483647i)), func_2(vec2<bool>(global1.b.x, false))), arg_0);
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: u32, arg_3: Struct_1) -> Struct_2 {
    var var_0 = !vec4<bool>(arg_0.x, arg_3.a.x < _wgslsmith_f_op_f32(-func_1(arg_1.d).d.e.a.x), !((false & arg_1.b.x) || true), any(vec2<bool>(global1.b.x, true)));
    global3 = global1.d.b.x;
    var_0 = select(!(!select(!vec4<bool>(true, var_0.x, global1.b.x, var_0.x), select(vec4<bool>(arg_0.x, true, var_0.x, arg_1.b.x), vec4<bool>(var_0.x, true, true, true), vec4<bool>(arg_0.x, global1.b.x, arg_0.x, true)), all(arg_0))), vec4<bool>(true, arg_1.b.x, arg_0.x, _wgslsmith_dot_vec3_u32(~global1.c.b.xxy, firstLeadingBit(vec3<u32>(arg_2, 4294967295u, 0u))) > ~arg_1.c.b.x), select(var_0.x, !(!(false && var_0.x)), arg_1.b.x));
    var var_1 = vec2<i32>(_wgslsmith_mod_i32((global1.c.e.b ^ _wgslsmith_sub_i32(-14769i, 41920i)) << (_wgslsmith_mod_u32(~u_input.a.x, _wgslsmith_sub_u32(17271u, global1.c.b.x)) % 32u), arg_3.b ^ (i32(-1i) * -4122i)), max(1i ^ _wgslsmith_clamp_i32(_wgslsmith_add_i32(-4137i, 42831i), -arg_3.b, 0i), arg_1.c.d));
    let var_2 = !vec2<bool>(!var_0.x, global1.b.x);
    return global1.c;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = global1.d.b.x;
    var var_0 = Struct_5(Struct_3(u_input.a.x, vec2<bool>(true, true), Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global1.c.a - global1.d.a)), u_input.a, Struct_1(_wgslsmith_div_vec2_f32(global1.d.c.a, global1.d.a.xw), _wgslsmith_mod_i32(global1.d.d, 18390i)), 0i ^ min(global1.c.e.b, global1.c.c.b), Struct_1(vec2<f32>(-795f, 2352f), 2147483647i)), func_5(!(!vec2<bool>(false, global1.b.x)), func_1(global1.c), firstTrailingBit(~u_input.e), Struct_1(_wgslsmith_f_op_vec2_f32(global1.d.c.a + vec2<f32>(global1.c.e.a.x, 332f)), global1.d.d))), Struct_4(0i, func_1(global1.d).d.e, -26885i), true, _wgslsmith_div_vec4_i32(-firstTrailingBit(vec4<i32>(16331i, global1.c.d, 0i, 1i)) & countOneBits(abs(vec4<i32>(-1i, -18285i, -2147483647i, global1.d.e.b))), vec4<i32>(-1i, ~(-21869i), global1.c.c.b, _wgslsmith_mod_i32(-1i | global1.c.c.b, -2147483647i))), _wgslsmith_f_op_vec3_f32(global1.c.a.wwy - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(766f, -131f, global1.c.a.x) - global1.d.a.wxw) - global1.c.a.xzy) * _wgslsmith_f_op_vec3_f32(global1.c.a.wyx + vec3<f32>(-1159f, global1.d.c.a.x, global1.d.c.a.x)))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global1.c.a.x), _wgslsmith_f_op_f32(-global1.d.e.a.x), -1019f), global1.d.a.xyz)));
    var var_2 = _wgslsmith_dot_vec4_u32(u_input.a, min(vec4<u32>(abs(4294967295u) >> (global1.d.b.x % 32u), 54244u, 27392u, global1.c.b.x), _wgslsmith_sub_vec4_u32(vec4<u32>(var_0.a.c.b.x, ~var_0.a.d.b.x, reverseBits(13843u), var_0.a.a), _wgslsmith_add_vec4_u32(vec4<u32>(var_0.a.c.b.x, 93954u, u_input.c, var_0.a.c.b.x), abs(vec4<u32>(1544u, u_input.e, var_0.a.d.b.x, u_input.b))))));
    var var_3 = vec4<i32>(_wgslsmith_dot_vec3_i32(-countOneBits(-var_0.d.wxw), var_0.d.xzz), 13296i, var_0.b.a, abs(var_0.d.x));
    let x = u_input.a;
    s_output = StorageBuffer(func_1(func_5(global1.b, var_0.a, _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(global1.d.b.x, var_0.a.c.b.x, u_input.a.x), vec3<u32>(global1.a, global1.a, 8004u), vec3<u32>(var_0.a.a, global1.a, 0u)), var_0.a.c.b.yww), var_0.b.b)).a, 1475u, global1.c.b.zyz, u_input.d.yw, ~_wgslsmith_clamp_vec4_i32(-_wgslsmith_div_vec4_i32(var_0.d, var_0.d), abs(select(vec4<i32>(0i, -28039i, var_0.d.x, var_0.a.d.d), vec4<i32>(global1.d.c.b, 2147483647i, var_3.x, 16117i), true)), ~(-vec4<i32>(global1.d.d, global1.d.e.b, 1343i, global1.d.c.b))));
}

