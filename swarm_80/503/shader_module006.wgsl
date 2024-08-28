struct Struct_1 {
    a: vec3<bool>,
    b: vec2<f32>,
    c: vec4<f32>,
    d: f32,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec3<i32>,
    d: vec3<u32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 1> = array<vec3<i32>, 1>(vec3<i32>(16546i, 2147483647i, 2147483647i));

var<private> global1: array<vec2<u32>, 17>;

var<private> global2: array<vec2<f32>, 22>;

var<private> global3: array<vec2<u32>, 30>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_1) -> vec3<bool> {
    global2 = array<vec2<f32>, 22>();
    let var_0 = false;
    var var_1 = Struct_1(select(vec3<bool>(_wgslsmith_f_op_f32(-arg_0.c.x) > arg_0.e.x, arg_0.a.x, !var_0), select(!arg_0.a, vec3<bool>(true, false || var_0, var_0 != true), var_0), 6767i < u_input.a.x), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(arg_0.b.x, -1795f)), _wgslsmith_f_op_f32(107f * arg_0.e.x)), _wgslsmith_f_op_f32(round(-1002f))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_0.e.x, _wgslsmith_f_op_f32(ceil(1000f))), _wgslsmith_f_op_vec2_f32(arg_0.b - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.d, -508f)))))), _wgslsmith_div_vec4_f32(vec4<f32>(arg_0.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-496f * arg_0.d) - -851f), -1549f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1104f)) + _wgslsmith_f_op_f32(f32(-1f) * -1165f))), vec4<f32>(_wgslsmith_f_op_f32(-1126f - _wgslsmith_f_op_f32(trunc(-1013f))), 1000f, _wgslsmith_f_op_f32(-1410f * 1374f), -1953f)), _wgslsmith_f_op_f32(-arg_0.d), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global2[_wgslsmith_index_u32(u_input.c.x, 22u)]) * global2[_wgslsmith_index_u32(~u_input.b.x, 22u)]) - vec2<f32>(1378f, _wgslsmith_f_op_f32(exp2(arg_0.c.x))))));
    global2 = array<vec2<f32>, 22>();
    var var_2 = Struct_1(var_1.a, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_0.d, _wgslsmith_f_op_f32(-arg_0.b.x)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.d * arg_0.e.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -967f))), var_0)), _wgslsmith_f_op_vec4_f32(abs(arg_0.c)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_1.d - var_1.d))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.b.x, u_input.b.x) ^ 4294967295u, 22u)]), _wgslsmith_f_op_vec2_f32(-global2[_wgslsmith_index_u32(~4294967295u >> (_wgslsmith_add_u32(21589u, u_input.c.x) % 32u), 22u)]), select(true, true, var_1.a.x))));
    return !var_1.a;
}

fn func_2() -> vec4<f32> {
    global1 = array<vec2<u32>, 17>();
    global1 = array<vec2<u32>, 17>();
    global2 = array<vec2<f32>, 22>();
    global1 = array<vec2<u32>, 17>();
    var var_0 = Struct_1(func_3(Struct_1(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1315f, -1070f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2998f, 1000f, -163f, -1099f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(484f + -826f) * _wgslsmith_f_op_f32(463f - -439f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global2[_wgslsmith_index_u32(90379u, 22u)] * global2[_wgslsmith_index_u32(23942u, 22u)])))), global2[_wgslsmith_index_u32(~(~min(u_input.c.x, 1u)), 22u)], _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(446f, 363f, -120f, -229f), vec4<f32>(-1500f, -1000f, -142f, 426f), vec4<bool>(true, false, false, true))) + vec4<f32>(138f, 1015f, -179f, -139f)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 1000f, -685f, -1000f)), _wgslsmith_div_vec4_f32(vec4<f32>(1747f, 1468f, 1995f, 308f), vec4<f32>(160f, -216f, -291f, -1000f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-885f - 2276f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -851f) + _wgslsmith_f_op_f32(149f + -2461f)))) * -967f), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(~u_input.c.x, ~(~select(66991u, 30090u, false))), 22u)]);
    return _wgslsmith_f_op_vec4_f32(-var_0.c);
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: Struct_1) -> vec3<u32> {
    global3 = array<vec2<u32>, 30>();
    global2 = array<vec2<f32>, 22>();
    return ~(vec3<u32>(~(~0u), u_input.c.x >> (~0u % 32u), min(~130607u, u_input.b.x)) & ~(~vec3<u32>(1u, u_input.c.x, 87455u)));
}

fn func_1() -> Struct_1 {
    global1 = array<vec2<u32>, 17>();
    var var_0 = 1i;
    var var_1 = ~_wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c.x, 1215u, 4323u) << (vec3<u32>(u_input.c.x, u_input.c.x, u_input.b.x) % vec3<u32>(32u)), vec3<u32>(129652u, u_input.c.x, u_input.c.x)), _wgslsmith_div_vec3_u32(~vec3<u32>(u_input.c.x, 23409u, 0u), vec3<u32>(1u, u_input.c.x, u_input.b.x) ^ vec3<u32>(4294967295u, 4294967295u, u_input.c.x))), func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(683f)) + _wgslsmith_f_op_f32(max(-283f, -1686f))), Struct_1(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), _wgslsmith_f_op_vec2_f32(global2[_wgslsmith_index_u32(u_input.c.x, 22u)] - vec2<f32>(-622f, 318f)), _wgslsmith_f_op_vec4_f32(func_2()), _wgslsmith_f_op_f32(1000f + -361f), _wgslsmith_f_op_vec2_f32(global2[_wgslsmith_index_u32(u_input.b.x, 22u)] - vec2<f32>(327f, 802f))), vec2<bool>(true, true), Struct_1(vec3<bool>(true, true, true), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1121f, -1000f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-602f, -1000f, -1458f, 208f)), -780f, _wgslsmith_f_op_vec2_f32(vec2<f32>(1637f, -676f) - vec2<f32>(-1000f, -1000f)))));
    let var_2 = _wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(-vec3<i32>(u_input.a.x, -1i, u_input.a.x) ^ global0[_wgslsmith_index_u32(firstLeadingBit(13727u), 1u)], max(vec3<i32>(select(-39159i, u_input.a.x, true), ~u_input.a.x, 44529i), ~global0[_wgslsmith_index_u32(var_1.x ^ var_1.x, 1u)])), vec3<i32>(u_input.a.x, ~(-37099i & u_input.a.x), -_wgslsmith_dot_vec2_i32(u_input.a, countOneBits(vec2<i32>(u_input.a.x, u_input.a.x)))), select(select(_wgslsmith_mult_vec3_i32(countOneBits(global0[_wgslsmith_index_u32(u_input.c.x, 1u)]), vec3<i32>(-8905i, -16988i, -42158i) >> (vec3<u32>(32849u, 27849u, u_input.c.x) % vec3<u32>(32u))), abs(global0[_wgslsmith_index_u32(~102720u, 1u)]), select(vec3<bool>(true, false, false), func_3(Struct_1(vec3<bool>(true, false, true), global2[_wgslsmith_index_u32(u_input.b.x, 22u)], vec4<f32>(1503f, -1000f, -421f, -420f), -1542f, vec2<f32>(1000f, -1152f))), select(true, true, false))), global0[_wgslsmith_index_u32(var_1.x, 1u)], false));
    var var_3 = 33908u;
    return Struct_1(vec3<bool>(true, true, (~var_2.x != (var_2.x >> (var_1.x % 32u))) | true), _wgslsmith_f_op_vec2_f32(ceil(global2[_wgslsmith_index_u32(37084u & ~_wgslsmith_mod_u32(u_input.c.x, var_1.x), 22u)])), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1064f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-860f)))), -362f, 622f), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-645f, -199f, -308f, -1163f)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-858f, 1220f, 346f, -643f)))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(535f, 1891f, 972f, -131f) * vec4<f32>(2042f, 1475f, -424f, -1000f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-180f, 1000f, 1000f, -1723f))), true))), select(vec4<bool>(true, false, func_3(Struct_1(vec3<bool>(false, true, false), vec2<f32>(489f, -1074f), vec4<f32>(-2051f, -260f, -1610f, -1268f), 2466f, global2[_wgslsmith_index_u32(0u, 22u)])).x, var_2.x == u_input.a.x), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), true), true), select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true))))), _wgslsmith_f_op_f32(trunc(-735f)), _wgslsmith_f_op_vec2_f32(-global2[_wgslsmith_index_u32(45676u, 22u)]));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: vec3<i32>) -> StorageBuffer {
    var var_0 = u_input.a.x;
    var var_1 = 2773f;
    let var_2 = func_1();
    let var_3 = arg_0;
    var var_4 = func_1();
    return StorageBuffer(vec4<f32>(312f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1000f, arg_1.b.x)) + 189f) + var_3.c.x), var_4.e.x, arg_1.d), 38656u, ~vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-15914i, arg_3.x, u_input.a.x, arg_3.x), reverseBits(vec4<i32>(30492i, arg_3.x, arg_3.x, -36438i))), ~u_input.a.x, ~abs(-17700i)), (vec3<u32>(_wgslsmith_add_u32(1u, u_input.b.x), u_input.b.x, u_input.b.x) << (vec3<u32>(u_input.c.x, abs(u_input.c.x), _wgslsmith_mod_u32(46795u, u_input.b.x)) % vec3<u32>(32u))) >> (firstTrailingBit(~(vec3<u32>(1u, u_input.c.x, u_input.b.x) << (vec3<u32>(34073u, 0u, u_input.c.x) % vec3<u32>(32u)))) % vec3<u32>(32u)), vec4<f32>(538f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(var_2.e.x, 2704f)))) - _wgslsmith_f_op_f32(trunc(arg_0.c.x))), _wgslsmith_f_op_f32(ceil(-726f)), _wgslsmith_f_op_f32(abs(-313f))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(func_1(), Struct_1(vec3<bool>(true, all(func_1().a.zy), all(vec3<bool>(true, true, true))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(global2[_wgslsmith_index_u32(~64859u, 22u)], vec2<f32>(-927f, -772f))) - global2[_wgslsmith_index_u32(4294967295u, 22u)]), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-817f, _wgslsmith_f_op_f32(round(-274f)), _wgslsmith_f_op_f32(ceil(-2324f)), 1f)), 342f, _wgslsmith_f_op_vec2_f32(global2[_wgslsmith_index_u32(reverseBits(~1u), 22u)] + _wgslsmith_f_op_vec2_f32(global2[_wgslsmith_index_u32(u_input.b.x, 22u)] * _wgslsmith_f_op_vec2_f32(-global2[_wgslsmith_index_u32(0u, 22u)])))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(1000f)), -1030f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1658f, -758f, true)) + _wgslsmith_f_op_f32(f32(-1f) * -395f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-942f, 278f)))))), min(vec3<i32>(~(-u_input.a.x), -13872i, i32(-1i) * -u_input.a.x), vec3<i32>(firstLeadingBit(u_input.a.x << (24947u % 32u)), min(~(-25715i), 1i), u_input.a.x)));
}

