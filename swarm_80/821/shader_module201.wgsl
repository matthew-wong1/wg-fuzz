struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec2<bool>,
    c: bool,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: f32,
    b: f32,
    c: f32,
}

struct Struct_5 {
    a: f32,
    b: Struct_1,
    c: vec4<bool>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<vec2<u32>, 26> = array<vec2<u32>, 26>(vec2<u32>(41781u, 4294967295u), vec2<u32>(34524u, 94765u), vec2<u32>(0u, 13287u), vec2<u32>(26736u, 15572u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(0u, 28154u), vec2<u32>(10237u, 1u), vec2<u32>(24528u, 0u), vec2<u32>(64147u, 1u), vec2<u32>(4294967295u, 16506u), vec2<u32>(4294967295u, 706u), vec2<u32>(1u, 3225u), vec2<u32>(36075u, 50314u), vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 50899u), vec2<u32>(0u, 69654u), vec2<u32>(0u, 4212u), vec2<u32>(0u, 29441u), vec2<u32>(5771u, 1u), vec2<u32>(77461u, 4294967295u), vec2<u32>(1u, 94288u), vec2<u32>(59705u, 0u), vec2<u32>(0u, 93333u), vec2<u32>(34565u, 0u), vec2<u32>(72539u, 68221u), vec2<u32>(0u, 4294967295u));

var<private> global2: f32;

var<private> global3: array<vec4<bool>, 1> = array<vec4<bool>, 1>(vec4<bool>(false, true, false, false));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_4, arg_2: Struct_5) -> bool {
    global2 = -102f;
    let var_0 = max(firstTrailingBit(arg_0.x), abs(u_input.b));
    global1 = array<vec2<u32>, 26>();
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(435f * arg_2.d.e.b), -843f))));
    let var_2 = ~0i;
    return true;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec3<bool>, arg_3: vec2<i32>) -> f32 {
    global3 = array<vec4<bool>, 1>();
    var var_0 = vec4<f32>(779f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_1.e.b)) - 602f), _wgslsmith_f_op_f32(select(1000f, -650f, arg_0.a)), 1599f);
    global0 = Struct_4(_wgslsmith_f_op_f32(select(global0.c, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -962f))))), !arg_0.a)), _wgslsmith_f_op_f32(ceil(arg_0.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_0.x, arg_1.e.b)), _wgslsmith_f_op_f32(max(global0.c, 465f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.b, -1907f)))))));
    var var_1 = -(~max(16223i, firstLeadingBit(-2147483647i))) ^ (-1i << (u_input.c % 32u));
    var var_2 = Struct_5(-510f, Struct_1(arg_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c * 406f)))), vec4<bool>(!any(!arg_1.b), false, !all(!arg_2), -firstLeadingBit(arg_3.x) == 1i), arg_1);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b) + _wgslsmith_f_op_f32(-1110f * -2548f));
}

fn func_2() -> Struct_4 {
    let var_0 = Struct_1(-u_input.b > -2022i, global0.a);
    let var_1 = ~max(u_input.b << (u_input.a.x % 32u), _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(select(vec4<i32>(-3655i, u_input.b, -2147483647i, 19026i), vec4<i32>(-36367i, -27687i, 22294i, 0i), vec4<bool>(var_0.a, true, false, true)), _wgslsmith_mult_vec4_i32(vec4<i32>(1i, 18491i, -35416i, u_input.b), vec4<i32>(1i, u_input.b, -3561i, u_input.b))), ~u_input.b << (firstLeadingBit(12598u) % 32u)));
    var var_2 = ~(~firstTrailingBit(abs(vec4<u32>(68860u, 1u, u_input.c, u_input.c) | vec4<u32>(u_input.c, 43043u, u_input.c, 4294967295u))));
    let var_3 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(400f, 580f, _wgslsmith_f_op_f32(func_4(Struct_1(func_3(vec2<i32>(1i, -17913i), Struct_4(-417f, var_0.b, global0.c), Struct_5(444f, var_0, global3[_wgslsmith_index_u32(u_input.a.x, 1u)], Struct_2(vec4<u32>(0u, 73504u, 41088u, var_2.x), vec2<bool>(true, true), var_0.a, var_0.a, Struct_1(var_0.a, 354f)))), 1844f), Struct_2(vec4<u32>(var_2.x, u_input.c, 15014u, 36774u) | vec4<u32>(1u, var_2.x, 4294967295u, 85254u), !vec2<bool>(true, var_0.a), u_input.b > -7844i, any(vec3<bool>(true, var_0.a, false)), Struct_1(var_0.a, 1000f)), !vec3<bool>(var_0.a, var_0.a, var_0.a), select(vec2<i32>(52053i, -26224i), vec2<i32>(var_1, -28127i), vec2<bool>(var_0.a, true)) ^ vec2<i32>(u_input.b, -15414i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -187f)))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(154f, 2186f, var_0.b, 754f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b, 278f, -1000f, global0.b))))))));
    global0 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.b, -675f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(681f - _wgslsmith_f_op_f32(global0.b * -802f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_3.x))))), -1686f);
    return Struct_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1022f), var_3.x), -737f, _wgslsmith_f_op_f32(abs(2768f)));
}

fn func_1() -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1110f + global0.b)))));
    global0 = func_2();
    let var_1 = vec3<f32>(212f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) * _wgslsmith_f_op_f32(global0.b + _wgslsmith_f_op_f32(f32(-1f) * -262f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)))));
    let var_2 = false & (!(true & (u_input.b >= 0i)) & true);
    global1 = array<vec2<u32>, 26>();
    return _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(global1[_wgslsmith_index_u32(~(~_wgslsmith_mod_u32(u_input.a.x, u_input.c)), 26u)], _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x | u_input.a.x, u_input.c), _wgslsmith_sub_vec2_u32(vec2<u32>(29492u, u_input.a.x), u_input.a.xy) << (vec2<u32>(1u, u_input.a.x) % vec2<u32>(32u)))), u_input.a.xy);
}

fn func_5(arg_0: u32, arg_1: u32, arg_2: Struct_2, arg_3: vec4<bool>) -> Struct_4 {
    let var_0 = Struct_3(_wgslsmith_add_u32(~arg_0, arg_0));
    var var_1 = func_2();
    global3 = array<vec4<bool>, 1>();
    let var_2 = arg_2;
    var var_3 = ~2147483647i;
    return Struct_4(-1801f, 275f, 504f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(~firstLeadingBit(1u), ~(~(func_1() >> (51871u % 32u))), Struct_2(_wgslsmith_div_vec4_u32(vec4<u32>(~4294967295u, 1u >> (0u % 32u), _wgslsmith_sub_u32(u_input.a.x, 0u), ~50902u), _wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(1u, u_input.c, u_input.c, u_input.a.x), vec4<u32>(4294967295u, 19743u, 4702u, 1u)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.a.x), vec4<u32>(4294967295u, u_input.c, 52983u, 2382u)))), vec2<bool>(!select(false, false, false), u_input.c <= _wgslsmith_sub_u32(u_input.c, 0u)), all(vec4<bool>(true, false, true, true)), any(vec2<bool>(true, func_3(vec2<i32>(u_input.b, u_input.b), Struct_4(-980f, global0.c, -782f), Struct_5(906f, Struct_1(false, global0.b), vec4<bool>(true, false, true, false), Struct_2(vec4<u32>(0u, u_input.c, 4294967295u, u_input.a.x), vec2<bool>(true, true), true, true, Struct_1(true, global0.c)))))), Struct_1(all(vec3<bool>(true, false, true)) && true, 210f)), global3[_wgslsmith_index_u32(u_input.c, 1u)]);
    var var_1 = Struct_3(~u_input.c);
    let var_2 = Struct_5(_wgslsmith_f_op_f32(global0.a - 234f), Struct_1(any(select(select(vec2<bool>(false, true), vec2<bool>(false, false), true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false)))), -925f), global3[_wgslsmith_index_u32(21624u, 1u)], Struct_2(vec4<u32>(4294967295u, _wgslsmith_clamp_u32(~13522u, 1u, _wgslsmith_clamp_u32(4294967295u, 0u, 0u)), _wgslsmith_mod_u32(51903u, ~49324u), ~var_1.a & var_1.a), select(!select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false)), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(true, true)), vec2<bool>(func_3(vec2<i32>(2147483647i, -12785i), Struct_4(global0.a, global0.b, 686f), Struct_5(var_0.b, Struct_1(false, -164f), global3[_wgslsmith_index_u32(87850u, 1u)], Struct_2(vec4<u32>(2671u, u_input.c, u_input.a.x, u_input.c), vec2<bool>(false, false), false, true, Struct_1(true, var_0.b)))), true)), !any(select(global3[_wgslsmith_index_u32(u_input.a.x, 1u)], vec4<bool>(true, false, false, false), false)), true, Struct_1(true, 694f)));
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec3<i32>(u_input.b >> (var_2.d.a.x % 32u), -10601i, u_input.b)), firstLeadingBit(select(~firstLeadingBit(var_2.d.a), _wgslsmith_add_vec4_u32(vec4<u32>(29807u, 16642u, 58054u, 107092u), vec4<u32>(u_input.a.x, u_input.c, var_2.d.a.x, 83554u)), vec4<bool>(true, true, true, true))), ~select(~(var_2.d.a.x << (var_1.a % 32u)), var_1.a, var_2.d.b.x));
}

