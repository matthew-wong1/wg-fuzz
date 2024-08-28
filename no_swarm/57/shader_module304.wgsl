struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_1,
    d: vec2<bool>,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: i32,
    e: vec2<bool>,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
}

struct Struct_5 {
    a: bool,
    b: Struct_2,
    c: vec4<f32>,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<f32>,
    d: vec4<f32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(1u, 0i, vec4<u32>(4294967295u, 4294967295u, 0u, 0u), 2147483647i, vec2<bool>(true, false));

var<private> global1: vec4<bool>;

var<private> global2: array<vec3<i32>, 3> = array<vec3<i32>, 3>(vec3<i32>(2147483647i, 1837i, -5813i), vec3<i32>(-15361i, 1i, -16631i), vec3<i32>(26985i, 38716i, -37220i));

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: u32) -> i32 {
    let var_0 = true;
    var var_1 = !global0.e.x && true;
    let var_2 = all(vec3<bool>(all(select(global1.ww, global0.e, global0.e.x)) && global1.x, select(true, var_0, all(vec3<bool>(global1.x, true, true))) & (global0.c.x >= global0.a), !global0.e.x));
    global0 = Struct_3(27894u, global0.b, vec4<u32>(~arg_0, firstTrailingBit(88247u), 15691u, ~4294967295u), ~u_input.b.x, !(!vec2<bool>(var_0, true)));
    var var_3 = select((-1i << (countOneBits(~u_input.c.x) % 32u)) <= _wgslsmith_clamp_i32(u_input.b.x, ~_wgslsmith_add_i32(25574i, global0.d), u_input.b.x), global0.e.x, all(vec2<bool>(all(!global1.yyw), abs(arg_0) == ~0u)));
    return _wgslsmith_mult_i32(-min(global0.b, -u_input.a) >> ((global0.a << (_wgslsmith_div_u32(countOneBits(arg_0), 1u) % 32u)) % 32u), u_input.a);
}

fn func_4(arg_0: Struct_4, arg_1: f32, arg_2: i32) -> bool {
    var var_0 = true;
    var var_1 = true;
    let var_2 = arg_0.b.e.x;
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_div_f32(arg_1, arg_1), 444f))) - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1389f, arg_1) * vec2<f32>(824f, 410f)))))));
    var var_4 = !global1.wzy;
    return var_4.x;
}

fn func_2(arg_0: vec4<f32>) -> i32 {
    var var_0 = !vec4<bool>(global0.e.x, !(arg_0.x != arg_0.x), func_4(Struct_4(func_3(55464u), Struct_3(1u, -1i, global0.c, global0.d, global0.e)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(arg_0.x)), arg_0.x), _wgslsmith_dot_vec4_i32(max(vec4<i32>(u_input.b.x, global0.b, global0.d, global0.d), vec4<i32>(u_input.a, 0i, u_input.b.x, global0.d)), vec4<i32>(0i, u_input.b.x, -2147483647i, -3062i))), !(!(!global0.e.x)));
    let var_1 = _wgslsmith_f_op_vec3_f32(-arg_0.yzw);
    var var_2 = true;
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -208f);
    let var_4 = !(false || (global1.x && select(true, false, true))) && select(true, true, global1.x);
    return u_input.b.x;
}

fn func_5(arg_0: i32, arg_1: vec2<i32>, arg_2: u32) -> vec3<f32> {
    global2 = array<vec3<i32>, 3>();
    let var_0 = 513f;
    var var_1 = any(select(vec3<bool>(select(arg_1.x, global0.d, global1.x) == ~9142i, ~arg_2 < (0u << (global0.a % 32u)), true), global1.wzw, select(false, global1.x, !global1.x)));
    let var_2 = _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(min(u_input.c.x, 1u), 1u), ~(~52280u)) ^ _wgslsmith_add_vec2_u32(~u_input.c.yz, vec2<u32>(abs(global0.a), 68792u << (u_input.c.x % 32u))), ~_wgslsmith_add_vec2_u32(~vec2<u32>(arg_2, global0.a) ^ global0.c.zw, reverseBits(_wgslsmith_div_vec2_u32(u_input.c.xw, vec2<u32>(arg_2, arg_2)))));
    var var_3 = global1.yzw;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, 527f, -352f))))) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(258f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0)) * _wgslsmith_f_op_f32(trunc(var_0))) + _wgslsmith_f_op_f32(select(var_0, var_0, var_3.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0, -459f)))))));
}

fn func_1() -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_f32(sign(507f));
    global2 = array<vec3<i32>, 3>();
    var var_1 = ~1u;
    let var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0), var_0, all(global0.e)));
    var var_3 = global1.zwx;
    return _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2, var_2, -573f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, 773f, -1909f) - vec3<f32>(288f, -2058f, var_2)))) + _wgslsmith_f_op_vec3_f32(func_5(func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-265f, var_2, -570f, var_2))), _wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(u_input.b.yy, vec2<i32>(2147483647i, -11429i)), -vec2<i32>(u_input.a, global0.d)), abs(4294967295u))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1()));
    var var_2 = -1i;
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(var_1.x)), _wgslsmith_div_f32(var_1.x, var_1.x), -844f) - _wgslsmith_f_op_vec3_f32(func_5(u_input.a, -vec2<i32>(global0.b, u_input.a), 1534u)))));
    let var_3 = _wgslsmith_clamp_u32(~u_input.c.x, _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(~u_input.c, u_input.c), firstTrailingBit(_wgslsmith_sub_u32(1u, global0.c.x)), max(_wgslsmith_dot_vec2_u32(global0.c.ww, vec2<u32>(u_input.c.x, 75177u)), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 1u, 4294967295u), u_input.c.zww))), ~u_input.c.zzy >> (min(max(vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x), global0.c.xyw), vec3<u32>(4294967295u, u_input.c.x, 70461u)) % vec3<u32>(32u))), min(~_wgslsmith_dot_vec3_u32(global0.c.zzw, vec3<u32>(20951u, 52060u, 32535u) | vec3<u32>(global0.c.x, global0.a, 9403u)), 0u));
    var_0 = global1.x;
    var_1 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_1.x * var_1.x), var_1.x, _wgslsmith_f_op_f32(exp2(var_1.x))), vec3<f32>(_wgslsmith_f_op_f32(751f * _wgslsmith_f_op_vec3_f32(func_5(-global0.b, _wgslsmith_mult_vec2_i32(u_input.b.zz, u_input.b.yz), _wgslsmith_add_u32(var_3, 0u))).x), var_1.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1329f) + -837f)))));
    var var_4 = _wgslsmith_f_op_f32(-1351f - var_1.x);
    var_2 = _wgslsmith_dot_vec4_i32(vec4<i32>(reverseBits(u_input.a), -8258i, ~(-11793i), func_3(_wgslsmith_mult_u32(global0.c.x, 13198u))), ~(~vec4<i32>(func_2(vec4<f32>(-832f, 1000f, var_1.x, -2341f)), 0i, global0.d, _wgslsmith_dot_vec2_i32(u_input.b.yx, u_input.b.xy))));
    let x = u_input.a;
    s_output = StorageBuffer(~abs(var_3), var_1.x, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, var_1.x)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-var_1.yx), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-771f, 1280f))))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, 1287f, -2269f, 341f) - vec4<f32>(var_1.x, -1252f, 1969f, var_1.x))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.x, var_1.x, 524f, 2311f), vec4<f32>(-133f, var_1.x, var_1.x, var_1.x), vec4<bool>(global0.e.x, global0.e.x, global1.x, true))))))), vec4<i32>(i32(-1i) * -35560i, 0i, -22320i, 0i));
}

