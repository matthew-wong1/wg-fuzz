struct Struct_1 {
    a: vec3<u32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec2<i32>,
    d: Struct_1,
    e: vec2<f32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: Struct_2,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<u32>,
}

struct Struct_5 {
    a: bool,
    b: u32,
    c: bool,
    d: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 30>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_4, arg_1: u32) -> i32 {
    let var_0 = Struct_3(!any(!select(vec3<bool>(true, true, false), vec3<bool>(true, arg_0.a.a, arg_0.a.a), vec3<bool>(true, arg_0.a.a, arg_0.a.a))), Struct_1(~(~u_input.a.yyy) << (arg_0.b.zxx % vec3<u32>(32u)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(1364f, arg_0.a.b.b.x, 692f, arg_0.a.b.b.x), _wgslsmith_f_op_vec4_f32(-arg_0.a.e.b.b)), vec4<f32>(_wgslsmith_f_op_f32(-733f + arg_0.a.d.e.x), -100f, _wgslsmith_f_op_f32(floor(112f)), _wgslsmith_f_op_f32(-arg_0.a.c.d.b.x))))), Struct_2(~vec2<u32>(7311u, 41376u ^ arg_1), Struct_1(arg_0.b.xxy, vec4<f32>(-428f, -742f, -484f, _wgslsmith_f_op_f32(-1109f - arg_0.a.c.b.b.x))), _wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, arg_0.a.c.c.x) | arg_0.a.e.c, ~arg_0.a.e.c) | vec2<i32>(_wgslsmith_div_i32(arg_0.a.c.c.x, 1i), 1i), Struct_1(u_input.a.wzy, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(arg_0.a.c.d.b))))), arg_0.a.b.b.yw), arg_0.a.d, arg_0.a.d);
    var var_1 = var_0.c.b.b.xxw;
    var var_2 = countOneBits(~(~u_input.a));
    let var_3 = 1i;
    return -2147483647i;
}

fn func_2(arg_0: bool) -> Struct_1 {
    global0 = array<u32, 30>();
    var var_0 = vec4<i32>(-1i) * -(~_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, 4481i, 0i, 0i), vec4<i32>(2147483647i, 1i, 1i, 0i), vec4<i32>(1i, 1i, -36351i, -41869i)) & vec4<i32>(select(-16267i, 1i, arg_0), -35528i << (global0[_wgslsmith_index_u32(4294967295u, 30u)] % 32u), 1i, 10182i));
    let var_1 = _wgslsmith_add_i32(974i, -(~(~func_3(Struct_4(Struct_3(true, Struct_1(vec3<u32>(4294967295u, u_input.b.x, 13170u), vec4<f32>(-471f, 1000f, -462f, 545f)), Struct_2(u_input.b.yx, Struct_1(u_input.a.wwy, vec4<f32>(-1000f, -442f, 1893f, 548f)), var_0.yy, Struct_1(u_input.a.xzw, vec4<f32>(-551f, -807f, 117f, 1000f)), vec2<f32>(-482f, 1459f)), Struct_2(vec2<u32>(global0[_wgslsmith_index_u32(18568u, 30u)], 13669u), Struct_1(vec3<u32>(global0[_wgslsmith_index_u32(1u, 30u)], 44570u, global0[_wgslsmith_index_u32(17099u, 30u)]), vec4<f32>(503f, -1618f, -552f, 1325f)), vec2<i32>(-2147483647i, var_0.x), Struct_1(u_input.a.zyy, vec4<f32>(-1231f, -2419f, -1037f, -980f)), vec2<f32>(-467f, -396f)), Struct_2(u_input.b.zz, Struct_1(u_input.a.wzw, vec4<f32>(-1047f, -709f, 729f, 687f)), vec2<i32>(2147483647i, 1i), Struct_1(vec3<u32>(u_input.a.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 30u)], 30u)], 30u)], 30u)], 26200u), vec4<f32>(345f, -589f, 187f, -508f)), vec2<f32>(-238f, -542f))), u_input.a), global0[_wgslsmith_index_u32(42607u, 30u)]))));
    var var_2 = vec2<u32>(u_input.b.x, _wgslsmith_mult_u32(100450u, _wgslsmith_dot_vec2_u32(u_input.b.yx, ~u_input.a.xy ^ (u_input.a.wx << (u_input.a.xz % vec2<u32>(32u))))));
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-730f, 738f, 1278f)) - vec3<f32>(535f, 688f, 1559f)) - vec3<f32>(_wgslsmith_f_op_f32(min(1270f, 293f)), _wgslsmith_f_op_f32(f32(-1f) * -1404f), _wgslsmith_f_op_f32(-194f + -506f))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(668f, -596f, 1000f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1453f, -1517f, -745f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 1000f, 695f))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1694f), 1f, true)), 1192f)));
    return Struct_1(u_input.b, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 940f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1262f, _wgslsmith_f_op_f32(abs(1000f))) + _wgslsmith_f_op_f32(var_3.x + var_3.x)), _wgslsmith_f_op_f32(-var_3.x)));
}

fn func_4(arg_0: Struct_4) -> Struct_1 {
    var var_0 = arg_0.a.c.d.b.zzx;
    global0 = array<u32, 30>();
    let var_1 = reverseBits(-vec3<i32>(arg_0.a.d.c.x, arg_0.a.e.c.x, min(2147483647i, -63097i ^ arg_0.a.e.c.x)));
    let var_2 = ~(_wgslsmith_mod_u32(~firstTrailingBit(4294967295u), ~4294967295u) >> (_wgslsmith_div_u32(0u, func_2(arg_0.a.e.c.x < 2147483647i).a.x) % 32u));
    let var_3 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1000f)) + _wgslsmith_f_op_f32(step(-445f, var_0.x))), -147f)), arg_0.a.e.d.b.x, -946f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-363f + -1861f), _wgslsmith_f_op_f32(-var_0.x)) + 435f))));
    return arg_0.a.e.d;
}

fn func_1(arg_0: bool) -> f32 {
    var var_0 = Struct_2(u_input.a.zx, func_4(Struct_4(Struct_3(true, func_2(arg_0), Struct_2(vec2<u32>(global0[_wgslsmith_index_u32(138301u, 30u)], global0[_wgslsmith_index_u32(4294967295u, 30u)]), Struct_1(u_input.b, vec4<f32>(-631f, -160f, 346f, -1404f)), vec2<i32>(0i, 4469i), Struct_1(vec3<u32>(13306u, global0[_wgslsmith_index_u32(1u, 30u)], 0u), vec4<f32>(-695f, -1000f, 379f, -569f)), vec2<f32>(-889f, -1158f)), Struct_2(vec2<u32>(global0[_wgslsmith_index_u32(u_input.a.x, 30u)], 67255u), Struct_1(vec3<u32>(global0[_wgslsmith_index_u32(56895u, 30u)], 11829u, u_input.b.x), vec4<f32>(136f, 1298f, -1356f, 1075f)), vec2<i32>(-4807i, 1i), Struct_1(u_input.a.wxz, vec4<f32>(-151f, -788f, 672f, -712f)), vec2<f32>(-141f, 593f)), Struct_2(vec2<u32>(1u, global0[_wgslsmith_index_u32(81332u, 30u)]), Struct_1(u_input.b, vec4<f32>(1000f, -526f, 1000f, 1674f)), vec2<i32>(0i, -2147483647i), Struct_1(u_input.a.wwz, vec4<f32>(-105f, 470f, 618f, -308f)), vec2<f32>(1068f, 817f))), vec4<u32>(min(37362u, 53039u), min(global0[_wgslsmith_index_u32(0u, 30u)], u_input.a.x), firstLeadingBit(26037u), u_input.b.x))), vec2<i32>(-25614i, ~15721i), func_4(Struct_4(Struct_3(!arg_0, Struct_1(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(69053u, 30u)], 30u)], global0[_wgslsmith_index_u32(0u, 30u)], global0[_wgslsmith_index_u32(37562u, 30u)]), vec4<f32>(540f, 1364f, -722f, 1072f)), Struct_2(vec2<u32>(71474u, u_input.a.x), Struct_1(vec3<u32>(18495u, u_input.a.x, global0[_wgslsmith_index_u32(30175u, 30u)]), vec4<f32>(696f, -348f, -370f, 1000f)), vec2<i32>(-40760i, -41004i), Struct_1(vec3<u32>(28249u, 4294967295u, u_input.b.x), vec4<f32>(2540f, -2615f, -576f, 474f)), vec2<f32>(1042f, 881f)), Struct_2(vec2<u32>(0u, global0[_wgslsmith_index_u32(0u, 30u)]), Struct_1(vec3<u32>(13697u, 25018u, global0[_wgslsmith_index_u32(65110u, 30u)]), vec4<f32>(-748f, -1940f, -867f, 1000f)), vec2<i32>(-29892i, 4635i), Struct_1(vec3<u32>(u_input.a.x, u_input.b.x, global0[_wgslsmith_index_u32(69639u, 30u)]), vec4<f32>(2268f, -1083f, -642f, -1316f)), vec2<f32>(-477f, -676f)), Struct_2(u_input.a.zw, Struct_1(vec3<u32>(4202u, u_input.a.x, u_input.b.x), vec4<f32>(1140f, 1930f, -993f, 1000f)), vec2<i32>(0i, 14909i), Struct_1(u_input.b, vec4<f32>(2213f, -1046f, 1000f, 602f)), vec2<f32>(-480f, 590f))), u_input.a)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-208f, -765f)))));
    var var_1 = 603f;
    global0 = array<u32, 30>();
    let var_2 = false;
    let var_3 = Struct_1(vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(~u_input.b, vec3<u32>(var_0.d.a.x, var_0.a.x, var_0.d.a.x)), _wgslsmith_dot_vec3_u32(var_0.b.a, abs(var_0.b.a)), ~(~1u)), ~(~_wgslsmith_div_u32(21690u, 18441u)), 18009u >> (_wgslsmith_div_u32(func_4(Struct_4(Struct_3(false, Struct_1(u_input.b, var_0.d.b), Struct_2(u_input.a.zx, var_0.b, vec2<i32>(var_0.c.x, 46161i), Struct_1(var_0.b.a, var_0.b.b), var_0.d.b.yx), Struct_2(vec2<u32>(var_0.b.a.x, u_input.a.x), Struct_1(u_input.b, var_0.b.b), vec2<i32>(38033i, var_0.c.x), var_0.b, vec2<f32>(1030f, -494f)), Struct_2(u_input.b.yz, Struct_1(u_input.b, vec4<f32>(1478f, -363f, var_0.b.b.x, 150f)), var_0.c, Struct_1(var_0.b.a, var_0.d.b), vec2<f32>(-891f, 168f))), u_input.a)).a.x, ~1u) % 32u)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1703f), 350f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.b.b.x)) * var_0.b.b.x))), -320f));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.e.x)) + _wgslsmith_f_op_f32(var_3.b.x * 1038f));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 30>();
    var var_0 = u_input.a.x;
    var_0 = u_input.b.x;
    var var_1 = 797f;
    var_0 = ~(~(~_wgslsmith_dot_vec3_u32(~vec3<u32>(global0[_wgslsmith_index_u32(u_input.b.x, 30u)], global0[_wgslsmith_index_u32(32654u, 30u)], 4294967295u), _wgslsmith_sub_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(u_input.a.x, 30u)], u_input.a.x, global0[_wgslsmith_index_u32(0u, 30u)]), vec3<u32>(0u, 1u, 1u)))));
    let var_2 = ~(_wgslsmith_add_vec2_i32(firstLeadingBit(~vec2<i32>(1i, -2147483647i)), ~min(vec2<i32>(1i, 1i), vec2<i32>(1i, -28084i))) | firstTrailingBit(max(firstLeadingBit(vec2<i32>(36984i, 3850i)), reverseBits(vec2<i32>(-10750i, -2147483647i)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1532f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(false))))), ~4294967295u, vec2<i32>(~(abs(58849i) >> (_wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(16470u, 30u)], 1u, global0[_wgslsmith_index_u32(u_input.b.x, 30u)]) % 32u)), 1i));
}

