struct Struct_1 {
    a: i32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 11>;

var<private> global1: i32 = -18555i;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec2<i32> {
    global0 = array<Struct_2, 11>();
    global0 = array<Struct_2, 11>();
    global1 = 1i;
    var var_0 = global0[_wgslsmith_index_u32(u_input.a, 11u)];
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-183f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -238f), _wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(abs(-1113f)))))), 1890f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-409f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(929f)) - 2371f), any(vec2<bool>(true, true)))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(827f + 367f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -255f)))))));
    return vec2<i32>(1i, ~var_0.b.a);
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(-(i32(-1i) * -2147483647i) ^ _wgslsmith_mult_i32(i32(-1i) * -23509i, ~(-35112i) << (u_input.a % 32u)), _wgslsmith_sub_vec2_i32(abs(_wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, -2147483647i), func_3())), -(select(vec2<i32>(0i, 2147483647i), vec2<i32>(1i, -2147483647i), true) | ~vec2<i32>(7067i, -4218i))));
    let var_1 = _wgslsmith_add_u32(38032u >> (u_input.a % 32u), u_input.a);
    global0 = array<Struct_2, 11>();
    var var_2 = select(select(!vec2<bool>(true, any(vec3<bool>(true, true, false))), select(vec2<bool>(true, true), select(select(vec2<bool>(true, false), vec2<bool>(true, true), true), vec2<bool>(true, true), vec2<bool>(true, true)), !(var_0.a > var_0.a)), select(vec2<bool>(true, any(vec2<bool>(true, true))), vec2<bool>(23148u < u_input.a, true), !all(vec4<bool>(true, true, false, false)))), vec2<bool>(true, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(1237f)))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1935f * -548f))), false);
    global1 = var_0.a;
    return Struct_1(-2147483647i, var_0.b);
}

fn func_1(arg_0: Struct_2) -> vec3<bool> {
    let var_0 = func_2();
    let var_1 = all(vec2<bool>(all(!select(vec2<bool>(true, true), vec2<bool>(false, true), true)), true));
    let var_2 = arg_0;
    global0 = array<Struct_2, 11>();
    let var_3 = vec2<u32>(u_input.a, ~0u);
    return select(vec3<bool>(true, all(select(select(vec3<bool>(var_1, false, true), vec3<bool>(var_1, true, var_1), var_1), !vec3<bool>(false, var_1, var_1), arg_0.c.b.x <= -1i)), var_1), vec3<bool>(var_1 | false, true, true), select(!select(vec3<bool>(var_1, true, true), vec3<bool>(var_1, false, var_1), select(vec3<bool>(var_1, var_1, true), vec3<bool>(var_1, var_1, false), var_1)), select(vec3<bool>(true, any(vec2<bool>(var_1, false)), select(var_1, var_1, true)), select(vec3<bool>(var_1, var_1, var_1), vec3<bool>(false, var_1, var_1), true), any(vec2<bool>(true, var_1))), !((18810u ^ var_3.x) != 34182u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(select(!func_1(Struct_2(Struct_1(-1i, vec2<i32>(0i, -83123i)), Struct_1(-1i, vec2<i32>(2147483647i, -15925i)), Struct_1(36010i, vec2<i32>(45583i, -25336i)), Struct_1(1i, vec2<i32>(4177i, 20081i)))), select(func_1(Struct_2(Struct_1(2147483647i, vec2<i32>(-115332i, 1i)), Struct_1(0i, vec2<i32>(10217i, 50494i)), Struct_1(50813i, vec2<i32>(-1i, 1i)), Struct_1(11552i, vec2<i32>(19951i, 1i)))), vec3<bool>(true, true, true), select(true, true, any(vec3<bool>(true, false, true)))), (any(vec2<bool>(false, true)) || true) && false), vec3<bool>(all(vec3<bool>(true, true, false)), true, !all(vec2<bool>(true, true))), false);
    global1 = -((~14419i << (~select(1u, 69507u, var_0.x) % 32u)) ^ 1i);
    var var_1 = global0[_wgslsmith_index_u32(firstLeadingBit(~(~u_input.a)), 11u)];
    global0 = array<Struct_2, 11>();
    var_1 = Struct_2(func_2(), var_1.b, func_2(), var_1.d);
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(425f, 2006f)), 372f))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(2462f, -2077f))) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1529f, -221f), vec2<f32>(-637f, -1330f))))), vec2<f32>(_wgslsmith_f_op_f32(max(-806f, _wgslsmith_f_op_f32(ceil(-618f)))), -243f)));
    let var_3 = Struct_1(0i, select(abs(select(var_1.a.b, var_1.b.b, false)) ^ vec2<i32>(var_1.d.a, 18526i), select(var_1.b.b, -_wgslsmith_add_vec2_i32(var_1.b.b, var_1.d.b), vec2<bool>(var_2.x != var_2.x, var_0.x)), vec2<bool>(select(var_1.b.b.x, var_1.a.b.x, var_0.x) > var_1.b.a, var_0.x)));
    let var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1640f * -386f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(_wgslsmith_mod_u32(0u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(36090u, 42838u, 52028u, 72679u), vec4<u32>(u_input.a, 16579u, 15282u, 4294967295u))), 1u), 63461u, 2147483647i, _wgslsmith_clamp_vec4_u32(~(vec4<u32>(u_input.a, u_input.a, 25452u, 9347u) & _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 35561u, u_input.a, u_input.a), vec4<u32>(0u, 4294967295u, u_input.a, u_input.a))), ~max(vec4<u32>(u_input.a, 0u, 85611u, u_input.a), abs(vec4<u32>(4294967295u, 24596u, 0u, 381u))), min(~vec4<u32>(u_input.a, 29781u, 4294967295u, u_input.a), _wgslsmith_add_vec4_u32(vec4<u32>(57072u, u_input.a, 33730u, 21873u), vec4<u32>(1u, u_input.a, 0u, 4294967295u))) >> (~_wgslsmith_mult_vec4_u32(vec4<u32>(17739u, 103077u, u_input.a, 36837u), vec4<u32>(0u, 14665u, 1u, 26080u)) % vec4<u32>(32u))));
}

