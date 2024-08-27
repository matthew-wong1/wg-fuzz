struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: bool, arg_3: vec4<bool>) -> bool {
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(arg_1.a))))));
    let var_1 = true;
    var var_2 = false;
    var_2 = all(vec4<bool>(!arg_2, any(select(vec3<bool>(true, arg_3.x, arg_2), !vec3<bool>(arg_2, arg_2, false), arg_3.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.x)) + _wgslsmith_f_op_f32(select(-1000f, var_0.x, arg_3.x))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1815f - -1000f)), false));
    var var_3 = arg_1;
    return false;
}

fn func_3(arg_0: bool) -> vec3<u32> {
    var var_0 = true;
    let var_1 = vec3<i32>(-min(firstLeadingBit(~u_input.c), 1i), 1i << (u_input.b.x % 32u), -(~(select(u_input.a, -1i, arg_0) | -1i)));
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(302f, global0.x), vec2<f32>(global0.x, 1529f), arg_0)))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1692f, global0.x))))), var_1.x, abs(_wgslsmith_mod_u32(~(u_input.b.x << (1u % 32u)), _wgslsmith_mult_u32(abs(u_input.b.x), ~u_input.b.x))));
    var var_3 = Struct_1(vec2<f32>(1678f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(240f)), _wgslsmith_div_f32(var_2.a.x, global0.x))))), -_wgslsmith_mult_i32(_wgslsmith_sub_i32(1i, u_input.d), max(~(-49615i), u_input.a)), ~var_2.c);
    var var_4 = firstTrailingBit(countOneBits(~(~vec4<u32>(4294967295u, var_2.c, 23557u, var_3.c)) << (max(_wgslsmith_mod_vec4_u32(vec4<u32>(var_3.c, 64958u, 0u, 53223u), vec4<u32>(0u, var_2.c, 1u, u_input.b.x)), ~vec4<u32>(0u, 0u, var_3.c, 1u)) % vec4<u32>(32u))));
    return firstLeadingBit(var_4.zyw);
}

fn func_1() -> Struct_1 {
    let var_0 = vec3<bool>(all(!select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true))), func_2(~u_input.b.x, Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.zw)), ~(-u_input.d), 6998u), false, !(!select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), true))), !select(false, true, true));
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(global0.wy - global0.xy), u_input.c, _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(1u, u_input.b.x, u_input.b.x), func_3(var_0.x)), ~_wgslsmith_mod_vec3_u32(vec3<u32>(0u, u_input.b.x, 4294967295u), vec3<u32>(0u, u_input.b.x, u_input.b.x))), select(_wgslsmith_div_u32(_wgslsmith_sub_u32(u_input.b.x, u_input.b.x), 4294967295u), 1u, all(vec2<bool>(true, true)))));
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(351f, global0.x), var_1.a))) - _wgslsmith_f_op_vec2_f32(-global0.yy)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(-549f, -374f) - vec2<f32>(var_1.a.x, 1000f))))))), reverseBits(abs(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.b, 0i), -vec2<i32>(1i, -39308i)))), var_1.c);
    var var_3 = !func_2(47322u, Struct_1(var_1.a, ~1i, 125748u), true, !vec4<bool>(var_0.x & var_0.x, var_0.x, var_0.x, true));
    var var_4 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(999f)), _wgslsmith_f_op_f32(var_2.a.x - 460f)) + _wgslsmith_div_f32(-576f, _wgslsmith_f_op_f32(ceil(902f)))), _wgslsmith_f_op_f32(f32(-1f) * -847f)), var_1.b, 28045u);
    return Struct_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_4.a, vec2<f32>(var_2.a.x, 1501f), var_0.xy)), var_1.a), vec2<f32>(_wgslsmith_f_op_f32(-var_1.a.x), -467f))))), -_wgslsmith_dot_vec3_i32(vec3<i32>(10371i, -15392i, firstTrailingBit(u_input.d)), firstLeadingBit(vec3<i32>(11935i, var_2.b, var_1.b))), var_1.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = vec2<bool>(!func_2(u_input.b.x, Struct_1(func_1().a, u_input.c, ~0u), !any(vec4<bool>(true, false, true, true)), vec4<bool>(false, true, false, true)), (-_wgslsmith_sub_i32(var_0.b, var_0.b) < 1i) == false);
    var var_2 = all(vec4<bool>(false, true, true, var_1.x));
    var var_3 = i32(-1i) * -abs(u_input.a << (u_input.b.x % 32u));
    let var_4 = var_0;
    let var_5 = ~(var_4.c ^ _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(4935u, u_input.b.x)), ~16296u, abs(0u)), _wgslsmith_div_vec3_u32(~vec3<u32>(0u, 56224u, 4294967295u), vec3<u32>(var_0.c, 0u, 76060u))));
    let var_6 = var_4;
    var_3 = 0i;
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, -1135f, _wgslsmith_f_op_f32(floor(-1481f)), -1122f))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-36318i, 21588i, (_wgslsmith_div_i32(u_input.d, var_4.b) | _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.b, 1i, -2147483647i, var_6.b), vec4<i32>(1i, 2147483647i, 25168i, 2766i))) << (4294967295u % 32u), -_wgslsmith_add_i32(1i, _wgslsmith_div_i32(var_4.b, var_4.b))));
}

