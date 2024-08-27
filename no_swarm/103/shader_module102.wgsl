struct Struct_1 {
    a: bool,
    b: f32,
    c: vec4<i32>,
    d: i32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<i32>,
    c: Struct_1,
    d: vec3<f32>,
}

struct Struct_3 {
    a: u32,
    b: vec3<f32>,
    c: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: u32, arg_1: Struct_2) -> f32 {
    let var_0 = vec4<i32>(-42516i, ~_wgslsmith_add_i32(_wgslsmith_mod_i32(-2147483647i, -14504i), u_input.e.x | 1i) | max(-1i, ~arg_1.b.x), max(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, 8067i), vec2<i32>(-20653i, -27900i)) << (firstLeadingBit(60481u) % 32u), _wgslsmith_dot_vec3_i32(max(u_input.d, u_input.c), u_input.c)) | arg_1.c.c.x, _wgslsmith_dot_vec3_i32(arg_1.c.c.xzz, ~u_input.c));
    let var_1 = ~_wgslsmith_dot_vec3_u32(~vec3<u32>(50578u, 49847u, 4294967295u), u_input.a.wxw ^ ~(~vec3<u32>(0u, u_input.a.x, u_input.a.x)));
    let var_2 = arg_1.c;
    var var_3 = arg_1.c.c.xz;
    return _wgslsmith_f_op_f32(select(-900f, var_2.e.x, var_2.c.x > arg_1.b.x));
}

fn func_2() -> vec3<f32> {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3(4294967295u, Struct_2(-391f, vec4<i32>(-2147483647i, u_input.e.x, 2147483647i, u_input.e.x) & vec4<i32>(-2147483647i, u_input.b.x, -2147483647i, u_input.b.x), Struct_1(false, 163f, vec4<i32>(0i, -33472i, u_input.c.x, u_input.b.x), -38948i, vec4<f32>(-708f, -166f, 1000f, 954f)), _wgslsmith_div_vec3_f32(vec3<f32>(-1218f, 1037f, -648f), vec3<f32>(-940f, 860f, 2805f))))), _wgslsmith_f_op_f32(select(1356f, -1000f, true)))), vec4<i32>(-2147483647i, (u_input.c.x ^ 1i) & u_input.c.x, countOneBits(_wgslsmith_mod_i32(54448i, ~0i)), ~(~u_input.c.x)), Struct_1((u_input.a.x == (0u << (u_input.a.x % 32u))) & all(select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true))), 1f, max(_wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.c.x, u_input.d.x, -2147483647i, -34964i), vec4<i32>(u_input.d.x, u_input.b.x, u_input.b.x, 1i)), vec4<i32>(2147483647i, u_input.c.x, u_input.e.x, -3490i) & vec4<i32>(-36630i, -49508i, 1i, u_input.b.x)), -(~vec4<i32>(u_input.d.x, u_input.b.x, -1i, u_input.e.x))), _wgslsmith_div_i32(countOneBits(0i << (u_input.a.x % 32u)), -21551i), vec4<f32>(-158f, -1514f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1000f)) + 125f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3(u_input.a.x, Struct_2(868f, vec4<i32>(u_input.d.x, 1i, u_input.d.x, -15503i), Struct_1(true, -312f, vec4<i32>(u_input.c.x, u_input.b.x, u_input.b.x, -2147483647i), u_input.d.x, vec4<f32>(433f, -688f, 104f, -634f)), vec3<f32>(832f, 1016f, 892f)))))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(294f, 484f, 585f), vec3<f32>(-370f, -454f, -974f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(866f, -2081f, 210f) + _wgslsmith_div_vec3_f32(vec3<f32>(761f, 1167f, 2193f), vec3<f32>(-692f, 1989f, 174f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2617f, 2491f, 312f))) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1000f, -843f, -829f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(444f, -1349f, 1294f))))), true)));
    var var_1 = Struct_3(max(1u, 15003u), var_0.d, true);
    var_1 = Struct_3(_wgslsmith_clamp_u32(4294967295u, u_input.a.x, u_input.a.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(433f, _wgslsmith_f_op_f32(var_1.b.x + var_0.a), _wgslsmith_f_op_f32(step(var_1.b.x, var_1.b.x)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_1.b.x, var_0.a, 161f), var_0.d) * _wgslsmith_f_op_vec3_f32(-var_0.c.e.xzy)) * _wgslsmith_f_op_vec3_f32(abs(var_1.b)))), false);
    var var_2 = -1i;
    var var_3 = select(vec3<bool>(true, !(true && var_0.c.a), var_0.c.a), !vec3<bool>(var_1.c != true, true, var_1.c), false);
    return _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-416f, -1222f, 262f)));
}

fn func_1() -> f32 {
    let var_0 = u_input.a.x;
    let var_1 = Struct_3(1u, _wgslsmith_f_op_vec3_f32(func_2()), false);
    var var_2 = true;
    let var_3 = !select(select(4294967295u, ~0u, select(var_1.c, var_1.c, var_1.c)) < var_0, var_1.b.x <= var_1.b.x, true);
    let var_4 = firstTrailingBit(reverseBits(_wgslsmith_clamp_vec4_u32(u_input.a, ~vec4<u32>(u_input.a.x, 1u, 1u, var_0), u_input.a)));
    return var_1.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(f32(-1f) * -287f), 497f, _wgslsmith_f_op_f32(step(1000f, 411f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 666f, 1099f, -1019f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1572f, -1714f, -419f, 701f) + vec4<f32>(558f, -1000f, -331f, -388f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(758f * -1805f), -2335f, _wgslsmith_f_op_f32(f32(-1f) * -952f), _wgslsmith_f_op_f32(sign(-166f)))))));
    let var_1 = select(select(select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true)), false), vec3<bool>(true, true, true), select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), false), vec3<bool>(false, true, true), false)), vec3<bool>(false, true, true), vec3<bool>(true, all(vec4<bool>(true, false, true, false)) || false, false)), vec3<bool>(!select(true, true, true), true, !all(vec2<bool>(true, true))), select(vec3<bool>(all(vec4<bool>(true, true, true, true)), true, true), vec3<bool>(false, select(true, true, select(false, true, true)), 0u > (16811u & u_input.a.x)), !(-40465i < (54412i << (u_input.a.x % 32u)))));
    let var_2 = Struct_1(var_1.x, _wgslsmith_f_op_f32(floor(var_0.x)), _wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(min(-vec4<i32>(-4251i, u_input.e.x, 1071i, -26405i), -vec4<i32>(-83901i, -32820i, u_input.d.x, 3177i)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.b.x, 44275i, u_input.b.x, 22087i), vec4<i32>(-2147483647i, u_input.b.x, 2147483647i, -2147483647i) & vec4<i32>(u_input.c.x, u_input.c.x, -1689i, u_input.d.x))), select(vec4<i32>(-1i, abs(61670i), -2147483647i, 15942i), reverseBits(vec4<i32>(-1i, -31303i, u_input.b.x, u_input.d.x)) << (firstLeadingBit(vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.a.x)) % vec4<u32>(32u)), !var_1.x)), 14319i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 1708f, 923f, -1000f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, 1011f, var_0.x) * vec4<f32>(226f, 653f, var_0.x, var_0.x)))) * var_0));
    let var_3 = ~(~vec2<u32>(u_input.a.x ^ 52488u, u_input.a.x)) ^ ~(_wgslsmith_add_vec2_u32(vec2<u32>(1u, 30133u), u_input.a.yy) ^ firstTrailingBit(u_input.a.yz << (u_input.a.xz % vec2<u32>(32u))));
    var var_4 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_4.e.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.x + -547f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2023f) + var_4.e.x), var_4.b))), var_3.x);
}

