struct Struct_1 {
    a: vec4<bool>,
    b: vec4<f32>,
    c: vec4<f32>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: u32,
    d: vec4<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1) -> vec4<bool> {
    let var_0 = 0i;
    let var_1 = vec3<i32>(~(i32(-1i) * -1i), ~abs(var_0), u_input.a.x ^ ~_wgslsmith_div_i32(max(u_input.a.x, arg_1), ~(-51571i)));
    var var_2 = reverseBits(~abs(vec3<i32>(-var_1.x, -36583i, var_0)));
    let var_3 = arg_2;
    let var_4 = true;
    return vec4<bool>(arg_2.a.x, !any(arg_2.a.wxw), any(var_3.a.wz), var_3.a.x);
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>) -> bool {
    let var_0 = select(vec2<bool>(true, true), vec2<bool>(all(!arg_0.a), 77467u >= reverseBits(4294967295u | arg_0.d.x)), vec2<bool>(arg_0.a.x, any(func_2(Struct_1(arg_0.a, vec4<f32>(1687f, arg_1.x, 1573f, arg_0.c.x), vec4<f32>(-1611f, arg_1.x, -1214f, -414f), arg_0.d), -u_input.a.x, Struct_1(vec4<bool>(arg_0.a.x, false, arg_0.a.x, true), arg_0.b, vec4<f32>(2756f, -1017f, 797f, -901f), arg_0.d)).xw)));
    var var_1 = reverseBits(u_input.b.x);
    var_1 = -_wgslsmith_dot_vec2_i32(firstLeadingBit(select(reverseBits(vec2<i32>(2147483647i, -1i)), u_input.b.zx, any(arg_0.a))), u_input.b.ww >> (vec2<u32>(34604u, arg_0.d.x >> (8473u % 32u)) % vec2<u32>(32u)));
    let var_2 = u_input.b;
    let var_3 = Struct_1(select(!select(func_2(arg_0, -23370i, arg_0), select(vec4<bool>(false, true, true, false), vec4<bool>(arg_0.a.x, false, var_0.x, var_0.x), arg_0.a), vec4<bool>(true, true, true, var_0.x)), vec4<bool>(true, (0u < u_input.c) & arg_0.a.x, all(select(vec3<bool>(true, true, false), vec3<bool>(var_0.x, false, true), vec3<bool>(arg_0.a.x, arg_0.a.x, false))), arg_0.a.x), arg_0.a.x), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.x, arg_1.x) + _wgslsmith_f_op_f32(-arg_0.b.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(arg_1.x, arg_0.c.x, var_0.x)))), _wgslsmith_f_op_f32(185f * _wgslsmith_f_op_f32(f32(-1f) * -722f)), 1055f), vec4<f32>(-1142f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-130f * arg_1.x), 1f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(arg_1.x)), _wgslsmith_f_op_f32(abs(233f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x * 1030f)))), arg_0.b, arg_0.d);
    return select(var_0.x, _wgslsmith_clamp_u32(arg_0.d.x, arg_0.d.x, 61621u) <= u_input.d.x, true);
}

fn func_1(arg_0: f32, arg_1: vec4<bool>) -> vec4<f32> {
    var var_0 = func_2(Struct_1(!arg_1, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0, 567f, arg_0, arg_0), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, 1000f, -624f, arg_0))))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, -111f, arg_0, -1176f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-715f, 1494f, arg_0, arg_0)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, 744f, arg_0))))), vec2<u32>(~(0u >> (u_input.e.x % 32u)), u_input.e.x & (u_input.e.x | 1u))), _wgslsmith_add_i32(-2147483647i, _wgslsmith_div_i32(u_input.b.x, -(u_input.a.x & -9232i))), Struct_1(vec4<bool>(true, true, any(!vec3<bool>(true, true, arg_1.x)), arg_1.x), vec4<f32>(_wgslsmith_div_f32(-1612f, _wgslsmith_f_op_f32(min(1012f, -1428f))), 172f, arg_0, arg_0), vec4<f32>(-776f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0, arg_0)) + arg_0), _wgslsmith_f_op_f32(round(arg_0)), _wgslsmith_f_op_f32(step(-515f, -850f))), vec2<u32>(~_wgslsmith_sub_u32(3929u, u_input.d.x), ~_wgslsmith_div_u32(43962u, 4294967295u))));
    let var_1 = !var_0.ywx;
    var_0 = vec4<bool>(func_2(Struct_1(vec4<bool>(func_3(Struct_1(arg_1, vec4<f32>(-984f, arg_0, arg_0, arg_0), vec4<f32>(arg_0, arg_0, 2479f, arg_0), vec2<u32>(3477u, u_input.d.x)), vec3<f32>(860f, arg_0, 1440f)), true, true, !arg_1.x), vec4<f32>(_wgslsmith_f_op_f32(arg_0 - arg_0), arg_0, 408f, _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, 1350f, arg_0) - vec4<f32>(572f, -1542f, arg_0, -1000f)), u_input.d.yz), ~1i, Struct_1(arg_1, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0, arg_0, arg_0, arg_0), vec4<f32>(arg_0, -1574f, arg_0, 1950f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(530f, -533f, -1504f, -1714f)))), ~_wgslsmith_mult_vec2_u32(vec2<u32>(0u, u_input.e.x), u_input.e))).x, !var_0.x && !func_2(Struct_1(vec4<bool>(false, var_1.x, arg_1.x, arg_1.x), vec4<f32>(783f, -2837f, 313f, -779f), vec4<f32>(627f, arg_0, -1027f, -1185f), vec2<u32>(47664u, u_input.e.x)), -19698i, Struct_1(vec4<bool>(true, var_1.x, false, true), vec4<f32>(-677f, arg_0, arg_0, arg_0), vec4<f32>(-1306f, arg_0, -199f, 1384f), u_input.e)).x, false, true);
    let var_2 = vec4<i32>(69376i, 16441i, _wgslsmith_mult_i32(20810i, firstLeadingBit(~(~u_input.b.x))), -_wgslsmith_mod_i32(~(~u_input.a.x), u_input.a.x));
    var var_3 = -u_input.b.x | 2147483647i;
    return vec4<f32>(_wgslsmith_f_op_f32(arg_0 - -402f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(arg_0, arg_0, false)), _wgslsmith_f_op_f32(-arg_0)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-120f * 1180f), 1184f, all(vec4<bool>(var_1.x, true, var_0.x, var_0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0))) - 785f)));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec2<i32>) -> Struct_1 {
    var var_0 = firstLeadingBit(select(_wgslsmith_mod_u32(4294967295u, arg_0.d.x), _wgslsmith_add_u32(u_input.e.x | u_input.c, 21309u) >> ((~21247u << (countOneBits(u_input.c) % 32u)) % 32u), true));
    var var_1 = _wgslsmith_mod_vec2_i32(select(vec2<i32>(u_input.b.x, _wgslsmith_sub_i32(-1i, -23187i) >> (max(arg_0.d.x, arg_0.d.x) % 32u)), arg_2 ^ vec2<i32>(arg_2.x, -84390i), all(!vec2<bool>(arg_0.a.x, arg_0.a.x))), -abs(arg_2 | vec2<i32>(u_input.b.x, u_input.b.x)));
    var var_2 = _wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(~(-u_input.a.yz), arg_2 >> ((min(u_input.e, vec2<u32>(u_input.e.x, 26752u)) & vec2<u32>(u_input.c, 4294967295u)) % vec2<u32>(32u))), firstTrailingBit(u_input.b.ww));
    let var_3 = vec4<bool>(arg_0.a.x, true & !all(select(arg_0.a.zyx, vec3<bool>(false, false, false), false)), arg_0.a.x, true);
    var_0 = _wgslsmith_dot_vec4_u32(~vec4<u32>(~(arg_0.d.x | arg_0.d.x), _wgslsmith_clamp_u32(max(4294967295u, u_input.d.x), 9256u, 57412u), _wgslsmith_clamp_u32(u_input.e.x, 168u, arg_0.d.x) >> (34800u % 32u), 0u), ~u_input.d);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b.x ^ -5492i;
    let var_1 = _wgslsmith_mod_u32(max(u_input.c, ~u_input.c), u_input.d.x);
    var var_2 = -9743i;
    let var_3 = func_4(Struct_1(vec4<bool>(true, true, any(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(abs(1270f)) != _wgslsmith_f_op_f32(trunc(393f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(-1270f, 1636f, -909f, 1377f), vec4<f32>(531f, 121f, -1356f, 1009f)))) - _wgslsmith_f_op_vec4_f32(func_1(_wgslsmith_f_op_f32(trunc(-856f)), vec4<bool>(true, true, true, true)))), vec4<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-648f)) + _wgslsmith_f_op_f32(min(134f, -771f))), 1540f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(757f * 1214f) - _wgslsmith_f_op_f32(608f + -609f))), ~vec2<u32>(1u, abs(var_1))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-961f, -697f, -356f, 1233f))))))), u_input.b.yw);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(var_3.b.x)), select(abs(1i), 0i, false), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.c.x, var_3.b.x) + vec2<f32>(var_3.b.x, 563f)))), _wgslsmith_f_op_vec2_f32(trunc(var_3.c.wz)))), var_3.c.xx)), 2147483647i);
}

