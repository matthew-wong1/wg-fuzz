struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: bool,
    d: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 12>;

var<private> global1: array<Struct_1, 1>;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec4<u32> {
    let var_0 = global0[_wgslsmith_index_u32(7610u, 12u)];
    global1 = array<Struct_1, 1>();
    global0 = array<Struct_1, 12>();
    global0 = array<Struct_1, 12>();
    let var_1 = _wgslsmith_add_u32(_wgslsmith_sub_u32(4294967295u, 0u) | countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.b.x, 0u), _wgslsmith_mult_vec2_u32(var_0.b.zy, vec2<u32>(68862u, 4294967295u)))), (_wgslsmith_div_u32(max(22885u, var_0.b.x), ~1u) ^ 62280u) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(0u & var_0.b.x, var_0.b.x), firstTrailingBit(_wgslsmith_clamp_vec2_u32(var_0.b.zz, var_0.b.zy, var_0.b.zx))) % 32u));
    return _wgslsmith_mod_vec4_u32(vec4<u32>(var_1, _wgslsmith_mult_u32(0u, ~20712u), min(~var_1, ~4294967295u) ^ _wgslsmith_dot_vec3_u32(var_0.b >> (var_0.b % vec3<u32>(32u)), min(vec3<u32>(var_0.b.x, var_0.b.x, 5871u), vec3<u32>(83900u, var_0.b.x, var_0.b.x))), var_1), ~(~vec4<u32>(var_1, 9555u << (var_0.b.x % 32u), abs(0u), ~0u)));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec2<u32>) -> Struct_1 {
    let var_0 = vec3<i32>(u_input.a.x, u_input.a.x, i32(-1i) * -1i);
    var var_1 = countOneBits(vec4<u32>(4294967295u, _wgslsmith_sub_u32(abs(arg_1.x), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.x, arg_1.x, 23472u), vec3<u32>(0u, arg_1.x, 0u))), ~1u, _wgslsmith_mod_u32(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.x, arg_1.x, 4294967295u), vec3<u32>(arg_1.x, 185u, 47834u)))) & ~vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.x, 27999u, arg_1.x), vec3<u32>(56765u, 19110u, 26317u)), min(1u, arg_1.x), reverseBits(arg_1.x), min(arg_1.x, arg_1.x)));
    var_1 = vec4<u32>(var_1.x, abs(0u), ~_wgslsmith_clamp_u32(min(24764u, 16660u), arg_1.x, ~var_1.x), abs(max(35678u, arg_1.x) >> (_wgslsmith_mod_u32(4294967295u, arg_1.x) % 32u))) << (_wgslsmith_add_vec4_u32(~(vec4<u32>(arg_1.x, arg_1.x, 30806u, var_1.x) & vec4<u32>(arg_1.x, 0u, 1u, 0u)) ^ func_3(), _wgslsmith_div_vec4_u32(min(vec4<u32>(arg_1.x, 30132u, 63105u, 0u), ~vec4<u32>(97684u, 1u, 21329u, 1u)), ~vec4<u32>(var_1.x, var_1.x, var_1.x, 0u) ^ vec4<u32>(20857u, 1u, arg_1.x, var_1.x))) % vec4<u32>(32u));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x));
    var var_3 = vec4<bool>(true, ~(~4294967295u) != _wgslsmith_sub_u32(12202u, ~select(var_1.x, 1u, false)), true, (true || (22917i <= _wgslsmith_div_i32(-1394i, u_input.a.x))) && true);
    return Struct_1(true, ~(~var_1.yzx), _wgslsmith_f_op_f32(-arg_0.x) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2 * arg_0.x))), true);
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: bool) -> bool {
    global1 = array<Struct_1, 1>();
    global1 = array<Struct_1, 1>();
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, -267f)))))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, -1534f)) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_0, arg_0), vec2<f32>(1618f, arg_0)))))), vec2<f32>(-559f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -283f), arg_0)))));
    let var_1 = reverseBits(-(~u_input.a.yx));
    var var_2 = arg_1;
    return true == (_wgslsmith_div_u32(_wgslsmith_mult_u32(abs(25209u), _wgslsmith_dot_vec4_u32(vec4<u32>(17393u, arg_1.b.x, arg_1.b.x, var_2.b.x), vec4<u32>(arg_1.b.x, 1u, var_2.b.x, 17562u))), 4294967295u) > 0u);
}

fn func_1() -> u32 {
    var var_0 = global1[_wgslsmith_index_u32(23950u, 1u)];
    var var_1 = Struct_1(true, _wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(var_0.b, firstLeadingBit(max(vec3<u32>(1u, var_0.b.x, var_0.b.x), var_0.b))), var_0.b & var_0.b), false, var_0.a | func_4(_wgslsmith_f_op_f32(-479f + _wgslsmith_f_op_f32(f32(-1f) * -116f)), func_2(_wgslsmith_div_vec3_f32(vec3<f32>(-536f, -1000f, 297f), vec3<f32>(214f, -1000f, -301f)), vec2<u32>(var_0.b.x, var_0.b.x)), !any(vec3<bool>(false, var_0.a, true))));
    var var_2 = ~u_input.a.x;
    var var_3 = func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1048f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(194f, -1424f)))), -556f) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(349f, 1258f, -1598f), vec3<f32>(-307f, 694f, 844f)))) + vec3<f32>(_wgslsmith_f_op_f32(564f * 1000f), -741f, _wgslsmith_f_op_f32(f32(-1f) * -1128f)))), ~(vec2<u32>(_wgslsmith_mult_u32(1u, 4294967295u), ~var_0.b.x) << (firstLeadingBit(func_3().yz) % vec2<u32>(32u))));
    let var_4 = abs(var_1.b.x);
    return ~(~(~(~1u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 12>();
    global1 = array<Struct_1, 1>();
    global1 = array<Struct_1, 1>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(round(-475f)))), _wgslsmith_f_op_f32(f32(-1f) * -1556f)) * _wgslsmith_f_op_f32(-1f));
    global1 = array<Struct_1, 1>();
    var var_1 = ~vec4<u32>(103700u, ~(~177262u >> (func_1() % 32u)), 1u, ~9740u);
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(~1u, countOneBits(_wgslsmith_div_u32(var_1.x, 29990u)), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, var_1.x), _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, var_1.x), vec2<u32>(46373u, 4294967295u)))), vec3<u32>(0u, func_1(), abs(~1u))), select(var_1.wyx, vec3<u32>(_wgslsmith_clamp_u32(func_2(vec3<f32>(386f, -1201f, var_0), vec2<u32>(var_1.x, var_1.x)).b.x, firstLeadingBit(var_1.x), func_3().x), ~var_1.x << (2053u % 32u), (var_1.x & 4294967295u) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.x, var_1.x, var_1.x), vec3<u32>(var_1.x, 20316u, var_1.x))), select(vec3<bool>(true, true, func_4(-1390f, Struct_1(false, var_1.xyy, false, false), true)), !select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false)), vec3<bool>(true, func_4(-979f, global0[_wgslsmith_index_u32(1942u, 12u)], false), any(vec2<bool>(true, false)))))), 12u)];
    var var_3 = !select(vec3<bool>(true, true, true), vec3<bool>(true, !(var_2.c & var_2.a), var_2.d), vec3<bool>(true, true, true));
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, u_input.a, var_2.b.x);
}

