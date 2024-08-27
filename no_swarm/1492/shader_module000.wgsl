struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: vec2<f32>,
    d: vec4<f32>,
    e: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: bool,
    d: vec4<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: u32,
    d: vec3<u32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 4> = array<vec4<u32>, 4>(vec4<u32>(4294967295u, 0u, 1u, 43411u), vec4<u32>(61482u, 75226u, 4294967295u, 1u), vec4<u32>(71940u, 4294967295u, 4294967295u, 1u), vec4<u32>(0u, 1u, 1u, 1u));

var<private> global1: i32 = -1i;

var<private> global2: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(vec3<i32>(i32(-2147483648), 6463i, 0i), 2147483647i, vec2<f32>(-721f, -368f), vec4<f32>(-448f, 537f, -1482f, 638f), false), Struct_1(vec3<i32>(1i, i32(-2147483648), 0i), 2147483647i, vec2<f32>(-344f, 347f), vec4<f32>(578f, 1000f, -166f, 327f), false), Struct_1(vec3<i32>(78315i, -53463i, -1i), -1i, vec2<f32>(412f, -1000f), vec4<f32>(684f, 957f, -532f, -178f), true), Struct_1(vec3<i32>(31766i, 54681i, -1i), 1i, vec2<f32>(-126f, 721f), vec4<f32>(-890f, -845f, -101f, 1067f), true), Struct_1(vec3<i32>(17141i, -38481i, 22869i), 1i, vec2<f32>(-1000f, -1700f), vec4<f32>(1926f, -365f, -356f, 337f), true), Struct_1(vec3<i32>(45491i, -1i, -14817i), 1399i, vec2<f32>(-120f, 496f), vec4<f32>(-703f, 351f, -813f, 277f), true), Struct_1(vec3<i32>(0i, 2147483647i, 1i), 1i, vec2<f32>(-1206f, -501f), vec4<f32>(1152f, -245f, 427f, -259f), true), Struct_1(vec3<i32>(i32(-2147483648), 2147483647i, -46212i), 0i, vec2<f32>(-785f, -1569f), vec4<f32>(851f, 1187f, -533f, -922f), false), Struct_1(vec3<i32>(26632i, 16468i, -1i), 0i, vec2<f32>(-440f, 1000f), vec4<f32>(592f, 569f, 875f, -332f), false), Struct_1(vec3<i32>(i32(-2147483648), -10048i, -1i), -1i, vec2<f32>(-220f, 321f), vec4<f32>(-137f, 2108f, 100f, -1255f), false));

var<private> global3: array<vec3<f32>, 1> = array<vec3<f32>, 1>(vec3<f32>(859f, -254f, 2039f));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> f32 {
    var var_0 = 0i | u_input.b.x;
    var var_1 = 388f;
    var var_2 = 1279f;
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1438f, _wgslsmith_f_op_f32(-923f + 395f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1569f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(228f - -1243f) * _wgslsmith_f_op_f32(floor(-922f))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(1000f, -1036f))));
    let var_4 = Struct_1(vec3<i32>(~_wgslsmith_mult_i32(u_input.b.x, u_input.b.x) ^ abs(-51871i), _wgslsmith_add_i32(min(-48797i ^ u_input.b.x, max(4963i, -9998i)), 23638i), ~u_input.b.x), _wgslsmith_dot_vec4_i32(countOneBits(max(u_input.b, _wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, 2147483647i, u_input.b.x, -2147483647i), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)))), -u_input.b), vec2<f32>(var_3, var_3), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_3, -709f, true)), _wgslsmith_f_op_f32(var_3 * var_3))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3 - _wgslsmith_f_op_f32(f32(-1f) * -1126f))), -419f, -1000f), any(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))));
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_3, var_3))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-155f))) + var_3)))));
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_mod_u32(u_input.a.x, 41740u);
    global3 = array<vec3<f32>, 1>();
    var var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(-381f, -1119f) * vec2<f32>(-1013f, 946f))))))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1155f, -180f)), vec2<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(111f + -1358f)))), vec2<f32>(827f, _wgslsmith_f_op_f32(f32(-1f) * -2087f)))));
    global0 = array<vec4<u32>, 4>();
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-1000f * -448f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, var_1.x) - _wgslsmith_div_vec2_f32(vec2<f32>(-492f, 828f), vec2<f32>(290f, -972f)))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(246f, -526f), vec2<f32>(724f, -618f), vec2<bool>(false, true)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-926f, var_1.x)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, 1699f) + vec2<f32>(var_1.x, var_1.x)))))));
    return Struct_1(_wgslsmith_mod_vec3_i32(vec3<i32>(18785i >> (min(u_input.a.x, 1u) % 32u), -1i, min(u_input.b.x, _wgslsmith_div_i32(u_input.b.x, u_input.b.x))), vec3<i32>(u_input.b.x, ~(-2147483647i), 64773i)), firstLeadingBit(abs(-u_input.b.x)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-107f, _wgslsmith_f_op_f32(var_1.x - -740f)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 736f, 1001f, var_1.x)) - _wgslsmith_div_vec4_f32(vec4<f32>(-210f, var_1.x, 1384f, var_1.x), vec4<f32>(var_1.x, -1473f, var_1.x, 1105f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.x, -194f, -446f, var_1.x), vec4<f32>(267f, 349f, 129f, -146f), vec4<bool>(false, false, true, true))))) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, -1000f, -1000f, var_1.x) - vec4<f32>(var_1.x, 629f, var_1.x, 442f))))))), var_1.x > _wgslsmith_f_op_f32(-var_1.x));
}

fn func_1(arg_0: u32) -> f32 {
    var var_0 = func_2();
    var var_1 = ~_wgslsmith_mod_vec2_u32(u_input.a, u_input.a & (vec2<u32>(4294967295u, arg_0) >> (~u_input.a % vec2<u32>(32u))));
    var_1 = _wgslsmith_sub_vec2_u32(~((firstLeadingBit(u_input.a) ^ u_input.a) >> (vec2<u32>(firstLeadingBit(arg_0), ~arg_0) % vec2<u32>(32u))), u_input.a);
    var var_2 = var_0.c;
    global2 = array<Struct_1, 10>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(-317f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.c.x, 386f)), select(true && var_0.e, true, var_0.e))), _wgslsmith_f_op_f32(var_0.d.x + _wgslsmith_f_op_f32(func_3())), var_0.e)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(func_1(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(max(u_input.a | u_input.a, vec2<u32>(u_input.a.x, u_input.a.x)), vec2<u32>(u_input.a.x, 2560u)), ~u_input.a)));
    var var_1 = u_input.b.x;
    global0 = array<vec4<u32>, 4>();
    global3 = array<vec3<f32>, 1>();
    let var_2 = !(!select(vec3<bool>(true, any(vec2<bool>(true, true)), all(vec4<bool>(false, true, true, true))), vec3<bool>(u_input.a.x == u_input.a.x, false, true), vec3<bool>(true, false, true)));
    global0 = array<vec4<u32>, 4>();
    let var_3 = ~0i ^ (u_input.b.x | 10429i);
    global1 = reverseBits(abs(var_3));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_f32(func_3())) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1360f, _wgslsmith_f_op_f32(f32(-1f) * -306f)))), -1422i, firstLeadingBit(countOneBits(u_input.a.x)), _wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(35254u, u_input.a.x, 1u), vec3<u32>(0u, 6969u, 4294967295u)), vec3<u32>(111248u, u_input.a.x, u_input.a.x)), countOneBits(~vec3<u32>(0u, u_input.a.x, 0u))), ~(~(~vec3<u32>(0u, 1u, u_input.a.x)))), ~u_input.b.zy);
}

