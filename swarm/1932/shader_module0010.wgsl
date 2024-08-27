struct Struct_1 {
    a: vec3<bool>,
    b: vec4<u32>,
    c: vec2<f32>,
    d: vec3<f32>,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(-58238i, 10887i, -797i, -10527i);

var<private> global1: vec3<f32>;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> bool {
    let var_0 = arg_1;
    let var_1 = all(select(select(!vec4<bool>(var_0.a.x, arg_0, arg_1.a.x, true), select(!vec4<bool>(false, var_0.a.x, arg_0, arg_0), select(vec4<bool>(arg_0, false, true, arg_0), vec4<bool>(false, false, true, arg_1.a.x), vec4<bool>(true, true, true, arg_1.a.x)), select(vec4<bool>(arg_0, false, true, false), vec4<bool>(false, false, false, true), arg_1.a.x)), !select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, arg_1.a.x), var_0.a.x)), select(select(!vec4<bool>(var_0.a.x, var_0.a.x, arg_1.a.x, var_0.a.x), select(vec4<bool>(false, true, true, false), vec4<bool>(arg_0, true, arg_0, arg_1.a.x), true), false), !vec4<bool>(true, false, arg_1.a.x, true), vec4<bool>(true, true, true, true)), !(!(true & arg_0))));
    var var_2 = _wgslsmith_clamp_vec2_i32(vec2<i32>(global0.x, ~(~_wgslsmith_dot_vec2_i32(global0.yz, global0.ww))), vec2<i32>(abs(abs(reverseBits(global0.x))), reverseBits(-_wgslsmith_mod_i32(13516i, u_input.a.x))), firstLeadingBit(vec2<i32>(u_input.a.x >> (1u % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 28756i, u_input.a.x) | global0.xxw, vec3<i32>(global0.x, -2147483647i, global0.x)))));
    return false;
}

fn func_4(arg_0: i32, arg_1: i32, arg_2: Struct_1) -> vec3<f32> {
    let var_0 = arg_2.a.x;
    global0 = vec4<i32>(-1i) * -(~select(vec4<i32>(arg_0, global0.x, -75259i, -53027i) | vec4<i32>(-1i, arg_1, arg_1, arg_1), vec4<i32>(arg_0, 48417i, -15673i, u_input.a.x) ^ vec4<i32>(-1i, arg_1, u_input.a.x, -417i), all(vec3<bool>(false, false, true))));
    global1 = vec3<f32>(_wgslsmith_f_op_f32(-arg_2.d.x), _wgslsmith_f_op_f32(min(global1.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)))))), global1.x);
    var var_1 = vec2<f32>(-1094f, _wgslsmith_f_op_f32(f32(-1f) * -111f));
    global0 = reverseBits(abs(min(~_wgslsmith_add_vec4_i32(vec4<i32>(arg_0, arg_1, u_input.a.x, arg_1), vec4<i32>(-11879i, 1i, -2147483647i, 55425i)), ~reverseBits(vec4<i32>(2147483647i, arg_0, arg_0, 10978i)))));
    return arg_2.d;
}

fn func_2() -> Struct_1 {
    global1 = _wgslsmith_f_op_vec3_f32(func_4(u_input.a.x, -21174i, Struct_1(vec3<bool>((u_input.a.x > -55457i) & func_3(true, Struct_1(vec3<bool>(false, false, true), vec4<u32>(52050u, 0u, 1u, 39771u), global1.yy, vec3<f32>(-117f, -1127f, 1000f), vec4<u32>(4294967295u, 4294967295u, 0u, 54310u))), true, true), select(abs(vec4<u32>(1u, 1u, 1u, 1u)), min(vec4<u32>(0u, 1u, 1u, 4294967295u), vec4<u32>(27363u, 19466u, 89756u, 1u)), any(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), false))), vec2<f32>(-1485f, global1.x), vec3<f32>(303f, global1.x, global1.x), ~vec4<u32>(10782u >> (0u % 32u), ~29764u, 4294967295u, 1u))));
    var var_0 = !select(select(true, true, true), all(select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true))), true);
    var_0 = all(select(vec3<bool>(true, false, select(true, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, false, func_3(true, Struct_1(vec3<bool>(false, true, true), vec4<u32>(0u, 0u, 84147u, 10462u), vec2<f32>(759f, global1.x), vec3<f32>(-511f, -1175f, 2025f), vec4<u32>(4294967295u, 10983u, 1u, 0u)))), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), false)), vec3<bool>(false, true | all(vec2<bool>(true, true)), true)));
    let var_1 = Struct_1(vec3<bool>(all(vec2<bool>(true, true)), (global0.x != u_input.a.x) && (global1.x < global1.x), true), vec4<u32>(countOneBits(4294967295u), 4294967295u, 5916u, ~(~48477u)), vec2<f32>(_wgslsmith_f_op_f32(-1251f * global1.x), _wgslsmith_f_op_f32(502f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-217f))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x + -598f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-143f - 1076f)), 1172f), countOneBits(vec4<u32>(1u, 1u, 1u, 1u)));
    let var_2 = var_1.a.zx;
    return var_1;
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: u32) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, -1447f))) - _wgslsmith_f_op_vec2_f32(arg_0.c + arg_0.d.yx)) + _wgslsmith_f_op_vec2_f32(-arg_0.d.zz));
    let var_1 = arg_0;
    global0 = _wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(0i, 4471i, -1i), vec3<i32>(0i, -1i, global0.x)) ^ _wgslsmith_add_vec3_i32(global0.xwx, vec3<i32>(63705i, 19526i, global0.x)), ~firstTrailingBit(global0.yzw)), 0i, -(~0i), u_input.a.x), ~min(-(~vec4<i32>(global0.x, u_input.a.x, global0.x, global0.x)), firstTrailingBit(vec4<i32>(u_input.a.x, global0.x, u_input.a.x, 2147483647i))));
    var var_2 = var_1;
    let var_3 = _wgslsmith_f_op_f32(-arg_1);
    return ~(~(-abs(-vec4<i32>(-7460i, global0.x, global0.x, global0.x))));
}

fn func_1(arg_0: i32, arg_1: vec4<f32>) -> u32 {
    var var_0 = false;
    let var_1 = global0.zw;
    let var_2 = _wgslsmith_sub_vec4_i32(func_5(func_2(), 2062f, ~(~(~80230u))), _wgslsmith_clamp_vec4_i32(vec4<i32>(global0.x, _wgslsmith_clamp_i32(~var_1.x, _wgslsmith_mult_i32(var_1.x, global0.x), _wgslsmith_div_i32(arg_0, var_1.x)), _wgslsmith_add_i32(_wgslsmith_clamp_i32(arg_0, 1i, u_input.a.x), arg_0), _wgslsmith_sub_i32(~(-1i), _wgslsmith_add_i32(20734i, global0.x))), abs(-(~vec4<i32>(1i, -9466i, u_input.a.x, u_input.a.x))), vec4<i32>(_wgslsmith_add_i32(0i, global0.x), var_1.x, u_input.a.x, arg_0) | (vec4<i32>(1i, 1i, 1i, 1i) >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)))));
    var var_3 = Struct_1(vec3<bool>(any(vec4<bool>(true, true, all(vec3<bool>(true, true, false)), true)), true, !any(vec4<bool>(true, true, true, true))), vec4<u32>(1u, firstLeadingBit(35026u), firstLeadingBit(~23813u), 0u), arg_1.ww, arg_1.zyy, vec4<u32>(1u, 1u, 1u, 1u) | ~select(firstTrailingBit(vec4<u32>(58026u, 4294967295u, 22163u, 13106u)), vec4<u32>(1u, 1u, 1u, 1u), select(false, true, false)));
    var_3 = Struct_1(select(vec3<bool>(!(var_3.a.x || var_3.a.x), var_3.a.x & true, var_3.a.x), select(!var_3.a, vec3<bool>(arg_1.x >= var_3.d.x, true, false), all(!vec3<bool>(false, var_3.a.x, false))), !var_3.a), ~vec4<u32>(countOneBits(var_3.b.x), ~var_3.b.x >> (~6975u % 32u), 1u, _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(var_3.e.zxz, vec3<u32>(var_3.b.x, 9492u, 58278u)), 0u)), vec2<f32>(global1.x, arg_1.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_3.c.x, 745f, -136f)))))), var_3.e);
    return var_3.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec4<i32>(_wgslsmith_mult_i32(u_input.a.x, _wgslsmith_mult_i32(global0.x, -27423i)), ~firstTrailingBit(u_input.a.x), 39374i, firstTrailingBit(u_input.a.x));
    let var_0 = reverseBits(~vec3<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(43070u, 23814u, 0u, 0u), vec4<u32>(60525u, 72514u, 4785u, 4294967295u)), _wgslsmith_mod_u32(0u, 92504u)), 18357u, 4294967295u));
    var var_1 = global1.x;
    global0 = -vec4<i32>(u_input.a.x, (-2147483647i >> (func_1(-6596i, vec4<f32>(global1.x, -1000f, global1.x, 750f)) % 32u)) | 0i, 2147483647i, _wgslsmith_sub_i32(global0.x, i32(-1i) * -1i));
    global0 = -_wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(-vec4<i32>(u_input.a.x, -1i, 0i, u_input.a.x), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, 0i, 406i, 31040i), vec4<i32>(global0.x, global0.x, -1i, u_input.a.x))), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(27284i, u_input.a.x), vec2<i32>(-2147483647i, -2249i)), max(-1i, u_input.a.x), global0.x, u_input.a.x)) << (abs((abs(vec4<u32>(24515u, 62900u, 1u, var_0.x)) | vec4<u32>(0u, 0u, var_0.x, 0u)) >> (max(~vec4<u32>(var_0.x, var_0.x, var_0.x, 0u), vec4<u32>(1669u, var_0.x, 0u, 83893u)) % vec4<u32>(32u))) % vec4<u32>(32u));
    var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(global1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1271f)));
    let var_2 = func_2();
    let var_3 = _wgslsmith_f_op_f32(-var_2.c.x);
    global1 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-639f, -1808f, var_2.d.x) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_2.d) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.d.x, -1000f, -1000f) * var_2.d)))))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_dot_vec2_i32(abs(vec2<i32>(11278i, u_input.a.x)), -vec2<i32>(8508i, -2147483647i)) & max(global0.x, ~0i >> (var_2.b.x % 32u)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1408f))), var_0.x, ~(~firstLeadingBit(~vec2<u32>(35456u, 44531u))));
}

