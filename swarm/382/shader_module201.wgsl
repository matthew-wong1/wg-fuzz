struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: vec2<f32>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<bool>, arg_1: vec4<f32>) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.x * 1811f), _wgslsmith_f_op_f32(-arg_1.x)), _wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)))));
    return 46361u;
}

fn func_2() -> bool {
    let var_0 = _wgslsmith_add_i32(1i, ~(2147483647i & -u_input.a.x) << (~func_3(vec3<bool>(true, true, true), vec4<f32>(809f, -144f, 976f, -151f)) % 32u));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1557f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-556f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-688f, -1573f))))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-942f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(412f + 2682f))))));
    let var_2 = _wgslsmith_div_vec4_u32(countOneBits(vec4<u32>(1u, 41509u, u_input.b, _wgslsmith_add_u32(u_input.b | u_input.b, countOneBits(1u)))), _wgslsmith_clamp_vec4_u32(min(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.b, 1u), ~vec4<u32>(59839u, 5410u, u_input.b, u_input.b)), vec4<u32>(~u_input.b, u_input.b >> (4697u % 32u), u_input.b, 0u)), select(~(~vec4<u32>(u_input.b, 41534u, u_input.b, u_input.b)), vec4<u32>(u_input.b, ~u_input.b, u_input.b, 47548u), vec4<bool>(true, true, true, true)), max(countOneBits(~vec4<u32>(4294967295u, u_input.b, u_input.b, 1u)), _wgslsmith_div_vec4_u32(firstTrailingBit(vec4<u32>(u_input.b, 1u, 29186u, 30159u)), abs(vec4<u32>(u_input.b, u_input.b, 84642u, 15170u))))));
    var var_3 = -_wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(~vec4<i32>(48968i, var_0, u_input.d, -2147483647i), vec4<i32>(-1i, var_0, u_input.a.x, 18130i)), _wgslsmith_add_vec4_i32(vec4<i32>(var_0, var_0, -2147483647i, -3204i), vec4<i32>(-51335i, u_input.c, 1i, var_0))) << (vec4<u32>(103529u & ~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.b, 38801u, 18830u), vec4<u32>(55795u, 1u, 0u, u_input.b)), reverseBits(4294967295u) << (var_2.x % 32u), u_input.b, min(u_input.b, reverseBits(1u))) % vec4<u32>(32u));
    let var_4 = Struct_1(-785f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-665f, var_1, var_1, var_1)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-338f, var_1, var_1, var_1)))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1, -1000f, 960f, var_1)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, var_1, -917f, var_1)) + vec4<f32>(var_1, var_1, 969f, var_1)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1 - var_1))), _wgslsmith_f_op_f32(-1659f * _wgslsmith_f_op_f32(f32(-1f) * -782f))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, var_1) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, var_1) + vec2<f32>(var_1, 644f))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_1, 1171f))))))), abs(-abs(~vec4<i32>(-21966i, -1i, 0i, -1i))));
    return true || (true && select(true, firstTrailingBit(var_4.d.x) >= _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, -2147483647i, var_4.d.x, var_0), var_4.d), true));
}

fn func_1() -> Struct_1 {
    var var_0 = !vec4<bool>(false, true, func_2() | any(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), true)), false);
    var_0 = select(!vec4<bool>(true, true, !var_0.x, !var_0.x), vec4<bool>(all(var_0.yxy), _wgslsmith_f_op_f32(select(-140f, -1000f, true)) <= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(2060f - -578f))), var_0.x, all(select(var_0.xy, var_0.zx, !var_0.yy))), true);
    let var_1 = u_input.b;
    let var_2 = vec3<i32>(1i, _wgslsmith_sub_i32(u_input.c, ~_wgslsmith_add_i32(_wgslsmith_sub_i32(-1i, 2147483647i), abs(u_input.a.x))), -2147483647i);
    var var_3 = vec3<u32>(_wgslsmith_div_u32(10410u, 1u), 1u, ~abs(0u));
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-343f * -277f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(149f * 1586f) - _wgslsmith_f_op_f32(f32(-1f) * -437f))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(118f + -1000f), _wgslsmith_f_op_f32(f32(-1f) * -505f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1586f, 1532f, -1516f, -206f) * vec4<f32>(732f, 1343f, -1287f, -1995f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(301f, -1586f, -953f, -720f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1352f, -1711f, -1629f, -1000f), vec4<f32>(1039f, 962f, -2507f, -597f))))) * vec4<f32>(1f, 1f, 1f, 1f)), vec2<f32>(-1000f, _wgslsmith_f_op_f32(-1729f - _wgslsmith_f_op_f32(f32(-1f) * -658f))), vec4<i32>(abs(_wgslsmith_dot_vec2_i32(u_input.a, u_input.a)), _wgslsmith_sub_i32(var_2.x, -1i) | u_input.c, firstLeadingBit(-var_2.x), -1i) & vec4<i32>(-(var_2.x | var_2.x), (i32(-1i) * -2147483647i) << (u_input.b % 32u), abs(49795i), ~_wgslsmith_dot_vec2_i32(u_input.a, var_2.zx)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1666f))), _wgslsmith_f_op_f32(f32(-1f) * -288f), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-196f, -394f), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(573f, -334f), 1369f))))));
    let var_1 = vec4<bool>(false, true, all(vec2<bool>(true, true)), !all(vec3<bool>(4294967295u >= u_input.b, all(vec3<bool>(true, false, true)), true)));
    var var_2 = any(vec2<bool>(select(~(-23821i), 1i, true) >= (30251i << ((u_input.b << (46622u % 32u)) % 32u)), select(!var_1.x, true, true)));
    var var_3 = var_1.x;
    let var_4 = func_1();
    var_3 = all(!var_1.wxz);
    let x = u_input.a;
    s_output = StorageBuffer(func_1().b.zzy);
}

