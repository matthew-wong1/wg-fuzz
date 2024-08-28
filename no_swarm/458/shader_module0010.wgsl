struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: i32,
    c: vec2<f32>,
    d: vec2<bool>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_2,
    c: vec2<bool>,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
}

struct Struct_5 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_2,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: f32) -> bool {
    var var_0 = Struct_3(~_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, _wgslsmith_clamp_u32(arg_1, arg_0.b.x, 16813u), _wgslsmith_add_u32(u_input.a, 77671u), u_input.c >> (u_input.c % 32u)), ~(~vec4<u32>(u_input.a, u_input.c, 58013u, arg_0.b.x))), Struct_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-744f, -734f, arg_2, -113f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1577f, -699f, arg_0.a, -1000f) * vec4<f32>(arg_2, 398f, arg_2, arg_2))), vec4<bool>(all(vec3<bool>(true, true, true)), any(vec3<bool>(true, true, false)), false, all(vec3<bool>(true, false, true))))), ~abs(reverseBits(2147483647i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1100f, 1000f))), select(!select(vec2<bool>(false, false), vec2<bool>(false, true), false), vec2<bool>(true, true), -u_input.b <= u_input.b)), vec2<bool>(true, true));
    let var_1 = vec4<i32>(_wgslsmith_dot_vec4_i32(-_wgslsmith_mod_vec4_i32(-vec4<i32>(u_input.b, 2147483647i, -4811i, u_input.b), min(vec4<i32>(-1i, 14580i, var_0.b.b, var_0.b.b), vec4<i32>(u_input.b, u_input.b, -1i, -18610i))), reverseBits(select(vec4<i32>(var_0.b.b, var_0.b.b, 2147483647i, -20316i), vec4<i32>(u_input.b, var_0.b.b, var_0.b.b, 12920i), vec4<bool>(var_0.b.d.x, var_0.b.d.x, var_0.b.d.x, false))) << (firstLeadingBit(vec4<u32>(arg_0.b.x, arg_0.b.x, u_input.c, arg_1)) % vec4<u32>(32u))), i32(-1i) * -15010i, u_input.b, ~firstLeadingBit(0i));
    var var_2 = 376f;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-144f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_2)))), _wgslsmith_f_op_f32(var_0.b.a.x * -1059f))));
    var var_4 = arg_0;
    return true;
}

fn func_2() -> u32 {
    let var_0 = 4294967295u;
    var var_1 = vec4<bool>(true, true, -20437i <= u_input.b, all(select(vec2<bool>(true, true), select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, true), u_input.b > u_input.b), select(true, false, true))));
    var_1 = vec4<bool>(true, any(vec4<bool>(var_1.x, var_1.x, any(vec3<bool>(var_1.x, false, var_1.x)), true)) & func_3(Struct_1(157f, vec2<u32>(var_0, 4294967295u), vec2<f32>(1183f, -252f)), ~(68107u >> (1u % 32u)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-308f, 355f) - _wgslsmith_div_f32(687f, 1626f))), var_1.x, select(var_1.x, true, var_1.x));
    let var_2 = ~(~(_wgslsmith_add_vec4_u32(vec4<u32>(var_0, var_0, u_input.a, var_0), ~vec4<u32>(64278u, 8386u, var_0, 8249u)) | ((vec4<u32>(10974u, var_0, 1u, 7187u) & vec4<u32>(var_0, var_0, var_0, 1u)) & _wgslsmith_div_vec4_u32(vec4<u32>(var_0, 0u, u_input.c, 21958u), vec4<u32>(u_input.a, var_0, var_0, 1u)))));
    var_1 = !select(vec4<bool>(var_1.x, var_1.x, any(!var_1.zy), var_1.x), select(vec4<bool>(true, true, select(true, true, true), true), !(!vec4<bool>(true, false, var_1.x, var_1.x)), false), !vec4<bool>(any(vec4<bool>(false, var_1.x, false, false)), var_1.x, true, any(var_1.zwy)));
    return var_2.x;
}

fn func_1(arg_0: vec3<f32>) -> vec4<f32> {
    var var_0 = _wgslsmith_clamp_u32(func_2(), u_input.a, _wgslsmith_clamp_u32(0u, 1u, 0u));
    var_0 = u_input.a;
    var var_1 = Struct_3(abs(_wgslsmith_mod_vec4_u32(~vec4<u32>(44771u, 34334u, u_input.a, 1u), vec4<u32>(u_input.c << (4294967295u % 32u), ~31388u, ~u_input.a, abs(25124u)))), Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(arg_0.x)), _wgslsmith_f_op_f32(-318f * -392f), arg_0.x, arg_0.x) - vec4<f32>(1191f, _wgslsmith_f_op_f32(arg_0.x - 713f), arg_0.x, _wgslsmith_div_f32(1210f, arg_0.x))), _wgslsmith_sub_i32(-54400i, -27588i) << (countOneBits(u_input.c) % 32u), vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1091f, -675f))), arg_0.x), vec2<bool>(select(true, all(vec4<bool>(false, true, true, false)), all(vec3<bool>(true, false, true))), any(vec4<bool>(true, true, true, false)))), !vec2<bool>(any(vec4<bool>(true, true, false, false)), -463f == _wgslsmith_f_op_f32(arg_0.x * arg_0.x)));
    var_1 = Struct_3(vec4<u32>(~_wgslsmith_clamp_u32(0u, 26985u, 59557u) | ~(~79538u), 4294967295u, select(~u_input.c, _wgslsmith_add_u32(42518u, 0u), true), ~var_1.a.x >> (u_input.a % 32u)), Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(-1324f)), _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(floor(-863f)), var_1.b.a.x) - vec4<f32>(_wgslsmith_f_op_f32(var_1.b.a.x + arg_0.x), arg_0.x, arg_0.x, _wgslsmith_f_op_f32(max(-174f, var_1.b.a.x)))), 23124i & abs(abs(var_1.b.b)), _wgslsmith_f_op_vec2_f32(exp2(var_1.b.c)), !vec2<bool>(var_1.c.x, var_1.b.d.x)), !vec2<bool>(true, var_1.b.c.x > _wgslsmith_f_op_f32(-arg_0.x)));
    let var_2 = !(!select(vec3<bool>(true, !var_1.b.d.x, all(var_1.c)), select(!vec3<bool>(var_1.b.d.x, var_1.b.d.x, true), select(vec3<bool>(var_1.c.x, false, var_1.c.x), vec3<bool>(false, true, var_1.b.d.x), vec3<bool>(var_1.b.d.x, true, true)), false), !var_1.c.x));
    return vec4<f32>(_wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(965f, arg_0.x)))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.b.a.x))), _wgslsmith_f_op_f32(abs(var_1.b.c.x))))), _wgslsmith_f_op_f32(var_1.b.c.x * _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -137f), var_1.b.c.x) + _wgslsmith_f_op_f32(floor(1233f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x * -2465f) * _wgslsmith_f_op_f32(-arg_0.x)) - arg_0.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.x, _wgslsmith_div_f32(-1616f, var_1.b.a.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_f32(808f, _wgslsmith_f_op_f32(ceil(1213f))) >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(116f - 1469f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1572f + -1057f) - -1836f)));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-822f, -1058f, -1000f) - vec3<f32>(-688f, 929f, -678f)))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(773f, -234f, -1469f, 593f)) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(func_1(vec3<f32>(1123f, 2143f, 1213f))))))) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1516f, 491f, 1937f, 802f) + vec4<f32>(1288f, -681f, 983f, -1664f)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(730f, -1384f, 719f, -1312f)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)))));
    var_1 = vec4<f32>(_wgslsmith_f_op_f32(470f - -1028f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.x), -620f)), var_1.x, _wgslsmith_f_op_f32(-var_1.x));
    var var_2 = !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(var_1.x)))) * 739f) == var_1.x);
    var var_3 = select(vec2<bool>(select(var_0 | true, any(select(vec3<bool>(false, var_0, var_0), vec3<bool>(var_0, true, false), vec3<bool>(var_0, var_0, true))), any(!vec4<bool>(var_0, false, var_0, true))), var_0), vec2<bool>(!(!var_0), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-127f))) > _wgslsmith_f_op_f32(-936f + var_1.x));
    var_2 = true;
    let var_4 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, 536f, 696f, var_1.x), vec4<f32>(var_1.x, 578f, var_1.x, var_1.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, var_1.x, -1000f))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_1.x, var_1.x, -497f, -1000f), vec4<f32>(-421f, -1141f, -456f, -521f))), vec4<f32>(var_1.x, 790f, 1584f, 720f))))), ~select(u_input.b, 0i, !(u_input.c == u_input.a)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.yz - vec2<f32>(851f, var_1.x))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(var_1.yz, vec2<f32>(var_1.x, 252f)))))) * _wgslsmith_f_op_vec4_f32(func_1(vec3<f32>(_wgslsmith_f_op_f32(sign(var_1.x)), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(1690f - 920f)))).yw), vec2<bool>(-u_input.b >= ~(-1i), select(!var_3.x, true, true)));
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(vec3<f32>(-1199f, var_1.x, -105f))))));
    let var_5 = _wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32((vec4<u32>(43322u, u_input.a, u_input.c, u_input.c) & vec4<u32>(24746u, 1u, u_input.c, 4294967295u)) & _wgslsmith_add_vec4_u32(vec4<u32>(45186u, u_input.a, u_input.c, 68290u), vec4<u32>(3476u, 45296u, 4294967295u, 103059u)), vec4<u32>(u_input.a, ~u_input.a, u_input.c, select(u_input.a, 42627u, var_4.d.x))), firstTrailingBit(_wgslsmith_div_vec4_u32(vec4<u32>(69382u, u_input.c, u_input.c, 0u), vec4<u32>(4294967295u, u_input.a, 0u, 4294967295u))), vec4<u32>(~(~u_input.a), u_input.a, func_2(), ~(~u_input.a))), vec4<u32>(u_input.c | ~_wgslsmith_mod_u32(4294967295u, u_input.c), 28750u, u_input.c, abs(1u)));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(~abs(2147483647i)) << (abs(_wgslsmith_sub_u32(_wgslsmith_sub_u32(32729u, var_5.x), var_5.x)) % 32u));
}

