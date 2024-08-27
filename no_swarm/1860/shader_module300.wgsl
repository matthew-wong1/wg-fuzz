struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 20>;

var<private> global1: array<Struct_2, 10> = array<Struct_2, 10>(Struct_2(1u, Struct_1(vec3<bool>(true, true, false), 888f, vec4<i32>(-1i, 1i, 0i, 34799i)), 4294967295u), Struct_2(4294967295u, Struct_1(vec3<bool>(true, false, true), 700f, vec4<i32>(i32(-2147483648), -68484i, 2147483647i, -1i)), 52253u), Struct_2(13193u, Struct_1(vec3<bool>(true, false, true), -288f, vec4<i32>(-1i, 0i, -1i, -1i)), 4294967295u), Struct_2(30399u, Struct_1(vec3<bool>(true, false, false), 543f, vec4<i32>(29518i, 2147483647i, 0i, 13023i)), 37122u), Struct_2(44907u, Struct_1(vec3<bool>(true, false, true), -186f, vec4<i32>(2147483647i, -60656i, -1i, -17297i)), 88486u), Struct_2(0u, Struct_1(vec3<bool>(false, true, true), -767f, vec4<i32>(-33039i, -5809i, -35545i, -58490i)), 0u), Struct_2(4294967295u, Struct_1(vec3<bool>(true, true, false), -1745f, vec4<i32>(-37871i, 0i, 1i, 0i)), 4294967295u), Struct_2(63336u, Struct_1(vec3<bool>(true, false, false), 424f, vec4<i32>(-1i, 1i, 0i, 0i)), 39600u), Struct_2(1u, Struct_1(vec3<bool>(false, true, true), -397f, vec4<i32>(6964i, -20310i, -25160i, i32(-2147483648))), 96689u), Struct_2(4294967295u, Struct_1(vec3<bool>(false, false, true), -871f, vec4<i32>(2147483647i, 19955i, -44463i, -1i)), 0u));

var<private> global2: array<vec2<bool>, 31> = array<vec2<bool>, 31>(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: vec3<u32>, arg_1: bool) -> vec3<u32> {
    global1 = array<Struct_2, 10>();
    return arg_0;
}

fn func_3(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: Struct_3, arg_3: vec2<f32>) -> vec3<bool> {
    var var_0 = Struct_3(4294967295u);
    let var_1 = Struct_1(!(!(!vec3<bool>(arg_1.x, true, true))), _wgslsmith_f_op_f32(-arg_3.x), vec4<i32>(-1i) * -_wgslsmith_clamp_vec4_i32(~vec4<i32>(-2147483647i, 24459i, -26800i, 18814i), vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(-1i, 0i, 40861i, 30781i)));
    var var_2 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(arg_0.a, ~_wgslsmith_mod_u32(94656u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(7348u, arg_2.a))), ~firstLeadingBit(_wgslsmith_div_u32(arg_2.a, 1u))), u_input.b), 10u)];
    var_2 = global1[_wgslsmith_index_u32(3395u, 10u)];
    let var_3 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_add_u32(~countOneBits(15702u) ^ var_0.a, ~1u), var_0.a << (_wgslsmith_dot_vec3_u32(vec3<u32>(firstLeadingBit(110293u), ~var_2.c, _wgslsmith_add_u32(arg_2.a, arg_0.a)), _wgslsmith_add_vec3_u32(~vec3<u32>(var_2.c, 1u, 26226u), vec3<u32>(30912u, arg_2.a, 7089u))) % 32u)), 20u)];
    return select(vec3<bool>(!((arg_0.a != var_3.a) | true), true, !var_1.a.x), var_2.b.a, var_1.a);
}

fn func_1() -> vec4<f32> {
    let var_0 = Struct_4(Struct_2(u_input.a, Struct_1(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(-220f - -1084f), vec4<i32>(1i, 1i, 1i, 1i)), 4065u));
    global0 = array<Struct_3, 20>();
    var var_1 = -(i32(-1i) * -1i);
    let var_2 = select(_wgslsmith_mult_vec3_u32(~func_2(vec3<u32>(var_0.a.a, 0u, var_0.a.c), var_0.a.b.a.x), select(abs(vec3<u32>(u_input.b, u_input.b, 4294967295u)), vec3<u32>(u_input.a, 85026u, 43808u) >> (vec3<u32>(u_input.a, 0u, u_input.a) % vec3<u32>(32u)), all(vec3<bool>(false, var_0.a.b.a.x, false)))), vec3<u32>(_wgslsmith_mult_u32(1u, reverseBits(65186u)), min(u_input.a, u_input.a), var_0.a.a), func_3(global0[_wgslsmith_index_u32(~var_0.a.a, 20u)], vec2<bool>(true, true), Struct_3(1u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.b.b, var_0.a.b.b)))) | vec3<u32>(_wgslsmith_div_u32(var_0.a.a, u_input.a), u_input.b, 1u);
    var_1 = min(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(abs(var_0.a.b.c.x), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, var_0.a.b.c.x, 0i, -2147483647i), vec4<i32>(0i, var_0.a.b.c.x, 1i, var_0.a.b.c.x)), -2147483647i), _wgslsmith_mod_vec3_i32(~var_0.a.b.c.wzz, abs(var_0.a.b.c.wxz))), 3298i), var_0.a.b.c.x);
    return vec4<f32>(539f, 1000f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(837f)))), 1561f);
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_4, arg_2: i32, arg_3: vec3<f32>) -> bool {
    return !arg_1.a.b.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<bool>, 31>();
    global2 = array<vec2<bool>, 31>();
    var var_0 = vec4<bool>(!(!all(vec3<bool>(true, true, true))), false, !func_4(_wgslsmith_f_op_vec4_f32(func_1()), Struct_4(global1[_wgslsmith_index_u32(9893u, 10u)]), 0i >> (u_input.b % 32u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1130f, 1000f, 239f))) | func_3(global0[_wgslsmith_index_u32(~1u >> (u_input.a % 32u), 20u)], select(global2[_wgslsmith_index_u32(~u_input.a, 31u)], vec2<bool>(true, false), vec2<bool>(true, false)), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~u_input.a, min(u_input.a, 0u)), 20u)], _wgslsmith_f_op_vec2_f32(-vec2<f32>(-641f, 658f))).x, true);
    var var_1 = ~func_2(~(vec3<u32>(u_input.b, 50145u, u_input.a) | vec3<u32>(4294967295u, u_input.b, u_input.a)) >> (vec3<u32>(_wgslsmith_mult_u32(u_input.b, u_input.a), _wgslsmith_mod_u32(u_input.b, 30167u), 66663u) % vec3<u32>(32u)), any(vec2<bool>(var_0.x, false))).yy;
    let var_2 = Struct_4(Struct_2(_wgslsmith_div_u32(u_input.a, var_1.x) ^ var_1.x, Struct_1(vec3<bool>(any(vec4<bool>(true, var_0.x, var_0.x, true)), true, func_3(global0[_wgslsmith_index_u32(u_input.b, 20u)], var_0.yy, global0[_wgslsmith_index_u32(var_1.x, 20u)], vec2<f32>(-1000f, -568f)).x), -713f, min(_wgslsmith_mult_vec4_i32(vec4<i32>(-41066i, 0i, -57439i, 1i), vec4<i32>(1i, 2147483647i, 1i, 25531i)), ~vec4<i32>(2147483647i, 2147483647i, 42821i, -33461i))), 26343u));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.b.c.yz, ~(~(~(~vec4<u32>(58152u, var_1.x, 4294967295u, var_1.x)))));
}

