struct Struct_1 {
    a: bool,
    b: f32,
    c: vec4<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<Struct_1, 8>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: Struct_2) -> u32 {
    let var_0 = Struct_1(true, arg_1.b.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(arg_1.c.c)), _wgslsmith_f_op_vec4_f32(-arg_1.c.c))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_1.b.b, arg_1.b.c.x, 755f, arg_1.b.b))) - _wgslsmith_f_op_vec4_f32(-arg_1.c.c)))));
    global1 = array<Struct_1, 8>();
    let var_1 = _wgslsmith_sub_i32(38860i, arg_1.a.x);
    global0 = select(vec3<bool>(all(vec3<bool>(true, false, true)) & !var_0.a, arg_1.b.a, var_0.a || global0.x), !(!(!vec3<bool>(true, true, var_0.a))), all(select(!select(vec2<bool>(arg_1.c.a, arg_1.b.a), vec2<bool>(true, false), false), !(!global0.zz), var_0.a)));
    var var_2 = _wgslsmith_sub_u32(arg_0, 33240u);
    return (_wgslsmith_mult_u32(0u, 59552u) & select(~reverseBits(arg_0), _wgslsmith_mult_u32(_wgslsmith_mod_u32(arg_0, 0u), arg_0 | 4294967295u), !(!global0.x))) >> (abs(~(min(arg_0, 0u) ^ ~u_input.c)) % 32u);
}

fn func_2(arg_0: vec4<u32>, arg_1: vec2<u32>, arg_2: f32) -> Struct_3 {
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u ^ ~func_3(arg_0.x, Struct_2(vec3<i32>(u_input.b, -22409i, -2147483647i), global1[_wgslsmith_index_u32(arg_0.x, 8u)], global1[_wgslsmith_index_u32(4294967295u, 8u)])), arg_1.x) >> (arg_1.x % 32u), 8u)];
    global0 = !(!(!(!select(vec3<bool>(true, true, false), vec3<bool>(var_0.a, var_0.a, global0.x), vec3<bool>(global0.x, var_0.a, global0.x)))));
    return Struct_3(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.c.yzw + var_0.c.yzx), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.b, 2123f, var_0.b), var_0.c.yyz), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1401f, -1957f, arg_2))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b, var_0.b, arg_2) + var_0.c.yxx)))))), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(arg_0, ~min(arg_0, arg_0)), 8u)]);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1) -> u32 {
    var var_0 = ~vec2<i32>(~(_wgslsmith_mod_i32(u_input.b, u_input.b) >> (5686u % 32u)), u_input.b);
    let var_1 = _wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.c, abs(u_input.a), 17743u), firstLeadingBit(~vec3<u32>(81801u, 1u, u_input.c)) | reverseBits(vec3<u32>(4294967295u, u_input.c, u_input.a))) << (~firstTrailingBit(select(vec3<u32>(u_input.c, 4294967295u, u_input.c), vec3<u32>(u_input.c, 0u, 38655u), arg_0.b.a) | vec3<u32>(91585u, 378u, u_input.a)) % vec3<u32>(32u));
    let var_2 = firstLeadingBit(var_0.x);
    var var_3 = 0u;
    var_3 = _wgslsmith_mod_u32(51619u, 24055u);
    return u_input.a;
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_2) -> f32 {
    let var_0 = func_2(_wgslsmith_mult_vec4_u32(select(~vec4<u32>(u_input.a, 1u, 4294967295u, 1u) | max(vec4<u32>(u_input.a, u_input.c, 1u, 37787u), vec4<u32>(37876u, 58530u, 21288u, u_input.c)), ~(~vec4<u32>(u_input.c, u_input.a, 24366u, 0u)), vec4<bool>(true, func_2(vec4<u32>(0u, u_input.a, u_input.a, 4294967295u), vec2<u32>(4294967295u, u_input.c), -625f).b.a, true, !arg_1.c.a)), ~(~countOneBits(vec4<u32>(1u, 4294967295u, u_input.c, 1u)))), min(firstTrailingBit(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, u_input.c) | vec2<u32>(u_input.a, 70022u), ~vec2<u32>(1u, 33520u))), _wgslsmith_sub_vec2_u32(~(~vec2<u32>(68270u, 2705u)), vec2<u32>(u_input.c, firstTrailingBit(15141u)))), arg_1.b.c.x);
    var var_1 = arg_1.b;
    var_1 = func_2(abs(vec4<u32>(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(u_input.c, 1u, u_input.a, u_input.a)), vec4<u32>(u_input.c, u_input.c, 7243u, 15506u) & vec4<u32>(u_input.a, 23379u, 4294967295u, 4294967295u)), 0u, firstTrailingBit(~u_input.c), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 0u), vec2<u32>(1u, 0u)) & reverseBits(0u))), abs(~(abs(vec2<u32>(u_input.a, 63875u)) & (vec2<u32>(0u, u_input.a) | vec2<u32>(1u, 0u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1880f) * _wgslsmith_f_op_f32(max(arg_1.c.b, _wgslsmith_div_f32(var_0.a.x, var_1.c.x)))))).b;
    global0 = !arg_0;
    var_1 = func_2(firstLeadingBit(countOneBits(~(~vec4<u32>(64315u, 0u, 1u, u_input.a)))), ~_wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c, 0u), vec2<u32>(72289u, u_input.a)), vec2<u32>(firstLeadingBit(u_input.a), 1u)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c.x * _wgslsmith_f_op_f32(trunc(249f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(865f + _wgslsmith_f_op_f32(floor(-416f))) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.b, var_0.b.b) - _wgslsmith_f_op_f32(sign(-271f)))), global0.x))).b;
    return var_0.b.b;
}

fn func_1(arg_0: bool) -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(314f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1306f * _wgslsmith_f_op_f32(f32(-1f) * -939f))), _wgslsmith_f_op_f32(1676f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -622f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-1124f, 691f))))));
    let var_1 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.x, _wgslsmith_f_op_f32(ceil(var_0.x)), 397f), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-560f, var_0.x, var_0.x) * var_0.xzx)))))));
    return _wgslsmith_f_op_f32(func_5(vec3<bool>(arg_0, false, false), Struct_2(abs(~firstLeadingBit(vec3<i32>(-13757i, -2776i, 4313i))), global1[_wgslsmith_index_u32(~(~u_input.c), 8u)], global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(func_4(func_2(vec4<u32>(u_input.c, 0u, 66080u, u_input.c), vec2<u32>(70532u, 57220u), -508f), func_2(vec4<u32>(36198u, u_input.c, 27939u, u_input.c), vec2<u32>(u_input.c, 31500u), var_1.x).b), ~u_input.c), 8u)])));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec3<bool>(!(global0.x || true), global0.x, true);
    global1 = array<Struct_1, 8>();
    global1 = array<Struct_1, 8>();
    global0 = vec3<bool>(!any(!vec2<bool>(global0.x, false)), all(!global0.zx), select(~u_input.c, 1u, global0.x) > 1u);
    var var_0 = _wgslsmith_f_op_f32(func_1(false));
    var var_1 = !(u_input.b == ~22453i);
    let var_2 = func_2(reverseBits(vec4<u32>(u_input.c, _wgslsmith_mod_u32(u_input.c, _wgslsmith_mod_u32(0u, u_input.a)), func_3(2150u, Struct_2(vec3<i32>(-39399i, -2147483647i, u_input.b), global1[_wgslsmith_index_u32(u_input.c, 8u)], global1[_wgslsmith_index_u32(u_input.a, 8u)])), 4294967295u)), reverseBits(_wgslsmith_div_vec2_u32(firstTrailingBit(~vec2<u32>(u_input.c, u_input.c)), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, 1u), vec2<u32>(0u, 71074u), vec2<u32>(26569u, u_input.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-370f))) - _wgslsmith_f_op_f32(-557f * _wgslsmith_f_op_f32(f32(-1f) * -763f))))).b;
    var_1 = var_2.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_2.b, _wgslsmith_f_op_f32(-720f + 451f), !(!global0.x))), 694f), var_2.c, ~(6371u << (max(48446u, ~u_input.c) % 32u)));
}

