struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(i32(-2147483648)), Struct_1(i32(-2147483648)));

var<private> global1: f32;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3() -> u32 {
    var var_0 = 1u;
    var_0 = _wgslsmith_mult_u32(~u_input.b, _wgslsmith_clamp_u32(~u_input.c, u_input.c, ~u_input.c));
    var var_1 = Struct_1((-global0.a.a >> (u_input.b % 32u)) | -u_input.e);
    var var_2 = select(vec4<i32>(-8963i, ~_wgslsmith_dot_vec2_i32(vec2<i32>(-18997i, global0.a.a), _wgslsmith_div_vec2_i32(u_input.a.yy, vec2<i32>(u_input.a.x, global0.b.a))), u_input.e, u_input.d.x), _wgslsmith_mult_vec4_i32(-vec4<i32>(var_1.a, -14773i, u_input.a.x | u_input.a.x, _wgslsmith_mult_i32(global0.a.a, 26907i)), min(_wgslsmith_sub_vec4_i32(vec4<i32>(15906i, u_input.e, -2147483647i, 2147483647i), max(vec4<i32>(1i, u_input.a.x, 34i, var_1.a), vec4<i32>(var_1.a, 2147483647i, global0.a.a, -1i))), ~select(vec4<i32>(u_input.d.x, -14069i, var_1.a, u_input.d.x), vec4<i32>(global0.a.a, -2147483647i, global0.a.a, -1806i), true))), true);
    let var_3 = vec2<u32>(_wgslsmith_mult_u32(u_input.b, _wgslsmith_dot_vec4_u32(vec4<u32>(13092u, 0u, u_input.c, 4294967295u), vec4<u32>(u_input.b, 1u, 1u, u_input.c)) & _wgslsmith_sub_u32(u_input.b, u_input.c)), countOneBits(u_input.c)) | ~vec2<u32>(firstTrailingBit(0u & u_input.b), u_input.c);
    return countOneBits(var_3.x);
}

fn func_2(arg_0: u32) -> bool {
    let var_0 = false & !(func_3() != (1u ^ _wgslsmith_dot_vec4_u32(vec4<u32>(37227u, arg_0, u_input.c, 4294967295u), vec4<u32>(arg_0, 1u, u_input.b, u_input.b))));
    var var_1 = true;
    let var_2 = vec4<u32>(~_wgslsmith_add_u32(~u_input.c, arg_0), u_input.b, abs(~u_input.b), 24723u);
    var_1 = any(!(!vec4<bool>(!var_0, true, true, true)));
    global0 = Struct_2(global0.b, global0.b);
    return any(select(select(vec2<bool>(true, true), vec2<bool>(true, false), !var_0 | any(vec4<bool>(false, var_0, var_0, var_0))), !(!select(vec2<bool>(true, false), vec2<bool>(true, var_0), var_0)), -23876i >= -global0.a.a));
}

fn func_1() -> Struct_3 {
    var var_0 = -select(_wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(global0.b.a, -2147483647i, u_input.e, -2147483647i), abs(vec4<i32>(65508i, global0.b.a, u_input.d.x, u_input.a.x))), vec4<i32>(0i, -2147483647i, -16873i, 20001i)), ~(~vec4<i32>(1i, -1i, 2147483647i, global0.a.a) << (vec4<u32>(1u, u_input.c, 0u, u_input.c) % vec4<u32>(32u))), vec4<bool>(true, select(0u, 32617u, true) > _wgslsmith_mult_u32(u_input.c, u_input.b), !func_2(u_input.b), false));
    var var_1 = Struct_3(~u_input.b, _wgslsmith_mod_u32(u_input.c, u_input.c), Struct_1(~(i32(-1i) * -3922i)));
    return Struct_3(u_input.c, reverseBits(u_input.c) | 82314u, var_1.c);
}

fn func_4(arg_0: bool, arg_1: Struct_3, arg_2: vec3<bool>, arg_3: vec3<u32>) -> Struct_2 {
    global0 = Struct_2(Struct_1(min(-2147483647i, -global0.a.a << ((u_input.b << (32492u % 32u)) % 32u))), arg_1.c);
    let var_0 = 1u;
    var var_1 = arg_1;
    let var_2 = vec4<i32>(~1i << (~_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_1.b, u_input.b, 4294967295u), vec4<u32>(var_0, u_input.c, arg_3.x, var_1.a)), u_input.b << (var_0 % 32u)) % 32u), _wgslsmith_sub_i32(abs(1i), -_wgslsmith_sub_i32(global0.b.a, -11913i)), i32(-1i) * -(~arg_1.c.a), var_1.c.a);
    var_1 = arg_1;
    return Struct_2(Struct_1(arg_1.c.a), arg_1.c);
}

fn func_5(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: bool) -> Struct_3 {
    global0 = Struct_2(global0.b, global0.b);
    var var_0 = vec4<bool>(~(~u_input.c) <= (~_wgslsmith_add_u32(12006u, u_input.b) >> (u_input.c % 32u)), any(vec2<bool>(all(!vec2<bool>(true, arg_2)), true || !arg_2)), any(!vec2<bool>(true, all(vec3<bool>(arg_2, arg_2, true)))), any(!(!select(vec3<bool>(true, false, false), vec3<bool>(arg_2, arg_2, arg_2), vec3<bool>(true, arg_2, arg_2)))));
    var var_1 = vec4<i32>(0i, ~_wgslsmith_mult_i32(arg_0.a.a, global0.a.a), -429i, ~(-2147483647i));
    var var_2 = false;
    let var_3 = Struct_3(select(u_input.c, (u_input.b ^ u_input.b) | 0u, !var_0.x) >> (~abs(reverseBits(0u)) % 32u), 4294967295u, arg_0.b);
    return Struct_3(~_wgslsmith_mod_u32(var_3.a, ~firstLeadingBit(34967u)), 1u, var_3.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_4(false, func_1(), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), vec3<bool>(true, false, false), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), false))), abs(~_wgslsmith_mod_vec3_u32(vec3<u32>(27639u, u_input.b, u_input.c), vec3<u32>(u_input.b, u_input.c, u_input.c)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(820f - -777f), 1052f, -678f))), !all(vec4<bool>(true, true, true, true)));
    let var_1 = func_5(func_4(true, func_5(Struct_2(var_0.c, func_4(true, var_0, vec3<bool>(false, true, false), vec3<u32>(var_0.a, 0u, u_input.b)).a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-198f, 1388f, 871f) + vec3<f32>(-1338f, 1436f, 424f))), all(vec4<bool>(false, false, true, true)) | any(vec4<bool>(true, false, true, true))), vec3<bool>(select(30008u >= u_input.c, true, true), true, false), ((vec3<u32>(1u, 55078u, var_0.a) >> (vec3<u32>(u_input.c, u_input.b, u_input.c) % vec3<u32>(32u))) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 1u, var_0.a), vec3<u32>(1u, var_0.a, 2065u), vec3<u32>(68344u, 72640u, var_0.b)) % vec3<u32>(32u))) | vec3<u32>(_wgslsmith_sub_u32(0u, 0u), ~var_0.a, var_0.a & u_input.c)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-440f, _wgslsmith_f_op_f32(floor(-429f)), _wgslsmith_f_op_f32(sign(-2832f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1277f, 894f, 117f)))) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-837f, 1001f, -1650f), vec3<f32>(-886f, 1000f, -1000f), true))))), vec3<bool>(true, func_2(u_input.b), true))), false);
    let var_2 = abs(-u_input.a);
    var var_3 = !(select(_wgslsmith_add_i32(var_1.c.a, countOneBits(global0.b.a)), min(_wgslsmith_mult_i32(10259i, u_input.e), ~var_2.x), func_2(u_input.c)) <= u_input.a.x);
    var var_4 = _wgslsmith_f_op_f32(select(-917f, _wgslsmith_div_f32(981f, -1512f), func_2(var_1.b)));
    var_3 = !all(vec4<bool>(true, true, true, true));
    let var_5 = func_1().c;
    var_3 = true;
    var var_6 = ~abs(min(~(~vec2<i32>(var_1.c.a, 1i)), vec2<i32>(var_5.a, u_input.d.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1229f * -205f), _wgslsmith_f_op_f32(step(377f, 739f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1693f)))) * _wgslsmith_f_op_f32(f32(-1f) * -398f)), ~vec4<u32>(var_1.b ^ _wgslsmith_clamp_u32(u_input.c, u_input.b, var_1.a), ~func_1().a, _wgslsmith_dot_vec2_u32(max(vec2<u32>(19242u, var_0.a), vec2<u32>(1u, 78480u)), vec2<u32>(var_1.a, var_1.a)), ~(~0u)));
}

