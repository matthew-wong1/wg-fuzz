struct Struct_1 {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 24>;

var<private> global1: array<vec3<i32>, 14>;

var<private> global2: vec4<u32> = vec4<u32>(71446u, 98421u, 1u, 72518u);

var<private> global3: f32;

var<private> global4: vec2<i32> = vec2<i32>(-1i, 0i);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<f32>) -> vec4<u32> {
    var var_0 = vec2<i32>(_wgslsmith_mod_i32(arg_1.c.x, 2147483647i), arg_1.c.x);
    var var_1 = 408f;
    var_1 = _wgslsmith_f_op_f32(sign(403f));
    let var_2 = Struct_1(vec4<u32>(arg_1.a.x, ~arg_0.a.x, ~(~(~0u)), ~_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.b.x, 31093u, arg_1.b.x, 48680u), vec4<u32>(0u, 4294967295u, 0u, arg_0.a.x)), 4294967295u)), select(arg_1.b, reverseBits(vec2<u32>(~arg_0.a.x, global2.x)), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, false), true))), (~vec3<i32>(2147483647i, arg_0.c.x, global4.x) & (vec3<i32>(2147483647i, arg_0.c.x, -23668i) ^ abs(arg_0.c))) << (_wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(~global0[_wgslsmith_index_u32(0u, 24u)], arg_1.a.wxz), select(vec3<u32>(1u, global2.x, arg_0.a.x), vec3<u32>(0u, global2.x, 0u), false) | global2.xww) % vec3<u32>(32u)));
    global4 = vec2<i32>(i32(-1i) * -(i32(-1i) * -2872i), arg_0.c.x);
    return abs(~(~(~var_2.a | _wgslsmith_mod_vec4_u32(arg_0.a, arg_0.a))));
}

fn func_4(arg_0: Struct_1) -> vec2<u32> {
    var var_0 = arg_0;
    var var_1 = var_0.c.xz;
    let var_2 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-679f, _wgslsmith_f_op_f32(f32(-1f) * -140f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(884f, -135f), vec2<f32>(806f, -291f)) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-739f, -1190f))))), (~var_1.x > (2147483647i ^ var_0.c.x)) || true))));
    var var_3 = ~arg_0.a.x;
    var_1 = ~max(vec2<i32>(_wgslsmith_add_i32(abs(2147483647i), -1i), 1i), min(firstTrailingBit(var_0.c.xz), vec2<i32>(-25256i, arg_0.c.x)) | (vec2<i32>(global4.x, 2147483647i) ^ vec2<i32>(2147483647i, 0i)));
    return vec2<u32>(firstLeadingBit(~select(~75948u, 0u, select(true, true, false))), arg_0.b.x);
}

fn func_2() -> vec2<bool> {
    var var_0 = Struct_1(~(~(~abs(vec4<u32>(4294967295u, global2.x, global2.x, global2.x)))), ~(~(~global2.yy)), global1[_wgslsmith_index_u32(~(~(~select(4294967295u, 4294967295u, true))), 14u)]);
    global0 = array<vec3<u32>, 24>();
    var var_1 = ~global2.x;
    global3 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1833f))), _wgslsmith_f_op_f32(min(761f, _wgslsmith_f_op_f32(543f * -618f))), true))), -405f, all(select(select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true)), vec4<bool>(false, true, false, false), true), !select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), false), true))));
    var var_2 = Struct_1(vec4<u32>(_wgslsmith_sub_u32(1u, var_0.b.x), _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(44866u, var_0.a.x), global2.yy), abs(1u)), 4294967295u, _wgslsmith_clamp_u32(~84212u, 86205u, ~47274u)) ^ select(_wgslsmith_div_vec4_u32(var_0.a ^ var_0.a, var_0.a), _wgslsmith_clamp_vec4_u32(~var_0.a, var_0.a, var_0.a), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), 13808u == global2.x)), ~func_4(Struct_1(func_3(Struct_1(var_0.a, vec2<u32>(7062u, global2.x), var_0.c), Struct_1(var_0.a, global2.yy, global1[_wgslsmith_index_u32(global2.x, 14u)]), vec3<f32>(-637f, -1542f, 482f)), reverseBits(vec2<u32>(var_0.b.x, 23548u)), global1[_wgslsmith_index_u32(4294967295u, 14u)])), abs(~_wgslsmith_div_vec3_i32(vec3<i32>(41858i, u_input.a, global4.x) >> (global0[_wgslsmith_index_u32(9739u, 24u)] % vec3<u32>(32u)), -vec3<i32>(-13754i, -2147483647i, u_input.a))));
    return vec2<bool>(!(1u < var_0.a.x), false || (var_0.c.x == countOneBits(~(-42390i))));
}

fn func_5(arg_0: bool, arg_1: vec2<bool>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(vec4<u32>(1u, abs(arg_2.a.x), arg_2.a.x, arg_2.b.x) ^ ~(~_wgslsmith_mod_vec4_u32(arg_2.a, arg_2.a)), ~global2.zy, ~vec3<i32>(abs(-2147483647i), u_input.a, -11098i) >> (global2.wwx % vec3<u32>(32u)));
    let var_1 = select(arg_1, !select(func_2(), vec2<bool>(all(vec3<bool>(false, arg_1.x, arg_1.x)), 41142i <= global4.x), select(select(arg_1, vec2<bool>(true, true), arg_0), vec2<bool>(arg_0, true), arg_2.c.x >= var_0.c.x)), false);
    var var_2 = any(vec4<bool>(any(vec2<bool>(true, false)) || true, any(select(!vec4<bool>(true, false, true, arg_1.x), vec4<bool>(var_1.x, false, var_1.x, var_1.x), vec4<bool>(arg_0, arg_0, true, false))), var_1.x, arg_1.x));
    var var_3 = arg_2.a.x;
    global4 = max(_wgslsmith_sub_vec2_i32(~_wgslsmith_div_vec2_i32(vec2<i32>(arg_2.c.x, -123i), vec2<i32>(var_0.c.x, -65839i)) >> (vec2<u32>(4294967295u, arg_2.b.x << (var_0.a.x % 32u)) % vec2<u32>(32u)), ~vec2<i32>(u_input.a, var_0.c.x)), vec2<i32>(2147483647i ^ (_wgslsmith_add_i32(-1726i, 2147483647i) >> (arg_2.a.x % 32u)), -(~reverseBits(-16809i))));
    return Struct_1(firstLeadingBit(var_0.a), func_4(Struct_1(~vec4<u32>(4294967295u, 1u, global2.x, var_0.a.x), vec2<u32>(~var_0.b.x, abs(4294967295u)), _wgslsmith_add_vec3_i32(vec3<i32>(-40995i, global4.x, -1i), -var_0.c))), var_0.c);
}

fn func_1(arg_0: bool, arg_1: vec2<bool>, arg_2: f32, arg_3: vec3<bool>) -> vec4<u32> {
    global3 = -1035f;
    let var_0 = func_5(arg_1.x, func_2(), Struct_1(_wgslsmith_mod_vec4_u32(abs(vec4<u32>(0u, global2.x, global2.x, 18239u)), select(_wgslsmith_clamp_vec4_u32(vec4<u32>(global2.x, 29491u, global2.x, global2.x), vec4<u32>(global2.x, global2.x, 0u, global2.x), vec4<u32>(116589u, global2.x, global2.x, global2.x)), vec4<u32>(global2.x, global2.x, global2.x, global2.x), select(vec4<bool>(arg_0, arg_1.x, arg_1.x, true), vec4<bool>(arg_1.x, arg_3.x, arg_3.x, false), vec4<bool>(true, arg_0, true, arg_1.x)))), _wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(max(vec2<u32>(28466u, global2.x), global2.zz), max(global2.zz, vec2<u32>(1u, 14602u)), _wgslsmith_sub_vec2_u32(global2.zy, vec2<u32>(27120u, 0u))), global2.yx), global1[_wgslsmith_index_u32(global2.x, 14u)]));
    global1 = array<vec3<i32>, 14>();
    global4 = firstLeadingBit(-_wgslsmith_clamp_vec2_i32(var_0.c.yz, vec2<i32>(u_input.a & global4.x, firstTrailingBit(u_input.a)), var_0.c.xy));
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, -2357f, arg_2), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1286f, arg_2, 1627f)), arg_3)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2, arg_2, arg_2) - vec3<f32>(-419f, arg_2, -968f)))), arg_3)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1000f, 296f, arg_2))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, arg_2, arg_2))))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1410f, -558f, -1390f))))))));
    return vec4<u32>(var_0.b.x, 58720u, 33080u, 42118u);
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<f32>) -> Struct_1 {
    global2 = max(arg_2.a, vec4<u32>(arg_0.b.x, select(~global2.x, arg_0.b.x, false), ~_wgslsmith_div_u32(arg_2.b.x, arg_1.a.x) >> (~arg_2.b.x % 32u), _wgslsmith_mod_u32(4294967295u, arg_0.a.x)));
    var var_0 = vec3<f32>(-1018f, arg_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(974f))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.zx + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0.x, 305f)))))));
    let var_2 = func_5(any(vec2<bool>(all(vec3<bool>(false, true, false)) || any(vec3<bool>(false, false, true)), true)), select(select(vec2<bool>(true, false), vec2<bool>(true, true), func_2()), vec2<bool>(!select(true, false, false), func_2().x), vec2<bool>(true, (-1i & arg_0.c.x) > 49600i)), func_5(_wgslsmith_f_op_f32(-1274f * _wgslsmith_f_op_f32(exp2(var_0.x))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -891f)), select(select(func_2(), select(vec2<bool>(true, false), vec2<bool>(true, true), false), true), func_2(), true), arg_0)).c.x;
    var var_3 = _wgslsmith_f_op_vec2_f32(-var_0.zx);
    return Struct_1(func_3(func_5(false, select(func_2(), vec2<bool>(true, true), arg_2.a.x >= 35958u), arg_1), arg_1, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_3.x, arg_3.x, var_0.x), vec3<f32>(1248f, 377f, 352f), false)) * vec3<f32>(var_0.x, var_1.x, 1000f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-740f, var_3.x, arg_3.x)), !select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true))))), arg_1.a.wy >> (arg_2.a.xw % vec2<u32>(32u)), _wgslsmith_sub_vec3_i32(select((arg_1.c ^ global1[_wgslsmith_index_u32(arg_0.a.x, 14u)]) | abs(vec3<i32>(-43198i, 2147483647i, global4.x)), arg_2.c, vec3<bool>(true, true, true)), _wgslsmith_add_vec3_i32(func_5(true, vec2<bool>(true, true), arg_0).c >> (global0[_wgslsmith_index_u32(arg_1.b.x, 24u)] % vec3<u32>(32u)), -arg_0.c)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(Struct_1(_wgslsmith_add_vec4_u32(func_1(u_input.a == global4.x, select(vec2<bool>(false, true), vec2<bool>(false, false), false), _wgslsmith_f_op_f32(866f + -976f), vec3<bool>(true, false, false)), ~vec4<u32>(30530u, global2.x, 4294967295u, 4294967295u)), ~(~(global2.yy >> (global2.zw % vec2<u32>(32u)))), _wgslsmith_mod_vec3_i32(vec3<i32>(12760i << (global2.x % 32u), -40773i, ~20383i), firstLeadingBit(vec3<i32>(-3598i, global4.x, global4.x)))), func_5(!any(vec4<bool>(true, true, false, false)), select(vec2<bool>(true, select(true, true, true)), vec2<bool>(true, true), true), func_5(all(vec4<bool>(true, true, true, true)), vec2<bool>(true, true), func_5(false, vec2<bool>(false, false), func_5(false, vec2<bool>(true, true), Struct_1(vec4<u32>(1u, 122699u, 4281u, 4294967295u), global2.zy, vec3<i32>(2147483647i, global4.x, -28103i)))))), Struct_1(vec4<u32>(_wgslsmith_add_u32(global2.x, 8047u), 4119u, ~_wgslsmith_mult_u32(global2.x, global2.x), ~_wgslsmith_mod_u32(1u, 1u)), vec2<u32>(global2.x, _wgslsmith_div_u32(global2.x, 0u)), global1[_wgslsmith_index_u32(~global2.x, 14u)] ^ abs(global1[_wgslsmith_index_u32(0u, 14u)] >> (global2.xwx % vec3<u32>(32u)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(591f, -307f)))))));
    let var_1 = firstTrailingBit(vec4<i32>(global4.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -2147483647i), ~var_0.c.yx), 0i, ~_wgslsmith_div_i32(abs(var_0.c.x), global4.x)));
    let var_2 = false;
    let var_3 = _wgslsmith_sub_u32(countOneBits(var_0.b.x), 60367u);
    let var_4 = func_6(Struct_1(var_0.a, ~var_0.b, firstLeadingBit(vec3<i32>(u_input.a, _wgslsmith_mod_i32(var_1.x, 22310i), _wgslsmith_clamp_i32(global4.x, var_1.x, u_input.a)))), Struct_1(vec4<u32>(var_3, global2.x, ~(~4294967295u), func_6(Struct_1(vec4<u32>(global2.x, var_3, var_3, var_0.b.x), var_0.b, vec3<i32>(global4.x, 2147483647i, u_input.a)), Struct_1(vec4<u32>(global2.x, global2.x, global2.x, 19331u), vec2<u32>(0u, 19025u), vec3<i32>(global4.x, u_input.a, var_1.x)), func_6(Struct_1(vec4<u32>(var_3, 19411u, 12780u, global2.x), global2.xy, vec3<i32>(2884i, var_0.c.x, -1959i)), Struct_1(vec4<u32>(32360u, global2.x, var_0.a.x, var_0.b.x), global2.wz, var_1.wwx), Struct_1(vec4<u32>(4294967295u, global2.x, 1093u, 98721u), global2.zw, global1[_wgslsmith_index_u32(var_3, 14u)]), vec2<f32>(1512f, 689f)), vec2<f32>(1000f, -1422f)).b.x), reverseBits(var_0.b), ~global1[_wgslsmith_index_u32(43209u, 14u)]), Struct_1(var_0.a, var_0.b, vec3<i32>(func_6(func_5(var_2, vec2<bool>(var_2, var_2), Struct_1(var_0.a, vec2<u32>(1u, var_0.a.x), vec3<i32>(-1i, var_1.x, -30242i))), Struct_1(vec4<u32>(global2.x, var_0.b.x, var_0.a.x, var_0.a.x), vec2<u32>(var_0.a.x, 1u), var_0.c), func_6(Struct_1(vec4<u32>(var_0.a.x, 1u, var_3, 0u), var_0.a.xz, vec3<i32>(12650i, var_0.c.x, 2147483647i)), Struct_1(vec4<u32>(global2.x, 0u, var_3, global2.x), vec2<u32>(global2.x, var_0.a.x), global1[_wgslsmith_index_u32(10908u, 14u)]), Struct_1(var_0.a, global2.wy, var_1.xwy), vec2<f32>(-854f, 285f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -1149f))).c.x, (global4.x ^ 0i) ^ _wgslsmith_mod_i32(8382i, -2562i), u_input.a)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(228f, 1000f))))));
    let var_5 = var_0.a.zz;
    let x = u_input.a;
    s_output = StorageBuffer(-var_1.x ^ var_0.c.x, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-593f, _wgslsmith_f_op_f32(1000f - -1123f), _wgslsmith_f_op_f32(f32(-1f) * -770f), _wgslsmith_f_op_f32(-122f - 1375f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))))));
}

