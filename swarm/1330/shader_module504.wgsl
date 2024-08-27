struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: Struct_1,
    d: vec2<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: Struct_2,
}

struct Struct_5 {
    a: vec2<f32>,
    b: i32,
    c: f32,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 24> = array<vec2<i32>, 24>(vec2<i32>(-1i, 36342i), vec2<i32>(-1i, 48543i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(1i, 2147483647i), vec2<i32>(0i, 2147483647i), vec2<i32>(37770i, -2609i), vec2<i32>(1i, 11758i), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(0i, 0i), vec2<i32>(-43928i, -16579i), vec2<i32>(-7941i, -38791i), vec2<i32>(23034i, i32(-2147483648)), vec2<i32>(-1i, -6035i), vec2<i32>(4440i, 36761i), vec2<i32>(1i, -6937i), vec2<i32>(-7300i, 22073i), vec2<i32>(2147483647i, 7341i), vec2<i32>(-1i, -3435i), vec2<i32>(-35377i, 34001i), vec2<i32>(4479i, -4660i), vec2<i32>(40895i, i32(-2147483648)), vec2<i32>(17709i, -46289i), vec2<i32>(-1i, i32(-2147483648)));

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-475f)), _wgslsmith_f_op_f32(step(-1235f, -1007f)))), _wgslsmith_f_op_f32(f32(-1f) * -1094f)))));
    global0 = array<vec2<i32>, 24>();
    global0 = array<vec2<i32>, 24>();
    let var_1 = u_input.a;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1481f))));
    return vec4<u32>(var_1, ~1u, min(u_input.a, _wgslsmith_dot_vec4_u32(~(vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a) | vec4<u32>(u_input.a, u_input.a, 30369u, var_1)), _wgslsmith_add_vec4_u32(~vec4<u32>(4294967295u, 62422u, var_1, 1u), ~vec4<u32>(u_input.a, u_input.a, 9053u, var_1)))), var_1);
}

fn func_2() -> Struct_2 {
    global0 = array<vec2<i32>, 24>();
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -740f);
    let var_1 = max(vec2<u32>(~(~_wgslsmith_div_u32(57285u, u_input.a)), select(1u, 1u, true)), vec2<u32>(488u, _wgslsmith_dot_vec4_u32(vec4<u32>(53571u, 4294967295u, u_input.a, u_input.a) >> (~vec4<u32>(1u, 1u, u_input.a, 77730u) % vec4<u32>(32u)), func_3() >> (_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 1u, 8640u, u_input.a), vec4<u32>(u_input.a, u_input.a, 0u, 4294967295u)) % vec4<u32>(32u)))));
    let var_2 = Struct_1(_wgslsmith_div_f32(var_0, var_0));
    var var_3 = vec2<bool>(true, true);
    return Struct_2(-firstTrailingBit(i32(-1i) * -2147483647i), var_3.x && var_3.x, Struct_1(_wgslsmith_f_op_f32(var_2.a - 1000f)), var_1);
}

fn func_1(arg_0: u32) -> Struct_2 {
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    let var_1 = Struct_4(Struct_3(func_1(4294967295u), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(263f, -908f)) + 1430f), 496f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(213f, 643f)), -469f)), _wgslsmith_f_op_f32(min(-666f, 982f)), func_1(u_input.a));
    global0 = array<vec2<i32>, 24>();
    let var_2 = select(vec4<bool>(true, false, var_1.a.a.b, true), vec4<bool>(true, any(vec4<bool>(func_1(10659u).b, false && var_1.c.b, all(vec3<bool>(var_1.a.a.b, true, true)), true)), !var_1.a.a.b, !select(true, -25936i > var_1.a.a.a, true)), func_1(max(0u, ~_wgslsmith_mod_u32(0u, u_input.a))).b);
    var_0 = true;
    global0 = array<vec2<i32>, 24>();
    let var_3 = _wgslsmith_div_vec4_u32(select(vec4<u32>(~0u, 1u, var_1.a.a.d.x, var_1.a.a.d.x) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 77386u, 67528u, 27577u), _wgslsmith_mod_vec4_u32(vec4<u32>(var_1.c.d.x, var_1.c.d.x, 0u, 21109u), vec4<u32>(57354u, 4294967295u, var_1.a.a.d.x, u_input.a))) % vec4<u32>(32u)), select(max(~vec4<u32>(u_input.a, var_1.c.d.x, 19386u, u_input.a), vec4<u32>(69227u, 69112u, 0u, 0u)), vec4<u32>(~var_1.a.a.d.x, 1u, _wgslsmith_sub_u32(39437u, var_1.a.a.d.x), var_1.a.a.d.x), func_1(26372u).b != (4294967295u >= u_input.a)), all(var_2.zww)), ~(~abs(vec4<u32>(1u, var_1.c.d.x, 9603u, u_input.a))) << (vec4<u32>(4294967295u, firstLeadingBit(u_input.a) & ~u_input.a, 0u, abs(~4294967295u)) % vec4<u32>(32u)));
    global0 = array<vec2<i32>, 24>();
    global0 = array<vec2<i32>, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(max(15834u, ~var_3.x), func_3().x), -_wgslsmith_add_i32(func_1(~u_input.a).a, -2147483647i ^ _wgslsmith_clamp_i32(-1i, 2147483647i, u_input.b.x)));
}

