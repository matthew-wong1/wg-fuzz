struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
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

var<private> global0: u32;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    var var_0 = min(_wgslsmith_sub_i32(u_input.a.x, u_input.a.x), -25729i);
    let var_1 = Struct_1(-vec4<i32>(-2147483647i, u_input.a.x, _wgslsmith_mod_i32(firstLeadingBit(53795i), -1i), _wgslsmith_mod_i32(abs(u_input.a.x), u_input.a.x)), _wgslsmith_sub_i32(u_input.a.x, -u_input.a.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, 915f)) * _wgslsmith_div_f32(-451f, _wgslsmith_f_op_f32(trunc(-1000f)))))));
    var var_2 = var_1;
    var_2 = Struct_1(u_input.a, u_input.a.x, var_2.c);
    var var_3 = ~_wgslsmith_clamp_vec4_u32(abs(vec4<u32>(1u, 1u, 1u, 1u)), vec4<u32>(~7105u, countOneBits(60933u), 1u, 1u), min(firstLeadingBit(~vec4<u32>(4294967295u, 56691u, 96740u, 5960u)), vec4<u32>(1u, 1u, 0u, abs(1u))));
    return _wgslsmith_f_op_f32(max(671f, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_1.c - var_1.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(352f * var_2.c) - -403f)), _wgslsmith_f_op_f32(sign(1f)))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    let var_0 = _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(arg_0.a.xxw, _wgslsmith_mult_vec3_i32(arg_1.a.yyy, vec3<i32>(-1i, arg_0.a.x, 34905i) << (~vec3<u32>(37658u, 0u, 0u) % vec3<u32>(32u)))), -select(-(~arg_0.a.wyx), ~vec3<i32>(-43513i, 2147483647i, -6516i), false));
    var var_1 = Struct_1(arg_0.a, -2147483647i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(247f + _wgslsmith_f_op_f32(func_3())))) * _wgslsmith_f_op_f32(-arg_1.c)));
    global0 = 47950u;
    let var_2 = arg_0;
    var var_3 = ~vec2<i32>(~_wgslsmith_clamp_i32(0i, 2147483647i, var_0), max(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.b, u_input.a.x), abs(var_1.a.yx)), i32(-1i) * -arg_0.b));
    return ~(~1u);
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: i32, arg_3: vec3<f32>) -> vec4<u32> {
    global0 = min(~(func_2(Struct_1(u_input.a, arg_2, arg_3.x), Struct_1(u_input.a, 1i, 1000f)) << (1u % 32u)), 4294967295u) & _wgslsmith_dot_vec3_u32(vec3<u32>(select(max(16680u, 4294967295u), 8187u, 0i == arg_0), abs(~1u), _wgslsmith_mod_u32(1u, 1u)), vec3<u32>(1u, 1u, 1u));
    let var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1703f, 215f, -129f, -278f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1001f, arg_3.x, 271f, arg_3.x) * vec4<f32>(-1087f, 1450f, -874f, 902f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1060f, arg_3.x, arg_3.x, arg_3.x), vec4<f32>(1259f, arg_3.x, arg_3.x, 1000f))) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(383f, -1443f, arg_3.x, arg_3.x))))))));
    let var_1 = 2147483647i;
    let var_2 = Struct_1(select(-u_input.a, countOneBits(u_input.a), select(vec4<bool>(arg_1, arg_1, arg_1, false), select(vec4<bool>(true, true, true, false), vec4<bool>(arg_1, arg_1, arg_1, arg_1), vec4<bool>(true, false, arg_1, arg_1)), true)) << (~firstLeadingBit(select(vec4<u32>(4294967295u, 27095u, 74653u, 4294967295u), vec4<u32>(1u, 64736u, 30247u, 0u), vec4<bool>(arg_1, true, true, arg_1))) % vec4<u32>(32u)), select(arg_0, _wgslsmith_dot_vec2_i32(u_input.a.xz, vec2<i32>(0i, u_input.a.x) ^ vec2<i32>(6267i, u_input.a.x)), !arg_1), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1416f)))));
    let var_3 = Struct_1(vec4<i32>(~0i, -13041i ^ var_1, _wgslsmith_dot_vec3_i32(var_2.a.wyw, vec3<i32>(83569i, _wgslsmith_mod_i32(-23223i, -2147483647i), abs(var_2.a.x))), 0i), var_1, _wgslsmith_f_op_f32(trunc(var_2.c)));
    return select(vec4<u32>(_wgslsmith_dot_vec3_u32(min(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(26223u, 0u, 69584u)), ~firstTrailingBit(vec3<u32>(4294967295u, 46622u, 4294967295u))), _wgslsmith_dot_vec4_u32(~vec4<u32>(28367u, 0u, 4294967295u, 20872u), ~vec4<u32>(1u, 13998u, 1u, 26747u)) >> (~1u % 32u), ~1u, _wgslsmith_div_u32(firstLeadingBit(~1u), 1u)), _wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(4294967295u, 1949u, 41293u, 31219u), select(vec4<u32>(0u, 4294967295u, 1u, 1u), vec4<u32>(38689u, 1u, 14403u, 0u), false)) ^ abs(vec4<u32>(4294967295u, 37161u, 15845u, 0u)), ~(~firstTrailingBit(vec4<u32>(7726u, 18567u, 0u, 7835u)))), ~_wgslsmith_dot_vec3_u32(~vec3<u32>(70670u, 16584u, 1u), vec3<u32>(1u, 1u, 1u)) > ~1u);
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1) -> Struct_1 {
    global0 = arg_0.x;
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_1.c), 1126f))) * arg_1.c) - arg_1.c);
    global0 = _wgslsmith_dot_vec4_u32(vec4<u32>(max(6162u, _wgslsmith_mult_u32(_wgslsmith_mult_u32(arg_0.x, arg_0.x), min(4294967295u, 1u))), ~(~13887u) ^ firstLeadingBit(~arg_0.x), 28308u, 18866u), _wgslsmith_mod_vec4_u32(countOneBits(vec4<u32>(4294967295u, arg_0.x, 52160u, 41148u)), ~(~arg_0)) >> (~select(vec4<u32>(62669u, arg_0.x, arg_0.x, arg_0.x), min(vec4<u32>(arg_0.x, 27060u, arg_0.x, 477u), arg_0), true) % vec4<u32>(32u)));
    global0 = _wgslsmith_clamp_u32(19035u, 1086u ^ arg_0.x, arg_0.x);
    var var_1 = select(true, true, true);
    return Struct_1(-vec4<i32>(_wgslsmith_mod_i32(firstLeadingBit(-79255i), u_input.a.x), -13191i, 0i, -(6589i | arg_1.a.x)), arg_1.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1108f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1066f, arg_1.c)), !(var_0 < -1500f))), var_0));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -175f);
    let var_1 = func_4(select(~vec4<u32>(1u, 1u, 1u, 1u), countOneBits(~vec4<u32>(951u, 1u, 17127u, 1u)), any(vec3<bool>(true, false, true))) & ~func_1(abs(-2147483647i), all(vec4<bool>(true, false, true, false)), firstTrailingBit(u_input.a.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, var_0, 514f))), Struct_1(vec4<i32>(u_input.a.x, 1i, -1i, u_input.a.x), 7944i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 - var_0)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0)) + _wgslsmith_f_op_f32(var_0 - var_0)))));
    var var_2 = _wgslsmith_div_i32(abs(var_1.b), func_4(~vec4<u32>(25315u, 77259u, 0u, 59528u) | select(firstTrailingBit(vec4<u32>(0u, 4294967295u, 4294967295u, 27658u)), vec4<u32>(1u, 1u, 1u, 1u), vec4<bool>(false, false, true, true)), var_1).a.x);
    global0 = abs(8327u);
    global0 = reverseBits(countOneBits(~func_1(-var_1.a.x, true, -54923i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 504f, var_1.c))).x));
    let var_3 = _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_div_u32(1u, 1u), _wgslsmith_clamp_u32(4294967295u, 12924u, 1u), ~8520u) >> (select(~vec3<u32>(9532u, 1u, 3044u), ~vec3<u32>(4294967295u, 32012u, 84174u), true) % vec3<u32>(32u)), ~(~(~vec3<u32>(52461u, 0u, 4294967295u)))) ^ vec3<u32>(62121u, _wgslsmith_add_u32(_wgslsmith_add_u32(1u, select(5367u, 1u, true)), 1u), ~4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_i32(u_input.a, u_input.a));
}

