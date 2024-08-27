struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: vec2<bool>,
    d: i32,
    e: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(851f, 812f, 894f, -1606f);

var<private> global1: array<Struct_1, 19>;

var<private> global2: array<vec2<f32>, 13> = array<vec2<f32>, 13>(vec2<f32>(949f, -1407f), vec2<f32>(910f, -712f), vec2<f32>(-941f, -272f), vec2<f32>(518f, -1027f), vec2<f32>(-1000f, 1877f), vec2<f32>(833f, 328f), vec2<f32>(-1226f, -793f), vec2<f32>(356f, 1402f), vec2<f32>(1380f, 316f), vec2<f32>(1232f, -796f), vec2<f32>(932f, 247f), vec2<f32>(626f, -270f), vec2<f32>(-688f, -2728f));

var<private> global3: Struct_2;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec4<bool> {
    var var_0 = global3.a;
    var var_1 = global1[_wgslsmith_index_u32(reverseBits(abs(~max(~15362u, firstLeadingBit(72349u)))), 19u)];
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-201f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(step(-1000f, global0.x)), -418f)));
    global1 = array<Struct_1, 19>();
    var_0 = global1[_wgslsmith_index_u32(1u, 19u)];
    return vec4<bool>(any(!select(!vec4<bool>(false, true, var_0.b, false), select(vec4<bool>(var_0.c.x, true, false, var_0.b), vec4<bool>(var_0.c.x, global3.a.b, var_1.b, global3.a.c.x), false), !vec4<bool>(var_1.b, false, false, global3.b))), any(vec4<bool>(all(vec2<bool>(var_1.b, false)), !select(false, false, false), global3.b, var_0.c.x)), !(abs(u_input.b.x) <= 1u), true);
}

fn func_2(arg_0: vec2<u32>) -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(305f, global3.c), global0.x)))));
    global3 = Struct_2(Struct_1(~max(vec4<i32>(global3.a.e.x, global3.a.d, 0i, global3.a.d) | global3.a.a, global3.a.a), !(select(global3.a.c.x, global3.a.b, false) && false), !global3.a.c, select(_wgslsmith_div_i32(1i, global3.a.a.x), ~(~global3.a.e.x), !(false && global3.a.b)), global3.a.a.wz), global3.b, global3.c);
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -565f) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1049f, global3.c) * _wgslsmith_f_op_f32(sign(global0.x)))), _wgslsmith_f_op_f32(abs(global3.c))) - _wgslsmith_f_op_vec2_f32(select(global0.wx, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -705f), _wgslsmith_f_op_f32(select(-520f, _wgslsmith_f_op_f32(438f + -437f), any(vec3<bool>(global3.b, true, global3.a.b))))), any(select(func_3(), !vec4<bool>(true, global3.a.b, global3.a.b, false), global3.b || false)))));
    let var_2 = vec4<u32>(arg_0.x, arg_0.x, u_input.a.x, u_input.a.x);
    let var_3 = Struct_1(-global3.a.a, !all(!(!vec4<bool>(global3.a.b, global3.b, global3.a.b, global3.a.c.x))), func_3().yx, countOneBits(2147483647i | -global3.a.d), global3.a.a.yw);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(937f)) - _wgslsmith_f_op_f32(-global3.c)), -153f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * 611f)), _wgslsmith_f_op_f32(f32(-1f) * -964f))));
}

fn func_1(arg_0: vec4<f32>) -> vec4<u32> {
    var var_0 = u_input.b.yx;
    let var_1 = arg_0.yxx;
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_0 * arg_0) + arg_0);
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.x, var_2.x, global3.c, global0.x), arg_0) - var_2)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b.x, u_input.a.x), vec2<u32>(1u, u_input.b.x)))))));
    let var_3 = _wgslsmith_f_op_f32(step(557f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1407f, _wgslsmith_f_op_f32(-1000f - -140f)) - 161f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_1.x)) * var_1.x)), false))));
    return ~vec4<u32>(u_input.a.x, var_0.x, _wgslsmith_clamp_u32(u_input.b.x, _wgslsmith_dot_vec2_u32(max(vec2<u32>(u_input.a.x, 1u), vec2<u32>(0u, u_input.b.x)), vec2<u32>(u_input.b.x, u_input.a.x)), var_0.x), u_input.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 19>();
    var var_0 = _wgslsmith_add_vec4_u32(func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(2409f, global3.c, -740f, global0.x))) + vec4<f32>(-1265f, _wgslsmith_f_op_f32(475f * -904f), _wgslsmith_f_op_f32(2486f + 1019f), global0.x))), min(abs(vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, u_input.a.x) >> (~vec4<u32>(u_input.b.x, 40656u, 10633u, 53902u) % vec4<u32>(32u))), vec4<u32>(1u, 1u, u_input.b.x >> (~1u % 32u), _wgslsmith_add_u32(u_input.b.x, 14838u) << ((u_input.b.x << (u_input.a.x % 32u)) % 32u))));
    global2 = array<vec2<f32>, 13>();
    let var_1 = global3.a;
    let var_2 = ~vec2<i32>(-2147483647i, _wgslsmith_dot_vec4_i32(~select(vec4<i32>(2147483647i, -41218i, 33246i, var_1.a.x), var_1.a, global3.b), vec4<i32>(i32(-1i) * -21657i, var_1.d, countOneBits(global3.a.a.x), firstLeadingBit(299i))));
    let var_3 = Struct_2(global3.a, all(!func_3().zy) & !any(select(vec4<bool>(false, true, global3.a.c.x, global3.a.c.x), vec4<bool>(var_1.c.x, true, false, false), var_1.c.x)), -852f);
    global0 = vec4<f32>(473f, -1207f, var_3.c, -723f);
    let var_4 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-294f - 1918f))))))), select(~_wgslsmith_mult_u32(0u, 0u | u_input.b.x), 4294967295u, var_4.a.b), vec2<u32>(abs(firstLeadingBit(var_0.x)), var_0.x) & var_0.xw);
}

