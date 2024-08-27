struct Struct_1 {
    a: vec2<f32>,
    b: vec4<i32>,
    c: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec4<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 26> = array<vec4<bool>, 26>(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true));

var<private> global1: u32 = 0u;

var<private> global2: array<vec4<i32>, 5>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: vec2<i32>) -> bool {
    let var_0 = _wgslsmith_f_op_f32(arg_0.a.x + arg_0.a.x);
    let var_1 = any(select(vec2<bool>(true, !any(vec4<bool>(true, false, arg_0.c, arg_0.c))), vec2<bool>(true, false || arg_0.c), !(!select(vec2<bool>(arg_0.c, arg_0.c), vec2<bool>(true, false), vec2<bool>(false, true)))));
    global0 = array<vec4<bool>, 26>();
    let var_2 = arg_1;
    global2 = array<vec4<i32>, 5>();
    return !all(vec2<bool>(true, !(!arg_0.c)));
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_2) -> vec2<f32> {
    global1 = _wgslsmith_sub_u32(4294967295u, ~4294967295u ^ ~reverseBits(arg_1.a.x)) >> (0u % 32u);
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)), vec2<f32>(_wgslsmith_f_op_f32(-132f + -1569f), _wgslsmith_f_op_f32(f32(-1f) * -960f)), vec2<bool>(true, true)))), vec4<i32>(arg_0.x, 0i & _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-36661i, arg_1.b, arg_1.b, -33979i), vec4<i32>(-2147483647i, arg_0.x, arg_1.b, u_input.a.x)), -u_input.a), -2147483647i, 29295i & -arg_1.b), all(vec4<bool>(func_3(Struct_1(vec2<f32>(1949f, -1705f), vec4<i32>(-19510i, 0i, 5187i, u_input.c), false), vec2<f32>(-271f, 1105f), arg_0) || true, true, true, select(true, false, true) && true)));
    let var_1 = !select(select(select(!global0[_wgslsmith_index_u32(4294967295u, 26u)], global0[_wgslsmith_index_u32(~0u, 26u)], select(global0[_wgslsmith_index_u32(1u, 26u)], global0[_wgslsmith_index_u32(21138u, 26u)], vec4<bool>(var_0.c, var_0.c, false, false))), select(!vec4<bool>(var_0.c, var_0.c, false, true), select(vec4<bool>(false, var_0.c, true, var_0.c), global0[_wgslsmith_index_u32(arg_1.a.x, 26u)], var_0.c), select(vec4<bool>(var_0.c, var_0.c, var_0.c, true), vec4<bool>(false, var_0.c, var_0.c, true), vec4<bool>(var_0.c, false, true, false))), var_0.a.x != _wgslsmith_f_op_f32(373f + 305f)), global0[_wgslsmith_index_u32(firstLeadingBit(38995u), 26u)], !global0[_wgslsmith_index_u32(~arg_1.a.x, 26u)]);
    global2 = array<vec4<i32>, 5>();
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-142f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.x + -979f) * -1448f)) + var_0.a.x) * -2584f);
    return var_0.a;
}

fn func_4(arg_0: i32, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: u32) -> u32 {
    let var_0 = _wgslsmith_clamp_i32(_wgslsmith_add_i32(countOneBits(arg_0), -22317i), -53769i, -5040i);
    global2 = array<vec4<i32>, 5>();
    global0 = array<vec4<bool>, 26>();
    let var_1 = arg_0;
    global0 = array<vec4<bool>, 26>();
    return firstTrailingBit(_wgslsmith_clamp_u32(arg_3, 61834u, arg_3));
}

fn func_1() -> Struct_1 {
    let var_0 = vec4<u32>(43946u, ~(~(~4294967295u)), ~1u ^ ~_wgslsmith_dot_vec4_u32(vec4<u32>(24030u, 57886u, 6850u, 4294967295u), vec4<u32>(1u, 21987u, 1u, 4294967295u)), abs(0u)) & vec4<u32>(120104u, 3855u, ~(~1u), ~1u);
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-117f, 1260f) + vec2<f32>(1000f, 780f)))))));
    global1 = ~func_4(2147483647i, select(vec2<bool>(true, true), vec2<bool>(true, true), 0u <= _wgslsmith_dot_vec4_u32(var_0, vec4<u32>(var_0.x, 37887u, 0u, 75091u))), Struct_1(_wgslsmith_f_op_vec2_f32(func_2(u_input.a.xx, Struct_2(vec2<u32>(var_0.x, var_0.x), u_input.b))), -_wgslsmith_mult_vec4_i32(vec4<i32>(0i, 61857i, 2147483647i, u_input.a.x), vec4<i32>(-18230i, 1i, -25244i, 55798i)), !all(vec2<bool>(false, true))), _wgslsmith_mod_u32(30598u, ~8833u));
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(-1197f)), var_1.x))), u_input.a, false);
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-var_1))), _wgslsmith_div_vec4_i32(vec4<i32>(min(u_input.c, ~var_2.b.x), 0i, countOneBits(u_input.a.x), ~1i), _wgslsmith_div_vec4_i32(u_input.a | select(vec4<i32>(32156i, -19724i, var_2.b.x, -65385i), var_2.b, var_2.c), u_input.a)), true);
    return var_2;
}

fn func_5(arg_0: Struct_1, arg_1: i32) -> u32 {
    let var_0 = (_wgslsmith_add_u32(1u, max(1u, ~4294967295u)) & ~_wgslsmith_mult_u32(_wgslsmith_mod_u32(17020u, 38955u), select(15645u, 4294967295u, arg_0.c))) != _wgslsmith_add_u32(reverseBits(1u), _wgslsmith_mod_u32(~1u, abs(10714u)) >> (1u % 32u));
    var var_1 = _wgslsmith_div_i32(select(-1i, _wgslsmith_dot_vec3_i32(u_input.a.xxy, _wgslsmith_div_vec3_i32(arg_0.b.xyz, arg_0.b.xwx)), all(!(!vec2<bool>(false, var_0)))), _wgslsmith_dot_vec3_i32(firstLeadingBit(u_input.a.yzw), u_input.a.wwz ^ arg_0.b.zzy));
    let var_2 = arg_0.b.ywz;
    global1 = 0u;
    var var_3 = Struct_1(arg_0.a, _wgslsmith_mod_vec4_i32(u_input.a, ~_wgslsmith_add_vec4_i32(countOneBits(u_input.a), vec4<i32>(u_input.b, -1i, 54066i, -2147483647i))), arg_0.c);
    return _wgslsmith_dot_vec3_u32(max(~max(max(vec3<u32>(0u, 17747u, 1u), vec3<u32>(4294967295u, 0u, 4294967295u)), vec3<u32>(0u, 4294967295u, 69427u)), max(vec3<u32>(1u, 1u, 1u) & _wgslsmith_clamp_vec3_u32(vec3<u32>(87970u, 4294967295u, 28014u), vec3<u32>(14001u, 4294967295u, 0u), vec3<u32>(4294967295u, 99991u, 8605u)), min(_wgslsmith_div_vec3_u32(vec3<u32>(0u, 58054u, 0u), vec3<u32>(35474u, 75987u, 41766u)), abs(vec3<u32>(15181u, 0u, 1u))))), abs(vec3<u32>(_wgslsmith_sub_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(31281u, 0u, 2636u, 4294967295u), vec4<u32>(4294967295u, 10300u, 32390u, 4294967295u))), firstTrailingBit(select(4294967295u, 4294967295u, var_0)), 580u)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = 4294967295u;
    global2 = array<vec4<i32>, 5>();
    var var_0 = Struct_2(vec2<u32>(func_5(func_1(), abs(10234i)), 5689u) ^ _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(1u, 1u), vec2<u32>(select(39482u, 56999u, false), ~4294967295u)), _wgslsmith_mod_i32(_wgslsmith_div_i32(-(u_input.c >> (14851u % 32u)), countOneBits(firstLeadingBit(u_input.c))), abs(func_1().b.x)));
    global2 = array<vec4<i32>, 5>();
    var_0 = Struct_2(var_0.a, ~u_input.c << (~var_0.a.x % 32u));
    var_0 = Struct_2(abs(var_0.a), -44922i);
    let var_1 = Struct_2(_wgslsmith_div_vec2_u32(~_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, var_0.a.x), var_0.a, vec2<u32>(1u, 0u) | vec2<u32>(0u, var_0.a.x)), ~firstTrailingBit(~vec2<u32>(4294967295u, 83731u))), -var_0.b);
    global2 = array<vec4<i32>, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(0u, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1175f), _wgslsmith_f_op_f32(step(-1883f, 462f)), 1391f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1058f, 515f, -1000f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-274f, -131f, -172f))) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(208f, -280f, 1261f) * vec3<f32>(-539f, -463f, 1000f))))))), ~(vec4<u32>(0u, var_1.a.x, var_0.a.x, 3274u) & vec4<u32>(0u, var_1.a.x, 6323u, var_0.a.x)) | vec4<u32>(_wgslsmith_div_u32(var_0.a.x, 1u) ^ (var_0.a.x << (var_1.a.x % 32u)), 0u, _wgslsmith_mult_u32(_wgslsmith_mult_u32(var_0.a.x, var_0.a.x), 0u), var_0.a.x), ~(56151u ^ (abs(62291u) >> (var_0.a.x % 32u))));
}

