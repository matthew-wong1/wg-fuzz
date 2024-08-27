struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: bool;

var<private> global2: Struct_2;

var<private> global3: Struct_2;

var<private> global4: array<vec3<bool>, 31>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_2(arg_0: u32, arg_1: Struct_2, arg_2: vec3<f32>) -> Struct_1 {
    global4 = array<vec3<bool>, 31>();
    global1 = false | any(!vec3<bool>(false, global3.a.a != true, true));
    var var_0 = _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(~u_input.a.x << (19091u % 32u), u_input.a.x, firstTrailingBit(~(-16246i)), u_input.a.x)), ~(~abs(vec4<i32>(u_input.a.x, 30997i, u_input.a.x, 1i))));
    let var_1 = Struct_1(arg_1.a.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.a.b * global0.b)) - _wgslsmith_div_f32(global3.a.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.a.b), _wgslsmith_f_op_f32(-global0.b)))));
    global4 = array<vec3<bool>, 31>();
    return global2.a;
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> Struct_2 {
    global3 = Struct_2(Struct_1(arg_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(2956f, arg_0, global3.a.a)))));
    var var_0 = vec3<u32>(117877u, ~_wgslsmith_clamp_u32(firstLeadingBit(u_input.b), 104021u, select(_wgslsmith_mult_u32(18423u, u_input.b), select(u_input.b, 0u, global2.a.a), global2.a.a)), _wgslsmith_clamp_u32(~(~23283u), _wgslsmith_mod_u32(~u_input.b, u_input.b), firstTrailingBit(~(~108644u))));
    let var_1 = Struct_2(global2.a);
    global3 = var_1;
    let var_2 = arg_1;
    return Struct_2(arg_1);
}

fn func_1(arg_0: f32, arg_1: vec3<bool>) -> vec2<f32> {
    global2 = func_3(1000f, func_2(u_input.b << (_wgslsmith_sub_u32(~41276u, u_input.b) % 32u), Struct_2(global2.a), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global2.a.b)) * arg_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1658f + -253f)), -283f)));
    global1 = arg_1.x;
    var var_0 = ~16029i;
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.a.b, -545f)) - vec2<f32>(1f, 1f)))));
    var var_2 = vec4<u32>(u_input.b, _wgslsmith_mod_u32(612u, u_input.b), _wgslsmith_dot_vec3_u32(abs(vec3<u32>(~1u, ~17246u, u_input.b ^ 1u)), vec3<u32>(0u, 44621u, _wgslsmith_mod_u32(u_input.b, u_input.b) | 1u)), _wgslsmith_add_u32(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(4294967295u >> (1u % 32u), ~u_input.b, ~53414u), ~(~1u)), u_input.b));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-305f, -2678f), 2142f) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(global3.a.b, vec3<bool>(global0.a, false, global0.a))) * vec2<f32>(global3.a.b, global2.a.b))))));
    let var_1 = true;
    global3 = Struct_2(func_3(-1559f, func_2(u_input.b, Struct_2(Struct_1(true, var_0.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a.b, -234f, 594f))))).a);
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(exp2(func_2(u_input.b, func_3(_wgslsmith_div_f32(global2.a.b, var_0.x), func_2(u_input.b, Struct_2(Struct_1(global0.a, -1889f)), vec3<f32>(-1476f, global2.a.b, var_0.x))), vec3<f32>(global3.a.b, _wgslsmith_f_op_f32(var_0.x - var_0.x), global3.a.b)).b)), _wgslsmith_f_op_vec2_f32(func_1(var_0.x, global4[_wgslsmith_index_u32(~4294967295u, 31u)])).x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.b, _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    global3 = func_3(-1000f, func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.a.b - _wgslsmith_f_op_f32(var_2.x - global2.a.b)) - _wgslsmith_f_op_f32(-var_0.x)), func_2(firstTrailingBit(0u), func_3(-380f, func_3(-292f, global2.a).a), var_2)).a);
    global1 = true == (!(!(-31291i != u_input.a.x)) && !all(vec3<bool>(global3.a.a, true, true)));
    global4 = array<vec3<bool>, 31>();
    var var_3 = min(vec2<i32>(1i, -6041i), abs(_wgslsmith_add_vec2_i32(_wgslsmith_clamp_vec2_i32(u_input.a, _wgslsmith_mod_vec2_i32(u_input.a, vec2<i32>(u_input.a.x, 52192i)), vec2<i32>(-1310i, -1i)), u_input.a)));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(select(vec2<u32>(u_input.b, ~u_input.b), vec2<u32>(~27289u, u_input.b), vec2<bool>(true, all(vec2<bool>(var_1, global0.a))))), ~_wgslsmith_mult_vec3_i32(vec3<i32>(-u_input.a.x, i32(-1i) * -61176i, -61931i), vec3<i32>(-1i, -19328i, -9881i) | -vec3<i32>(var_3.x, -2147483647i, -1i)), _wgslsmith_sub_u32(_wgslsmith_mod_u32(u_input.b, u_input.b), 5260u << (firstLeadingBit(u_input.b) % 32u)));
}

