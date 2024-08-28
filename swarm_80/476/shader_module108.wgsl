struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: bool,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 25> = array<f32, 25>(-895f, -556f, -705f, 212f, -1313f, 204f, 984f, 546f, 845f, 702f, -1000f, 1407f, -1456f, 211f, -688f, -578f, -596f, -561f, -204f, -204f, 502f, -211f, -1650f, -533f, -392f);

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> i32 {
    global0 = array<f32, 25>();
    var var_0 = ~firstTrailingBit(-vec4<i32>(22906i, select(u_input.a, u_input.a, true), abs(u_input.a), 1i));
    global0 = array<f32, 25>();
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, -1540f) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-564f, 487f))))) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(vec2<f32>(668f, global0[_wgslsmith_index_u32(u_input.d, 25u)]), vec2<f32>(global0[_wgslsmith_index_u32(u_input.c.x, 25u)], global0[_wgslsmith_index_u32(u_input.d, 25u)])))))));
    global0 = array<f32, 25>();
    return var_0.x;
}

fn func_2(arg_0: vec2<bool>) -> i32 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(6629u, 25u)])), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(firstLeadingBit(10273u), 25u)])) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(45461u, 25u)]))))));
    var var_1 = vec4<i32>(func_3(), 41613i, 25216i, u_input.a);
    let var_2 = vec2<u32>(_wgslsmith_sub_u32(35908u << (_wgslsmith_mult_u32(32820u, 0u) % 32u), _wgslsmith_add_u32(~u_input.d, u_input.c.x)) << (u_input.d % 32u), _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(firstTrailingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, 0u), vec4<u32>(u_input.d, 4294967295u, 67640u, 1u))), vec4<u32>(u_input.c.x, u_input.d, u_input.d, u_input.c.x) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.d, 1u, 0u, 60227u), vec4<u32>(1u, 4294967295u, 38316u, 1u), vec4<u32>(u_input.d, u_input.c.x, 49334u, u_input.c.x)) % vec4<u32>(32u))), ~firstLeadingBit(~vec4<u32>(27550u, u_input.b.x, u_input.d, u_input.d))));
    var var_3 = (~(~max(var_2.x, 23354u)) >= (u_input.d << (~var_2.x % 32u))) | false;
    var var_4 = var_1.www;
    return 0i;
}

fn func_1(arg_0: Struct_1) -> u32 {
    var var_0 = firstLeadingBit(abs(~(~(vec4<u32>(u_input.d, 10758u, u_input.c.x, 1u) << (vec4<u32>(90159u, 0u, 0u, u_input.c.x) % vec4<u32>(32u))))));
    let var_1 = ~vec2<i32>(~(~u_input.a) & max(func_2(vec2<bool>(false, false)), u_input.a), -1i);
    let var_2 = !select(!vec3<bool>(true, 3638i <= var_1.x, true), !select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true)), vec3<bool>(true, true, true), false), vec3<bool>(_wgslsmith_f_op_f32(282f * -516f) <= _wgslsmith_div_f32(global0[_wgslsmith_index_u32(u_input.b.x, 25u)], -684f), false, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -29098i, u_input.a, -1i), vec4<i32>(var_1.x, var_1.x, -15762i, var_1.x)) <= (u_input.a & -12140i)));
    return u_input.d;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 25>();
    global0 = array<f32, 25>();
    global0 = array<f32, 25>();
    global0 = array<f32, 25>();
    let var_0 = vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_div_u32(~u_input.c.x, 0u) ^ 139132u, ~_wgslsmith_div_u32(firstTrailingBit(15968u), _wgslsmith_sub_u32(u_input.b.x, u_input.c.x))), _wgslsmith_mult_u32(_wgslsmith_mod_u32(func_1(Struct_1(-195f)), ~select(17861u, 4294967295u, true)), 4294967295u), ~_wgslsmith_clamp_u32(4294967295u, 41156u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 0u, u_input.b.x, 4294967295u), vec4<u32>(u_input.d, u_input.c.x, u_input.b.x, u_input.c.x)) << (reverseBits(u_input.d) % 32u)));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.d, 25u)] - _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(44771u, 25u)]))))));
    var var_2 = Struct_1(global0[_wgslsmith_index_u32(0u, 25u)]);
    let var_3 = -firstTrailingBit(-firstTrailingBit(vec3<i32>(0i, 34572i, u_input.a)) | ~(-vec3<i32>(u_input.a, u_input.a, u_input.a)));
    var var_4 = Struct_2(var_1.a);
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(1u, 25u)], -658f))));
}

