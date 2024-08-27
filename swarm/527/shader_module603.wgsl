struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: vec4<i32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct Struct_4 {
    a: i32,
    b: vec2<i32>,
    c: f32,
    d: vec4<bool>,
}

struct Struct_5 {
    a: i32,
    b: i32,
    c: vec3<bool>,
    d: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec4<f32>, 29>;

var<private> global2: array<Struct_2, 29>;

var<private> global3: Struct_4 = Struct_4(17298i, vec2<i32>(-28426i, 0i), 838f, vec4<bool>(true, false, true, true));

var<private> global4: array<Struct_1, 29>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1() -> bool {
    let var_0 = max(firstTrailingBit(_wgslsmith_mod_vec2_u32(~(~vec2<u32>(4294967295u, 8899u)), vec2<u32>(_wgslsmith_clamp_u32(0u, 82201u, 58836u), 1u))), _wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(28667u, 0u), _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(24331u, 42087u), vec2<u32>(0u, 2281u))) << (select(vec2<u32>(1u, 1u), countOneBits(vec2<u32>(48838u, 42114u)), !global3.d.x) % vec2<u32>(32u)), ~vec2<u32>(_wgslsmith_clamp_u32(4294967295u, 57156u, 4294967295u), firstTrailingBit(4294967295u))));
    var var_1 = !global3.d.x;
    var var_2 = false;
    var_1 = true;
    global0 = 1u;
    return global3.d.x;
}

fn func_3(arg_0: vec2<f32>) -> u32 {
    let var_0 = Struct_1(vec4<f32>(global3.c, -491f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -892f), -200f), global3.c));
    global3 = Struct_4(_wgslsmith_dot_vec2_i32(-_wgslsmith_clamp_vec2_i32(abs(vec2<i32>(global3.b.x, -1i)), abs(u_input.a), countOneBits(global3.b)), global3.b ^ global3.b), vec2<i32>(-1i, _wgslsmith_dot_vec2_i32(global3.b, global3.b)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-590f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -938f) + _wgslsmith_f_op_f32(f32(-1f) * -1298f)))), arg_0.x)), select(global3.d, vec4<bool>(any(global3.d.yyx), true, global3.d.x, global3.a != _wgslsmith_mod_i32(global3.b.x, global3.b.x)), global3.d));
    let var_1 = _wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(10734u, 29u)]);
    global1 = array<vec4<f32>, 29>();
    let var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-868f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-820f + global3.c)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(var_1.wx)) * vec2<f32>(-429f, -1962f)))));
    return _wgslsmith_sub_u32(86344u, _wgslsmith_sub_u32(1u, abs(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(4294967295u, 31172u, 80030u, 73579u)))));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec3<f32>) -> Struct_1 {
    let var_0 = Struct_2(1361f, true, select(reverseBits(vec4<i32>(firstTrailingBit(u_input.b), firstTrailingBit(u_input.a.x), 1i, -1i)), -vec4<i32>(u_input.a.x, global3.b.x, global3.b.x, u_input.a.x) >> (_wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(1u, 35853u, 1u, 0u), vec4<u32>(0u, 79138u, 43399u, 57833u)), vec4<u32>(1u, 1u, 1u, 1u)) % vec4<u32>(32u)), !(!(true & global3.d.x))), global4[_wgslsmith_index_u32(_wgslsmith_add_u32(func_3(vec2<f32>(_wgslsmith_f_op_f32(arg_1.x + arg_1.x), global3.c)), 74346u), 29u)], global4[_wgslsmith_index_u32(select(36562u, 48100u, any(vec2<bool>(arg_0.x, arg_0.x))) & 1u, 29u)]);
    var var_1 = ~_wgslsmith_sub_i32(select(_wgslsmith_div_i32(var_0.c.x, 23384i), u_input.a.x, arg_0.x) << (_wgslsmith_add_u32(min(7509u, 17795u), 1u) % 32u), u_input.b);
    var var_2 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3.c, arg_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a * 310f)), 834f)), arg_1));
    global0 = 48701u;
    let var_3 = arg_0.x;
    return var_0.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_2(vec4<bool>(true, all(select(global3.d.zx, !global3.d.xw, !global3.d.x)), true, false || select(global3.d.x, false, func_1())), vec3<f32>(global3.c, _wgslsmith_f_op_f32(-1250f - -189f), global3.c));
    global2 = array<Struct_2, 29>();
    global3 = Struct_4(_wgslsmith_mult_i32(global3.a, global3.a), vec2<i32>(global3.b.x, -1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-441f)))), select(select(vec4<bool>(global3.d.x & true, func_1(), any(vec2<bool>(global3.d.x, global3.d.x)), global3.d.x), global3.d, global3.d.x), select(global3.d, vec4<bool>(all(global3.d.yw), all(global3.d), true, all(global3.d)), global3.d.x), select(global3.d, vec4<bool>(global3.d.x, global3.d.x, !global3.d.x, true), global3.d)));
    global4 = array<Struct_1, 29>();
    let var_1 = !global3.d;
    let var_2 = firstTrailingBit(~(-vec4<i32>(1i, 19880i, ~(-12091i), 0i)));
    let x = u_input.a;
    s_output = StorageBuffer(~0u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_0.a.x), var_0.a.x) * var_0.a.wx) * vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(var_0.a.x, var_0.a.x)), _wgslsmith_f_op_f32(trunc(-1616f)), false)), _wgslsmith_f_op_f32(-var_0.a.x))));
}

