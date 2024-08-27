struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: u32,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: u32,
    d: vec4<i32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: u32) -> vec4<bool> {
    global0 = Struct_2(~(~(~(~arg_0.d))));
    global0 = Struct_2(~0u);
    global0 = Struct_2(_wgslsmith_sub_u32(u_input.c, abs(arg_0.d)));
    let var_0 = global0.a;
    let var_1 = select(true, true, arg_0.c);
    return !select(!vec4<bool>(any(vec4<bool>(var_1, false, false, arg_0.c)), any(arg_0.a), -1i != arg_1.x, any(arg_0.a.zy)), vec4<bool>(true, arg_0.c, var_1, any(vec4<bool>(true, arg_0.c, false, false)) & !arg_0.c), select(!(!vec4<bool>(var_1, true, arg_0.a.x, false)), !select(vec4<bool>(false, arg_0.a.x, false, arg_0.a.x), vec4<bool>(var_1, arg_0.c, true, arg_0.c), vec4<bool>(var_1, false, false, arg_0.a.x)), !(!arg_0.c)));
}

fn func_2(arg_0: bool) -> vec2<u32> {
    global0 = Struct_2(_wgslsmith_sub_u32(~(~u_input.c), 73968u));
    let var_0 = arg_0;
    var var_1 = vec4<bool>(any(select(select(vec4<bool>(var_0, false, true, var_0), vec4<bool>(false, var_0, var_0, false), vec4<bool>(arg_0, false, false, true)), select(func_3(Struct_1(vec3<bool>(var_0, arg_0, var_0), 1450f, false, 98871u), u_input.e, 0u), !vec4<bool>(false, false, arg_0, true), vec4<bool>(true, var_0, false, var_0)), any(vec2<bool>(false, arg_0)))), false, any(select(func_3(Struct_1(vec3<bool>(arg_0, var_0, true), 245f, var_0, 43132u), ~vec4<i32>(u_input.b.x, -13812i, u_input.d, u_input.e.x), global0.a).xyz, !select(vec3<bool>(false, false, false), vec3<bool>(true, arg_0, false), true), !any(vec2<bool>(arg_0, var_0)))), false);
    let var_2 = var_1.xz;
    var var_3 = Struct_1(var_1.xww, -446f, var_0, global0.a);
    return _wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(~(~vec2<u32>(34988u, var_3.d)), ~vec2<u32>(u_input.c, global0.a)), vec2<u32>(4294967295u, u_input.c >> (_wgslsmith_sub_u32(33478u, 0u) % 32u))), _wgslsmith_mult_vec2_u32(~vec2<u32>(11097u, 49899u) & vec2<u32>(1u, global0.a), ~_wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(0u, global0.a), vec2<u32>(u_input.c, 4294967295u)), select(vec2<u32>(78576u, 63336u), vec2<u32>(18426u, var_3.d), vec2<bool>(false, true)))));
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: vec2<u32>) -> Struct_2 {
    let var_0 = Struct_1(select(vec3<bool>(any(select(vec3<bool>(false, arg_1, true), vec3<bool>(false, arg_1, arg_1), arg_1)), all(!vec4<bool>(arg_1, true, true, arg_1)), all(vec3<bool>(arg_1, false, arg_1))), !vec3<bool>(select(true, false, false), true, all(vec3<bool>(arg_1, false, arg_1))), func_3(Struct_1(!vec3<bool>(false, true, arg_1), -1000f, arg_1 || true, 103453u), select(~u_input.e, ~u_input.e, select(vec4<bool>(arg_1, arg_1, arg_1, arg_1), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, arg_1))), select(_wgslsmith_sub_u32(arg_0.a, 58246u), arg_2.x, true)).x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1035f, 1808f)))))), !(54205u == select(1u, ~global0.a, all(vec2<bool>(true, false)))), ~arg_2.x);
    let var_1 = var_0.b;
    let var_2 = -(~(-u_input.d));
    var var_3 = any(vec4<bool>(true, var_0.c, !(var_0.a.x & false), var_0.c));
    var var_4 = global0.a;
    return arg_0;
}

fn func_5(arg_0: vec4<i32>, arg_1: u32, arg_2: Struct_2, arg_3: Struct_1) -> Struct_1 {
    var var_0 = vec3<bool>(arg_3.a.x, true, arg_3.a.x);
    var var_1 = _wgslsmith_f_op_f32(arg_3.b + _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(arg_3.b)), _wgslsmith_f_op_f32(-arg_3.b))))));
    global0 = Struct_2(_wgslsmith_div_u32(arg_3.d, ~4294967295u) | ~_wgslsmith_sub_u32(1470u ^ arg_3.d, arg_1 << (u_input.c % 32u)));
    var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(arg_3.b)), _wgslsmith_f_op_f32(-arg_3.b)));
    var var_2 = !func_3(arg_3, _wgslsmith_sub_vec4_i32(-(~vec4<i32>(u_input.d, -2147483647i, 2147483647i, u_input.d)), vec4<i32>(33576i, countOneBits(arg_0.x), max(arg_0.x, 9041i), u_input.d)), arg_3.d).wxy;
    return arg_3;
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: vec2<u32>) -> Struct_2 {
    let var_0 = func_5(u_input.e, abs(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.a, select(global0.a, u_input.c, false), _wgslsmith_add_u32(1u, global0.a)), _wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(42973u, 4294967295u, 26412u), vec3<u32>(4294967295u, u_input.c, 5840u)), ~vec3<u32>(4294967295u, u_input.c, arg_2.x)))), func_4(Struct_2(11828u), true, arg_2 & (func_2(false) << (~vec2<u32>(u_input.c, 0u) % vec2<u32>(32u)))), Struct_1(vec3<bool>(true, false, !any(vec2<bool>(true, false))), arg_0, any(vec2<bool>(true, true)), u_input.c));
    let var_1 = 90783i;
    let var_2 = var_0;
    global0 = func_4(func_4(func_4(Struct_2(func_4(Struct_2(u_input.c), var_0.c, arg_2).a), false, arg_2), true, _wgslsmith_add_vec2_u32(arg_2, ~vec2<u32>(17464u, arg_2.x)) & _wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(var_2.d, 1u) & vec2<u32>(u_input.c, global0.a), arg_2)), _wgslsmith_f_op_f32(var_0.b * 1000f) == arg_0, ~(~arg_2));
    global0 = Struct_2(u_input.c);
    return func_4(func_4(Struct_2(17096u), all(var_2.a), abs(arg_2)), true, _wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(func_4(Struct_2(global0.a), var_0.a.x, arg_2).a, firstTrailingBit(arg_2.x)), select(~vec2<u32>(27734u, 43723u), vec2<u32>(4294967295u, 4294967295u), var_0.c)), arg_2));
}

fn func_6(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: Struct_2) -> bool {
    var var_0 = arg_1.zz;
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(sign(641f)), 645f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -254f) * -107f));
    global0 = func_4(Struct_2(~_wgslsmith_sub_u32(var_0.x, 0u)), true, _wgslsmith_mult_vec2_u32(arg_1.yy, max(~(~vec2<u32>(u_input.c, 39312u)), arg_1.xy)));
    var var_2 = Struct_2(22375u);
    var var_3 = Struct_1(!select(!func_5(u_input.e, 0u, Struct_2(u_input.c), Struct_1(vec3<bool>(true, true, true), -869f, false, arg_0.a)).a, !func_3(Struct_1(vec3<bool>(false, true, true), -110f, true, 36645u), vec4<i32>(-2147483647i, 8695i, -61956i, u_input.d), 123u).xyx, vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(ceil(-691f)), true, 97232u);
    return var_3.a.x;
}

fn func_7(arg_0: vec2<f32>, arg_1: bool) -> Struct_1 {
    let var_0 = true;
    global0 = func_1(_wgslsmith_f_op_f32(arg_0.x - 807f), u_input.a.x ^ ~_wgslsmith_add_i32(_wgslsmith_div_i32(u_input.a.x, 0i), min(u_input.e.x, u_input.e.x)), vec2<u32>(global0.a, reverseBits(39527u) << (_wgslsmith_div_u32(59235u, ~global0.a) % 32u)));
    let var_1 = u_input.c;
    global0 = func_4(func_4(Struct_2(67298u), all(vec3<bool>(arg_1, var_0 | var_0, all(vec2<bool>(false, true)))), vec2<u32>(0u, ~50749u)), any(vec4<bool>(arg_1, false, arg_1 || !var_0, func_5(vec4<i32>(u_input.a.x, u_input.b.x, 0i, 55076i), 0u, Struct_2(0u), Struct_1(vec3<bool>(true, var_0, arg_1), arg_0.x, arg_1, 51899u)).c || !var_0)), vec2<u32>(_wgslsmith_add_u32(global0.a, 23523u) & u_input.c, ~(~(~var_1))));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.x, arg_0.x, -111f), vec3<f32>(-436f, arg_0.x, arg_0.x), var_0)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1210f, arg_0.x, arg_0.x) - vec3<f32>(723f, 254f, arg_0.x)))) + vec3<f32>(arg_0.x, arg_0.x, 483f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, arg_0.x, 210f))) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_0.x, arg_0.x, -202f))))))));
    return func_5(u_input.e, ~1u & (var_1 | abs(u_input.c)), Struct_2(~min(_wgslsmith_clamp_u32(22041u, 0u, global0.a), func_5(vec4<i32>(-2147483647i, u_input.b.x, u_input.e.x, 0i), 18631u, Struct_2(var_1), Struct_1(vec3<bool>(true, true, arg_1), 764f, var_0, 77433u)).d)), Struct_1(func_3(Struct_1(func_3(Struct_1(vec3<bool>(arg_1, true, false), arg_0.x, true, 71368u), u_input.e, u_input.c).xxy, -417f, select(true, var_0, var_0), global0.a), _wgslsmith_add_vec4_i32(-vec4<i32>(u_input.a.x, -8401i, 45850i, 21885i), select(vec4<i32>(u_input.b.x, u_input.d, u_input.e.x, u_input.e.x), u_input.e, vec4<bool>(false, var_0, false, arg_1))), func_1(_wgslsmith_f_op_f32(max(1209f, -226f)), countOneBits(u_input.b.x), ~vec2<u32>(4294967295u, 56795u)).a).yww, arg_0.x, !any(select(vec2<bool>(false, arg_1), vec2<bool>(false, arg_1), vec2<bool>(false, arg_1))), firstTrailingBit(4294967295u)));
}

fn func_8(arg_0: bool, arg_1: Struct_1, arg_2: bool, arg_3: vec4<u32>) -> Struct_2 {
    var var_0 = ~_wgslsmith_sub_vec2_u32(arg_3.zx, vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.c, 1u), arg_3.xzy) << (_wgslsmith_mod_u32(44703u, arg_1.d) % 32u), min(global0.a, arg_1.d)));
    global0 = func_4(func_1(_wgslsmith_f_op_f32(arg_1.b * _wgslsmith_f_op_f32(arg_1.b - _wgslsmith_f_op_f32(arg_1.b + arg_1.b))), max(u_input.d, ~u_input.a.x >> (~52483u % 32u)), vec2<u32>(64337u, _wgslsmith_add_u32(~global0.a, 111370u))), func_3(arg_1, u_input.e, select(1757u, global0.a, true) << (~(~39051u) % 32u)).x, min(~abs(firstLeadingBit(arg_3.ww)), _wgslsmith_add_vec2_u32(vec2<u32>(61184u, select(14971u, arg_1.d, false)), _wgslsmith_sub_vec2_u32(arg_3.yx, vec2<u32>(arg_3.x, 13803u)))));
    let var_1 = func_1(394f, -2147483647i, arg_3.xy);
    var var_2 = Struct_1(func_7(vec2<f32>(576f, arg_1.b), !arg_0).a, _wgslsmith_f_op_f32(select(600f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-691f)) + arg_1.b), true)), !func_7(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.b, arg_1.b) + vec2<f32>(-713f, arg_1.b))), ~0u > _wgslsmith_mod_u32(var_1.a, 91146u)).c, _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(arg_3, vec4<u32>(var_1.a, 24825u, 157u ^ var_0.x, 1u)), 41270u, ~(~func_5(u_input.e, global0.a, var_1, arg_1).d)));
    var var_3 = arg_1;
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_8(false, func_7(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(737f, 109f) + vec2<f32>(1000f, 229f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1423f, -237f) + vec2<f32>(211f, 521f)))), func_6(func_1(-1283f, u_input.b.x, vec2<u32>(39632u, global0.a) & vec2<u32>(global0.a, 84201u)), vec3<u32>(~56201u, u_input.c, 1u), Struct_2(abs(40157u)))), true, _wgslsmith_div_vec4_u32(min(vec4<u32>(_wgslsmith_div_u32(u_input.c, 4294967295u), 31098u << (0u % 32u), u_input.c, firstTrailingBit(global0.a)), _wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(global0.a, 0u, 30646u, u_input.c), vec4<u32>(global0.a, 49717u, u_input.c, u_input.c)), vec4<u32>(50834u, u_input.c, global0.a, global0.a))), _wgslsmith_div_vec4_u32(select(vec4<u32>(11839u, u_input.c, u_input.c, u_input.c) ^ vec4<u32>(u_input.c, u_input.c, 0u, 30539u), ~vec4<u32>(global0.a, 4294967295u, 23693u, u_input.c), global0.a == 3601u), firstTrailingBit(min(vec4<u32>(28165u, 64931u, u_input.c, global0.a), vec4<u32>(47085u, 17342u, 65570u, 4294967295u))))));
    global0 = Struct_2(~func_5(-abs(u_input.e), 4294967295u, Struct_2(1u), Struct_1(func_3(Struct_1(vec3<bool>(true, true, true), 1501f, false, global0.a), u_input.e, global0.a).ywy, _wgslsmith_f_op_f32(f32(-1f) * -579f), false, u_input.c)).d);
    global0 = func_4(func_8(select(true, false, true), Struct_1(vec3<bool>(true, any(vec2<bool>(false, true)), true), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-893f)), _wgslsmith_f_op_f32(sign(-497f)), false)), true, _wgslsmith_dot_vec2_u32(vec2<u32>(17770u, 61710u), vec2<u32>(122379u, 11780u) | vec2<u32>(global0.a, u_input.c))), false, select(_wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(global0.a, global0.a, u_input.c, 70692u), vec4<u32>(18719u, 4294967295u, 4294967295u, 1u), vec4<u32>(u_input.c, global0.a, u_input.c, 1u)), ~vec4<u32>(global0.a, 4294967295u, u_input.c, u_input.c)), ~vec4<u32>(u_input.c, 1u, global0.a, 0u), true)), func_6(Struct_2(_wgslsmith_div_u32(4294967295u, 58747u)), vec3<u32>((0u >> (0u % 32u)) >> (_wgslsmith_mod_u32(1u, 29752u) % 32u), u_input.c, _wgslsmith_mod_u32(_wgslsmith_sub_u32(0u, u_input.c), 19892u)), func_8(284f == _wgslsmith_f_op_f32(step(1306f, -2269f)), func_5(vec4<i32>(2147483647i, u_input.e.x, u_input.a.x, u_input.b.x), 62098u >> (u_input.c % 32u), Struct_2(1u), func_5(u_input.e, 47763u, Struct_2(global0.a), Struct_1(vec3<bool>(false, true, false), -432f, false, u_input.c))), -u_input.d <= u_input.b.x, vec4<u32>(u_input.c, ~0u, global0.a << (u_input.c % 32u), 0u))), ~(~_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 39326u), vec2<u32>(global0.a, global0.a), vec2<u32>(u_input.c, global0.a))) | _wgslsmith_add_vec2_u32(countOneBits(~vec2<u32>(u_input.c, global0.a)), countOneBits(vec2<u32>(global0.a, global0.a)) << (vec2<u32>(1u, 1u) % vec2<u32>(32u))));
    var var_0 = min(u_input.b, ~reverseBits(abs(u_input.a.zz)));
    var var_1 = select(func_3(func_5(u_input.e, _wgslsmith_dot_vec3_u32(~vec3<u32>(0u, global0.a, global0.a), ~vec3<u32>(87438u, 44131u, 46641u)), func_8(true, Struct_1(vec3<bool>(false, false, true), -837f, true, 27463u), all(vec2<bool>(true, true)), max(vec4<u32>(7198u, global0.a, 8131u, global0.a), vec4<u32>(u_input.c, 112548u, 4294967295u, u_input.c))), Struct_1(vec3<bool>(true, true, true), _wgslsmith_f_op_f32(682f + 3016f), true, _wgslsmith_clamp_u32(global0.a, global0.a, u_input.c))), _wgslsmith_sub_vec4_i32(select(abs(vec4<i32>(13587i, 0i, 22766i, var_0.x)), vec4<i32>(u_input.d, u_input.b.x, 19338i, u_input.e.x), func_3(Struct_1(vec3<bool>(false, true, true), -697f, true, global0.a), vec4<i32>(-62224i, u_input.b.x, -1i, 0i), global0.a)), ~_wgslsmith_mod_vec4_i32(u_input.e, u_input.e)), func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - 477f)), reverseBits(countOneBits(0i)), vec2<u32>(1u, 1u)).a).zw, vec2<bool>(true, true), ~(~global0.a) >= ~0u);
    var var_2 = -2147483647i;
    var var_3 = !func_5(u_input.e, global0.a, func_1(_wgslsmith_f_op_f32(f32(-1f) * -790f), max(-var_0.x, -6226i), ~_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(u_input.c, global0.a))), Struct_1(!select(vec3<bool>(var_1.x, var_1.x, false), vec3<bool>(var_1.x, var_1.x, var_1.x), var_1.x), 1044f, true, 43233u)).c;
    let x = u_input.a;
    s_output = StorageBuffer(-1i, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(344f, 261f))) * 157f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1055f), _wgslsmith_f_op_f32(floor(438f)))), ~(u_input.c >> (_wgslsmith_add_u32(u_input.c & 6664u, u_input.c) % 32u)), vec4<i32>(_wgslsmith_mod_i32(~abs(-1i), select(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, u_input.e.x, -1i), u_input.e.yyw), -1i, var_1.x)), var_0.x, 1i, u_input.b.x), vec4<u32>(0u << (u_input.c % 32u), u_input.c, ~78311u, 30307u));
}

