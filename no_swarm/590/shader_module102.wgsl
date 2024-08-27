struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec2<i32>, 31> = array<vec2<i32>, 31>(vec2<i32>(-31817i, 7020i), vec2<i32>(-7230i, 2147483647i), vec2<i32>(-3734i, 22240i), vec2<i32>(-1i, 1i), vec2<i32>(39807i, -1i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(1i, -1i), vec2<i32>(0i, 0i), vec2<i32>(i32(-2147483648), -108004i), vec2<i32>(i32(-2147483648), -36285i), vec2<i32>(-44829i, 2147483647i), vec2<i32>(-25643i, i32(-2147483648)), vec2<i32>(i32(-2147483648), 22034i), vec2<i32>(50129i, 45679i), vec2<i32>(6095i, 0i), vec2<i32>(25259i, 0i), vec2<i32>(-39149i, 47967i), vec2<i32>(46884i, 12848i), vec2<i32>(0i, 0i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(-11914i, 29931i), vec2<i32>(0i, 71420i), vec2<i32>(-4663i, 0i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(2147483647i, -46203i), vec2<i32>(61693i, i32(-2147483648)), vec2<i32>(-20603i, -1i), vec2<i32>(2147483647i, 5142i), vec2<i32>(0i, -12632i), vec2<i32>(3151i, 1i), vec2<i32>(i32(-2147483648), 1i));

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: vec3<i32>, arg_2: vec4<f32>, arg_3: f32) -> u32 {
    var var_0 = vec2<u32>(_wgslsmith_dot_vec3_u32(~(~firstTrailingBit(vec3<u32>(90226u, u_input.b.x, u_input.b.x))), firstTrailingBit((vec3<u32>(u_input.b.x, 4294967295u, 29010u) | vec3<u32>(u_input.b.x, 1u, 4294967295u)) ^ vec3<u32>(4294967295u, 71069u, 3047u))), ~u_input.b.x);
    var var_1 = ~(_wgslsmith_div_u32(~1u, var_0.x) | (select(4294967295u, 1u, true) >> (u_input.b.x % 32u)));
    let var_2 = Struct_1(arg_0);
    var var_3 = ~arg_1.yx;
    let var_4 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_3, 607f, true))), -650f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-125f)), _wgslsmith_f_op_f32(f32(-1f) * -1206f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-1239f)), -850f, all(vec2<bool>(true, false)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_2 + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_2 - arg_2) + arg_2))), vec4<bool>(true, all(vec3<bool>(false, false, false)) && true, all(vec2<bool>(true, true)), true)));
    return ~(~33256u);
}

fn func_2(arg_0: vec3<u32>, arg_1: u32, arg_2: f32, arg_3: vec4<i32>) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_mod_i32(_wgslsmith_sub_i32(~1i, _wgslsmith_div_i32(arg_3.x, u_input.a)), _wgslsmith_mod_i32(_wgslsmith_div_i32(global0.a, 20360i), _wgslsmith_mult_i32(arg_3.x, 28557i))) << (_wgslsmith_div_u32(~func_3(-5898i, arg_3.zzx, vec4<f32>(arg_2, arg_2, arg_2, -567f), -2634f), 24617u) % 32u));
    let var_1 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-749f, arg_2, _wgslsmith_f_op_f32(ceil(arg_2)), arg_2), vec4<f32>(_wgslsmith_div_f32(arg_2, _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2, 1327f) + arg_2)), -412f, 1264f, _wgslsmith_f_op_f32(min(arg_2, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_2)))))), vec4<bool>(false, true, !any(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false))), (_wgslsmith_clamp_u32(u_input.b.x, u_input.b.x, 1u) & abs(arg_0.x)) > _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(u_input.b.x, 31401u, arg_1, u_input.b.x)), vec4<u32>(arg_0.x, 4294967295u, arg_1, u_input.b.x)))));
    var var_2 = var_0;
    var var_3 = u_input.a;
    let var_4 = -2187f;
    return var_0;
}

fn func_1(arg_0: vec3<i32>, arg_1: vec3<f32>, arg_2: vec3<f32>, arg_3: vec2<bool>) -> vec2<bool> {
    var var_0 = countOneBits(arg_0.x | arg_0.x);
    global0 = func_2(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, 1u), vec3<u32>(~_wgslsmith_sub_u32(u_input.b.x, u_input.b.x), _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(1u, u_input.b.x), vec2<u32>(u_input.b.x, u_input.b.x)), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b.x, 100164u), u_input.b, vec2<u32>(5996u, 0u))), ~(~79263u)), ~(~(vec3<u32>(u_input.b.x, 24122u, 29702u) >> (vec3<u32>(u_input.b.x, u_input.b.x, 0u) % vec3<u32>(32u))))), ~0u, -2310f, u_input.c >> (~vec4<u32>(~4294967295u, ~0u, 0u, ~42928u) % vec4<u32>(32u)));
    let var_1 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(arg_2.x + 1099f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(floor(-388f)))) + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-arg_1.xy), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.x, arg_2.x)))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.x, arg_1.x) + vec2<f32>(arg_1.x, 2566f)), _wgslsmith_f_op_vec2_f32(step(arg_1.zz, arg_2.xx))))))), vec2<f32>(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1.x))))));
    var var_2 = _wgslsmith_mult_vec4_i32(abs(vec4<i32>(0i, _wgslsmith_sub_i32(u_input.a, 0i) >> (_wgslsmith_mult_u32(u_input.b.x, 36113u) % 32u), _wgslsmith_mod_i32(_wgslsmith_mult_i32(u_input.c.x, u_input.a), _wgslsmith_mult_i32(1i, 23480i)), _wgslsmith_sub_i32(min(2147483647i, u_input.c.x), abs(arg_0.x)))), u_input.c);
    var var_3 = vec4<u32>(84189u, ~u_input.b.x, u_input.b.x, ~(~_wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(1u, 4294967295u)))) & vec4<u32>(4294967295u, ~firstTrailingBit(~1u), ~select(u_input.b.x, ~u_input.b.x, arg_3.x), u_input.b.x);
    return arg_3;
}

fn func_4(arg_0: f32, arg_1: vec2<bool>) -> bool {
    global1 = array<vec2<i32>, 31>();
    let var_0 = vec3<i32>(10983i, firstLeadingBit(func_2(vec3<u32>(reverseBits(46876u), u_input.b.x | u_input.b.x, min(0u, 117256u)), ~(~4294967295u), _wgslsmith_f_op_f32(736f + _wgslsmith_div_f32(arg_0, 196f)), firstLeadingBit(~vec4<i32>(0i, global0.a, 12683i, -2147483647i))).a), -global0.a);
    var var_1 = var_0.x;
    var_1 = -(firstLeadingBit(~global0.a) & select(u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(-29357i, global0.a, var_0.x, -18579i), u_input.c), true)) ^ -((_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, -9792i, global0.a), var_0) << (1u % 32u)) >> (reverseBits(4294967295u) % 32u));
    let var_2 = false;
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(_wgslsmith_f_op_f32(-302f * 489f), select(!func_1(-u_input.c.wzx, _wgslsmith_f_op_vec3_f32(vec3<f32>(-1236f, 1104f, 1288f) - vec3<f32>(-444f, 206f, -1258f)), vec3<f32>(394f, -733f, -388f), vec2<bool>(false, true)), !select(vec2<bool>(true, false), vec2<bool>(true, true), true), select(false, !any(vec2<bool>(false, true)), any(vec3<bool>(true, true, true)))));
    let var_1 = abs(global0.a);
    let var_2 = abs(~(~select(~vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<u32>(0u, 66202u, 0u), func_4(-949f, vec2<bool>(false, true)))));
    let var_3 = Struct_1(min(func_2(~vec3<u32>(67124u, 4294967295u, 37528u), 97847u, _wgslsmith_f_op_f32(abs(1102f)), u_input.c).a, u_input.c.x));
    var var_4 = select(!select(vec3<bool>(true, any(vec3<bool>(false, false, true)), true), vec3<bool>(true, true, true), func_1(vec3<i32>(global0.a, var_1, -2147483647i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1039f, 1455f, 548f)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(428f, -742f, 1041f), vec3<f32>(-198f, -514f, -386f))), vec2<bool>(false, false)).x), vec3<bool>(func_4(873f, vec2<bool>(true, true)), !(!func_1(u_input.c.xxy, vec3<f32>(1181f, -349f, 1086f), vec3<f32>(496f, -1364f, -258f), vec2<bool>(false, true)).x), !(var_2.x == 1u)), true);
    var var_5 = !select(!var_4.yx, !(!vec2<bool>(false, var_4.x)), true);
    global1 = array<vec2<i32>, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-603f, -789f) + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(554f, -587f), vec2<f32>(-610f, -385f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-214f, -758f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1403f, 961f)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1386f, -766f)))) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-341f, -2341f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-328f, 102f))))), func_4(-660f, vec2<bool>(var_4.x, !var_4.x)))), ~(~(~vec4<u32>(u_input.b.x, 0u, 63059u, var_2.x))));
}

