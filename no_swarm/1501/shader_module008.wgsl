struct Struct_1 {
    a: f32,
    b: bool,
    c: f32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: vec4<bool>,
    d: vec2<f32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: f32,
    c: vec4<i32>,
    d: Struct_1,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 27>;

var<private> global1: Struct_1;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: vec3<u32>, arg_1: bool) -> u32 {
    var var_0 = all(vec3<bool>(true, global1.b, arg_1));
    let var_1 = Struct_4(!vec3<bool>(true, any(!vec3<bool>(true, global1.b, global1.b)), true), -841f, (-(vec4<i32>(u_input.e, u_input.e, -11313i, 27191i) & vec4<i32>(-37140i, 42835i, -13830i, u_input.e)) ^ vec4<i32>(33534i, -3380i, ~u_input.d, _wgslsmith_div_i32(u_input.e, 75521i))) << (_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(min(vec4<u32>(arg_0.x, u_input.a.x, arg_0.x, 1u), u_input.a), vec4<u32>(u_input.b, u_input.c, u_input.b, arg_0.x)), ~(~vec4<u32>(1u, u_input.b, arg_0.x, 74655u)), _wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, 27022u, 1u, u_input.b)), u_input.a)) % vec4<u32>(32u)), Struct_1(-509f, true, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~75973u, 27u)]), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-global1.d)))));
    global1 = var_1.d;
    return 1u;
}

fn func_1(arg_0: Struct_4) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -375f), _wgslsmith_f_op_f32(-global1.c)), -690f) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global0[_wgslsmith_index_u32(func_2(vec3<u32>(u_input.b, u_input.a.x, u_input.c), false), 27u)], -1012f))))));
    let var_1 = select(vec3<bool>(select(true, all(select(vec4<bool>(global1.b, false, true, arg_0.d.b), vec4<bool>(arg_0.d.b, false, true, true), arg_0.d.b)), !any(vec2<bool>(true, true))), !global1.b, arg_0.a.x), vec3<bool>(arg_0.d.b, !(!all(vec4<bool>(global1.b, true, true, arg_0.d.b))), select(true, !(u_input.d != arg_0.c.x), arg_0.d.b)), arg_0.a);
    global0 = array<f32, 27>();
    var var_2 = firstLeadingBit(~4294967295u);
    global1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(arg_0.d.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -530f) + _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(75921u, 27u)])))))), true, _wgslsmith_f_op_f32(838f * 987f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, global0[_wgslsmith_index_u32(u_input.c, 27u)])), _wgslsmith_f_op_f32(-1158f + _wgslsmith_f_op_f32(f32(-1f) * -824f)))));
    return arg_0.a;
}

fn func_3(arg_0: u32, arg_1: vec3<bool>, arg_2: f32, arg_3: f32) -> Struct_2 {
    global0 = array<f32, 27>();
    return Struct_2(_wgslsmith_clamp_i32(u_input.d, -1i, u_input.d) >> (4294967295u % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b, _wgslsmith_add_u32(4925u, 33846u)), _wgslsmith_mult_vec2_u32(select(vec2<u32>(u_input.b, u_input.a.x), u_input.a.wx, select(vec2<bool>(true, global1.b), vec2<bool>(true, false), global1.b)), _wgslsmith_mult_vec2_u32(vec2<u32>(0u, u_input.b), vec2<u32>(u_input.b, 4294967295u)))), Struct_2(-1i), select(vec4<bool>(any(select(vec2<bool>(false, global1.b), vec2<bool>(global1.b, global1.b), true)), true, !global1.b, any(vec3<bool>(global1.b, global1.b, global1.b))), !(!select(vec4<bool>(global1.b, false, true, false), vec4<bool>(false, false, global1.b, global1.b), vec4<bool>(global1.b, global1.b, global1.b, false))), any(vec4<bool>(u_input.d < 2147483647i, false, true, false))), global1.d.xz);
    var var_1 = _wgslsmith_add_u32(var_0.a, ~(~u_input.a.x));
    var var_2 = vec2<f32>(658f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.d.x - var_0.d.x), _wgslsmith_f_op_f32(1000f + 1256f)))) - global1.c));
    var_1 = countOneBits((var_0.a ^ _wgslsmith_mult_u32(4375u ^ u_input.a.x, ~26081u)) >> (27481u % 32u));
    var var_3 = func_3(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a.x, u_input.c) >> (vec2<u32>(23496u, u_input.c) % vec2<u32>(32u)), u_input.a.xw) ^ u_input.a.xw, u_input.a.xx), func_1(Struct_4(vec3<bool>(var_0.c.x, !var_0.c.x, var_0.c.x), global1.c, vec4<i32>(28916i, _wgslsmith_clamp_i32(u_input.d, var_0.b.a, 17872i), _wgslsmith_add_i32(-2147483647i, 0i), var_0.b.a), Struct_1(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b, 27u)]), any(var_0.c), 1171f, vec3<f32>(global1.d.x, global1.d.x, 1214f)))), 185f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-780f))), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, 14876u, 1u), 27u)]))) - _wgslsmith_div_f32(_wgslsmith_div_f32(486f, _wgslsmith_f_op_f32(ceil(var_2.x))), _wgslsmith_f_op_f32(f32(-1f) * -312f))));
    let var_4 = Struct_4(select(var_0.c.yxy, vec3<bool>(var_0.c.x, !(1i != var_3.a), !var_0.c.x), !select(vec3<bool>(false, var_0.c.x, global1.b), vec3<bool>(false, var_0.c.x, var_0.c.x), var_0.c.x)), _wgslsmith_f_op_f32(var_0.d.x * 377f), -countOneBits(abs(vec4<i32>(var_3.a, u_input.d, -2147483647i, 2147483647i) << (u_input.a % vec4<u32>(32u)))), Struct_1(-813f, true, global0[_wgslsmith_index_u32(u_input.c, 27u)], _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-709f + -486f), _wgslsmith_f_op_f32(global1.a + 1282f), _wgslsmith_f_op_f32(238f + 1793f)) + global1.d)));
    var_0 = Struct_3(4294967295u << (~(~max(var_0.a, u_input.b)) % 32u), Struct_2(min(_wgslsmith_dot_vec2_i32(var_4.c.wz >> (u_input.a.yx % vec2<u32>(32u)), vec2<i32>(0i, 1i)), var_4.c.x << (~u_input.c % 32u))), select(select(select(vec4<bool>(global1.b, false, global1.b, var_4.d.b), select(vec4<bool>(var_0.c.x, var_4.d.b, false, var_0.c.x), vec4<bool>(true, global1.b, var_4.a.x, false), vec4<bool>(var_4.d.b, var_0.c.x, true, true)), global1.b), select(var_0.c, var_0.c, !var_4.a.x), var_0.c), select(!vec4<bool>(global1.b, false, false, var_0.c.x), !vec4<bool>(global1.b, var_0.c.x, var_0.c.x, var_0.c.x), var_4.d.b), _wgslsmith_f_op_f32(select(var_2.x, 785f, !var_0.c.x)) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1669f, 545f)))), var_0.d);
    var var_5 = _wgslsmith_sub_u32(~(_wgslsmith_mult_u32(select(1u, 1u, var_0.c.x), _wgslsmith_add_u32(var_0.a, 1u)) << (~abs(4294967295u) % 32u)), _wgslsmith_div_u32(var_0.a ^ countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a, 1u), vec2<u32>(var_0.a, 8420u))), _wgslsmith_div_u32(_wgslsmith_add_u32(28961u, var_0.a << (u_input.c % 32u)), 4294967295u)));
    var_3 = func_3(var_0.a, !var_4.a, global1.c, var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(~1i, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_4.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.x))), var_4.b, var_2.x));
}

