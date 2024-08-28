struct Struct_1 {
    a: f32,
    b: f32,
    c: f32,
    d: vec4<f32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: Struct_1,
    d: vec3<bool>,
    e: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<i32>,
}

struct Struct_5 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 29> = array<vec4<bool>, 29>(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true));

var<private> global1: array<Struct_5, 6> = array<Struct_5, 6>(Struct_5(vec4<i32>(-36506i, i32(-2147483648), 1i, -1i)), Struct_5(vec4<i32>(-55279i, -1i, 20769i, -1i)), Struct_5(vec4<i32>(-65839i, 0i, -1i, -696i)), Struct_5(vec4<i32>(-48612i, 27327i, i32(-2147483648), -33430i)), Struct_5(vec4<i32>(-1i, 1i, 2147483647i, 36421i)), Struct_5(vec4<i32>(25254i, 1i, i32(-2147483648), -22583i)));

var<private> global2: vec4<bool> = vec4<bool>(true, true, true, true);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_5) -> bool {
    var var_0 = all(!(!select(select(global2.xw, global2.wy, global2.x), !vec2<bool>(global2.x, global2.x), vec2<bool>(false, global2.x))));
    let var_1 = vec4<i32>(arg_1.a.x, ~(-(~(arg_1.a.x >> (u_input.a.x % 32u)))), _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32((vec2<i32>(-1i, 40951i) >> (u_input.a % vec2<u32>(32u))) | (vec2<i32>(200i, arg_1.a.x) | arg_1.a.yy), ~arg_1.a.zw), arg_1.a.zx), i32(-1i) * -43965i);
    var var_2 = true;
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.e))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b, arg_0.c, 799f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b, 1378f, arg_0.b) * vec3<f32>(arg_0.e.x, arg_0.e.x, -1959f))))));
    var var_4 = Struct_4(Struct_2(-1i, ~(-arg_1.a.x) >> (countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.a.x, u_input.a.x), vec3<u32>(0u, 27127u, u_input.a.x))) % 32u), Struct_1(var_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.b))), -350f, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_3.x, 145f, -1075f, 270f), vec4<f32>(-531f, 865f, 2435f, var_3.x))))), arg_0.e), global2.xxz, abs(vec4<u32>(_wgslsmith_add_u32(u_input.a.x, 1u), 20629u, _wgslsmith_sub_u32(u_input.a.x, u_input.a.x), countOneBits(u_input.a.x)))), arg_1.a);
    return true;
}

fn func_2(arg_0: u32) -> f32 {
    let var_0 = func_3(Struct_1(_wgslsmith_f_op_f32(sign(-461f)), _wgslsmith_f_op_f32(f32(-1f) * -141f), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(1441f, 280f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1036f, -116f, -954f, -214f))) * _wgslsmith_div_vec4_f32(vec4<f32>(1111f, 1982f, 1310f, 362f), vec4<f32>(329f, -188f, -1000f, 1000f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1792f, -851f, 267f))), Struct_5(-_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, -26769i, 0i, -1i), vec4<i32>(2147483647i, 42258i, -12493i, -1i)))) && func_3(Struct_1(511f, _wgslsmith_f_op_f32(1231f * _wgslsmith_f_op_f32(f32(-1f) * -759f)), 1329f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(912f, -1511f, 586f, 2480f))), vec3<f32>(_wgslsmith_f_op_f32(-1000f + -1000f), -974f, -329f)), Struct_5(vec4<i32>(0i, i32(-1i) * -53722i, _wgslsmith_mult_i32(0i, 12178i), _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -2147483647i), vec2<i32>(-2147483647i, 43884i)))));
    let var_1 = ~_wgslsmith_mult_u32(1u, ~(firstTrailingBit(1u) & 1u));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-461f, 1545f))) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -413f), _wgslsmith_div_f32(-1055f, -255f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1881f, -431f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-250f, -192f) - vec2<f32>(312f, 738f)))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1f, 1f)))))));
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_2.x, _wgslsmith_f_op_f32(f32(-1f) * -1241f), true))))), var_2.x);
    global0 = array<vec4<bool>, 29>();
    return _wgslsmith_div_f32(var_2.x, var_2.x);
}

fn func_4(arg_0: u32, arg_1: f32, arg_2: vec4<bool>, arg_3: vec2<i32>) -> i32 {
    let var_0 = ((~firstTrailingBit(48226i) ^ arg_3.x) & 27778i) & 35761i;
    var var_1 = Struct_4(Struct_2(_wgslsmith_mod_i32(var_0, select(_wgslsmith_sub_i32(160i, 1i), max(674i, arg_3.x), !global2.x)), 8402i, Struct_1(_wgslsmith_f_op_f32(func_2(select(20760u, u_input.a.x, arg_2.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_1, 744f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_1, 1000f, arg_1))), vec3<f32>(arg_1, arg_1, arg_1)), vec3<bool>(arg_2.x, any(vec4<bool>(false, arg_2.x, arg_2.x, global2.x)) || true, true), vec4<u32>(~31033u, min(select(6319u, arg_0, false), min(0u, 1u)), u_input.a.x, _wgslsmith_div_u32(~0u, ~u_input.a.x))), abs(reverseBits(reverseBits(-vec4<i32>(-1i, arg_3.x, 0i, 25040i)))));
    global2 = global0[_wgslsmith_index_u32(~4294967295u, 29u)];
    let var_2 = Struct_5(vec4<i32>(firstTrailingBit(var_1.b.x), var_0, select(-var_0, var_1.a.b, global2.x) ^ 1i, _wgslsmith_add_i32(~_wgslsmith_div_i32(-69483i, var_1.b.x), firstLeadingBit(abs(-18945i)))));
    let var_3 = vec4<u32>(var_1.a.e.x, ~u_input.a.x, min(_wgslsmith_add_u32(reverseBits(115896u), 108310u), ~_wgslsmith_div_u32(44412u, u_input.a.x)), u_input.a.x) ^ ~_wgslsmith_div_vec4_u32(vec4<u32>(var_1.a.e.x, 94245u, ~arg_0, min(56584u, 4294967295u)), vec4<u32>(firstLeadingBit(var_1.a.e.x), ~82955u, u_input.a.x, 1u));
    return -2147483647i;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<i32>) -> Struct_2 {
    global2 = global0[_wgslsmith_index_u32(max(10459u, ~1184u), 29u)];
    global1 = array<Struct_5, 6>();
    global0 = array<vec4<bool>, 29>();
    global1 = array<Struct_5, 6>();
    var var_0 = !select(global2.zz, global2.xz, false);
    return Struct_2(_wgslsmith_div_i32(func_4(24445u | u_input.a.x, _wgslsmith_f_op_f32(func_2(u_input.a.x)), select(vec4<bool>(global2.x, false, global2.x, var_0.x), global0[_wgslsmith_index_u32(u_input.a.x, 29u)], vec4<bool>(true, true, false, var_0.x)), vec2<i32>(33494i, 1i) & vec2<i32>(4242i, arg_2.x)) << ((15498u ^ u_input.a.x) % 32u), arg_2.x), _wgslsmith_mult_i32(~max(_wgslsmith_clamp_i32(1i, 2147483647i, arg_2.x), 2147483647i), 1i), arg_0, global2.zwy, ~select(_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.a.x, 34505u, 4294967295u, u_input.a.x), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 11767u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 1u))), max(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 0u), vec4<u32>(9113u, u_input.a.x, 50101u, u_input.a.x)) ^ (vec4<u32>(u_input.a.x, 1u, 51447u, 13120u) ^ vec4<u32>(u_input.a.x, u_input.a.x, 7305u, u_input.a.x)), select(!vec4<bool>(true, true, true, var_0.x), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a.x, u_input.a.x), 29u)], select(vec4<bool>(true, true, global2.x, var_0.x), global0[_wgslsmith_index_u32(u_input.a.x, 29u)], vec4<bool>(var_0.x, global2.x, var_0.x, true)))));
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_2) -> bool {
    global1 = array<Struct_5, 6>();
    global0 = array<vec4<bool>, 29>();
    let var_0 = arg_0;
    global1 = array<Struct_5, 6>();
    global2 = global0[_wgslsmith_index_u32(u_input.a.x, 29u)];
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = vec4<bool>(select(true, global2.x, true), all(vec4<bool>(global2.x, all(select(vec3<bool>(false, global2.x, false), global2.ywx, vec3<bool>(global2.x, global2.x, global2.x))), func_5(~vec4<i32>(-1i, 1i, -1i, 16739i), func_1(Struct_1(-127f, -1382f, 680f, vec4<f32>(649f, -661f, 322f, -175f), vec3<f32>(228f, 2683f, -2061f)), Struct_1(-1025f, 1324f, -458f, vec4<f32>(-1644f, -147f, -360f, 936f), vec3<f32>(-160f, -1039f, -420f)), vec3<i32>(5910i, 2147483647i, 27472i))), u_input.a.x > ~u_input.a.x)), func_5(-vec4<i32>(_wgslsmith_mod_i32(2147483647i, 1i), ~(-1i), _wgslsmith_div_i32(12102i, 15456i), 1i), func_1(func_1(Struct_1(362f, 1687f, 580f, vec4<f32>(-212f, 297f, -2338f, -1075f), vec3<f32>(925f, 510f, 616f)), Struct_1(-102f, -624f, 1000f, vec4<f32>(-1768f, 1509f, 622f, 661f), vec3<f32>(1532f, -270f, 1000f)), vec3<i32>(-2147483647i, 0i, 0i) >> (vec3<u32>(u_input.a.x, 7360u, 1u) % vec3<u32>(32u))).c, Struct_1(2036f, _wgslsmith_f_op_f32(172f - -1445f), -1215f, _wgslsmith_f_op_vec4_f32(vec4<f32>(2221f, 107f, -1719f, -1024f) + vec4<f32>(-862f, 1000f, 1441f, -1852f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(392f, -1009f, -285f))), _wgslsmith_clamp_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(18978i, 0i, -1i), countOneBits(vec3<i32>(-1i, 2147483647i, -7103i))))), global2.x);
    global1 = array<Struct_5, 6>();
    let var_0 = func_1(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_2(0u)))), _wgslsmith_f_op_f32(trunc(-388f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(128f, 887f, global2.x)) * -209f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-269f, 1146f)), -328f) - _wgslsmith_f_op_f32(-620f + -134f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(189f, -233f, 1000f, -2301f) - vec4<f32>(-464f, -1688f, 774f, 211f)) + vec4<f32>(-408f, 385f, 886f, -651f))), vec3<f32>(987f, -265f, _wgslsmith_f_op_f32(771f + 969f))), func_1(Struct_1(-106f, 1f, _wgslsmith_f_op_f32(-376f + 1f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-2114f, -335f, -287f, 901f) * vec4<f32>(1000f, 182f, 863f, 758f))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(-427f, 929f, 1233f), vec3<f32>(1034f, 268f, -818f))))), func_1(func_1(func_1(Struct_1(796f, 1000f, -1000f, vec4<f32>(591f, -1071f, -1000f, 736f), vec3<f32>(769f, -1386f, -1502f)), Struct_1(-1453f, -278f, -1000f, vec4<f32>(-698f, -1083f, -509f, 1431f), vec3<f32>(1051f, 204f, -246f)), vec3<i32>(-3528i, 71349i, -38318i)).c, Struct_1(-1132f, -608f, -1639f, vec4<f32>(206f, 955f, -934f, -375f), vec3<f32>(214f, 493f, 977f)), _wgslsmith_mult_vec3_i32(vec3<i32>(27738i, 1i, -1i), vec3<i32>(20847i, -7976i, -8037i))).c, Struct_1(-387f, 1f, -852f, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-406f, -257f, 1537f, 644f)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1002f, -536f, -569f), vec3<f32>(-136f, -1403f, 1443f)))), vec3<i32>(~1i, ~1i, -2147483647i)).c, vec3<i32>(2147483647i, ~(1i >> (u_input.a.x % 32u)), 15131i)).c, vec3<i32>(322i, select(-6747i, _wgslsmith_dot_vec4_i32(~vec4<i32>(1i, 2147483647i, 2147483647i, 4309i), vec4<i32>(-2147483647i, 1i, -1i, -1i)), _wgslsmith_f_op_f32(-1057f - 1113f) <= func_1(Struct_1(1024f, -117f, 473f, vec4<f32>(-226f, 473f, 363f, -870f), vec3<f32>(1451f, -410f, -414f)), Struct_1(-444f, -1207f, 894f, vec4<f32>(558f, -1359f, 149f, -215f), vec3<f32>(1000f, 677f, 2219f)), vec3<i32>(-11593i, 7003i, 11254i)).c.b), 15059i));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(reverseBits(firstTrailingBit(var_0.b))), abs(_wgslsmith_div_vec2_i32(min(vec2<i32>(var_0.a, 12884i), vec2<i32>(var_0.a, var_0.a)), vec2<i32>(-8366i, 2147483647i))) ^ _wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(var_0.a, var_0.b), vec2<i32>(2147483647i, 19959i)) >> (u_input.a % vec2<u32>(32u)), vec2<i32>(0i >> (0u % 32u), var_0.a)));
}

