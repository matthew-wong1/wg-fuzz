struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: Struct_1,
    d: f32,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<bool>) -> i32 {
    let var_0 = vec2<bool>(true, arg_0.x);
    var var_1 = u_input.a;
    let var_2 = Struct_2(arg_0.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -598f), _wgslsmith_f_op_f32(round(1118f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1805f * -1807f))) - 1694f))), Struct_1(select(vec2<bool>(false, true), select(arg_0.yy, !var_0, !arg_0.x), var_0.x)), _wgslsmith_f_op_f32(175f * -226f), min(_wgslsmith_sub_vec2_u32(abs(vec2<u32>(31591u, 1u)) | ~vec2<u32>(u_input.d, u_input.a), firstLeadingBit(vec2<u32>(u_input.a, u_input.d)) << (~vec2<u32>(u_input.b, 4294967295u) % vec2<u32>(32u))), countOneBits(_wgslsmith_div_vec2_u32(~vec2<u32>(u_input.a, u_input.d), vec2<u32>(4294967295u, 1u)))));
    var var_3 = var_2.b;
    let var_4 = 18071i;
    return -2147483647i;
}

fn func_2(arg_0: f32) -> vec4<bool> {
    global0 = vec3<i32>(-select(u_input.c.x, countOneBits(func_3(vec4<bool>(false, false, true, true))), !(1i >= global0.x)), u_input.c.x, global0.x);
    let var_0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, -1915f, arg_0, 1000f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, -1103f, arg_0, 157f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-170f, 1234f, arg_0, arg_0) + vec4<f32>(1468f, -552f, arg_0, arg_0))))));
    global0 = u_input.c.xxw;
    let var_1 = reverseBits(firstLeadingBit(_wgslsmith_clamp_vec2_u32(abs(~vec2<u32>(0u, u_input.b)), _wgslsmith_add_vec2_u32(~vec2<u32>(4294967295u, u_input.a), ~vec2<u32>(0u, 1u)), ~vec2<u32>(u_input.d, u_input.d) | ~vec2<u32>(u_input.a, 5621u))));
    let var_2 = u_input.c.x;
    return vec4<bool>(true, false, (1u == u_input.d) && !all(vec4<bool>(false, true, false, false)), _wgslsmith_mult_u32(~_wgslsmith_add_u32(94223u, 0u), 1u) != _wgslsmith_dot_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.d, 0u, var_1.x, 1u), vec4<u32>(u_input.b, u_input.a, 34747u, u_input.d), vec4<u32>(57801u, var_1.x, 1u, var_1.x)), (vec4<u32>(var_1.x, var_1.x, 4294967295u, 41686u) | vec4<u32>(u_input.a, 1u, var_1.x, u_input.a)) ^ vec4<u32>(var_1.x, 12238u, var_1.x, 70732u)));
}

fn func_1() -> Struct_1 {
    global0 = _wgslsmith_sub_vec3_i32(-_wgslsmith_add_vec3_i32(~_wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, global0.x, global0.x), u_input.c.zyx), min(u_input.c.zzz, vec3<i32>(-2147483647i, global0.x, 1i))), _wgslsmith_mult_vec3_i32(u_input.c.xyw, u_input.c.yyw));
    var var_0 = Struct_2(!all(select(func_2(1000f), vec4<bool>(true, true, true, true), func_2(676f))), 151f, Struct_1(vec2<bool>(true, any(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), false)))), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -727f))), 1f))), vec2<u32>(~(~u_input.b), max(_wgslsmith_mult_u32(1u, u_input.d), _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 34957u, u_input.a), vec3<u32>(81763u, u_input.a, u_input.d)), vec3<u32>(u_input.a, 54791u, u_input.d)))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0.b, 1556f), vec2<f32>(var_0.d, var_0.b))))) + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(487f, var_0.b)))) + vec2<f32>(-909f, var_0.b)));
    var_1 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b, _wgslsmith_f_op_f32(197f * var_1.x)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, var_0.d)) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(424f, var_0.d))))))));
    var var_2 = ~_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(abs(var_0.e.x), u_input.b, ~var_0.e.x, min(27777u, 0u)), min(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d, 11525u, var_0.e.x, var_0.e.x), vec4<u32>(var_0.e.x, 4294967295u, u_input.d, var_0.e.x)), ~vec4<u32>(u_input.d, 1u, 0u, 1269u))), vec4<u32>(u_input.b, var_0.e.x, select(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.e.x, 1u), vec2<u32>(0u, 0u)), var_0.e.x << (28u % 32u), var_0.a), u_input.a >> (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, u_input.b, var_0.e.x, 52702u), vec4<u32>(4294967295u, var_0.e.x, 3438u, 31630u)) % 32u)));
    return var_0.c;
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: vec4<bool>) -> Struct_1 {
    global0 = _wgslsmith_clamp_vec3_i32(-(~u_input.c.xzz), u_input.c.yzx, u_input.c.xxz);
    var var_0 = all(!vec4<bool>((arg_0 <= 4294967295u) && (true | arg_2.x), arg_2.x, arg_1.a.x, _wgslsmith_f_op_f32(select(608f, -767f, arg_1.a.x)) > -844f));
    return func_1();
}

fn func_5(arg_0: i32, arg_1: bool, arg_2: Struct_1) -> bool {
    global0 = -select(_wgslsmith_mult_vec3_i32(~vec3<i32>(-67167i, 0i, arg_0) | _wgslsmith_mod_vec3_i32(vec3<i32>(global0.x, 2147483647i, global0.x), vec3<i32>(1i, u_input.c.x, arg_0)), reverseBits(vec3<i32>(-1i, u_input.c.x, arg_0))), u_input.c.wwz, !vec3<bool>(false, func_1().a.x, true));
    let var_0 = Struct_2(true, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -857f) + _wgslsmith_div_f32(505f, -1204f))), _wgslsmith_f_op_f32(-213f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1222f, 1173f, arg_2.a.x)) - -271f)), true)), arg_2, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1584f)) * -246f), _wgslsmith_f_op_f32(-241f - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(1327f, -616f, true))))))), _wgslsmith_mod_vec2_u32(countOneBits(vec2<u32>(u_input.b, u_input.b) << (vec2<u32>(1u, u_input.b) % vec2<u32>(32u))) ^ ~firstTrailingBit(vec2<u32>(77937u, u_input.b)), vec2<u32>(_wgslsmith_dot_vec3_u32(max(vec3<u32>(u_input.b, 91615u, 1u), vec3<u32>(u_input.d, 1u, u_input.a)), ~vec3<u32>(0u, u_input.b, u_input.b)), u_input.b)));
    global0 = -vec3<i32>(global0.x, _wgslsmith_sub_i32(u_input.c.x, global0.x), -45530i);
    var var_1 = Struct_1(func_2(_wgslsmith_f_op_f32(-119f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.d))))).zz);
    var_1 = Struct_1(func_1().a);
    return any(arg_2.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(367f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -632f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1000f)), 1308f)))));
    let var_2 = 2147483647i;
    let var_3 = Struct_2(true && func_5(41272i, var_0, func_4(u_input.a | u_input.b, func_1(), !vec4<bool>(var_0, var_0, true, var_0))), _wgslsmith_f_op_f32(sign(-977f)), func_4(_wgslsmith_mod_u32(4294967295u, max(_wgslsmith_add_u32(32542u, 1u), _wgslsmith_mod_u32(u_input.b, 1u))), func_4(~u_input.d, Struct_1(vec2<bool>(var_0, var_0)), vec4<bool>(true, true, any(vec4<bool>(true, var_0, var_0, false)), true)), !vec4<bool>(true || var_0, any(vec4<bool>(true, var_0, false, true)), !var_0, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1786f, -636f))), vec2<u32>(firstTrailingBit(~0u), 16029u));
    let var_4 = u_input.c;
    var var_5 = Struct_2(any(!(!select(vec4<bool>(false, var_3.a, false, var_0), vec4<bool>(var_0, var_3.c.a.x, var_0, var_3.c.a.x), vec4<bool>(true, var_0, true, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1))) + _wgslsmith_f_op_f32(select(-540f, _wgslsmith_f_op_f32(min(-161f, var_3.d)), func_2(-685f).x)))), func_4(~10373u, var_3.c, func_2(_wgslsmith_f_op_f32(min(var_1, _wgslsmith_f_op_f32(-1378f + -959f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(var_1, _wgslsmith_div_f32(var_1, var_1))))), _wgslsmith_f_op_f32(abs(2139f))), _wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(firstLeadingBit(vec2<u32>(u_input.a, 1u) >> (var_3.e % vec2<u32>(32u))), ~var_3.e), ((vec2<u32>(4294967295u, 4294967295u) & var_3.e) << (var_3.e % vec2<u32>(32u))) & vec2<u32>(var_3.e.x & var_3.e.x, 59716u), var_3.e));
    global0 = _wgslsmith_mult_vec3_i32(vec3<i32>(var_4.x, ~(-2293i >> (var_5.e.x % 32u)), ~14414i), var_4.zxx);
    let var_6 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(0u, var_3.e.x, abs(select(vec4<u32>(14432u | var_5.e.x, 34106u, _wgslsmith_mod_u32(0u, 40116u), _wgslsmith_div_u32(37229u, 1u)), ~(vec4<u32>(u_input.b, 36332u, var_5.e.x, 69616u) | vec4<u32>(var_5.e.x, 4294967295u, u_input.a, 48627u)), select(func_2(var_5.d).x, var_3.a, all(vec3<bool>(true, false, true))))));
}

