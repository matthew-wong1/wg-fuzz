struct Struct_1 {
    a: vec3<f32>,
    b: vec4<i32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: vec2<u32>,
    d: Struct_3,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<vec2<f32>, 32>;

var<private> global2: Struct_1;

var<private> global3: f32 = -748f;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: vec3<i32>, arg_2: u32) -> i32 {
    var var_0 = Struct_4(global2.a.x, Struct_3(any(vec2<bool>(any(vec3<bool>(true, false, true)), true))), u_input.d, Struct_3(arg_0 > -182f), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global2.a + _wgslsmith_f_op_vec3_f32(max(global2.a, global2.a)))))));
    let var_1 = 39382i;
    let var_2 = 113f;
    var var_3 = vec2<u32>(~max(_wgslsmith_sub_u32(4294967295u | arg_2, arg_2 << (17511u % 32u)), ~13256u), max(~max(1u, _wgslsmith_dot_vec4_u32(u_input.a, u_input.a)), ~_wgslsmith_dot_vec4_u32(~u_input.a, ~vec4<u32>(17700u, arg_2, arg_2, 4294967295u))));
    let var_4 = firstTrailingBit(var_0.c.x) << (max(13161u, ~u_input.a.x) % 32u);
    return arg_1.x;
}

fn func_2(arg_0: vec3<f32>, arg_1: vec2<f32>, arg_2: vec4<u32>, arg_3: i32) -> vec2<bool> {
    let var_0 = any(vec4<bool>(true, any(vec2<bool>(true, true)), false || all(vec4<bool>(false, false, true, false)), arg_3 >= 2147483647i));
    var var_1 = _wgslsmith_mult_i32(~19942i, (-49902i ^ func_3(global2.a.x, vec3<i32>(u_input.c, 2147483647i, -2147483647i) & global2.b.wzx, arg_2.x)) ^ (i32(-1i) * -1i));
    var var_2 = vec3<u32>(~(~(max(arg_2.x, arg_2.x) << (0u % 32u))), ~(~27482u & ~arg_2.x), u_input.a.x);
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(652f)));
    var var_3 = select(_wgslsmith_div_vec2_i32(select(~(-global2.b.yz), -min(global2.b.xz, vec2<i32>(-1i, u_input.c)), vec2<bool>(false, var_0)), global2.b.wz), select(global2.c, vec2<i32>(firstLeadingBit(u_input.c), _wgslsmith_mult_i32(global2.c.x, -23096i)), select(vec2<bool>(var_0, var_0), select(vec2<bool>(var_0, true), vec2<bool>(true, false), true), vec2<bool>(true, var_0))) & global2.b.xy, 47101u < ~(~arg_2.x ^ 19727u));
    return vec2<bool>(select(!(!all(vec3<bool>(var_0, var_0, var_0))), any(select(vec3<bool>(var_0, true, var_0), vec3<bool>(var_0, false, false), vec3<bool>(false, var_0, var_0))) || all(!vec2<bool>(var_0, false)), var_0), true);
}

fn func_1() -> Struct_3 {
    let var_0 = max(vec2<u32>(abs(_wgslsmith_mult_u32(~1u, u_input.b)), 12773u & (u_input.b << (u_input.b % 32u))), min(vec2<u32>(_wgslsmith_mod_u32(u_input.d.x, u_input.d.x), 1u << (u_input.d.x % 32u)), u_input.d) ^ (~vec2<u32>(0u, u_input.b) << (~min(u_input.d, u_input.a.xx) % vec2<u32>(32u))));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-1132f - -312f), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(494f, _wgslsmith_f_op_f32(select(1753f, _wgslsmith_f_op_f32(max(-460f, global2.a.x)), u_input.b == var_0.x))))));
    var var_2 = !select(!select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(false, true)), select(select(vec2<bool>(true, true), func_2(global2.a, global1[_wgslsmith_index_u32(u_input.d.x, 32u)], vec4<u32>(var_0.x, 1u, 25116u, 0u), global2.b.x), true), vec2<bool>(true, var_1.x <= 305f), select(vec2<bool>(true, true), vec2<bool>(true, true), false)), !any(func_2(vec3<f32>(-1303f, var_1.x, global2.a.x), vec2<f32>(191f, 176f), vec4<u32>(u_input.a.x, 0u, var_0.x, var_0.x), -1i)));
    var_1 = global2.a.xy;
    let var_3 = _wgslsmith_div_u32(1u, _wgslsmith_clamp_u32(var_0.x, 4294967295u, ~abs(96712u)));
    return Struct_3((i32(-1i) * -(u_input.c ^ u_input.c)) == u_input.c);
}

fn func_4(arg_0: f32, arg_1: vec2<u32>, arg_2: Struct_4, arg_3: bool) -> vec3<f32> {
    var var_0 = Struct_4(global2.a.x, arg_2.d, reverseBits(arg_2.c), Struct_3(false), global2.a);
    var var_1 = Struct_2(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(min(global2.c.x, _wgslsmith_dot_vec2_i32(global2.b.wz, global2.c)), 7212i >> (arg_2.c.x % 32u)), global2.b.x, countOneBits(_wgslsmith_div_i32(_wgslsmith_div_i32(u_input.c, 31424i), select(global2.c.x, global2.c.x, var_0.d.a)))), -_wgslsmith_dot_vec2_i32(global2.b.yy, countOneBits(vec2<i32>(u_input.c, 0i))), Struct_1(_wgslsmith_f_op_vec3_f32(var_0.e * _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.e.x, -843f, -346f) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, arg_2.a, 642f), vec3<f32>(-1000f, -271f, var_0.a), vec3<bool>(true, false, arg_2.b.a))))), _wgslsmith_sub_vec4_i32(vec4<i32>(abs(-1i), global2.c.x, ~global2.c.x, ~u_input.c), _wgslsmith_clamp_vec4_i32(global2.b, vec4<i32>(42361i, -1221i, global2.b.x, u_input.c), global2.b)), -global2.b.xy));
    var var_2 = Struct_2(global2.c.x | _wgslsmith_div_i32(-1i, -1i), global2.c.x, Struct_1(global2.a, var_1.c.b, ~min(var_1.c.c, vec2<i32>(global2.c.x, 100941i))));
    var var_3 = Struct_2(-31980i, -_wgslsmith_div_i32(_wgslsmith_div_i32(var_2.c.c.x << (38171u % 32u), -u_input.c), _wgslsmith_dot_vec4_i32(var_1.c.b, global2.b)), var_2.c);
    global3 = -695f;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(arg_2.e, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(134f, -297f, var_0.e.x) + var_2.c.a))))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -152f) + _wgslsmith_f_op_f32(f32(-1f) * -1172f)), global2.a.x, -1000f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global2.a + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-417f, var_2.c.a.x, global2.a.x) + var_1.c.a))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.c.a.x, _wgslsmith_f_op_f32(-var_2.c.a.x), -285f))));
}

fn func_5(arg_0: vec3<f32>) -> Struct_3 {
    var var_0 = func_1();
    var var_1 = Struct_2(2147483647i, ~u_input.c, Struct_1(_wgslsmith_f_op_vec3_f32(step(arg_0, _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global2.a.x, arg_0.x, -1286f))))), vec4<i32>(_wgslsmith_mod_i32(u_input.c, func_3(global2.a.x, global2.b.yyw, 4294967295u)), 80951i, 0i, countOneBits(-u_input.c)), firstTrailingBit(vec2<i32>(u_input.c, global2.b.x)) ^ _wgslsmith_sub_vec2_i32(global2.b.wx >> (u_input.a.ww % vec2<u32>(32u)), select(vec2<i32>(u_input.c, 8790i), vec2<i32>(-13237i, 2147483647i), vec2<bool>(var_0.a, var_0.a)))));
    global1 = array<vec2<f32>, 32>();
    let var_2 = Struct_2(1i, ~global2.b.x, Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global2.a + var_1.c.a))), global2.b ^ (vec4<i32>(-1i, -12980i, 47724i, 2147483647i) & _wgslsmith_mod_vec4_i32(vec4<i32>(-2096i, global2.c.x, global2.c.x, -56855i), vec4<i32>(global2.c.x, u_input.c, -34570i, var_1.c.b.x))), ((vec2<i32>(global2.c.x, var_1.a) >> (u_input.d % vec2<u32>(32u))) ^ global2.b.zx) ^ global2.c));
    global1 = array<vec2<f32>, 32>();
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    global3 = _wgslsmith_f_op_f32(floor(global2.a.x));
    let var_0 = func_5(_wgslsmith_f_op_vec3_f32(func_4(1605f, ~select(~u_input.a.xz, vec2<u32>(2689u, 5475u), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false))), Struct_4(-220f, func_1(), ~u_input.a.yy, func_1(), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global2.a, vec3<f32>(387f, -617f, 1000f)))), true && !select(true, true, false))));
    let var_1 = Struct_2((-2147483647i ^ _wgslsmith_clamp_i32(func_3(global2.a.x, global2.b.wyw, 26021u), 10855i >> (u_input.b % 32u), u_input.c ^ global2.b.x)) | firstTrailingBit(-(~u_input.c)), -5395i, Struct_1(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global2.a * global2.a)))), reverseBits(vec4<i32>(u_input.c, 25304i | global2.b.x, u_input.c, -19775i)), firstTrailingBit(vec2<i32>(-41419i, 8264i))));
    let var_2 = vec2<bool>(true, true);
    global2 = var_1.c;
    let var_3 = abs(-(firstTrailingBit(global2.b) << (vec4<u32>(13845u >> (u_input.d.x % 32u), u_input.d.x | 1u, select(u_input.d.x, u_input.b, var_0.a), ~u_input.b) % vec4<u32>(32u))));
    let var_4 = global2.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.d.x, 0u, 21472u), countOneBits(u_input.a.wwy), vec3<u32>(u_input.b, u_input.b, 1u))), vec4<u32>(firstLeadingBit(_wgslsmith_sub_u32(_wgslsmith_mod_u32(u_input.a.x, u_input.b), u_input.a.x)), 39506u | ~u_input.b, u_input.d.x, firstTrailingBit(23475u)));
}

