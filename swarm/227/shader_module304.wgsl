struct Struct_1 {
    a: vec3<bool>,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<u32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_1, 30>;

var<private> global2: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(vec3<bool>(true, false, false), true), Struct_1(vec3<bool>(true, false, true), true), Struct_1(vec3<bool>(true, true, true), false), Struct_1(vec3<bool>(false, true, false), true), Struct_1(vec3<bool>(false, false, true), true), Struct_1(vec3<bool>(false, false, false), false), Struct_1(vec3<bool>(true, false, false), true), Struct_1(vec3<bool>(false, false, true), true), Struct_1(vec3<bool>(true, false, true), true), Struct_1(vec3<bool>(false, false, true), true), Struct_1(vec3<bool>(false, true, false), true), Struct_1(vec3<bool>(true, false, true), true), Struct_1(vec3<bool>(false, true, true), true), Struct_1(vec3<bool>(true, false, true), true), Struct_1(vec3<bool>(false, true, true), true), Struct_1(vec3<bool>(true, false, true), true), Struct_1(vec3<bool>(false, false, false), true), Struct_1(vec3<bool>(true, true, false), true), Struct_1(vec3<bool>(true, true, false), false), Struct_1(vec3<bool>(false, false, true), true), Struct_1(vec3<bool>(false, false, false), false), Struct_1(vec3<bool>(true, false, false), true), Struct_1(vec3<bool>(true, true, false), true), Struct_1(vec3<bool>(true, false, true), true), Struct_1(vec3<bool>(true, true, true), true), Struct_1(vec3<bool>(false, true, false), true));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<f32>) -> f32 {
    global2 = array<Struct_1, 26>();
    global0 = _wgslsmith_f_op_f32(min(356f, 940f));
    global0 = -854f;
    var var_0 = Struct_1(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), !select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), true), vec3<bool>(true, true, true)), true);
    var var_1 = u_input.d >> (~_wgslsmith_add_vec2_u32(vec2<u32>(~4294967295u, u_input.d.x), firstLeadingBit(vec2<u32>(u_input.c, 4294967295u))) % vec2<u32>(32u));
    return arg_0.x;
}

fn func_2(arg_0: Struct_1, arg_1: f32) -> vec4<bool> {
    let var_0 = arg_1;
    let var_1 = u_input.b;
    global0 = -1703f;
    let var_2 = ~0i;
    global0 = _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(vec4<f32>(_wgslsmith_f_op_f32(-2281f - arg_1), _wgslsmith_f_op_f32(245f * -407f), _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(select(-535f, -1134f, arg_0.a.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 * var_0) - _wgslsmith_f_op_f32(func_3(vec4<f32>(arg_1, 551f, arg_1, 1211f))))))));
    return select(vec4<bool>(arg_0.b, !arg_0.a.x, false, false), !(!(!vec4<bool>(true, arg_0.a.x, false, false))), vec4<bool>(arg_0.a.x, true, arg_0.b, true));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    let var_0 = any(select(!select(vec4<bool>(arg_0.a.x, true, arg_0.a.x, arg_0.a.x), select(vec4<bool>(arg_0.b, true, arg_0.b, false), vec4<bool>(arg_0.b, true, false, arg_0.a.x), vec4<bool>(true, arg_0.b, arg_0.a.x, true)), -22102i <= u_input.a), select(func_2(global1[_wgslsmith_index_u32(1u, 30u)], -752f), !(!vec4<bool>(false, false, arg_0.b, arg_0.a.x)), func_2(Struct_1(vec3<bool>(arg_0.b, true, false), true), _wgslsmith_f_op_f32(f32(-1f) * -1064f))), !func_2(global1[_wgslsmith_index_u32(~u_input.c, 30u)], -354f)));
    global2 = array<Struct_1, 26>();
    var var_1 = u_input.c;
    global1 = array<Struct_1, 30>();
    let var_2 = arg_0;
    return Struct_1(var_2.a, func_2(global2[_wgslsmith_index_u32(max(31430u, _wgslsmith_sub_u32(4294967295u, u_input.d.x)) & _wgslsmith_mult_u32(u_input.c, _wgslsmith_dot_vec2_u32(u_input.d, vec2<u32>(10479u, 0u))), 26u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1854f + 666f)))).x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -897f;
    let var_1 = func_1(global1[_wgslsmith_index_u32(u_input.d.x, 30u)]);
    let var_2 = -4402i;
    var var_3 = -(vec2<i32>(-1i) * -vec2<i32>(var_2, ~u_input.e));
    var var_4 = var_3.x;
    let x = u_input.a;
    s_output = StorageBuffer(~(select(_wgslsmith_sub_vec3_u32(vec3<u32>(42643u, 43775u, 1u), vec3<u32>(35194u, 1u, u_input.c)), select(vec3<u32>(u_input.c, u_input.d.x, u_input.c), vec3<u32>(4294967295u, 17405u, u_input.c), var_1.a), true) >> (_wgslsmith_clamp_vec3_u32(select(vec3<u32>(56835u, u_input.c, 0u), vec3<u32>(u_input.c, 1u, 52028u), var_1.a), vec3<u32>(u_input.d.x, 0u, u_input.c) >> (vec3<u32>(u_input.c, 1u, 91095u) % vec3<u32>(32u)), firstTrailingBit(vec3<u32>(u_input.c, u_input.c, 4294967295u))) % vec3<u32>(32u))), reverseBits(48276u), min(~vec2<u32>(~4294967295u, _wgslsmith_add_u32(u_input.c, u_input.d.x)), u_input.d), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_0, _wgslsmith_f_op_f32(select(var_0, var_0, false))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0, 2028f), vec2<f32>(-103f, 1206f), var_1.a.xz)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1231f, var_0))))));
}

