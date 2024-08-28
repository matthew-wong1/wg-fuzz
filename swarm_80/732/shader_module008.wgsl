struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
    c: Struct_3,
    d: f32,
    e: i32,
}

struct Struct_5 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<i32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: bool, arg_1: vec3<i32>, arg_2: f32, arg_3: vec4<u32>) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)), -1146f)));
    let var_1 = Struct_4(arg_0, Struct_3(-235f, Struct_1(arg_0)), Struct_3(_wgslsmith_f_op_f32(min(-340f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_0.x)), _wgslsmith_f_op_f32(arg_2 - -942f)))), Struct_1(true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1161f * _wgslsmith_f_op_f32(-arg_2)) + arg_2) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_2)) + _wgslsmith_f_op_f32(-598f - arg_2)) * var_0.x)), firstLeadingBit(~u_input.c.x));
    return Struct_3(1654f, var_1.b.b);
}

fn func_3(arg_0: bool) -> bool {
    var var_0 = select(select(!select(vec2<bool>(true, true), select(vec2<bool>(false, arg_0), vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, false)), arg_0), vec2<bool>(!all(vec4<bool>(false, arg_0, arg_0, true)), select(arg_0, arg_0, func_2(true, u_input.c, 728f, vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)).b.a)), func_2(true, vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, 0i, u_input.b.x), vec4<i32>(33065i, u_input.d.x, 2147483647i, 38796i)), u_input.c.x, select(u_input.d.x, u_input.d.x, false)), 539f, vec4<u32>(105646u, 54716u, u_input.a, u_input.e) | ~vec4<u32>(u_input.e, 18527u, 1u, u_input.e)).b.a), vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -495f)) != _wgslsmith_f_op_f32(1830f + _wgslsmith_f_op_f32(floor(269f))), true), !vec2<bool>(true || select(true, arg_0, false), select(!arg_0, true, false)));
    let var_1 = func_2(true, vec3<i32>(u_input.c.x, u_input.d.x, _wgslsmith_add_i32(_wgslsmith_div_i32(u_input.c.x, firstTrailingBit(-1i)), _wgslsmith_add_i32(u_input.b.x, 1i))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1141f))), (((vec4<u32>(u_input.e, 1u, u_input.e, 4294967295u) | vec4<u32>(u_input.a, u_input.e, u_input.a, u_input.a)) << (_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.e, 1u, 0u, u_input.a), vec4<u32>(123305u, 1u, 60712u, 12103u)) % vec4<u32>(32u))) ^ (vec4<u32>(6218u, 58315u, 0u, u_input.e) | _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 69056u, u_input.a, 1u), vec4<u32>(u_input.e, u_input.e, 6885u, u_input.e), vec4<u32>(29686u, u_input.a, u_input.e, 46320u)))) >> (vec4<u32>(79174u, ~(~u_input.e), _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(45577u, u_input.e, u_input.e), vec3<u32>(21793u, u_input.a, 3637u)), _wgslsmith_add_u32(40413u, 17925u)), ~38059u) % vec4<u32>(32u))).b;
    var var_2 = u_input.d;
    return !var_1.a;
}

fn func_1(arg_0: vec3<bool>) -> StorageBuffer {
    var var_0 = func_2(arg_0.x, vec3<i32>(_wgslsmith_div_i32(1i, firstLeadingBit(0i)), -abs(~(-1i)), u_input.d.x), _wgslsmith_f_op_f32(step(-2049f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1366f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-509f)))))), ~(~((vec4<u32>(4294967295u, u_input.e, 1u, 1u) >> (vec4<u32>(u_input.a, 0u, u_input.a, 1280u) % vec4<u32>(32u))) & ~vec4<u32>(u_input.a, u_input.e, 27073u, 1u))));
    let var_1 = Struct_2(Struct_1(!(!(!var_0.b.a))), -524f, var_0.b, func_2(true, ~(u_input.b << (firstTrailingBit(vec3<u32>(u_input.a, 7370u, 1u)) % vec3<u32>(32u))), _wgslsmith_f_op_f32(abs(-857f)), ~(~vec4<u32>(4294967295u, u_input.e, 25975u, 0u)) >> (countOneBits(_wgslsmith_mod_vec4_u32(vec4<u32>(1400u, u_input.a, 1u, 1u), vec4<u32>(u_input.e, u_input.a, 1u, u_input.a))) % vec4<u32>(32u))).b);
    var_0 = Struct_3(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.b + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b) + var_0.a)))), Struct_1(arg_0.x));
    var_0 = func_2(true, firstTrailingBit(u_input.b), var_1.b, vec4<u32>(reverseBits(~1u), 0u, firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.e), vec2<u32>(14052u, 84100u))), firstTrailingBit(_wgslsmith_mult_u32(u_input.a, u_input.a))) >> (select(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, u_input.e, 13699u, 49100u), ~vec4<u32>(u_input.a, u_input.e, u_input.e, u_input.a)), countOneBits(vec4<u32>(u_input.e, 0u, u_input.a, 0u)) ^ ~vec4<u32>(34121u, u_input.e, 1u, u_input.e), vec4<bool>(any(vec4<bool>(true, var_1.c.a, true, var_1.c.a)), true && var_1.a.a, !var_1.c.a, func_3(var_1.a.a))) % vec4<u32>(32u)));
    var var_2 = ~u_input.b.yx;
    return StorageBuffer(u_input.d.x << (~(~u_input.e) % 32u), vec4<i32>(_wgslsmith_div_i32(~43185i, 26804i >> (1u % 32u)), _wgslsmith_dot_vec4_i32(-vec4<i32>(1i, u_input.c.x, -2147483647i, var_2.x), -vec4<i32>(var_2.x, u_input.d.x, -1i, 105i)) >> (((u_input.a >> (1u % 32u)) ^ 0u) % 32u), _wgslsmith_dot_vec3_i32(u_input.d, _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c.x, u_input.b.x, var_2.x), ~u_input.d)), -2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(vec3<bool>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(704f)))) >= _wgslsmith_f_op_f32(_wgslsmith_div_f32(1210f, -879f) * _wgslsmith_f_op_f32(round(-1624f))), false, true));
}

