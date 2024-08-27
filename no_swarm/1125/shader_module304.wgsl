struct Struct_1 {
    a: vec4<bool>,
    b: vec2<u32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec4<i32>,
    e: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<u32>,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 13>;

var<private> global1: bool;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_1(arg_0: Struct_4) -> vec3<i32> {
    return select(vec3<i32>(arg_0.a.x, _wgslsmith_add_i32(arg_0.a.x, 2147483647i), arg_0.a.x), ~_wgslsmith_sub_vec3_i32((vec3<i32>(15191i, -8371i, -15453i) & arg_0.a) >> (u_input.b % vec3<u32>(32u)), _wgslsmith_sub_vec3_i32(max(vec3<i32>(0i, 51725i, arg_0.a.x), vec3<i32>(arg_0.a.x, arg_0.a.x, arg_0.a.x)), max(arg_0.a, arg_0.a))), any(!select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), true)) || false);
}

fn func_3(arg_0: vec4<f32>, arg_1: bool, arg_2: f32, arg_3: Struct_2) -> i32 {
    var var_0 = true;
    global1 = !arg_3.b.c.x;
    let var_1 = firstTrailingBit(countOneBits(_wgslsmith_add_vec3_u32(abs(select(u_input.b, vec3<u32>(51994u, 45187u, 4294967295u), arg_3.e)), vec3<u32>(abs(u_input.c), _wgslsmith_div_u32(u_input.c, 1u), 1u))));
    global1 = arg_3.c.c.x;
    var var_2 = Struct_2(Struct_1(!vec4<bool>(all(vec2<bool>(arg_3.b.a.x, arg_3.a.a.x)), !arg_1, arg_1, any(vec4<bool>(arg_1, false, true, false))), select(_wgslsmith_add_vec2_u32(vec2<u32>(4666u, var_1.x), countOneBits(arg_3.c.b)), u_input.b.yy, any(vec4<bool>(true, true, arg_1, arg_1))), !(!(!vec2<bool>(arg_1, arg_1)))), arg_3.c, Struct_1(!vec4<bool>(any(arg_3.a.a), false, all(arg_3.e.zy), false), (u_input.b.xz & ~u_input.b.yx) | (~arg_3.a.b & u_input.b.xy), vec2<bool>(!(!arg_3.a.c.x), _wgslsmith_dot_vec3_u32(var_1, u_input.b) == (var_1.x ^ 76065u))), arg_3.d | ~select(_wgslsmith_mod_vec4_i32(arg_3.d, vec4<i32>(0i, -29344i, -1i, arg_3.d.x)), firstLeadingBit(vec4<i32>(arg_3.d.x, 0i, -2147483647i, arg_3.d.x)), vec4<bool>(false, arg_1, false, arg_3.c.c.x)), vec3<bool>(any(arg_3.c.a.ywx), arg_3.a.c.x, any(arg_3.e.zx)));
    return abs(arg_3.d.x);
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_4) -> Struct_2 {
    global0 = array<Struct_2, 13>();
    global0 = array<Struct_2, 13>();
    global1 = arg_0.x;
    var var_0 = vec2<i32>(_wgslsmith_mod_i32(func_3(vec4<f32>(_wgslsmith_f_op_f32(1000f - -2132f), _wgslsmith_f_op_f32(1283f * -2616f), _wgslsmith_f_op_f32(sign(1766f)), -312f), false, _wgslsmith_f_op_f32(floor(694f)), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b.x, 15916u), 13u)]), u_input.a.x), countOneBits(-(-u_input.a.x >> (17879u % 32u))));
    var var_1 = Struct_3(Struct_1(!vec4<bool>(true, true, true, arg_0.x), firstTrailingBit(u_input.b.xz), !vec2<bool>(arg_0.x, true)), u_input.b);
    return Struct_2(var_1.a, var_1.a, Struct_1(var_1.a.a, abs(_wgslsmith_clamp_vec2_u32(vec2<u32>(62635u, var_1.a.b.x), vec2<u32>(69796u, u_input.c), var_1.b.xy)) ^ (vec2<u32>(u_input.c, u_input.c) & _wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 47572u), vec2<u32>(40795u, u_input.b.x))), !var_1.a.a.yy), ~countOneBits(-_wgslsmith_div_vec4_i32(vec4<i32>(var_0.x, 0i, -58118i, 2147483647i), vec4<i32>(26797i, -21661i, 1i, u_input.a.x))), vec3<bool>(arg_0.x | any(!vec2<bool>(true, arg_0.x)), _wgslsmith_f_op_f32(sign(1000f)) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(2283f))), select(arg_0.x, var_1.a.a.x, false) && all(vec2<bool>(false, true))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> StorageBuffer {
    var var_0 = 366f;
    var var_1 = -1557f;
    global1 = false;
    return StorageBuffer(_wgslsmith_sub_u32(abs(52320u), 1u), arg_0.c.b & ~vec2<u32>(abs(u_input.b.x), func_2(vec4<bool>(arg_1.a.c.x, arg_0.c.c.x, false, true), Struct_4(arg_1.d.zyx)).a.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-205f, -347f), vec2<f32>(-462f, 1765f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(2980f, 1958f))) + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-289f, 598f) - vec2<f32>(-1000f, -1463f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1605f, -980f)))))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1049f, 150f), vec2<f32>(var_0.x, 229f))) * vec2<f32>(-1613f, 1515f)) * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0.x, var_0.x)))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, -1210f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, 2272f) * vec2<f32>(610f, var_0.x))))));
    global0 = array<Struct_2, 13>();
    global1 = true & (0u < u_input.c);
    global1 = false;
    let var_2 = var_1;
    global0 = array<Struct_2, 13>();
    let x = u_input.a;
    s_output = func_4(func_2(select(vec4<bool>(all(vec4<bool>(false, true, false, true)), any(vec2<bool>(false, true)), false, false), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), false), vec4<bool>(true, true, true, true)), Struct_4(-func_1(Struct_4(vec3<i32>(u_input.a.x, 34464i, u_input.a.x))))), Struct_2(Struct_1(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), true)), _wgslsmith_clamp_vec2_u32(vec2<u32>(17594u, u_input.c), ~u_input.b.zz, u_input.b.zy), vec2<bool>(all(vec4<bool>(true, false, false, true)), true)), func_2(!func_2(vec4<bool>(true, true, true, true), Struct_4(vec3<i32>(2147483647i, u_input.a.x, u_input.a.x))).a.a, Struct_4(-vec3<i32>(u_input.a.x, u_input.a.x, 15028i))).a, Struct_1(vec4<bool>(true, func_2(vec4<bool>(false, true, true, true), Struct_4(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x))).c.c.x, func_2(vec4<bool>(true, true, true, false), Struct_4(vec3<i32>(u_input.a.x, u_input.a.x, 2147483647i))).b.c.x, true), ~(u_input.b.zy >> (vec2<u32>(23322u, 25293u) % vec2<u32>(32u))), func_2(vec4<bool>(false, true, false, false), Struct_4(vec3<i32>(u_input.a.x, -2147483647i, 0i))).e.xz), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, 8763i), vec2<i32>(2147483647i, 22012i)) ^ u_input.a.x, u_input.a.x, 1i, 2147483647i), vec3<bool>(!(var_2.x > -511f), func_2(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false)), Struct_4(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x))).b.a.x, false)));
}

