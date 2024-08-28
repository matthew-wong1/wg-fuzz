struct Struct_1 {
    a: vec3<f32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: f32,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: u32,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: i32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 18>;

var<private> global1: array<i32, 31>;

var<private> global2: array<vec2<u32>, 19> = array<vec2<u32>, 19>(vec2<u32>(29882u, 1u), vec2<u32>(4294967295u, 0u), vec2<u32>(0u, 1u), vec2<u32>(1u, 3677u), vec2<u32>(31831u, 5684u), vec2<u32>(8442u, 1973u), vec2<u32>(29850u, 1449u), vec2<u32>(1u, 47357u), vec2<u32>(0u, 4294967295u), vec2<u32>(86278u, 20047u), vec2<u32>(45677u, 32148u), vec2<u32>(0u, 1u), vec2<u32>(1u, 4294967295u), vec2<u32>(13222u, 1u), vec2<u32>(22866u, 31816u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(4294967295u, 1u), vec2<u32>(1u, 1u), vec2<u32>(10203u, 17798u));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(-494f * -263f))), -1908f)), -1000f) + -1075f);
    let var_1 = ~(vec2<i32>(0i, 1i) & ~u_input.d.yy);
    var var_2 = all(select(vec2<bool>(true, true), !vec2<bool>(true, 1615f < var_0), true));
    global1 = array<i32, 31>();
    var var_3 = ~(~(~vec3<u32>(u_input.b.x, u_input.b.x, 22873u) << (~vec3<u32>(1u, u_input.b.x, u_input.b.x) % vec3<u32>(32u))));
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(-525f, var_0));
}

fn func_2() -> Struct_4 {
    let var_0 = vec2<i32>(-2147483647i, -u_input.a.x);
    var var_1 = 1u;
    var var_2 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(func_3())));
    return Struct_4(_wgslsmith_sub_u32(1u, abs(u_input.b.x)), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_2.x, var_2.x, var_2.x), vec3<f32>(var_2.x, 2523f, -1000f))) - _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_2.x, -512f, var_2.x))))), vec4<f32>(var_2.x, var_2.x, var_2.x, _wgslsmith_f_op_f32(max(574f, _wgslsmith_f_op_f32(var_2.x * -494f))))), ~_wgslsmith_clamp_vec3_u32(abs(countOneBits(vec3<u32>(0u, u_input.b.x, u_input.b.x))), abs(vec3<u32>(42571u, 0u, 0u)), _wgslsmith_mod_vec3_u32(max(vec3<u32>(u_input.b.x, 0u, u_input.b.x), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)), ~vec3<u32>(u_input.b.x, u_input.b.x, 51259u))));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_1) -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.b.a.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.x * arg_1.a.x))))) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a.x * arg_1.b.x) + _wgslsmith_f_op_f32(arg_1.b.x + -1000f)) * _wgslsmith_f_op_f32(-arg_1.b.x))));
    let var_1 = _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(1101f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1f)))));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(arg_1.b * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.b.b))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(680f + -490f), _wgslsmith_f_op_f32(f32(-1f) * -300f)), _wgslsmith_f_op_f32(arg_1.a.x - _wgslsmith_f_op_f32(-var_0.x)), -484f, 394f))) * _wgslsmith_f_op_vec4_f32(floor(arg_0.b.b)));
    var var_3 = ~arg_0.c;
    global0 = array<i32, 18>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x + arg_1.b.x));
}

fn func_5(arg_0: Struct_2) -> Struct_4 {
    let var_0 = abs(min(_wgslsmith_sub_vec4_i32(min(~vec4<i32>(0i, global1[_wgslsmith_index_u32(1u, 31u)], 15032i, -2147483647i), _wgslsmith_add_vec4_i32(u_input.a, u_input.d)), firstTrailingBit(~vec4<i32>(-36159i, -14104i, 3368i, global1[_wgslsmith_index_u32(9319u, 31u)]))), u_input.d));
    var var_1 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(Struct_4(u_input.b.x, arg_0.b, vec3<u32>(1u, u_input.b.x, 89655u)), Struct_1(arg_0.d.b.wyx, vec4<f32>(1564f, 1262f, arg_0.b.b.x, -1447f)))) * -296f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(Struct_4(u_input.b.x, arg_0.b, vec3<u32>(u_input.b.x, u_input.b.x, 1u)), arg_0.d)), -862f)))));
    var var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c * _wgslsmith_f_op_f32(arg_0.c + arg_0.d.b.x)))), var_1.x));
    global0 = array<i32, 18>();
    let var_3 = arg_0;
    return Struct_4(4294967295u, arg_0.b, vec3<u32>(u_input.b.x, ~countOneBits(~0u), u_input.b.x & 12571u));
}

fn func_1(arg_0: Struct_2, arg_1: f32, arg_2: Struct_3, arg_3: i32) -> Struct_3 {
    global2 = array<vec2<u32>, 19>();
    let var_0 = func_5(Struct_2(_wgslsmith_f_op_f32(arg_2.a.d.b.x - _wgslsmith_f_op_f32(func_4(func_2(), Struct_1(arg_2.b.a, arg_2.b.b)))), arg_0.d, _wgslsmith_f_op_f32(func_4(Struct_4(u_input.b.x, Struct_1(arg_2.b.a, vec4<f32>(arg_2.a.a, -681f, 370f, 2034f)), vec3<u32>(9094u, 66620u, 0u)), func_2().b)), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1, 1157f, arg_1), vec3<f32>(1175f, -1326f, arg_0.c), vec3<bool>(false, true, true)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.a.a, arg_1, 957f, -1278f)), vec4<f32>(arg_0.d.a.x, -1730f, 450f, arg_0.a)))), ~(-_wgslsmith_dot_vec4_i32(u_input.d, u_input.a))));
    global1 = array<i32, 31>();
    var var_1 = func_5(arg_2.a);
    var var_2 = arg_2.a.b.b.xy;
    return arg_2;
}

fn func_6(arg_0: Struct_3, arg_1: Struct_3) -> vec3<f32> {
    global1 = array<i32, 31>();
    global1 = array<i32, 31>();
    var var_0 = 0u;
    var var_1 = -802f;
    var var_2 = arg_0.a.b;
    return func_5(func_1(arg_0.a, arg_0.b.a.x, arg_0, ~global1[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, ~10148u), 31u)]).a).b.a;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<u32>, 19>();
    var var_0 = vec2<bool>(true, true);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-729f + 426f))))), 1000f)));
    let var_2 = 6172u;
    let var_3 = Struct_2(1426f, Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_6(Struct_3(Struct_2(var_1, Struct_1(vec3<f32>(1322f, var_1, 374f), vec4<f32>(975f, -147f, -1139f, 1492f)), -858f, Struct_1(vec3<f32>(var_1, var_1, 1016f), vec4<f32>(var_1, -868f, 463f, 428f)), -45664i), Struct_1(vec3<f32>(var_1, 373f, var_1), vec4<f32>(var_1, var_1, 852f, 473f)), var_2), func_1(Struct_2(var_1, Struct_1(vec3<f32>(var_1, var_1, -892f), vec4<f32>(-1113f, -1907f, 607f, var_1)), var_1, Struct_1(vec3<f32>(var_1, -1000f, var_1), vec4<f32>(702f, 1261f, 1000f, -997f)), 0i), 318f, Struct_3(Struct_2(var_1, Struct_1(vec3<f32>(1000f, 658f, 1000f), vec4<f32>(415f, var_1, var_1, 1000f)), var_1, Struct_1(vec3<f32>(-1204f, var_1, var_1), vec4<f32>(-878f, 437f, -253f, 464f)), 2147483647i), Struct_1(vec3<f32>(var_1, var_1, 1346f), vec4<f32>(292f, var_1, -1323f, var_1)), var_2), 1i))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-205f, 2129f, -394f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(2634f * -1343f), _wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(step(var_1, 972f)), 1890f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_vec2_f32(func_3()).x)), Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1342f, 1032f, var_1)))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_1, var_1, var_1)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1, -1222f, var_1, var_1))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1, -1643f, var_1, var_1), vec4<f32>(var_1, var_1, 1712f, -177f), var_0.x))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, 472f, var_1, var_1)))))), u_input.a.x);
    var var_4 = func_2();
    var var_5 = Struct_2(1101f, func_5(Struct_2(_wgslsmith_f_op_f32(trunc(var_4.b.b.x)), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1509f, 110f, 542f) * vec3<f32>(var_4.b.a.x, var_1, var_4.b.b.x)), vec4<f32>(var_1, var_1, -1478f, 314f)), _wgslsmith_f_op_f32(func_4(func_5(Struct_2(var_1, Struct_1(var_3.d.a, var_4.b.b), -1000f, Struct_1(var_4.b.b.wzx, vec4<f32>(var_1, var_3.b.b.x, -1154f, var_3.d.b.x)), 5425i)), func_2().b)), Struct_1(_wgslsmith_f_op_vec3_f32(max(var_4.b.a, vec3<f32>(-1535f, -204f, var_1))), vec4<f32>(var_3.b.a.x, var_3.a, 1981f, 405f)), i32(-1i) * -2147483647i)).b, 1517f, func_1(func_1(func_1(var_3, _wgslsmith_f_op_f32(179f * var_3.a), Struct_3(Struct_2(var_1, var_3.b, var_4.b.b.x, Struct_1(var_3.d.a, vec4<f32>(320f, -585f, 2417f, var_4.b.b.x)), u_input.a.x), var_4.b, 31182u), -16272i).a, -267f, Struct_3(var_3, func_2().b, _wgslsmith_add_u32(11778u, var_4.c.x)), global0[_wgslsmith_index_u32(1580u, 18u)]).a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -701f)), Struct_3(var_3, var_3.d, 4294967295u), -global0[_wgslsmith_index_u32(countOneBits(var_2), 18u)]).a.d, firstLeadingBit(2147483647i));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(u_input.a.xxx), vec2<i32>(var_5.e, ~(func_1(Struct_2(var_1, var_4.b, var_4.b.b.x, Struct_1(vec3<f32>(587f, -343f, var_1), vec4<f32>(var_1, 2128f, 1096f, var_1)), u_input.c), var_4.b.b.x, Struct_3(Struct_2(var_3.a, var_5.d, 1542f, var_5.b, var_3.e), Struct_1(var_4.b.a, vec4<f32>(1574f, -744f, 1272f, var_4.b.a.x)), var_4.a), global0[_wgslsmith_index_u32(u_input.b.x, 18u)]).a.e & -16019i)), abs(reverseBits(-var_5.e)), u_input.a);
}

