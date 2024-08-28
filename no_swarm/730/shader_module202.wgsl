struct Struct_1 {
    a: u32,
    b: u32,
    c: vec3<bool>,
    d: u32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: Struct_3,
    d: vec2<i32>,
}

struct Struct_5 {
    a: Struct_3,
    b: u32,
    c: i32,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: f32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 21> = array<vec2<u32>, 21>(vec2<u32>(59962u, 35239u), vec2<u32>(40112u, 47481u), vec2<u32>(4294967295u, 1u), vec2<u32>(4294967295u, 0u), vec2<u32>(120616u, 8623u), vec2<u32>(1u, 13251u), vec2<u32>(35886u, 0u), vec2<u32>(1u, 87077u), vec2<u32>(53175u, 32737u), vec2<u32>(22603u, 0u), vec2<u32>(1u, 0u), vec2<u32>(5560u, 3093u), vec2<u32>(104255u, 22405u), vec2<u32>(56896u, 56212u), vec2<u32>(1u, 0u), vec2<u32>(40689u, 4294967295u), vec2<u32>(4294967295u, 1u), vec2<u32>(37297u, 4259u), vec2<u32>(1u, 1u), vec2<u32>(0u, 0u), vec2<u32>(4294967295u, 0u));

var<private> global1: Struct_3;

var<private> global2: array<Struct_4, 32>;

var<private> global3: Struct_5;

var<private> global4: array<Struct_3, 28>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> vec4<bool> {
    global1 = global4[_wgslsmith_index_u32(~(global1.a.a.d ^ _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(global3.d.a, u_input.a, u_input.a), vec3<u32>(u_input.a, 0u, global3.b)) ^ vec3<u32>(global1.a.a.d, 38796u, global3.b), vec3<u32>(32593u, ~22302u, _wgslsmith_div_u32(3353u, u_input.b)))), 28u)];
    var var_0 = global2[_wgslsmith_index_u32(~4294967295u, 32u)];
    global4 = array<Struct_3, 28>();
    var_0 = global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(min(~vec4<u32>(1u, 0u, global1.a.a.d, var_0.b.a.a.a), ~vec4<u32>(global1.a.a.b, global3.d.b, 0u, 6081u)), vec4<u32>(_wgslsmith_div_u32(0u, var_0.b.a.a.b), ~0u, ~0u, _wgslsmith_sub_u32(1u, global3.d.a))) ^ 9375u, 32u)];
    global1 = Struct_3(global1.a, select(vec4<i32>(1i, max(-global3.c, i32(-1i) * -1i), var_0.a.a.e.x, ~_wgslsmith_dot_vec2_i32(vec2<i32>(global3.d.e.x, global1.b.x), u_input.e)), vec4<i32>(~(-2147483647i), _wgslsmith_clamp_i32(u_input.d, global3.c, -83431i), _wgslsmith_div_i32(global3.d.e.x, -2147483647i), _wgslsmith_clamp_i32(u_input.e.x, var_0.a.a.e.x, global3.a.a.a.e.x)) | -firstLeadingBit(global3.d.e), vec4<bool>(true, any(var_0.c.a.a.c), global3.a.a.a.c.x, all(vec4<bool>(false, global1.a.a.c.x, global1.a.a.c.x, false)) && true)));
    return select(select(!vec4<bool>(var_0.b.a.a.c.x & global1.a.a.c.x, false, true, all(vec4<bool>(global1.a.a.c.x, false, true, global3.a.a.a.c.x))), select(!select(vec4<bool>(global1.a.a.c.x, global3.a.a.a.c.x, global1.a.a.c.x, false), vec4<bool>(true, global1.a.a.c.x, false, var_0.c.a.a.c.x), true), !(!vec4<bool>(true, false, global3.d.c.x, global1.a.a.c.x)), vec4<bool>(u_input.e.x != 0i, all(var_0.c.a.a.c.xx), global3.d.c.x, var_0.c.a.a.c.x)), vec4<bool>(any(!vec4<bool>(var_0.b.a.a.c.x, global3.d.c.x, global3.d.c.x, false)), firstLeadingBit(u_input.e.x) < -1i, all(select(vec4<bool>(true, var_0.a.a.c.x, false, true), vec4<bool>(false, global1.a.a.c.x, false, global1.a.a.c.x), vec4<bool>(true, var_0.b.a.a.c.x, var_0.b.a.a.c.x, var_0.c.a.a.c.x))), _wgslsmith_clamp_u32(u_input.b, 26883u, global1.a.a.b) != _wgslsmith_dot_vec4_u32(vec4<u32>(global1.a.a.b, global3.b, global3.d.d, 10754u), vec4<u32>(0u, global3.b, global1.a.a.d, 42618u)))), select(!(!vec4<bool>(var_0.b.a.a.c.x, true, true, true)), !(!(!vec4<bool>(var_0.b.a.a.c.x, true, global1.a.a.c.x, global3.a.a.a.c.x))), global3.a.a.a.c.x), vec4<bool>(var_0.c.a.a.c.x, (~global3.a.a.a.d < _wgslsmith_sub_u32(global3.a.a.a.d, global3.b)) && var_0.a.a.c.x, all(!select(vec3<bool>(global1.a.a.c.x, global3.d.c.x, false), vec3<bool>(global3.a.a.a.c.x, true, false), vec3<bool>(global1.a.a.c.x, global1.a.a.c.x, false))), !(countOneBits(var_0.c.a.a.b) != global3.d.a)));
}

fn func_2(arg_0: u32) -> u32 {
    var var_0 = 36808i;
    let var_1 = Struct_5(Struct_3(Struct_2(global3.a.a.a), global1.b), 19270u, u_input.d, Struct_1(~arg_0, ~arg_0, vec3<bool>(all(func_3()), all(!vec2<bool>(true, global1.a.a.c.x)), func_3().x), _wgslsmith_add_u32(arg_0, ~global1.a.a.d), _wgslsmith_mult_vec4_i32(~vec4<i32>(global3.d.e.x, 22876i, 1i, global1.a.a.e.x), global1.a.a.e) ^ global3.a.a.a.e));
    var var_2 = vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_div_u32(1u, 4294967295u), u_input.b) << (_wgslsmith_div_u32(~0u, 1u) % 32u), firstLeadingBit(~66573u)) & ~min(~global0[_wgslsmith_index_u32(global1.a.a.a & 66475u, 21u)], global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(min(global3.d.a, arg_0), var_1.a.a.a.a), 21u)]);
    var var_3 = vec3<bool>(func_3().x, any(select(!select(vec4<bool>(global1.a.a.c.x, false, false, true), vec4<bool>(global3.d.c.x, false, true, global1.a.a.c.x), vec4<bool>(false, global1.a.a.c.x, global3.d.c.x, global1.a.a.c.x)), !select(vec4<bool>(false, var_1.d.c.x, global3.a.a.a.c.x, true), vec4<bool>(true, global3.a.a.a.c.x, false, global3.a.a.a.c.x), vec4<bool>(false, false, true, false)), vec4<bool>(global3.a.a.a.c.x, global3.d.c.x == false, false, global3.a.a.a.c.x))), global3.d.c.x);
    global0 = array<vec2<u32>, 21>();
    return min(abs(1u), max(1u, ~firstTrailingBit(~var_1.a.a.a.b)));
}

fn func_1() -> vec4<u32> {
    global1 = global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(~4294967295u, 54539u | u_input.a), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(37896u, 19647u, u_input.a), ~(~vec3<u32>(global3.d.a, global1.a.a.d, 40973u))), func_2(~4294967295u))), 28u)];
    global1 = Struct_3(Struct_2(global3.a.a.a), vec4<i32>(~(i32(-1i) * -17792i), global1.a.a.e.x, ~reverseBits(-78490i), 2147483647i));
    global0 = array<vec2<u32>, 21>();
    var var_0 = func_3();
    global3 = Struct_5(global3.a, select(_wgslsmith_add_u32(global3.b, abs(min(global3.d.b, 0u))), ~24204u, true & !any(vec2<bool>(false, true))), select(global1.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(global3.d.e.x, u_input.c.x, 16724i, -45718i), vec4<i32>(global1.a.a.e.x, -27750i, 2147483647i, 2147483647i)), global1.a.a.c.x) << (1u % 32u), Struct_1(u_input.a, ~u_input.b, vec3<bool>(true, global3.a.a.a.a > 1u, true), reverseBits(func_2(1u)), vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(global3.c, 2147483647i, 51895i), _wgslsmith_clamp_i32(-1i, global1.b.x, -9546i), 27847i << (1u % 32u)), 2147483647i, -1i, -35064i)));
    return vec4<u32>(~_wgslsmith_mult_u32(14729u, _wgslsmith_mod_u32(u_input.a << (u_input.a % 32u), global1.a.a.a)), abs(1u), max(_wgslsmith_mult_u32(max(global3.b, ~global3.d.b), ~firstTrailingBit(47344u)), ~(~_wgslsmith_div_u32(10357u, 4294967295u))), ~global1.a.a.b);
}

fn func_4(arg_0: vec4<u32>, arg_1: u32, arg_2: vec3<i32>) -> Struct_2 {
    global2 = array<Struct_4, 32>();
    global4 = array<Struct_3, 28>();
    var var_0 = vec4<bool>(all(vec3<bool>(false, false, false)), !all(vec3<bool>(true, true, true)), global3.a.a.a.c.x, false | global3.a.a.a.c.x);
    var var_1 = Struct_3(global3.a.a, global3.d.e);
    var_0 = !vec4<bool>(var_1.a.a.c.x, var_1.a.a.c.x, any(vec4<bool>(global1.a.a.c.x, all(var_0.wy), !global3.d.c.x, true)), any(vec4<bool>(all(var_1.a.a.c), select(global3.d.c.x, global3.a.a.a.c.x, false), true, true)));
    return global1.a;
}

fn func_5(arg_0: f32, arg_1: bool, arg_2: Struct_2) -> Struct_3 {
    global2 = array<Struct_4, 32>();
    let var_0 = ~_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(global3.b, u_input.a, 4294967295u), vec3<u32>(~4294967295u, 0u, ~23996u)), 10523u);
    let var_1 = _wgslsmith_add_u32(firstTrailingBit(arg_2.a.d), select(global3.a.a.a.a, _wgslsmith_dot_vec3_u32(select(vec3<u32>(0u, var_0, u_input.a), vec3<u32>(var_0, u_input.a, arg_2.a.b), arg_2.a.c.x), vec3<u32>(53505u, global3.d.d, global1.a.a.d)), !all(vec4<bool>(false, true, true, true)))) > 31960u;
    global0 = array<vec2<u32>, 21>();
    global3 = Struct_5(global3.a, _wgslsmith_add_u32(1u, func_4(_wgslsmith_mult_vec4_u32(~vec4<u32>(arg_2.a.a, 0u, 69589u, arg_2.a.b), vec4<u32>(u_input.a, global3.d.d, var_0, 1u)), ~26085u, -(~vec3<i32>(2147483647i, 29275i, u_input.d))).a.b), 56649i, func_4(~vec4<u32>(var_0, global3.d.a, max(44518u, 4294967295u), min(u_input.b, var_0)), func_2(func_1().x) << (_wgslsmith_sub_u32(var_0, var_0) % 32u), global1.b.wzx).a);
    return global3.a;
}

fn func_6(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_1) -> Struct_4 {
    var var_0 = vec3<f32>(1000f, -1848f, _wgslsmith_f_op_f32(round(-950f)));
    return global2[_wgslsmith_index_u32(43449u, 32u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(func_5(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -414f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1551f + 1000f)))), true, func_4(~func_1(), global3.a.a.a.b, _wgslsmith_mult_vec3_i32(global3.d.e.www, vec3<i32>(-2147483647i, u_input.e.x, 0i)))), global3.d, func_4(vec4<u32>(~(~global1.a.a.d), select(~4294967295u, func_4(vec4<u32>(global3.a.a.a.d, u_input.b, u_input.b, 4294967295u), global3.d.b, global3.d.e.xwx).a.a, u_input.e.x <= -1i), ~global3.b, global3.a.a.a.b), global3.b, global1.b.xxx).a);
    global1 = func_6(Struct_3(var_0.a, _wgslsmith_mod_vec4_i32(~vec4<i32>(global3.c, u_input.e.x, global1.b.x, -2738i), var_0.b.a.a.e)), Struct_1(_wgslsmith_div_u32(~var_0.c.a.a.d, ~max(u_input.a, 0u)), 78118u, func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1000f)) + _wgslsmith_f_op_f32(trunc(-1000f))), all(!global1.a.a.c.zz), global3.a.a).a.a.c, _wgslsmith_dot_vec2_u32(vec2<u32>(~0u, ~u_input.a), global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(var_0.a.a.d, global1.a.a.a), 21u)]), abs(_wgslsmith_mod_vec4_i32(abs(global3.a.a.a.e), global3.a.a.a.e))), Struct_1(abs(func_1().x), global1.a.a.d, func_5(1f, global3.d.c.x, func_5(_wgslsmith_f_op_f32(step(-1044f, 893f)), any(global3.a.a.a.c), global1.a).a).a.a.c, _wgslsmith_add_u32(~(~7154u), _wgslsmith_div_u32(14100u, func_5(1000f, global3.d.c.x, global3.a.a).a.a.d)), func_5(_wgslsmith_f_op_f32(f32(-1f) * -1276f), func_6(Struct_3(Struct_2(global3.d), var_0.c.a.a.e), Struct_1(64444u, global1.a.a.d, vec3<bool>(var_0.c.a.a.c.x, var_0.b.a.a.c.x, global3.d.c.x), global3.b, vec4<i32>(-1i, -2147483647i, u_input.c.x, 1i)), func_6(var_0.b, global1.a.a, Struct_1(global3.d.a, 0u, var_0.c.a.a.c, 94415u, global1.b)).a.a).c.a.a.c.x, func_5(_wgslsmith_div_f32(268f, 384f), global1.a.a.c.x, global1.a).a).a.a.e)).c;
    var var_1 = global1.a.a.c.x;
    let var_2 = ~15256u;
    var var_3 = !vec4<bool>(true, true && global3.d.c.x, true, var_0.a.a.c.x);
    global4 = array<Struct_3, 28>();
    let var_4 = Struct_3(func_5(-1000f, !var_0.c.a.a.c.x, Struct_2(global1.a.a)).a, _wgslsmith_mod_vec4_i32(vec4<i32>(func_6(func_6(global4[_wgslsmith_index_u32(4294967295u, 28u)], Struct_1(4294967295u, global3.d.d, vec3<bool>(var_0.c.a.a.c.x, true, false), global1.a.a.d, vec4<i32>(global1.b.x, 2147483647i, 12342i, -44652i)), var_0.b.a.a).b, Struct_1(16643u, 20090u, var_3.wwx, var_0.a.a.a, vec4<i32>(-21250i, global1.b.x, -1i, global3.d.e.x)), global3.d).d.x, select(u_input.c.x, min(7938i, u_input.e.x), true), -26090i, global3.c), -global1.b));
    global2 = array<Struct_4, 32>();
    let var_5 = global4[_wgslsmith_index_u32(1u, 28u)];
    let x = u_input.a;
    s_output = StorageBuffer(1u, firstLeadingBit(~max(select(vec3<u32>(var_0.a.a.a, 1u, 0u), vec3<u32>(15740u, 12079u, 86128u), false), abs(vec3<u32>(u_input.a, u_input.b, var_4.a.a.d)))), -345f, reverseBits(firstLeadingBit(~4294967295u)), -var_5.b.x);
}

