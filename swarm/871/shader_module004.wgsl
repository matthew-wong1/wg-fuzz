struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: f32,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: Struct_2,
    d: vec3<u32>,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 17>;

var<private> global1: array<Struct_1, 20>;

var<private> global2: array<vec4<f32>, 25> = array<vec4<f32>, 25>(vec4<f32>(292f, 248f, 272f, -1064f), vec4<f32>(-813f, 1534f, 367f, 292f), vec4<f32>(747f, -108f, -278f, -651f), vec4<f32>(-490f, -150f, -1000f, -855f), vec4<f32>(872f, -1589f, -865f, -122f), vec4<f32>(1371f, -1530f, -162f, 600f), vec4<f32>(-354f, -314f, -1424f, 1115f), vec4<f32>(959f, -1000f, 917f, -1154f), vec4<f32>(155f, -139f, 1392f, -277f), vec4<f32>(-2045f, -1000f, -307f, 409f), vec4<f32>(-1331f, -958f, 1000f, 1477f), vec4<f32>(219f, -351f, 911f, -725f), vec4<f32>(646f, 399f, -227f, -1798f), vec4<f32>(-352f, -374f, 531f, -375f), vec4<f32>(1192f, 388f, 207f, -1121f), vec4<f32>(-449f, -1000f, -289f, -257f), vec4<f32>(-1374f, -770f, 310f, -1572f), vec4<f32>(-158f, -1000f, 918f, 354f), vec4<f32>(-439f, -2264f, 1310f, -1145f), vec4<f32>(877f, 839f, -1509f, -1193f), vec4<f32>(675f, -1745f, 604f, -497f), vec4<f32>(1372f, 399f, 252f, 151f), vec4<f32>(739f, 888f, -674f, 506f), vec4<f32>(751f, -915f, 319f, 211f), vec4<f32>(1569f, 659f, -320f, -1078f));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<u32>, arg_1: i32, arg_2: vec3<u32>) -> vec3<bool> {
    var var_0 = Struct_2(_wgslsmith_div_f32(1277f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(772f + -1312f)))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-497f))) * _wgslsmith_f_op_f32(f32(-1f) * -879f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-698f * 609f)))))));
    var var_1 = Struct_2(!var_0.a, _wgslsmith_f_op_f32(f32(-1f) * -560f));
    global0 = array<Struct_3, 17>();
    let var_2 = var_0.a;
    global1 = array<Struct_1, 20>();
    return select(!vec3<bool>(true, false, all(select(vec2<bool>(var_1.a, false), vec2<bool>(false, false), vec2<bool>(true, true)))), select(vec3<bool>(false, true, !(var_0.a && false)), select(select(!vec3<bool>(var_1.a, var_1.a, var_0.a), vec3<bool>(false, var_1.a, var_0.a), !var_0.a), select(!vec3<bool>(true, true, var_1.a), select(vec3<bool>(var_1.a, false, false), vec3<bool>(true, false, var_0.a), vec3<bool>(var_1.a, var_1.a, true)), select(vec3<bool>(var_0.a, var_0.a, true), vec3<bool>(var_0.a, false, false), vec3<bool>(var_1.a, true, true))), arg_2.x >= _wgslsmith_mod_u32(1u, u_input.a)), false), select(select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), false), !select(vec3<bool>(true, var_1.a, false), vec3<bool>(var_0.a, var_1.a, var_1.a), vec3<bool>(var_1.a, false, var_0.a)), true | var_1.a), !vec3<bool>(-23879i > arg_1, all(vec3<bool>(true, var_1.a, true)), true), var_0.a));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: u32) -> f32 {
    var var_0 = global1[_wgslsmith_index_u32(~arg_2.a.x, 20u)];
    var var_1 = Struct_2(~u_input.c.x == ~8125i, -1858f);
    let var_2 = Struct_1(var_0.a);
    let var_3 = _wgslsmith_mult_vec2_u32(u_input.b, vec2<u32>(~20500u, _wgslsmith_dot_vec3_u32(vec3<u32>(21214u, arg_2.a.x ^ 0u, countOneBits(0u)), ~(~vec3<u32>(29402u, 4294967295u, arg_3)))));
    var var_4 = Struct_3(!all(select(vec3<bool>(var_1.a, arg_1.x, arg_1.x), func_3(vec3<u32>(4294967295u, arg_3, 49732u), 0i, var_2.a.yyw), all(vec3<bool>(var_1.a, arg_1.x, arg_1.x)))), arg_1.x, Struct_2(func_3(var_2.a.xxy, 0i, abs(arg_2.a.xwz)).x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x * 1170f) - -204f) * _wgslsmith_f_op_f32(abs(508f)))), ~var_0.a.zxy, var_2.a.wxy);
    return _wgslsmith_f_op_f32(-var_1.b);
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_2(false, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(326f, 647f, -319f, 1130f)), vec2<bool>(false, true), global1[_wgslsmith_index_u32(u_input.a << (u_input.a % 32u), 20u)], abs(14775u))) * _wgslsmith_f_op_f32(ceil(-1261f))))));
    var var_1 = global1[_wgslsmith_index_u32(76992u, 20u)];
    let var_2 = select(!vec4<bool>(true, _wgslsmith_clamp_u32(4294967295u, var_1.a.x, 0u) > reverseBits(var_1.a.x), max(var_1.a.x, u_input.b.x) < select(13597u, 0u, var_0.a), _wgslsmith_f_op_f32(var_0.b * -1435f) <= _wgslsmith_div_f32(var_0.b, -342f)), vec4<bool>(func_3(~abs(vec3<u32>(u_input.b.x, 18113u, 4294967295u)), 16930i & select(-9538i, -20886i, var_0.a), max(var_1.a.wxz, max(vec3<u32>(var_1.a.x, 1u, u_input.b.x), var_1.a.xxw))).x, true, !var_0.a, true), select(vec4<bool>(true, true, true, true), !vec4<bool>(select(true, true, var_0.a), true, any(vec3<bool>(false, var_0.a, false)), var_0.a), select(vec4<bool>(!var_0.a, !var_0.a, false, !var_0.a), !vec4<bool>(var_0.a, false, true, var_0.a), true)));
    return global1[_wgslsmith_index_u32(u_input.b.x, 20u)];
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1) -> vec3<bool> {
    let var_0 = vec4<u32>(16791u, _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, arg_1.a.x, 1u), vec3<u32>(arg_1.a.x, ~arg_1.a.x, arg_1.a.x)), abs(firstTrailingBit(arg_1.a.x))), _wgslsmith_mult_u32(~min(70831u, _wgslsmith_div_u32(37035u, 61104u)), arg_1.a.x), _wgslsmith_div_u32(u_input.a, ~abs(arg_1.a.x)));
    global0 = array<Struct_3, 17>();
    var var_1 = -(~firstLeadingBit(8847i >> (var_0.x % 32u)));
    let var_2 = ~var_0.wyx;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f)));
    return func_3(~((vec3<u32>(29707u, 26721u, 1u) >> (vec3<u32>(u_input.b.x, 4294967295u, var_2.x) % vec3<u32>(32u))) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 4294967295u, u_input.a), var_0.zxy, vec3<u32>(u_input.b.x, 20078u, 79124u)) % vec3<u32>(32u))) & countOneBits(_wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(arg_1.a.xyw, var_0.yxz), arg_1.a.www)), ~36658i, ~_wgslsmith_sub_vec3_u32(var_0.yyw, _wgslsmith_add_vec3_u32(vec3<u32>(0u, arg_1.a.x, 67918u), vec3<u32>(1u, var_2.x, var_2.x) ^ var_0.wxx)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(any(select(vec3<bool>(true, true, true), vec3<bool>(true, any(vec3<bool>(true, false, false)), true), func_4(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), true), func_1()))), 1033f);
    global0 = array<Struct_3, 17>();
    var var_1 = ~(~vec4<u32>(_wgslsmith_div_u32(_wgslsmith_mult_u32(0u, u_input.a), select(u_input.b.x, u_input.a, false)), ~u_input.b.x, 54186u, _wgslsmith_mult_u32(~u_input.a, _wgslsmith_div_u32(u_input.a, 47671u))));
    let var_2 = vec3<f32>(-1492f, -1910f, -428f);
    var var_3 = func_1();
    let var_4 = Struct_3(!(-1i > u_input.c.x), var_0.a, Struct_2(var_0.a, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.b - -675f), _wgslsmith_f_op_f32(f32(-1f) * -2394f)) - _wgslsmith_f_op_f32(f32(-1f) * -1049f))), _wgslsmith_mod_vec3_u32(vec3<u32>(var_1.x, u_input.b.x, _wgslsmith_sub_u32(var_3.a.x, 0u)) >> (abs(var_3.a.zwz) % vec3<u32>(32u)), vec3<u32>(_wgslsmith_dot_vec4_u32(max(vec4<u32>(4294967295u, 4294967295u, u_input.b.x, 4776u), vec4<u32>(var_1.x, 0u, var_3.a.x, var_1.x)), firstTrailingBit(vec4<u32>(u_input.a, 80608u, 4294967295u, var_3.a.x))), u_input.a, 78290u << (var_3.a.x % 32u))), ~var_3.a.zzy);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(u_input.c.x & 45392i, u_input.c.x, 1i));
}

