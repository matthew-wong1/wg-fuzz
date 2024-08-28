struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: vec3<f32>,
    d: u32,
}

struct Struct_2 {
    a: u32,
    b: vec2<u32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec4<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
    c: Struct_3,
    d: Struct_3,
    e: vec4<f32>,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_4,
    c: bool,
    d: i32,
    e: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: vec2<bool>, arg_3: u32) -> i32 {
    var var_0 = _wgslsmith_dot_vec3_i32(-vec3<i32>(_wgslsmith_sub_i32(0i, i32(-1i) * -32434i), arg_1, -447i), firstTrailingBit(vec3<i32>(_wgslsmith_sub_i32(arg_1, ~(-1i)), -30449i, _wgslsmith_mult_i32(firstLeadingBit(arg_1), -1i))));
    let var_1 = Struct_5(Struct_4(Struct_1(_wgslsmith_add_i32(1i, arg_1), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(253f, 704f, 802f, 612f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-851f, 2196f, 1094f, 1557f) + vec4<f32>(905f, 155f, -218f, -548f))), vec3<f32>(-205f, _wgslsmith_f_op_f32(765f * 175f), _wgslsmith_f_op_f32(floor(-708f))), ~(~arg_0.a)), true, Struct_3(firstTrailingBit(~vec4<u32>(arg_3, 4294967295u, u_input.a, u_input.a)), vec4<i32>(arg_1, arg_1, max(-18468i, arg_1), arg_1 >> (5326u % 32u))), Struct_3(_wgslsmith_div_vec4_u32(~vec4<u32>(arg_0.a, 0u, 25050u, arg_3), _wgslsmith_mod_vec4_u32(vec4<u32>(0u, u_input.a, 4294967295u, 1664u), vec4<u32>(u_input.a, 4294967295u, u_input.a, 4294967295u))), -vec4<i32>(-5052i, 39880i, 11663i, arg_1)), vec4<f32>(_wgslsmith_f_op_f32(ceil(1369f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * -154f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(931f + 891f) * 510f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-284f - 874f), 203f))), Struct_4(Struct_1(countOneBits(-29277i), vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-719f, 221f, 1000f)), _wgslsmith_div_u32(u_input.a << (arg_0.a % 32u), 36466u)), any(arg_2), Struct_3(reverseBits(vec4<u32>(u_input.a, 88362u, u_input.a, arg_3)), select(_wgslsmith_div_vec4_i32(vec4<i32>(arg_1, arg_1, -14079i, arg_1), vec4<i32>(arg_1, 0i, -26187i, 14742i)), ~vec4<i32>(1i, -2147483647i, 0i, arg_1), select(vec4<bool>(false, false, arg_2.x, arg_2.x), vec4<bool>(true, arg_2.x, arg_2.x, arg_2.x), vec4<bool>(arg_2.x, false, arg_2.x, arg_2.x)))), Struct_3(min(firstTrailingBit(vec4<u32>(u_input.a, arg_3, arg_3, u_input.a)), ~vec4<u32>(7571u, u_input.a, 4294967295u, u_input.a)), ~_wgslsmith_div_vec4_i32(vec4<i32>(-19794i, arg_1, arg_1, arg_1), vec4<i32>(arg_1, arg_1, -11106i, arg_1))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(1015f, -810f, 494f, 357f) * vec4<f32>(-375f, -1059f, -2495f, 1784f)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1347f, 990f, -841f, -567f)))))))), !(!any(vec4<bool>(arg_2.x, true, false, true))), _wgslsmith_add_i32(i32(-1i) * -1i, 25093i), arg_2.x);
    var var_2 = !var_1.a.b;
    var_0 = -24238i;
    var_2 = !(!all(vec4<bool>(true, true, select(true, arg_2.x, var_1.a.b), true)));
    return arg_1;
}

fn func_2() -> Struct_4 {
    let var_0 = vec2<u32>(u_input.a, ~(u_input.a >> (countOneBits(u_input.a) % 32u)));
    var var_1 = 1i;
    let var_2 = _wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(9202i, (i32(-1i) * -18275i) & _wgslsmith_dot_vec4_i32(vec4<i32>(25868i, -2147483647i, 29516i, 50139i), vec4<i32>(2147483647i, -23937i, 39585i, 2147483647i)), func_3(Struct_2(1u, vec2<u32>(var_0.x, 0u)), ~19948i, select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false)), 1u), ~(-1346i)), countOneBits(_wgslsmith_div_vec4_i32(~vec4<i32>(2147483647i, -54046i, -1i, 25753i), vec4<i32>(-35645i, 35575i, 39764i, -13048i)))), ~(-vec4<i32>(35766i, 1i, ~0i, select(1i, -1986i, false))), max(_wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(1i, 2147483647i, -27956i, -2147483647i) << (vec4<u32>(u_input.a, 0u, 48521u, var_0.x) % vec4<u32>(32u)), vec4<i32>(1i, 58662i, 23984i, 51998i) >> (vec4<u32>(0u, var_0.x, u_input.a, var_0.x) % vec4<u32>(32u))), vec4<i32>(-2147483647i, -42695i, -5554i, 46810i) >> (reverseBits(vec4<u32>(1u, 18351u, var_0.x, var_0.x)) % vec4<u32>(32u))), abs(~(vec4<i32>(-25105i, 157i, -21579i, 0i) >> (vec4<u32>(var_0.x, u_input.a, var_0.x, 82825u) % vec4<u32>(32u))))));
    var_1 = ~select(_wgslsmith_add_i32(~min(127i, -7931i), -(i32(-1i) * -16017i)), ~(-2147483647i), -21205i >= var_2.x);
    let var_3 = Struct_3(~vec4<u32>(var_0.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 0u), vec2<u32>(u_input.a, 4294967295u)), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 26009u, 6248u), vec3<u32>(u_input.a, var_0.x, 1u)), u_input.a & u_input.a) << (reverseBits(~(vec4<u32>(var_0.x, 31476u, var_0.x, u_input.a) & vec4<u32>(var_0.x, 0u, 24110u, var_0.x))) % vec4<u32>(32u)), min(vec4<i32>(-1i, i32(-1i) * -11256i, ~40796i, var_2.x), _wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(-var_2, var_2), countOneBits(var_2 & vec4<i32>(11440i, var_2.x, -58288i, var_2.x)))));
    return Struct_4(Struct_1(abs(-1i), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(392f, -125f, _wgslsmith_f_op_f32(f32(-1f) * -431f), _wgslsmith_f_op_f32(min(219f, -1590f))), vec4<f32>(1f, _wgslsmith_f_op_f32(select(-661f, 1203f, false)), -1390f, -1631f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(126f, 121f, 128f)) + _wgslsmith_div_vec3_f32(vec3<f32>(-1000f, -1077f, 843f), vec3<f32>(-327f, 788f, -1000f))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(511f, -1616f, -777f), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(494f, 464f, 274f)))))), ~63666u), true, var_3, var_3, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(849f, 757f, 832f, 330f) - vec4<f32>(1000f, 1579f, 1052f, -1522f)) * vec4<f32>(-841f, 831f, 422f, 712f)))) * vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -2024f), _wgslsmith_div_f32(-1943f, 789f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(344f, -1487f))), -1360f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1000f * -2584f), _wgslsmith_f_op_f32(1792f + -1878f))))));
}

fn func_4(arg_0: Struct_5, arg_1: vec3<f32>, arg_2: vec3<u32>, arg_3: f32) -> Struct_3 {
    let var_0 = vec3<u32>(~arg_0.a.d.a.x, 1u, ~_wgslsmith_dot_vec4_u32(~firstTrailingBit(vec4<u32>(0u, arg_2.x, arg_2.x, 1u)), _wgslsmith_mult_vec4_u32(~arg_0.a.d.a, arg_0.b.d.a)));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(385f, arg_3, false)) + _wgslsmith_f_op_f32(-arg_1.x)), _wgslsmith_f_op_f32(ceil(arg_3))), arg_1, !arg_0.a.b)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_div_f32(-1000f, arg_3), _wgslsmith_f_op_f32(select(arg_1.x, arg_1.x, false)), 876f))) * _wgslsmith_f_op_vec3_f32(arg_0.b.a.b.wxx * _wgslsmith_f_op_vec3_f32(-func_2().e.xzw))));
    var var_2 = arg_0.a.d;
    var_2 = arg_0.b.d;
    let var_3 = arg_0.a.c.a;
    return Struct_3(vec4<u32>(arg_0.b.c.a.x, _wgslsmith_mod_u32(var_3.x, firstTrailingBit(u_input.a)), firstTrailingBit(select(~39373u, 1u, select(arg_0.e, false, arg_0.c))), arg_0.b.a.d ^ 41369u), -(abs(_wgslsmith_div_vec4_i32(vec4<i32>(0i, arg_0.a.c.b.x, 1i, -2147483647i), vec4<i32>(0i, arg_0.d, 2147483647i, var_2.b.x))) | vec4<i32>(firstTrailingBit(-1i), var_2.b.x, 7214i, _wgslsmith_clamp_i32(var_2.b.x, var_2.b.x, arg_0.a.c.b.x))));
}

fn func_1() -> i32 {
    var var_0 = Struct_4(Struct_1(firstLeadingBit(~_wgslsmith_clamp_i32(2147483647i, 27436i, -1i)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1709f, 1274f, -2141f, 744f) * vec4<f32>(762f, 1293f, 629f, 153f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2148f, 1000f, -492f, 451f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1153f, 402f, -312f, -150f) - vec4<f32>(-1000f, -1000f, -237f, -724f))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1f, 1f, 1f), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(314f, 1000f, 325f) + vec3<f32>(208f, -191f, 915f)), vec3<f32>(-2233f, -1974f, -689f)), vec3<bool>(true, any(vec2<bool>(false, false)), true))), u_input.a), all(vec2<bool>(false, all(vec2<bool>(true, false)))) | any(vec3<bool>(true, any(vec3<bool>(false, true, true)), false)), func_4(Struct_5(func_2(), func_2(), all(vec4<bool>(true, true, true, true)), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -2147483647i, 25788i, -2147483647i), vec4<i32>(-65209i, -16334i, -12064i, -35646i) >> (vec4<u32>(1u, u_input.a, 68954u, u_input.a) % vec4<u32>(32u))), true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(582f, 648f, 271f)))), ~(~vec3<u32>(u_input.a, u_input.a, 2030u)) >> (select(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, u_input.a, 4294967295u), vec3<u32>(u_input.a, 1u, u_input.a)), firstTrailingBit(vec3<u32>(u_input.a, 26976u, 1u)), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false))) % vec3<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -350f), _wgslsmith_f_op_f32(step(136f, -1604f))) - _wgslsmith_f_op_f32(-601f + -1000f))), func_4(Struct_5(Struct_4(Struct_1(16830i, vec4<f32>(-1000f, -506f, 133f, 1314f), vec3<f32>(609f, 1438f, 304f), u_input.a), true, func_2().c, Struct_3(vec4<u32>(u_input.a, u_input.a, 10339u, u_input.a), vec4<i32>(36523i, -13667i, -5326i, 0i)), vec4<f32>(-1000f, -580f, -388f, -778f)), func_2(), false, ~1i << (~u_input.a % 32u), false), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)), vec3<u32>(~_wgslsmith_sub_u32(u_input.a, 2768u), ~(~4294967295u), u_input.a), _wgslsmith_f_op_f32(-func_2().a.c.x)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(967f, -133f, -1000f, -1029f), vec4<f32>(-867f, -688f, 774f, -1000f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-488f, 102f, 221f, 858f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1163f, 2197f, 1000f, 373f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(710f, -1139f, -1148f, 2315f)))))));
    var var_1 = select(!vec2<bool>(true, var_0.b), select(!select(vec2<bool>(true, var_0.b), select(vec2<bool>(var_0.b, false), vec2<bool>(false, false), var_0.b), true), select(!vec2<bool>(var_0.b, var_0.b), vec2<bool>(true, true), var_0.b), any(!select(vec2<bool>(true, var_0.b), vec2<bool>(false, var_0.b), true))), vec2<bool>(true, true));
    var var_2 = Struct_2(1u, vec2<u32>(u_input.a, 39015u));
    let var_3 = select(!(!vec3<bool>(var_0.b, true, any(vec3<bool>(false, true, var_1.x)))), !(!vec3<bool>(select(var_1.x, false, var_1.x), true, any(vec4<bool>(true, var_0.b, var_1.x, true)))), select(!vec3<bool>(any(vec2<bool>(var_1.x, false)), any(vec3<bool>(var_0.b, var_0.b, var_0.b)), var_0.a.a != var_0.d.b.x), !select(!vec3<bool>(var_0.b, var_1.x, true), !vec3<bool>(var_0.b, false, true), select(vec3<bool>(var_0.b, var_0.b, true), vec3<bool>(var_1.x, false, var_0.b), vec3<bool>(var_0.b, false, var_0.b))), var_1.x));
    var_0 = func_2();
    return var_0.d.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -vec3<i32>(-_wgslsmith_mod_i32(1i, max(21271i, 66119i)), firstLeadingBit(0i), func_1());
    let var_1 = Struct_2(u_input.a, _wgslsmith_div_vec2_u32(~vec2<u32>(u_input.a, u_input.a) ^ _wgslsmith_add_vec2_u32(~vec2<u32>(u_input.a, u_input.a), firstTrailingBit(vec2<u32>(0u, u_input.a))), countOneBits(vec2<u32>(69198u, u_input.a)) << (~(~vec2<u32>(u_input.a, 118820u)) % vec2<u32>(32u))));
    let var_2 = vec2<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(var_0.yx, _wgslsmith_mod_vec2_i32(var_0.yy, var_0.xy) & vec2<i32>(var_0.x, -2147483647i)), -(~(~var_0.zx))), i32(-1i) * -(var_0.x | -1i));
    var var_3 = -_wgslsmith_mult_vec4_i32(-_wgslsmith_div_vec4_i32(vec4<i32>(var_2.x, -32959i, 2147483647i, 11707i) & vec4<i32>(-36767i, var_2.x, var_0.x, -19112i), reverseBits(vec4<i32>(var_0.x, 0i, -1i, -22780i))), vec4<i32>(50657i, 0i, -_wgslsmith_mult_i32(12935i, var_0.x), var_0.x));
    var var_4 = var_1.b.x != 1u;
    let var_5 = true;
    var_3 = _wgslsmith_clamp_vec4_i32(abs(reverseBits(min(vec4<i32>(var_0.x, var_3.x, var_0.x, var_0.x), vec4<i32>(var_3.x, -71139i, var_3.x, var_3.x)) | _wgslsmith_div_vec4_i32(vec4<i32>(45523i, 15790i, 18724i, 2147483647i), vec4<i32>(var_2.x, var_2.x, var_2.x, 52252i)))), vec4<i32>(-var_0.x, -36889i | ~(~var_0.x), -countOneBits(max(var_2.x, var_2.x)), var_0.x), -(~countOneBits(vec4<i32>(var_3.x, -2147483647i, var_3.x, 12766i)) | -reverseBits(vec4<i32>(var_0.x, -1i, var_0.x, var_0.x))));
    let var_6 = Struct_4(Struct_1(-(var_2.x << (select(1u, var_1.b.x, false) % 32u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1013f, -587f, -346f, -312f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1957f, 596f, 1375f, -386f)))) - vec4<f32>(_wgslsmith_f_op_f32(2321f - -963f), -1022f, -2074f, -1665f)), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1548f, 963f)), _wgslsmith_f_op_f32(f32(-1f) * -532f)), _wgslsmith_f_op_f32(-446f - _wgslsmith_f_op_f32(sign(-309f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-1267f, 984f))))), var_1.b.x), var_5, Struct_3(_wgslsmith_mod_vec4_u32(firstTrailingBit(~vec4<u32>(20610u, var_1.b.x, 0u, 1u)), vec4<u32>(u_input.a, var_1.b.x, 0u, ~43039u)), _wgslsmith_sub_vec4_i32(~vec4<i32>(1i, 38386i, var_3.x, -1i) | vec4<i32>(var_0.x, -2147483647i, var_3.x, 9661i), _wgslsmith_clamp_vec4_i32(firstLeadingBit(vec4<i32>(2147483647i, 0i, -30436i, 0i)), vec4<i32>(-7291i, var_2.x, 0i, var_3.x), -vec4<i32>(var_3.x, 44652i, var_0.x, var_2.x)))), Struct_3(_wgslsmith_mod_vec4_u32(vec4<u32>(~16775u, var_1.a, ~53809u, _wgslsmith_mod_u32(4294967295u, var_1.b.x)), vec4<u32>(u_input.a, ~4294967295u, _wgslsmith_mult_u32(u_input.a, u_input.a), _wgslsmith_sub_u32(3673u, 0u))), select(~vec4<i32>(-19423i, 2147483647i, -9993i, -1i), ~vec4<i32>(-2147483647i, var_3.x, var_2.x, 2147483647i), !var_5) ^ vec4<i32>(-var_3.x, 20976i, _wgslsmith_mult_i32(var_2.x, var_3.x), func_4(Struct_5(Struct_4(Struct_1(20583i, vec4<f32>(1945f, -304f, -205f, -1405f), vec3<f32>(2379f, -1506f, -678f), 12979u), var_5, Struct_3(vec4<u32>(1265u, 13517u, u_input.a, var_1.a), vec4<i32>(-2147483647i, var_2.x, var_3.x, 1i)), Struct_3(vec4<u32>(0u, 215u, u_input.a, 0u), vec4<i32>(-26788i, -1868i, var_2.x, 0i)), vec4<f32>(-572f, -609f, 629f, 1080f)), Struct_4(Struct_1(var_2.x, vec4<f32>(385f, 767f, -1091f, -1061f), vec3<f32>(-1135f, 1000f, 1391f), var_1.b.x), var_5, Struct_3(vec4<u32>(var_1.a, 36766u, var_1.a, var_1.b.x), vec4<i32>(var_0.x, var_3.x, var_0.x, 15051i)), Struct_3(vec4<u32>(u_input.a, 0u, var_1.a, 57696u), vec4<i32>(var_2.x, var_2.x, -2147483647i, var_2.x)), vec4<f32>(1862f, -218f, 373f, -161f)), var_5, var_3.x, var_5), vec3<f32>(931f, 212f, 1353f), vec3<u32>(var_1.a, 40305u, u_input.a), 1000f).b.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-298f, _wgslsmith_f_op_f32(1449f + _wgslsmith_f_op_f32(floor(368f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(133f, -1407f, var_5)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(848f)) - _wgslsmith_f_op_f32(414f * -546f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(701f, -689f, 615f, 2084f)))));
    var_4 = false;
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, var_1.b.x >> (~92134u % 32u), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -732f), _wgslsmith_f_op_f32(482f + -439f), _wgslsmith_f_op_f32(var_6.e.x - _wgslsmith_f_op_f32(-var_6.e.x))), var_6.c.a.x);
}

