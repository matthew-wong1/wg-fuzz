struct Struct_1 {
    a: vec2<i32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec2<bool>,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 7> = array<bool, 7>(true, false, true, true, false, true, true);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: i32) -> vec3<u32> {
    let var_0 = vec2<bool>(false, false);
    let var_1 = Struct_3(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(942f, -129f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(468f, 745f)))) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(320f, -231f) + -213f)), true)));
    let var_2 = !((_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(1817f, 282f))) <= _wgslsmith_f_op_f32(select(410f, var_1.a, any(vec2<bool>(true, var_0.x))))) && false);
    var var_3 = select(arg_0.a.a, arg_0.a.a, false);
    var var_4 = -801f;
    return arg_0.a.b;
}

fn func_2() -> Struct_1 {
    let var_0 = 402f;
    let var_1 = min(vec3<i32>(_wgslsmith_dot_vec2_i32(-vec2<i32>(14472i, u_input.b), vec2<i32>(42588i, u_input.b)) ^ ~(0i << (1u % 32u)), firstTrailingBit(u_input.b) | u_input.b, _wgslsmith_add_i32(-27153i ^ u_input.a, 19420i)), max(vec3<i32>(~firstTrailingBit(u_input.a), u_input.b, -(2147483647i & u_input.b)), _wgslsmith_add_vec3_i32(select(vec3<i32>(-1i, u_input.a, -1i) >> (vec3<u32>(23984u, 35739u, 43396u) % vec3<u32>(32u)), firstTrailingBit(vec3<i32>(10418i, u_input.a, u_input.b)), vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 7u)], true, false)), ~max(vec3<i32>(1i, -3513i, u_input.b), vec3<i32>(-6303i, u_input.a, u_input.a)))));
    global0 = array<bool, 7>();
    global0 = array<bool, 7>();
    global0 = array<bool, 7>();
    return Struct_1(vec2<i32>(var_1.x, -2147483647i), _wgslsmith_add_vec3_u32(~(~vec3<u32>(0u, 30704u, 0u) >> (func_3(Struct_2(Struct_1(vec2<i32>(u_input.b, var_1.x), vec3<u32>(0u, 34209u, 4294967295u)), true, vec2<bool>(false, false)), true, var_1.x) % vec3<u32>(32u))), firstLeadingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 45928u, 10392u), abs(vec3<u32>(41456u, 7100u, 28210u))))));
}

fn func_1(arg_0: vec4<u32>, arg_1: u32) -> u32 {
    global0 = array<bool, 7>();
    let var_0 = abs(79308i);
    let var_1 = func_2();
    global0 = array<bool, 7>();
    var var_2 = Struct_3(-172f);
    return min(77982u, 0u);
}

fn func_4(arg_0: vec3<f32>, arg_1: vec2<u32>, arg_2: bool) -> Struct_2 {
    global0 = array<bool, 7>();
    var var_0 = vec2<u32>(~_wgslsmith_div_u32(1u, _wgslsmith_add_u32(21184u, 68602u >> (arg_1.x % 32u))), arg_1.x ^ arg_1.x);
    global0 = array<bool, 7>();
    let var_1 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0.x, arg_0.x)) * arg_0.x), arg_0.x)) - 1590f));
    var var_2 = ~vec2<i32>(u_input.a, ~(u_input.a & u_input.b));
    return Struct_2(Struct_1(_wgslsmith_sub_vec2_i32(~_wgslsmith_clamp_vec2_i32(vec2<i32>(0i, 2147483647i), vec2<i32>(var_2.x, 2147483647i), vec2<i32>(1i, -1i)), vec2<i32>(0i >> (0u % 32u), u_input.b >> (35438u % 32u))), max(~(vec3<u32>(25069u, arg_1.x, var_0.x) & vec3<u32>(24540u, var_0.x, var_0.x)), _wgslsmith_sub_vec3_u32(~vec3<u32>(68613u, 1u, arg_1.x), ~vec3<u32>(0u, 12601u, var_0.x)))), arg_2, vec2<bool>(any(!vec3<bool>(global0[_wgslsmith_index_u32(var_0.x, 7u)], global0[_wgslsmith_index_u32(5068u, 7u)], arg_2)), global0[_wgslsmith_index_u32(~(~6682u), 7u)]));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 7>();
    global0 = array<bool, 7>();
    let var_0 = !(!(!(!vec2<bool>(global0[_wgslsmith_index_u32(12936u, 7u)], global0[_wgslsmith_index_u32(7937u, 7u)]))));
    let var_1 = func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-523f, -280f) - -790f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1019f - 1000f) * -842f), 1049f)), vec2<u32>(~(~4294967295u) >> (_wgslsmith_add_u32(firstTrailingBit(4294967295u), ~58623u) % 32u), 4232u >> (func_1(vec4<u32>(1u, 1u, 1u, 1u), 4294967295u) % 32u)), true);
    global0 = array<bool, 7>();
    let var_2 = var_1;
    global0 = array<bool, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(~(max(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 4294967295u, var_1.a.b.x, var_2.a.b.x), vec4<u32>(var_1.a.b.x, 14525u, 4294967295u, var_2.a.b.x)), abs(vec4<u32>(var_2.a.b.x, var_1.a.b.x, 0u, 50967u))) & ((vec4<u32>(160u, var_2.a.b.x, 19828u, var_2.a.b.x) >> (vec4<u32>(4294967295u, var_1.a.b.x, 4294967295u, var_1.a.b.x) % vec4<u32>(32u))) & select(vec4<u32>(35096u, 22671u, 67996u, 4294967295u), vec4<u32>(21152u, 1591u, 0u, 4294967295u), var_1.b))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-538f * -1160f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(734f + _wgslsmith_f_op_f32(-755f * -820f))), -366f));
}

