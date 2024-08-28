struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 12> = array<vec3<u32>, 12>(vec3<u32>(80353u, 15590u, 86350u), vec3<u32>(4294967295u, 4294967295u, 0u), vec3<u32>(1u, 96176u, 0u), vec3<u32>(1u, 4294967295u, 5926u), vec3<u32>(4294967295u, 15864u, 46199u), vec3<u32>(1u, 1u, 18288u), vec3<u32>(73487u, 79111u, 4294967295u), vec3<u32>(59293u, 99756u, 3029u), vec3<u32>(1u, 80590u, 0u), vec3<u32>(10670u, 1u, 13039u), vec3<u32>(0u, 4294967295u, 4294967295u), vec3<u32>(44418u, 1u, 10458u));

var<private> global1: array<bool, 11> = array<bool, 11>(false, false, true, true, false, false, false, false, false, false, false);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec3<i32>, arg_1: f32, arg_2: Struct_2, arg_3: vec2<f32>) -> vec2<f32> {
    var var_0 = arg_2.b;
    var var_1 = arg_2;
    return var_1.d;
}

fn func_2(arg_0: f32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(round(426f));
    var var_1 = Struct_2(Struct_1(~firstTrailingBit(vec2<u32>(1u, 1u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(-arg_0)) * -246f), Struct_1(~vec2<u32>(1u, 1u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(vec3<i32>(u_input.a, 1i, u_input.a), 541f, Struct_2(Struct_1(vec2<u32>(0u, 13012u)), -1336f, Struct_1(vec2<u32>(0u, 4294967295u)), vec2<f32>(arg_0, -223f)), vec2<f32>(506f, arg_0)))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, 851f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1475f, arg_0)))) - _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1000f, arg_0), vec2<f32>(arg_0, arg_0)), _wgslsmith_f_op_vec2_f32(vec2<f32>(222f, -351f) + vec2<f32>(arg_0, arg_0)))))));
    var var_2 = -1232f;
    global1 = array<bool, 11>();
    let var_3 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0, arg_0, arg_0, 1000f), vec4<f32>(717f, -959f, arg_0, -3137f), vec4<bool>(global1[_wgslsmith_index_u32(0u, 11u)], true, false, false))), _wgslsmith_div_vec4_f32(vec4<f32>(-976f, -707f, -527f, var_1.d.x), vec4<f32>(var_1.d.x, var_1.d.x, 1454f, -806f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-268f, arg_0, -547f, -1000f), vec4<f32>(-329f, var_1.b, -285f, -328f))), vec4<f32>(1004f, 1121f, 1299f, 1358f))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0, -149f, arg_0, var_1.b), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, 1946f, arg_0, -231f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-181f, 602f, 812f, -276f), vec4<f32>(var_1.b, arg_0, var_1.d.x, -1181f)))))))));
    return Struct_2(var_1.c, _wgslsmith_f_op_f32(floor(-1232f)), Struct_1(firstLeadingBit(var_1.c.a)), vec2<f32>(1f, 1f));
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: vec4<bool>, arg_3: vec3<i32>) -> Struct_2 {
    let var_0 = func_2(-795f).c;
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0.b, -1000f, -124f, arg_0.d.x), vec4<f32>(-1203f, -154f, -2426f, arg_0.d.x))) * vec4<f32>(647f, arg_0.d.x, -120f, arg_0.b))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1222f, -286f, -2511f, arg_0.d.x)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, arg_0.d.x, -1000f, arg_0.b) + vec4<f32>(1269f, 1157f, arg_0.d.x, arg_0.b)) + _wgslsmith_div_vec4_f32(vec4<f32>(arg_0.b, arg_0.d.x, -1490f, -1021f), vec4<f32>(238f, -696f, -961f, 2206f))))));
    let var_2 = Struct_2(func_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(var_1.x))))).a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x * -1084f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1864f)))), func_2(781f).a, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.d) + arg_0.d) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, arg_0.b))), var_1.yx, vec2<bool>(true, true))));
    let var_3 = -14774i;
    global1 = array<bool, 11>();
    return arg_0;
}

fn func_5(arg_0: u32, arg_1: Struct_2, arg_2: Struct_2, arg_3: f32) -> Struct_1 {
    global1 = array<bool, 11>();
    var var_0 = Struct_2(func_2(-1185f).c, _wgslsmith_f_op_f32(-2001f - arg_2.d.x), Struct_1(_wgslsmith_sub_vec2_u32(arg_1.a.a, _wgslsmith_sub_vec2_u32(reverseBits(arg_2.a.a), vec2<u32>(arg_0, 77832u) & vec2<u32>(arg_2.a.a.x, arg_0)))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(arg_2.d + arg_1.d), func_4(arg_1, arg_2.a.a.x, vec4<bool>(true, global1[_wgslsmith_index_u32(arg_0, 11u)], true, global1[_wgslsmith_index_u32(2086u, 11u)]), vec3<i32>(u_input.a, u_input.a, u_input.a)).d)))))));
    var var_1 = ~(~var_0.c.a.x);
    var var_2 = ~vec2<i32>(u_input.a, abs(~_wgslsmith_dot_vec3_i32(vec3<i32>(-52463i, 1i, u_input.a), vec3<i32>(28897i, 0i, -8221i))));
    var_2 = abs(-_wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(var_2.x, var_2.x), vec2<i32>(var_2.x, -59689i)), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, 37938i)))) ^ _wgslsmith_mod_vec2_i32(vec2<i32>(-u_input.a, _wgslsmith_dot_vec3_i32(select(vec3<i32>(var_2.x, var_2.x, -29190i), vec3<i32>(1i, 0i, var_2.x), false), vec3<i32>(var_2.x, u_input.a, -25608i) ^ vec3<i32>(1i, u_input.a, var_2.x))), max(vec2<i32>(1i, ~(-9756i)), select(-vec2<i32>(u_input.a, 1305i), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(-1i, u_input.a)), select(vec2<bool>(true, false), vec2<bool>(global1[_wgslsmith_index_u32(arg_1.a.a.x, 11u)], global1[_wgslsmith_index_u32(arg_0, 11u)]), global1[_wgslsmith_index_u32(17901u, 11u)]))));
    return Struct_1(var_0.c.a);
}

fn func_6(arg_0: Struct_1) -> Struct_1 {
    let var_0 = Struct_2(func_5(max(func_2(_wgslsmith_f_op_f32(step(-873f, -900f))).a.a.x, 44665u), func_2(-295f), Struct_2(func_4(Struct_2(arg_0, -912f, arg_0, vec2<f32>(129f, -537f)), ~arg_0.a.x, vec4<bool>(true, false, global1[_wgslsmith_index_u32(arg_0.a.x, 11u)], global1[_wgslsmith_index_u32(46661u, 11u)]), vec3<i32>(56982i, 1i, -12267i)).a, _wgslsmith_f_op_f32(select(177f, _wgslsmith_f_op_f32(1000f * 583f), !global1[_wgslsmith_index_u32(4294967295u, 11u)])), arg_0, func_2(969f).d), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(487f, 435f))))), -261f, arg_0, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(2239f, 131f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(436f, 619f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 963f) - vec2<f32>(1301f, -289f))) + vec2<f32>(_wgslsmith_f_op_f32(1539f - 495f), 522f)))));
    var var_1 = select((~var_0.c.a.x != min(var_0.a.a.x, 4294967295u)) || true, global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(arg_0.a.x, 10118u, ~4294967295u), 11u)] & global1[_wgslsmith_index_u32(1u, 11u)], !global1[_wgslsmith_index_u32(~(17273u >> (var_0.a.a.x % 32u)), 11u)]) & all(!vec4<bool>(true, any(vec4<bool>(false, false, false, global1[_wgslsmith_index_u32(var_0.a.a.x, 11u)])), select(true, false, global1[_wgslsmith_index_u32(1u, 11u)]), var_0.d.x <= var_0.d.x));
    var var_2 = _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -366f) * var_0.b))));
    var_2 = -1605f;
    global1 = array<bool, 11>();
    return var_0.a;
}

fn func_7(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: f32, arg_3: u32) -> Struct_1 {
    global0 = array<vec3<u32>, 12>();
    let var_0 = _wgslsmith_clamp_i32(u_input.a, (_wgslsmith_mod_i32(u_input.a, -u_input.a) << (arg_1.a.x % 32u)) << (arg_3 % 32u), -39944i);
    var var_1 = _wgslsmith_div_u32(16888u, ~arg_3 & func_5(func_4(Struct_2(Struct_1(arg_1.a), arg_0.x, Struct_1(vec2<u32>(35404u, 27438u)), arg_0), 0u, !vec4<bool>(global1[_wgslsmith_index_u32(27373u, 11u)], global1[_wgslsmith_index_u32(1u, 11u)], false, false), _wgslsmith_sub_vec3_i32(vec3<i32>(3149i, u_input.a, var_0), vec3<i32>(-10443i, u_input.a, -46031i))).c.a.x, func_2(_wgslsmith_f_op_f32(arg_0.x + -1843f)), func_2(arg_2), 517f).a.x);
    var var_2 = func_4(Struct_2(Struct_1(arg_1.a), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(arg_0.x, -1189f)))), func_5(46485u, func_2(_wgslsmith_f_op_f32(select(arg_0.x, -295f, true))), func_2(1223f), -590f), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(arg_0))), vec2<f32>(_wgslsmith_f_op_f32(-182f + arg_0.x), _wgslsmith_div_f32(arg_0.x, 302f)))), _wgslsmith_div_u32(_wgslsmith_add_u32(firstLeadingBit(firstTrailingBit(arg_1.a.x)), 21369u), arg_1.a.x), vec4<bool>(true, all(!(!vec2<bool>(global1[_wgslsmith_index_u32(arg_3, 11u)], false))), !(_wgslsmith_f_op_f32(arg_2 * -730f) <= 1044f), true && (_wgslsmith_add_u32(arg_3, 1u) >= _wgslsmith_div_u32(58818u, arg_3))), min(~((vec3<i32>(11975i, u_input.a, u_input.a) ^ vec3<i32>(26817i, u_input.a, var_0)) >> (vec3<u32>(arg_1.a.x, arg_3, arg_3) % vec3<u32>(32u))), -abs(_wgslsmith_div_vec3_i32(vec3<i32>(-1i, 2147483647i, var_0), vec3<i32>(-35464i, -1i, 0i))))).a;
    return Struct_1(vec2<u32>(arg_3, func_5(17823u, func_2(-2253f), func_2(arg_0.x), _wgslsmith_f_op_f32(arg_0.x + arg_0.x)).a.x << (arg_1.a.x % 32u)));
}

fn func_1(arg_0: u32) -> u32 {
    let var_0 = func_7(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -102f))), _wgslsmith_f_op_f32(f32(-1f) * -534f)), func_6(func_5(arg_0, func_4(func_2(-1322f), ~arg_0, vec4<bool>(true, false, true, true), ~vec3<i32>(u_input.a, -1i, u_input.a)), func_2(-1940f), _wgslsmith_f_op_vec2_f32(func_3(-vec3<i32>(2147483647i, u_input.a, 2147483647i), _wgslsmith_f_op_f32(ceil(1068f)), func_4(Struct_2(Struct_1(vec2<u32>(4294967295u, 47276u)), 363f, Struct_1(vec2<u32>(arg_0, 30298u)), vec2<f32>(-1182f, -970f)), 82873u, vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 11u)], true, true, false), vec3<i32>(u_input.a, -1i, u_input.a)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1000f, -1269f))))).x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-153f)) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1262f + -962f), _wgslsmith_f_op_f32(f32(-1f) * -829f))))), _wgslsmith_mod_u32(4294967295u, 38481u));
    let var_1 = func_4(func_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(func_2(-899f).d.x, _wgslsmith_f_op_vec2_f32(func_3(vec3<i32>(0i, 1i, u_input.a), 1211f, Struct_2(var_0, 1299f, Struct_1(vec2<u32>(var_0.a.x, 16570u)), vec2<f32>(2069f, -1000f)), vec2<f32>(159f, -1116f))).x)))), ~arg_0, !select(!(!vec4<bool>(global1[_wgslsmith_index_u32(2859u, 11u)], true, global1[_wgslsmith_index_u32(arg_0, 11u)], global1[_wgslsmith_index_u32(arg_0, 11u)])), select(select(vec4<bool>(true, false, global1[_wgslsmith_index_u32(var_0.a.x, 11u)], false), vec4<bool>(false, true, global1[_wgslsmith_index_u32(arg_0, 11u)], true), global1[_wgslsmith_index_u32(20476u, 11u)]), select(vec4<bool>(false, true, false, global1[_wgslsmith_index_u32(var_0.a.x, 11u)]), vec4<bool>(true, true, false, true), global1[_wgslsmith_index_u32(var_0.a.x, 11u)]), global1[_wgslsmith_index_u32(1u, 11u)] && global1[_wgslsmith_index_u32(74701u, 11u)]), !(global1[_wgslsmith_index_u32(arg_0, 11u)] | global1[_wgslsmith_index_u32(arg_0, 11u)])), vec3<i32>(u_input.a, _wgslsmith_mod_i32(-1i, u_input.a) << (0u % 32u), 2147483647i) >> (firstTrailingBit(vec3<u32>(4294967295u, _wgslsmith_mult_u32(4294967295u, var_0.a.x), func_6(Struct_1(var_0.a)).a.x)) % vec3<u32>(32u))).d.x;
    let var_2 = max(~max(_wgslsmith_clamp_vec3_i32(vec3<i32>(-50317i, -1i, u_input.a), _wgslsmith_add_vec3_i32(vec3<i32>(0i, u_input.a, u_input.a), vec3<i32>(u_input.a, 52502i, -1i)), -vec3<i32>(0i, u_input.a, -9485i)), vec3<i32>(_wgslsmith_div_i32(1i, u_input.a), 1i, _wgslsmith_div_i32(-232i, -2147483647i))), vec3<i32>(_wgslsmith_div_i32(0i, 6232i) & u_input.a, 0i, firstLeadingBit(u_input.a)));
    var var_3 = all(!(!vec4<bool>(var_1 > 576f, global1[_wgslsmith_index_u32(arg_0, 11u)], any(vec4<bool>(true, global1[_wgslsmith_index_u32(var_0.a.x, 11u)], true, true)), false)));
    let var_4 = (var_0.a & ~_wgslsmith_div_vec2_u32(vec2<u32>(9407u, 26531u), vec2<u32>(arg_0, arg_0))) | var_0.a;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~(vec4<i32>(-1i) * -(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a) >> (vec4<u32>(0u, 1u, 4294967295u, 0u) % vec4<u32>(32u)))));
    var var_1 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(409f, -1000f), vec2<f32>(107f, -586f)))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(965f, -1787f))))));
    let var_2 = countOneBits(~abs(vec4<u32>(1u, 1u, 1u, 1u))) ^ vec4<u32>(22401u, (_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(36763u, 14022u)) & _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(4294967295u, 1u))) >> (27296u % 32u), abs(func_1(~0u)), _wgslsmith_add_u32(~(~15073u), _wgslsmith_mult_u32(66638u, 1u) >> (func_5(92874u, Struct_2(Struct_1(vec2<u32>(55377u, 6873u)), var_1.x, Struct_1(vec2<u32>(68802u, 4294967295u)), vec2<f32>(529f, -1009f)), Struct_2(Struct_1(vec2<u32>(24340u, 5539u)), -510f, Struct_1(vec2<u32>(1u, 57218u)), vec2<f32>(-725f, 408f)), var_1.x).a.x % 32u)));
    var_0 = firstLeadingBit(~_wgslsmith_sub_vec4_i32(abs(_wgslsmith_sub_vec4_i32(vec4<i32>(var_0.x, -1i, 1i, u_input.a), vec4<i32>(var_0.x, 0i, var_0.x, -56414i))), ~abs(vec4<i32>(var_0.x, 1i, 3164i, -45695i))));
    var var_3 = select(vec4<bool>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(firstLeadingBit(var_2), ~vec4<u32>(26128u, 45528u, 50361u, var_2.x)) | min(4294967295u, _wgslsmith_clamp_u32(30280u, 4294967295u, var_2.x)), 11u)], !all(vec3<bool>(global1[_wgslsmith_index_u32(var_2.x, 11u)], false, true)), any(select(vec2<bool>(global1[_wgslsmith_index_u32(var_2.x, 11u)], true), vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 11u)], global1[_wgslsmith_index_u32(66008u, 11u)]), vec2<bool>(false, global1[_wgslsmith_index_u32(var_2.x, 11u)]))), all(!(!vec4<bool>(global1[_wgslsmith_index_u32(1u, 11u)], global1[_wgslsmith_index_u32(0u, 11u)], true, false)))), vec4<bool>(global1[_wgslsmith_index_u32(~1u, 11u)], func_2(_wgslsmith_f_op_f32(var_1.x * -1121f)).a.a.x >= ~18672u, true, global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(func_2(_wgslsmith_f_op_vec2_f32(func_3(vec3<i32>(u_input.a, u_input.a, 2147483647i), -2301f, Struct_2(Struct_1(vec2<u32>(var_2.x, var_2.x)), 1000f, Struct_1(vec2<u32>(4294967295u, 0u)), vec2<f32>(-299f, var_1.x)), vec2<f32>(-241f, var_1.x))).x).c.a.x, ~(~var_2.x)), 11u)]), select(vec4<bool>(true | global1[_wgslsmith_index_u32(func_5(28310u, Struct_2(Struct_1(var_2.xz), var_1.x, Struct_1(vec2<u32>(1u, 13193u)), vec2<f32>(var_1.x, var_1.x)), Struct_2(Struct_1(vec2<u32>(1u, 4294967295u)), var_1.x, Struct_1(var_2.yz), vec2<f32>(751f, var_1.x)), var_1.x).a.x, 11u)], global1[_wgslsmith_index_u32(var_2.x, 11u)], false, any(vec4<bool>(global1[_wgslsmith_index_u32(var_2.x, 11u)], true, true, false))), vec4<bool>(global1[_wgslsmith_index_u32(var_2.x, 11u)], any(vec3<bool>(true, global1[_wgslsmith_index_u32(0u, 11u)], false)), true, true || global1[_wgslsmith_index_u32(~79385u, 11u)]), true));
    var var_4 = func_2(var_1.x);
    let var_5 = _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, var_0.x, abs(2147483647i), -30719i | u_input.a), _wgslsmith_add_vec4_i32(vec4<i32>(firstTrailingBit(18042i), ~1i, u_input.a, u_input.a), vec4<i32>(_wgslsmith_div_i32(21176i, u_input.a) & -u_input.a, _wgslsmith_dot_vec3_i32(var_0.xww | vec3<i32>(u_input.a, u_input.a, -1i), -vec3<i32>(var_0.x, var_0.x, -90345i)), _wgslsmith_div_i32(0i, -1i), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 0i, u_input.a, var_0.x), vec4<i32>(1i, var_0.x, 43273i, -24208i)) & _wgslsmith_div_i32(u_input.a, -1i))));
    var var_6 = 577f;
    var_6 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(func_4(Struct_2(var_4.c, var_4.b, Struct_1(vec2<u32>(1u, 0u)), vec2<f32>(-502f, var_4.b)), var_2.x, vec4<bool>(global1[_wgslsmith_index_u32(1u, 11u)], false, var_3.x, var_3.x), vec3<i32>(u_input.a, -2590i, 8334i)).d.x))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1105f + -215f) - _wgslsmith_f_op_f32(min(-2153f, var_4.d.x))))) + _wgslsmith_div_f32(1059f, 1f));
    let x = u_input.a;
    s_output = StorageBuffer(-1000f, ~select(abs(_wgslsmith_add_vec4_u32(var_2, var_2)), vec4<u32>(var_4.a.a.x, _wgslsmith_add_u32(var_2.x, 40029u), 0u, 36455u), select(select(vec4<bool>(global1[_wgslsmith_index_u32(0u, 11u)], global1[_wgslsmith_index_u32(42202u, 11u)], true, var_3.x), vec4<bool>(false, false, true, false), vec4<bool>(global1[_wgslsmith_index_u32(1u, 11u)], var_3.x, var_3.x, var_3.x)), select(vec4<bool>(false, false, global1[_wgslsmith_index_u32(var_2.x, 11u)], var_3.x), vec4<bool>(var_3.x, global1[_wgslsmith_index_u32(47448u, 11u)], false, false), vec4<bool>(false, var_3.x, true, var_3.x)), any(vec4<bool>(global1[_wgslsmith_index_u32(0u, 11u)], true, var_3.x, true)))), var_4.c.a, ~(-(~firstLeadingBit(vec4<i32>(2147483647i, var_5, -2147483647i, var_0.x)))));
}

