struct Struct_1 {
    a: i32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec3<f32>,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec2<f32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 12> = array<vec2<u32>, 12>(vec2<u32>(4294967295u, 2471u), vec2<u32>(1u, 1052u), vec2<u32>(4294967295u, 1231u), vec2<u32>(0u, 4294967295u), vec2<u32>(0u, 4294967295u), vec2<u32>(11790u, 31798u), vec2<u32>(8266u, 4294967295u), vec2<u32>(125657u, 74358u), vec2<u32>(1u, 0u), vec2<u32>(0u, 45520u), vec2<u32>(54227u, 11542u), vec2<u32>(17826u, 94150u));

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1() -> i32 {
    return -13364i;
}

fn func_3() -> f32 {
    var var_0 = Struct_1(u_input.a, select(_wgslsmith_clamp_vec2_i32(abs(vec2<i32>(0i, u_input.a) ^ vec2<i32>(1i, 1i)), vec2<i32>(-2147483647i, _wgslsmith_mod_i32(-5055i, u_input.a)), vec2<i32>(0i, 0i)), ~countOneBits(vec2<i32>(u_input.a, u_input.a)), select(!select(vec2<bool>(true, true), vec2<bool>(false, false), false), !select(vec2<bool>(false, true), vec2<bool>(true, true), false), !select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)))));
    var_0 = Struct_1(u_input.a, select(_wgslsmith_sub_vec2_i32(~select(var_0.b, vec2<i32>(20368i, u_input.a), true), vec2<i32>(_wgslsmith_div_i32(1568i, 33646i), max(var_0.b.x, u_input.a))), countOneBits(var_0.b), all(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), false), vec3<bool>(true, true, true)))));
    global0 = array<vec2<u32>, 12>();
    let var_1 = vec3<u32>(~reverseBits(~4294967295u), 1u, ~_wgslsmith_clamp_u32(firstLeadingBit(~0u), ~max(107643u, 1u), reverseBits(1u)));
    var var_2 = _wgslsmith_add_i32(u_input.a, select(-32202i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a, _wgslsmith_div_i32(15515i, var_0.b.x), var_0.a, abs(var_0.a)), _wgslsmith_div_vec4_i32(~vec4<i32>(u_input.a, 0i, u_input.a, u_input.a), -vec4<i32>(u_input.a, var_0.a, var_0.a, 0i))), true));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(418f)) + _wgslsmith_f_op_f32(-1201f - -289f))))));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<i32>) -> Struct_1 {
    let var_0 = arg_0;
    var var_1 = Struct_2(var_0, 2147483647i, vec3<f32>(_wgslsmith_f_op_f32(409f * _wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(-1374f * _wgslsmith_f_op_f32(floor(-919f))), _wgslsmith_div_f32(-1429f, -773f)), !all(vec2<bool>(true, true)), Struct_1(arg_1.x, vec2<i32>(var_0.a, 60429i)));
    let var_2 = var_0;
    var var_3 = var_2;
    global0 = array<vec2<u32>, 12>();
    return Struct_1(var_0.b.x, max(vec2<i32>(_wgslsmith_mod_i32(arg_0.a, -1i) & _wgslsmith_sub_i32(-13542i, 75962i), -func_1()), _wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(select(var_0.b, vec2<i32>(-106i, var_0.b.x), var_1.d), ~arg_0.b), vec2<i32>(~0i, -33717i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_2(Struct_1(reverseBits(u_input.a), ~select(vec2<i32>(2147483647i, 5074i), vec2<i32>(u_input.a, 2147483647i), false) & vec2<i32>(-u_input.a, -u_input.a)), vec3<i32>(select(func_1() & ~u_input.a, 40542i, any(vec3<bool>(true, true, true))), reverseBits(~_wgslsmith_mod_i32(13297i, -2147483647i)), max(-(i32(-1i) * -2147483647i), -2147483647i)));
    var var_1 = Struct_1(~abs(1i ^ _wgslsmith_mult_i32(u_input.a, u_input.a)), -(~(-countOneBits(vec2<i32>(16104i, 33945i)))));
    var var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-1143f, 1532f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())))))));
    var var_3 = -max(~vec3<i32>(var_0.b.x, countOneBits(var_1.b.x), var_0.b.x & var_0.b.x), firstLeadingBit(~select(vec3<i32>(1i, var_1.b.x, 0i), vec3<i32>(35935i, u_input.a, u_input.a), false)));
    var var_4 = 45160u;
    let x = u_input.a;
    s_output = StorageBuffer(func_2(Struct_1(u_input.a, var_0.b), reverseBits(vec3<i32>(~(-2147483647i), 1i, -17695i & var_3.x))).b, reverseBits(max(min(_wgslsmith_mod_vec2_u32(global0[_wgslsmith_index_u32(4294967295u, 12u)], vec2<u32>(25052u, 1u)), select(vec2<u32>(11997u, 8645u), global0[_wgslsmith_index_u32(4294967295u, 12u)], vec2<bool>(false, false))), vec2<u32>(select(88323u, 28842u, true), ~40580u))), abs(vec3<u32>(~(~1u), _wgslsmith_mod_u32(countOneBits(0u), 1u), ~61684u)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1450f - -573f)) + 555f), _wgslsmith_f_op_f32(1f * -331f)), vec2<f32>(376f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1054f + 712f) * 188f))));
}

