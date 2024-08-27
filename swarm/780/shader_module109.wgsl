struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: vec2<u32>,
    d: vec3<i32>,
    e: i32,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    let var_0 = Struct_2(firstLeadingBit((vec4<i32>(17249i, arg_1.b, arg_2.e, arg_2.d.x) | -vec4<i32>(u_input.a, u_input.a, arg_1.e, arg_1.b)) ^ countOneBits(firstTrailingBit(vec4<i32>(arg_0, arg_0, -1399i, -21672i)))));
    global0 = all(!(!select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), true)));
    global0 = !(-(~(-arg_1.e)) > u_input.a);
    var var_1 = Struct_2(max(_wgslsmith_mult_vec4_i32(reverseBits(var_0.a << (vec4<u32>(arg_2.c.x, arg_2.c.x, arg_2.c.x, arg_2.c.x) % vec4<u32>(32u))), ~vec4<i32>(u_input.a, var_0.a.x, 2147483647i, var_0.a.x)), countOneBits(_wgslsmith_div_vec4_i32(~vec4<i32>(arg_2.d.x, var_0.a.x, -35109i, -1i), ~vec4<i32>(-3760i, arg_1.e, u_input.a, u_input.a)))));
    let var_2 = -1599f;
    return max(arg_2.c.x, arg_2.c.x);
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: bool) -> Struct_1 {
    let var_0 = !(!vec3<bool>(!(true | arg_2), true & (-36640i >= u_input.a), arg_2));
    var var_1 = arg_1;
    global0 = false;
    let var_2 = Struct_2(~(-arg_1.a));
    var var_3 = reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(func_3(-10875i, Struct_1(vec3<f32>(1000f, -2007f, 1270f), 0i, arg_0.yw, var_1.a.yww, 2147483647i), Struct_1(vec3<f32>(356f, -441f, -149f), 13981i, arg_0.ww, vec3<i32>(0i, -11194i, var_2.a.x), u_input.a)), ~abs(24220u), _wgslsmith_div_u32(73431u, _wgslsmith_dot_vec4_u32(arg_0, vec4<u32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x))), 33267u), _wgslsmith_mult_vec4_u32(firstTrailingBit(~arg_0), ~(~vec4<u32>(arg_0.x, arg_0.x, 1u, arg_0.x)))));
    return Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(119f - 1000f) - -952f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -634f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -171f)))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1135f)), -2284f), -1077f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -455f)))), ~(-2147483647i), firstLeadingBit(vec2<u32>(31310u, arg_0.x)), abs(_wgslsmith_mod_vec3_i32(select(_wgslsmith_mod_vec3_i32(arg_1.a.xwy, vec3<i32>(u_input.a, 0i, var_2.a.x)), vec3<i32>(1i, 493i, 0i), arg_2), vec3<i32>(30752i, var_2.a.x, var_2.a.x) & var_2.a.zyw)), 1i);
}

fn func_1() -> bool {
    var var_0 = func_2(~_wgslsmith_mult_vec4_u32(firstTrailingBit(~vec4<u32>(8446u, 4294967295u, 12028u, 73173u)), vec4<u32>(countOneBits(1u), 69774u << (1u % 32u), 1u, abs(68700u))), Struct_2((vec4<i32>(10929i, -19483i, u_input.a, -15946i) << (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u))) | _wgslsmith_mult_vec4_i32(~vec4<i32>(u_input.a, u_input.a, u_input.a, -1i), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, 4450i, u_input.a, -41166i), vec4<i32>(-2147483647i, -63964i, 13559i, 2147483647i)))), any(vec2<bool>(any(vec3<bool>(true, true, true)), all(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false))))));
    var var_1 = func_2(~abs(countOneBits(~vec4<u32>(var_0.c.x, 9990u, 0u, var_0.c.x))), Struct_2(vec4<i32>(u_input.a, var_0.e, func_2(vec4<u32>(7157u, 26429u, 1u, 0u), Struct_2(vec4<i32>(u_input.a, var_0.e, -1704i, -17492i)), false).b, u_input.a) & ~vec4<i32>(2147483647i, u_input.a, -7317i, var_0.d.x)), select(false, all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), select(true, true, all(vec4<bool>(true, true, true, true)))));
    let var_2 = func_2(reverseBits(~(vec4<u32>(var_1.c.x, var_0.c.x, var_0.c.x, 79135u) & vec4<u32>(var_1.c.x, var_1.c.x, 1u, 0u)) >> (vec4<u32>(1u, _wgslsmith_mult_u32(0u, 0u), 50182u, _wgslsmith_clamp_u32(var_0.c.x, var_1.c.x, var_1.c.x)) % vec4<u32>(32u))), Struct_2(max(vec4<i32>(-1i) * -vec4<i32>(19927i, u_input.a, var_1.d.x, var_1.e), -(~vec4<i32>(7963i, var_0.e, 36568i, -12202i)))), false);
    global0 = any(select(vec4<bool>(any(vec4<bool>(true, true, false, true)), ~u_input.a <= -11083i, (var_1.e <= 45773i) && (-1310f <= var_0.a.x), 0u == ~var_1.c.x), !vec4<bool>(true, all(vec3<bool>(true, false, true)), true, true), all(vec3<bool>(true, true, any(vec4<bool>(true, true, true, false))))));
    return any(!vec3<bool>(all(vec2<bool>(false, true)), _wgslsmith_div_f32(var_0.a.x, -966f) <= -171f, true));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1() | !(!func_1() || (func_3(2147483647i, Struct_1(vec3<f32>(-514f, 1047f, 109f), 2147483647i, vec2<u32>(9521u, 0u), vec3<i32>(u_input.a, u_input.a, -17212i), 0i), Struct_1(vec3<f32>(460f, -307f, -888f), 2147483647i, vec2<u32>(0u, 1u), vec3<i32>(1i, 2147483647i, u_input.a), u_input.a)) > _wgslsmith_mult_u32(1u, 0u)));
    let var_0 = u_input.a;
    let var_1 = Struct_2(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0, -23053i, u_input.a, select(u_input.a, u_input.a, true)) ^ vec4<i32>(_wgslsmith_div_i32(0i, u_input.a), -1i, 2147483647i, -43323i << (1u % 32u)), ~(-vec4<i32>(-2147483647i, -32776i, 3776i, u_input.a) & vec4<i32>(-21622i, var_0, u_input.a, -2484i)), firstTrailingBit(abs(vec4<i32>(var_0, var_0, 13901i, u_input.a) ^ vec4<i32>(u_input.a, u_input.a, 0i, 26286i)))));
    let var_2 = Struct_2(reverseBits(-vec4<i32>(-var_0, i32(-1i) * -41162i, var_1.a.x, -21629i)));
    global0 = true | (_wgslsmith_dot_vec2_u32(vec2<u32>(min(4294967295u, 49029u), abs(4294967295u)), _wgslsmith_mult_vec2_u32(vec2<u32>(0u, 28820u), vec2<u32>(1u, 1u))) < ~(1u >> (0u % 32u)));
    let var_3 = _wgslsmith_sub_u32(1u, 0u);
    var var_4 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1000f, 712f, 672f, 998f), vec4<f32>(657f, -602f, 1357f, 327f))) * vec4<f32>(_wgslsmith_div_f32(1529f, -1682f), 1652f, _wgslsmith_f_op_f32(ceil(-1948f)), -124f))));
}

