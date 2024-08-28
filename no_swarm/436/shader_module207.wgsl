struct Struct_1 {
    a: f32,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: bool,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 2> = array<vec3<i32>, 2>(vec3<i32>(43851i, -1i, 2147483647i), vec3<i32>(i32(-2147483648), i32(-2147483648), 2147483647i));

var<private> global1: Struct_4 = Struct_4(Struct_1(-1193f, -40150i, 84499u));

var<private> global2: array<f32, 21> = array<f32, 21>(154f, 189f, 151f, -203f, -163f, 494f, -1000f, -1000f, 1736f, -203f, -937f, 427f, 1928f, -482f, 1585f, -1736f, 284f, -807f, 1000f, 1000f, 284f);

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_2) -> i32 {
    let var_0 = !any(vec2<bool>(true, arg_0.a.x));
    global1 = Struct_4(Struct_1(_wgslsmith_f_op_f32(abs(arg_0.b.a)), 1i, ~_wgslsmith_mult_u32(_wgslsmith_div_u32(1u, arg_0.c), u_input.b & 4294967295u)));
    global1 = Struct_4(Struct_1(-908f, u_input.d, _wgslsmith_mult_u32(_wgslsmith_add_u32(~arg_0.c, 0u), global1.a.c)));
    let var_1 = abs(~firstLeadingBit(u_input.a.x >> (global1.a.c % 32u)));
    var var_2 = _wgslsmith_dot_vec3_u32(vec3<u32>(~(~var_1), 84118u, 35136u), ~vec3<u32>(28817u, min(9567u, ~39007u), u_input.a.x));
    return abs(countOneBits(_wgslsmith_dot_vec3_i32(global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(u_input.a.x, global1.a.c), 2u)], vec3<i32>(select(global1.a.b, u_input.d, false), _wgslsmith_dot_vec3_i32(vec3<i32>(global1.a.b, global1.a.b, global1.a.b), vec3<i32>(arg_0.b.b, u_input.d, arg_0.b.b)), global1.a.b))));
}

fn func_2(arg_0: f32) -> f32 {
    let var_0 = -global1.a.b;
    let var_1 = _wgslsmith_mult_vec4_i32(vec4<i32>(-(1i | -u_input.d), _wgslsmith_mod_i32(-1i, -8808i), 0i, func_3(Struct_2(vec3<bool>(false, false, false), Struct_1(1989f, 0i, 1u), ~u_input.b))), vec4<i32>(-28494i, -14879i, var_0, 14429i));
    global2 = array<f32, 21>();
    let var_2 = global1.a;
    let var_3 = Struct_3(reverseBits(_wgslsmith_mult_vec3_i32(~var_1.wzy, max(global0[_wgslsmith_index_u32(1u, 2u)], vec3<i32>(2147483647i, -43222i, var_1.x)))) & var_1.yxz, ~_wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(global1.a.c, 47711u, global1.a.c), vec3<u32>(u_input.e, 32885u, 4294967295u)), ~vec3<u32>(u_input.b, 0u, u_input.b)) | _wgslsmith_div_vec3_u32(~max(vec3<u32>(1u, global1.a.c, 0u), vec3<u32>(4294967295u, global1.a.c, 62311u)), firstTrailingBit(~vec3<u32>(1u, var_2.c, 1u))), -vec4<i32>(global1.a.b | ~global1.a.b, 1i, -global1.a.b << (~1597u % 32u), ~var_0), true);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-549f, _wgslsmith_f_op_f32(global1.a.a + var_2.a)))) * _wgslsmith_f_op_f32(-global1.a.a)));
}

fn func_1() -> Struct_1 {
    global0 = array<vec3<i32>, 2>();
    global2 = array<f32, 21>();
    var var_0 = _wgslsmith_f_op_f32(func_2(global2[_wgslsmith_index_u32(~_wgslsmith_add_u32(_wgslsmith_sub_u32(min(0u, u_input.b), ~0u), _wgslsmith_mod_u32(abs(5640u), countOneBits(u_input.c))), 21u)]));
    var_0 = 1000f;
    global1 = Struct_4(Struct_1(global1.a.a, firstLeadingBit(u_input.d << (u_input.b % 32u)) >> (~(~u_input.b) % 32u), u_input.b));
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(293f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-2358f, _wgslsmith_f_op_f32(-global1.a.a), true)))), -2147483647i, 1u);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec2<f32>, arg_3: bool) -> Struct_4 {
    let var_0 = _wgslsmith_mod_vec3_u32(vec3<u32>(1u, ~max(24989u, 1u), arg_1.b.x), _wgslsmith_div_vec3_u32(vec3<u32>(~arg_0.c, select(u_input.b, 0u, false || arg_1.d), u_input.c), ~arg_1.b));
    var var_1 = Struct_4(func_1());
    global2 = array<f32, 21>();
    var var_2 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-135f, global1.a.a, var_1.a.a), vec3<f32>(var_1.a.a, global2[_wgslsmith_index_u32(1u, 21u)], global1.a.a))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-2238f, var_1.a.a, -839f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_2.x, -591f, -767f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(165f, arg_2.x, global1.a.a) + vec3<f32>(arg_2.x, -130f, 1082f))))))));
    let var_3 = func_1();
    return Struct_4(Struct_1(_wgslsmith_div_f32(-240f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-2143f - var_1.a.a)))), var_3.b, 26550u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(u_input.d);
    global2 = array<f32, 21>();
    let var_1 = -var_0;
    global1 = func_4(func_1(), Struct_3(select(global0[_wgslsmith_index_u32(u_input.c, 2u)] | global0[_wgslsmith_index_u32(4553u, 2u)], abs(global0[_wgslsmith_index_u32(u_input.c, 2u)]), true) >> (~firstLeadingBit(vec3<u32>(81365u, 1u, u_input.a.x)) % vec3<u32>(32u)), vec3<u32>(_wgslsmith_sub_u32(~67681u, 54944u), _wgslsmith_mult_u32(abs(global1.a.c), u_input.e), ~global1.a.c), max(vec4<i32>(var_0, var_1, 20667i, 20944i) ^ min(vec4<i32>(global1.a.b, 28762i, var_0, var_0), vec4<i32>(-1i, var_1, -1i, u_input.d)), vec4<i32>(var_1, _wgslsmith_mult_i32(22496i, 0i), u_input.d, _wgslsmith_mod_i32(var_0, 0i))), ~_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(u_input.c, u_input.a.x)) < (global1.a.c & _wgslsmith_add_u32(global1.a.c, 1u))), vec2<f32>(_wgslsmith_f_op_f32(612f + _wgslsmith_div_f32(1526f, _wgslsmith_f_op_f32(func_2(-2115f)))), -1231f), all(vec4<bool>(all(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false))), true, !all(vec2<bool>(false, false)), true)));
    global1 = Struct_4(func_1());
    let x = u_input.a;
    s_output = StorageBuffer(~(~abs(vec4<u32>(54327u, u_input.e, 49207u, 48867u))), ~(~select(vec4<u32>(26729u, 69591u, 87717u, u_input.b), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, 59710u, 0u, u_input.a.x), vec4<u32>(global1.a.c, u_input.e, 37783u, 2340u)), all(vec3<bool>(false, false, false)))));
}

