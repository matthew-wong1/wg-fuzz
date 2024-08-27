struct Struct_1 {
    a: bool,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(false, 0u), true, Struct_1(true, 32589u));

var<private> global1: array<f32, 26>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2() -> bool {
    return false;
}

fn func_3() -> bool {
    global1 = array<f32, 26>();
    global1 = array<f32, 26>();
    global1 = array<f32, 26>();
    let var_0 = Struct_1(true, global0.a.b);
    let var_1 = Struct_2(var_0, false, Struct_1(false, 28307u));
    return !any(vec4<bool>(false, false, true, var_0.a));
}

fn func_1(arg_0: f32) -> Struct_2 {
    let var_0 = select(select(vec2<bool>(func_2(), global0.c.a), select(!(!vec2<bool>(true, global0.a.a)), vec2<bool>(func_3(), true), !vec2<bool>(global0.b, global0.c.a)), vec2<bool>(true, false)), select(select(select(vec2<bool>(false, global0.c.a), select(vec2<bool>(global0.a.a, global0.b), vec2<bool>(global0.a.a, global0.b), vec2<bool>(true, true)), any(vec4<bool>(global0.a.a, false, false, false))), vec2<bool>(false, false), select(global0.b, global0.a.a && true, !global0.b)), !vec2<bool>(!global0.b, all(vec3<bool>(false, global0.b, true))), !func_3()), vec2<bool>((_wgslsmith_add_i32(40804i, u_input.a) >> ((global0.c.b >> (0u % 32u)) % 32u)) > (u_input.a & (-21230i & u_input.a)), any(vec2<bool>(false, global0.b))));
    var var_1 = ~(global0.c.b ^ ~global0.c.b);
    let var_2 = Struct_2(global0.c, global0.b, global0.c);
    var var_3 = Struct_2(Struct_1(true, var_2.a.b), !all(vec2<bool>(any(var_0), u_input.b.x > var_2.a.b)), Struct_1(false || var_0.x, reverseBits(u_input.e)));
    var var_4 = true;
    return Struct_2(var_2.a, (any(!vec3<bool>(var_2.c.a, global0.c.a, true)) && true) != !(51824u > _wgslsmith_mod_u32(global0.a.b, 43267u)), var_2.c);
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    let var_0 = vec2<i32>(-4897i, reverseBits(-(i32(-1i) * -33117i))) & -vec2<i32>(u_input.a, reverseBits(-2147483647i));
    global0 = func_1(1463f);
    global0 = func_1(global1[_wgslsmith_index_u32(u_input.e, 26u)]);
    var var_1 = Struct_2(Struct_1(!arg_0.a.a, _wgslsmith_clamp_u32(1u, 37083u | u_input.d.x, ~u_input.d.x) | ~func_1(980f).c.b), arg_0.b, func_1(-760f).c);
    let var_2 = (((reverseBits(-1i) ^ _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 23586i, 7478i), vec3<i32>(55788i, var_0.x, var_0.x))) | ~(37101i << (u_input.b.x % 32u))) & -max(u_input.a, u_input.a)) | ~select(~0i, _wgslsmith_div_i32(u_input.a, ~6763i), arg_0.a.a);
    return Struct_1(false, _wgslsmith_mod_u32(countOneBits(4294967295u), arg_0.c.b | ~(~7914u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1141f, global1[_wgslsmith_index_u32(30526u, 26u)], -347f, global1[_wgslsmith_index_u32(21066u, 26u)])), vec4<f32>(global1[_wgslsmith_index_u32(global0.a.b, 26u)], global1[_wgslsmith_index_u32(global0.c.b, 26u)], global1[_wgslsmith_index_u32(62927u, 26u)], global1[_wgslsmith_index_u32(1u, 26u)])))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1936f, -1186f, 1160f, global1[_wgslsmith_index_u32(63666u, 26u)]) + vec4<f32>(192f, global1[_wgslsmith_index_u32(u_input.d.x, 26u)], global1[_wgslsmith_index_u32(u_input.d.x, 26u)], global1[_wgslsmith_index_u32(u_input.b.x, 26u)])) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1[_wgslsmith_index_u32(54772u, 26u)], global1[_wgslsmith_index_u32(global0.a.b, 26u)], global1[_wgslsmith_index_u32(22871u, 26u)], -504f), vec4<f32>(113f, global1[_wgslsmith_index_u32(global0.c.b, 26u)], global1[_wgslsmith_index_u32(4294967295u, 26u)], global1[_wgslsmith_index_u32(u_input.b.x, 26u)]), global0.b))))));
    global1 = array<f32, 26>();
    var var_1 = global0.b;
    let var_2 = Struct_2(func_4(func_1(_wgslsmith_f_op_f32(var_0.x + -1000f))), !global0.a.a | !select(func_4(Struct_2(global0.c, global0.c.a, global0.a)).a, !global0.a.a, true), func_4(func_1(var_0.x)));
    let var_3 = _wgslsmith_mult_u32((~u_input.c & min(_wgslsmith_sub_u32(global0.c.b, 39007u), _wgslsmith_add_u32(50034u, var_2.c.b))) | var_2.a.b, select(var_2.c.b, _wgslsmith_div_u32(min(~var_2.a.b, 8835u), firstLeadingBit(var_2.c.b)), !(u_input.a != ~u_input.a)));
    global1 = array<f32, 26>();
    var_1 = func_4(var_2).a;
    var var_4 = ~(~4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, global1[_wgslsmith_index_u32(4294967295u, 26u)], global1[_wgslsmith_index_u32(u_input.d.x, 26u)]) - vec3<f32>(-610f, 1030f, 106f))), var_0.xzy))), -806f, -668f, abs(19305u));
}

