struct Struct_1 {
    a: vec4<u32>,
    b: vec3<u32>,
    c: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec3<i32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec3<u32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 2>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
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

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec3<bool>, arg_1: bool) -> f32 {
    global0 = array<Struct_2, 2>();
    let var_0 = 1f;
    var var_1 = _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 11683u, u_input.b.x), u_input.b);
    let var_2 = ~_wgslsmith_dot_vec3_i32(min(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, u_input.a, 1i), ~vec3<i32>(0i, 1i, u_input.a)), vec3<i32>(_wgslsmith_sub_i32(-25882i, -26180i), -u_input.a, u_input.a)), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a >> (1u % 32u), 53632i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -45201i), vec2<i32>(-11013i, u_input.a))), vec3<i32>(u_input.a, u_input.a, 1i)));
    var var_3 = vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, -50512i, 11068i), vec4<i32>(var_2, var_2, 28549i, var_2)), firstLeadingBit(-30355i)), u_input.a, u_input.a), reverseBits(vec3<i32>(u_input.a, u_input.a, var_2) | (vec3<i32>(var_2, var_2, var_2) ^ vec3<i32>(u_input.a, u_input.a, 2783i)))), abs(u_input.a << (_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.b, u_input.b), vec3<u32>(98383u, u_input.b.x, 4294967295u)) % 32u)), -1i << (u_input.b.x % 32u));
    return 1f;
}

fn func_2(arg_0: u32, arg_1: f32) -> Struct_1 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(2098f, _wgslsmith_div_f32(arg_1, 1000f)) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), true), true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(max(arg_1, arg_1)))))), _wgslsmith_f_op_f32(max(arg_1, _wgslsmith_f_op_f32(-arg_1))));
    global0 = array<Struct_2, 2>();
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.x))), 675f), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(arg_1 * -637f), _wgslsmith_f_op_f32(-var_0.x)) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(1229f, arg_1) + vec2<f32>(var_0.x, -603f))))), select(select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(false, all(vec2<bool>(false, true))), all(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false)))))));
    let var_1 = select(select(vec4<bool>((0i != u_input.a) | true, true, false, any(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true)))), !vec4<bool>(u_input.a == 12394i, u_input.b.x >= 0u, any(vec2<bool>(false, true)), true), !vec4<bool>(any(vec4<bool>(false, true, true, true)), any(vec4<bool>(false, false, false, true)), 8293u > arg_0, false)), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), !select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), false)), select(select(vec4<bool>(true, true, true, true), vec4<bool>(arg_1 == 369f, any(vec2<bool>(false, true)), var_0.x > 791f, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false))), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true)), true), vec4<bool>(false, all(vec3<bool>(true, true, false)), any(vec2<bool>(true, true)), true), !select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), false)), any(vec4<bool>(true, true, true, true)) | true));
    global0 = array<Struct_2, 2>();
    return Struct_1(_wgslsmith_sub_vec4_u32(vec4<u32>(min(min(arg_0, 1u), 4294967295u), u_input.b.x, ~arg_0 & arg_0, 52174u), vec4<u32>(u_input.b.x, ~13457u, reverseBits(~arg_0), max(~22785u, u_input.b.x >> (arg_0 % 32u)))), _wgslsmith_add_vec3_u32(vec3<u32>(88571u, _wgslsmith_mult_u32(arg_0, countOneBits(4294967295u)), 4294967295u), min(u_input.b, firstTrailingBit(max(vec3<u32>(152146u, 4294967295u, u_input.b.x), u_input.b)))), !(_wgslsmith_mult_i32(~(-2147483647i), -u_input.a) < _wgslsmith_clamp_i32(-2147483647i, 1i, _wgslsmith_div_i32(1i, u_input.a))));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec3<bool>) -> vec4<u32> {
    global0 = array<Struct_2, 2>();
    var var_0 = !select(select(arg_3.zx, vec2<bool>(any(vec2<bool>(false, true)), true), (4294967295u >= arg_2.b.a.x) && arg_1.c), !(!select(arg_3.yz, vec2<bool>(arg_3.x, true), arg_1.c)), 304f <= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(2167f)))));
    let var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(538f * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1116f, -1000f)) - -1452f))))));
    let var_2 = !(!(!(!(-131f != var_1))));
    let var_3 = arg_3.zz;
    return ~select(_wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(arg_2.b.a, vec4<u32>(arg_1.b.x, 67116u, arg_2.b.a.x, 51897u)), vec4<u32>(38978u, 4294967295u, 47165u, arg_2.b.a.x) ^ arg_2.b.a), vec4<u32>(arg_1.a.x, arg_2.b.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.b.a.x, u_input.b.x, arg_1.b.x, 22999u), vec4<u32>(arg_2.b.a.x, arg_2.b.b.x, 29298u, 1u) ^ arg_2.b.a), _wgslsmith_mult_u32(select(1u, arg_1.a.x, true), ~arg_2.b.b.x)), false);
}

fn func_5(arg_0: vec4<u32>, arg_1: bool, arg_2: Struct_1, arg_3: Struct_2) -> vec2<i32> {
    var var_0 = (arg_3.a.x != -31993i) && all(select(vec2<bool>(true | arg_2.c, true), vec2<bool>(!arg_2.c, arg_3.b.c || true), false));
    global0 = array<Struct_2, 2>();
    let var_1 = arg_3.a.xx;
    var var_2 = arg_3.a.x;
    global0 = array<Struct_2, 2>();
    return var_1 ^ firstLeadingBit(firstLeadingBit(min(var_1, -arg_3.a.yy)));
}

fn func_6(arg_0: vec2<i32>, arg_1: u32) -> u32 {
    var var_0 = func_2(0u, _wgslsmith_f_op_f32(301f + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1000f + -551f), 211f)))).b.yx;
    let var_1 = select(vec3<bool>(false, func_2(~_wgslsmith_mod_u32(var_0.x, 60407u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(560f - -254f))).c, all(vec2<bool>(true, true)) && false), vec3<bool>(false, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -382f))) > _wgslsmith_f_op_f32(f32(-1f) * -289f), all(select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true), any(vec4<bool>(true, false, true, true))))), vec3<bool>(var_0.x > 1u, _wgslsmith_mult_i32(~arg_0.x, _wgslsmith_dot_vec2_i32(arg_0, vec2<i32>(u_input.a, 0i))) >= (i32(-1i) * -40277i), false));
    var var_2 = ~vec2<u32>(0u, u_input.b.x);
    let var_3 = Struct_3(func_2(var_0.x, 784f), var_1.yy, ~vec3<i32>(abs(~23628i), 0i, firstLeadingBit(min(u_input.a, -770i))), global0[_wgslsmith_index_u32(firstLeadingBit(~var_2.x), 2u)]);
    let var_4 = 2284i;
    return _wgslsmith_mult_u32(~u_input.b.x, ~var_0.x);
}

fn func_1(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: u32) -> Struct_3 {
    var var_0 = arg_0.b.b.x;
    var_0 = _wgslsmith_add_u32(func_6(func_5(func_4(_wgslsmith_sub_vec2_i32(vec2<i32>(arg_0.a.x, arg_0.a.x), vec2<i32>(20929i, u_input.a)), func_2(1u, -324f), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(5778u, 2327u), 2u)], !vec3<bool>(arg_0.b.c, true, arg_0.b.c)), true, Struct_1(vec4<u32>(4294967295u, 0u, 0u, arg_0.b.b.x), vec3<u32>(u_input.b.x, u_input.b.x, 12775u) | vec3<u32>(u_input.b.x, arg_0.b.b.x, 1u), true), arg_0), ~(~(~arg_2))), 1u);
    var_0 = 0u;
    var_0 = max(45895u, _wgslsmith_dot_vec2_u32(~func_4(vec2<i32>(0i, 15715i), Struct_1(vec4<u32>(4294967295u, arg_2, 2149u, 4294967295u), arg_0.b.a.ywx, true), Struct_2(vec3<i32>(-2547i, 5094i, -2147483647i), arg_0.b), arg_1.wyy).yy, ~vec2<u32>(arg_0.b.b.x, 34705u)) << (~firstTrailingBit(1u) % 32u));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1154f + _wgslsmith_f_op_f32(-422f - -425f)), _wgslsmith_f_op_f32(-640f + _wgslsmith_f_op_f32(-707f - 377f))))) + _wgslsmith_f_op_f32(-1106f - -1232f));
    return Struct_3(func_2(39750u, 925f), !arg_1.wx, vec3<i32>(-2147483647i, min(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, -13692i, u_input.a), vec3<i32>(u_input.a, u_input.a, 2147483647i)), abs(_wgslsmith_mod_i32(2147483647i, -46677i))), select(u_input.a, ~(~29551i), false)), global0[_wgslsmith_index_u32(arg_0.b.a.x, 2u)]);
}

fn func_7(arg_0: u32, arg_1: vec3<f32>, arg_2: Struct_3, arg_3: f32) -> StorageBuffer {
    var var_0 = ~_wgslsmith_mult_vec2_u32(vec2<u32>(arg_0, _wgslsmith_add_u32(1u, arg_2.d.b.a.x)) & select(_wgslsmith_sub_vec2_u32(u_input.b.xy, arg_2.d.b.a.zx), ~vec2<u32>(u_input.b.x, 4294967295u), !arg_2.d.b.c), arg_2.d.b.a.yw);
    global0 = array<Struct_2, 2>();
    let var_1 = _wgslsmith_f_op_f32(floor(718f));
    let var_2 = func_2(_wgslsmith_add_u32(~((32788u << (arg_2.a.a.x % 32u)) << (max(var_0.x, arg_0) % 32u)), arg_2.a.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3 + -564f) - 1132f));
    let var_3 = Struct_3(var_2, arg_2.b, arg_2.c, func_1(func_1(Struct_2(arg_2.d.a, func_1(global0[_wgslsmith_index_u32(arg_2.a.a.x, 2u)], vec4<bool>(true, var_2.c, false, true), arg_0).d.b), !(!vec4<bool>(arg_2.d.b.c, var_2.c, true, false)), func_1(arg_2.d, vec4<bool>(true, true, true, true), var_2.a.x >> (24004u % 32u)).a.b.x).d, !vec4<bool>(any(vec2<bool>(true, var_2.c)), !arg_2.b.x, !arg_2.a.c, arg_2.b.x & var_2.c), func_4(vec2<i32>(2147483647i, _wgslsmith_sub_i32(arg_2.c.x, 45703i)), Struct_1(vec4<u32>(var_0.x, 48846u, arg_0, var_0.x), firstLeadingBit(vec3<u32>(arg_2.d.b.b.x, 1u, arg_2.d.b.b.x)), true), func_1(Struct_2(vec3<i32>(arg_2.c.x, u_input.a, u_input.a), Struct_1(vec4<u32>(var_0.x, 10957u, 0u, arg_2.d.b.b.x), arg_2.d.b.a.wxy, arg_2.b.x)), !vec4<bool>(false, var_2.c, arg_2.b.x, var_2.c), 8908u).d, !(!vec3<bool>(arg_2.a.c, arg_2.d.b.c, var_2.c))).x).d);
    return StorageBuffer(u_input.a & _wgslsmith_sub_i32(arg_2.c.x, -var_3.c.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_1 - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(arg_1)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1891f, arg_1.x, var_1) - arg_1))) * vec3<f32>(_wgslsmith_f_op_f32(-1226f - -465f), _wgslsmith_f_op_f32(-1482f * -618f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1086f)), -489f))), var_3.a.a.zxy, firstTrailingBit(var_2.b));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 2>();
    var var_0 = Struct_1(~min(select(firstLeadingBit(vec4<u32>(u_input.b.x, u_input.b.x, 1u, u_input.b.x)), ~vec4<u32>(u_input.b.x, 49701u, 19646u, u_input.b.x), vec4<bool>(false, false, true, true)), abs(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)) & _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), vec4<u32>(4294967295u, 4294967295u, 105512u, u_input.b.x), vec4<u32>(u_input.b.x, 4294967295u, 0u, u_input.b.x))), ~((u_input.b & u_input.b) >> ((~u_input.b >> (u_input.b % vec3<u32>(32u))) % vec3<u32>(32u))), true);
    let x = u_input.a;
    s_output = func_7(u_input.b.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-107f + -140f), _wgslsmith_f_op_f32(f32(-1f) * -638f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -2743f))), -1359f)), func_1(Struct_2(-(vec3<i32>(u_input.a, u_input.a, u_input.a) & vec3<i32>(49227i, 2147483647i, u_input.a)), Struct_1(var_0.a, var_0.a.zzz >> (u_input.b % vec3<u32>(32u)), true)), !select(vec4<bool>(var_0.c, true, var_0.c, var_0.c), vec4<bool>(var_0.c, var_0.c, var_0.c, var_0.c), var_0.c), u_input.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1177f))));
}

