struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: vec2<u32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(vec4<u32>(78695u, 5694u, 4752u, 104100u), false, vec2<u32>(0u, 30753u), vec4<f32>(-428f, -883f, -1082f, 1250f)), Struct_1(vec4<u32>(27262u, 47511u, 4294967295u, 4294967295u), false, vec2<u32>(4294967295u, 0u), vec4<f32>(609f, -221f, 492f, 303f)), Struct_1(vec4<u32>(4294967295u, 1u, 1u, 155003u), false, vec2<u32>(0u, 0u), vec4<f32>(319f, -1000f, -805f, -903f)), Struct_1(vec4<u32>(90100u, 4294967295u, 4294967295u, 1u), false, vec2<u32>(0u, 2710u), vec4<f32>(173f, 1000f, 207f, -647f)), Struct_1(vec4<u32>(1u, 1u, 22903u, 0u), true, vec2<u32>(4294967295u, 1u), vec4<f32>(426f, -1461f, -428f, 488f)), Struct_1(vec4<u32>(24711u, 28394u, 82521u, 0u), false, vec2<u32>(48482u, 0u), vec4<f32>(440f, -1000f, -1176f, -1046f)), Struct_1(vec4<u32>(30156u, 4294967295u, 1u, 4294967295u), true, vec2<u32>(25397u, 4294967295u), vec4<f32>(1000f, 1150f, 1208f, 907f)), Struct_1(vec4<u32>(4294967295u, 46014u, 1u, 12930u), false, vec2<u32>(4294967295u, 62337u), vec4<f32>(-1630f, 188f, -2027f, -1000f)), Struct_1(vec4<u32>(1u, 12747u, 47621u, 16313u), false, vec2<u32>(1u, 4294967295u), vec4<f32>(-1464f, -1000f, 292f, 130f)));

var<private> global1: array<Struct_3, 4> = array<Struct_3, 4>(Struct_3(vec3<f32>(510f, 511f, 793f), Struct_1(vec4<u32>(47095u, 0u, 1u, 0u), false, vec2<u32>(4294967295u, 61955u), vec4<f32>(-547f, -131f, 408f, 920f)), Struct_1(vec4<u32>(16481u, 12112u, 9591u, 40880u), true, vec2<u32>(1u, 1u), vec4<f32>(-809f, -608f, -450f, 1000f))), Struct_3(vec3<f32>(527f, -2156f, 1000f), Struct_1(vec4<u32>(64670u, 71328u, 50892u, 1u), false, vec2<u32>(2769u, 0u), vec4<f32>(-233f, 116f, 874f, -121f)), Struct_1(vec4<u32>(122173u, 0u, 1u, 1u), true, vec2<u32>(27710u, 4294967295u), vec4<f32>(344f, 1572f, -1602f, 389f))), Struct_3(vec3<f32>(153f, -2075f, -324f), Struct_1(vec4<u32>(12550u, 0u, 4294967295u, 4294967295u), false, vec2<u32>(0u, 38481u), vec4<f32>(208f, -326f, 1137f, -630f)), Struct_1(vec4<u32>(55681u, 7110u, 101470u, 4294967295u), true, vec2<u32>(14249u, 27765u), vec4<f32>(983f, 689f, 305f, -218f))), Struct_3(vec3<f32>(158f, 1395f, 503f), Struct_1(vec4<u32>(101976u, 0u, 30300u, 1u), false, vec2<u32>(0u, 0u), vec4<f32>(-1264f, -124f, -727f, 1130f)), Struct_1(vec4<u32>(0u, 37827u, 9611u, 1u), true, vec2<u32>(42207u, 40486u), vec4<f32>(384f, -1907f, -1371f, 834f))));

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1) -> bool {
    global1 = array<Struct_3, 4>();
    global1 = array<Struct_3, 4>();
    let var_0 = vec4<i32>(54914i, ~_wgslsmith_mod_i32(2147483647i, 0i << (~arg_0.a.x % 32u)), 8671i, 1i);
    var var_1 = !select(select(!select(vec3<bool>(arg_0.b, arg_0.b, arg_0.b), vec3<bool>(arg_0.b, arg_0.b, arg_0.b), vec3<bool>(arg_0.b, arg_0.b, true)), vec3<bool>(false, all(vec4<bool>(arg_0.b, false, arg_0.b, arg_0.b)), arg_0.b || arg_0.b), !vec3<bool>(true, arg_0.b, arg_0.b)), !vec3<bool>(true, -18637i < var_0.x, all(vec2<bool>(true, arg_0.b))), arg_0.b);
    let var_2 = vec4<i32>(~var_0.x, var_0.x, ~select((var_0.x >> (1u % 32u)) >> (1u % 32u), var_0.x, true), _wgslsmith_dot_vec2_i32(select(-var_0.yx, ~(-vec2<i32>(-2085i, var_0.x)), !vec2<bool>(arg_0.b, arg_0.b)), vec2<i32>(var_0.x, var_0.x)));
    return any(!(!(!select(vec3<bool>(false, false, arg_0.b), vec3<bool>(arg_0.b, var_1.x, true), vec3<bool>(var_1.x, var_1.x, true)))));
}

fn func_2(arg_0: vec3<i32>) -> i32 {
    var var_0 = Struct_2(select(select(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false)), vec3<bool>(true, false, all(vec2<bool>(false, true))), all(vec4<bool>(true, true, true, true))), select(vec3<bool>(true, func_3(global0[_wgslsmith_index_u32(u_input.a.x, 9u)]), true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), true), true), true), !select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), any(vec4<bool>(false, false, true, true)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1931f, -3669f))), _wgslsmith_f_op_f32(-1000f * -212f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-251f, 635f, false)) + _wgslsmith_f_op_f32(abs(1128f))))), Struct_1(min(vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 0u), abs(vec4<u32>(24390u, u_input.a.x, 12631u, u_input.a.x))) << (vec4<u32>(~0u, _wgslsmith_div_u32(u_input.a.x, u_input.a.x), u_input.a.x, u_input.a.x) % vec4<u32>(32u)), any(vec4<bool>(false, true, func_3(global0[_wgslsmith_index_u32(u_input.a.x, 9u)]), false)), abs(~u_input.a), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1329f, 1696f, 1277f, 1406f))))))));
    var var_1 = vec2<bool>(-2147483647i < arg_0.x, arg_0.x <= _wgslsmith_dot_vec4_i32(~(vec4<i32>(-9722i, arg_0.x, 742i, -43195i) << (vec4<u32>(u_input.a.x, u_input.a.x, 0u, var_0.c.c.x) % vec4<u32>(32u))), -vec4<i32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x) ^ vec4<i32>(-4831i, -42633i, arg_0.x, -23601i)));
    var var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) * -638f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.c.d.x), _wgslsmith_f_op_f32(var_0.b.x + var_0.c.d.x))), !var_0.c.b)), var_0.b.x, false))));
    global0 = array<Struct_1, 9>();
    var var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-316f, _wgslsmith_f_op_f32(sign(522f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x - -911f)))));
    return ~(~2147483647i) << (var_0.c.a.x % 32u);
}

fn func_4(arg_0: i32) -> vec2<u32> {
    global1 = array<Struct_3, 4>();
    var var_0 = Struct_2(vec3<bool>(true, u_input.a.x == u_input.a.x, !(!all(vec4<bool>(false, true, true, true)))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_div_f32(723f, 1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1305f + 1149f) - -1355f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -490f)))))), Struct_1(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), false, abs(~u_input.a), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1f, _wgslsmith_div_f32(-194f, 890f), -1375f, -1126f)))));
    global0 = array<Struct_1, 9>();
    let var_1 = _wgslsmith_sub_u32(~u_input.a.x, 25666u);
    var var_2 = _wgslsmith_add_vec2_i32(vec2<i32>(37203i, arg_0) | -(vec2<i32>(-1i) * -vec2<i32>(arg_0, -2147483647i)), ~_wgslsmith_add_vec2_i32(-(~vec2<i32>(arg_0, arg_0)), abs(_wgslsmith_mod_vec2_i32(vec2<i32>(arg_0, -1i), vec2<i32>(arg_0, arg_0)))));
    return u_input.a;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_3) -> i32 {
    global1 = array<Struct_3, 4>();
    var var_0 = arg_0.c.d.x;
    global0 = array<Struct_1, 9>();
    let var_1 = Struct_2(!(!(!vec3<bool>(arg_0.a.x, false, false))), _wgslsmith_div_vec3_f32(arg_0.c.d.xww, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.b) + arg_0.b)), Struct_1(max(arg_1.b.a, ~arg_0.c.a), false, ~_wgslsmith_sub_vec2_u32(vec2<u32>(94634u, u_input.a.x), vec2<u32>(0u, 0u)) & u_input.a, _wgslsmith_f_op_vec4_f32(-arg_1.c.d)));
    var var_2 = 260f;
    return 0i;
}

fn func_1(arg_0: u32) -> u32 {
    global0 = array<Struct_1, 9>();
    global0 = array<Struct_1, 9>();
    let var_0 = func_5(Struct_2(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), !select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), true), all(vec4<bool>(false, true, true, false))), vec3<f32>(1f, 1f, 1f), Struct_1(~vec4<u32>(u_input.a.x, 42945u, 5429u, u_input.a.x), 1u >= arg_0, func_4(func_2(vec3<i32>(-15743i, 73730i, -2147483647i))), vec4<f32>(1f, 1f, 1f, 1f))), global1[_wgslsmith_index_u32(17784u, 4u)]);
    global1 = array<Struct_3, 4>();
    global1 = array<Struct_3, 4>();
    return abs(~_wgslsmith_sub_u32(max(u_input.a.x, u_input.a.x), 0u)) | ~(u_input.a.x << ((~arg_0 ^ ~arg_0) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~0i;
    let var_1 = global1[_wgslsmith_index_u32(u_input.a.x, 4u)];
    let var_2 = -select(vec2<i32>(reverseBits(abs(-1i)), select(-2147483647i, 22383i, true) << (func_1(var_1.c.a.x) % 32u)), vec2<i32>(func_5(Struct_2(vec3<bool>(true, var_1.c.b, true), vec3<f32>(var_1.c.d.x, -375f, var_1.c.d.x), var_1.b), global1[_wgslsmith_index_u32(42471u, 4u)]), ~(-2147483647i)) << (_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x, var_1.c.a.x), ~vec2<u32>(15437u, var_1.c.a.x)) % vec2<u32>(32u)), vec2<bool>(var_1.c.b, var_1.b.b));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1946f) - _wgslsmith_f_op_f32(f32(-1f) * -1371f))) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.a.x), 274f) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.c.d.x, 363f)))));
    let var_4 = vec2<i32>(select(2147483647i, reverseBits(var_2.x >> (u_input.a.x % 32u)) >> (u_input.a.x % 32u), var_1.a.x > var_1.a.x), _wgslsmith_clamp_i32(var_2.x ^ func_5(Struct_2(vec3<bool>(var_1.b.b, true, true), vec3<f32>(-191f, 1273f, -1000f), Struct_1(var_1.c.a, var_1.b.b, vec2<u32>(50059u, var_1.c.c.x), var_1.b.d)), global1[_wgslsmith_index_u32(4294967295u, 4u)]), _wgslsmith_clamp_i32(var_2.x, 21316i, 1i), func_5(Struct_2(vec3<bool>(var_1.b.b, false, var_1.b.b), vec3<f32>(var_1.c.d.x, var_1.c.d.x, -930f), Struct_1(var_1.b.a, true, var_1.b.a.yx, vec4<f32>(1221f, var_1.c.d.x, -1140f, var_1.c.d.x))), Struct_3(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(220f, var_1.a.x, var_1.b.d.x))), var_1.c, var_1.b))));
    var var_5 = Struct_1(max(var_1.b.a, firstLeadingBit(var_1.b.a ^ vec4<u32>(88465u, var_1.b.c.x, 4294967295u, 14428u)) | vec4<u32>(16027u, 0u, 4294967295u, select(u_input.a.x, var_1.c.c.x, false))), !(abs(_wgslsmith_mod_u32(u_input.a.x, u_input.a.x)) > func_4(-14215i).x), var_1.b.a.ww, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.d.x, -1598f, -1281f, -1555f)) + _wgslsmith_f_op_vec4_f32(sign(var_1.b.d))))));
    let var_6 = var_5.b;
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<i32>(var_2.x, _wgslsmith_dot_vec3_i32(vec3<i32>(var_2.x, -2147483647i, var_4.x), vec3<i32>(var_4.x, var_4.x, var_4.x)) << (_wgslsmith_sub_u32(u_input.a.x, u_input.a.x) % 32u), -2147483647i), _wgslsmith_mult_vec4_i32(vec4<i32>(-13017i, ~var_2.x, var_2.x, var_2.x) >> (select(_wgslsmith_sub_vec4_u32(var_1.b.a, vec4<u32>(var_5.c.x, u_input.a.x, 51079u, 0u)), var_5.a, select(vec4<bool>(true, var_5.b, false, var_5.b), vec4<bool>(false, var_1.b.b, var_1.b.b, var_5.b), vec4<bool>(false, var_5.b, true, true))) % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(vec4<i32>(-var_4.x, -var_4.x, var_2.x, select(-2147483647i, var_2.x, var_1.c.b)), vec4<i32>(i32(-1i) * -39259i, -3063i, -61689i, abs(var_2.x)))));
}

