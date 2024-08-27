struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: u32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec2<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: vec2<u32>, arg_3: Struct_2) -> vec2<f32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(abs(arg_0.a)), _wgslsmith_f_op_f32(arg_3.a + 150f), _wgslsmith_div_f32(arg_3.a, arg_3.a))))), 70830u >> (0u % 32u), 0u, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(-617f, -1391f)), _wgslsmith_f_op_f32(trunc(arg_3.a)), _wgslsmith_f_op_f32(max(-328f, 347f)), _wgslsmith_f_op_f32(step(1000f, 1603f)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1000f, arg_0.a, arg_3.a, 164f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.a, 1622f, arg_0.a, -160f)), true)))), vec4<bool>(select(any(vec2<bool>(true, false)), true, true), 0u >= max(25231u, arg_2.x), false, any(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false)))))));
    let var_1 = any(vec4<bool>(false, (all(vec4<bool>(false, true, true, true)) & true) || true, any(select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false)), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), true), true)), true));
    var var_2 = 1i;
    let var_3 = _wgslsmith_f_op_vec2_f32(abs(var_0.d.xx));
    var var_4 = -1417f;
    return _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.d.x, arg_0.a)))) - var_0.a.yy))));
}

fn func_2() -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(func_3(Struct_2(719f, 27383u, 1u), _wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, u_input.c.x, -25123i), vec3<i32>(-1i, -2147483647i, u_input.d)), vec2<u32>(1u, 1u), Struct_2(-154f, 36957u, 35032u))))))));
    let var_1 = vec4<u32>(~0u ^ (firstTrailingBit(54473u) << (1u % 32u)), _wgslsmith_add_u32(_wgslsmith_clamp_u32(reverseBits(42649u), select(53098u, 4294967295u, true), ~0u), firstLeadingBit(~1u)), _wgslsmith_div_u32(6835u, _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(46267u, 102902u, 0u), vec3<u32>(58377u, 0u, 73848u), vec3<u32>(7471u, 46739u, 4294967295u)), abs(vec3<u32>(1u, 1894u, 24608u)))), _wgslsmith_div_u32(countOneBits(_wgslsmith_mult_u32(1u, 4294967295u)), ~_wgslsmith_dot_vec2_u32(vec2<u32>(20396u, 1u), vec2<u32>(38013u, 4294967295u)))) << ((vec4<u32>(1u, 1u, 1u, 1u) << ((vec4<u32>(6673u, firstTrailingBit(27242u), _wgslsmith_dot_vec4_u32(vec4<u32>(53239u, 38085u, 4294967295u, 52005u), vec4<u32>(0u, 44153u, 1u, 1u)), 0u) | vec4<u32>(1u, 1u, 1u, 1u)) % vec4<u32>(32u))) % vec4<u32>(32u));
    var var_2 = _wgslsmith_sub_i32(-u_input.c.x, -2147483647i);
    var_2 = u_input.a.x;
    var var_3 = select(vec3<bool>(true, true, true), vec3<bool>((_wgslsmith_f_op_f32(-246f * -617f) > var_0.x) & true, select(any(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false))), true, select(true, false, true)), u_input.d >= firstLeadingBit(u_input.a.x)), !select(true, var_1.x >= 0u, true));
    return ~(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(~var_1.wy, _wgslsmith_sub_vec2_u32(vec2<u32>(var_1.x, var_1.x), vec2<u32>(var_1.x, var_1.x))), var_1.xy) << (countOneBits(14464u) % 32u));
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: vec3<bool>, arg_3: Struct_2) -> Struct_1 {
    let var_0 = arg_3;
    let var_1 = vec4<i32>(_wgslsmith_clamp_i32(abs(u_input.e >> (arg_0.b % 32u)), u_input.d, max(u_input.c.x, -8519i) & -u_input.d), 71629i, -((u_input.d >> (arg_3.b % 32u)) ^ abs(-12250i)), 1i) | (_wgslsmith_clamp_vec4_i32(-countOneBits(vec4<i32>(u_input.a.x, 0i, u_input.c.x, u_input.d)), vec4<i32>(u_input.a.x, u_input.e, _wgslsmith_div_i32(u_input.d, u_input.d), 45534i), vec4<i32>(u_input.e, -25341i, u_input.b.x, u_input.d) << (~vec4<u32>(arg_3.b, 45948u, 0u, 4294967295u) % vec4<u32>(32u))) >> (~_wgslsmith_div_vec4_u32(vec4<u32>(arg_3.c, arg_0.b, 0u, 34729u) | vec4<u32>(4294967295u, 29968u, var_0.b, 48081u), ~vec4<u32>(132248u, var_0.c, 0u, arg_0.b)) % vec4<u32>(32u)));
    var var_2 = arg_3.b | (_wgslsmith_div_u32(firstTrailingBit(4294967295u), _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.c, arg_1, arg_3.b), vec3<u32>(4294967295u, var_0.c, arg_0.b)), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 51641u, 1u), vec3<u32>(arg_0.c, arg_0.b, arg_0.c)))) & arg_3.b);
    var var_3 = arg_0;
    var var_4 = true;
    return Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(886f, _wgslsmith_f_op_f32(arg_3.a + 671f), _wgslsmith_div_f32(var_0.a, arg_3.a)) * _wgslsmith_f_op_vec3_f32(-var_3.d.yww)) - vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -760f))), 1f, -724f)), ~(~0u), ~1u, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_0.a - -180f), -467f, 373f, _wgslsmith_f_op_f32(-var_3.d.x))), arg_0.d, vec4<bool>(arg_2.x, any(!vec4<bool>(false, false, arg_2.x, false)), any(arg_2), any(vec4<bool>(arg_2.x, true, false, true)) && true))));
}

fn func_1(arg_0: vec2<u32>) -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1299f, 1551f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-973f, 1827f) * vec2<f32>(-2421f, 137f)), true)) * vec2<f32>(_wgslsmith_div_f32(716f, 439f), _wgslsmith_f_op_f32(f32(-1f) * -474f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(588f, 1006f), vec2<f32>(-1398f, -249f)))), vec2<bool>(all(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), true)), true))));
    let var_1 = arg_0.x;
    var var_2 = func_4(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.x))), 263f, _wgslsmith_f_op_f32(var_0.x - var_0.x)), 4294967295u, func_2(), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(-420f, -934f, -551f, var_0.x), vec4<f32>(var_0.x, -609f, 1234f, var_0.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 438f, var_0.x, var_0.x) - vec4<f32>(-1114f, -1000f, 2705f, 809f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1695f, var_0.x, var_0.x, var_0.x) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1620f, -406f, var_0.x, 1570f)))))), 1u, select(vec3<bool>(select(false, true, false) | true, true, true), select(!select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), true), !select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), any(select(vec2<bool>(false, true), vec2<bool>(true, true), false))), true), Struct_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(919f - var_0.x))))), firstTrailingBit(0u), reverseBits(~_wgslsmith_mod_u32(arg_0.x, var_1))));
    var var_3 = func_4(Struct_1(var_2.a, 1u, firstTrailingBit(3567u), var_2.d), _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(var_1, reverseBits(44934u), 1u), _wgslsmith_div_vec3_u32(vec3<u32>(14331u, arg_0.x, 0u), vec3<u32>(1u, 17663u, 1u)) << (~vec3<u32>(0u, 1945u, arg_0.x) % vec3<u32>(32u))), ~min(vec3<u32>(4294967295u, 77444u, 1u), reverseBits(vec3<u32>(var_1, 1u, 33681u)))), !select(vec3<bool>(true, true, false), vec3<bool>(true, any(vec2<bool>(true, true)), true), vec3<bool>(true, true, select(true, true, true))), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.x)) * _wgslsmith_f_op_f32(-var_0.x))), arg_0.x, 8132u));
    var var_4 = select(!(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), true), all(vec3<bool>(false, false, false)))), vec4<bool>(any(select(vec4<bool>(false, false, false, false), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), true), all(vec3<bool>(false, false, false)))), any(select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true)), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), false))), true, ~_wgslsmith_sub_u32(arg_0.x, var_3.c) != 73148u), !(!(_wgslsmith_f_op_f32(-var_2.a.x) <= _wgslsmith_f_op_f32(-var_2.d.x))));
    return ~abs(~max(u_input.b.x, u_input.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.e >> (0u % 32u);
    var var_1 = vec2<i32>(i32(-1i) * -66087i, countOneBits(var_0));
    let var_2 = true;
    var_1 = vec2<i32>(~2147483647i, abs((countOneBits(u_input.b.x) ^ _wgslsmith_mult_i32(-27139i, var_1.x)) << (~41293u % 32u)));
    var var_3 = func_1(~vec2<u32>(1u, 1u) << ((_wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), vec2<u32>(0u, 66050u)), vec2<u32>(1u, 1u)) << (firstLeadingBit(vec2<u32>(1u, 1u)) % vec2<u32>(32u))) % vec2<u32>(32u)));
    var_1 = u_input.c;
    let var_4 = _wgslsmith_f_op_f32(-711f * _wgslsmith_f_op_vec2_f32(func_3(Struct_2(_wgslsmith_f_op_f32(step(-740f, 1f)), _wgslsmith_dot_vec4_u32(~vec4<u32>(12608u, 6766u, 0u, 4294967295u), ~vec4<u32>(1u, 28763u, 24920u, 6739u)), 32517u), abs(vec3<i32>(_wgslsmith_mod_i32(u_input.a.x, var_0), func_1(vec2<u32>(0u, 4294967295u)), var_0)), ~select(vec2<u32>(1u, 1u), _wgslsmith_div_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 75391u)), !vec2<bool>(var_2, false)), Struct_2(-215f, max(abs(4266u), ~11594u), ~1u))).x);
    var_1 = _wgslsmith_sub_vec2_i32(firstLeadingBit(_wgslsmith_mod_vec2_i32(u_input.a, firstLeadingBit(~u_input.a))), ~select(u_input.a, -vec2<i32>(-20304i, -2147483647i), false) ^ ((select(vec2<i32>(9675i, 11825i), u_input.b, false) ^ u_input.c) & _wgslsmith_mult_vec2_i32(reverseBits(vec2<i32>(var_0, -2147483647i)), ~vec2<i32>(var_1.x, 0i))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d, ~vec3<u32>(_wgslsmith_mod_u32(~1u, 1u), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 7249u, 0u, 4294967295u), firstLeadingBit(vec4<u32>(1u, 60261u, 56097u, 0u))), func_4(Struct_1(vec3<f32>(var_4, var_4, 1654f), 23882u, 1108u, vec4<f32>(989f, var_4, 1099f, var_4)), min(1u, 13110u), !vec3<bool>(var_2, true, var_2), Struct_2(1274f, 18239u, 38587u)).b), _wgslsmith_div_f32(var_4, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_vec2_f32(func_3(Struct_2(var_4, 1u, 31599u), vec3<i32>(var_0, -2147483647i, 41589i), vec2<u32>(36213u, 0u), Struct_2(var_4, 52577u, 37680u))).x, _wgslsmith_f_op_f32(ceil(var_4)))))));
}

