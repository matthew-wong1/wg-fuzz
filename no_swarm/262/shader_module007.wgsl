struct Struct_1 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: vec3<f32>,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: vec4<f32>, arg_1: i32) -> vec3<f32> {
    var var_0 = u_input.b;
    var_0 = select(firstTrailingBit(firstTrailingBit(~vec3<u32>(1u, 1u, u_input.d))), ~vec3<u32>(u_input.d, 4294967295u, var_0.x), any(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), any(vec3<bool>(false, true, false))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true)), true)));
    var var_1 = true;
    var_0 = u_input.b;
    var var_2 = ~u_input.c.x;
    return arg_0.xyz;
}

fn func_3(arg_0: Struct_1) -> vec2<f32> {
    var var_0 = arg_0;
    let var_1 = arg_0;
    var_0 = Struct_1((_wgslsmith_mod_vec2_u32(vec2<u32>(arg_0.a.x, 26848u), vec2<u32>(1u, 1585u)) & vec2<u32>(~u_input.b.x, abs(10041u))) << (~min(vec2<u32>(8602u, 1u), vec2<u32>(1u, var_0.a.x)) % vec2<u32>(32u)), vec3<f32>(-1213f, -1583f, _wgslsmith_f_op_f32(f32(-1f) * -582f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1f, _wgslsmith_f_op_f32(select(1000f, var_1.b.x, false)), _wgslsmith_f_op_f32(min(arg_0.b.x, -129f))), arg_0.c)), 0i);
    var var_2 = 2147483647i;
    var var_3 = var_1;
    return _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1200f, -1460f), vec2<f32>(_wgslsmith_div_f32(var_3.b.x, 442f), _wgslsmith_f_op_f32(-130f * _wgslsmith_f_op_f32(max(var_3.b.x, var_3.c.x)))), true))));
}

fn func_4(arg_0: i32, arg_1: i32, arg_2: vec2<f32>, arg_3: vec4<i32>) -> vec3<i32> {
    let var_0 = Struct_1(firstTrailingBit(u_input.b.zx), _wgslsmith_f_op_vec3_f32(vec3<f32>(1645f, arg_2.x, _wgslsmith_f_op_f32(2083f - _wgslsmith_div_f32(1233f, arg_2.x))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(403f, 261f, _wgslsmith_f_op_f32(965f + -1136f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(191f, arg_2.x, 775f) - vec3<f32>(-878f, -1249f, arg_2.x))))), vec3<f32>(_wgslsmith_f_op_f32(119f * _wgslsmith_f_op_vec2_f32(func_3(Struct_1(vec2<u32>(u_input.d, 50928u), vec3<f32>(-1000f, arg_2.x, -1390f), vec3<f32>(-218f, -1000f, 375f), arg_3.x))).x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(arg_2.x)), 1534f)))), arg_2.x), ~(-1i));
    var var_1 = select(vec3<bool>(!any(vec2<bool>(true, false)), any(vec2<bool>(true, arg_1 <= arg_1)), all(select(select(vec2<bool>(true, false), vec2<bool>(true, false), false), vec2<bool>(true, false), false))), select(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), true), vec3<bool>(true, false, select(717f < arg_2.x, true, any(vec3<bool>(false, true, false)))), false), ((-19565i & (arg_0 << (u_input.d % 32u))) >= 1i) || true);
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.b.x, 1040f) - _wgslsmith_div_f32(-168f, var_0.c.x)))), -579f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1795f * 227f)) + var_0.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(2121f)))));
    var var_3 = Struct_1(~_wgslsmith_clamp_vec2_u32(min(abs(vec2<u32>(u_input.b.x, u_input.b.x)), var_0.a), vec2<u32>(18633u ^ var_0.a.x, 78222u), firstLeadingBit(u_input.b.zx)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.b - _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(2231f, arg_2.x, -1162f)))) + var_0.c), vec3<f32>(_wgslsmith_f_op_f32(var_0.b.x * var_0.b.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -740f), _wgslsmith_f_op_f32(ceil(var_0.b.x)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -439f) * _wgslsmith_f_op_f32(f32(-1f) * -571f)) - _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_0.c.x, arg_2.x), _wgslsmith_f_op_f32(abs(var_0.c.x)))))), -1i);
    var_3 = var_0;
    return (min(-select(arg_3.wyy, vec3<i32>(var_0.d, arg_3.x, arg_1), true), arg_3.zzz | _wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, -2147483647i, arg_1), arg_3.yzy, arg_3.www)) | abs(vec3<i32>(arg_1, 2147483647i, firstLeadingBit(9943i)))) ^ ~vec3<i32>(-2147483647i, (-2147483647i & arg_0) & 2147483647i, -4284i);
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: bool) -> StorageBuffer {
    let var_0 = _wgslsmith_sub_vec3_i32(~(-func_4(i32(-1i) * -1i, u_input.a, _wgslsmith_f_op_vec2_f32(func_3(Struct_1(arg_1.a, vec3<f32>(148f, -200f, -1308f), arg_1.c, arg_1.d))), vec4<i32>(8397i, u_input.c.x, 0i, arg_0))), vec3<i32>(u_input.a, abs(arg_1.d), -41i));
    let var_1 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-1935f, -769f)), _wgslsmith_f_op_vec2_f32(func_3(arg_1)).x), _wgslsmith_f_op_f32(-arg_1.c.x), arg_1.b.x, -1161f);
    var var_2 = Struct_1(abs(vec2<u32>(38905u, ~(u_input.d ^ 23640u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_1.c * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(arg_1.b, var_1.xyx))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, arg_1.c.x, -582f)))))), max(max(-2147483647i, -11889i), func_4(min(var_0.x, 0i), -(~0i), arg_1.c.zy, _wgslsmith_mult_vec4_i32(vec4<i32>(35186i, 1784i, u_input.a, var_0.x), select(vec4<i32>(-3199i, 0i, -1817i, arg_1.d), vec4<i32>(var_0.x, var_0.x, 0i, u_input.a), false))).x));
    var_2 = Struct_1(arg_1.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_2.c) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(floor(var_1.zxx)))))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.c.x, -233f, 917f))))), abs(_wgslsmith_add_i32(~(i32(-1i) * -40279i), ~arg_0)));
    var_2 = Struct_1(vec2<u32>(1u, arg_1.a.x), _wgslsmith_f_op_vec3_f32(step(var_1.zww, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1.b)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1380f, arg_1.b.x, var_2.b.x))))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_vec2_f32(func_3(arg_1)).x, _wgslsmith_f_op_f32(select(var_1.x, arg_1.b.x, !arg_2)), 1000f)), _wgslsmith_dot_vec3_i32(vec3<i32>(i32(-1i) * -19296i, countOneBits(1i), -25064i) & _wgslsmith_sub_vec3_i32(var_0, var_0), _wgslsmith_mult_vec3_i32(vec3<i32>(~arg_0, arg_0, select(-1i, 4500i, arg_2)), var_0)));
    return StorageBuffer(select(~(~(vec4<u32>(4294967295u, 1u, arg_1.a.x, 1u) ^ vec4<u32>(var_2.a.x, u_input.b.x, 20818u, var_2.a.x))), vec4<u32>(_wgslsmith_dot_vec3_u32(~u_input.b, vec3<u32>(19985u, arg_1.a.x, var_2.a.x)), ~arg_1.a.x, 1u, arg_1.a.x | ~u_input.b.x), select(select(select(vec4<bool>(true, arg_2, true, true), vec4<bool>(arg_2, arg_2, arg_2, true), true), vec4<bool>(arg_2, arg_2, true, arg_2), true), select(vec4<bool>(true, true, false, arg_2), vec4<bool>(true, false, arg_2, false), !vec4<bool>(arg_2, true, false, false)), select(!vec4<bool>(arg_2, arg_2, false, arg_2), vec4<bool>(arg_2, arg_2, true, true), vec4<bool>(false, arg_2, arg_2, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_2(u_input.c.x, Struct_1(u_input.b.yz << (u_input.b.zz % vec2<u32>(32u)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-907f, -779f, 498f, 185f)), u_input.a)))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1677f, 633f, 1048f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1201f, 1500f, -182f) - vec3<f32>(1613f, 1067f, 420f)))))), -(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 35572i), u_input.c) ^ (u_input.c.x ^ 0i))), true);
}

