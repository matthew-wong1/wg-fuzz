struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: vec4<f32>,
    d: i32,
    e: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
    d: vec2<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 7> = array<i32, 7>(2147483647i, 74459i, -54682i, i32(-2147483648), i32(-2147483648), i32(-2147483648), -46581i);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<i32>) -> Struct_1 {
    global0 = array<i32, 7>();
    let var_0 = ~(-1i ^ arg_0.d);
    let var_1 = select(~_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 1u), ~(~vec2<u32>(72630u, 64400u))), vec2<u32>(1u, ~_wgslsmith_mod_u32(~66309u, _wgslsmith_sub_u32(4294967295u, 25238u))), any(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true))));
    let var_2 = arg_0.a.zzz;
    global0 = array<i32, 7>();
    return Struct_1(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1291f * 1671f), _wgslsmith_f_op_f32(arg_0.e + 162f), arg_0.a.x, _wgslsmith_f_op_f32(abs(var_2.x))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-603f, arg_0.a.x, 1378f, var_2.x) - arg_0.c), _wgslsmith_div_vec4_f32(vec4<f32>(-136f, var_2.x, -2220f, arg_0.e), arg_0.c), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), false)))))), arg_0.e, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b) - _wgslsmith_f_op_f32(var_2.x - arg_0.b))), _wgslsmith_f_op_f32(-arg_0.c.x), 1069f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(282f)), arg_0.e, all(vec3<bool>(false, true, true)))))), 0i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(908f + -976f) + var_2.x));
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> i32 {
    let var_0 = arg_1.c.x > arg_1.c.x;
    let var_1 = var_0;
    let var_2 = 16785u;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_1.c.x)) - arg_1.e);
    var var_4 = Struct_1(_wgslsmith_f_op_vec4_f32(-func_2(func_2(arg_1, _wgslsmith_mod_vec4_i32(vec4<i32>(-9741i, arg_0, arg_0, 2795i), vec4<i32>(arg_0, arg_0, arg_1.d, arg_0))), vec4<i32>(0i, ~(-1i), -83019i, u_input.a)).c), _wgslsmith_f_op_f32(-var_3), arg_1.c, countOneBits(-26784i), _wgslsmith_f_op_f32(f32(-1f) * -1285f));
    return (-(-550i ^ global0[_wgslsmith_index_u32(_wgslsmith_add_u32(var_2, 29737u), 7u)]) >> (~var_2 % 32u)) << (var_2 % 32u);
}

fn func_1() -> vec4<f32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1231f, 1422f, 221f, 1901f))))))), _wgslsmith_f_op_f32(-1000f - 1663f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-487f, -960f, -1159f, 1091f))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-137f, -1481f, 692f, -149f)))), i32(-1i) * -64626i, 1109f);
    let var_1 = func_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(var_0.c, var_0.a))), -904f, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(var_0.c.x, -879f), _wgslsmith_f_op_f32(trunc(1895f)), -710f, _wgslsmith_div_f32(-381f, -312f))), var_0.d, var_0.a.x), _wgslsmith_div_vec4_i32(-(~(vec4<i32>(26898i, 0i, var_0.d, global0[_wgslsmith_index_u32(4294967295u, 7u)]) | vec4<i32>(u_input.a, -2147483647i, 25269i, -66613i))), _wgslsmith_mod_vec4_i32(vec4<i32>(~var_0.d, 2147483647i, _wgslsmith_sub_i32(-80492i, 0i), 2147483647i | global0[_wgslsmith_index_u32(0u, 7u)]), vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 7u)], -42993i, u_input.a, -3752i) & -vec4<i32>(1i, -16372i, 1i, -27213i))));
    global0 = array<i32, 7>();
    let var_2 = max(vec4<i32>(1i, select(1i, 1i, true), func_3(_wgslsmith_sub_i32(var_1.d, var_1.d), Struct_1(vec4<f32>(521f, var_0.b, 899f, var_1.a.x), var_0.c.x, var_1.c, 1i, 526f)), _wgslsmith_add_i32(var_1.d, -4227i) << (_wgslsmith_clamp_u32(19458u, 0u, 1u) % 32u)), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.d, -1i), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, -37872i), vec2<i32>(u_input.a, global0[_wgslsmith_index_u32(45794u, 7u)]))), _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.d, global0[_wgslsmith_index_u32(1u, 7u)], u_input.a, u_input.a), vec4<i32>(1i, 1i, 1i, 1i)), _wgslsmith_div_i32(select(0i, -58673i, true), ~(-24590i)), firstTrailingBit(~2147483647i))) << (vec4<u32>(36947u, 1u, 1u >> (1u % 32u), 8073u) % vec4<u32>(32u));
    var_0 = var_1;
    return _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.a.x, -2420f, 160f, -156f), vec4<f32>(var_1.a.x, var_0.e, 264f, 1000f))))) * _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1000f, var_1.a.x, 1725f, 512f)))), var_1.a))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1i;
    global0 = array<i32, 7>();
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1639f * -1789f)), _wgslsmith_f_op_f32(f32(-1f) * -375f), _wgslsmith_f_op_f32(138f + _wgslsmith_f_op_f32(step(1837f, -1086f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1268f, -537f)) * _wgslsmith_f_op_f32(-1195f + -711f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-788f, -715f, 1000f, 406f)), _wgslsmith_f_op_vec4_f32(func_1())))), abs(_wgslsmith_mult_i32(0i, _wgslsmith_dot_vec3_i32(vec3<i32>(-2293i, global0[_wgslsmith_index_u32(32630u, 7u)], global0[_wgslsmith_index_u32(4294967295u, 7u)]), vec3<i32>(global0[_wgslsmith_index_u32(1u, 7u)], u_input.a, 35118i))) & u_input.a), _wgslsmith_f_op_f32(-func_2(func_2(func_2(Struct_1(vec4<f32>(-131f, -1000f, 869f, 2293f), -1298f, vec4<f32>(-1374f, 1679f, -670f, -307f), -56694i, -957f), vec4<i32>(-9741i, -9045i, global0[_wgslsmith_index_u32(1u, 7u)], -33888i)), vec4<i32>(2147483647i, global0[_wgslsmith_index_u32(1u, 7u)], global0[_wgslsmith_index_u32(8006u, 7u)], u_input.a) | vec4<i32>(6438i, 2147483647i, u_input.a, 20725i)), -(~vec4<i32>(u_input.a, -86136i, -23962i, global0[_wgslsmith_index_u32(46756u, 7u)]))).c.x));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(199f, -1530f) + _wgslsmith_f_op_f32(-var_1.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.x)));
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b, 388f, 1211f, -937f))) + var_1.a) + vec4<f32>(_wgslsmith_f_op_f32(-769f + _wgslsmith_f_op_f32(abs(294f))), var_1.b, _wgslsmith_div_f32(754f, _wgslsmith_div_f32(953f, 1822f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-609f * var_1.e))))), _wgslsmith_f_op_f32(f32(-1f) * -616f), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b, -164f, var_1.a.x, _wgslsmith_f_op_f32(-var_1.b))))), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, ~10715i), max(max(vec2<i32>(-1i, 0i), vec2<i32>(2147483647i, global0[_wgslsmith_index_u32(0u, 7u)])), _wgslsmith_div_vec2_i32(vec2<i32>(var_1.d, u_input.a), vec2<i32>(var_1.d, u_input.a)))) >> (~firstLeadingBit(1u << (0u % 32u)) % 32u), var_1.b);
    var var_4 = _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(firstLeadingBit(52976u), abs(0u), 4294967295u, abs(4294967295u))) & (1u | _wgslsmith_clamp_u32(1u, select(14661u, 29524u, true), ~0u)), 1u);
    let var_5 = var_3;
    let var_6 = _wgslsmith_mult_u32(50137u, countOneBits(9788u));
    global0 = array<i32, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-748f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-520f, -265f) * func_2(Struct_1(var_3.c, var_1.a.x, vec4<f32>(-1000f, var_1.c.x, var_3.e, var_3.b), var_3.d, 774f), vec4<i32>(1i, var_1.d, var_1.d, var_1.d)).b)))), (15939u >> (0u % 32u)) << (_wgslsmith_div_u32(var_6, 1u) % 32u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-749f, 1000f)))) + var_5.c.x), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(-1189f)), _wgslsmith_div_f32(var_1.e, -231f))))), var_1.d);
}

