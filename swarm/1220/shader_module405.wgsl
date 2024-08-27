struct Struct_1 {
    a: bool,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 27770u;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: Struct_2, arg_3: bool) -> i32 {
    global0 = ~4294967295u;
    global0 = _wgslsmith_dot_vec2_u32(select(~(vec2<u32>(arg_0, 6388u) & ~vec2<u32>(arg_0, 69726u)), vec2<u32>(arg_0, ~4294967295u), arg_3), reverseBits(vec2<u32>(~_wgslsmith_mult_u32(1u, arg_0), countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(68412u, arg_0, arg_0), vec3<u32>(4373u, 0u, arg_0))))));
    var var_0 = min(vec4<u32>(34822u, ~arg_0, 4294967295u, 0u), vec4<u32>(arg_0, arg_0, _wgslsmith_dot_vec4_u32(max(vec4<u32>(4294967295u, 4294967295u, arg_0, 39392u), vec4<u32>(0u, 40250u, arg_0, arg_0) & vec4<u32>(4294967295u, arg_0, 4294967295u, 2300u)), firstLeadingBit(~vec4<u32>(34815u, 1u, arg_0, 0u))), _wgslsmith_mod_u32(reverseBits(arg_0), ~1u)));
    var_0 = vec4<u32>(~_wgslsmith_dot_vec3_u32(abs(vec3<u32>(var_0.x, var_0.x, 4294967295u)), var_0.yxx), var_0.x, ~(arg_0 ^ _wgslsmith_div_u32(48337u, 4294967295u)), firstTrailingBit(1330u)) << (~vec4<u32>(var_0.x >> (_wgslsmith_dot_vec2_u32(var_0.yz, var_0.zx) % 32u), ~_wgslsmith_sub_u32(arg_0, arg_0), 55316u, min(arg_0, _wgslsmith_add_u32(21383u, 115866u))) % vec4<u32>(32u));
    let var_1 = (true | all(select(select(vec4<bool>(true, false, true, false), vec4<bool>(arg_3, arg_2.a.a, arg_2.a.a, arg_3), vec4<bool>(arg_1.a, arg_1.a, true, true)), !vec4<bool>(arg_3, arg_1.a, false, arg_1.a), vec4<bool>(arg_1.a, arg_2.a.b, false, arg_2.a.a)))) | arg_1.b;
    return ~arg_1.c;
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: vec2<f32>, arg_3: f32) -> u32 {
    var var_0 = vec4<bool>(_wgslsmith_mult_i32(_wgslsmith_sub_i32(u_input.a, 2147483647i), ~func_3(0u, Struct_1(false, false, 2147483647i), Struct_2(Struct_1(false, false, 1i), Struct_1(true, true, -23947i)), true)) > (_wgslsmith_mod_i32(abs(u_input.a), -2147483647i) ^ -_wgslsmith_sub_i32(arg_0.x, 55454i)), true, false, _wgslsmith_dot_vec4_u32(min(vec4<u32>(12761u, 0u, 1u, 1u), ~vec4<u32>(4294967295u, 1u, 1u, 0u)), vec4<u32>(1u, 1u, 1u, 1u)) == 4423u);
    var var_1 = any(select(vec4<bool>(var_0.x & false, arg_2.x < arg_1.a.x, all(var_0.xx), false), !select(vec4<bool>(var_0.x, var_0.x, var_0.x, true), vec4<bool>(false, var_0.x, var_0.x, false), vec4<bool>(true, true, false, false)), all(var_0.xxw))) & true;
    var var_2 = _wgslsmith_f_op_f32(min(727f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_2.x)))))));
    global0 = 6026u;
    let var_3 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_1.a + arg_1.a)), _wgslsmith_f_op_f32(740f * _wgslsmith_f_op_f32(abs(arg_1.a.x))));
    return ~18834u;
}

fn func_1(arg_0: vec4<bool>, arg_1: f32, arg_2: u32, arg_3: Struct_1) -> i32 {
    var var_0 = -9783i <= _wgslsmith_mult_i32(0i << (func_2(-vec4<i32>(u_input.a, -1i, -1i, arg_3.c), Struct_3(vec4<f32>(-959f, arg_1, arg_1, -1000f), arg_1), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, 981f)), arg_1) % 32u), arg_3.c);
    let var_1 = _wgslsmith_f_op_f32(trunc(arg_1));
    global0 = arg_2 << (_wgslsmith_div_u32(arg_2, arg_2) % 32u);
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1), var_1)))), _wgslsmith_f_op_f32(-arg_1));
    var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_2.x)))), _wgslsmith_f_op_f32(arg_1 * 1f));
    return func_3(~arg_2, Struct_1(!(0u < (9078u >> (arg_2 % 32u))), !any(vec3<bool>(arg_0.x, arg_0.x, arg_3.a)), reverseBits(10695i)), Struct_2(Struct_1(arg_0.x, true, 2147483647i), arg_3), !(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, arg_3.c, u_input.a, arg_3.c), ~vec4<i32>(arg_3.c, u_input.a, arg_3.c, 23141i)) >= -2147483647i));
}

fn func_4(arg_0: vec4<i32>, arg_1: bool) -> Struct_2 {
    var var_0 = _wgslsmith_dot_vec2_i32(firstLeadingBit(_wgslsmith_mod_vec2_i32(~vec2<i32>(-1i, arg_0.x), arg_0.zx) ^ reverseBits(select(arg_0.wz, vec2<i32>(arg_0.x, u_input.a), vec2<bool>(arg_1, false)))), vec2<i32>(reverseBits(_wgslsmith_mult_i32(u_input.a, ~arg_0.x)), arg_0.x));
    var var_1 = true;
    global0 = ~select(max(1u, ~(~28631u)), _wgslsmith_sub_u32(_wgslsmith_add_u32(1u, 1u), func_2(select(vec4<i32>(1i, u_input.a, 6165i, arg_0.x), vec4<i32>(30709i, u_input.a, arg_0.x, arg_0.x), vec4<bool>(false, arg_1, arg_1, false)), Struct_3(vec4<f32>(-354f, 155f, -391f, 1374f), 1666f), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-670f, -1317f), vec2<f32>(693f, -850f))), -1826f)), !select(true, false, true));
    var var_2 = select(!(!vec4<bool>(arg_1, true, arg_0.x < arg_0.x, all(vec3<bool>(arg_1, arg_1, true)))), vec4<bool>(arg_1 != all(select(vec3<bool>(arg_1, arg_1, true), vec3<bool>(arg_1, true, arg_1), arg_1)), true, arg_1, arg_1), !vec4<bool>(any(!vec2<bool>(arg_1, arg_1)), arg_1, any(vec4<bool>(false, arg_1, true, false)), true));
    var var_3 = arg_0;
    return Struct_2(Struct_1(true, any(!(!vec3<bool>(var_2.x, var_2.x, false))), _wgslsmith_dot_vec4_i32(arg_0, vec4<i32>(-u_input.a, firstTrailingBit(arg_0.x), countOneBits(2147483647i), -5431i))), Struct_1(any(!select(var_2.zzx, var_2.wyw, false)), true | (_wgslsmith_f_op_f32(round(-836f)) <= _wgslsmith_f_op_f32(-1701f + 395f)), ~firstLeadingBit(-56315i >> (0u % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(max(vec4<i32>(u_input.a, func_1(vec4<bool>(false, true, true, true), 1783f, 5637u, Struct_1(true, false, u_input.a)), abs(-2147483647i), -2147483647i), -(vec4<i32>(9434i, -2147483647i, -1i, u_input.a) ^ vec4<i32>(2147483647i, u_input.a, 9682i, 15692i))) >> (~vec4<u32>(0u, 1u, ~16188u, 1u) % vec4<u32>(32u)), true);
    let var_1 = func_4(_wgslsmith_sub_vec4_i32(select(~max(vec4<i32>(2147483647i, 1i, 2147483647i, u_input.a), vec4<i32>(1i, -1i, var_0.a.c, var_0.b.c)), ~(vec4<i32>(var_0.a.c, var_0.a.c, -2147483647i, -2147483647i) >> (vec4<u32>(0u, 77369u, 4294967295u, 19461u) % vec4<u32>(32u))), any(vec2<bool>(true, true))), -vec4<i32>(_wgslsmith_mult_i32(var_0.b.c, u_input.a), _wgslsmith_div_i32(var_0.a.c, 34779i), 13083i, 1i)), any(vec3<bool>(false, true, var_0.b.a != all(vec2<bool>(var_0.b.a, false))))).a;
    var var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-603f + 485f) + 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -548f)), -1231f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1046f, -389f, -263f), vec3<f32>(-1586f, 963f, 827f), false))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-995f + -2175f), -519f)), -977f, -499f)));
    var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-700f, 309f, var_2.x), vec3<f32>(1499f, -707f, -1405f)))))) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-683f, var_2.x, -618f)))), vec3<f32>(_wgslsmith_f_op_f32(step(-313f, var_2.x)), _wgslsmith_f_op_f32(trunc(864f)), 321f)))));
    global0 = ~(~_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), max(vec4<u32>(5999u, 1u, 54962u, 52192u), vec4<u32>(9328u, 4294967295u, 0u, 0u))), 51864u));
    let x = u_input.a;
    s_output = StorageBuffer(min(-vec4<i32>(0i, var_1.c, var_0.b.c, var_0.a.c) & _wgslsmith_div_vec4_i32(-vec4<i32>(var_1.c, 30826i, 1i, var_1.c), vec4<i32>(0i, 2147483647i, u_input.a, -7770i)), select(~firstTrailingBit(vec4<i32>(2147483647i, 0i, 0i, u_input.a)), ~max(vec4<i32>(-60442i, u_input.a, 0i, 0i), vec4<i32>(-35401i, var_0.a.c, var_1.c, -2147483647i)), var_0.b.b)), _wgslsmith_add_i32(var_0.a.c, _wgslsmith_mult_i32(-1i, max(countOneBits(61667i), reverseBits(u_input.a)))), vec4<u32>(1u, func_2(select(vec4<i32>(0i, 0i, -1981i, u_input.a), _wgslsmith_add_vec4_i32(vec4<i32>(35926i, var_0.a.c, var_0.b.c, -22981i), vec4<i32>(u_input.a, 14699i, -72208i, var_0.a.c)), vec4<bool>(true, false, false, var_1.a)), Struct_3(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(207f, 1000f, var_2.x, 1226f), vec4<f32>(425f, -1040f, 575f, -188f))), _wgslsmith_f_op_f32(floor(var_2.x))), vec2<f32>(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(abs(var_2.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x))), ~1u << (select(select(112209u, 83937u, var_0.b.a), 1u, var_0.b.b) % 32u), ~25534u));
}

