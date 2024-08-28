struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec3<f32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true));

var<private> global2: u32;

var<private> global3: array<Struct_1, 8>;

var<private> global4: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true));

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1) -> u32 {
    global4 = array<Struct_1, 9>();
    global4 = array<Struct_1, 9>();
    let var_0 = -2147483647i;
    var var_1 = Struct_1(true);
    global1 = array<Struct_1, 18>();
    return ~23411u;
}

fn func_2(arg_0: vec4<i32>, arg_1: u32, arg_2: Struct_1, arg_3: bool) -> bool {
    global1 = array<Struct_1, 18>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-412f + _wgslsmith_f_op_f32(sign(-990f))) - -496f);
    let var_1 = global4[_wgslsmith_index_u32(func_3(Struct_1(select(true, true, arg_3) & arg_3)), 9u)];
    var var_2 = -3156i;
    global2 = abs(countOneBits(~1u));
    return !(var_0 >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_0)), var_0));
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: vec4<bool>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = global4[_wgslsmith_index_u32(~arg_1, 9u)];
    global3 = array<Struct_1, 8>();
    global2 = arg_1;
    var var_1 = arg_1;
    var var_2 = !select(arg_2, !arg_2, select(arg_2, select(select(vec4<bool>(true, false, arg_2.x, true), arg_2, vec4<bool>(arg_0.a, arg_2.x, arg_2.x, true)), select(vec4<bool>(true, true, true, false), arg_2, arg_0.a), !arg_2), !vec4<bool>(false, arg_2.x, arg_2.x, false)));
    return Struct_1(true);
}

fn func_1(arg_0: vec4<i32>, arg_1: u32, arg_2: Struct_1) -> StorageBuffer {
    var var_0 = func_4(global4[_wgslsmith_index_u32(~0u, 9u)], arg_1, !vec4<bool>(arg_2.a, arg_2.a, func_2(arg_0, 20233u, arg_2, true) != any(vec2<bool>(false, false)), arg_2.a), global4[_wgslsmith_index_u32(firstTrailingBit(18092u), 9u)]);
    let var_1 = ~min(1u, _wgslsmith_mult_u32(59509u, arg_1)) & _wgslsmith_div_u32(23151u, 4294967295u);
    let var_2 = Struct_1(!(true && arg_2.a));
    var var_3 = vec2<u32>((_wgslsmith_add_u32(~1u, 1u) >> ((_wgslsmith_dot_vec3_u32(vec3<u32>(11583u, 36177u, var_1), vec3<u32>(43919u, var_1, 103897u)) >> (_wgslsmith_clamp_u32(var_1, var_1, 13484u) % 32u)) % 32u)) >> (4294967295u % 32u), firstTrailingBit(var_1));
    var var_4 = Struct_1(!(!(true | all(vec3<bool>(true, arg_2.a, true)))));
    return StorageBuffer(-_wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(-2147483647i, 35829i), u_input.a.x), min(firstTrailingBit(vec2<i32>(-1i, -37312i)), vec2<i32>(-64494i, 34648i))), -min(arg_0, vec4<i32>(_wgslsmith_dot_vec3_i32(arg_0.xzw, vec3<i32>(1i, 47267i, arg_0.x)), ~u_input.a.x, arg_0.x ^ arg_0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, -1i, u_input.a.x, u_input.a.x), arg_0))), ~(~max(vec2<u32>(var_1, 3670u), vec2<u32>(37588u, 24644u))) << (vec2<u32>(~(~0u), ~select(1u, 4294967295u, var_4.a)) % vec2<u32>(32u)), vec3<f32>(1f, -799f, _wgslsmith_f_op_f32(trunc(-2917f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1537f, -288f, -385f))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(819f, -404f, -1000f) * vec3<f32>(1151f, -1182f, -2144f)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-420f, 1000f, 1322f), vec3<f32>(981f, -547f, 775f))), !vec3<bool>(arg_2.a, true, false)))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-308f, -2020f), _wgslsmith_f_op_f32(ceil(624f)), -1618f) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1155f, 1180f, -152f)), vec3<f32>(1283f, -2033f, -416f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_dot_vec4_u32(vec4<u32>(~15373u, 3101u, 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(53443u, 1u))) & abs(vec4<u32>(~4294967295u, ~1u, ~0u, 39514u)), _wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(min(vec4<u32>(4294967295u, 21317u, 26427u, 52845u), vec4<u32>(30777u, 0u, 1911u, 0u)), vec4<u32>(4294967295u, ~41040u, ~33984u, 4294967295u >> (1u % 32u))), ~select(~vec4<u32>(4294967295u, 49450u, 0u, 44207u), max(vec4<u32>(4294967295u, 1u, 35673u, 0u), vec4<u32>(1u, 1064u, 1u, 70114u)), vec4<bool>(false, false, false, true))));
    let var_0 = global1[_wgslsmith_index_u32(1u, 18u)];
    let var_1 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1059f - -164f) - _wgslsmith_f_op_f32(round(-719f))), -1650f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1000f, -197f)) * _wgslsmith_f_op_f32(f32(-1f) * -334f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1137f, 316f, 1353f))) + vec3<f32>(-682f, 696f, -565f))), select(vec3<bool>(true & var_0.a, false, !var_0.a), !select(vec3<bool>(var_0.a, var_0.a, true), vec3<bool>(true, false, false), vec3<bool>(true, var_0.a, false)), select(vec3<bool>(var_0.a, var_0.a, false), vec3<bool>(var_0.a, true, false), vec3<bool>(true, true, true))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(max(-262f, 1000f)), _wgslsmith_f_op_f32(round(-381f)), _wgslsmith_f_op_f32(-1556f - 1399f)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-277f, _wgslsmith_f_op_f32(min(1925f, 807f)), -986f)))));
    global4 = array<Struct_1, 9>();
    global1 = array<Struct_1, 18>();
    var var_2 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, firstTrailingBit(24034u)), 18u)];
    let var_3 = global3[_wgslsmith_index_u32(100642u, 8u)];
    var var_4 = global3[_wgslsmith_index_u32(abs(22616u), 8u)];
    let var_5 = Struct_1(var_3.a);
    let x = u_input.a;
    s_output = func_1(-(~(-max(vec4<i32>(2492i, 1i, -66449i, 27063i), vec4<i32>(-1i, -1i, -21702i, u_input.a.x)))), 1u, Struct_1(!all(!vec2<bool>(false, var_4.a))));
}

