struct Struct_1 {
    a: vec2<i32>,
    b: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: array<vec4<bool>, 15>;

var<private> global2: array<vec3<u32>, 16> = array<vec3<u32>, 16>(vec3<u32>(46524u, 0u, 0u), vec3<u32>(1u, 50432u, 4294967295u), vec3<u32>(23742u, 0u, 4294967295u), vec3<u32>(94311u, 13508u, 0u), vec3<u32>(37259u, 50903u, 35884u), vec3<u32>(0u, 15957u, 0u), vec3<u32>(35814u, 0u, 52215u), vec3<u32>(10770u, 16380u, 7941u), vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(96520u, 17792u, 0u), vec3<u32>(96747u, 1u, 0u), vec3<u32>(44340u, 0u, 1u), vec3<u32>(9998u, 10340u, 0u), vec3<u32>(6116u, 1u, 8555u), vec3<u32>(6333u, 4294967295u, 9892u), vec3<u32>(4294967295u, 61710u, 1u));

var<private> global3: f32;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_2(arg_0: i32) -> vec4<f32> {
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(190f - 1000f) + _wgslsmith_f_op_f32(442f + -242f)) * _wgslsmith_f_op_f32(301f + 825f)), 402f, 636f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-766f)), _wgslsmith_f_op_f32(abs(-901f)))))));
}

fn func_3(arg_0: bool, arg_1: vec3<u32>, arg_2: vec4<f32>) -> Struct_1 {
    global3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(arg_2.x, _wgslsmith_f_op_f32(arg_2.x + _wgslsmith_f_op_f32(arg_2.x * _wgslsmith_f_op_f32(sign(496f)))))));
    let var_0 = _wgslsmith_f_op_f32(min(333f, _wgslsmith_div_f32(679f, arg_2.x)));
    global0 = abs(vec4<u32>(_wgslsmith_mod_u32(11794u, firstLeadingBit(global0.x | 6363u)), ~u_input.a.x, firstTrailingBit(0u), _wgslsmith_add_u32(abs(arg_1.x), 0u)));
    global3 = var_0;
    var var_1 = Struct_1(_wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, ~u_input.d.x), -firstLeadingBit(vec2<i32>(u_input.e, u_input.b))) & ~u_input.d, var_0);
    return Struct_1((_wgslsmith_add_vec2_i32(var_1.a, vec2<i32>(2147483647i, var_1.a.x)) ^ ~firstTrailingBit(vec2<i32>(var_1.a.x, var_1.a.x))) & -vec2<i32>(36539i, reverseBits(-19381i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_div_f32(arg_2.x, -556f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-255f - -2318f))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x))))));
}

fn func_1(arg_0: vec4<f32>, arg_1: u32, arg_2: vec4<i32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-796f, 707f, 342f, arg_0.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-961f, arg_0.x, -995f, arg_0.x) - arg_0)))) + arg_0)));
    global0 = firstLeadingBit(~min(vec4<u32>(0u, 4294967295u, u_input.a.x, 4294967295u) | vec4<u32>(29582u, arg_1, arg_1, arg_1), vec4<u32>(4294967295u, global0.x, 0u, u_input.a.x))) | (~select(~vec4<u32>(arg_1, 8090u, 1u, u_input.a.x), ~vec4<u32>(1u, global0.x, 4294967295u, u_input.a.x), vec4<bool>(true, true, false, true)) & ((vec4<u32>(63783u, global0.x, global0.x, 0u) | ~vec4<u32>(4294967295u, 4294967295u, arg_1, 65028u)) | firstLeadingBit(max(vec4<u32>(0u, 1u, 19121u, global0.x), vec4<u32>(6110u, arg_1, arg_1, 110003u)))));
    global2 = array<vec3<u32>, 16>();
    let var_1 = func_3(false, ~(~vec3<u32>(~27770u, 1u, global0.x)), _wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_mod_i32(select(u_input.b, u_input.c, true), -arg_2.x))));
    var var_2 = _wgslsmith_dot_vec3_u32(min(global0.yyx, vec3<u32>(1u, 72398u, u_input.a.x)), global0.wwz) << (1u % 32u);
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = _wgslsmith_f_op_f32(2494f - -1439f);
    var var_0 = _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(select(u_input.d, min(vec2<i32>(u_input.e, u_input.c), u_input.d), true), -vec2<i32>(u_input.d.x, -5070i)), -1i, -1i), ~(~(-vec3<i32>(963i, u_input.c, u_input.b))) | (-max(vec3<i32>(20907i, 28105i, u_input.c), vec3<i32>(-30911i, u_input.c, u_input.d.x)) ^ _wgslsmith_div_vec3_i32(~vec3<i32>(u_input.e, -2147483647i, -2147483647i), select(vec3<i32>(u_input.c, 37530i, u_input.e), vec3<i32>(-2147483647i, u_input.e, 1i), vec3<bool>(false, true, true)))));
    global1 = array<vec4<bool>, 15>();
    global1 = array<vec4<bool>, 15>();
    let var_1 = func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -486f), _wgslsmith_f_op_f32(min(720f, -737f)), _wgslsmith_f_op_f32(f32(-1f) * -1275f), 548f))) + vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(-794f)))), _wgslsmith_f_op_f32(sign(-624f)), 2717f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-927f, -108f, true)) + _wgslsmith_f_op_f32(-868f + 1610f)))), ~global0.x, _wgslsmith_div_vec4_i32(min(countOneBits(-vec4<i32>(28540i, 24242i, -16693i, u_input.b)), abs(abs(vec4<i32>(-1i, -41563i, -1i, 1i)))), select(firstTrailingBit(min(vec4<i32>(u_input.e, u_input.c, u_input.c, u_input.b), vec4<i32>(u_input.c, u_input.e, u_input.c, 2147483647i))), -vec4<i32>(u_input.d.x, -2147483647i, u_input.e, u_input.c), any(!global1[_wgslsmith_index_u32(4294967295u, 15u)]))));
    let var_2 = vec4<bool>(true, !(!(!any(global1[_wgslsmith_index_u32(3208u, 15u)]))), false & any(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a.x ^ 1u, 0u), 15u)]), true);
    global0 = vec4<u32>(u_input.a.x >> (1u % 32u), ~global0.x, u_input.a.x, countOneBits(8908u));
    let x = u_input.a;
    s_output = StorageBuffer(46845u, u_input.a, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(145f)) * var_1.b))), var_1.a.x);
}

