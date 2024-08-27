struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: i32,
    d: vec4<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<vec2<f32>, 25> = array<vec2<f32>, 25>(vec2<f32>(1507f, -123f), vec2<f32>(-600f, -1221f), vec2<f32>(1235f, -415f), vec2<f32>(-802f, -1228f), vec2<f32>(-568f, -291f), vec2<f32>(703f, 400f), vec2<f32>(2406f, 549f), vec2<f32>(176f, 556f), vec2<f32>(-1869f, 577f), vec2<f32>(-1090f, 123f), vec2<f32>(1000f, 1000f), vec2<f32>(-1561f, 401f), vec2<f32>(-237f, 591f), vec2<f32>(-571f, -107f), vec2<f32>(-1454f, -1450f), vec2<f32>(-528f, 190f), vec2<f32>(379f, 144f), vec2<f32>(1062f, 1038f), vec2<f32>(-1481f, -1000f), vec2<f32>(-223f, 1000f), vec2<f32>(994f, 368f), vec2<f32>(-1743f, -1467f), vec2<f32>(312f, 1547f), vec2<f32>(-739f, 1494f), vec2<f32>(-1000f, -1116f));

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: bool) -> i32 {
    global1 = array<vec2<f32>, 25>();
    let var_0 = all(!(!select(vec3<bool>(arg_0, true, arg_0), !vec3<bool>(true, arg_0, true), select(true, true, true))));
    var var_1 = Struct_2(8703u, 492f);
    var var_2 = abs(vec2<u32>(4294967295u, 48260u));
    var_1 = Struct_2(max(1u, 1u >> (_wgslsmith_mod_u32(countOneBits(1u), ~var_2.x) % 32u)), _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(round(479f))));
    return _wgslsmith_sub_i32(_wgslsmith_mult_i32(-1i ^ (~(-1i) << ((u_input.b.x >> (var_1.a % 32u)) % 32u)), -_wgslsmith_div_i32(-22142i, -1i)), -21428i);
}

fn func_2(arg_0: u32, arg_1: vec4<i32>, arg_2: i32, arg_3: vec3<u32>) -> i32 {
    let var_0 = _wgslsmith_div_i32(func_3((arg_0 <= arg_0) && any(vec4<bool>(false, false, true, false))), i32(-1i) * -2147483647i) >= ~(-336i);
    let var_1 = arg_1.x;
    var var_2 = 14712u;
    let var_3 = vec3<f32>(-600f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(183f + _wgslsmith_f_op_f32(-1587f - _wgslsmith_f_op_f32(round(643f)))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1133f), 2031f)));
    global1 = array<vec2<f32>, 25>();
    return reverseBits(arg_1.x);
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> vec2<f32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_2.a + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(arg_1.a)), arg_1.a)) + _wgslsmith_f_op_vec4_f32(abs(arg_1.a))), arg_1.b, arg_2.c);
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1153f, -1080f, -349f, -484f) + arg_2.a)))), _wgslsmith_f_op_f32(round(arg_1.a.x)), vec4<i32>(var_0.c.x, func_2(u_input.a, arg_1.c ^ -vec4<i32>(arg_1.c.x, var_0.c.x, 5573i, 1i), _wgslsmith_div_i32(-arg_1.c.x, 26137i), vec3<u32>(4294967295u, u_input.a, _wgslsmith_add_u32(0u, u_input.b.x))), -min(arg_1.c.x, arg_2.c.x), arg_2.c.x));
    var var_2 = arg_1;
    let var_3 = ~u_input.b.yww;
    var var_4 = _wgslsmith_f_op_vec2_f32(var_0.a.zw + _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1[_wgslsmith_index_u32(27519u, 25u)]) + _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.b, -1322f) * var_1.a.yy)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_2.a.xw - arg_1.a.wy) + arg_1.a.wz)))));
    return _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(var_2.a.yz, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(var_0.a.wy + vec2<f32>(var_1.a.x, arg_1.a.x))))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(arg_1.a.wz)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.a.xx) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.a.yw) - vec2<f32>(var_1.a.x, var_0.a.x)))));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec2<f32>, arg_2: vec2<i32>) -> i32 {
    let var_0 = Struct_2(_wgslsmith_sub_u32(~33073u, 1u), _wgslsmith_f_op_f32(trunc(-1906f)));
    global1 = array<vec2<f32>, 25>();
    global0 = 1i | (0i << (_wgslsmith_add_u32(~select(var_0.a, 40334u, true), ~32622u) % 32u));
    let var_1 = select(arg_2, vec2<i32>(func_3(all(select(vec2<bool>(false, false), vec2<bool>(true, true), false))), -(~(~16077i))), vec2<bool>(true, true));
    let var_2 = firstLeadingBit((vec4<u32>(u_input.b.x, u_input.b.x, 0u, arg_0.x) & _wgslsmith_sub_vec4_u32(vec4<u32>(var_0.a, 16443u, 0u, arg_0.x), vec4<u32>(0u, u_input.b.x, arg_0.x, 0u))) << (~vec4<u32>(0u, 67542u, arg_0.x, var_0.a) % vec4<u32>(32u))) >> (abs(arg_0) % vec4<u32>(32u));
    return var_1.x;
}

fn func_5(arg_0: vec4<i32>, arg_1: vec4<bool>) -> Struct_2 {
    global1 = array<vec2<f32>, 25>();
    let var_0 = Struct_2(firstTrailingBit(31841u), _wgslsmith_f_op_vec2_f32(func_1(true, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-873f, 344f, 368f, 2367f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-219f)) * _wgslsmith_f_op_f32(floor(-1051f))), vec4<i32>(4900i, _wgslsmith_clamp_i32(arg_0.x, 11602i, -1i), 1i, -51760i)), Struct_1(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(235f, 1000f, 967f, 1228f), vec4<f32>(771f, 613f, 1200f, 1214f))))), -1000f, arg_0))).x);
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(478f, _wgslsmith_f_op_vec2_f32(func_1(arg_1.x, Struct_1(vec4<f32>(var_0.b, var_0.b, -138f, -2345f), 1299f, vec4<i32>(arg_0.x, -57796i, arg_0.x, arg_0.x)), Struct_1(vec4<f32>(-1028f, -599f, -747f, 884f), var_0.b, arg_0))).x, _wgslsmith_f_op_f32(var_0.b - 1065f), var_0.b) - vec4<f32>(var_0.b, var_0.b, _wgslsmith_f_op_f32(302f * -461f), _wgslsmith_f_op_f32(var_0.b + -1434f))) + vec4<f32>(-2048f, -713f, _wgslsmith_f_op_f32(-var_0.b), -2086f)), _wgslsmith_f_op_vec2_f32(func_1(!arg_1.x, Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-465f, -698f, var_0.b, -145f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(899f, var_0.b, -1061f, 1195f))), _wgslsmith_f_op_f32(-var_0.b), _wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, 2147483647i, arg_0.x, arg_0.x), arg_0, vec4<i32>(2147483647i, arg_0.x, 32172i, arg_0.x)), vec4<i32>(arg_0.x, arg_0.x, 0i, arg_0.x), vec4<i32>(-2147483647i, -2147483647i, -1i, arg_0.x))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b, var_0.b, var_0.b, -596f))), var_0.b, _wgslsmith_add_vec4_i32(~vec4<i32>(arg_0.x, arg_0.x, arg_0.x, 1i), _wgslsmith_add_vec4_i32(arg_0, vec4<i32>(arg_0.x, -1i, -1i, -4721i)))))).x, _wgslsmith_clamp_vec4_i32(select(_wgslsmith_mult_vec4_i32(arg_0, vec4<i32>(1i, arg_0.x, arg_0.x, arg_0.x)), vec4<i32>(-2147483647i, 2147483647i, arg_0.x, arg_0.x), true) & min(vec4<i32>(2147483647i, arg_0.x, arg_0.x, arg_0.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0.x, 0i, 10429i, arg_0.x), arg_0, vec4<i32>(-6515i, -2147483647i, -1866i, arg_0.x))), vec4<i32>(min(-arg_0.x, arg_0.x), 1i, -2147483647i, abs(1i)), select(~vec4<i32>(25283i, arg_0.x, arg_0.x, 0i), vec4<i32>(-2147483647i, -1i, arg_0.x, arg_0.x) ^ arg_0, arg_1)));
    var var_2 = true;
    var var_3 = _wgslsmith_mod_u32(~(~(~(var_0.a >> (u_input.a % 32u)))), select(reverseBits(1u), var_0.a, true));
    return Struct_2(u_input.a, _wgslsmith_f_op_f32(ceil(-972f)));
}

fn func_6(arg_0: Struct_2, arg_1: i32, arg_2: Struct_2) -> StorageBuffer {
    global0 = 0i;
    global0 = 33255i;
    var var_0 = reverseBits(~min(~vec4<u32>(1u, arg_0.a, 1u, arg_2.a), u_input.b));
    return StorageBuffer(u_input.b.xyz, -abs(_wgslsmith_mult_vec3_i32(~vec3<i32>(arg_1, -1i, arg_1), _wgslsmith_mod_vec3_i32(vec3<i32>(arg_1, 0i, arg_1), vec3<i32>(2147483647i, arg_1, 4624i)))), arg_1, _wgslsmith_clamp_vec4_u32(max(vec4<u32>(countOneBits(1u), ~88154u, var_0.x, u_input.a), vec4<u32>(52069u, var_0.x, var_0.x, arg_0.a) & u_input.b), ~(abs(u_input.b) << (~vec4<u32>(13208u, arg_2.a, 0u, 1u) % vec4<u32>(32u))), select(u_input.b, reverseBits(~u_input.b), select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), true), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true)), true))), u_input.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -1i << (u_input.b.x % 32u);
    let x = u_input.a;
    s_output = func_6(Struct_2(u_input.b.x | (~u_input.b.x & u_input.a), 1f), 14385i, func_5(vec4<i32>(firstTrailingBit(1i), func_4(countOneBits(u_input.b), _wgslsmith_f_op_vec2_f32(func_1(true, Struct_1(vec4<f32>(-1716f, -506f, -1008f, 999f), 184f, vec4<i32>(64943i, -8141i, 2147483647i, -2147483647i)), Struct_1(vec4<f32>(789f, 614f, 862f, -148f), -214f, vec4<i32>(1956i, -52053i, 2147483647i, -29733i)))), vec2<i32>(-797i, 2147483647i)), 1i, -17103i), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), false), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), true))));
}

