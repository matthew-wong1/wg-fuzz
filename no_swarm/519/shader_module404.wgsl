struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<bool>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: Struct_1,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(85428u, 40806u, 4473u);

var<private> global1: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(vec2<u32>(0u, 1u)), Struct_1(vec2<u32>(32175u, 0u)), Struct_1(vec2<u32>(0u, 74383u)), Struct_1(vec2<u32>(4294967295u, 36611u)), Struct_1(vec2<u32>(31793u, 5774u)), Struct_1(vec2<u32>(0u, 0u)), Struct_1(vec2<u32>(9482u, 82692u)), Struct_1(vec2<u32>(4294967295u, 6709u)), Struct_1(vec2<u32>(32301u, 62859u)), Struct_1(vec2<u32>(1u, 28389u)), Struct_1(vec2<u32>(0u, 4294967295u)), Struct_1(vec2<u32>(1u, 17935u)), Struct_1(vec2<u32>(4294967295u, 1u)), Struct_1(vec2<u32>(1u, 4294967295u)), Struct_1(vec2<u32>(1u, 1u)), Struct_1(vec2<u32>(76803u, 1u)), Struct_1(vec2<u32>(30726u, 78566u)), Struct_1(vec2<u32>(4294967295u, 0u)), Struct_1(vec2<u32>(0u, 21915u)), Struct_1(vec2<u32>(54123u, 1u)), Struct_1(vec2<u32>(43963u, 404u)), Struct_1(vec2<u32>(19947u, 1u)), Struct_1(vec2<u32>(144456u, 23780u)), Struct_1(vec2<u32>(4294967295u, 28548u)), Struct_1(vec2<u32>(23490u, 0u)), Struct_1(vec2<u32>(16941u, 72372u)), Struct_1(vec2<u32>(1443u, 46859u)), Struct_1(vec2<u32>(0u, 67442u)), Struct_1(vec2<u32>(23705u, 18863u)), Struct_1(vec2<u32>(101669u, 33699u)), Struct_1(vec2<u32>(18033u, 1u)));

var<private> global2: array<Struct_1, 16>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec4<f32>, arg_1: u32) -> u32 {
    global1 = array<Struct_1, 31>();
    var var_0 = -(~min(countOneBits(-40846i), -select(-36343i, 24467i, true)));
    global2 = array<Struct_1, 16>();
    global1 = array<Struct_1, 31>();
    let var_1 = Struct_3(Struct_1(_wgslsmith_div_vec2_u32(vec2<u32>(~arg_1, ~370u), ~_wgslsmith_mult_vec2_u32(global0.yy, vec2<u32>(arg_1, arg_1)))), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, arg_1), 31u)], select(~_wgslsmith_div_u32(0u, global0.x) != ~_wgslsmith_mod_u32(1u, global0.x), any(vec4<bool>(false, true, all(vec2<bool>(true, true)), true)), _wgslsmith_mult_i32(1i, 1i) <= _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(20508i, -2147483647i, -1i)), vec3<i32>(36965i, -44574i, 3537i))), Struct_1(firstTrailingBit(firstTrailingBit(global0.xy))), ~vec3<u32>(26641u, 45093u, u_input.a));
    return global0.x;
}

fn func_2(arg_0: Struct_2, arg_1: u32) -> f32 {
    global0 = _wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(~(vec3<u32>(1u, 38654u, arg_0.c.a.x) ^ vec3<u32>(global0.x, global0.x, global0.x)) >> (vec3<u32>(~u_input.a, ~0u, arg_1) % vec3<u32>(32u)), firstTrailingBit(vec3<u32>(reverseBits(1u), func_3(vec4<f32>(-1306f, 796f, 1896f, -899f), 15377u), 1u))), vec3<u32>(~firstLeadingBit(arg_1), global0.x, firstLeadingBit(_wgslsmith_div_u32(arg_0.c.a.x, 70034u))));
    var var_0 = arg_0;
    global2 = array<Struct_1, 16>();
    let var_1 = 0u >> (u_input.a % 32u);
    var var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -665f), 495f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -484f), 601f), -2021f) - vec4<f32>(1f, -411f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(496f * 1000f) - -634f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2707f * 403f)))));
    return var_2.x;
}

fn func_1(arg_0: vec2<bool>, arg_1: u32) -> Struct_2 {
    var var_0 = global0.x;
    var var_1 = global2[_wgslsmith_index_u32(min(global0.x, u_input.a) & countOneBits(~reverseBits(1u)), 16u)];
    var var_2 = _wgslsmith_add_i32(abs(select(reverseBits(-1i), _wgslsmith_dot_vec4_i32(vec4<i32>(31303i, -1662i, -2147483647i, -7958i), vec4<i32>(40756i, 49116i, 1i, -42825i)), any(arg_0))), _wgslsmith_dot_vec4_i32(-vec4<i32>(2147483647i, -8611i, 17228i, 2147483647i), vec4<i32>(1i, 1i, 1i, 1i)) | reverseBits(-1i)) & -2147483647i;
    let var_3 = vec4<f32>(883f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-663f + -901f) * _wgslsmith_f_op_f32(func_2(Struct_2(global0.x, arg_0, global1[_wgslsmith_index_u32(4294967295u, 31u)], Struct_1(vec2<u32>(4294967295u, var_1.a.x))), 1u))) + 1686f) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1216f - -753f) - _wgslsmith_div_f32(258f, 637f)), _wgslsmith_f_op_f32(f32(-1f) * -3152f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1369f, 1106f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -348f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-2255f, _wgslsmith_f_op_f32(983f + 770f))))))));
    var var_4 = all(vec4<bool>(!select(true, 1u <= arg_1, true), any(select(select(vec2<bool>(arg_0.x, false), arg_0, vec2<bool>(arg_0.x, arg_0.x)), !vec2<bool>(arg_0.x, arg_0.x), vec2<bool>(arg_0.x, true))), any(select(!vec4<bool>(false, true, false, arg_0.x), vec4<bool>(arg_0.x, false, arg_0.x, true), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x)) == var_3.x));
    return Struct_2(4294967295u, !vec2<bool>(arg_0.x, true), global1[_wgslsmith_index_u32(57200u, 31u)], global2[_wgslsmith_index_u32(18446u, 16u)]);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(vec2<bool>(true, (_wgslsmith_div_f32(925f, -660f) >= _wgslsmith_f_op_f32(step(-863f, -1549f))) || true), 0u);
    global1 = array<Struct_1, 31>();
    global1 = array<Struct_1, 31>();
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_2(Struct_2(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 4294967295u, global0.x), vec3<u32>(23113u, 0u, 7133u)), !var_0.b, func_1(vec2<bool>(var_0.b.x, var_0.b.x), u_input.a).d, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(global0.zx, var_0.c.a), 16u)]), ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.d.a.x, global0.x, u_input.a), vec3<u32>(u_input.a, 43564u, global0.x)))), _wgslsmith_f_op_f32(f32(-1f) * -967f))), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-2679f - _wgslsmith_f_op_f32(sign(1044f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-134f - -261f) * 298f)))));
    let var_2 = Struct_3(func_1(var_0.b, ~max(var_0.d.a.x, u_input.a << (var_0.d.a.x % 32u))).d, Struct_1(firstTrailingBit(var_0.d.a)), false, func_1(func_1(vec2<bool>(true, any(vec2<bool>(true, var_0.b.x))), ~global0.x).b, 1u).d, vec3<u32>(30585u, 1u, 1u) >> ((countOneBits(~vec3<u32>(global0.x, u_input.a, var_0.d.a.x)) & _wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, 29422u, var_0.a), vec3<u32>(var_0.a, global0.x, 1u)), ~vec3<u32>(u_input.a, u_input.a, 1u))) % vec3<u32>(32u)));
    var var_3 = Struct_1(~(~var_0.d.a));
    var var_4 = Struct_2(_wgslsmith_add_u32(~func_3(vec4<f32>(562f, 1624f, 344f, 549f), var_3.a.x), _wgslsmith_div_u32(~4294967295u, ~global0.x >> ((52745u << (u_input.a % 32u)) % 32u))), func_1(!vec2<bool>(var_2.c, true), abs(~u_input.a)).b, Struct_1(var_0.c.a), var_0.c);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-1i, _wgslsmith_sub_i32(-21192i, countOneBits(-29443i)) << (~u_input.a % 32u)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1000f - 1361f), -580f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_2(Struct_2(var_2.d.a.x, var_0.b, Struct_1(vec2<u32>(var_2.a.a.x, 1u)), global1[_wgslsmith_index_u32(var_2.b.a.x, 31u)]), min(40640u, 0u))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-715f, -1075f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(922f, -794f, var_0.b.x)) + -1452f))), _wgslsmith_f_op_f32(max(849f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_2(Struct_2(132197u, var_0.b, var_4.c, Struct_1(vec2<u32>(4294967295u, global0.x))), 0u))))))));
}

