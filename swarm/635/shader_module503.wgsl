struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: f32,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_2,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_5 {
    a: Struct_2,
    b: bool,
    c: vec2<bool>,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 8> = array<bool, 8>(true, false, false, true, true, true, false, false);

var<private> global1: Struct_2;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> i32 {
    let var_0 = ~_wgslsmith_clamp_u32(firstTrailingBit(1u), _wgslsmith_dot_vec3_u32(abs(vec3<u32>(1u, 73999u, 1u)), max(~vec3<u32>(1u, 13864u, 60161u), vec3<u32>(56047u, 0u, 27333u))), ~_wgslsmith_mod_u32(64404u, 54954u) >> (firstLeadingBit(1u) % 32u));
    global0 = array<bool, 8>();
    global1 = Struct_2(!all(select(select(vec2<bool>(global1.a, true), vec2<bool>(global1.a, true), global0[_wgslsmith_index_u32(var_0, 8u)]), !vec2<bool>(global1.a, global0[_wgslsmith_index_u32(var_0, 8u)]), vec2<bool>(false, global0[_wgslsmith_index_u32(var_0, 8u)]))));
    let var_1 = Struct_2(all(select(select(vec3<bool>(global1.a, global0[_wgslsmith_index_u32(4294967295u, 8u)], global1.a), select(vec3<bool>(true, global0[_wgslsmith_index_u32(9036u, 8u)], true), vec3<bool>(false, false, false), vec3<bool>(false, global1.a, global1.a)), vec3<bool>(true, true, global1.a)), !vec3<bool>(global0[_wgslsmith_index_u32(0u, 8u)], true, global1.a), vec3<bool>(any(vec4<bool>(global1.a, global1.a, global1.a, global1.a)), global1.a, -2147483647i < u_input.b.x))));
    global1 = Struct_2(false);
    return -2147483647i;
}

fn func_2(arg_0: Struct_2) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -671f), -1046f, _wgslsmith_f_op_f32(-238f - _wgslsmith_f_op_f32(floor(890f))), _wgslsmith_f_op_f32(min(-164f, _wgslsmith_f_op_f32(-1403f + 1747f)))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(step(-485f, 827f)), -198f, -628f, _wgslsmith_f_op_f32(ceil(-1531f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(273f, -189f, -332f, 871f))), vec4<f32>(-121f, 1044f, -1000f, 1908f)), false)))));
    let var_1 = Struct_4(abs(_wgslsmith_add_vec2_u32(~(~vec2<u32>(14041u, 1u)), _wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(1u, 31330u), vec2<u32>(4354u, 4294967295u)), vec2<u32>(1u, 1u)))), arg_0, Struct_1(func_3()), arg_0);
    var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, -862f) * 1000f), _wgslsmith_f_op_f32(sign(468f)), -565f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, -334f))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-807f, -176f, -1110f, var_0.x) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, 1000f, -1755f) - vec4<f32>(var_0.x, 239f, var_0.x, 939f))))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -692f) + var_0.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(var_0.x)))), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-var_0.x)));
    var var_2 = !(!(!(!vec3<bool>(false, var_1.b.a, true))));
    var var_3 = _wgslsmith_div_vec4_u32(vec4<u32>(var_1.a.x, _wgslsmith_add_u32(min(~var_1.a.x, var_1.a.x), 36788u), abs(var_1.a.x), select(var_1.a.x, 20805u, arg_0.a)), vec4<u32>(reverseBits(~_wgslsmith_add_u32(1u, 1u)), ~(~26423u << (~var_1.a.x % 32u)), _wgslsmith_add_u32(_wgslsmith_sub_u32(4294967295u, var_1.a.x), 1u >> (var_1.a.x % 32u)) >> (var_1.a.x % 32u), 64822u));
    return 61446u;
}

fn func_4(arg_0: u32) -> Struct_2 {
    var var_0 = Struct_5(Struct_2(any(!vec3<bool>(global1.a, global1.a, global0[_wgslsmith_index_u32(8765u, 8u)]))), ~_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_0, 0u, arg_0), vec3<u32>(arg_0, arg_0, 102127u), vec3<u32>(43482u, arg_0, 54840u)), ~vec3<u32>(0u, 4294967295u, 0u)) >= firstTrailingBit(arg_0), vec2<bool>(false, true), min(_wgslsmith_add_i32(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(u_input.c.x, u_input.a, u_input.a)), u_input.b.x), -12807i), u_input.c.x));
    var var_1 = Struct_4(vec2<u32>(4294967295u, arg_0), var_0.a, Struct_1(u_input.a), Struct_2(true));
    var_1 = Struct_4(vec2<u32>(~min(arg_0, 0u) ^ ~(~arg_0), ~(~countOneBits(0u))), var_0.a, var_1.c, var_1.d);
    var var_2 = var_1.b;
    var var_3 = 2147483647i;
    return Struct_2(all(select(select(vec3<bool>(global1.a, var_1.b.a, false), vec3<bool>(var_1.b.a, global1.a, var_0.a.a), true), vec3<bool>(var_1.d.a, true, false), !vec3<bool>(false, global0[_wgslsmith_index_u32(arg_0, 8u)], var_1.b.a))) || all(!(!vec4<bool>(var_0.a.a, global0[_wgslsmith_index_u32(10874u, 8u)], false, global1.a))));
}

fn func_1(arg_0: vec4<f32>, arg_1: f32, arg_2: bool) -> bool {
    global0 = array<bool, 8>();
    var var_0 = Struct_5(func_4(func_2(Struct_2(true))), false, !vec2<bool>(global0[_wgslsmith_index_u32(~func_2(Struct_2(true)), 8u)], true), ~u_input.b.x ^ (i32(-1i) * -1i));
    let var_1 = _wgslsmith_sub_i32(2147483647i, u_input.a);
    var var_2 = Struct_5(Struct_2(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(20521u, 1u, 8683u), _wgslsmith_clamp_vec3_u32(vec3<u32>(24350u, 54054u, 26904u), vec3<u32>(47385u, 31695u, 4294967295u), vec3<u32>(62071u, 64258u, 36613u))) >> (28370u % 32u), 8u)]), !all(!select(vec4<bool>(false, false, true, true), vec4<bool>(global0[_wgslsmith_index_u32(76392u, 8u)], false, false, global0[_wgslsmith_index_u32(1u, 8u)]), global0[_wgslsmith_index_u32(5028u, 8u)])), vec2<bool>(select(arg_2, arg_2, true), any(!vec4<bool>(var_0.c.x, true, arg_2, global0[_wgslsmith_index_u32(1u, 8u)])) && true), abs(var_0.d));
    let var_3 = _wgslsmith_clamp_u32(abs(_wgslsmith_sub_u32(~_wgslsmith_mod_u32(0u, 17852u), _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(82662u, 17632u, 0u, 15871u)), vec4<u32>(1u, 1u, 1u, 1u)))), _wgslsmith_div_u32(~1u, 41248u), ~(_wgslsmith_clamp_u32(~4294967295u, firstTrailingBit(36712u), ~0u) & ~(~6200u)));
    return all(!vec3<bool>(u_input.a > -1i, global1.a, true));
}

fn func_5(arg_0: bool, arg_1: f32) -> Struct_2 {
    global0 = array<bool, 8>();
    var var_0 = select(u_input.a, i32(-1i) * -1i, false);
    var var_1 = Struct_1(u_input.a);
    var var_2 = !any(vec3<bool>(false, global0[_wgslsmith_index_u32(abs(_wgslsmith_div_u32(10890u, 1u)), 8u)], any(select(vec3<bool>(false, false, true), vec3<bool>(arg_0, global1.a, global0[_wgslsmith_index_u32(23245u, 8u)]), global0[_wgslsmith_index_u32(26439u, 8u)]))));
    global0 = array<bool, 8>();
    return Struct_2(true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(!(!func_1(vec4<f32>(-936f, -481f, -1679f, -1681f), 1000f, global0[_wgslsmith_index_u32(7555u, 8u)]) | true), -1138f);
    global0 = array<bool, 8>();
    var_0 = func_5(all(!select(select(vec2<bool>(false, false), vec2<bool>(global0[_wgslsmith_index_u32(27353u, 8u)], global1.a), vec2<bool>(global1.a, true)), !vec2<bool>(global0[_wgslsmith_index_u32(45663u, 8u)], false), var_0.a & false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -432f) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-302f)), _wgslsmith_f_op_f32(min(-500f, -314f))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * 869f)));
    global0 = array<bool, 8>();
    var_0 = Struct_2(global1.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-580f, -166f, -195f, 1501f)))) - vec4<f32>(-731f, 1049f, -262f, 544f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1620f, -220f, 2459f, -1260f))))));
}

