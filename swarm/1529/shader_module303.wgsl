struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 30>;

var<private> global1: vec2<i32> = vec2<i32>(-21261i, 2529i);

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
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

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: i32) -> f32 {
    return -1015f;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_2, arg_3: bool) -> bool {
    let var_0 = vec4<u32>(59400u, _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(~vec2<u32>(1u, 1u), _wgslsmith_add_vec2_u32(~vec2<u32>(arg_2.a, u_input.c), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c, 13851u), vec2<u32>(arg_2.a, arg_2.a), vec2<u32>(u_input.b, arg_2.a)))), ~((vec2<u32>(u_input.b, arg_2.a) & vec2<u32>(4748u, arg_2.a)) & ~vec2<u32>(7493u, arg_2.a))), ~0u ^ select(8568u, 1u, arg_0.a.x), 4294967295u);
    var var_1 = arg_2.a;
    var_1 = u_input.b;
    var_1 = u_input.b;
    global0 = array<vec3<i32>, 30>();
    return arg_2.c.a.x;
}

fn func_2(arg_0: vec4<u32>) -> f32 {
    global0 = array<vec3<i32>, 30>();
    var var_0 = (func_4(Struct_1(vec2<bool>(true, true), _wgslsmith_mult_i32(u_input.a.x, global1.x), _wgslsmith_f_op_f32(func_3(31956i))), Struct_3(Struct_1(vec2<bool>(false, true), -2147483647i, 319f), global1.x & u_input.a.x), Struct_2(4522u, Struct_1(vec2<bool>(false, false), -1i, -279f), Struct_1(vec2<bool>(true, true), global1.x, -348f), -2147483647i), any(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), false))) & any(select(vec2<bool>(true, true), vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false))))) | (true | (177f != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(763f)))));
    global0 = array<vec3<i32>, 30>();
    global1 = abs(~select((u_input.a.yz << (vec2<u32>(arg_0.x, 1u) % vec2<u32>(32u))) >> (vec2<u32>(u_input.c, 124993u) % vec2<u32>(32u)), vec2<i32>(-20014i, min(-27635i, -17941i)), !any(vec2<bool>(false, false))));
    var var_1 = u_input.c ^ 4294967295u;
    return -450f;
}

fn func_5(arg_0: vec3<f32>) -> Struct_2 {
    global0 = array<vec3<i32>, 30>();
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1469f)), _wgslsmith_f_op_f32(f32(-1f) * -406f));
    let var_1 = ~u_input.c;
    var var_2 = false;
    let var_3 = -_wgslsmith_sub_vec4_i32(vec4<i32>(-1i) * -u_input.a, _wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(u_input.a, vec4<i32>(u_input.a.x, 1i, 2147483647i, 1i)), u_input.a) & ~u_input.a);
    return Struct_2(~_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(19747u, u_input.c) >> (vec2<u32>(1u, var_1) % vec2<u32>(32u)), ~vec2<u32>(4294967295u, 50052u)), abs(1u)), Struct_1(select(vec2<bool>(true, true), select(vec2<bool>(false, false), select(vec2<bool>(true, false), vec2<bool>(false, true), false), vec2<bool>(true, true)), vec2<bool>(arg_0.x == -1318f, true)), -5965i, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3(48078i))))), Struct_1(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(select(false, true, true), true), vec2<bool>(true, select(true, true, false))), abs(u_input.a.x), var_0), 717i);
}

fn func_1(arg_0: f32, arg_1: vec4<f32>) -> Struct_3 {
    global0 = array<vec3<i32>, 30>();
    let var_0 = u_input.a.x;
    global0 = array<vec3<i32>, 30>();
    var var_1 = func_5(_wgslsmith_f_op_vec3_f32(arg_1.yww - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(arg_1.x, arg_1.x, true)), _wgslsmith_div_f32(-1000f, -920f), _wgslsmith_f_op_f32(func_2(vec4<u32>(u_input.b, 1962u, 1u, u_input.c)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, 1251f, 271f)) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_0, -261f, arg_0)))))));
    return Struct_3(Struct_1(var_1.c.a, ~24809i, 841f), func_5(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f), -496f) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.b.c, 1895f, 478f) - vec3<f32>(-1251f, arg_1.x, 434f)), _wgslsmith_f_op_vec3_f32(-arg_1.wyx), vec3<bool>(false, var_1.b.a.x, var_1.c.a.x))))).d);
}

fn func_6(arg_0: u32, arg_1: vec4<bool>, arg_2: Struct_3, arg_3: bool) -> i32 {
    var var_0 = arg_1.zxy;
    global1 = vec2<i32>(_wgslsmith_mod_i32(35589i ^ _wgslsmith_mod_i32(1i, ~u_input.a.x), ~(-1i)), -2147483647i);
    global1 = u_input.a.zz;
    return _wgslsmith_add_i32(-9244i, ~(-2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(any(vec2<bool>(true, true)) && !all(vec2<bool>(true, true)));
    global1 = vec2<i32>(_wgslsmith_clamp_i32(1i, _wgslsmith_div_i32(u_input.a.x, _wgslsmith_sub_i32(0i, -1i)), ~(~29400i)), max(1i, global1.x)) | vec2<i32>(func_6(0u, vec4<bool>(true, true, true, true), func_1(_wgslsmith_f_op_f32(-790f + 719f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1195f, -281f, -909f, -964f) + vec4<f32>(-1750f, 1033f, -1000f, 256f))), !(u_input.c >= u_input.b)), abs(~(-35274i)));
    let var_1 = func_1(-616f, vec4<f32>(769f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1361f * 1040f), _wgslsmith_f_op_f32(func_2(vec4<u32>(u_input.b, 4294967295u, u_input.b, 4294967295u))))), func_1(func_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-526f, 302f, 575f))).b.c, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1887f, 1000f, 856f, -733f))).a.c, -819f)).a;
    var var_2 = Struct_2(firstTrailingBit(_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 1u) ^ vec2<u32>(4294967295u, u_input.c), ~_wgslsmith_div_vec2_u32(vec2<u32>(1u, u_input.c), vec2<u32>(16555u, 66512u)))), var_1, Struct_1(vec2<bool>(~u_input.b >= (0u | u_input.b), func_5(vec3<f32>(var_1.c, var_1.c, var_1.c)).c.a.x), ~_wgslsmith_dot_vec2_i32(abs(u_input.a.zx), ~vec2<i32>(var_1.b, 1i)), var_1.c), ~firstTrailingBit(2147483647i));
    var var_3 = 1i;
    let var_4 = var_1;
    var_2 = func_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(435f))), -425f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_2.c.c + var_4.c))))));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~(~firstTrailingBit(vec3<u32>(0u, 1u, 4294967295u)))));
}

