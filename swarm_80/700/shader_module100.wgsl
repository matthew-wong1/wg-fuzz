struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: vec2<bool>,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> i32 {
    var var_0 = Struct_1(u_input.c.x, !vec4<bool>(!all(vec2<bool>(false, false)), true, true, true), vec2<bool>(true, true), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(711f, -1000f), -1304f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1935f - 1228f))))));
    var_0 = Struct_1(_wgslsmith_add_u32(u_input.e.x, var_0.a), var_0.b, select(!(!select(vec2<bool>(var_0.b.x, true), vec2<bool>(var_0.c.x, true), vec2<bool>(false, var_0.b.x))), var_0.c, var_0.b.xw), _wgslsmith_f_op_f32(-142f - 971f));
    let var_1 = 60614u;
    var_0 = Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 1u), u_input.c), vec4<bool>(!all(vec4<bool>(var_0.b.x, false, true, var_0.c.x)), !all(vec3<bool>(true, false, true)), true, !var_0.b.x), var_0.b.wz, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-432f * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.d - 147f)))), _wgslsmith_f_op_f32(var_0.d + _wgslsmith_div_f32(1107f, 638f)))));
    let var_2 = _wgslsmith_clamp_i32(-u_input.d, min(1i, -u_input.d), u_input.d) > -(~_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(u_input.d, 26674i, u_input.d), _wgslsmith_sub_i32(-1i, -2147483647i), ~(-21345i)));
    return ~u_input.d;
}

fn func_2(arg_0: vec3<bool>, arg_1: vec2<i32>, arg_2: vec2<f32>) -> vec4<bool> {
    let var_0 = arg_0.x;
    var var_1 = -abs(countOneBits(~vec3<i32>(2147483647i, -6637i, -28332i))) >> (reverseBits(~u_input.e) % vec3<u32>(32u));
    var var_2 = -1862f;
    var_1 = _wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(~min(-vec3<i32>(28111i, -1i, -1i), vec3<i32>(arg_1.x, -1110i, -2147483647i)), -vec3<i32>(51027i, 2147483647i, arg_1.x) & vec3<i32>(_wgslsmith_div_i32(arg_1.x, -16713i), 1i, arg_1.x)), vec3<i32>(_wgslsmith_add_i32(-1i, _wgslsmith_mult_i32(abs(-8638i), -34274i)), _wgslsmith_add_i32(func_3(), 0i), -2147483647i));
    var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-751f)) - 662f);
    return vec4<bool>(true, false, var_0, var_0);
}

fn func_4(arg_0: bool, arg_1: Struct_1) -> vec2<f32> {
    let var_0 = true;
    var var_1 = Struct_1(select(u_input.e.x, firstLeadingBit(0u), !(_wgslsmith_f_op_f32(-arg_1.d) == _wgslsmith_f_op_f32(-arg_1.d))), vec4<bool>(arg_0, true, !(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d, -15314i), vec2<i32>(u_input.d, -2147483647i)) >= u_input.d), !all(vec4<bool>(var_0, false, arg_0, true))), vec2<bool>(true, true), 311f);
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-521f, var_1.d, var_1.d)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-848f, var_1.d, -607f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1194f, var_1.d, 1000f)), vec3<bool>(true, arg_1.b.x, true))))));
    let var_3 = ~46709u;
    let var_4 = -1066f;
    return var_2.yz;
}

fn func_1(arg_0: u32, arg_1: vec3<f32>, arg_2: bool, arg_3: bool) -> bool {
    var var_0 = vec2<f32>(arg_1.x, -291f);
    var var_1 = _wgslsmith_dot_vec2_u32(~(~u_input.e.zy), vec2<u32>(1u, ~u_input.a));
    var_1 = 25661u;
    var_1 = 4294967295u;
    var_0 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1.yy - _wgslsmith_f_op_vec2_f32(arg_1.yy * _wgslsmith_f_op_vec2_f32(min(arg_1.xz, arg_1.xx)))), _wgslsmith_f_op_vec2_f32(func_4(true, Struct_1(arg_0, func_2(vec3<bool>(false, arg_3, false), vec2<i32>(u_input.d, 1i), arg_1.xx), select(vec2<bool>(arg_3, false), vec2<bool>(true, arg_3), false), _wgslsmith_f_op_f32(-arg_1.x)))))));
    return !arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_mod_u32(21415u, u_input.c.x), !vec4<bool>(false, func_1(480u, _wgslsmith_f_op_vec3_f32(-vec3<f32>(268f, 198f, -170f)), select(false, true, true), true), (76639i > u_input.d) | select(false, true, false), true), vec2<bool>(all(!func_2(vec3<bool>(true, true, false), vec2<i32>(0i, -1i), vec2<f32>(-1184f, 1956f))), 1u >= (u_input.c.x & 23098u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1098f + 218f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(465f - 149f) * -1555f)))));
    let var_1 = Struct_1(~firstTrailingBit(~(~16557u)), vec4<bool>(!var_0.c.x, true, true, any(func_2(var_0.b.zzw, vec2<i32>(28732i, 2147483647i), vec2<f32>(-2101f, var_0.d))) | false), var_0.b.yz, _wgslsmith_f_op_f32(565f * _wgslsmith_f_op_f32(ceil(var_0.d))));
    var var_2 = select(u_input.c, reverseBits(~u_input.e.zx), func_2(!var_0.b.xyz, vec2<i32>(-8092i, 47169i) << (vec2<u32>(firstTrailingBit(var_0.a), ~var_1.a) % vec2<u32>(32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0.d, -139f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.d, var_0.d))))).yy);
    var var_3 = var_1;
    var var_4 = Struct_1(390u, func_2(func_2(var_3.b.xxy, vec2<i32>(u_input.d, _wgslsmith_div_i32(u_input.d, u_input.d)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -995f), var_1.d)).yxw, select(vec2<i32>(_wgslsmith_div_i32(-13036i, 30557i), -34839i), vec2<i32>(-57974i, -2147483647i), !vec2<bool>(var_1.c.x, true)), vec2<f32>(var_3.d, _wgslsmith_f_op_f32(var_3.d * _wgslsmith_f_op_f32(var_1.d * var_3.d)))), vec2<bool>(!(max(var_1.a, 1u) <= ~var_1.a), var_1.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-596f + 1779f)) * _wgslsmith_f_op_f32(645f - _wgslsmith_f_op_f32(sign(var_3.d)))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1000f)))))));
    let var_5 = var_0;
    var_2 = vec2<u32>(max(~var_4.a, _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(u_input.e, vec3<u32>(var_2.x, var_2.x, var_1.a)), ~(~vec3<u32>(120658u, 1u, 51587u)))), u_input.b);
    var_2 = vec2<u32>(~u_input.e.x, _wgslsmith_clamp_u32(~1u << (_wgslsmith_sub_u32(4294967295u, 4294967295u) % 32u), 81274u, var_2.x));
    var_2 = vec2<u32>(~firstTrailingBit(~countOneBits(var_0.a)), 62534u);
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, _wgslsmith_clamp_u32(1u, max(var_3.a, countOneBits(var_2.x)), var_4.a));
}

