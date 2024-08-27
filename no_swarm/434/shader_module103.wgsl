struct Struct_1 {
    a: u32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
    c: Struct_2,
    d: vec3<f32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_3,
    c: bool,
}

struct Struct_5 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 25>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1) -> vec3<i32> {
    var var_0 = ~firstTrailingBit(_wgslsmith_mult_vec2_u32(max(~vec2<u32>(31150u, u_input.a), vec2<u32>(1u, 1u)), ~(arg_0.b.yx ^ vec2<u32>(u_input.a, 1u))));
    let var_1 = select(-min(vec4<i32>(_wgslsmith_div_i32(u_input.b.x, u_input.b.x), -u_input.b.x, -1i & u_input.b.x, abs(u_input.b.x)), vec4<i32>(-1i) * -vec4<i32>(17204i, 31936i, u_input.b.x, -59625i)), ~(-vec4<i32>(u_input.b.x | u_input.b.x, i32(-1i) * -2147483647i, u_input.b.x, max(-69198i, -19785i))), !select(any(global0[_wgslsmith_index_u32(4294967295u, 25u)]) != all(vec3<bool>(true, true, true)), !any(global0[_wgslsmith_index_u32(arg_0.b.x, 25u)]), !any(vec2<bool>(false, true))));
    let var_2 = Struct_2(arg_0);
    var var_3 = ~firstTrailingBit(-var_1.zyz ^ vec3<i32>(_wgslsmith_mult_i32(var_1.x, 113i), -u_input.b.x, 31193i));
    let var_4 = 0u;
    return ~abs(~abs(var_1.yzx));
}

fn func_2(arg_0: Struct_2, arg_1: f32) -> vec2<i32> {
    let var_0 = firstLeadingBit(func_3(arg_0.a));
    let var_1 = Struct_2(arg_0.a);
    var var_2 = Struct_4(_wgslsmith_clamp_vec3_i32(var_0, func_3(Struct_1(_wgslsmith_mod_u32(arg_0.a.a, arg_0.a.a), _wgslsmith_sub_vec3_u32(arg_0.a.b, vec3<u32>(u_input.a, 76031u, 70135u)))), -var_0 | ~(-vec3<i32>(-1i, u_input.b.x, var_0.x))), Struct_3(Struct_2(arg_0.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_1, arg_1, -1865f))))), arg_0, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1222f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-456f * 327f), _wgslsmith_div_f32(arg_1, 524f))), _wgslsmith_f_op_f32(trunc(arg_1)))), all(!select(vec2<bool>(false, false), select(vec2<bool>(true, false), vec2<bool>(true, false), true), vec2<bool>(true, true))));
    var_2 = Struct_4(var_0, var_2.b, var_2.c);
    var var_3 = Struct_1(var_2.b.a.a.a & min(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1694u, 1u, u_input.a) & vec4<u32>(u_input.a, 28671u, 53110u, 1u), vec4<u32>(17681u, 23100u, 4294967295u, 4294967295u) >> (vec4<u32>(4294967295u, var_2.b.a.a.b.x, 74199u, arg_0.a.b.x) % vec4<u32>(32u))), _wgslsmith_add_u32(var_2.b.a.a.b.x, _wgslsmith_sub_u32(u_input.a, arg_0.a.b.x))), _wgslsmith_mod_vec3_u32(~arg_0.a.b ^ var_2.b.a.a.b, vec3<u32>(_wgslsmith_dot_vec2_u32(firstTrailingBit(arg_0.a.b.yx), var_2.b.a.a.b.zy), ~var_1.a.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, var_1.a.a, var_1.a.a), ~vec3<u32>(var_1.a.a, 43330u, arg_0.a.b.x)))));
    return countOneBits(select(-vec2<i32>(1i, -16672i), var_0.xz, vec2<bool>(true, true))) >> (var_3.b.yy % vec2<u32>(32u));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec3<bool>, arg_2: vec2<i32>) -> vec2<bool> {
    let var_0 = 962f;
    global0 = array<vec3<bool>, 25>();
    let var_1 = Struct_3(Struct_2(Struct_1(~0u, (vec3<u32>(26870u, arg_0.x, 4294967295u) >> (arg_0.xzy % vec3<u32>(32u))) >> (arg_0.xzz % vec3<u32>(32u)))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1228f * var_0) * var_0), -2973f, _wgslsmith_f_op_f32(select(-1532f, 435f, arg_1.x)), _wgslsmith_f_op_f32(exp2(var_0))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0, var_0, 1713f, var_0), vec4<f32>(var_0, 246f, var_0, var_0))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_0, 1262f, var_0))))), !any(vec4<bool>(true, false, false, true)))), Struct_2(Struct_1(219u, vec3<u32>(1u, 36577u, 4294967295u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_0, var_0, var_0), vec3<f32>(857f, -1000f, -974f))))));
    global0 = array<vec3<bool>, 25>();
    global0 = array<vec3<bool>, 25>();
    return arg_1.xy;
}

fn func_1() -> Struct_3 {
    var var_0 = select(select(!func_4(~vec4<u32>(u_input.a, u_input.a, u_input.a, 0u), select(global0[_wgslsmith_index_u32(u_input.a, 25u)], vec3<bool>(false, false, false), false), func_2(Struct_2(Struct_1(u_input.a, vec3<u32>(u_input.a, 9287u, 0u))), 1283f)), select(vec2<bool>(false, false), select(select(vec2<bool>(false, false), vec2<bool>(false, false), false), vec2<bool>(true, true), all(vec2<bool>(false, true))), false), false), select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), true), true), (abs(u_input.b.x) > u_input.b.x) || any(vec4<bool>(false, true, true, false))), vec2<bool>(all(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(0u, u_input.a)), abs(vec2<u32>(u_input.a, 1u))), 25u)]), 230f <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(765f, -763f, true)) + 1355f)));
    var var_1 = countOneBits(_wgslsmith_clamp_vec3_u32(vec3<u32>(~_wgslsmith_clamp_u32(4294967295u, 44261u, u_input.a), 48469u, _wgslsmith_div_u32(u_input.a, 0u)), firstTrailingBit(abs(countOneBits(vec3<u32>(u_input.a, u_input.a, 28167u)))), reverseBits(vec3<u32>(u_input.a, u_input.a | 20386u, u_input.a >> (4294967295u % 32u)))));
    var var_2 = ~(~vec4<u32>(var_1.x, firstLeadingBit(0u), _wgslsmith_mod_u32(25979u << (u_input.a % 32u), var_1.x), _wgslsmith_div_u32(_wgslsmith_mod_u32(u_input.a, 15580u), ~0u)));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-1965f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-2035f, 348f)) * -2221f)), 807f) - _wgslsmith_f_op_f32(step(-1034f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-988f + -821f), _wgslsmith_f_op_f32(ceil(-717f)))))));
    var_2 = _wgslsmith_clamp_vec4_u32(vec4<u32>(0u ^ var_1.x, 23516u, ~(~(~u_input.a)), var_1.x), countOneBits(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(48305u, u_input.a, u_input.a, var_2.x), vec4<u32>(u_input.a, var_2.x, var_1.x, var_1.x)) >> (~7869u % 32u), 1u, ~reverseBits(61692u), u_input.a)), firstTrailingBit(vec4<u32>(var_1.x, ~var_1.x, select(u_input.a << (u_input.a % 32u), 0u, var_0.x), _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 1u, var_2.x, 8882u), vec4<u32>(1u, u_input.a, 95760u, 60064u)))));
    return Struct_3(Struct_2(Struct_1(26230u, var_2.zxy)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-339f, 191f, 800f, -481f), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1057f, 1232f, -215f, -1000f), vec4<f32>(308f, 1000f, 411f, -950f))), select(vec4<bool>(var_0.x, false, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), var_0.x))))))), Struct_2(Struct_1(~0u, firstLeadingBit(countOneBits(var_2.wzz)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(429f, 1028f, var_0.x)) - _wgslsmith_div_f32(794f, 967f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(2048f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-833f + -599f)))));
}

fn func_5(arg_0: Struct_3, arg_1: u32, arg_2: vec3<f32>) -> u32 {
    global0 = array<vec3<bool>, 25>();
    let var_0 = Struct_5(_wgslsmith_f_op_vec4_f32(step(arg_0.b, vec4<f32>(-869f, _wgslsmith_f_op_f32(-668f * func_1().b.x), -328f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d.x))))));
    let var_1 = vec3<bool>(true && select(true, any(global0[_wgslsmith_index_u32(select(u_input.a, arg_0.a.a.a, false), 25u)]), select(true, func_4(vec4<u32>(1u, arg_1, arg_1, u_input.a), global0[_wgslsmith_index_u32(arg_0.a.a.a, 25u)], vec2<i32>(u_input.b.x, -1i)).x, true)), false, true);
    global0 = array<vec3<bool>, 25>();
    let var_2 = select(0i, u_input.b.x, var_1.x) != 9644i;
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<bool>, 25>();
    let var_0 = func_5(func_1(), 50426u, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-454f - 1495f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1359f), _wgslsmith_f_op_f32(1068f - 688f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1433f), -545f))));
    let var_1 = vec2<bool>(~_wgslsmith_mod_u32(~u_input.a, _wgslsmith_mod_u32(1u, 56381u)) > 0u, !any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))));
    global0 = array<vec3<bool>, 25>();
    global0 = array<vec3<bool>, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-u_input.b.x, (i32(-1i) * -1i) >> ((u_input.a << (11140u % 32u)) % 32u), min(-9220i, _wgslsmith_add_i32(_wgslsmith_clamp_i32(u_input.b.x, -1i, 0i), u_input.b.x)), func_3(Struct_1(_wgslsmith_div_u32(var_0, u_input.a), vec3<u32>(4294967295u, 4294967295u, var_0) | vec3<u32>(var_0, 9759u, 1u))).x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-248f, -1000f))))));
}

