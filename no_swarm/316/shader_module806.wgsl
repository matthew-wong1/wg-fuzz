struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: u32,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1921f;

var<private> global1: array<i32, 11>;

var<private> global2: i32;

var<private> global3: Struct_1 = Struct_1(vec4<f32>(1136f, 1000f, 1746f, -928f), -31451i, 4294967295u);

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: bool, arg_1: vec2<f32>) -> Struct_1 {
    global1 = array<i32, 11>();
    var var_0 = vec4<bool>(false, true, true & !((global1[_wgslsmith_index_u32(u_input.b, 11u)] >= u_input.a.x) != any(vec3<bool>(true, true, arg_0))), false);
    return Struct_1(global3.a, countOneBits(1i), abs(1u));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: vec3<i32>) -> i32 {
    global3 = func_2(!all(arg_0), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(244f + global3.a.x), global3.a.x)) - vec2<f32>(func_2(!arg_0.x, _wgslsmith_f_op_vec2_f32(-arg_1.a.wx)).a.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(790f, 622f)))));
    let var_0 = arg_0.x;
    var var_1 = global3.b;
    let var_2 = firstLeadingBit(_wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(select(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(u_input.b, 1u, u_input.b), arg_0.wzz), ~vec3<u32>(arg_1.c, global3.c, 4294967295u)) | ~(vec3<u32>(arg_1.c, arg_1.c, u_input.b) | vec3<u32>(global3.c, global3.c, arg_1.c)), ~vec3<u32>(1u, u_input.b ^ 0u, select(arg_1.c, 3105u, arg_0.x))));
    global2 = -_wgslsmith_mod_i32(68704i, ~u_input.a.x);
    return _wgslsmith_clamp_i32(~max(-49298i, 0i | global1[_wgslsmith_index_u32(~57589u, 11u)]), _wgslsmith_add_i32(-1i, -arg_1.b | reverseBits(u_input.a.x << (64242u % 32u))), countOneBits(21499i));
}

fn func_1() -> u32 {
    global2 = func_3(!(!vec4<bool>(all(vec4<bool>(false, true, true, false)), true, false, true)), func_2(true, _wgslsmith_f_op_vec2_f32(-global3.a.yz)), (vec3<i32>(-u_input.a.x, u_input.a.x, _wgslsmith_sub_i32(-54617i, global1[_wgslsmith_index_u32(u_input.b, 11u)])) >> (vec3<u32>(1u, ~4294967295u, ~0u) % vec3<u32>(32u))) ^ -(firstLeadingBit(vec3<i32>(u_input.a.x, global3.b, 25970i)) << (~vec3<u32>(u_input.b, u_input.b, 79155u) % vec3<u32>(32u))));
    global1 = array<i32, 11>();
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global3.a.zy * _wgslsmith_f_op_vec2_f32(round(vec2<f32>(global3.a.x, 848f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(global3.a.xy, global3.a.yy) * _wgslsmith_f_op_vec2_f32(step(global3.a.wy, global3.a.xw)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.a.x, 846f)))), 4294967295u);
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(global3.a, global3.a)), _wgslsmith_f_op_vec4_f32(sign(global3.a)))))), i32(-1i) * -max(1i, 1i), 5062u);
    let var_2 = !(!(!select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), false), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), false), vec3<bool>(true, true, true))));
    return ~var_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 11>();
    let var_0 = ~_wgslsmith_mult_u32(~47946u, countOneBits(_wgslsmith_sub_u32(u_input.b, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(global3.c, 1u)))));
    let var_1 = vec2<i32>(-(~22097i), -global3.b);
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(global3.a.x, _wgslsmith_f_op_f32(-804f * -1660f)), global3.a.x));
    var var_3 = Struct_2(global3.a.yw, u_input.b);
    var var_4 = ~_wgslsmith_mod_u32(min(4294967295u << (global3.c % 32u), var_0), 0u) << (1u % 32u);
    let var_5 = func_1();
    global0 = 1654f;
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1737f))) * global3.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-global3.a), -_wgslsmith_clamp_vec2_i32(u_input.a, vec2<i32>(0i, u_input.a.x), u_input.a) << (~vec2<u32>(~global3.c, ~1u) % vec2<u32>(32u)));
}

