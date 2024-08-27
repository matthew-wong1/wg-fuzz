struct Struct_1 {
    a: i32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: u32, arg_1: vec2<i32>, arg_2: Struct_3, arg_3: vec4<f32>) -> i32 {
    var var_0 = ~(-_wgslsmith_clamp_vec4_i32(-vec4<i32>(-89356i, arg_1.x, -6683i, -2147483647i), _wgslsmith_clamp_vec4_i32(vec4<i32>(25057i, arg_2.a.a, -44607i, arg_2.a.a), vec4<i32>(arg_1.x, -1i, -2147483647i, arg_1.x), vec4<i32>(34903i, 0i, arg_1.x, 2147483647i)), _wgslsmith_add_vec4_i32(vec4<i32>(arg_2.a.a, arg_1.x, arg_1.x, -1i), vec4<i32>(arg_1.x, arg_1.x, -2147483647i, 6233i))) << (max(_wgslsmith_clamp_vec4_u32(firstLeadingBit(vec4<u32>(arg_0, arg_2.b, 49361u, arg_2.b)), _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0, 47247u, 33800u, 56797u), arg_2.a.b, arg_2.a.b), min(arg_2.a.b, arg_2.a.b)), ~vec4<u32>(arg_2.a.b.x, arg_2.a.b.x, u_input.b.x, u_input.b.x) & abs(arg_2.a.b)) % vec4<u32>(32u)));
    var var_1 = firstTrailingBit(_wgslsmith_mult_vec4_i32(select(-firstTrailingBit(vec4<i32>(-1i, -2147483647i, arg_1.x, 2147483647i)), -(~vec4<i32>(arg_2.a.a, arg_1.x, -3770i, var_0.x)), vec4<bool>(true, true, true, true)), -_wgslsmith_mult_vec4_i32(vec4<i32>(arg_2.a.a, -24412i, -6119i, -10235i) << (vec4<u32>(62464u, 17508u, arg_0, 17240u) % vec4<u32>(32u)), vec4<i32>(var_0.x, var_0.x, arg_1.x, var_0.x) << (vec4<u32>(84939u, arg_0, 5339u, 5370u) % vec4<u32>(32u)))));
    var_0 = vec4<i32>(~(-13548i), abs(_wgslsmith_mult_i32(-_wgslsmith_dot_vec2_i32(arg_1, vec2<i32>(arg_1.x, 0i)), ~_wgslsmith_dot_vec2_i32(vec2<i32>(17415i, arg_2.a.a), vec2<i32>(0i, -1i)))), ~(~_wgslsmith_sub_i32(var_1.x, ~1i)), -_wgslsmith_clamp_i32(reverseBits(-1i) >> (min(17092u, arg_2.a.b.x) % 32u), _wgslsmith_mult_i32(_wgslsmith_clamp_i32(21036i, -1i, arg_2.a.a), 1i), -1i));
    var var_2 = -(~2147483647i);
    return 1i;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_3) -> vec2<bool> {
    var var_0 = reverseBits(~vec4<i32>(arg_2.a.a, arg_1.a, _wgslsmith_sub_i32(12228i, arg_1.a), arg_1.a) | vec4<i32>(firstTrailingBit(0i), 14709i, _wgslsmith_add_i32(arg_0.a.x, arg_0.c) | func_3(57477u, arg_0.a, arg_2, vec4<f32>(-255f, 634f, -273f, 1645f)), arg_0.a.x));
    var var_1 = vec2<i32>(func_3(firstTrailingBit(~44766u), arg_0.a, arg_2, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(911f, -1227f, -1283f, -1136f) - vec4<f32>(716f, 1752f, -882f, -315f))) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(665f, 1694f, 1311f, -1278f), vec4<f32>(547f, 282f, 179f, -130f), true)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-390f, 292f, 119f, -1000f))))))), _wgslsmith_mod_i32(_wgslsmith_add_i32(arg_0.a.x, 24391i), _wgslsmith_sub_i32(-(2147483647i >> (u_input.b.x % 32u)), _wgslsmith_clamp_i32(-arg_1.a, arg_1.a << (4294967295u % 32u), -arg_0.c))));
    var var_2 = abs(_wgslsmith_dot_vec4_i32(max(vec4<i32>(-9047i, -2147483647i, -var_0.x, 2147483647i), vec4<i32>(~(-16617i), -2147483647i, firstTrailingBit(34817i), func_3(arg_2.b, vec2<i32>(arg_1.a, arg_2.a.a), arg_2, vec4<f32>(1000f, 706f, -3206f, 372f)))), vec4<i32>(var_0.x, ~23351i, countOneBits(0i), -29300i) | _wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(35091i, 2147483647i, arg_2.a.a, arg_0.a.x), vec4<i32>(var_1.x, var_1.x, 1i, -2147483647i)), -vec4<i32>(arg_1.a, -2147483647i, arg_0.c, var_0.x))));
    var var_3 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1000f, _wgslsmith_f_op_f32(1176f * -1086f)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(464f, 1909f) + vec2<f32>(-355f, -1030f)) - vec2<f32>(-1000f, -803f)) * vec2<f32>(_wgslsmith_f_op_f32(step(-286f, -484f)), 139f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-1406f, _wgslsmith_div_f32(-863f, -379f)) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(1121f, 160f) + vec2<f32>(-426f, -570f)), vec2<f32>(-556f, -460f), true))))));
    let var_4 = _wgslsmith_dot_vec4_u32(~(~vec4<u32>(~arg_2.b, arg_0.b.b.x, ~78283u, _wgslsmith_dot_vec3_u32(arg_2.a.b.zww, vec3<u32>(arg_0.b.b.x, 4294967295u, 10423u)))), vec4<u32>(53836u, _wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(20359u, 110317u)), vec2<u32>(73127u, 37890u) & arg_2.a.b.yy) >> (~arg_2.a.b.x % 32u), ~(abs(0u) | arg_2.b), u_input.a));
    return !vec2<bool>(reverseBits(u_input.a) > ~1u, !(!any(vec3<bool>(false, false, true))));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec2<i32>) -> Struct_1 {
    let var_0 = Struct_2(~min(firstTrailingBit(~vec2<i32>(arg_1.x, arg_1.x)), arg_1), Struct_1(_wgslsmith_add_i32(abs(arg_1.x), firstTrailingBit(-3288i)), vec4<u32>(_wgslsmith_sub_u32(4294967295u, min(18231u, u_input.a)), firstLeadingBit(4294967295u), u_input.b.x, u_input.a)), arg_1.x);
    let var_1 = var_0;
    let var_2 = vec2<bool>(false, all(vec4<bool>(true, true, true, true)));
    global0 = any(!select(!select(var_2, vec2<bool>(var_2.x, var_2.x), vec2<bool>(var_2.x, false)), vec2<bool>(true, true), !func_2(var_1, Struct_1(0i, var_1.b.b), Struct_3(Struct_1(-2147483647i, vec4<u32>(u_input.b.x, var_1.b.b.x, 47279u, 47592u)), 32494u))));
    global0 = var_2.x;
    return Struct_1(var_1.b.a, _wgslsmith_mult_vec4_u32(~firstLeadingBit(firstTrailingBit(var_0.b.b)), _wgslsmith_add_vec4_u32(var_1.b.b, max(~vec4<u32>(var_0.b.b.x, var_1.b.b.x, 1u, var_0.b.b.x), ~vec4<u32>(4294967295u, 0u, u_input.a, var_1.b.b.x)))));
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: bool, arg_3: Struct_1) -> Struct_1 {
    global0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(1123f)))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-2769f, -903f)))));
    global0 = arg_1;
    let var_0 = ~u_input.b.x;
    let var_1 = Struct_3(Struct_1(~(-33246i), _wgslsmith_mod_vec4_u32(func_1(vec3<f32>(-952f, -279f, 649f), ~vec2<i32>(arg_3.a, -1i)).b, vec4<u32>(arg_3.b.x, arg_3.b.x, 868u, min(22914u, var_0)))), ~(~(~(132887u << (var_0 % 32u)))));
    return Struct_1(~(((var_1.a.a >> (1u % 32u)) & var_1.a.a) | arg_3.a), var_1.a.b | firstTrailingBit(min(abs(arg_3.b), ~vec4<u32>(67779u, arg_3.b.x, arg_3.b.x, 3054u))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = false;
    let var_0 = func_4(-21605i, abs(~25436u) >= u_input.b.x, true, func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1533f, -1000f, 242f), vec3<f32>(1035f, 571f, -1064f))), ~_wgslsmith_div_vec2_i32(-vec2<i32>(2147483647i, 0i), vec2<i32>(-1i, -58901i))));
    var var_1 = false;
    var var_2 = _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(var_0.b.x, 30225u)), _wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, u_input.b.x), u_input.b)), var_0.b.x, firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.b.x), vec2<u32>(u_input.a, 0u))), max(_wgslsmith_mult_u32(8124u, var_0.b.x), u_input.b.x)), ~vec4<u32>(4294967295u, 74253u & var_0.b.x, _wgslsmith_mod_u32(55145u, 70355u), 1u)) | vec4<u32>(3606u, _wgslsmith_sub_u32(~_wgslsmith_mult_u32(var_0.b.x, 1u), 12350u), min(~1u, _wgslsmith_add_u32(firstTrailingBit(32414u), var_0.b.x)), abs(0u));
    global0 = false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-917f)))), _wgslsmith_f_op_f32(f32(-1f) * -1438f))), select(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(firstLeadingBit(vec2<u32>(48753u, u_input.b.x)), abs(vec2<u32>(u_input.a, var_0.b.x))), u_input.b), 1u, false));
}

