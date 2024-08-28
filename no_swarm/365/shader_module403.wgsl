struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<f32>,
    d: bool,
    e: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec2<bool>,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: vec2<u32>,
}

struct Struct_5 {
    a: vec2<u32>,
    b: vec2<f32>,
    c: f32,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<u32>,
    d: u32,
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

var<private> global0: array<bool, 18> = array<bool, 18>(false, true, false, false, false, false, true, true, true, false, false, false, true, true, true, true, false, false);

var<private> global1: vec2<f32> = vec2<f32>(-175f, 1856f);

var<private> global2: array<Struct_1, 17>;

var<private> global3: array<i32, 11> = array<i32, 11>(0i, 2147483647i, 4122i, 16140i, 77113i, 2147483647i, 2147483647i, 1i, 0i, 1i, 50515i);

var<private> global4: array<Struct_2, 32>;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<bool>, arg_1: i32, arg_2: bool) -> u32 {
    global0 = array<bool, 18>();
    var var_0 = true;
    global1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(275f, 1813f))))))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-global1.x)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global1.x, -116f)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, global1.x) + vec2<f32>(705f, global1.x))) * vec2<f32>(-469f, _wgslsmith_f_op_f32(-global1.x)))), vec2<bool>(true, !select(global0[_wgslsmith_index_u32(u_input.c.x, 18u)], global0[_wgslsmith_index_u32(27257u, 18u)], arg_2) || arg_2)));
    return u_input.c.x;
}

fn func_2(arg_0: vec2<bool>) -> bool {
    let var_0 = vec3<u32>(func_3(select(vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.d, 18u)], true, global0[_wgslsmith_index_u32(u_input.c.x, 18u)]), vec4<bool>(false, global0[_wgslsmith_index_u32(6434u, 18u)], false, false), arg_0.x), u_input.a.x, !(arg_0.x || global0[_wgslsmith_index_u32(1u, 18u)])) >> ((~(~55956u) | _wgslsmith_sub_u32(u_input.c.x, 1u)) % 32u), u_input.d, 0u);
    let var_1 = global2[_wgslsmith_index_u32(u_input.d, 17u)];
    global0 = array<bool, 18>();
    global3 = array<i32, 11>();
    var var_2 = all(select(!select(!vec3<bool>(false, arg_0.x, arg_0.x), select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), false), true), select(vec3<bool>(false, -637f > var_1.a.x, true), vec3<bool>(select(global0[_wgslsmith_index_u32(63184u, 18u)], arg_0.x, global0[_wgslsmith_index_u32(4294967295u, 18u)]), true, true), vec3<bool>(var_1.b == u_input.a.x, arg_0.x, arg_0.x)), true));
    return global0[_wgslsmith_index_u32(39423u & u_input.d, 18u)];
}

fn func_1(arg_0: vec4<i32>, arg_1: u32) -> u32 {
    global0 = array<bool, 18>();
    let var_0 = vec4<bool>(global0[_wgslsmith_index_u32(47380u, 18u)], func_2(vec2<bool>(false || select(global0[_wgslsmith_index_u32(arg_1, 18u)], global0[_wgslsmith_index_u32(33880u, 18u)], true), !(!global0[_wgslsmith_index_u32(0u, 18u)]))), any(vec4<bool>(false, (45963u <= u_input.d) && true, true, global0[_wgslsmith_index_u32(~(~arg_1), 18u)])), !(!(!any(vec2<bool>(true, true)))));
    global4 = array<Struct_2, 32>();
    global4 = array<Struct_2, 32>();
    global0 = array<bool, 18>();
    return 5842u;
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: vec4<u32>) -> Struct_2 {
    var var_0 = true;
    let var_1 = global4[_wgslsmith_index_u32((~arg_2.x & arg_2.x) >> (arg_0 % 32u), 32u)];
    let var_2 = Struct_3(var_1.b, vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-518f * 299f), _wgslsmith_f_op_f32(sign(-1158f))))), -728f, var_1.c.x), !vec2<bool>(!select(global0[_wgslsmith_index_u32(77863u, 18u)], arg_1, global0[_wgslsmith_index_u32(var_1.b.c.x, 18u)]), true), Struct_2(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(max(-3371f, global1.x)), -269f, _wgslsmith_f_op_f32(global1.x * 447f)), _wgslsmith_dot_vec2_i32(-vec2<i32>(1i, u_input.b), abs(vec2<i32>(var_1.a.b, 49308i))), vec3<u32>(_wgslsmith_add_u32(var_1.b.c.x, arg_0), var_1.b.c.x, var_1.b.c.x)), var_1.a, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1570f, global1.x, -283f))), vec3<f32>(563f, global1.x, -1718f), !vec3<bool>(false, var_1.e, var_1.e))))), !(abs(-3988i) >= _wgslsmith_div_i32(u_input.a.x, -1i)), global0[_wgslsmith_index_u32(1u, 18u)]), Struct_1(var_1.a.a, -1i, _wgslsmith_mult_vec3_u32(var_1.a.c, _wgslsmith_div_vec3_u32(~var_1.b.c, arg_2.zwy ^ u_input.c.zzw))));
    var var_3 = var_2.c;
    global4 = array<Struct_2, 32>();
    return Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-var_2.e.a), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_1.a.a.x, 104f, global1.x), var_1.c))))), 32550i, ~firstLeadingBit(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 24012u, arg_2.x), vec3<u32>(24890u, 1u, 0u)))), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_1.c.x, global1.x, -201f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a.a.x, global1.x, global1.x))) * vec3<f32>(-1316f, _wgslsmith_f_op_f32(max(-596f, var_2.b.x)), var_1.c.x)), 1i, vec3<u32>(arg_0, ~82485u, ~arg_0)), vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.d.a.a.x)))), _wgslsmith_f_op_f32(var_2.d.a.a.x * var_2.d.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1.c.x * var_1.c.x), 327f)))), var_2.c.x, true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3[_wgslsmith_index_u32(u_input.d & _wgslsmith_add_u32(~reverseBits(11126u), u_input.d << (_wgslsmith_dot_vec2_u32(u_input.c.xx, vec2<u32>(u_input.c.x, u_input.c.x)) % 32u)), 11u)] << (_wgslsmith_clamp_u32(16146u, 1u << ((u_input.d << (_wgslsmith_dot_vec2_u32(u_input.c.ww, vec2<u32>(u_input.c.x, 37509u)) % 32u)) % 32u), select(4294967295u, 0u, !all(vec2<bool>(global0[_wgslsmith_index_u32(u_input.d, 18u)], global0[_wgslsmith_index_u32(0u, 18u)])))) % 32u);
    var var_1 = func_4(~(~u_input.d), any(!vec3<bool>(global0[_wgslsmith_index_u32(func_1(vec4<i32>(var_0, u_input.a.x, u_input.b, global3[_wgslsmith_index_u32(1u, 11u)]), u_input.d), 18u)], true, global0[_wgslsmith_index_u32(4294967295u, 18u)])), ~firstTrailingBit(vec4<u32>(34067u, 0u, u_input.c.x, 10956u) ^ firstTrailingBit(u_input.c)));
    var_1 = func_4(func_4(~abs(~1u), all(vec3<bool>(false, any(vec3<bool>(global0[_wgslsmith_index_u32(var_1.a.c.x, 18u)], global0[_wgslsmith_index_u32(u_input.c.x, 18u)], false)), func_4(0u, false, vec4<u32>(u_input.d, 4294967295u, u_input.d, u_input.c.x)).e)), ~u_input.c).b.c.x, global0[_wgslsmith_index_u32(~var_1.b.c.x, 18u)], _wgslsmith_mult_vec4_u32(~vec4<u32>(func_4(u_input.c.x, false, vec4<u32>(var_1.b.c.x, var_1.a.c.x, 0u, var_1.a.c.x)).a.c.x, ~var_1.b.c.x, ~var_1.b.c.x, ~u_input.d), vec4<u32>(0u, ~(~u_input.c.x), _wgslsmith_mod_u32(u_input.d, 70490u) >> (7848u % 32u), _wgslsmith_mod_u32(var_1.a.c.x, _wgslsmith_clamp_u32(1u, 1u, u_input.c.x)))));
    var var_2 = !(!select(vec4<bool>(false, all(vec4<bool>(var_1.e, var_1.e, var_1.e, false)), var_1.b.a.x <= -690f, global0[_wgslsmith_index_u32(u_input.c.x, 18u)] == false), select(vec4<bool>(true, false, var_1.e, global0[_wgslsmith_index_u32(var_1.a.c.x, 18u)]), !vec4<bool>(false, var_1.e, global0[_wgslsmith_index_u32(u_input.d, 18u)], global0[_wgslsmith_index_u32(var_1.b.c.x, 18u)]), select(vec4<bool>(var_1.d, var_1.d, var_1.e, true), vec4<bool>(true, false, var_1.d, global0[_wgslsmith_index_u32(u_input.c.x, 18u)]), vec4<bool>(true, var_1.d, var_1.e, true))), true || global0[_wgslsmith_index_u32(0u, 18u)]));
    var var_3 = false;
    var var_4 = Struct_3(func_4(_wgslsmith_div_u32(30181u, u_input.d), !all(!var_2.xy), ~_wgslsmith_div_vec4_u32(vec4<u32>(var_1.a.c.x, 4294967295u, 4294967295u, var_1.a.c.x), vec4<u32>(u_input.c.x, 76396u, 48222u, var_1.a.c.x))).a, var_1.a.a, vec2<bool>(any(select(select(vec3<bool>(true, true, true), vec3<bool>(var_2.x, false, false), true), !vec3<bool>(true, true, var_2.x), var_2.x)), !any(select(var_2.wzy, var_2.xzx, false))), global4[_wgslsmith_index_u32(var_1.a.c.x, 32u)], var_1.a);
    let var_5 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1266f)) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_1.a.a.x)) - var_4.d.a.a.x)))), -687f, 1377f, var_1.a.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_i32(vec4<i32>(~u_input.b, var_1.b.b, firstTrailingBit(~1911i), ~(-4054i)), ~_wgslsmith_mod_vec4_i32(u_input.a, -u_input.a)));
}

