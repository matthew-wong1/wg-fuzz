struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: u32,
    d: vec3<f32>,
    e: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: u32,
    b: i32,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec3<i32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
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

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<i32>, arg_1: u32) -> vec2<f32> {
    var var_0 = u_input.a.x;
    let var_1 = ~36324u;
    var_0 = ~1u | arg_1;
    var_0 = 1u;
    var var_2 = Struct_3(var_1, u_input.b.x);
    return _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1018f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(306f, _wgslsmith_div_f32(190f, 1226f))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(640f, 1703f) * vec2<f32>(-527f, 1773f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-668f, 891f)), vec2<bool>(false, false))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(985f, 1000f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1475f, -156f) + vec2<f32>(-1425f, -231f)) - _wgslsmith_div_vec2_f32(vec2<f32>(364f, -1111f), vec2<f32>(1235f, -1239f)))), all(vec2<bool>(true, false))))));
}

fn func_2() -> vec2<bool> {
    var var_0 = ~(~1i);
    var_0 = _wgslsmith_clamp_i32(i32(-1i) * -u_input.b.x, u_input.b.x, 0i);
    var_0 = u_input.b.x;
    var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(func_3(-(~(~vec3<i32>(u_input.b.x, -9663i, -34487i))), 82213u)), Struct_1(_wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(4294967295u, 0u, 38990u), u_input.a.x, firstTrailingBit(u_input.a.x), ~4294967295u), max(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 0u), vec4<u32>(u_input.a.x, 35906u, 1312u, 0u), vec4<u32>(0u, 31000u, u_input.a.x, 0u)), ~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x))), _wgslsmith_dot_vec4_i32(abs(vec4<i32>(1i, 46096i, u_input.b.x, u_input.b.x)), ~vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)) >= u_input.b.x, abs(0u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-2692f, 1268f, -1189f)))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-365f, -1323f, 655f) - vec3<f32>(3129f, -949f, -201f)), vec3<f32>(-1090f, -562f, -412f))), select(true, true, true) & any(vec4<bool>(true, true, true, true))), _wgslsmith_sub_u32(abs(~_wgslsmith_div_u32(u_input.a.x, 0u)), u_input.a.x));
    var_0 = u_input.b.x;
    return select(!select(!select(vec2<bool>(var_1.b.e, false), vec2<bool>(false, var_1.b.e), var_1.b.e), vec2<bool>(var_1.b.b, var_1.b.e || true), u_input.b.x >= countOneBits(u_input.b.x)), vec2<bool>(!var_1.b.e, select(var_1.b.e || (true & var_1.b.b), false, ~var_1.b.c <= var_1.b.a.x)), false);
}

fn func_1(arg_0: vec3<f32>, arg_1: f32, arg_2: vec2<bool>) -> Struct_2 {
    let var_0 = ~u_input.a.x;
    let var_1 = Struct_4(select(vec4<bool>(any(func_2()), arg_2.x, any(select(vec3<bool>(false, arg_2.x, false), vec3<bool>(arg_2.x, true, true), arg_2.x)), true), !vec4<bool>(true, arg_1 <= arg_0.x, !arg_2.x, arg_2.x), vec4<bool>(!(false || arg_2.x), all(vec4<bool>(true, arg_2.x, arg_2.x, true)), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, -30675i), vec4<i32>(1379i, 46680i, 1i, u_input.b.x)) >= reverseBits(u_input.b.x), any(!arg_2))), ~max(vec3<i32>(~u_input.b.x, u_input.b.x ^ -4267i, ~u_input.b.x), ~_wgslsmith_div_vec3_i32(vec3<i32>(u_input.b.x, 2147483647i, u_input.b.x), vec3<i32>(u_input.b.x, u_input.b.x, -44796i))), Struct_2(arg_0.yx, Struct_1(firstTrailingBit(~vec4<u32>(u_input.a.x, var_0, var_0, 4294967295u)), true, 4294967295u, _wgslsmith_f_op_vec3_f32(arg_0 * _wgslsmith_f_op_vec3_f32(-arg_0)), all(arg_2)), max(~var_0 ^ var_0, ~_wgslsmith_sub_u32(u_input.a.x, u_input.a.x))));
    let var_2 = arg_1;
    let var_3 = var_0;
    var var_4 = _wgslsmith_add_vec3_u32(u_input.a, vec3<u32>(~4294967295u, ~_wgslsmith_add_u32(var_1.c.c, 15622u), ~0u));
    return Struct_2(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(ceil(982f)), _wgslsmith_f_op_f32(-var_1.c.a.x)), _wgslsmith_f_op_vec2_f32(sign(var_1.c.b.d.xx)))))), var_1.c.b, ((_wgslsmith_sub_u32(41584u, var_3) << (_wgslsmith_mod_u32(var_4.x, var_3) % 32u)) & _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.c.b.c, u_input.a.x, 1u, 0u), var_1.c.b.a), ~u_input.a.x)) >> (~(~(~20962u)) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(963f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(805f - -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -377f)))), _wgslsmith_f_op_f32(min(-742f, _wgslsmith_div_f32(1006f, -472f))), select(vec2<bool>(true, true), vec2<bool>(true, false), !(_wgslsmith_clamp_u32(u_input.a.x, 50561u, u_input.a.x) > max(u_input.a.x, u_input.a.x))));
    let var_1 = Struct_3(countOneBits(_wgslsmith_dot_vec2_u32(var_0.b.a.ww >> (u_input.a.yy % vec2<u32>(32u)), u_input.a.zz)) >> (~select(~u_input.a.x, 45415u, true) % 32u), reverseBits(reverseBits(_wgslsmith_mod_i32(reverseBits(71629i), 1i))));
    var var_2 = vec2<u32>(~((51829u ^ u_input.a.x) >> (_wgslsmith_sub_u32(var_0.b.c, var_0.b.c) % 32u)) << (68277u % 32u), ~4294967295u & _wgslsmith_div_u32(var_1.a, var_1.a));
    var_2 = ~reverseBits(~u_input.a.zx);
    let var_3 = _wgslsmith_clamp_vec4_i32(vec4<i32>(4396i, _wgslsmith_dot_vec2_i32(vec2<i32>(~u_input.b.x, firstTrailingBit(var_1.b)), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x), ~u_input.b)), max(u_input.b.x, ~u_input.b.x) << (var_2.x % 32u), 73017i), vec4<i32>(firstLeadingBit(~1i) & _wgslsmith_mod_i32(-2147483647i, _wgslsmith_sub_i32(var_1.b, var_1.b)), _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(var_1.b, -2147483647i, -2147483647i, u_input.b.x), vec4<i32>(0i, 0i, 2147483647i, var_1.b)), vec4<i32>(var_1.b, var_1.b, -2147483647i, -2147483647i) & vec4<i32>(u_input.b.x, 2147483647i, var_1.b, 4681i)), vec4<i32>(var_1.b, firstLeadingBit(-2147483647i), -u_input.b.x, var_1.b)), u_input.b.x, countOneBits(max(5021i, 0i))), vec4<i32>(firstLeadingBit(3199i) | u_input.b.x, _wgslsmith_mod_i32(_wgslsmith_sub_i32(3593i, var_1.b), u_input.b.x), -22392i, u_input.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(_wgslsmith_mod_i32(2147483647i, u_input.b.x), -2147483647i), ~(~(var_3.zzy & vec3<i32>(var_3.x, -30071i, var_1.b))) & (vec3<i32>(1i, firstTrailingBit(var_1.b), min(var_1.b, -11938i)) ^ _wgslsmith_add_vec3_i32(-vec3<i32>(-117i, var_1.b, -8528i), var_3.wxz)), -606f);
}

