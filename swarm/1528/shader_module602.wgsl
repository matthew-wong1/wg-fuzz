struct Struct_1 {
    a: vec4<bool>,
    b: bool,
}

struct Struct_2 {
    a: u32,
    b: vec3<bool>,
    c: vec4<bool>,
    d: vec3<i32>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 14> = array<vec2<bool>, 14>(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false));

var<private> global1: Struct_2 = Struct_2(1u, vec3<bool>(true, false, false), vec4<bool>(false, false, true, true), vec3<i32>(2605i, 1i, -9959i));

var<private> global2: array<bool, 27> = array<bool, 27>(true, false, false, true, true, false, true, true, false, false, false, true, true, false, false, true, true, true, false, false, true, false, true, false, false, true, true);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_4, arg_1: vec3<i32>) -> bool {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(236f * -737f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(239f)), _wgslsmith_f_op_f32(1175f + 1000f))) - 1529f), -701f);
    global0 = array<vec2<bool>, 14>();
    global2 = array<bool, 27>();
    let var_1 = Struct_3(countOneBits(-(abs(u_input.a.x) & u_input.a.x)));
    var var_2 = Struct_2(global1.a, arg_0.a.a.zzy, select(global1.c, select(select(!arg_0.a.a, vec4<bool>(false, global1.c.x, false, false), global1.c), vec4<bool>(true, true, true, true), vec4<bool>(u_input.a.x <= u_input.a.x, all(vec2<bool>(false, false)), global2[_wgslsmith_index_u32(u_input.c & global1.a, 27u)], arg_0.a.a.x)), !(!arg_0.a.b)), vec3<i32>(0i, _wgslsmith_mult_i32(_wgslsmith_add_i32(countOneBits(0i), _wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(var_1.a, 1i, arg_1.x))), -select(53576i, 0i, true)), reverseBits(-65424i)));
    return arg_0.a.a.x;
}

fn func_2(arg_0: i32, arg_1: vec3<i32>) -> Struct_1 {
    var var_0 = Struct_4(Struct_1(global1.c, func_3(Struct_4(Struct_1(global1.c, true)), vec3<i32>(~(-27460i), arg_1.x, global1.d.x & -15222i))));
    let var_1 = select(global1.c, select(select(!vec4<bool>(false, false, global1.c.x, false), vec4<bool>(var_0.a.b, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 4461u, 0u), vec3<u32>(58655u, u_input.c, global1.a)), 27u)], false | var_0.a.a.x, !global2[_wgslsmith_index_u32(u_input.b, 27u)]), select(select(var_0.a.a, var_0.a.a, global1.b.x), !global1.c, true)), select(!vec4<bool>(global2[_wgslsmith_index_u32(1u, 27u)], true, global2[_wgslsmith_index_u32(40526u, 27u)], false), global1.c, all(var_0.a.a.wyw)), select(!(!global1.c), !vec4<bool>(global2[_wgslsmith_index_u32(global1.a, 27u)], false, global1.c.x, true), !vec4<bool>(true, true, var_0.a.a.x, global2[_wgslsmith_index_u32(4294967295u, 27u)]))), !(global1.b.x && global1.c.x));
    var var_2 = 1u;
    var var_3 = Struct_4(Struct_1(var_1, true));
    var var_4 = global1.c.x;
    return var_0.a;
}

fn func_4(arg_0: u32, arg_1: i32, arg_2: Struct_1, arg_3: Struct_1) -> Struct_3 {
    global2 = array<bool, 27>();
    let var_0 = Struct_2(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(global1.a, ~(~u_input.c)), ~min(24458u, reverseBits(global1.a)), 1u), arg_2.a.yxy, vec4<bool>(all(func_2(u_input.a.x, global1.d).a.wx), any(global1.c.wxy), true, true), reverseBits(-global1.d));
    global2 = array<bool, 27>();
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1561f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(269f, -606f, true)))), -231f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(184f * 400f))), all(vec2<bool>(false, !arg_2.a.x)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(644f * -1257f)), _wgslsmith_f_op_f32(f32(-1f) * -266f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1140f, 478f)) * 504f)));
    global2 = array<bool, 27>();
    return Struct_3(_wgslsmith_mult_i32(global1.d.x, 3789i));
}

fn func_5(arg_0: Struct_3, arg_1: vec3<bool>, arg_2: Struct_3, arg_3: vec2<bool>) -> vec3<u32> {
    let var_0 = -1466f;
    global2 = array<bool, 27>();
    var var_1 = Struct_1(global1.c, global1.a <= 1u);
    let var_2 = -vec3<i32>(-14764i, 1i, _wgslsmith_sub_i32(u_input.a.x, firstLeadingBit(arg_2.a))) | u_input.a;
    let var_3 = ~(~firstLeadingBit(0u) << (firstTrailingBit(select(38827u, 2908u, false)) % 32u)) << (4294967295u % 32u);
    return ~firstTrailingBit(vec3<u32>(max(var_3, global1.a), 4294967295u, ~countOneBits(15143u)));
}

fn func_1() -> StorageBuffer {
    var var_0 = func_5(func_4(u_input.c, _wgslsmith_clamp_i32(global1.d.x, _wgslsmith_div_i32(-26064i, u_input.a.x), ~global1.d.x) >> ((_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 34361u, 29258u), vec3<u32>(u_input.b, 4294967295u, 1u)) | global1.a) % 32u), Struct_1(vec4<bool>(true, true, global2[_wgslsmith_index_u32(min(0u, global1.a), 27u)], true), !(!global2[_wgslsmith_index_u32(44753u, 27u)])), func_2(global1.d.x, global1.d)), global1.c.xyw, Struct_3(1i), !(!select(vec2<bool>(global1.c.x, false), !global1.c.wx, false)));
    var var_1 = Struct_3(i32(-1i) * -2147483647i);
    var_0 = _wgslsmith_div_vec3_u32(~(~(~vec3<u32>(global1.a, 4294967295u, var_0.x) >> (~vec3<u32>(7046u, 61483u, 62755u) % vec3<u32>(32u)))), vec3<u32>(firstTrailingBit(0u), ~_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.c, var_0.x), vec2<u32>(10884u, 96636u)), countOneBits(vec2<u32>(4294967295u, 102500u))), ~abs(~21088u)));
    let var_2 = Struct_4(func_2(~(-17955i), -vec3<i32>(reverseBits(var_1.a), global1.d.x, 1i)));
    var_1 = func_4(abs(~u_input.b), var_1.a, var_2.a, var_2.a);
    return StorageBuffer(-2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

