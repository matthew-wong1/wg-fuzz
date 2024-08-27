struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: u32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 11518i;

var<private> global1: u32 = 25696u;

var<private> global2: array<i32, 22>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2() -> f32 {
    global1 = u_input.a.x;
    let var_0 = Struct_1(u_input.a.x);
    var var_1 = var_0;
    global1 = ~1u | _wgslsmith_clamp_u32(min(~countOneBits(1u), (u_input.a.x ^ var_0.a) ^ ~4294967295u), 9732u, 4294967295u);
    var var_2 = Struct_1(4294967295u);
    return -1401f;
}

fn func_3(arg_0: i32, arg_1: vec3<i32>, arg_2: vec3<bool>, arg_3: u32) -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -290f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(367f, 407f) - vec2<f32>(-1000f, -864f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-341f, 1000f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(285f, -141f)) + vec2<f32>(400f, 388f)))) * vec2<f32>(1f, 1f)));
    let var_1 = select(vec3<bool>(false, _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(var_0.x - var_0.x)) > _wgslsmith_f_op_f32(-var_0.x), true), arg_2, select(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 40793u, 99628u), vec3<u32>(u_input.c.x, 3565u, arg_3)), vec3<u32>(4294967295u, 36761u, 30247u)) > arg_3, select(_wgslsmith_dot_vec2_i32(u_input.b.xy, vec2<i32>(arg_1.x, -1i)) >= -42425i, !select(true, false, true), arg_2.x), ~select(u_input.b.x, 27690i, true) > _wgslsmith_mod_i32(global2[_wgslsmith_index_u32(arg_3, 22u)], u_input.d)));
    global0 = global2[_wgslsmith_index_u32(~(~0u), 22u)];
    global2 = array<i32, 22>();
    let var_2 = u_input.d;
    return -369f;
}

fn func_4(arg_0: f32, arg_1: vec2<f32>) -> vec2<f32> {
    let var_0 = (1u << (~max(68085u, max(643u, u_input.a.x)) % 32u)) > 1u;
    global2 = array<i32, 22>();
    let var_1 = Struct_1(48089u);
    global0 = _wgslsmith_mod_i32(global2[_wgslsmith_index_u32(~1u, 22u)], -5332i);
    var var_2 = _wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_add_u32(~(~var_1.a), ~_wgslsmith_clamp_u32(u_input.c.x, 86341u, 4294967295u)), 4294967295u), ~(reverseBits(abs(vec2<u32>(u_input.c.x, 52208u))) & u_input.c));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(arg_1)), arg_1), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-655f, arg_1.x) - arg_1), _wgslsmith_f_op_vec2_f32(vec2<f32>(-364f, arg_0) * arg_1))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1000f, -609f)))) + vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(508f - arg_0) * arg_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-821f)) - _wgslsmith_f_op_f32(select(arg_0, arg_1.x, true))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(arg_0)))))));
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: bool, arg_3: Struct_1) -> Struct_1 {
    let var_0 = arg_3;
    var var_1 = _wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1984f)) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1723f - -1000f), _wgslsmith_f_op_f32(func_2())) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(global2[_wgslsmith_index_u32(u_input.a.x, 22u)], vec3<i32>(global2[_wgslsmith_index_u32(4294967295u, 22u)], 8074i, u_input.d), vec3<bool>(false, arg_0, arg_2), var_0.a)))))), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1310f * -138f) - -1019f), -613f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-171f, 590f))) * _wgslsmith_f_op_f32(-775f * _wgslsmith_f_op_f32(ceil(-457f)))))));
    let var_2 = Struct_1(~firstLeadingBit(min(_wgslsmith_dot_vec2_u32(u_input.a, u_input.c), ~38936u)));
    let var_3 = arg_3;
    let var_4 = Struct_1(75456u);
    return Struct_1(~var_4.a);
}

fn func_5(arg_0: f32, arg_1: Struct_1) -> i32 {
    var var_0 = ~4294967295u;
    let var_1 = arg_1;
    let var_2 = func_1(false, var_1.a, any(vec4<bool>(true, !all(vec4<bool>(true, false, true, false)), true, true)), var_1);
    global1 = _wgslsmith_dot_vec2_u32(u_input.a, u_input.c);
    global1 = 21522u;
    return ~firstLeadingBit(_wgslsmith_add_i32(select(u_input.d, global2[_wgslsmith_index_u32(1u, 22u)], false), select(2147483647i, 1i, false)) & 5819i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~u_input.b.x >= 1i;
    global0 = func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-2251f, -1019f)))), func_1(var_0, 70914u, any(vec3<bool>(select(var_0, true, var_0), var_0 | false, !var_0)), Struct_1(u_input.c.x & ~u_input.a.x)));
    var var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1345f + -428f)))))));
    var var_2 = !select(select(!select(vec2<bool>(var_0, var_0), vec2<bool>(var_0, true), vec2<bool>(var_0, var_0)), select(vec2<bool>(true, var_0), !vec2<bool>(var_0, var_0), !vec2<bool>(var_0, false)), select(!vec2<bool>(var_0, true), select(vec2<bool>(var_0, var_0), vec2<bool>(var_0, true), var_0), vec2<bool>(var_0, false))), !(!vec2<bool>(true, var_0)), !vec2<bool>(all(vec3<bool>(var_0, true, var_0)), any(vec4<bool>(var_0, var_0, var_0, var_0))));
    let var_3 = func_1(false, 0u, all(vec3<bool>(var_0, true, select(false, false, true))), Struct_1(~(~(u_input.a.x ^ u_input.c.x))));
    global2 = array<i32, 22>();
    let var_4 = firstTrailingBit(vec3<u32>(~var_3.a, var_3.a, ~1u) >> (_wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 18446u, var_3.a) << (vec3<u32>(4294967295u, 1u, u_input.a.x) % vec3<u32>(32u)), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, u_input.c.x, 4955u), vec3<u32>(1u, var_3.a, 49942u))), (vec3<u32>(1u, var_3.a, u_input.a.x) << (vec3<u32>(91110u, 27763u, var_3.a) % vec3<u32>(32u))) << (~vec3<u32>(var_3.a, var_3.a, var_3.a) % vec3<u32>(32u))) % vec3<u32>(32u)));
    let var_5 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(global2[_wgslsmith_index_u32(48426u, 22u)], _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1616f, -248f, -461f, -246f)) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1701f, -433f, -311f, 608f)))) - vec4<f32>(_wgslsmith_div_f32(1510f, -719f), _wgslsmith_f_op_f32(f32(-1f) * -834f), _wgslsmith_f_op_f32(129f * 1128f), 698f)))), u_input.c.x, -countOneBits(-countOneBits(vec4<i32>(-50341i, 1i, -2147483647i, 0i))));
}

