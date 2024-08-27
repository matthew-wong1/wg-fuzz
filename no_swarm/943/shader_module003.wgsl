struct Struct_1 {
    a: vec2<f32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_3,
    c: vec2<bool>,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 22>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_3) -> f32 {
    let var_0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-507f - 573f))), _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1952f))))), any(!select(select(vec3<bool>(arg_0.a.b, true, arg_0.a.b), vec3<bool>(true, arg_0.a.b, arg_0.a.b), arg_0.a.b), select(vec3<bool>(false, false, false), vec3<bool>(true, arg_0.a.b, true), arg_0.b.x), !arg_0.a.b)));
    var var_1 = Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-424f - var_0.a.x), 1281f)), arg_0.b.x), arg_0.b);
    let var_2 = arg_0.a;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.a.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(1000f, var_1.a.a.x))))));
    var var_4 = arg_0.a.a;
    return -847f;
}

fn func_2(arg_0: vec4<u32>) -> vec4<u32> {
    global0 = array<vec4<bool>, 22>();
    var var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-878f, 887f)) + _wgslsmith_f_op_f32(-288f * 1000f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_3(Struct_1(vec2<f32>(110f, -684f), false), vec2<bool>(true, true)))) * _wgslsmith_f_op_f32(min(-670f, -862f))))), !(true || any(vec2<bool>(true, false)))));
    var var_1 = select(!global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_sub_u32(firstLeadingBit(4363u), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.x, 22597u), vec2<u32>(arg_0.x, arg_0.x))), arg_0.x), 22u)], vec4<bool>(all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), true, true, true), vec4<bool>(true, select(true, true, all(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false)))), true, all(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false)), true))));
    let var_2 = select(false, all(select(!select(vec3<bool>(var_1.x, false, var_1.x), vec3<bool>(true, var_1.x, true), var_1.x), var_1.yxz, true)), true);
    let var_3 = all(vec3<bool>(false, !var_1.x & any(vec4<bool>(var_1.x, var_2, var_2, false)), !select(any(global0[_wgslsmith_index_u32(4294967295u, 22u)]), true, var_2)));
    return ~_wgslsmith_div_vec4_u32(vec4<u32>((arg_0.x << (27775u % 32u)) << (reverseBits(u_input.d.x) % 32u), _wgslsmith_div_u32(0u, 29255u) << (_wgslsmith_add_u32(arg_0.x, 0u) % 32u), max(0u, _wgslsmith_mult_u32(arg_0.x, 24583u)), _wgslsmith_mod_u32(1u, arg_0.x)), vec4<u32>(28941u, 49409u, u_input.b, ~firstLeadingBit(0u)));
}

fn func_1(arg_0: u32, arg_1: Struct_1) -> u32 {
    let var_0 = firstLeadingBit(func_2(vec4<u32>(u_input.b, u_input.d.x, 1493u | arg_0, _wgslsmith_mod_u32(4294967295u, 14637u))));
    var var_1 = Struct_3(arg_1, vec2<bool>(true, true));
    let var_2 = true;
    let var_3 = u_input.c.zzz;
    global0 = array<vec4<bool>, 22>();
    return ~var_3.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 6365u;
    var_0 = u_input.b;
    var var_1 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(-953f, 646f)), -567f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(798f + 907f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1381f + 1000f) + _wgslsmith_f_op_f32(-1144f + -740f))))));
    var var_2 = ~(~_wgslsmith_div_vec3_i32(vec3<i32>(abs(u_input.e), u_input.e & -2147483647i, _wgslsmith_div_i32(u_input.a, 1734i)), ~abs(vec3<i32>(30142i, 35332i, u_input.e))));
    let var_3 = select(1u, ~(~func_1(u_input.d.x, Struct_1(vec2<f32>(362f, -364f), false))), all(!select(vec3<bool>(false, false, false), select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true))));
    let var_4 = vec3<bool>(!any(!select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false))), true, true);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~(~1u) << (var_3 % 32u)), vec3<i32>(u_input.e, -31232i, -2147483647i));
}

