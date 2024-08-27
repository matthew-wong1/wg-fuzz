struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: Struct_1,
    d: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec2<i32>,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: bool, arg_1: vec2<f32>) -> f32 {
    let var_0 = arg_1.x;
    var var_1 = _wgslsmith_dot_vec2_i32(~_wgslsmith_add_vec2_i32(abs(firstTrailingBit(vec2<i32>(-1i, u_input.b))), -select(vec2<i32>(u_input.b, u_input.b), vec2<i32>(-12653i, -24099i), vec2<bool>(arg_0, true))), _wgslsmith_mult_vec2_i32(select((vec2<i32>(u_input.b, -27139i) << (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u))) ^ _wgslsmith_add_vec2_i32(vec2<i32>(u_input.b, 1i), vec2<i32>(2147483647i, u_input.b)), max(vec2<i32>(u_input.b, -4032i), -vec2<i32>(-1i, u_input.b)), false), ~_wgslsmith_div_vec2_i32(~vec2<i32>(-5461i, -2032i), abs(vec2<i32>(u_input.b, -42779i)))));
    let var_2 = _wgslsmith_dot_vec3_i32(~_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b >> (u_input.a % 32u), u_input.b, -1i), vec3<i32>(u_input.b, -31822i, 36667i) ^ abs(vec3<i32>(u_input.b, u_input.b, u_input.b))), vec3<i32>(2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_div_i32(2147483647i, u_input.b), -3599i, u_input.b, u_input.b << (u_input.a % 32u)), vec4<i32>(u_input.b | u_input.b, ~1i, u_input.b, max(0i, -42065i))), ~(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.b, u_input.b, -2147483647i), vec4<i32>(u_input.b, -1i, u_input.b, -41081i)) ^ 0i)));
    var var_3 = !all(vec3<bool>(all(vec4<bool>(true, arg_0, arg_0, arg_0)), all(vec3<bool>(false, false, true)) & true, firstTrailingBit(u_input.a) >= u_input.a));
    let var_4 = select(~_wgslsmith_mult_u32(59177u << (_wgslsmith_div_u32(u_input.a, u_input.a) % 32u), firstLeadingBit(u_input.a)), 4294967295u, arg_0);
    return arg_1.x;
}

fn func_2(arg_0: vec3<i32>, arg_1: vec2<i32>, arg_2: vec3<u32>, arg_3: u32) -> bool {
    let var_0 = Struct_1(_wgslsmith_add_u32(arg_3, 62350u));
    let var_1 = vec4<f32>(-973f, _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(true, vec2<f32>(-1706f, -153f))) * 1f)) - _wgslsmith_f_op_f32(1508f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-858f, -791f)))), _wgslsmith_f_op_f32(-642f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(284f, -1743f)) + -1182f))));
    let var_2 = select(!vec2<bool>(true, ~4294967295u >= _wgslsmith_sub_u32(u_input.a, u_input.a)), !select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(false, true), any(vec4<bool>(true, true, false, false))), select(select(vec2<bool>(false, true), vec2<bool>(false, true), false), select(vec2<bool>(false, true), vec2<bool>(false, false), true), select(false, true, true)), false), vec2<bool>(select(true, true, true), true));
    let var_3 = Struct_1(arg_3);
    var var_4 = abs(firstTrailingBit(_wgslsmith_mod_vec3_u32(arg_2, (arg_2 >> (vec3<u32>(47982u, 1u, arg_2.x) % vec3<u32>(32u))) & countOneBits(vec3<u32>(22154u, arg_3, u_input.a)))));
    return true;
}

fn func_1() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -972f), -962f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-901f * -929f))), 1984f)));
    var var_1 = 1000f;
    let var_2 = Struct_1(43353u);
    var var_3 = ~(firstLeadingBit(firstTrailingBit(_wgslsmith_add_i32(-9872i, 54942i))) | -46164i);
    let var_4 = select(true, all(vec4<bool>(true, true, true, true)), !(!(-25483i < u_input.b) | func_2(_wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, -1i, 1i), vec3<i32>(54654i, 15766i, 1i)), abs(vec2<i32>(u_input.b, u_input.b)), vec3<u32>(2941u, u_input.a, u_input.a), abs(var_2.a))));
    return Struct_2(_wgslsmith_f_op_f32(ceil(1200f)), _wgslsmith_add_u32(firstLeadingBit(u_input.a), _wgslsmith_div_u32(select(u_input.a, 1u, false), var_2.a)) << (4294967295u % 32u), Struct_1(0u), _wgslsmith_add_vec4_i32(firstLeadingBit(~vec4<i32>(899i, -7020i, u_input.b, 0i)), ~(vec4<i32>(3275i, u_input.b, -33022i, u_input.b) << (vec4<u32>(var_2.a, var_2.a, 0u, u_input.a) % vec4<u32>(32u))) ^ _wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, u_input.b, 7608i, u_input.b), -vec4<i32>(u_input.b, -20452i, -2147483647i, -2147483647i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(true, false, all(vec2<bool>(false, true)));
    let var_1 = Struct_3(func_1(), func_1(), Struct_1(abs(17848u)));
    var_0 = vec3<bool>(var_0.x, !any(select(var_0.yy, !var_0.yy, true)), false);
    var var_2 = _wgslsmith_sub_vec3_i32(select(vec3<i32>(1i, -u_input.b, ~firstTrailingBit(u_input.b)), var_1.b.d.xwy, !select(vec3<bool>(var_0.x, true, true), vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(true, true, true))), abs(-vec3<i32>(-1i, var_1.b.d.x, u_input.b)) & vec3<i32>(_wgslsmith_clamp_i32(u_input.b, _wgslsmith_add_i32(u_input.b, 9947i), select(2383i, u_input.b, true)), u_input.b, ~0i));
    var_0 = vec3<bool>(true, !all(vec4<bool>(var_0.x, false, false, var_0.x != false)), any(vec3<bool>(false, true, var_0.x)) == !(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, 64396u, 4294967295u), vec4<u32>(0u, 20600u, u_input.a, u_input.a)) >= ~var_1.c.a));
    let var_3 = ~firstLeadingBit(1u) == ~_wgslsmith_dot_vec4_u32(min(vec4<u32>(4294967295u, 1u, var_1.c.a, var_1.c.a), ~vec4<u32>(1u, var_1.b.b, var_1.a.c.a, 0u)), firstLeadingBit(firstLeadingBit(vec4<u32>(4294967295u, 42186u, var_1.b.b, var_1.b.c.a))));
    let var_4 = var_1.b.d.zzz;
    var var_5 = select(!(!select(vec4<bool>(true, false, var_0.x, false), select(vec4<bool>(var_0.x, false, var_3, var_0.x), vec4<bool>(var_0.x, var_3, false, var_0.x), var_3), select(vec4<bool>(var_3, var_3, true, var_0.x), vec4<bool>(var_0.x, var_0.x, var_3, var_3), var_0.x))), vec4<bool>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.b.a, 1316f))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(303f)) - -984f), (reverseBits(var_1.a.d.x) >> (~u_input.a % 32u)) >= -43401i, var_3), vec4<bool>(!(_wgslsmith_f_op_f32(select(204f, var_1.a.a, true)) <= -519f), true, true, false));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(var_1.a.d, ~(vec4<i32>(-8356i, var_1.a.d.x, 29602i, var_4.x) ^ vec4<i32>(0i, u_input.b, -1i, 3829i)), vec4<i32>(~2147483647i, select(1i, 1i, var_0.x), ~var_2.x, _wgslsmith_dot_vec3_i32(var_4, var_4))), var_1.a.d), -1090f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1.a.a, 1594f))), var_1.b.a, !((2147483647i >> (1u % 32u)) <= var_1.a.d.x))));
}

