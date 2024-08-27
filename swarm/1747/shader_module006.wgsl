struct Struct_1 {
    a: vec2<bool>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: i32,
    d: Struct_1,
    e: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: u32,
    d: vec2<bool>,
    e: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
    c: u32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<Struct_3, 6>;

var<private> global2: vec2<i32>;

var<private> global3: Struct_2 = Struct_2(Struct_1(vec2<bool>(true, false), vec2<i32>(0i, 293i)), 2147483647i, 1i, Struct_1(vec2<bool>(true, false), vec2<i32>(0i, 2147483647i)), vec3<u32>(31996u, 1u, 33850u));

var<private> global4: array<Struct_1, 6>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: bool) -> u32 {
    var var_0 = u_input.d;
    var var_1 = global3.e.xx >> (~vec2<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(u_input.c.xx, vec2<u32>(global3.e.x, 42518u), vec2<u32>(58390u, global3.e.x)), ~global3.e.zz), global3.e.x & 0u) % vec2<u32>(32u));
    var var_2 = global2.x;
    var var_3 = -countOneBits(_wgslsmith_add_i32(-(u_input.b.x ^ global2.x), -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e.x, -32532i, global3.b, global2.x), vec4<i32>(global2.x, global2.x, u_input.e.x, 1i))));
    global4 = array<Struct_1, 6>();
    return _wgslsmith_add_u32(select(~1u, ~u_input.c.x, !global3.d.a.x || arg_0), abs(1u));
}

fn func_2(arg_0: Struct_2) -> vec2<u32> {
    var var_0 = u_input.a;
    let var_1 = vec2<i32>(global2.x, _wgslsmith_mod_i32(~1i, global3.c));
    var var_2 = global3.a;
    let var_3 = -1i;
    let var_4 = select(vec2<bool>(_wgslsmith_dot_vec3_u32(~vec3<u32>(10202u, 40891u, u_input.a.x), global3.e << (vec3<u32>(0u, var_0.x, 4294967295u) % vec3<u32>(32u))) <= func_3(any(vec2<bool>(arg_0.d.a.x, false))), global3.a.a.x), global3.d.a, any(vec4<bool>(any(select(vec4<bool>(arg_0.a.a.x, arg_0.a.a.x, global3.d.a.x, false), vec4<bool>(var_2.a.x, arg_0.a.a.x, global3.d.a.x, false), vec4<bool>(false, true, global3.a.a.x, var_2.a.x))), !(var_2.a.x || true), true, global3.d.a.x)));
    return _wgslsmith_mult_vec2_u32(max(~(~vec2<u32>(4294967295u, var_0.x)), min(global3.e.yz, vec2<u32>(17743u, arg_0.e.x))), ~(vec2<u32>(var_0.x, 7193u) >> (vec2<u32>(44643u, 1u) % vec2<u32>(32u))) << (u_input.a.wy % vec2<u32>(32u)));
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_1) -> vec2<i32> {
    let var_0 = vec2<u32>(global3.e.x, 8693u) >> (~(select(vec2<u32>(29780u, 4018u), _wgslsmith_sub_vec2_u32(u_input.c.zz, vec2<u32>(u_input.c.x, 1u)), !global3.a.a) ^ ~func_2(Struct_2(Struct_1(vec2<bool>(false, global3.a.a.x), arg_1.b), global3.c, global2.x, Struct_1(vec2<bool>(false, arg_1.a.x), u_input.e.zx), vec3<u32>(4294967295u, global3.e.x, global3.e.x)))) % vec2<u32>(32u));
    let var_1 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(2298f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-409f, 1658f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -644f)), 913f)), 1581f), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1103f, _wgslsmith_f_op_f32(-1616f - 1075f), _wgslsmith_f_op_f32(step(264f, -1097f)), _wgslsmith_f_op_f32(abs(-501f)))))), vec4<bool>(true, true, any(!(!vec3<bool>(arg_0.x, false, true))), true)));
    let var_2 = _wgslsmith_div_i32(~_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i & u_input.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(18662i, 2147483647i, u_input.b.x), vec3<i32>(6159i, global3.a.b.x, global3.d.b.x)), 1i, _wgslsmith_dot_vec3_i32(u_input.e, vec3<i32>(global3.b, arg_1.b.x, global2.x))), abs(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b.x, u_input.e.x, 60884i, 8627i), vec4<i32>(global2.x, 54627i, u_input.b.x, arg_1.b.x)))), -2147483647i);
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 539f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.xw - vec2<f32>(var_1.x, var_1.x))) * var_1.yw)) * vec2<f32>(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - var_1.x))));
    global1 = array<Struct_3, 6>();
    return u_input.e.yz;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = Struct_2(global3.a, global3.d.b.x, u_input.e.x << (~22244u % 32u), Struct_1(global3.a.a, func_1(global3.d.a, Struct_1(select(vec2<bool>(false, false), global3.a.a, global3.d.a), global3.d.b))), global3.e);
    let var_0 = u_input.e.x;
    global3 = Struct_2(Struct_1(select(select(select(vec2<bool>(true, false), vec2<bool>(global3.d.a.x, true), vec2<bool>(false, global3.a.a.x)), global3.d.a, !global3.a.a), select(global3.d.a, !global3.d.a, vec2<bool>(false, true)), !(global3.a.a.x | global3.a.a.x)), u_input.e.yx >> (vec2<u32>(u_input.d, _wgslsmith_dot_vec4_u32(u_input.a, u_input.a)) % vec2<u32>(32u))), _wgslsmith_mult_i32(_wgslsmith_clamp_i32(countOneBits(-2147483647i), 1i, global3.a.b.x), var_0), min(1i, 1i), Struct_1(vec2<bool>(false && any(vec2<bool>(global3.d.a.x, true)), false), u_input.e.yy), _wgslsmith_sub_vec3_u32(~vec3<u32>(~31025u, global3.e.x, func_3(global3.a.a.x)), max(vec3<u32>(~1u, _wgslsmith_clamp_u32(4294967295u, 57044u, u_input.c.x), u_input.d << (7565u % 32u)), firstTrailingBit(max(vec3<u32>(4294967295u, global3.e.x, 4294967295u), vec3<u32>(u_input.d, 10126u, global3.e.x))))));
    global4 = array<Struct_1, 6>();
    global2 = global3.a.b ^ vec2<i32>(var_0, -(~1i));
    let var_1 = -2147483647i;
    let var_2 = Struct_1(!select(global3.a.a, vec2<bool>(true, true), select(!global3.d.a, global3.a.a, vec2<bool>(global3.d.a.x, false))), u_input.e.zx);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-418f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1362f, 1751f))))), ~u_input.e, ~abs(u_input.d), vec2<i32>(-6252i, var_1));
}

