struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: bool,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 10> = array<vec4<bool>, 10>(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true));

var<private> global1: i32;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: bool) -> f32 {
    var var_0 = true;
    global1 = min(u_input.a, _wgslsmith_add_i32(~u_input.a, ~(-(-76833i << (0u % 32u)))));
    var_0 = arg_0 & any(select(!vec4<bool>(arg_0, arg_0, false, arg_0), vec4<bool>(true, false, arg_0, false), any(select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, false), vec2<bool>(true, arg_0)))));
    var var_1 = -305f < _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(561f, -1000f)))), _wgslsmith_div_f32(877f, _wgslsmith_f_op_f32(f32(-1f) * -1439f)));
    var_1 = false;
    return _wgslsmith_f_op_f32(-1f);
}

fn func_2(arg_0: i32, arg_1: vec3<f32>, arg_2: Struct_1) -> i32 {
    let var_0 = vec3<bool>(true, all(vec2<bool>((arg_2.a.x < arg_1.x) | false, any(select(vec3<bool>(true, true, false), vec3<bool>(false, false, arg_2.c), false)))), true);
    global1 = u_input.a;
    var var_1 = abs(vec4<i32>(firstTrailingBit(arg_0 ^ 1i), ~(~(-17098i)), _wgslsmith_mod_i32(arg_0, u_input.a) ^ u_input.a, _wgslsmith_add_i32(0i, u_input.a)) | ~vec4<i32>(_wgslsmith_div_i32(78529i, -2392i), abs(arg_0), 35894i, -2147483647i));
    var var_2 = ~(~vec2<u32>(45520u & _wgslsmith_add_u32(u_input.b, arg_2.d), countOneBits(u_input.b)));
    let var_3 = _wgslsmith_f_op_f32(func_3(true));
    return ~(-2147483647i) & ~u_input.a;
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> StorageBuffer {
    global1 = _wgslsmith_div_i32(-1i, _wgslsmith_add_i32(func_2(-u_input.a, vec3<f32>(1f, 1f, 1f), Struct_1(arg_0.a, arg_0.b, arg_1, 0u)) >> (_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, 1u, 4294967295u), vec3<u32>(7853u, 2825u, 41149u)), ~vec3<u32>(arg_0.d, 51969u, 4294967295u)) % 32u), -30296i));
    var var_0 = vec4<u32>(~(~_wgslsmith_clamp_u32(arg_0.d, 1u << (u_input.b % 32u), 16291u)), ~0u ^ _wgslsmith_mod_u32(reverseBits(90106u) & (0u ^ arg_0.d), u_input.b), arg_0.d, 44566u);
    var var_1 = _wgslsmith_mod_vec2_i32(vec2<i32>(17184i, u_input.a), _wgslsmith_sub_vec2_i32(select(firstTrailingBit(_wgslsmith_sub_vec2_i32(vec2<i32>(22162i, u_input.a), vec2<i32>(u_input.a, 7444i))), vec2<i32>(_wgslsmith_div_i32(2147483647i, -28818i), u_input.a), true), firstLeadingBit(reverseBits(vec2<i32>(1i, -24705i)) << (~var_0.xx % vec2<u32>(32u)))));
    var var_2 = _wgslsmith_f_op_f32(-arg_0.b);
    let var_3 = !(!(!vec3<bool>(all(vec2<bool>(false, arg_1)), true, true)));
    return StorageBuffer(~arg_0.d, u_input.a, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1473f, 1000f, _wgslsmith_f_op_f32(min(698f, _wgslsmith_f_op_f32(max(arg_0.a.x, -1000f)))), arg_0.b), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1104f, 778f, -898f, -186f))))))), arg_0.c & any(select(global0[_wgslsmith_index_u32(4294967295u, 10u)], global0[_wgslsmith_index_u32(u_input.b, 10u)], arg_1)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<bool>, 10>();
    global1 = -7406i;
    global0 = array<vec4<bool>, 10>();
    global0 = array<vec4<bool>, 10>();
    let var_0 = vec2<i32>(min(u_input.a, _wgslsmith_mult_i32(i32(-1i) * -u_input.a, 46809i)), u_input.a);
    let var_1 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -469f))), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-176f + -1869f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-2100f)))))));
    let x = u_input.a;
    s_output = func_1(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_1.xw, var_1.ww, vec2<bool>(false, true)))) * vec2<f32>(_wgslsmith_f_op_f32(924f * 817f), var_1.x)), var_1.x, any(!select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), true)), _wgslsmith_sub_u32(~(~u_input.b), 4294967295u)), _wgslsmith_add_i32(u_input.a, u_input.a) == u_input.a);
}

