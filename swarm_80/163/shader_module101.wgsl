struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: vec4<bool>,
    b: i32,
    c: vec2<u32>,
    d: u32,
}

struct Struct_4 {
    a: vec2<u32>,
    b: bool,
    c: vec3<i32>,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: vec2<u32>;

var<private> global2: array<Struct_2, 30>;

var<private> global3: array<f32, 20>;

var<private> global4: array<Struct_2, 21> = array<Struct_2, 21>(Struct_2(Struct_1(vec4<bool>(true, true, false, false)), false), Struct_2(Struct_1(vec4<bool>(true, false, true, false)), false), Struct_2(Struct_1(vec4<bool>(true, false, true, false)), true), Struct_2(Struct_1(vec4<bool>(true, true, false, true)), false), Struct_2(Struct_1(vec4<bool>(true, false, false, false)), true), Struct_2(Struct_1(vec4<bool>(false, true, true, true)), false), Struct_2(Struct_1(vec4<bool>(false, false, true, true)), true), Struct_2(Struct_1(vec4<bool>(false, false, false, true)), false), Struct_2(Struct_1(vec4<bool>(true, false, false, false)), false), Struct_2(Struct_1(vec4<bool>(true, false, true, false)), false), Struct_2(Struct_1(vec4<bool>(false, true, true, false)), false), Struct_2(Struct_1(vec4<bool>(false, false, false, true)), true), Struct_2(Struct_1(vec4<bool>(true, true, true, true)), true), Struct_2(Struct_1(vec4<bool>(true, true, false, true)), true), Struct_2(Struct_1(vec4<bool>(true, true, false, true)), true), Struct_2(Struct_1(vec4<bool>(false, false, true, false)), false), Struct_2(Struct_1(vec4<bool>(false, false, false, false)), true), Struct_2(Struct_1(vec4<bool>(false, false, true, false)), true), Struct_2(Struct_1(vec4<bool>(true, true, false, false)), true), Struct_2(Struct_1(vec4<bool>(true, false, false, false)), true), Struct_2(Struct_1(vec4<bool>(false, true, false, false)), true));

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_1() -> f32 {
    global1 = reverseBits(vec2<u32>(select(global1.x | ~1u, select(~u_input.a.x, ~global1.x, all(vec3<bool>(false, false, true))), false), _wgslsmith_dot_vec4_u32(~firstLeadingBit(vec4<u32>(1u, 19885u, 4294967295u, global1.x)), u_input.a)));
    var var_0 = Struct_2(Struct_1(vec4<bool>(true, true, true, true)), 383f == global3[_wgslsmith_index_u32(_wgslsmith_add_u32(~(~35761u), u_input.a.x), 20u)]);
    let var_1 = _wgslsmith_div_vec4_u32(u_input.a, _wgslsmith_mult_vec4_u32(firstTrailingBit(~vec4<u32>(u_input.a.x, u_input.a.x, global1.x, 1u)), _wgslsmith_div_vec4_u32(vec4<u32>(~4817u, global1.x, global1.x >> (u_input.a.x % 32u), u_input.a.x | u_input.a.x), u_input.a | _wgslsmith_clamp_vec4_u32(u_input.a, u_input.a, vec4<u32>(u_input.a.x, u_input.a.x, 34290u, global1.x)))));
    let var_2 = ~0i;
    var_0 = Struct_2(var_0.a, var_0.a.a.x);
    return -601f;
}

fn func_2() -> vec4<bool> {
    return vec4<bool>(true, all(vec4<bool>(true, _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(global1.x, 20u)]) <= _wgslsmith_f_op_f32(step(global3[_wgslsmith_index_u32(53532u, 20u)], -1937f)), true, any(vec3<bool>(true, false, false)))), any(select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false)), vec3<bool>(true, true, true), true)) & any(vec2<bool>(true, any(vec4<bool>(true, true, true, true)))), false);
}

fn func_3(arg_0: vec4<bool>) -> bool {
    let var_0 = ~20590u ^ ~countOneBits(_wgslsmith_div_u32(global1.x, abs(global1.x)));
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(global3[_wgslsmith_index_u32(4294967295u, 20u)], global3[_wgslsmith_index_u32(0u, 20u)]))) + global3[_wgslsmith_index_u32(global1.x, 20u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.a.x, 20u)]) - _wgslsmith_f_op_f32(min(-712f, _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(var_0, 20u)] * 680f)))), -1233f) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1259f), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(global1.x, 20u)] - global3[_wgslsmith_index_u32(u_input.a.x, 20u)]), global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(var_0, 5456u, 0u), 20u)]), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1095f, -655f, 1277f))) * vec3<f32>(global3[_wgslsmith_index_u32(global1.x, 20u)], 463f, global3[_wgslsmith_index_u32(u_input.a.x, 20u)]))))));
    global4 = array<Struct_2, 21>();
    let var_2 = Struct_3(arg_0, abs(2147483647i), _wgslsmith_mod_vec2_u32(vec2<u32>(global1.x, reverseBits(20994u)) << (vec2<u32>(_wgslsmith_sub_u32(var_0, global1.x), ~var_0) % vec2<u32>(32u)), u_input.a.xx), select(~11745u, 1u, any(arg_0)));
    var var_3 = Struct_1(vec4<bool>(all(!var_2.a.wyw), !(~var_2.d == 60531u), false, true & (var_0 >= _wgslsmith_mult_u32(1u, var_0))));
    return select(false, any(select(arg_0.www, !func_2().xwz, !select(vec3<bool>(var_2.a.x, true, var_2.a.x), vec3<bool>(var_2.a.x, var_2.a.x, true), false))), var_3.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_2, 30>();
    global4 = array<Struct_2, 21>();
    let var_0 = ~(~12964u);
    global3 = array<f32, 20>();
    let var_1 = vec4<f32>(global3[_wgslsmith_index_u32(~var_0, 20u)], _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(-318f - 981f))), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(0u, 20u)] * global3[_wgslsmith_index_u32(~var_0, 20u)])) + _wgslsmith_f_op_f32(abs(635f))), global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(4279u, ~(~firstTrailingBit(1u))), 20u)], _wgslsmith_f_op_f32(-506f + -175f));
    let var_2 = Struct_3(select(vec4<bool>(true, true, true, true), select(func_2(), vec4<bool>(true, true, true, all(vec4<bool>(false, true, false, true))), vec4<bool>(all(vec2<bool>(false, true)), false, true, false)), func_3(func_2())), ~1i, vec2<u32>(~0u, _wgslsmith_div_u32(_wgslsmith_sub_u32(4025u, u_input.a.x), u_input.a.x)), abs(88999u));
    var var_3 = _wgslsmith_div_vec2_u32(~vec2<u32>(1u, 10058u) >> (vec2<u32>(38404u, _wgslsmith_dot_vec3_u32(u_input.a.zxw, u_input.a.wyz)) % vec2<u32>(32u)), u_input.a.xx) | _wgslsmith_sub_vec2_u32(~countOneBits(u_input.a.zw), vec2<u32>(~0u, _wgslsmith_dot_vec2_u32(var_2.c, u_input.a.xw)));
    let var_4 = Struct_1(!func_2());
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_div_vec4_i32(vec4<i32>(var_2.b, var_2.b, 3632i, 1i) ^ vec4<i32>(-2147483647i, var_2.b, var_2.b, var_2.b), abs(vec4<i32>(13933i, var_2.b, -2147483647i, -2147483647i))) << (vec4<u32>(~global1.x, 42713u, countOneBits(max(4294967295u, var_3.x)), global1.x ^ 95803u) % vec4<u32>(32u)), global1.x, reverseBits(min(_wgslsmith_add_vec4_i32(vec4<i32>(var_2.b, -14996i, -1i, 41965i), vec4<i32>(var_2.b, 0i, var_2.b, var_2.b)), min(vec4<i32>(var_2.b, var_2.b, 35081i, var_2.b), vec4<i32>(var_2.b, var_2.b, var_2.b, var_2.b))) << (~u_input.a % vec4<u32>(32u))), 0u);
}

