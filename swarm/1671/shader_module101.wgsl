struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: bool,
    b: vec3<f32>,
    c: i32,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: u32,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: f32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 18> = array<vec4<bool>, 18>(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: i32) -> f32 {
    global0 = array<vec4<bool>, 18>();
    var var_0 = Struct_2(true, _wgslsmith_f_op_vec3_f32(-vec3<f32>(765f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1021f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(2393f)) - _wgslsmith_f_op_f32(-1082f - 101f)))), u_input.a.x, u_input.b, Struct_1(true));
    var_0 = Struct_2(select(var_0.e.a || var_0.a, any(!select(vec3<bool>(var_0.e.a, var_0.e.a, false), vec3<bool>(var_0.a, true, false), true)), any(select(select(vec3<bool>(var_0.a, var_0.e.a, false), vec3<bool>(true, var_0.a, var_0.a), var_0.a), !vec3<bool>(var_0.a, var_0.e.a, var_0.e.a), var_0.e.a | var_0.e.a))), var_0.b, -(~_wgslsmith_add_i32(min(var_0.c, 3993i), abs(0i))), _wgslsmith_sub_i32(-23935i << ((_wgslsmith_mod_u32(4294967295u, 4294967295u) >> (~4294967295u % 32u)) % 32u), ~_wgslsmith_mod_i32(-7452i, _wgslsmith_add_i32(0i, 1i))), Struct_1(!(!var_0.a)));
    var var_1 = Struct_1(any(select(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(66355u, 49951u), vec2<u32>(7061u, 22082u)), 18u)], global0[_wgslsmith_index_u32(abs(~4294967295u), 18u)], any(select(global0[_wgslsmith_index_u32(43u, 18u)], global0[_wgslsmith_index_u32(4294967295u, 18u)], vec4<bool>(true, true, var_0.e.a, true))))));
    let var_2 = ~select(~(~vec4<u32>(69101u, 57076u, 63508u, 14210u)), ~vec4<u32>(~14671u, ~4294967295u, _wgslsmith_add_u32(0u, 2659u), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 77857u), vec2<u32>(4294967295u, 0u))), var_0.e.a);
    return var_0.b.x;
}

fn func_2(arg_0: i32, arg_1: u32) -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-544f, 1f)) * _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(-48564i)) + -483f), -238f))));
    global0 = array<vec4<bool>, 18>();
    let var_1 = arg_1;
    global0 = array<vec4<bool>, 18>();
    global0 = array<vec4<bool>, 18>();
    return vec3<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1782f))), _wgslsmith_f_op_f32(f32(-1f) * -1552f));
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_4, arg_2: vec2<f32>) -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(func_2(countOneBits(~(~u_input.a.x)), ~1u << (_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), _wgslsmith_mod_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(1u, 61673u))), countOneBits(~10725u)) % 32u)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(482f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(arg_0.x))))) * arg_2.x);
}

fn func_4(arg_0: f32, arg_1: Struct_4) -> vec3<bool> {
    global0 = array<vec4<bool>, 18>();
    global0 = array<vec4<bool>, 18>();
    global0 = array<vec4<bool>, 18>();
    global0 = array<vec4<bool>, 18>();
    global0 = array<vec4<bool>, 18>();
    return vec3<bool>((-12989i & _wgslsmith_div_i32(_wgslsmith_mod_i32(2147483647i, u_input.a.x), ~3407i)) != _wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(u_input.a.x, 0i)), u_input.a), any(vec3<bool>(false, true, false)), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(1187f, 444f), _wgslsmith_f_op_f32(func_1(vec3<f32>(1000f, -1159f, -682f), Struct_4(true), vec2<f32>(-1636f, 464f)))))), Struct_4(false));
    let var_1 = u_input.a.x <= u_input.b;
    let var_2 = Struct_2(any(select(vec3<bool>(true, var_0.x, !var_1), !(!var_0), !select(vec3<bool>(var_0.x, var_1, var_0.x), var_0, var_0))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(106f, _wgslsmith_f_op_f32(round(-1000f)), -578f))))), u_input.b, abs(~_wgslsmith_add_i32(reverseBits(u_input.b), countOneBits(-8542i))), Struct_1(var_1 & (0i > u_input.b)));
    global0 = array<vec4<bool>, 18>();
    let var_3 = _wgslsmith_add_vec3_i32(~vec3<i32>(1i, countOneBits(-2147483647i), -(u_input.a.x & var_2.d)), ~reverseBits(abs(vec3<i32>(u_input.a.x, u_input.a.x, -2147483647i) | vec3<i32>(1i, -1i, var_2.c))));
    var var_4 = Struct_3(select(select(vec4<bool>(var_2.b.x < var_2.b.x, false, true, true || var_0.x), select(global0[_wgslsmith_index_u32(0u, 18u)], select(global0[_wgslsmith_index_u32(7536u, 18u)], vec4<bool>(var_1, true, var_0.x, true), vec4<bool>(false, var_2.e.a, true, var_2.e.a)), vec4<bool>(var_1, var_0.x, false, true)), select(select(vec4<bool>(false, true, var_0.x, var_0.x), vec4<bool>(var_0.x, true, var_1, var_0.x), vec4<bool>(var_0.x, false, var_0.x, true)), !global0[_wgslsmith_index_u32(1u, 18u)], !global0[_wgslsmith_index_u32(77895u, 18u)])), select(select(select(vec4<bool>(var_2.a, var_2.e.a, true, var_1), global0[_wgslsmith_index_u32(31272u, 18u)], global0[_wgslsmith_index_u32(75762u, 18u)]), select(global0[_wgslsmith_index_u32(4294967295u, 18u)], global0[_wgslsmith_index_u32(16461u, 18u)], global0[_wgslsmith_index_u32(37749u, 18u)]), var_1), global0[_wgslsmith_index_u32(32156u >> (_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 46378u), vec2<u32>(15685u, 28097u)) % 32u), 18u)], var_0.x), select(global0[_wgslsmith_index_u32(1u, 18u)], select(select(vec4<bool>(true, var_1, true, true), vec4<bool>(var_1, var_1, var_2.e.a, false), vec4<bool>(false, var_0.x, true, var_0.x)), global0[_wgslsmith_index_u32(~52973u, 18u)], false == var_0.x), global0[_wgslsmith_index_u32(max(1u, 0u) >> (1u % 32u), 18u)])), ~(~(~1u)));
    var_4 = Struct_3(vec4<bool>(true, all(select(select(global0[_wgslsmith_index_u32(4294967295u, 18u)], global0[_wgslsmith_index_u32(27994u, 18u)], vec4<bool>(var_2.a, true, var_0.x, true)), !global0[_wgslsmith_index_u32(var_4.b, 18u)], vec4<bool>(var_1, var_1, false, var_4.a.x))), select(~(-25377i) > u_input.a.x, var_4.b < ~var_4.b, var_0.x), !any(var_4.a.xx)), _wgslsmith_sub_u32(var_4.b, _wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(var_4.b, 16202u)), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_4.b, var_4.b, 4294967295u), vec4<u32>(var_4.b, var_4.b, 0u, 0u)), 24293u))));
    let var_5 = vec3<f32>(_wgslsmith_f_op_f32(-var_2.b.x), _wgslsmith_f_op_f32(var_2.b.x * _wgslsmith_f_op_f32(508f + var_2.b.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, -121f) * _wgslsmith_f_op_f32(1320f - 873f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-460f, 275f)))), (var_3.x == var_3.x) != all(var_4.a.xzx))), var_2.b.x)));
    let var_6 = Struct_3(var_4.a, 31850u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(-897f, var_2.b.x, 820f, 2496f), vec4<f32>(var_2.b.x, var_2.b.x, var_5.x, var_5.x)))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_2.b.x, -2192f, var_2.b.x, var_2.b.x)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_5.x, var_2.b.x, -323f, 1679f), vec4<f32>(var_5.x, 656f, 517f, 382f))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-581f, var_2.b.x, -697f, -1049f), vec4<f32>(-754f, var_5.x, var_5.x, 1676f), var_4.a.x))))), _wgslsmith_f_op_f32(max(-1000f, var_5.x)), 190f, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(var_2.b.x)), var_5.x, _wgslsmith_f_op_f32(1363f * _wgslsmith_div_f32(var_2.b.x, var_2.b.x)))));
}

