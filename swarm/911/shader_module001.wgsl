struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<bool>,
    d: u32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_1,
    c: bool,
    d: vec2<f32>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(0u, 1u, 32769u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec2<f32>) -> f32 {
    var var_0 = -_wgslsmith_clamp_vec2_i32(select(vec2<i32>(-2147483647i, -21218i), vec2<i32>(-1i, u_input.a), false) << (vec2<u32>(abs(u_input.c), _wgslsmith_dot_vec2_u32(global0.zz, u_input.b.ww)) % vec2<u32>(32u)), ((vec2<i32>(u_input.a, -15453i) | vec2<i32>(-1i, 1i)) & -vec2<i32>(u_input.a, u_input.a)) << (u_input.b.yz % vec2<u32>(32u)), _wgslsmith_clamp_vec2_i32(select(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, u_input.a), vec2<bool>(false, false)) | vec2<i32>(u_input.a, -1i), vec2<i32>(firstLeadingBit(0i), 1i), vec2<i32>(~34134i, u_input.a)));
    global0 = select(_wgslsmith_sub_vec3_u32(abs(_wgslsmith_mult_vec3_u32(~vec3<u32>(4294967295u, u_input.c, 73901u), ~u_input.b.xyy)), _wgslsmith_sub_vec3_u32(abs(vec3<u32>(16196u, 15046u, 71475u)), _wgslsmith_add_vec3_u32(u_input.b.zxw, vec3<u32>(global0.x, global0.x, global0.x)))), countOneBits(select(firstTrailingBit(u_input.b.yww), _wgslsmith_sub_vec3_u32(vec3<u32>(43654u, 23155u, 1u), vec3<u32>(1930u, 0u, u_input.b.x)), true)) >> (vec3<u32>(reverseBits(1u) | u_input.c, ~20511u, 1u) % vec3<u32>(32u)), true);
    var var_1 = select(!vec3<bool>(true, false, true || (global0.x >= u_input.c)), select(select(vec3<bool>(true, true, true), !select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true)), vec3<bool>(any(vec3<bool>(false, true, true)), true, 0i < var_0.x)), vec3<bool>(all(vec3<bool>(true, true, true)), true, true), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), false)), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true))), vec3<bool>(all(vec3<bool>(false, true, false)), all(vec3<bool>(false, false, false)), true))), !select(vec3<bool>(true, any(vec4<bool>(false, false, false, false)), true), !select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true)), vec3<bool>(true, true, true)));
    let var_2 = !(!(var_1.x & ((2147483647i ^ var_0.x) < abs(u_input.a))));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1679f, arg_0.x, -401f, arg_1.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1147f, arg_0.x, arg_0.x, -343f) - vec4<f32>(-2270f, -839f, arg_0.x, arg_1.x)))))));
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(var_3.x))));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec3<u32>, arg_2: Struct_1) -> vec3<u32> {
    global0 = ~(u_input.b.ywx & vec3<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(u_input.b, vec4<u32>(arg_0.x, u_input.c, u_input.c, arg_1.x)), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, arg_0.x, arg_0.x, u_input.c), vec4<u32>(arg_1.x, 1u, 6116u, 10507u))), u_input.c, _wgslsmith_add_u32(~56235u, arg_1.x)));
    var var_0 = 1u;
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(func_3(vec3<f32>(1000f, 1742f, 115f), vec2<f32>(1038f, -1319f))), _wgslsmith_f_op_f32(floor(-245f)), _wgslsmith_f_op_f32(f32(-1f) * -2729f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2360f, 1349f, -947f)), true))));
    let var_2 = min(-_wgslsmith_sub_vec2_i32(select(vec2<i32>(u_input.a, 22870i), vec2<i32>(8400i, -16639i), vec2<bool>(false, true)), ~firstLeadingBit(vec2<i32>(10419i, -2147483647i))), _wgslsmith_div_vec2_i32(~(-vec2<i32>(21465i, 43758i)), vec2<i32>(2147483647i, _wgslsmith_mod_i32(~arg_2.b, 1i))));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.x * var_1.x), _wgslsmith_f_op_f32(176f - var_1.x)), _wgslsmith_f_op_f32(-387f * var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), -603f)));
    return countOneBits(firstTrailingBit(~vec3<u32>(~10529u, 4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.x, 4294967295u), u_input.b.yz))));
}

fn func_1() -> bool {
    global0 = ~_wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(~u_input.b.yzy, abs(u_input.b.zyx), func_2(u_input.b.yzx, u_input.b.yxw, Struct_1(1i, u_input.a))) | vec3<u32>(global0.x, _wgslsmith_mult_u32(1u, 0u), _wgslsmith_mod_u32(0u, global0.x)), u_input.b.zyz);
    let var_0 = ~u_input.a;
    global0 = firstTrailingBit(vec3<u32>(55066u, func_2(u_input.b.xzx, vec3<u32>(max(global0.x, 1u), 78018u, _wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, 59016u, u_input.c), vec3<u32>(0u, u_input.c, 1u))), Struct_1(-u_input.a, var_0)).x, 1u));
    let var_1 = all(vec3<bool>(any(select(vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false)), true)), (1u >> (u_input.b.x % 32u)) <= ~4294967295u, any(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)), select(vec2<bool>(true, false), vec2<bool>(false, false), true)))));
    let var_2 = Struct_2(Struct_1(firstLeadingBit(-(~u_input.a)), select(-var_0, u_input.a, true)), Struct_1(_wgslsmith_dot_vec3_i32(firstLeadingBit(reverseBits(vec3<i32>(var_0, 1237i, -72066i))), _wgslsmith_sub_vec3_i32(abs(vec3<i32>(2147483647i, var_0, -1982i)), vec3<i32>(-45561i, var_0, u_input.a))), var_0), !select(select(select(vec4<bool>(var_1, false, true, var_1), vec4<bool>(var_1, true, false, true), var_1), !vec4<bool>(false, var_1, var_1, var_1), select(vec4<bool>(var_1, var_1, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, var_1))), select(vec4<bool>(false, var_1, false, var_1), select(vec4<bool>(var_1, false, var_1, var_1), vec4<bool>(true, true, true, true), var_1), var_1), true), ~15862u);
    return reverseBits(global0.x) <= firstLeadingBit(~abs(61940u));
}

fn func_4(arg_0: bool) -> vec3<u32> {
    let var_0 = ~select(select(1u, _wgslsmith_dot_vec4_u32(u_input.b, ~vec4<u32>(1u, 0u, 49775u, 0u)), any(vec3<bool>(false, false, false))), u_input.b.x, arg_0);
    global0 = ~func_2(~_wgslsmith_mult_vec3_u32(vec3<u32>(35739u, 4294967295u, var_0), ~u_input.b.xxx), abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, global0.x, 112u), ~vec3<u32>(var_0, 0u, 1u), ~u_input.b.yzx)), Struct_1(~u_input.a >> (global0.x % 32u), i32(-1i) * -17514i));
    var var_1 = !vec2<bool>(arg_0, any(vec2<bool>(arg_0, select(arg_0, false, false))));
    var var_2 = vec3<i32>(firstLeadingBit(i32(-1i) * -u_input.a), reverseBits(u_input.a << (abs(~1u) % 32u)), 26308i);
    var_2 = _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, ~_wgslsmith_div_i32(var_2.x, reverseBits(32622i)), var_2.x), -vec3<i32>(1i, _wgslsmith_sub_i32(var_2.x, 30296i) & -2147483647i, var_2.x));
    return ~firstTrailingBit(~_wgslsmith_add_vec3_u32(~u_input.b.zzy, ~u_input.b.xzy));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_mod_vec3_u32(func_4(func_1()), ~vec3<u32>(func_4(true).x, 27941u, ~global0.x));
    let var_0 = ~u_input.c;
    var var_1 = _wgslsmith_sub_u32(u_input.c, global0.x);
    var_1 = u_input.c;
    global0 = vec3<u32>(~15561u, u_input.c, 635u);
    var var_2 = _wgslsmith_mult_u32(var_0, 44895u);
    var var_3 = Struct_1(firstLeadingBit(reverseBits(-select(10677i, 0i, false))), 1i);
    var var_4 = Struct_1(-u_input.a, var_3.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(func_3(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-731f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3(vec3<f32>(676f, 1609f, -1013f), vec2<f32>(155f, 337f))))), 1000f), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1229f, -1307f) * vec2<f32>(-932f, -649f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-589f, -197f))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-568f, -1308f)))), select(vec2<bool>(false, false), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-463f, _wgslsmith_f_op_f32(f32(-1f) * -701f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(321f)) + _wgslsmith_f_op_f32(-1316f + 1000f)))), vec3<u32>(abs(98410u), ~global0.x, ~(~u_input.b.x)) | func_2(select(vec3<u32>(4052u, 51902u, global0.x), func_4(true), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true))), select(u_input.b.wzy, u_input.b.yww << (vec3<u32>(4294967295u, 4294967295u, 4294967295u) % vec3<u32>(32u)), vec3<bool>(true, true, true)), Struct_1(~var_4.b, _wgslsmith_add_i32(0i, 13714i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1270f + _wgslsmith_f_op_f32(_wgslsmith_div_f32(-337f, 170f) + _wgslsmith_f_op_f32(385f + -829f))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(967f, _wgslsmith_f_op_f32(f32(-1f) * -1074f), true))))));
}

