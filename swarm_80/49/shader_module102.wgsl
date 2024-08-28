struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: vec4<f32>,
    d: vec2<u32>,
    e: u32,
}

struct Struct_2 {
    a: f32,
    b: vec4<u32>,
    c: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(9889u, 81414u, 0u, 1u);

var<private> global1: i32;

var<private> global2: array<bool, 32>;

var<private> global3: array<vec3<u32>, 3>;

var<private> global4: array<u32, 17>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: i32) -> vec4<bool> {
    global0 = firstLeadingBit(_wgslsmith_sub_vec4_u32(u_input.a, _wgslsmith_add_vec4_u32(vec4<u32>(13832u, _wgslsmith_clamp_u32(global0.x, global4[_wgslsmith_index_u32(u_input.c, 17u)], u_input.c), 5373u, _wgslsmith_dot_vec2_u32(u_input.a.zx, u_input.a.yz)), max(u_input.a, u_input.a) | vec4<u32>(95986u, 1u, 1u, global4[_wgslsmith_index_u32(99848u, 17u)]))));
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1218f, 778f, 1f, _wgslsmith_f_op_f32(-200f + -917f)));
    let var_1 = !(!(!(true || global2[_wgslsmith_index_u32(7273u, 32u)]) && (var_0.x > var_0.x)));
    let var_2 = Struct_2(var_0.x, u_input.a, u_input.b.x & _wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.b.x, 29127i), vec3<i32>(~43533i, 0i, u_input.b.x >> (4294967295u % 32u))));
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_2.a)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.xw + var_0.yy) * vec2<f32>(-920f, var_0.x)))) * var_0.yx));
    return !vec4<bool>(!any(!vec3<bool>(true, global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.c, 17u)], 32u)], true)), var_1, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 64881u, global4[_wgslsmith_index_u32(1u, 17u)], u_input.c), max(vec4<u32>(0u, 0u, 59243u, u_input.c), vec4<u32>(0u, 4294967295u, global4[_wgslsmith_index_u32(4294967295u, 17u)], 4294967295u))) != _wgslsmith_add_u32(global0.x & global4[_wgslsmith_index_u32(var_2.b.x, 17u)], 4294967295u), global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(u_input.a.xx, select(vec2<u32>(global0.x, u_input.c), var_2.b.zy, true)), 32u)]);
}

fn func_4(arg_0: vec2<i32>, arg_1: vec4<bool>) -> vec4<u32> {
    var var_0 = !select(arg_1.x, !(~u_input.c >= global0.x), global2[_wgslsmith_index_u32(~(~global0.x ^ ~global4[_wgslsmith_index_u32(29283u, 17u)]), 32u)]);
    global2 = array<bool, 32>();
    global4 = array<u32, 17>();
    global2 = array<bool, 32>();
    global2 = array<bool, 32>();
    return ~vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 17321u), u_input.a.xww) & _wgslsmith_clamp_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(firstTrailingBit(global4[_wgslsmith_index_u32(1u, 17u)]), 17u)], 17u)], 1u, ~global0.x), ~global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, _wgslsmith_clamp_u32(u_input.a.x, 0u, global0.x)), 17u)], global4[_wgslsmith_index_u32(40189u, 17u)], _wgslsmith_dot_vec2_u32((u_input.a.yx & u_input.a.xx) << (_wgslsmith_div_vec2_u32(global0.zw, global0.yy) % vec2<u32>(32u)), _wgslsmith_sub_vec2_u32(u_input.a.ww, max(vec2<u32>(0u, global0.x), vec2<u32>(global4[_wgslsmith_index_u32(u_input.c, 17u)], 60891u)))));
}

fn func_2() -> f32 {
    let var_0 = u_input.b.x;
    global0 = _wgslsmith_sub_vec4_u32(func_4(select(vec2<i32>(var_0, -2147483647i), vec2<i32>(_wgslsmith_add_i32(19751i, u_input.b.x), 1i), global2[_wgslsmith_index_u32(u_input.a.x, 32u)]), select(!(!vec4<bool>(true, global2[_wgslsmith_index_u32(37136u, 32u)], global2[_wgslsmith_index_u32(u_input.a.x, 32u)], global2[_wgslsmith_index_u32(global0.x, 32u)])), func_3(_wgslsmith_div_i32(u_input.b.x, 2147483647i)), func_3(34911i))), ~u_input.a);
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(633f)) - -166f) + 559f), _wgslsmith_f_op_f32(ceil(1309f)), global2[_wgslsmith_index_u32(65973u, 32u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1082f)))), _wgslsmith_div_f32(882f, _wgslsmith_f_op_f32(252f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1354f, 1245f))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(452f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-431f)), _wgslsmith_f_op_f32(min(1328f, -281f))))))));
    global0 = u_input.a;
    var var_2 = _wgslsmith_f_op_vec2_f32(select(var_1.ww, _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(-var_1.x), var_1.x))), vec2<bool>(global2[_wgslsmith_index_u32(~(~global4[_wgslsmith_index_u32(0u, 17u)]), 32u)], false)));
    return -974f;
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_1) -> u32 {
    global3 = array<vec3<u32>, 3>();
    global3 = array<vec3<u32>, 3>();
    let var_0 = _wgslsmith_f_op_vec4_f32(-arg_1.c);
    global4 = array<u32, 17>();
    var var_1 = _wgslsmith_f_op_f32(995f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + _wgslsmith_f_op_f32(-1434f - _wgslsmith_f_op_f32(func_2())))));
    return select(~global4[_wgslsmith_index_u32(1u, 17u)], 4294967295u, arg_1.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec4<u32>(_wgslsmith_mod_u32(u_input.a.x | 0u, ~abs(47952u)), abs(1u), _wgslsmith_add_u32(_wgslsmith_sub_u32(~20430u, ~global4[_wgslsmith_index_u32(u_input.c, 17u)]), _wgslsmith_div_u32(func_1(vec2<bool>(false, global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.a.x, 17u)], 32u)]), Struct_1(u_input.a, false, vec4<f32>(-1634f, -405f, -2141f, 906f), u_input.a.zw, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.c, 17u)], 17u)])), 0u & u_input.c)), 41848u), true, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(trunc(436f)), _wgslsmith_f_op_f32(-1060f + -296f), _wgslsmith_f_op_f32(max(-538f, -2414f)), _wgslsmith_f_op_f32(-1949f + 666f)))), vec4<f32>(1f, 1f, 1f, 1f)), u_input.a.xy << (vec2<u32>(~global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global0.x, 17u)], 17u)] | ~5971u, reverseBits(func_1(vec2<bool>(true, true), Struct_1(u_input.a, true, vec4<f32>(440f, 301f, -517f, -1524f), vec2<u32>(0u, 4294967295u), global0.x)))) % vec2<u32>(32u)), ~(~29287u));
    global0 = ~u_input.a;
    var var_1 = _wgslsmith_mult_vec4_u32(~var_0.a, u_input.a);
    let var_2 = 1242f;
    global0 = ~vec4<u32>(u_input.a.x, func_1(select(vec2<bool>(true, true), vec2<bool>(global2[_wgslsmith_index_u32(99732u, 32u)], global2[_wgslsmith_index_u32(global0.x, 32u)]), !vec2<bool>(var_0.b, var_0.b)), Struct_1(_wgslsmith_clamp_vec4_u32(var_0.a, vec4<u32>(1u, 7680u, global4[_wgslsmith_index_u32(0u, 17u)], 0u), u_input.a), var_0.b == global2[_wgslsmith_index_u32(var_1.x, 32u)], var_0.c, ~vec2<u32>(var_1.x, global4[_wgslsmith_index_u32(u_input.a.x, 17u)]), 16498u)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 56u, 28865u, 16209u), var_0.a) ^ func_1(vec2<bool>(true, true), var_0), ~(~1u & _wgslsmith_mod_u32(global0.x, 0u)));
    let var_3 = Struct_1(vec4<u32>(~_wgslsmith_mod_u32(~1u, _wgslsmith_clamp_u32(60840u, global4[_wgslsmith_index_u32(51802u, 17u)], u_input.c)), ~(~1u), ~_wgslsmith_clamp_u32(var_1.x, var_0.d.x, 47578u), ~(~(~var_0.d.x))), !func_3(u_input.b.x).x || true, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.x, _wgslsmith_f_op_f32(-var_0.c.x), var_0.c.x, 664f)), ~vec2<u32>(reverseBits(u_input.a.x), _wgslsmith_dot_vec2_u32(~vec2<u32>(var_1.x, 4294967295u), select(vec2<u32>(var_0.e, global0.x), global0.zx, vec2<bool>(var_0.b, global2[_wgslsmith_index_u32(var_1.x, 32u)])))), ~(~u_input.c));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(-u_input.b.zx, ~abs(u_input.b.xw)), vec2<i32>(u_input.b.x ^ _wgslsmith_mod_i32(u_input.b.x, u_input.b.x), _wgslsmith_div_i32(u_input.b.x >> (var_0.d.x % 32u), 1i))), 875f, _wgslsmith_div_vec2_f32(var_0.c.wy, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_2), _wgslsmith_f_op_f32(-var_0.c.x)))), ~u_input.b.x >> (~max(25932u, ~19231u) % 32u));
}

