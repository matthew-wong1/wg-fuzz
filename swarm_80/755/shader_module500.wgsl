struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: vec3<f32> = vec3<f32>(372f, 538f, -1631f);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec4<bool>) -> vec4<u32> {
    global0 = vec2<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(global0.x, -467f)))))));
    let var_0 = false;
    global1 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, _wgslsmith_f_op_f32(-1127f - -1743f), _wgslsmith_f_op_f32(round(-985f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1629f, global0.x, -1386f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global1.x, global1.x)))))));
    global0 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.yy) + vec2<f32>(_wgslsmith_f_op_f32(sign(233f)), _wgslsmith_f_op_f32(-global1.x))))));
    return _wgslsmith_sub_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, u_input.a, 35649u, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(33138u, u_input.a, 5825u, 1u)) & ~vec4<u32>(1u, 1u, 1u, 1u), ~(~reverseBits(vec4<u32>(u_input.a, u_input.a, u_input.a, 1u)))) << (~(~vec4<u32>(0u, u_input.a, u_input.a, u_input.a) >> ((~vec4<u32>(u_input.a, 1u, u_input.a, u_input.a) ^ _wgslsmith_mult_vec4_u32(vec4<u32>(43675u, u_input.a, u_input.a, u_input.a), vec4<u32>(96457u, 4294967295u, 4294967295u, 1u))) % vec4<u32>(32u))) % vec4<u32>(32u));
}

fn func_4(arg_0: vec4<u32>) -> bool {
    let var_0 = Struct_2(~4294967295u, Struct_1(-479f, _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(global0.x, global0.x)), _wgslsmith_f_op_f32(round(-231f))), _wgslsmith_f_op_vec2_f32(-global1.xz)), _wgslsmith_mult_vec4_u32(abs(arg_0), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 1u, arg_0.x, arg_0.x), arg_0)) | vec4<u32>(arg_0.x, 1u | u_input.a, u_input.a, arg_0.x)));
    let var_1 = vec4<bool>(false, any(vec3<bool>(true, true, true)), true, !(var_0.b.a == var_0.b.b.x));
    let var_2 = ~_wgslsmith_sub_vec2_i32(-u_input.b.xz, u_input.b.wx);
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(559f, 1074f, 681f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.b.b.x, -409f, global1.x))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.b.a, global0.x, global1.x))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.b.x, 1511f, -364f)))))));
    var var_3 = select(var_0.b.c, vec4<u32>(_wgslsmith_dot_vec3_u32(arg_0.wzy, select(vec3<u32>(var_0.a, 0u, 92733u), vec3<u32>(var_0.b.c.x, arg_0.x, 14158u), vec3<bool>(var_1.x, true, true))), _wgslsmith_mult_u32(_wgslsmith_add_u32(4294967295u, arg_0.x), 1u), ~1u, arg_0.x) << (firstTrailingBit(func_3(select(var_1, var_1, var_1))) % vec4<u32>(32u)), var_1.x != any(vec4<bool>(true, var_1.x, var_1.x, var_1.x)));
    return false;
}

fn func_2(arg_0: vec2<i32>) -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, _wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(trunc(global0.x))), -1009f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-172f * 1492f) + -786f))));
    var var_1 = !vec2<bool>(func_4(_wgslsmith_div_vec4_u32(func_3(vec4<bool>(false, false, true, true)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, 18212u, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, 19118u), vec4<u32>(u_input.a, 45189u, 4294967295u, 1u)))), select(all(vec3<bool>(false, true, false)), true, !(u_input.a > u_input.a)));
    global0 = _wgslsmith_div_vec2_f32(var_0.wy, global1.zx);
    var var_2 = Struct_2(~(reverseBits(u_input.a) ^ _wgslsmith_div_u32(~u_input.a, 1u)), Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0.x)) * _wgslsmith_f_op_f32(min(global0.x, var_0.x))))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(562f, 577f)))))), abs(vec4<u32>(u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.a, 0u), vec3<u32>(u_input.a, u_input.a, 0u)), u_input.a, 26640u))));
    var var_3 = -268f;
    return true | (u_input.b.x <= reverseBits(arg_0.x));
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: i32, arg_3: Struct_2) -> vec3<bool> {
    var var_0 = select(select(!vec4<bool>(func_2(u_input.b.zy), arg_1.b.b.x <= arg_3.b.a, u_input.b.x > -25598i, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), false), vec4<bool>(all(vec2<bool>(any(vec4<bool>(true, true, true, false)), false)), false && any(vec3<bool>(true, true, true)), false, true), !all(vec3<bool>(u_input.b.x >= -5424i, any(vec2<bool>(true, false)), true)));
    var var_1 = Struct_2(arg_1.a, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b.a)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.b.b) * _wgslsmith_f_op_vec2_f32(arg_1.b.b * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global1.x, 1084f))))), vec4<u32>(countOneBits(_wgslsmith_mod_u32(4294967295u, 12892u)), _wgslsmith_mult_u32(45658u, arg_1.b.c.x), select(40938u, _wgslsmith_clamp_u32(arg_3.b.c.x, 44860u, u_input.a), true), arg_3.b.c.x >> (~52639u % 32u))));
    var var_2 = Struct_2(var_1.b.c.x, arg_1.b);
    var var_3 = var_0.x;
    var var_4 = arg_1;
    return vec3<bool>(true, false, !var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = !select(select(select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), true), vec3<bool>(false, true, false), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true)), select(vec3<bool>(true, true, true), func_1(~vec4<u32>(4406u, u_input.a, 18580u, 0u), Struct_2(38267u, Struct_1(-1316f, global1.zy, vec4<u32>(79973u, 4294967295u, 4294967295u, 17785u))), u_input.b.x & u_input.b.x, Struct_2(0u, Struct_1(global0.x, global1.xz, vec4<u32>(80946u, 33392u, u_input.a, u_input.a)))), true), !any(vec2<bool>(false, false)));
    let var_2 = select(vec4<bool>(true, !func_1(_wgslsmith_mod_vec4_u32(vec4<u32>(8636u, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, 2312u, u_input.a, u_input.a)), Struct_2(u_input.a, Struct_1(-169f, global1.zx, vec4<u32>(u_input.a, 0u, 25271u, 4294967295u))), -u_input.b.x, Struct_2(1u, Struct_1(1143f, global1.zy, vec4<u32>(u_input.a, 0u, 98188u, u_input.a)))).x, true, u_input.b.x < 0i), select(!(!vec4<bool>(var_1.x, false, true, var_1.x)), !select(select(vec4<bool>(false, var_1.x, var_1.x, var_1.x), vec4<bool>(true, var_1.x, false, var_1.x), var_1.x), vec4<bool>(var_1.x, var_1.x, false, true), any(vec4<bool>(true, var_1.x, var_1.x, false))), select(select(select(vec4<bool>(true, false, true, var_1.x), vec4<bool>(true, true, var_1.x, var_1.x), false), !vec4<bool>(var_1.x, var_1.x, var_1.x, false), !var_1.x), vec4<bool>(var_1.x | false, !var_1.x, var_1.x || var_1.x, var_1.x), u_input.a <= _wgslsmith_sub_u32(u_input.a, 1u))), any(!(!(!vec3<bool>(true, var_1.x, true)))));
    let var_3 = _wgslsmith_f_op_f32(-113f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-957f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, 500f))))));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3 - _wgslsmith_f_op_f32(-1281f * -1684f))))));
    let var_5 = ~_wgslsmith_sub_i32(firstLeadingBit(countOneBits(0i << (u_input.a % 32u))), _wgslsmith_sub_i32(u_input.b.x, 38677i));
    var var_6 = func_4(_wgslsmith_div_vec4_u32(func_3(select(!var_2, var_2, vec4<bool>(var_2.x, false, var_1.x, var_2.x))), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 0u, u_input.a), vec4<u32>(6048u, u_input.a, 1u, u_input.a) | vec4<u32>(1u, u_input.a, 67275u, u_input.a)) >> (vec4<u32>(u_input.a, 1u, u_input.a, reverseBits(628u)) % vec4<u32>(32u))));
    var var_7 = var_4;
    var var_8 = select(!(!(!select(vec2<bool>(false, true), var_1.yy, var_1.zx))), !select(func_1(vec4<u32>(4294967295u, 4294967295u, 1u, u_input.a), Struct_2(1u, Struct_1(var_3, global1.zy, vec4<u32>(0u, u_input.a, u_input.a, 53087u))), -1i, Struct_2(u_input.a, Struct_1(global1.x, vec2<f32>(-324f, var_4), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)))).yx, var_2.yz, (u_input.b.x >= 0i) && false), func_1(~(~(vec4<u32>(u_input.a, 4294967295u, 4279u, u_input.a) << (vec4<u32>(u_input.a, u_input.a, 1u, 0u) % vec4<u32>(32u)))), Struct_2(4294967295u, Struct_1(1009f, vec2<f32>(var_4, global1.x), vec4<u32>(u_input.a, u_input.a, u_input.a, 1u) >> (vec4<u32>(106797u, 47640u, 13885u, u_input.a) % vec4<u32>(32u)))), ~var_5, Struct_2(0u, Struct_1(1f, vec2<f32>(1043f, var_4), vec4<u32>(4294967295u, 0u, u_input.a, u_input.a)))).zz);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.wx, u_input.b.x);
}

