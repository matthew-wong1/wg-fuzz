struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 1i;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec2<i32>, arg_1: f32, arg_2: Struct_2, arg_3: Struct_2) -> u32 {
    var var_0 = any(select(select(vec4<bool>(true, true, arg_3.a.x != 27437u, any(vec2<bool>(true, false))), vec4<bool>(true, true, true, true), !any(vec4<bool>(false, false, true, false))), !vec4<bool>(true, all(vec3<bool>(true, false, true)), true, true), true));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-887f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_1 - arg_3.b), _wgslsmith_f_op_f32(-arg_3.b)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) + 1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1008f, arg_1)) * arg_2.b)));
    let var_2 = _wgslsmith_add_vec2_i32(~(arg_0 | arg_0), arg_0);
    let var_3 = select(false, true, !(true | !(var_1.x >= arg_1)));
    let var_4 = vec4<u32>(arg_3.a.x << (abs(55627u) % 32u), _wgslsmith_dot_vec3_u32(~select(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(u_input.b, u_input.b, arg_3.a.x), var_3) & vec3<u32>(arg_3.a.x, _wgslsmith_mult_u32(u_input.b, 38277u), ~4294967295u), vec3<u32>(arg_2.a.x ^ 53300u, ~(~arg_3.a.x), 1u)), ~1u, firstTrailingBit(1u));
    return arg_2.a.x;
}

fn func_2(arg_0: Struct_2) -> vec2<f32> {
    global0 = _wgslsmith_div_i32(u_input.a, u_input.a);
    var var_0 = vec2<bool>(all(vec3<bool>(0u > func_3(vec2<i32>(2147483647i, -1i), arg_0.b, arg_0, arg_0), true, true)), all(vec4<bool>(select(1098f != arg_0.b, select(true, false, true), arg_0.a.x <= arg_0.a.x), true, false, true)));
    let var_1 = Struct_1(vec2<u32>(~70747u, arg_0.a.x));
    var var_2 = arg_0.a;
    var var_3 = max(countOneBits(vec4<u32>(var_1.a.x >> (min(var_1.a.x, 28876u) % 32u), 3978u, var_1.a.x, 0u)), countOneBits(~abs(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.a.x, 29325u, 61118u, 80731u), vec4<u32>(var_1.a.x, 11930u, 21093u, var_2.x)))));
    return vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1665f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(arg_0.b))))));
}

fn func_4(arg_0: vec2<f32>) -> bool {
    global0 = ~(~(~u_input.a));
    var var_0 = _wgslsmith_mod_vec2_u32(~(~vec2<u32>(u_input.b, u_input.b) | select(~vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, u_input.b), true)), abs(~select(~vec2<u32>(4294967295u, u_input.b), vec2<u32>(u_input.b, 29714u), select(vec2<bool>(false, false), vec2<bool>(true, false), false))));
    var_0 = ~reverseBits(vec2<u32>(~(~0u), u_input.b << (var_0.x % 32u)));
    let var_1 = Struct_1(~vec2<u32>(countOneBits(~var_0.x), ~u_input.b));
    var_0 = var_1.a;
    return true;
}

fn func_1() -> vec3<bool> {
    var var_0 = vec3<bool>(!(~(u_input.b >> (1056u % 32u)) <= ~(~u_input.b)), func_4(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(444f, 1617f), vec2<f32>(1287f, 646f))), _wgslsmith_f_op_vec2_f32(func_2(Struct_2(vec2<u32>(u_input.b, u_input.b), -632f))), true))), !select(false, true, false));
    let var_1 = u_input.b;
    global0 = min(max(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(84316i, u_input.a, u_input.a), vec3<i32>(0i, u_input.a, 0i)), -vec3<i32>(0i, -23499i, u_input.a)), abs(vec3<i32>(2147483647i, 1i, u_input.a) << (vec3<u32>(u_input.b, var_1, 72760u) % vec3<u32>(32u)))), -select(72277i, _wgslsmith_clamp_i32(u_input.a, -20268i, u_input.a), var_0.x || var_0.x)), u_input.a ^ (firstLeadingBit(_wgslsmith_add_i32(1i, u_input.a)) & 1i));
    let var_2 = _wgslsmith_sub_u32(~1u, _wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 1u, u_input.b << (0u % 32u)), ~firstLeadingBit(abs(vec3<u32>(var_1, 1u, u_input.b)))));
    var var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f));
    return vec3<bool>(any(!var_0.yz), var_0.x, !var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_i32(u_input.a, _wgslsmith_dot_vec3_i32(select(select(vec3<i32>(-2147483647i, u_input.a, u_input.a), vec3<i32>(2147483647i, -1i, 52736i), false) & _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(-1i, 5031i, 2147483647i)), countOneBits(-vec3<i32>(u_input.a, u_input.a, u_input.a)), func_1()), vec3<i32>(abs(~1i), u_input.a, _wgslsmith_div_i32(firstTrailingBit(u_input.a), _wgslsmith_mod_i32(58321i, u_input.a)))));
    var var_1 = 1u;
    var_1 = _wgslsmith_mult_u32(64594u, u_input.b);
    let var_2 = ~vec3<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, u_input.b, 29799u), vec3<u32>(4282u, u_input.b, u_input.b)), vec3<u32>(u_input.b, 1u, 1u)), min(~57413u, 1u), u_input.b) << (~vec3<u32>(reverseBits(4294967295u << (u_input.b % 32u)), ~87790u | (42405u << (u_input.b % 32u)), abs(~u_input.b)) % vec3<u32>(32u));
    var_1 = max(~_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b, 24000u, u_input.b, u_input.b), ~vec4<u32>(0u, var_2.x, 1641u, 32445u)), ~_wgslsmith_dot_vec4_u32(abs(vec4<u32>(952u, u_input.b, 0u, var_2.x)), ~vec4<u32>(u_input.b, u_input.b, 55934u, 5597u))) << (u_input.b % 32u);
    let var_3 = select(firstTrailingBit(-vec3<i32>(u_input.a, reverseBits(-53985i), ~6579i)), vec3<i32>(_wgslsmith_mod_i32(~var_0, _wgslsmith_dot_vec4_i32(max(vec4<i32>(-13054i, -22284i, u_input.a, 21006i), vec4<i32>(-15249i, var_0, -32103i, u_input.a)), ~vec4<i32>(var_0, -43362i, -44073i, -28905i))), u_input.a, 0i), true);
    let var_4 = Struct_2(~_wgslsmith_sub_vec2_u32(vec2<u32>(firstLeadingBit(88383u), _wgslsmith_add_u32(var_2.x, 1u)), ~vec2<u32>(u_input.b, 14930u) & ~var_2.yx), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-454f, -654f))) * 1000f), _wgslsmith_f_op_f32(-392f + _wgslsmith_f_op_vec2_f32(func_2(Struct_2(vec2<u32>(0u, u_input.b), -103f))).x))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_i32(var_3.x, var_0), _wgslsmith_add_vec4_u32(abs(vec4<u32>(var_4.a.x, var_4.a.x, abs(var_4.a.x), var_4.a.x)), ~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(var_4.a.x, 18551u, u_input.b, var_2.x), vec4<u32>(u_input.b, var_2.x, 0u, var_2.x), vec4<u32>(u_input.b, 11928u, 0u, u_input.b)))));
}

