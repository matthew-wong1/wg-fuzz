struct Struct_1 {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: vec2<i32>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 32> = array<vec4<f32>, 32>(vec4<f32>(-1452f, -618f, 507f, 490f), vec4<f32>(2181f, -134f, 916f, -1200f), vec4<f32>(1170f, -1323f, 595f, 1349f), vec4<f32>(-1539f, -1008f, 212f, -210f), vec4<f32>(-685f, 191f, 1044f, 2108f), vec4<f32>(2023f, -341f, 925f, 181f), vec4<f32>(348f, -1798f, 231f, -1192f), vec4<f32>(275f, -479f, -457f, 1741f), vec4<f32>(-131f, 493f, 562f, -1177f), vec4<f32>(-781f, 897f, -2324f, 344f), vec4<f32>(3437f, 420f, -1169f, -1809f), vec4<f32>(213f, -1412f, 752f, 1121f), vec4<f32>(-1521f, -313f, -601f, -847f), vec4<f32>(-161f, -583f, 458f, 1576f), vec4<f32>(857f, -1610f, -1280f, 483f), vec4<f32>(1434f, 1000f, -319f, -1000f), vec4<f32>(-732f, 2365f, 140f, 2633f), vec4<f32>(-269f, 920f, -1000f, -477f), vec4<f32>(-408f, 1288f, -1228f, -1698f), vec4<f32>(-635f, -373f, 1000f, -1606f), vec4<f32>(-801f, 344f, -640f, -825f), vec4<f32>(1000f, -983f, 860f, -1655f), vec4<f32>(-303f, -927f, -663f, -2147f), vec4<f32>(-1335f, 155f, 1004f, -1832f), vec4<f32>(1000f, 509f, -2387f, 1670f), vec4<f32>(306f, -316f, 1781f, -544f), vec4<f32>(-514f, -1113f, 881f, -344f), vec4<f32>(-1000f, 191f, 1304f, 771f), vec4<f32>(948f, -473f, -1108f, 445f), vec4<f32>(-950f, -2454f, 1010f, 814f), vec4<f32>(662f, 487f, 1779f, 503f), vec4<f32>(577f, 136f, 1201f, -568f));

var<private> global1: vec3<f32>;

var<private> global2: Struct_1 = Struct_1(0u, 1i, vec4<u32>(37164u, 90130u, 1u, 12890u), vec2<i32>(-1i, -1i), vec4<bool>(true, true, false, true));

var<private> global3: Struct_1;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec3<f32>, arg_2: vec3<u32>, arg_3: Struct_1) -> u32 {
    let var_0 = arg_3;
    let var_1 = var_0.c.zx;
    let var_2 = Struct_1(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(reverseBits(arg_2) & firstTrailingBit(arg_3.c.wyw), abs(~arg_3.c.www), ~vec3<u32>(arg_2.x, var_1.x, arg_3.c.x)), arg_2), i32(-1i) * -7010i, ~vec4<u32>(~_wgslsmith_sub_u32(global2.a, 1u), var_0.a, global3.a, 4294967295u), ~(~vec2<i32>(countOneBits(27601i), select(global3.b, arg_3.b, arg_0.x))), var_0.e);
    let var_3 = Struct_1(~_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(countOneBits(arg_3.c.xzz), var_2.c.xwy), ~1u, _wgslsmith_div_u32(77918u, 1u)), -2147483647i, _wgslsmith_mult_vec4_u32(vec4<u32>(firstLeadingBit(0u), var_0.c.x, _wgslsmith_dot_vec2_u32(var_2.c.yw, var_0.c.yz), ~17318u), _wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(var_0.c, global2.c), var_2.c)) >> (firstLeadingBit(vec4<u32>(var_2.a, var_0.a, 4294967295u, 1u) << (select(vec4<u32>(arg_3.c.x, 4478u, 1u, global2.a), vec4<u32>(global3.c.x, 11089u, 4294967295u, var_2.c.x), arg_3.e) % vec4<u32>(32u))) % vec4<u32>(32u)), _wgslsmith_mult_vec2_i32(var_0.d, firstTrailingBit(var_0.d)), !arg_0);
    global2 = Struct_1(reverseBits(global2.a), -36370i, ~reverseBits(~vec4<u32>(global3.c.x, var_2.c.x, 61617u, global3.c.x) & ~arg_3.c), vec2<i32>(max(countOneBits(_wgslsmith_div_i32(var_2.b, 0i)), var_3.d.x), 33305i), !select(var_0.e, !vec4<bool>(global3.e.x, arg_3.e.x, var_0.e.x, global3.e.x), arg_3.e));
    return arg_2.x;
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-505f))));
    global0 = array<vec4<f32>, 32>();
    global0 = array<vec4<f32>, 32>();
    var var_1 = !((!all(vec4<bool>(false, false, false, true)) | (func_3(vec4<bool>(global2.e.x, global3.e.x, true, false), vec3<f32>(-1148f, global1.x, var_0), global3.c.wzy, Struct_1(0u, -2147483647i, vec4<u32>(global3.c.x, 42432u, 1u, 0u), vec2<i32>(0i, 0i), vec4<bool>(global3.e.x, false, true, global3.e.x))) != global3.c.x)) && (2147483647i > abs(abs(u_input.c.x))));
    var var_2 = Struct_1(_wgslsmith_mult_u32(~4294967295u, ~(_wgslsmith_sub_u32(global2.c.x, 62978u) | global3.c.x)), 2147483647i, ~(abs(select(vec4<u32>(global3.c.x, 664u, global3.c.x, 22329u), global2.c, false)) | global2.c), _wgslsmith_add_vec2_i32(vec2<i32>(2147483647i & global3.d.x, firstLeadingBit(global2.d.x)), _wgslsmith_clamp_vec2_i32(select(u_input.c, select(vec2<i32>(-7126i, global3.d.x), u_input.c, vec2<bool>(global3.e.x, true)), vec2<bool>(false, global2.e.x)), ~select(global2.d, vec2<i32>(-19233i, -38244i), global2.e.yx), reverseBits(vec2<i32>(0i, global2.b)))), global3.e);
    return Struct_1(func_3(!vec4<bool>(true, global3.e.x, !var_2.e.x, true), _wgslsmith_f_op_vec3_f32(vec3<f32>(300f, -1256f, -110f) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global1.x, global1.x, 813f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(130f, -201f, global1.x)))), _wgslsmith_clamp_vec3_u32(vec3<u32>(global2.c.x, global3.a, 0u), abs(var_2.c.wwy), vec3<u32>(0u, 4294967295u, var_2.a)) & abs(vec3<u32>(13396u, 1u, 0u)), Struct_1(2761u, -firstTrailingBit(var_2.d.x), _wgslsmith_sub_vec4_u32(global3.c, abs(global2.c)), global3.d | -global3.d, !vec4<bool>(global3.e.x, false, false, true))), -2147483647i, abs(global3.c), vec2<i32>(abs(global2.d.x), i32(-1i) * -41024i), vec4<bool>(global3.e.x, true, true, true));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1) -> u32 {
    let var_0 = ~global2.a;
    var var_1 = any(select(func_2().e.ww, func_2().e.yy, false)) & func_2().e.x;
    let var_2 = vec4<bool>(all(!(!(!arg_1.e.yx))), any(select(select(vec2<bool>(global2.e.x, global2.e.x), vec2<bool>(false, false), arg_1.e.zy), !global3.e.yz, vec2<bool>(global3.e.x, false))) && global3.e.x, select(2147483647i > global3.d.x, !global3.e.x, func_2().e.x), select(false, !global2.e.x, all(!global3.e.wy)));
    let var_3 = vec4<bool>(global2.e.x, false, !select(true, var_2.x, true), true);
    var var_4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), -913f);
    return 7846u;
}

fn func_1(arg_0: vec3<f32>, arg_1: vec3<bool>, arg_2: bool, arg_3: vec3<i32>) -> Struct_1 {
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -198f), arg_0.x, -1220f)) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(arg_0, vec3<f32>(647f, 830f, 104f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-940f, arg_0.x, global1.x))))));
    global3 = Struct_1(global3.a, ~arg_3.x, ~vec4<u32>(4294967295u, func_4(arg_0.xy, func_2()), _wgslsmith_mod_u32(29437u, ~global2.c.x), _wgslsmith_div_u32(global3.c.x, 19696u) << (~60946u % 32u)), ~vec2<i32>(_wgslsmith_add_i32(global2.d.x, global3.b << (global3.c.x % 32u)), global2.b), select(vec4<bool>(!all(vec3<bool>(true, global2.e.x, arg_1.x)), arg_0.x < -410f, arg_1.x, any(vec4<bool>(true, true, true, true))), !global2.e, global2.e));
    let var_0 = _wgslsmith_f_op_vec2_f32(-global1.yy);
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1857f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(293f, _wgslsmith_f_op_f32(max(arg_0.x, var_0.x)))), var_0.x)), _wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(f32(-1f) * -1982f))));
    var var_2 = all(select(select(vec4<bool>(true, !global2.e.x, global3.e.x, arg_1.x | true), global3.e, true), select(vec4<bool>(true, true, arg_2, global2.e.x), func_2().e, all(vec3<bool>(global2.e.x, arg_2, global3.e.x))), false));
    return Struct_1(17341u, -3119i, vec4<u32>(global3.a, global3.c.x, 4294967295u, 0u), ~global3.d, vec4<bool>(-8231i < max(-2147483647i, global3.b), true, select(func_2().e.x, true, true), !global3.e.x));
}

fn func_5(arg_0: Struct_1, arg_1: vec2<f32>) -> u32 {
    let var_0 = ~(-((vec4<i32>(global2.d.x, -6682i, global2.d.x, 2147483647i) & vec4<i32>(global2.b, arg_0.d.x, 39616i, global2.d.x)) << (~arg_0.c % vec4<u32>(32u))));
    let var_1 = arg_0;
    global2 = Struct_1(~global2.a ^ (~arg_0.c.x | ~_wgslsmith_dot_vec3_u32(arg_0.c.wxx, var_1.c.yzx)), _wgslsmith_div_i32(2147483647i, -8448i >> (arg_0.a % 32u)), ~vec4<u32>(var_1.a, arg_0.c.x, 0u, arg_0.a << (var_1.c.x % 32u)) ^ ~(~(~arg_0.c)), var_0.wz, vec4<bool>(any(!arg_0.e.xw) | global2.e.x, (~var_1.c.x & countOneBits(var_1.c.x)) < firstTrailingBit(~25059u), (~arg_0.c.x << (min(global3.a, 12010u) % 32u)) > _wgslsmith_mult_u32(0u, ~54632u), true));
    var var_2 = arg_0.c.yxx;
    global1 = vec3<f32>(-916f, -1214f, 331f);
    return 1u;
}

fn func_6(arg_0: vec3<u32>) -> Struct_1 {
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, global1.x, -1632f) * vec3<f32>(-512f, -1000f, global1.x)) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(global1.x, -1540f, 926f), vec3<f32>(global1.x, 523f, -1000f))))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(global1.x * -531f), _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(floor(global1.x))))), !(!(!vec3<bool>(true, global2.e.x, global2.e.x))))) + vec3<f32>(global1.x, -636f, global1.x));
    let var_0 = vec2<i32>(~(-(~u_input.a)), _wgslsmith_div_i32(max(func_2().d.x, ~47165i), u_input.c.x) ^ 0i);
    var var_1 = _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(global3.d, -(~(vec2<i32>(global3.b, 35093i) >> (vec2<u32>(1u, 0u) % vec2<u32>(32u))))), select(firstTrailingBit(var_0), select(_wgslsmith_add_vec2_i32(vec2<i32>(var_0.x, u_input.b), global3.d), countOneBits(global3.d) ^ -global3.d, !global2.e.zw), vec2<bool>(true, true)));
    var_1 = -global2.d.x;
    var var_2 = func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_div_f32(global1.x, -331f), _wgslsmith_f_op_f32(global1.x - -107f), _wgslsmith_f_op_f32(-global1.x)))) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1600f, 661f, 1098f), vec3<f32>(-436f, 1468f, 1080f), true))))), vec3<bool>(!(global1.x > -531f), true, !(!(!global2.e.x))), all(select(vec3<bool>(true, global2.e.x, any(vec4<bool>(global3.e.x, global2.e.x, global2.e.x, true))), func_2().e.yxx, !func_1(vec3<f32>(global1.x, 1000f, global1.x), global3.e.yyz, true, vec3<i32>(-1i, -2147483647i, -6283i)).e.zwy)), _wgslsmith_sub_vec3_i32(max(vec3<i32>(0i, var_0.x, global3.d.x), vec3<i32>(global3.b, global2.b, global3.b)), ~vec3<i32>(2147483647i, -2147483647i, global3.d.x) << (vec3<u32>(arg_0.x, 4294967295u, 44101u) % vec3<u32>(32u))) ^ vec3<i32>(global2.b, ~(var_0.x | 1i), firstTrailingBit(global2.b)));
    return Struct_1(global3.c.x, _wgslsmith_mod_i32(-global3.d.x, 0i | max(~global3.b, global2.d.x)), _wgslsmith_add_vec4_u32(var_2.c, ~var_2.c), firstTrailingBit(u_input.c), !func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1543f, global1.x, -559f)) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global1.x, 585f, -1000f)))), vec3<bool>(!var_2.e.x, false, true && var_2.e.x), true, vec3<i32>(0i, 46570i, u_input.b)).e);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(vec3<u32>(func_5(func_1(_wgslsmith_div_vec3_f32(vec3<f32>(global1.x, -286f, global1.x), vec3<f32>(300f, 157f, global1.x)), vec3<bool>(global2.e.x, false, global3.e.x), !global3.e.x, vec3<i32>(0i, u_input.a, 13878i) ^ vec3<i32>(-28187i, global3.b, -3853i)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(global1.yx, vec2<f32>(-136f, global1.x), vec2<bool>(global2.e.x, global2.e.x))), _wgslsmith_f_op_vec2_f32(sign(global1.yy)))), 4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(39136u, global2.c.x, global3.a), global2.c.zxw), min(4294967295u, 0u)), ~global3.c.xx)));
    global1 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global1.x, 974f, 1885f))) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1008f, -378f, global1.x), vec3<f32>(global1.x, global1.x, 1567f), vec3<bool>(global2.e.x, true, false)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-844f, global1.x, -1000f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(2380f, -674f, -350f) + vec3<f32>(global1.x, global1.x, global1.x))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-645f, _wgslsmith_f_op_f32(round(global1.x)), _wgslsmith_f_op_f32(select(373f, -484f, global2.e.x))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global1.x, -1000f, -408f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 905f, -496f)), !vec3<bool>(false, global3.e.x, var_0.e.x))))))));
    var var_1 = var_0;
    let var_2 = func_2();
    var var_3 = global1.x;
    global1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(-236f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) - global1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x + global1.x)), global1.x));
    global3 = func_2();
    var var_4 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-345f * global1.x), _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(exp2(global1.x))) + vec3<f32>(1513f, _wgslsmith_f_op_f32(-global1.x), -1268f)), vec3<bool>(select(-2147483647i >= global2.d.x, true, !global2.e.x), true, _wgslsmith_f_op_f32(f32(-1f) * -1000f) == _wgslsmith_f_op_f32(ceil(-311f))), true, ~((vec3<i32>(global2.d.x, -2147483647i, -2147483647i) | vec3<i32>(1i, -1i, var_2.d.x)) & abs(vec3<i32>(2147483647i, var_2.d.x, -69619i)))).c.x);
}

