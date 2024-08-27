struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: u32,
    c: bool,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 23>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: vec4<i32>, arg_1: i32) -> vec4<i32> {
    let var_0 = global0[_wgslsmith_index_u32(u_input.a, 23u)];
    global0 = array<Struct_3, 23>();
    return _wgslsmith_mod_vec4_i32(countOneBits(abs(min(firstTrailingBit(vec4<i32>(-1i, -3081i, u_input.c, 1i)), arg_0))), arg_0);
}

fn func_3(arg_0: vec4<i32>, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: Struct_3) -> vec3<i32> {
    let var_0 = arg_0.x;
    let var_1 = _wgslsmith_f_op_vec2_f32(-arg_3.d.zz);
    let var_2 = _wgslsmith_mult_u32(min(u_input.a, firstTrailingBit(~(4294967295u << (arg_3.b % 32u)))), 17944u);
    var var_3 = ~abs(_wgslsmith_add_u32(~abs(var_2), var_2));
    var var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3.d.x, var_1.x) * _wgslsmith_f_op_vec2_f32(ceil(arg_3.d.zz))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1000f, 1263f), vec2<f32>(-1599f, arg_3.a.x))) * arg_3.a.wz)))));
    return select(vec3<i32>(abs(_wgslsmith_sub_i32(2607i, 14807i)), 1i, u_input.c) & arg_2.a, _wgslsmith_mod_vec3_i32(vec3<i32>(-_wgslsmith_mult_i32(7940i, arg_0.x), _wgslsmith_add_i32(arg_2.a.x, min(arg_0.x, var_0)), arg_0.x), _wgslsmith_div_vec3_i32(~vec3<i32>(arg_0.x, u_input.b, -1i), -arg_0.www)), any(!arg_1.yz));
}

fn func_4(arg_0: Struct_1) -> u32 {
    let var_0 = vec2<u32>(30330u, firstTrailingBit(u_input.a));
    var var_1 = true;
    global0 = array<Struct_3, 23>();
    var var_2 = -33128i | reverseBits(arg_0.a.x);
    let var_3 = Struct_1(vec3<i32>(-1i, (_wgslsmith_mod_i32(u_input.b, -7890i) ^ u_input.b) ^ arg_0.a.x, u_input.c));
    return ~abs(u_input.a) >> (0u % 32u);
}

fn func_1() -> vec4<f32> {
    let var_0 = countOneBits(countOneBits(_wgslsmith_mod_vec4_i32(select(func_2(vec4<i32>(u_input.b, u_input.d, -84478i, u_input.d), -1i), abs(vec4<i32>(1i, u_input.c, u_input.b, 1i)), vec4<bool>(true, true, true, true)), _wgslsmith_sub_vec4_i32(-vec4<i32>(u_input.c, u_input.c, 1i, 25590i), reverseBits(vec4<i32>(u_input.d, -1i, 15775i, -1i))))));
    let var_1 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(951f, _wgslsmith_f_op_f32(abs(285f)), -125f)));
    var var_2 = all(!(!select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)))) && (func_4(Struct_1(func_3(var_0, vec4<bool>(false, true, false, false), Struct_1(var_0.wzw), global0[_wgslsmith_index_u32(u_input.a, 23u)]))) > 0u);
    global0 = array<Struct_3, 23>();
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-244f)))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -478f))));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1488f, var_1.x, -1074f, var_1.x))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 1396f, var_1.x, 596f)), vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x))), vec4<bool>(all(vec4<bool>(false, false, false, true)), all(vec3<bool>(false, true, true)), true, true))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(508f)), 1563f), _wgslsmith_f_op_f32(-var_1.x), 1321f, var_1.x))) + vec4<f32>(var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(var_1.x, -1109f)), _wgslsmith_f_op_f32(var_1.x + -760f))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_1.x, var_1.x)), _wgslsmith_f_op_f32(min(1000f, 578f)))), _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(select(var_1.x, -563f, all(vec4<bool>(true, false, false, true))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1())));
    var var_1 = Struct_1(vec3<i32>(u_input.c, _wgslsmith_mult_i32(-(~(-1i)), 42020i), u_input.b));
    var var_2 = Struct_1(var_1.a);
    var var_3 = Struct_3(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-var_0))), select(u_input.a | _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a, 51474u), select(vec3<u32>(4294967295u, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a), false)), u_input.a, false), false, _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, _wgslsmith_f_op_f32(-1265f + _wgslsmith_f_op_f32(trunc(389f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * var_0.x) + -962f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1382f, var_0.x, -241f) + vec3<f32>(var_0.x, -622f, var_0.x)))))));
    var var_4 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.x))), -1051f, _wgslsmith_f_op_f32(var_3.d.x + 653f)));
    var_1 = Struct_1(var_2.a);
    var var_5 = _wgslsmith_mod_vec3_i32(var_1.a, vec3<i32>(u_input.d, -abs(2147483647i), u_input.d));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(vec4<u32>(0u, 0u, var_3.b, 1u) << (~vec4<u32>(0u, u_input.a, var_3.b, 58075u) % vec4<u32>(32u)))), func_3(~(select(vec4<i32>(1i, 1i, var_1.a.x, var_2.a.x), vec4<i32>(34523i, 2147483647i, var_1.a.x, var_2.a.x), true) | vec4<i32>(-25039i, 23017i, var_1.a.x, var_2.a.x)), vec4<bool>(var_3.c, var_3.c || (4294967295u < var_3.b), var_3.c, false), Struct_1(-(~var_1.a)), Struct_3(_wgslsmith_f_op_vec4_f32(-var_0), 0u, false, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-903f, 578f, var_0.x))) - vec3<f32>(1214f, var_0.x, -1548f)))).x);
}

