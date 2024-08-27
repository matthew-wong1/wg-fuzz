struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: i32,
    d: u32,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<Struct_3, 21> = array<Struct_3, 21>(Struct_3(1u, 204f, 19591i, 40342u, true), Struct_3(4294967295u, 620f, 2147483647i, 4294967295u, false), Struct_3(18250u, -314f, 2147483647i, 4294967295u, true), Struct_3(4294967295u, -159f, 42818i, 85971u, false), Struct_3(4294967295u, -182f, -4797i, 1u, true), Struct_3(4294967295u, -433f, 1i, 42276u, false), Struct_3(2785u, -742f, -33163i, 28001u, true), Struct_3(40273u, 437f, -4822i, 15236u, false), Struct_3(0u, 303f, 2147483647i, 1238u, true), Struct_3(4294967295u, 289f, 52580i, 4294967295u, true), Struct_3(47409u, -2315f, -526i, 1u, false), Struct_3(4294967295u, -1435f, 2147483647i, 4294967295u, true), Struct_3(4294967295u, -314f, -54272i, 55659u, true), Struct_3(13562u, -829f, 23695i, 39760u, false), Struct_3(93198u, -1205f, -49702i, 4294967295u, false), Struct_3(4294967295u, -690f, 71i, 25285u, false), Struct_3(72910u, -1000f, 2147483647i, 0u, false), Struct_3(4950u, 922f, 0i, 0u, true), Struct_3(1u, -1672f, 13975i, 1u, true), Struct_3(26027u, 350f, i32(-2147483648), 21379u, false), Struct_3(70001u, -1161f, 1i, 37172u, false));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<i32>) -> u32 {
    global1 = array<Struct_3, 21>();
    let var_0 = ~u_input.a;
    let var_1 = Struct_3(~28086u, 639f, min(max((arg_1.x << (arg_0.b.x % 32u)) | var_0, var_0), -1i), 23826u, all(vec4<bool>(true, true, true, true)) != true);
    global0 = ~arg_0.b.x;
    let var_2 = Struct_2(19793u, arg_0);
    return 47437u;
}

fn func_3(arg_0: f32) -> vec3<bool> {
    let var_0 = false;
    var var_1 = select(select(!(!select(vec3<bool>(var_0, var_0, true), vec3<bool>(false, true, true), var_0)), !(!vec3<bool>(false, var_0, var_0)), vec3<bool>(var_0 & (-102f <= arg_0), var_0, false)), select(!vec3<bool>(true, var_0, false), select(select(!vec3<bool>(var_0, false, false), !vec3<bool>(false, var_0, true), var_0), vec3<bool>(false, true, true), select(vec3<bool>(var_0, false, true), select(vec3<bool>(var_0, var_0, var_0), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), !vec3<bool>(var_0, var_0, true))), true), var_0);
    var var_2 = vec3<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-1466f, arg_0)))) + -1030f) + _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_div_f32(-154f, 1000f));
    var_2 = vec3<f32>(var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(1035f)))) - arg_0)), _wgslsmith_f_op_f32(exp2(arg_0)));
    var var_3 = !var_0;
    return vec3<bool>(all(!select(select(vec3<bool>(var_1.x, var_0, false), vec3<bool>(false, var_1.x, false), var_1.x), vec3<bool>(true, true, true), select(vec3<bool>(false, var_0, var_0), vec3<bool>(var_0, true, var_1.x), var_0))), (var_0 || var_1.x) || !(firstTrailingBit(0u) >= 14175u), var_0);
}

fn func_4(arg_0: vec3<f32>, arg_1: vec4<i32>, arg_2: vec3<bool>) -> u32 {
    var var_0 = Struct_2(func_2(Struct_1(-997f, ~vec2<u32>(1u, 1u), arg_0.zy), vec3<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, 0i), arg_1.wy, vec2<i32>(0i, 22184i)), countOneBits(vec2<i32>(u_input.a, u_input.b))), max(23967i & arg_1.x, 1i), -(~u_input.a))), Struct_1(_wgslsmith_div_f32(-1046f, _wgslsmith_f_op_f32(floor(-1000f))), vec2<u32>(1u, 1u), arg_0.yy));
    let var_1 = Struct_3(_wgslsmith_mod_u32(countOneBits(_wgslsmith_mod_u32(_wgslsmith_mod_u32(var_0.a, 41605u), var_0.a)), var_0.a), 1038f, arg_1.x, _wgslsmith_div_u32(max(~_wgslsmith_mod_u32(var_0.a, var_0.b.b.x), ~(~var_0.b.b.x)), _wgslsmith_mult_u32(abs(~13092u), _wgslsmith_sub_u32(_wgslsmith_clamp_u32(var_0.a, 1u, var_0.a), abs(var_0.b.b.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(var_0.b.a))))) >= _wgslsmith_f_op_f32(sign(arg_0.x)));
    var var_2 = var_1;
    var var_3 = ~_wgslsmith_div_i32(~(_wgslsmith_add_i32(2147483647i, arg_1.x) << (_wgslsmith_dot_vec4_u32(vec4<u32>(12334u, 27116u, var_1.a, 4294967295u), vec4<u32>(var_1.a, var_1.a, 0u, 46243u)) % 32u)), _wgslsmith_mod_i32(1i, _wgslsmith_sub_i32(var_2.c, firstLeadingBit(-33040i))));
    return _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(~firstTrailingBit(min(vec3<u32>(var_0.a, var_0.b.b.x, 59545u), vec3<u32>(var_0.b.b.x, 1u, var_0.b.b.x))), _wgslsmith_clamp_vec3_u32(abs(_wgslsmith_mod_vec3_u32(vec3<u32>(var_1.d, var_0.a, 1u), vec3<u32>(var_2.d, 8584u, var_2.a))), ~vec3<u32>(var_1.a, var_1.d, 1u) | vec3<u32>(52919u, var_1.d, var_1.a), ~(~vec3<u32>(var_2.a, 34887u, var_0.a))), _wgslsmith_add_vec3_u32(vec3<u32>(~var_0.a, 0u, _wgslsmith_dot_vec3_u32(vec3<u32>(29614u, 61615u, 0u), vec3<u32>(59478u, var_1.d, 13992u))), firstLeadingBit(vec3<u32>(0u, var_1.d, 1u)))), ~(~(~(~vec3<u32>(1u, 1u, 4294967295u)))));
}

fn func_1() -> StorageBuffer {
    global1 = array<Struct_3, 21>();
    global0 = 47613u;
    global0 = (_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(21944u, 27874u, 2220u, 13348u), vec4<u32>(0u, 74862u, 0u, 6023u)), _wgslsmith_clamp_u32(~0u, select(0u, 4294967295u, false), 84459u)) << (~(func_2(Struct_1(178f, vec2<u32>(64376u, 4294967295u), vec2<f32>(-448f, -769f)), vec3<i32>(1i, -8094i, u_input.b)) ^ 4294967295u) % 32u)) ^ func_4(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-207f * -639f), _wgslsmith_f_op_f32(f32(-1f) * -1361f), -395f))), _wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(1i, u_input.a, 19920i, u_input.a), vec4<i32>(-2147483647i, u_input.a, 0i, 26462i)), -vec4<i32>(0i, u_input.a, -5860i, 2147483647i)) & (-vec4<i32>(6411i, 22334i, 2147483647i, u_input.a) ^ vec4<i32>(-18154i, u_input.b, 32705i, 1766i)), func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-352f + -1871f) - -340f)));
    global1 = array<Struct_3, 21>();
    global1 = array<Struct_3, 21>();
    return StorageBuffer(-5880i, ~select(~vec3<u32>(1u, 1u, 1u), vec3<u32>(~47690u, ~4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(1176u, 1u, 25956u), vec3<u32>(4294967295u, 1u, 16112u))), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 3598u, 10694u, 1577u), vec4<u32>(71380u, 1u, 4294967295u, 0u)) < 1u), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-566f * _wgslsmith_f_op_f32(f32(-1f) * -1054f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(393f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1000f, -605f, false)) - 1f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-175f - -1000f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~(~4294967295u);
    var var_0 = _wgslsmith_sub_vec3_i32(vec3<i32>(~(~(-2147483647i)), ~_wgslsmith_mod_i32(24056i, -1i), abs(-u_input.a)), vec3<i32>(-1i) * -_wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, u_input.b, u_input.a), vec3<i32>(u_input.a, 1i, -2147483647i))) ^ ~vec3<i32>(-1i, ~u_input.b, 2147483647i);
    let x = u_input.a;
    s_output = func_1();
}

