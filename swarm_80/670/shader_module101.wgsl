struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: i32,
    d: bool,
    e: i32,
}

struct Struct_3 {
    a: f32,
    b: vec2<bool>,
    c: vec3<i32>,
    d: Struct_1,
}

struct Struct_4 {
    a: vec3<f32>,
}

struct Struct_5 {
    a: vec3<bool>,
    b: vec3<u32>,
    c: i32,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<i32>,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec2<bool>, 12>;

var<private> global2: Struct_2 = Struct_2(Struct_1(vec4<u32>(0u, 51301u, 4294967295u, 1u)), 49734u, i32(-2147483648), true, 0i);

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec3<bool>, arg_1: bool, arg_2: i32) -> f32 {
    let var_0 = Struct_4(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1f, 1f, 1f))));
    let var_1 = _wgslsmith_dot_vec3_i32(~max(vec3<i32>(_wgslsmith_div_i32(global2.e, -2147483647i), global2.e, ~472i), vec3<i32>(reverseBits(global2.c), _wgslsmith_add_i32(u_input.c.x, 7142i), firstLeadingBit(2147483647i))), vec3<i32>(arg_2, arg_2, _wgslsmith_dot_vec3_i32(~u_input.c, firstLeadingBit(vec3<i32>(-7462i, u_input.b, 1i)))));
    global2 = Struct_2(Struct_1(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, _wgslsmith_add_u32(u_input.e, 19832u), 4294967295u, firstLeadingBit(u_input.e)), vec4<u32>(u_input.d.x, _wgslsmith_add_u32(global2.a.a.x, global2.a.a.x), ~1u, 11652u), _wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(global2.a.a, vec4<u32>(42028u, 48427u, 82872u, u_input.d.x)), global2.a.a))), 36289u, _wgslsmith_mod_i32(~_wgslsmith_clamp_i32(countOneBits(global2.c), 33550i, -78032i), global2.c << (_wgslsmith_sub_u32(13929u, min(u_input.d.x, u_input.d.x)) % 32u)), !(!arg_0.x), var_1);
    global1 = array<vec2<bool>, 12>();
    var var_2 = global2.a;
    return var_0.a.x;
}

fn func_2(arg_0: bool) -> bool {
    global0 = global2.a.a.x;
    global1 = array<vec2<bool>, 12>();
    let var_0 = _wgslsmith_clamp_u32(global2.b | global2.a.a.x, ~0u, u_input.d.x);
    let var_1 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(899f, 1023f), vec2<f32>(231f, -1937f))) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -491f), _wgslsmith_f_op_f32(func_3(vec3<bool>(arg_0, true, arg_0), false, -10478i)))))));
    global2 = Struct_2(Struct_1(vec4<u32>(23733u, 21203u, firstLeadingBit(u_input.d.x), ~reverseBits(15036u))), 52920u, select(~(~global2.c ^ 0i), global2.e, global2.d), select(true, any(vec3<bool>(arg_0, var_1.x >= 633f, true)), 24506u <= ~var_0), ~(~global2.c));
    return ~(~(~_wgslsmith_dot_vec4_u32(global2.a.a, vec4<u32>(28142u, global2.b, 0u, 29066u)))) >= _wgslsmith_sub_u32(abs(firstLeadingBit(global2.a.a.x)) ^ 20979u, 4294967295u);
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: f32) -> bool {
    let var_0 = any(select(vec2<bool>(true, all(vec3<bool>(global2.d, true, global2.d))), global1[_wgslsmith_index_u32(1u, 12u)], false));
    var var_1 = ~(~6707u | _wgslsmith_clamp_u32(~_wgslsmith_clamp_u32(global2.b, 22892u, global2.b), 5322u, 0u));
    global0 = _wgslsmith_div_u32(u_input.e, ~min(~global2.a.a.x, ~0u));
    global2 = Struct_2(global2.a, 1u, arg_1, arg_0, _wgslsmith_dot_vec4_i32(u_input.a >> (global2.a.a % vec4<u32>(32u)), vec4<i32>(i32(-1i) * -20967i, -global2.c, 0i, 2147483647i)));
    var var_2 = true;
    return func_2(global2.d);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<bool>, 12>();
    let var_0 = Struct_5(vec3<bool>(all(!vec4<bool>(global2.d, global2.d, true, global2.d)), true, func_1(true, ~(~u_input.b), _wgslsmith_f_op_f32(1091f - _wgslsmith_f_op_f32(674f + -2213f)))), global2.a.a.zwx, _wgslsmith_clamp_i32(countOneBits(firstLeadingBit(u_input.b)), global2.e, ~abs(~global2.c)), -_wgslsmith_div_vec2_i32(vec2<i32>(-u_input.c.x, _wgslsmith_add_i32(global2.e, 3061i)), min(_wgslsmith_sub_vec2_i32(u_input.c.yz, u_input.c.xz), u_input.c.xy | vec2<i32>(global2.c, 22698i))));
    let var_1 = global2.a;
    var var_2 = vec4<u32>(~abs(var_0.b.x), var_1.a.x, ~(~23800u), _wgslsmith_dot_vec2_u32(vec2<u32>(6027u, abs(var_0.b.x)), vec2<u32>(_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(1u, var_1.a.x, global2.a.a.x)), ~vec3<u32>(1u, var_0.b.x, 4294967295u)), 0u)));
    let var_3 = _wgslsmith_sub_i32(firstTrailingBit(countOneBits(var_0.c)) >> (var_0.b.x % 32u), abs(_wgslsmith_mult_i32(~global2.c, abs(18031i))));
    var_2 = vec4<u32>(var_2.x, global2.a.a.x, 1u, 1u);
    global0 = var_1.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(max(u_input.a, vec4<i32>(~36157i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_3, u_input.a.x), u_input.a.zx), 56308i, abs(1i)) << (reverseBits(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 1u, var_0.b.x, 0u), vec4<u32>(0u, var_1.a.x, var_1.a.x, 0u))) % vec4<u32>(32u))), -368f, 66849u);
}

