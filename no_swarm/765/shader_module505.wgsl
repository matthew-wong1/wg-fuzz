struct Struct_1 {
    a: i32,
    b: bool,
    c: bool,
    d: vec2<bool>,
    e: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<i32>,
}

struct Struct_3 {
    a: f32,
    b: vec3<i32>,
    c: f32,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_2;

var<private> global2: bool;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_4, arg_1: vec3<bool>, arg_2: vec2<bool>) -> f32 {
    let var_0 = ~arg_0.c;
    let var_1 = Struct_1(~_wgslsmith_sub_i32(~2147483647i, _wgslsmith_clamp_i32(~u_input.b.x, min(u_input.a.x, global1.b.x), global1.b.x)), !any(vec2<bool>(var_0 == arg_0.c, !arg_2.x)), any(select(vec4<bool>(arg_1.x, all(vec4<bool>(true, arg_1.x, arg_1.x, false)), false, all(arg_1)), !(!vec4<bool>(arg_1.x, true, arg_1.x, false)), vec4<bool>(true, false, all(arg_1.xx), any(vec4<bool>(true, true, true, arg_0.b.c))))), !select(!(!arg_2), select(vec2<bool>(false, true), arg_0.b.d, select(vec2<bool>(false, true), arg_1.xy, false)), true), global1.b.x);
    var var_2 = !vec4<bool>(true, arg_1.x, false, any(vec2<bool>(true & arg_2.x, arg_0.b.d.x)));
    global1 = Struct_2(global1.a, u_input.b);
    let var_3 = vec4<u32>(firstLeadingBit(~_wgslsmith_clamp_u32(var_0, 4294967295u, firstLeadingBit(var_0))), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(~(~vec4<u32>(51301u, var_0, 27448u, 110687u)), vec4<u32>(1u, arg_0.c, ~var_0, 1u)), _wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(4294967295u, var_0, 16138u, var_0), ~vec4<u32>(arg_0.c, var_0, 4406u, 53942u)), _wgslsmith_clamp_vec4_u32(~vec4<u32>(var_0, arg_0.c, arg_0.c, var_0), vec4<u32>(1u, 1u, 22236u, 0u) & vec4<u32>(1u, 53362u, 0u, var_0), vec4<u32>(var_0, var_0, 0u, 56518u)))), ~_wgslsmith_clamp_u32(arg_0.c, _wgslsmith_div_u32(18736u, _wgslsmith_sub_u32(arg_0.c, var_0)), 1u), _wgslsmith_mult_u32(0u, 87066u));
    return global1.a.x;
}

fn func_2(arg_0: bool) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(floor(global1.a.x)), _wgslsmith_div_f32(577f, global1.a.x), _wgslsmith_f_op_f32(func_3(Struct_4(Struct_3(global1.a.x, vec3<i32>(u_input.a.x, u_input.b.x, u_input.a.x), 584f, Struct_1(u_input.a.x, arg_0, false, vec2<bool>(arg_0, true), -1i)), Struct_1(-11001i, arg_0, true, vec2<bool>(false, true), global1.b.x), 43215u), vec3<bool>(arg_0, arg_0, arg_0), vec2<bool>(false, true))), _wgslsmith_f_op_f32(step(-450f, 309f))))) - vec4<f32>(global1.a.x, -804f, _wgslsmith_f_op_f32(select(-1648f, _wgslsmith_f_op_f32(round(-690f)), !arg_0)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-423f * global1.a.x))))));
    let var_1 = Struct_3(var_0.x, ~vec3<i32>(u_input.b.x, 3984i, u_input.b.x) ^ -((u_input.a | u_input.b.wxx) & reverseBits(vec3<i32>(-2147483647i, u_input.a.x, global1.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(738f + 1159f), global1.a.x, true))))), Struct_1(max(i32(-1i) * -u_input.b.x, -33303i), (min(-20136i, u_input.b.x) >= _wgslsmith_div_i32(global1.b.x, -26739i)) || arg_0, false || select(true, !arg_0, false), vec2<bool>(arg_0, true | all(vec2<bool>(true, true))), global1.b.x | u_input.b.x));
    let var_2 = select(select(var_1.d.d, select(var_1.d.d, !var_1.d.d, var_1.d.d), var_1.d.b), !(!(!vec2<bool>(arg_0, false))), true);
    let var_3 = ~_wgslsmith_mod_u32(_wgslsmith_clamp_u32(~abs(35188u), _wgslsmith_dot_vec2_u32(max(vec2<u32>(4294967295u, 0u), vec2<u32>(4294967295u, 4294967295u)), vec2<u32>(1u, 1u)), abs(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, 1u, 1u), vec4<u32>(0u, 0u, 0u, 4294967295u)))), abs(firstLeadingBit(1u)));
    let var_4 = !(_wgslsmith_f_op_f32(var_1.c - global1.a.x) >= -577f);
    return var_1.d;
}

fn func_1() -> vec4<i32> {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-456f - global1.a.x) + 727f), -_wgslsmith_mod_vec3_i32(global1.b.wzz, global1.b.wwy ^ (global1.b.wwy << (vec3<u32>(0u, 75325u, 4294967295u) % vec3<u32>(32u)))), _wgslsmith_f_op_f32(-1f), func_2(false));
    global0 = -2010f > var_0.c;
    var var_1 = _wgslsmith_dot_vec3_u32(~select(~vec3<u32>(1384u, 0u, 4294967295u) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 28565u, 36758u), vec3<u32>(4294967295u, 4294967295u, 31610u), vec3<u32>(4294967295u, 4294967295u, 1566u)) % vec3<u32>(32u)), select(firstLeadingBit(vec3<u32>(23063u, 10397u, 38262u)), ~vec3<u32>(0u, 0u, 36275u), true), !(-525f == var_0.c)), vec3<u32>(max(_wgslsmith_clamp_u32(~48280u, 0u, _wgslsmith_sub_u32(4294967295u, 1u)), 52458u), 35054u, 48975u));
    var var_2 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)), ~vec3<i32>(~(i32(-1i) * -20174i), 2147483647i, countOneBits(1i)), global1.a.x, var_0.d);
    var var_3 = any(vec3<bool>(any(select(select(vec4<bool>(false, true, false, true), vec4<bool>(var_0.d.c, var_0.d.d.x, false, var_0.d.d.x), true), !vec4<bool>(true, var_0.d.c, var_2.d.c, true), true)), var_0.d.d.x, false));
    return _wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(max(50403i, ~global1.b.x), 15938i, var_0.d.e, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -1i, u_input.b.x, 0i) << (vec4<u32>(4684u, 7889u, 35864u, 53803u) % vec4<u32>(32u)), u_input.b)), vec4<i32>(-1i) * -vec4<i32>(var_2.b.x, 0i, u_input.b.x, var_2.d.a), vec4<i32>(49700i, -47669i, -2147483647i ^ var_2.b.x, i32(-1i) * -var_0.d.a)), vec4<i32>(global1.b.x, countOneBits(reverseBits(_wgslsmith_dot_vec4_i32(u_input.b, global1.b))), max(24479i, _wgslsmith_add_i32(_wgslsmith_clamp_i32(var_2.d.e, -1924i, var_0.b.x), i32(-1i) * -30222i)), ~_wgslsmith_add_i32(var_0.d.a >> (67743u % 32u), max(u_input.a.x, var_0.d.e))));
}

fn func_4(arg_0: u32, arg_1: Struct_2) -> bool {
    var var_0 = ~countOneBits(vec3<u32>(arg_0, arg_0, firstTrailingBit(1u)));
    var_0 = ~(~(~vec3<u32>(arg_0, 55624u, ~arg_0)));
    var var_1 = global1.b;
    let var_2 = Struct_4(Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a.x * _wgslsmith_f_op_f32(global1.a.x - arg_1.a.x)) * global1.a.x), _wgslsmith_div_vec3_i32(func_1().zyw, _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a.x, arg_1.b.x, 43005i), vec3<i32>(global1.b.x, -2147483647i, arg_1.b.x), vec3<i32>(-2147483647i, 1i, 2147483647i))), _wgslsmith_f_op_f32(func_3(Struct_4(Struct_3(global1.a.x, vec3<i32>(-34478i, -1i, u_input.b.x), global1.a.x, Struct_1(global1.b.x, true, true, vec2<bool>(false, true), arg_1.b.x)), Struct_1(global1.b.x, true, false, vec2<bool>(true, true), var_1.x), firstLeadingBit(1u)), vec3<bool>(true, arg_1.a.x < arg_1.a.x, all(vec2<bool>(true, true))), func_2(func_2(true).c).d)), func_2(true)), Struct_1(_wgslsmith_dot_vec2_i32(~select(var_1.yw, arg_1.b.wx, vec2<bool>(false, false)), ~firstTrailingBit(vec2<i32>(var_1.x, -1i))), !any(vec2<bool>(true, false)) & true, 1353f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.x + global1.a.x)), vec2<bool>(true, false), ~arg_1.b.x), arg_0);
    global0 = !(!(firstLeadingBit(arg_1.b.x) >= -30851i));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = !func_4(~1u, Struct_2(_wgslsmith_f_op_vec3_f32(trunc(global1.a)), _wgslsmith_sub_vec4_i32(func_1(), global1.b & u_input.b)));
    var var_0 = _wgslsmith_f_op_f32(abs(global1.a.x)) < global1.a.x;
    var var_1 = true;
    let var_2 = ~_wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u)), ~vec2<u32>(max(948u, 4294967295u), ~0u));
    var var_3 = 1u;
    global1 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(global1.a)) * vec3<f32>(1000f, global1.a.x, global1.a.x)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.x, global1.a.x, 1425f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-2845f, global1.a.x, -281f), vec3<f32>(global1.a.x, global1.a.x, global1.a.x)))) + global1.a)), u_input.b);
    var var_4 = _wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(max(max(vec4<i32>(9645i, -1i, 33256i, -35498i), _wgslsmith_mod_vec4_i32(u_input.b, global1.b)), _wgslsmith_mult_vec4_i32(firstLeadingBit(vec4<i32>(-577i, -16052i, u_input.b.x, 31005i)), -vec4<i32>(-2668i, 0i, 21072i, -1i))), vec4<i32>(u_input.a.x, -2147483647i, func_2(all(vec4<bool>(true, false, false, true))).a, -798i)), _wgslsmith_add_vec4_i32(u_input.b, max(vec4<i32>(_wgslsmith_add_i32(0i, u_input.a.x), 92209i, global1.b.x, select(global1.b.x, -1i, false)), ~_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, 33911i, global1.b.x, u_input.b.x), vec4<i32>(-2147483647i, 23575i, 1i, -4956i)))));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, func_1().zzz, var_2.x);
}

