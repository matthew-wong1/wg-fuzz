struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: f32,
    c: i32,
    d: vec4<bool>,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: vec4<u32>,
    d: bool,
    e: vec2<i32>,
}

struct Struct_4 {
    a: vec4<f32>,
}

struct Struct_5 {
    a: bool,
    b: i32,
    c: Struct_2,
    d: vec3<f32>,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(i32(-2147483648), 46094i, -8091i);

var<private> global1: array<Struct_4, 23> = array<Struct_4, 23>(Struct_4(vec4<f32>(-2039f, -1328f, -2412f, 1000f)), Struct_4(vec4<f32>(-1453f, -1225f, -430f, 136f)), Struct_4(vec4<f32>(953f, -874f, 1090f, 1784f)), Struct_4(vec4<f32>(986f, -885f, 577f, 1942f)), Struct_4(vec4<f32>(1858f, 263f, 405f, -708f)), Struct_4(vec4<f32>(1569f, -551f, -1085f, 172f)), Struct_4(vec4<f32>(1111f, 305f, 794f, -671f)), Struct_4(vec4<f32>(1000f, -422f, -162f, 348f)), Struct_4(vec4<f32>(956f, -849f, 1314f, -139f)), Struct_4(vec4<f32>(1663f, -827f, -867f, -407f)), Struct_4(vec4<f32>(-530f, 2026f, 248f, -185f)), Struct_4(vec4<f32>(153f, -1811f, -1000f, -861f)), Struct_4(vec4<f32>(565f, -1192f, -1228f, -1723f)), Struct_4(vec4<f32>(-465f, 1215f, 728f, 1505f)), Struct_4(vec4<f32>(222f, -2302f, -1574f, -720f)), Struct_4(vec4<f32>(1000f, -127f, -483f, 680f)), Struct_4(vec4<f32>(-1000f, 936f, 2055f, 1000f)), Struct_4(vec4<f32>(-152f, -174f, 790f, 570f)), Struct_4(vec4<f32>(282f, -1815f, -961f, -365f)), Struct_4(vec4<f32>(3143f, 452f, -426f, 1087f)), Struct_4(vec4<f32>(-460f, 1006f, -1945f, -290f)), Struct_4(vec4<f32>(774f, 332f, 1171f, 190f)), Struct_4(vec4<f32>(-512f, 301f, -672f, -449f)));

var<private> global2: array<vec4<f32>, 17>;

var<private> global3: array<vec3<bool>, 24>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1(arg_0: Struct_4) -> u32 {
    global1 = array<Struct_4, 23>();
    global1 = array<Struct_4, 23>();
    return _wgslsmith_mult_u32(u_input.a, u_input.a | (~(~u_input.b) << (89367u % 32u)));
}

fn func_3() -> bool {
    var var_0 = Struct_1(2147483647i);
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-379f, -222f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1513f - 1000f)))), _wgslsmith_f_op_f32(f32(-1f) * -1141f), -411f, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(round(567f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -752f), 1f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1150f, -252f, true)), _wgslsmith_f_op_f32(-976f * -113f))))));
    let var_2 = _wgslsmith_f_op_f32(-var_1.x);
    global0 = ~select(_wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(40982i, var_0.a, var_0.a), vec3<i32>(var_0.a, 47871i, -2044i) & vec3<i32>(global0.x, 42181i, -1i), vec3<i32>(var_0.a, -1i, var_0.a) & vec3<i32>(global0.x, -28560i, 34561i)), reverseBits(~vec3<i32>(global0.x, 39290i, -35224i)), vec3<i32>(_wgslsmith_dot_vec2_i32(global0.zy, global0.yx), max(var_0.a, 49644i), firstTrailingBit(global0.x))), ~(~select(vec3<i32>(2147483647i, 53216i, global0.x), vec3<i32>(2147483647i, -1i, 8920i), global3[_wgslsmith_index_u32(4294967295u, 24u)])), true);
    var var_3 = Struct_5(false, var_0.a, Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1456f, var_1.x, 1803f, 597f), global2[_wgslsmith_index_u32(u_input.a, 17u)])) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-307f, -580f, 1368f, -1000f) * vec4<f32>(var_2, var_1.x, var_1.x, -216f))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-global2[_wgslsmith_index_u32(u_input.a, 17u)]), _wgslsmith_f_op_vec4_f32(-global2[_wgslsmith_index_u32(u_input.b, 17u)]))), _wgslsmith_f_op_f32(-var_1.x), 63769i, !(!select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), true))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2 - -238f) * 516f), var_1.x, 325f)), false);
    return var_3.a;
}

fn func_4(arg_0: i32, arg_1: Struct_5, arg_2: vec3<bool>, arg_3: vec2<u32>) -> f32 {
    global2 = array<vec4<f32>, 17>();
    global1 = array<Struct_4, 23>();
    let var_0 = arg_1.c;
    global3 = array<vec3<bool>, 24>();
    global2 = array<vec4<f32>, 17>();
    return var_0.a.x;
}

fn func_2(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: bool) -> i32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(floor(arg_0.b.a.wxw));
    let var_1 = global2[_wgslsmith_index_u32(51015u, 17u)];
    global1 = array<Struct_4, 23>();
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(-1476f + _wgslsmith_f_op_f32(max(1000f, 992f))), 1000f, -388f);
    let var_2 = Struct_5(any(select(arg_0.b.d.ywx, !arg_0.b.d.zzw, !vec3<bool>(arg_0.d, arg_2, true))) & arg_2, arg_1.x & arg_1.x, Struct_2(_wgslsmith_f_op_vec4_f32(arg_0.b.a + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0.b.a) * vec4<f32>(var_1.x, var_1.x, 2844f, -525f))), arg_0.b.b, arg_0.b.c, arg_0.b.d), vec3<f32>(_wgslsmith_f_op_f32(func_4(global0.x, Struct_5(func_3(), -global0.x, Struct_2(vec4<f32>(var_0.x, var_1.x, arg_0.b.b, var_1.x), -568f, arg_0.b.c, vec4<bool>(arg_0.b.d.x, false, true, arg_2)), vec3<f32>(var_1.x, -535f, 245f), true), select(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(arg_0.c, arg_0.c), 24u)], arg_0.b.d.yww, !vec3<bool>(arg_0.d, false, true)), arg_0.c.yw)), _wgslsmith_f_op_f32(-180f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-1715f, arg_0.b.b))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -331f), 1f))))), arg_0.d);
    return _wgslsmith_add_i32(arg_0.b.c >> (max(u_input.a, u_input.b << (abs(102789u) % 32u)) % 32u), global0.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -377f)))) != -1000f;
    let var_1 = global2[_wgslsmith_index_u32(0u ^ (u_input.a & ~_wgslsmith_sub_u32(func_1(global1[_wgslsmith_index_u32(29058u, 23u)]), 63712u)), 17u)];
    global0 = vec3<i32>(global0.x, _wgslsmith_mult_i32(reverseBits(~func_2(Struct_3(u_input.a, Struct_2(vec4<f32>(683f, 882f, 1511f, var_1.x), var_1.x, 2147483647i, vec4<bool>(false, false, true, false)), vec4<u32>(108596u, 0u, 29386u, u_input.a), false, global0.zz), vec3<i32>(0i, -60908i, global0.x), true)), -1i), min((-global0.x ^ -10166i) & ~_wgslsmith_div_i32(global0.x, 42239i), ~global0.x));
    let var_2 = u_input.b;
    global1 = array<Struct_4, 23>();
    var var_3 = var_1.zxw;
    let var_4 = ~4294967295u;
    let var_5 = _wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, _wgslsmith_clamp_i32(global0.x, _wgslsmith_dot_vec3_i32(vec3<i32>(global0.x, 40293i, -1i), vec3<i32>(-1i, global0.x, global0.x)), global0.x), 8554i, global0.x), -_wgslsmith_mult_vec4_i32(vec4<i32>(47706i, global0.x, global0.x, global0.x), vec4<i32>(global0.x, 1i, 23932i, global0.x)) | -(select(vec4<i32>(2147483647i, -9359i, 52820i, 1i), vec4<i32>(global0.x, global0.x, -44016i, 5581i), true) << (vec4<u32>(var_2, 58311u, 0u, u_input.a) % vec4<u32>(32u))), reverseBits(-vec4<i32>(-1i, global0.x, global0.x, global0.x)) >> ((countOneBits(~vec4<u32>(u_input.b, 1u, 27747u, var_4)) & vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(21846u, 0u), vec2<u32>(1u, var_2)), func_1(global1[_wgslsmith_index_u32(0u, 23u)]), countOneBits(var_4), var_4)) % vec4<u32>(32u)));
    global0 = ~_wgslsmith_add_vec3_i32(var_5.zyz ^ _wgslsmith_sub_vec3_i32(firstLeadingBit(vec3<i32>(var_5.x, global0.x, -1i)), select(var_5.wzx, vec3<i32>(-1i, 65199i, -1i), global3[_wgslsmith_index_u32(4294967295u, 24u)])), -_wgslsmith_div_vec3_i32(select(vec3<i32>(46909i, global0.x, 44936i), var_5.ywz, vec3<bool>(true, true, false)), vec3<i32>(var_5.x, var_5.x, global0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(global2[_wgslsmith_index_u32(96205u, 17u)] - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f))), _wgslsmith_f_op_f32(2341f - -440f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_3.x + var_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + -1023f), var_5.x);
}

