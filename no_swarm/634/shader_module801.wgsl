struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<i32>,
    d: f32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: i32, arg_3: vec4<f32>) -> i32 {
    var var_0 = abs(vec2<i32>(arg_2, 5463i));
    let var_1 = arg_3.x >= -885f;
    let var_2 = Struct_1(u_input.a.x, -(~vec4<i32>(_wgslsmith_clamp_i32(-2147483647i, -1i, -1i), arg_2, _wgslsmith_mult_i32(var_0.x, 20002i), arg_2)), vec3<u32>(37139u, arg_1, _wgslsmith_sub_u32(~_wgslsmith_mult_u32(arg_1, arg_1), arg_1)));
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(arg_3.x * 1958f), arg_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1541f, _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(arg_3.x - -225f))), !(false != var_1)))), arg_3.x);
    let var_4 = countOneBits(abs(var_2.c ^ var_2.c));
    return _wgslsmith_mult_i32(-_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(reverseBits(u_input.a), firstTrailingBit(u_input.a), -vec3<i32>(var_2.a, 24044i, -5584i)), -vec3<i32>(var_2.a, u_input.a.x, -41682i)), arg_2);
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = 1000f;
    var var_1 = Struct_1(func_3(arg_0.b.x, arg_0.c.x, u_input.a.x, vec4<f32>(863f, _wgslsmith_f_op_f32(f32(-1f) * -966f), _wgslsmith_f_op_f32(f32(-1f) * -354f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -2904f))))), _wgslsmith_add_vec4_i32(select(_wgslsmith_add_vec4_i32(~vec4<i32>(0i, -1i, -1i, 0i), -vec4<i32>(1i, -18184i, 25006i, 44346i)), ~arg_0.b, select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), false), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false)), true)), vec4<i32>(arg_0.a, -2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.b.x, arg_0.a), vec2<i32>(0i, -24525i)), 32369i) << (((vec4<u32>(0u, arg_0.c.x, arg_0.c.x, arg_0.c.x) & vec4<u32>(1u, 67526u, arg_0.c.x, arg_0.c.x)) | ~vec4<u32>(76174u, arg_0.c.x, 4294967295u, arg_0.c.x)) % vec4<u32>(32u))), firstTrailingBit(~arg_0.c));
    let var_2 = arg_0.b.x;
    var var_3 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1262f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -552f))) - -410f)), Struct_1(max(arg_0.b.x, _wgslsmith_div_i32(i32(-1i) * -2147483647i, ~arg_0.a)), arg_0.b, ~countOneBits(var_1.c)), Struct_1(i32(-1i) * -var_1.b.x, var_1.b, vec3<u32>(arg_0.c.x, _wgslsmith_mod_u32(min(4294967295u, 55091u), 1u), arg_0.c.x)));
    var_0 = -265f;
    return Struct_1(~(-var_2), vec4<i32>(func_3(var_1.a, 41149u, var_3.b.b.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.a.x, 1299f, var_3.a.x, -836f) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_3.a.x, -729f, var_3.a.x, var_3.a.x))))), var_2, -33808i, _wgslsmith_add_i32(_wgslsmith_mod_i32(1i, 1i), -23429i)), ~(~_wgslsmith_div_vec3_u32(vec3<u32>(0u, 4294967295u, 0u) & vec3<u32>(var_3.b.c.x, var_1.c.x, 22509u), vec3<u32>(8159u, arg_0.c.x, 0u))));
}

fn func_4(arg_0: u32, arg_1: vec3<bool>, arg_2: Struct_2) -> vec3<u32> {
    var var_0 = ~vec4<u32>(arg_0, 57292u, _wgslsmith_add_u32(_wgslsmith_sub_u32(10177u, ~arg_0), arg_2.c.c.x), 16726u);
    var_0 = vec4<u32>(~var_0.x, var_0.x, 0u, ~(~firstLeadingBit(~71990u)));
    let var_1 = arg_1.x;
    var var_2 = Struct_1(-_wgslsmith_dot_vec3_i32(-(~vec3<i32>(u_input.a.x, arg_2.b.b.x, u_input.a.x)), firstLeadingBit(u_input.a)), _wgslsmith_sub_vec4_i32(arg_2.b.b, vec4<i32>(func_2(Struct_1(arg_2.c.b.x, arg_2.c.b, vec3<u32>(arg_2.b.c.x, 1u, 1104u))).a, u_input.a.x, 2147483647i, u_input.a.x) >> ((select(vec4<u32>(arg_0, 0u, 36579u, arg_0), vec4<u32>(arg_2.c.c.x, var_0.x, 1u, 1u), vec4<bool>(true, false, true, true)) | ~vec4<u32>(10259u, arg_2.c.c.x, arg_0, 49196u)) % vec4<u32>(32u))), var_0.ywy);
    var_0 = firstLeadingBit(min(vec4<u32>(~max(0u, 1u), 1u, _wgslsmith_dot_vec2_u32(arg_2.c.c.zy, vec2<u32>(61494u, arg_2.b.c.x) << (arg_2.b.c.yz % vec2<u32>(32u))), _wgslsmith_dot_vec2_u32(var_2.c.yx, vec2<u32>(var_0.x, arg_0))), ~select(~vec4<u32>(var_2.c.x, arg_0, 53574u, 4294967295u), ~vec4<u32>(20890u, arg_0, var_2.c.x, 28818u), 18576i < u_input.a.x)));
    return vec3<u32>(var_2.c.x, ~(reverseBits(arg_0) | 0u), 17107u);
}

fn func_5(arg_0: u32, arg_1: i32, arg_2: i32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(-34028i, reverseBits(~(-vec4<i32>(arg_2, arg_2, -2147483647i, u_input.a.x) | min(arg_3.b, vec4<i32>(48519i, arg_1, arg_3.a, -2147483647i)))), firstLeadingBit(func_4(~arg_0, vec3<bool>(true, true, true), Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(1468f, 1890f) * vec2<f32>(-427f, 914f)), arg_3, Struct_1(arg_1, vec4<i32>(37106i, 50609i, u_input.a.x, arg_1), vec3<u32>(arg_3.c.x, arg_0, arg_3.c.x))))));
    let var_1 = select(any(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), true), true)), false, all(!(!select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true)))));
    var var_2 = func_2(arg_3);
    let var_3 = -120f;
    var_2 = Struct_1(countOneBits(abs(-2147483647i)), _wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, 15752i & _wgslsmith_dot_vec3_i32(vec3<i32>(arg_2, u_input.a.x, 18079i), var_0.b.wwx), _wgslsmith_clamp_i32(0i | arg_2, arg_1, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_2, 1i, arg_3.b.x), vec3<i32>(27622i, 34600i, -2147483647i))), -_wgslsmith_div_i32(-4023i, var_2.a)), ~arg_3.b), var_0.c);
    return var_0;
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: f32, arg_3: i32) -> Struct_2 {
    var var_0 = vec3<i32>(arg_0, 18139i, -(~_wgslsmith_mult_i32(arg_3, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, arg_3), vec2<i32>(u_input.a.x, 2147483647i)))));
    let var_1 = func_5(12659u, ~(~u_input.a.x), 2147483647i, Struct_1(var_0.x, vec4<i32>(var_0.x, 0i & (arg_0 | 5361i), u_input.a.x, arg_0), func_4(62682u, vec3<bool>(true, true, true), Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1824f, -229f)), func_2(Struct_1(u_input.a.x, vec4<i32>(var_0.x, 3871i, var_0.x, -2147483647i), vec3<u32>(17398u, 4294967295u, 0u))), func_2(Struct_1(arg_0, vec4<i32>(u_input.a.x, 1i, arg_3, -2147483647i), vec3<u32>(44328u, 12897u, 41537u)))))));
    var_0 = ~u_input.a ^ func_2(Struct_1(-34001i, firstTrailingBit(-vec4<i32>(var_1.a, -61255i, 21900i, var_0.x)), var_1.c)).b.wzz;
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, arg_2, arg_1)), vec3<f32>(_wgslsmith_f_op_f32(abs(530f)), _wgslsmith_f_op_f32(-arg_2), _wgslsmith_div_f32(-1437f, arg_2)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(782f, 401f)), arg_1, _wgslsmith_f_op_f32(-785f + -1593f)))) - _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(942f, 3166f, 1448f), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_2, 975f, -2013f))))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-781f, arg_1, arg_1) - vec3<f32>(arg_1, arg_2, -285f))))));
    var_0 = var_1.b.zwy;
    return Struct_2(_wgslsmith_f_op_vec2_f32(min(var_2.xz, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-1656f, arg_2))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1200f, arg_1) * vec2<f32>(var_2.x, arg_2))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-786f, 407f), var_2.yz) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-155f, arg_2)))))), Struct_1(3495i, ~(~(~vec4<i32>(-13191i, var_1.b.x, 21649i, u_input.a.x))), _wgslsmith_add_vec3_u32(var_1.c, var_1.c)), func_5(select(abs(var_1.c.x), var_1.c.x, false), _wgslsmith_add_i32(-24832i, func_3(~(-13521i), 13902u, func_3(5835i, 4294967295u, -25592i, vec4<f32>(arg_1, 635f, var_2.x, -588f)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-376f, 105f, var_2.x, var_2.x))))), _wgslsmith_dot_vec2_i32(~var_1.b.wy, -vec2<i32>(1i, -20408i)) ^ _wgslsmith_clamp_i32(-24785i, 2147483647i, ~(-18567i)), func_5(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.c.x, 1u, 0u), var_1.c), _wgslsmith_div_i32(abs(arg_3), -var_0.x), 1i, var_1)));
}

fn func_6(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: vec2<f32>) -> vec2<u32> {
    var var_0 = _wgslsmith_div_vec2_u32(arg_1.c.c.zz, countOneBits(arg_1.c.c.zx));
    let var_1 = select(vec3<bool>(all(vec4<bool>(true, true, select(false, true, true), true)), any(vec3<bool>(true, true, true)), -(~arg_1.b.b.x) >= 39327i), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true))), select(vec3<bool>(true, true, all(vec3<bool>(false, false, true))), vec3<bool>(true, arg_2.x >= arg_1.a.x, all(vec3<bool>(true, true, false))), vec3<bool>(true, true, true)), !select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), false), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), select(select(select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), false), vec3<bool>(true, true, true), all(vec3<bool>(false, false, false))), vec3<bool>(true, true, true), !select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), true)), vec3<bool>(true, !all(vec4<bool>(false, false, false, true)), true), false));
    var var_2 = arg_1;
    return _wgslsmith_add_vec2_u32(~(select(arg_1.c.c.zy, arg_1.c.c.zy, vec2<bool>(true, true)) ^ _wgslsmith_div_vec2_u32(arg_1.b.c.yz, arg_1.b.c.xx)) ^ (~(~arg_1.b.c.xz) >> (var_2.c.c.xy % vec2<u32>(32u))), vec2<u32>(arg_1.c.c.x, 4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(vec2<u32>(4294967295u, 5655u));
    var_0 = vec2<u32>(var_0.x, _wgslsmith_mult_u32(~21074u, abs(_wgslsmith_clamp_u32(45238u, 1u, 11007u))));
    var_0 = func_6(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, _wgslsmith_f_op_f32(-664f * -1000f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-165f, -1252f), vec2<f32>(933f, -975f))) * _wgslsmith_div_vec2_f32(vec2<f32>(-617f, -2003f), vec2<f32>(-626f, -400f))), select(vec2<bool>(false, false), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false)), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false)))))), func_1(-28644i, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1753f - 2023f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(905f, -1016f)), 395f)), ~(-17700i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-687f, -334f)) * vec2<f32>(908f, 886f))));
    var var_1 = vec4<u32>(var_0.x, ~(~(~0u)), 38049u, 32602u) & select(abs(reverseBits(countOneBits(vec4<u32>(var_0.x, 0u, var_0.x, 59773u)))), _wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(29961u, 4294967295u, 4294967295u, 49414u), vec4<u32>(1u, 13235u, var_0.x, 1u)), firstTrailingBit(vec4<u32>(var_0.x, 52800u, 24980u, var_0.x))), !all(vec4<bool>(true, true, true, true)));
    let var_2 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1493f + 714f))), -935f))));
    var_0 = vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.x, var_1.x, var_0.x), func_1(u_input.a.x, var_2.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(var_2.x)))), u_input.a.x).c.c), _wgslsmith_div_u32(var_0.x, func_4(~_wgslsmith_sub_u32(var_1.x, 64545u), vec3<bool>(var_2.x < var_2.x, true, false), func_1(min(13081i, u_input.a.x), var_2.x, _wgslsmith_f_op_f32(var_2.x * var_2.x), abs(2147483647i))).x));
    var var_3 = Struct_1(-31565i, firstLeadingBit(max(~(-vec4<i32>(u_input.a.x, -14329i, u_input.a.x, -1i)), -(vec4<i32>(-2147483647i, u_input.a.x, -899i, 2147483647i) ^ vec4<i32>(u_input.a.x, -25051i, 1i, 1i)))), abs(var_1.zyx));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, _wgslsmith_f_op_f32(func_1(~_wgslsmith_mod_i32(0i, u_input.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_2.x)) * _wgslsmith_f_op_f32(-var_2.x)), _wgslsmith_f_op_f32(f32(-1f) * -1607f), func_2(Struct_1(38596i, var_3.b, vec3<u32>(var_3.c.x, 1u, 55267u))).b.x).a.x - 1228f), -var_3.b, var_2.x, vec4<u32>(1u, var_0.x, firstTrailingBit(var_1.x | 7394u), var_1.x));
}

