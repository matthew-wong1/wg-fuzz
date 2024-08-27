struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 28>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> u32 {
    global0 = array<bool, 28>();
    let var_0 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(634f, 1146f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-564f, 1526f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1085f, 1564f), vec2<f32>(727f, -2526f))))))));
    var var_1 = arg_0.x;
    var var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -846f))), var_0.x));
    var var_3 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-2247f * var_0.x), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(var_0.x * 1358f), var_0.x)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, 1295f, -363f, 248f), vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x), arg_1.c)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(535f, var_0.x, var_0.x, var_0.x))) + vec4<f32>(-563f, var_0.x, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-var_0.x))))));
    return 1u;
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: i32, arg_3: bool) -> i32 {
    global0 = array<bool, 28>();
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-101f, 956f, -1000f, -362f), vec4<f32>(-711f, -1000f, 1341f, 1317f))))) * vec4<f32>(_wgslsmith_f_op_f32(-1364f - 347f), 1000f, _wgslsmith_f_op_f32(min(950f, 730f)), _wgslsmith_f_op_f32(1000f * -1567f))) - vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-415f + -1242f), _wgslsmith_div_f32(1583f, 507f))), _wgslsmith_f_op_f32(-1138f + _wgslsmith_f_op_f32(trunc(-473f))), _wgslsmith_f_op_f32(-1991f - -613f), _wgslsmith_f_op_f32(ceil(-185f)))) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(980f - -110f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-121f, 735f) - -1000f), -523f), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-531f)) * _wgslsmith_f_op_f32(-419f - 245f)), 1f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(1834f)))), -1524f))));
    let var_1 = Struct_1(u_input.c, u_input.c.x | 1i, true);
    global0 = array<bool, 28>();
    let var_2 = select(_wgslsmith_mod_u32(u_input.b.x, _wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(42797u, 5035u, min(u_input.b.x, 1u)))), 65314u, arg_1.c);
    return var_1.a.x;
}

fn func_1(arg_0: Struct_1) -> vec2<bool> {
    global0 = array<bool, 28>();
    global0 = array<bool, 28>();
    var var_0 = vec4<u32>(_wgslsmith_div_u32(~(u_input.b.x | 17202u), u_input.b.x), abs(func_2(min(vec2<u32>(0u, 1u), u_input.b.zz), Struct_1(vec4<i32>(2147483647i, arg_0.b, u_input.a.x, 36459i), 0i, arg_0.c), -38008i, Struct_1(vec4<i32>(-1i, arg_0.b, 17307i, -39320i), arg_0.a.x, false))), u_input.b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(23152u, 0u) << (u_input.b.yz % vec2<u32>(32u)), u_input.b.yz << (_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b.x, 5089u), u_input.b.yx) % vec2<u32>(32u)))) << (~min(abs(firstTrailingBit(vec4<u32>(u_input.b.x, u_input.b.x, 134626u, u_input.b.x))), _wgslsmith_clamp_vec4_u32(vec4<u32>(217u, u_input.b.x, 2315u, u_input.b.x), vec4<u32>(59412u, u_input.b.x, u_input.b.x, u_input.b.x), vec4<u32>(18421u, 1u, 1u, 4763u))) % vec4<u32>(32u));
    var var_1 = arg_0;
    let var_2 = Struct_1(vec4<i32>(~_wgslsmith_mod_i32(-1i, ~2147483647i), _wgslsmith_dot_vec4_i32(-vec4<i32>(arg_0.a.x, 27860i, 1i, u_input.a.x), arg_0.a), -45950i, var_1.b), func_3(!(var_1.c || any(vec4<bool>(false, false, var_1.c, false))), Struct_1(arg_0.a, var_1.a.x, true), var_1.a.x, select(var_1.c & all(vec4<bool>(var_1.c, false, false, true)), var_1.c, arg_0.c)), true);
    return !select(vec2<bool>(global0[_wgslsmith_index_u32(~var_0.x, 28u)], any(vec2<bool>(global0[_wgslsmith_index_u32(var_0.x, 28u)], false))), select(!select(vec2<bool>(var_2.c, true), vec2<bool>(false, false), false), !select(vec2<bool>(var_1.c, true), vec2<bool>(global0[_wgslsmith_index_u32(11428u, 28u)], arg_0.c), var_2.c), !select(vec2<bool>(var_2.c, false), vec2<bool>(true, false), vec2<bool>(var_1.c, false))), arg_0.c);
}

fn func_4(arg_0: bool, arg_1: vec4<f32>, arg_2: vec4<f32>) -> bool {
    global0 = array<bool, 28>();
    global0 = array<bool, 28>();
    var var_0 = Struct_1(u_input.c ^ _wgslsmith_div_vec4_i32(vec4<i32>(~3642i, abs(-13910i), i32(-1i) * -5526i, u_input.c.x), -(~u_input.c)), ~(-_wgslsmith_mod_i32(u_input.a.x, -2147483647i) | (i32(-1i) * -u_input.c.x)), true);
    global0 = array<bool, 28>();
    return u_input.b.x < 77430u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(-(~u_input.c), _wgslsmith_add_i32(-15679i ^ ~firstTrailingBit(u_input.a.x), select(-1i << (~u_input.b.x % 32u), firstTrailingBit(~u_input.c.x), global0[_wgslsmith_index_u32(u_input.b.x, 28u)])), !(!global0[_wgslsmith_index_u32(15128u, 28u)]));
    global0 = array<bool, 28>();
    global0 = array<bool, 28>();
    let var_1 = -var_0.a.zww;
    let var_2 = var_0;
    global0 = array<bool, 28>();
    let var_3 = func_4(!any(func_1(Struct_1(var_2.a, var_0.a.x, false))), vec4<f32>(553f, _wgslsmith_f_op_f32(f32(-1f) * -1076f), 217f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-1126f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(2946f, -1515f, 727f, -453f), vec4<f32>(564f, -556f, -810f, 1000f), vec4<bool>(var_0.c, var_2.c, false, var_0.c))) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-606f, 862f, 420f, -385f), vec4<f32>(1000f, 636f, -1474f, 1088f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-176f, 940f, -2391f, -208f) * vec4<f32>(-157f, 1117f, -629f, -1000f))))) && !all(!select(vec2<bool>(var_2.c, false), vec2<bool>(false, var_0.c), var_0.c));
    let x = u_input.a;
    s_output = StorageBuffer(660f, _wgslsmith_sub_vec2_i32(u_input.c.zz, ~(-var_0.a.zw)), min(12805u, 34468u));
}

