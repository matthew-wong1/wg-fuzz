struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 17> = array<vec2<bool>, 17>(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false));

var<private> global1: array<vec4<u32>, 3>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2() -> Struct_1 {
    let var_0 = !all(vec3<bool>(select(false, true, true), any(vec3<bool>(true, true, true)), true));
    global0 = array<vec2<bool>, 17>();
    global0 = array<vec2<bool>, 17>();
    global1 = array<vec4<u32>, 3>();
    let var_1 = -1i;
    return Struct_1(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -968f), _wgslsmith_f_op_f32(trunc(-602f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(822f, -1000f)) - _wgslsmith_f_op_f32(min(2793f, -296f)))))), all(select(vec2<bool>(true, var_0), select(vec2<bool>(true, var_0), select(global0[_wgslsmith_index_u32(0u, 17u)], global0[_wgslsmith_index_u32(4294967295u, 17u)], vec2<bool>(var_0, var_0)), var_0 | var_0), var_0 & all(vec3<bool>(var_0, var_0, var_0)))), _wgslsmith_dot_vec2_u32(~u_input.c.zy, _wgslsmith_clamp_vec2_u32(~vec2<u32>(1u, u_input.c.x), ~u_input.c.zx, u_input.c.yy)) <= _wgslsmith_sub_u32(3744u, 1u));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: vec4<f32>) -> bool {
    var var_0 = vec3<bool>((arg_0.a.x && true) & true, !arg_0.c.b, !(~u_input.b.x > _wgslsmith_div_u32(firstLeadingBit(u_input.d.x), _wgslsmith_mod_u32(62640u, 4294967295u))));
    var var_1 = 8559i;
    var var_2 = !select(!vec4<bool>(true | arg_0.c.b, all(vec4<bool>(var_0.x, true, arg_0.a.x, var_0.x)), true, u_input.e >= u_input.c.x), select(!vec4<bool>(arg_0.a.x, false, arg_0.c.c, true), select(vec4<bool>(arg_0.a.x, true, true, var_0.x), vec4<bool>(true, true, var_0.x, arg_0.c.c), select(false, true, arg_0.a.x)), (46749i & arg_1.x) == -2147483647i), vec4<bool>(all(vec4<bool>(arg_0.a.x, false, var_0.x, false)), true, select(u_input.a.x, arg_1.x, false) < ~u_input.a.x, ~0u > _wgslsmith_add_u32(37904u, u_input.c.x)));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b, -958f, -941f, 789f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(379f, -1174f, arg_0.b, -1197f) * arg_2))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(arg_2, arg_2)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(arg_2, vec4<f32>(1284f, -908f, -344f, 579f))) - _wgslsmith_div_vec4_f32(arg_2, vec4<f32>(-208f, -1407f, -373f, 1001f))))));
    var_1 = select(firstTrailingBit(arg_1.x), max(1i, firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, -1815i), vec2<i32>(-47343i, u_input.a.x)) >> (u_input.d.x % 32u))), var_2.x);
    return any(select(vec2<bool>(false, any(!vec4<bool>(true, true, arg_0.c.c, var_0.x))), select(vec2<bool>(u_input.a.x > arg_1.x, arg_2.x > arg_2.x), select(var_0.yy, select(arg_0.a, vec2<bool>(var_0.x, var_2.x), global0[_wgslsmith_index_u32(97586u, 17u)]), arg_0.a.x == false), var_0.yy), !vec2<bool>(false || var_0.x, arg_0.a.x & false)));
}

fn func_1() -> vec3<i32> {
    global1 = array<vec4<u32>, 3>();
    var var_0 = false;
    var var_1 = max(u_input.c.x, 0u);
    let var_2 = _wgslsmith_f_op_f32(-1f);
    let var_3 = Struct_2(vec2<bool>(func_3(Struct_2(vec2<bool>(true, true), 1000f, func_2()), u_input.a.yxz | vec3<i32>(-37546i, 0i, 0i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_2, 1766f, -667f, 399f), vec4<f32>(var_2, var_2, var_2, var_2)))), false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_2))), func_2());
    return vec3<i32>(_wgslsmith_dot_vec3_i32(u_input.a.yzy, -_wgslsmith_sub_vec3_i32(abs(vec3<i32>(0i, u_input.a.x, -4038i)), ~u_input.a.wxw)), _wgslsmith_dot_vec3_i32(vec3<i32>(-20233i, u_input.a.x, 1i), min(select(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x) ^ u_input.a.xzz, u_input.a.yxy, true), u_input.a.zwx)), -1i);
}

fn func_4(arg_0: vec4<f32>, arg_1: vec3<i32>, arg_2: vec4<f32>) -> f32 {
    global1 = array<vec4<u32>, 3>();
    global0 = array<vec2<bool>, 17>();
    let var_0 = ~vec2<i32>(func_1().x, u_input.a.x & _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(arg_1.x, u_input.a.x)));
    var var_1 = func_2();
    var var_2 = 78737i;
    return func_2().a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<bool>, 17>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2086f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(722f))))) * -1343f);
    let var_1 = vec4<f32>(-1651f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -207f) * -1806f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-372f, -1305f))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(974f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1136f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(vec4<f32>(-907f, -575f, 1084f, 779f), func_1(), vec4<f32>(-1218f, -1500f, -783f, -1182f)))))), _wgslsmith_f_op_f32(sign(-118f)));
    var var_2 = _wgslsmith_dot_vec4_i32(~u_input.a, ~_wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(u_input.a, vec4<i32>(1864i, -2147483647i, -1i, -2147483647i)), u_input.a)) != _wgslsmith_add_i32(countOneBits(_wgslsmith_dot_vec3_i32(max(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), u_input.a.ywx), countOneBits(u_input.a.yxw))), func_1().x);
    var_2 = select(~u_input.e < u_input.c.x, _wgslsmith_f_op_f32(f32(-1f) * -816f) <= var_1.x, all(select(select(vec2<bool>(true, false), global0[_wgslsmith_index_u32(1u, 17u)], vec2<bool>(true, false)), !global0[_wgslsmith_index_u32(61011u, 17u)], all(vec3<bool>(true, true, true))))) || !(all(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true)) && false);
    let var_3 = ~_wgslsmith_div_vec4_u32(global1[_wgslsmith_index_u32(27196u, 3u)], u_input.d >> (vec4<u32>(u_input.c.x, reverseBits(u_input.e), 46699u, _wgslsmith_mult_u32(u_input.d.x, u_input.e)) % vec4<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(~1u << (abs(~_wgslsmith_dot_vec4_u32(global1[_wgslsmith_index_u32(1u, 3u)], global1[_wgslsmith_index_u32(var_3.x, 3u)])) % 32u), -1i, ~abs(abs(u_input.a.xw >> (vec2<u32>(u_input.d.x, 30175u) % vec2<u32>(32u)))), _wgslsmith_div_vec2_u32(select(u_input.c.zz, ~u_input.c.yx << (vec2<u32>(u_input.b.x, var_3.x) % vec2<u32>(32u)), global0[_wgslsmith_index_u32(~firstTrailingBit(u_input.d.x), 17u)]), _wgslsmith_add_vec2_u32(u_input.c.xx, vec2<u32>(u_input.b.x, var_3.x)) ^ u_input.b.yy));
}

