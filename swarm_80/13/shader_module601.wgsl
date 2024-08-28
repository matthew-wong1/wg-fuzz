struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(-11019i, i32(-2147483648), i32(-2147483648));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: f32) -> bool {
    var var_0 = -913f;
    return arg_0.a.x;
}

fn func_2() -> vec3<i32> {
    let var_0 = Struct_1(vec2<bool>(all(vec3<bool>(u_input.a < u_input.a, any(vec4<bool>(false, false, true, true)), false)), true), all(vec4<bool>(any(vec2<bool>(true, true)), true, false, func_3(Struct_1(vec2<bool>(true, true), true, u_input.a, false), 25832i | global0.x, _wgslsmith_f_op_f32(-1102f - -765f)))), u_input.a, true);
    let var_1 = vec3<bool>(true, var_0.b, false);
    global0 = min(_wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(min(vec3<i32>(u_input.b, 3363i, -2147483647i), vec3<i32>(global0.x, global0.x, 3028i)), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, 25517i, 2147483647i), vec3<i32>(u_input.b, global0.x, 100328i))), vec3<i32>(abs(global0.x), _wgslsmith_sub_i32(global0.x, 9753i), abs(1i)), vec3<i32>(u_input.b, -global0.x, global0.x)), select(-vec3<i32>(22096i, 22582i, 46750i), countOneBits(vec3<i32>(global0.x, global0.x, global0.x)), var_1), vec3<i32>(0i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, -10105i), vec2<i32>(u_input.b, u_input.b) >> (vec2<u32>(4294967295u, u_input.a) % vec2<u32>(32u))), u_input.b)), _wgslsmith_div_vec3_i32(abs(select(vec3<i32>(global0.x, 57162i, 19004i), firstLeadingBit(vec3<i32>(-1i, global0.x, -26617i)), false)), firstTrailingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, u_input.b, 12543i), vec3<i32>(16480i, u_input.b, 1i)))));
    global0 = vec3<i32>(abs(-1i), 36100i, firstLeadingBit(19892i));
    global0 = vec3<i32>(abs(-firstTrailingBit(7992i ^ global0.x)), ~19925i, abs(_wgslsmith_mult_i32(_wgslsmith_sub_i32(_wgslsmith_sub_i32(u_input.b, global0.x), -u_input.b), u_input.b)));
    return abs(~(-(~vec3<i32>(u_input.b, global0.x, 2031i))));
}

fn func_1() -> u32 {
    var var_0 = vec2<u32>(abs(49006u), _wgslsmith_dot_vec2_u32(firstTrailingBit(~reverseBits(vec2<u32>(u_input.a, 1u))), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, u_input.a), ~vec2<u32>(u_input.a, 4294967295u))));
    let var_1 = vec3<i32>(-_wgslsmith_div_i32(global0.x, 1i), u_input.b, _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(global0.x, -2147483647i, ~global0.x), func_2()), vec3<i32>(select(1i, global0.x, true), u_input.b, -16080i)));
    var_0 = vec2<u32>(~(~u_input.a) | _wgslsmith_clamp_u32(78042u, u_input.a, ~(~0u)), var_0.x);
    global0 = _wgslsmith_sub_vec3_i32(countOneBits((var_1 | _wgslsmith_add_vec3_i32(var_1, vec3<i32>(0i, -1i, -14360i))) ^ ~_wgslsmith_add_vec3_i32(var_1, var_1)), -vec3<i32>(var_1.x, u_input.b, u_input.b & var_1.x));
    global0 = abs(var_1);
    return 8172u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -1i;
    global0 = _wgslsmith_sub_vec3_i32(vec3<i32>(1i, global0.x, i32(-1i) * -(-1i >> (u_input.a % 32u))), vec3<i32>(u_input.b | -1i, -var_0, min(~u_input.b & _wgslsmith_mult_i32(34320i, 1i), -1i << (u_input.a % 32u))));
    var var_1 = ~(-(min(_wgslsmith_mod_i32(u_input.b, 0i), u_input.b ^ global0.x) << (func_1() % 32u)));
    var var_2 = !select(vec4<bool>(false, !all(vec2<bool>(false, true)), func_3(Struct_1(vec2<bool>(false, false), true, 19787u, false), global0.x, 588f), ~u_input.a <= _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 71739u, 46142u), vec3<u32>(u_input.a, 0u, u_input.a))), vec4<bool>(true, true, true, true), !select(global0.x >= u_input.b, 5984u < u_input.a, true));
    let x = u_input.a;
    s_output = StorageBuffer(~22176u, max(1i, -2147483647i), _wgslsmith_f_op_f32(round(792f)), vec2<u32>(52907u, _wgslsmith_dot_vec3_u32(~(vec3<u32>(u_input.a, 1u, 67319u) << (vec3<u32>(54975u, 0u, u_input.a) % vec3<u32>(32u))), _wgslsmith_div_vec3_u32(abs(vec3<u32>(0u, 70012u, 1u)), ~vec3<u32>(59659u, u_input.a, 4294967295u)))));
}

