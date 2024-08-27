struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: u32,
    e: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: vec3<i32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 18>;

var<private> global1: array<vec2<bool>, 27> = array<vec2<bool>, 27>(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true));

var<private> global2: u32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec3<i32> {
    let var_0 = ~vec3<i32>(2004i, -24129i, 0i);
    let var_1 = ~select(vec3<u32>(reverseBits(1u), arg_0.b.x, ~_wgslsmith_mod_u32(0u, arg_1.d)), ~(~(vec3<u32>(73346u, arg_0.b.x, 0u) << (vec3<u32>(arg_1.d, 18164u, 11354u) % vec3<u32>(32u)))), !select(!vec3<bool>(arg_1.e, arg_1.e, false), vec3<bool>(arg_0.e, arg_0.e, true), vec3<bool>(arg_1.e, arg_1.e, true)));
    var var_2 = arg_1;
    var var_3 = var_2.e;
    var_2 = Struct_1(arg_0.c.x, select(~var_1.xz, vec2<u32>(~_wgslsmith_sub_u32(4294967295u, 0u), arg_0.b.x), arg_1.e), _wgslsmith_div_vec3_i32(abs(vec3<i32>(-1i) * -u_input.a.xxy), vec3<i32>(_wgslsmith_mod_i32(arg_0.c.x, -1i), _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -1i), vec2<i32>(var_0.x, -30187i)) | abs(u_input.b), _wgslsmith_add_i32(var_2.c.x, abs(39413i)))), arg_0.d, select(arg_1.e, all(select(select(vec3<bool>(false, arg_0.e, arg_1.e), vec3<bool>(false, true, var_2.e), var_2.e), vec3<bool>(false, true, true), vec3<bool>(arg_0.e, false, arg_0.e))), arg_1.e || true));
    return ~(~_wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(~vec3<i32>(0i, -12623i, 1i), u_input.a.yxy), (var_2.c ^ arg_1.c) >> (var_1 % vec3<u32>(32u))));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: f32, arg_3: vec3<u32>) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -705f)), arg_1.x, true))));
    global0 = array<Struct_1, 18>();
    global2 = countOneBits(~arg_0.b.x);
    global1 = array<vec2<bool>, 27>();
    let var_1 = Struct_1(~arg_0.a << (11325u % 32u), min(vec2<u32>(arg_3.x, 4294967295u) & vec2<u32>(_wgslsmith_mult_u32(0u, 43209u), arg_0.b.x), arg_3.xy), func_3(Struct_1(-1408i, arg_0.b, vec3<i32>(arg_0.c.x, u_input.a.x, arg_0.c.x) & u_input.a.yxw, ~arg_3.x, arg_0.e), arg_0) >> (firstTrailingBit(vec3<u32>(76883u >> (0u % 32u), ~0u, arg_3.x)) % vec3<u32>(32u)), _wgslsmith_div_u32(arg_0.d, 11814u), arg_0.e);
    return arg_3.x;
}

fn func_4(arg_0: f32, arg_1: Struct_1) -> vec2<i32> {
    global0 = array<Struct_1, 18>();
    global1 = array<vec2<bool>, 27>();
    let var_0 = ~(~_wgslsmith_sub_u32(arg_1.d, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.d, 3200u), vec2<u32>(arg_1.d, arg_1.d)))) << (arg_1.d % 32u);
    global0 = array<Struct_1, 18>();
    global2 = _wgslsmith_clamp_u32(71827u, ~countOneBits(~4294967295u), ~(~(~_wgslsmith_add_u32(var_0, 4294967295u))));
    return ~u_input.a.yw;
}

fn func_1() -> f32 {
    global0 = array<Struct_1, 18>();
    var var_0 = func_4(336f, Struct_1(u_input.a.x, ~vec2<u32>(1u, 73269u), max(countOneBits(vec3<i32>(-2147483647i, -1i, 44845i)), ~u_input.a.xxw ^ _wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.b), u_input.a.xzw)), firstLeadingBit(func_2(Struct_1(u_input.a.x, vec2<u32>(0u, 90437u), vec3<i32>(2147483647i, u_input.a.x, u_input.b), 1u, true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-415f, -683f, 1218f)), -1492f, vec3<u32>(4294967295u, 1u, 12702u))), !((-25207i | u_input.a.x) == 6498i)));
    global0 = array<Struct_1, 18>();
    global0 = array<Struct_1, 18>();
    global1 = array<vec2<bool>, 27>();
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-772f - -2060f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-375f * _wgslsmith_f_op_f32(select(352f, -1559f, false))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(151f + _wgslsmith_f_op_f32(sign(844f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec4<bool>(_wgslsmith_div_f32(1221f, -762f) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())), false, all(vec3<bool>(true, true, all(vec4<bool>(true, true, false, true)))), !any(select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), false)));
    global0 = array<Struct_1, 18>();
    var var_1 = (vec2<u32>(97572u, ~1u) >> (max(vec2<u32>(abs(0u), ~15420u), _wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 67248u), firstLeadingBit(vec2<u32>(53013u, 4294967295u)), vec2<u32>(14326u, 17307u))) % vec2<u32>(32u))) ^ ~min(vec2<u32>(1u, 1u), _wgslsmith_div_vec2_u32(countOneBits(vec2<u32>(91670u, 0u)), abs(vec2<u32>(11256u, 1u))));
    global1 = array<vec2<bool>, 27>();
    global1 = array<vec2<bool>, 27>();
    let var_2 = ~min(~(~select(vec2<u32>(44540u, var_1.x), vec2<u32>(22328u, 4294967295u), var_0.x)), _wgslsmith_div_vec2_u32(reverseBits(~vec2<u32>(6862u, var_1.x)), firstTrailingBit(countOneBits(vec2<u32>(var_1.x, 10758u)))));
    global0 = array<Struct_1, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x, u_input.a.xw, 1i, ~vec3<i32>(0i, abs(u_input.a.x), -78469i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(round(-616f)), _wgslsmith_f_op_f32(func_1()), 1476f)))));
}

