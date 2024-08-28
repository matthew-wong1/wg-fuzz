struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: bool,
    c: vec4<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
    d: i32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 7>;

var<private> global1: array<vec4<f32>, 1>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec3<u32> {
    global1 = array<vec4<f32>, 1>();
    let var_0 = Struct_1(!(!select(!vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 7u)], global0[_wgslsmith_index_u32(u_input.a, 7u)], global0[_wgslsmith_index_u32(u_input.d, 7u)], false), select(vec4<bool>(global0[_wgslsmith_index_u32(16411u, 7u)], global0[_wgslsmith_index_u32(u_input.d, 7u)], global0[_wgslsmith_index_u32(66431u, 7u)], global0[_wgslsmith_index_u32(4294967295u, 7u)]), vec4<bool>(false, global0[_wgslsmith_index_u32(70240u, 7u)], true, false), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 7u)], true, global0[_wgslsmith_index_u32(u_input.a, 7u)], global0[_wgslsmith_index_u32(23384u, 7u)])), select(false, global0[_wgslsmith_index_u32(17935u, 7u)], false))), -(i32(-1i) * -2147483647i), !(!vec4<bool>(false, any(vec4<bool>(global0[_wgslsmith_index_u32(1u, 7u)], global0[_wgslsmith_index_u32(u_input.d, 7u)], global0[_wgslsmith_index_u32(1u, 7u)], true)), true, true)));
    global0 = array<bool, 7>();
    global1 = array<vec4<f32>, 1>();
    let var_1 = var_0;
    return u_input.b;
}

fn func_2(arg_0: vec4<bool>, arg_1: vec3<f32>) -> Struct_1 {
    global0 = array<bool, 7>();
    global0 = array<bool, 7>();
    global0 = array<bool, 7>();
    var var_0 = Struct_2(func_3(), false, !arg_0, Struct_1(vec4<bool>(u_input.c.x == 1i, !all(vec4<bool>(true, arg_0.x, global0[_wgslsmith_index_u32(26545u, 7u)], arg_0.x)), any(!arg_0.zy), true), _wgslsmith_mod_i32(~u_input.c.x, max(u_input.c.x, -42723i)), arg_0));
    global0 = array<bool, 7>();
    return Struct_1(select(!select(vec4<bool>(false, false, true, arg_0.x), !var_0.d.a, select(var_0.c, var_0.d.c, vec4<bool>(false, global0[_wgslsmith_index_u32(1u, 7u)], true, false))), !select(select(arg_0, var_0.c, global0[_wgslsmith_index_u32(var_0.a.x, 7u)]), arg_0, arg_0), false), -1i, !select(!(!var_0.d.a), select(select(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 7u)], true, global0[_wgslsmith_index_u32(u_input.a, 7u)], true), vec4<bool>(false, false, true, var_0.d.c.x), false), select(vec4<bool>(global0[_wgslsmith_index_u32(var_0.a.x, 7u)], arg_0.x, true, var_0.b), vec4<bool>(var_0.d.c.x, false, global0[_wgslsmith_index_u32(u_input.b.x, 7u)], false), global0[_wgslsmith_index_u32(38486u, 7u)]), true), ~62147i == _wgslsmith_add_i32(u_input.c.x, var_0.d.b)));
}

fn func_4(arg_0: bool, arg_1: vec3<f32>, arg_2: bool, arg_3: Struct_1) -> vec3<i32> {
    global1 = array<vec4<f32>, 1>();
    let var_0 = arg_3.b;
    global1 = array<vec4<f32>, 1>();
    global0 = array<bool, 7>();
    let var_1 = Struct_2(_wgslsmith_mult_vec3_u32(~_wgslsmith_div_vec3_u32(u_input.b ^ u_input.b, ~u_input.b), ~(~(u_input.b & u_input.b))), true, vec4<bool>(arg_0, true, true, false), arg_3);
    return vec3<i32>(_wgslsmith_sub_i32(func_2(select(var_1.c, !vec4<bool>(false, arg_3.a.x, false, true), false && global0[_wgslsmith_index_u32(4294967295u, 7u)]), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(arg_1, vec3<f32>(565f, arg_1.x, arg_1.x), vec3<bool>(var_1.d.c.x, arg_2, false))))).b, _wgslsmith_mod_i32(~var_1.d.b & (1i | var_0), ~countOneBits(var_0))), var_0, ~2147483647i);
}

fn func_1() -> vec3<u32> {
    global0 = array<bool, 7>();
    var var_0 = vec3<i32>(u_input.c.x, _wgslsmith_dot_vec3_i32(vec3<i32>(~countOneBits(-8511i), -47436i, _wgslsmith_mult_i32(-2147483647i, select(-1i, 0i, true))), func_4(true, vec3<f32>(_wgslsmith_f_op_f32(289f + -879f), -1995f, _wgslsmith_div_f32(1000f, 379f)), any(!vec2<bool>(global0[_wgslsmith_index_u32(u_input.d, 7u)], false)), func_2(select(vec4<bool>(true, global0[_wgslsmith_index_u32(1u, 7u)], global0[_wgslsmith_index_u32(1u, 7u)], false), vec4<bool>(global0[_wgslsmith_index_u32(u_input.d, 7u)], global0[_wgslsmith_index_u32(0u, 7u)], false, true), vec4<bool>(true, global0[_wgslsmith_index_u32(1u, 7u)], false, global0[_wgslsmith_index_u32(1u, 7u)])), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-940f, -2645f, -1000f)))))), u_input.c.x);
    var var_1 = u_input.b.zz;
    var var_2 = var_0.yz;
    let var_3 = 1u;
    return ~(~((vec3<u32>(u_input.a, u_input.a, u_input.d) ^ vec3<u32>(16979u, var_1.x, 0u)) << (select(u_input.b, vec3<u32>(u_input.b.x, 0u, u_input.d), vec3<bool>(false, false, global0[_wgslsmith_index_u32(var_1.x, 7u)])) % vec3<u32>(32u))) & vec3<u32>(1u, _wgslsmith_sub_u32(abs(114855u), abs(49716u)), firstTrailingBit(u_input.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1() << (u_input.b % vec3<u32>(32u));
    var var_1 = Struct_1(!vec4<bool>(global0[_wgslsmith_index_u32(u_input.a << (u_input.a % 32u), 7u)], true, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.b.x, 0u, var_0.x), vec4<u32>(61666u, var_0.x, 4294967295u, 2531u)) <= _wgslsmith_clamp_u32(8823u, 4294967295u, 43416u), !(!global0[_wgslsmith_index_u32(var_0.x, 7u)])), -52282i, vec4<bool>(any(!select(vec3<bool>(false, false, false), vec3<bool>(true, global0[_wgslsmith_index_u32(41710u, 7u)], true), false)), false, !(any(vec4<bool>(true, false, false, global0[_wgslsmith_index_u32(var_0.x, 7u)])) || all(vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.d, 7u)]))), !(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, u_input.c.x), u_input.c.yz) <= -u_input.c.x)));
    let var_2 = var_1.c.x;
    let var_3 = !(!func_2(select(vec4<bool>(false, false, true, var_1.a.x), vec4<bool>(var_1.a.x, var_1.c.x, true, false), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 7u)], var_1.c.x, false, false)), vec3<f32>(1f, 1f, 1f)).c);
    global0 = array<bool, 7>();
    let var_4 = func_2(!vec4<bool>(false, any(!var_3), !any(vec4<bool>(global0[_wgslsmith_index_u32(13708u, 7u)], var_1.a.x, false, true)), all(vec2<bool>(true, global0[_wgslsmith_index_u32(32759u, 7u)]))), vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-596f, -1121f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1016f))))), 1198f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2032f + _wgslsmith_f_op_f32(f32(-1f) * -1164f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1063f, 1056f)) + 1f))));
    let var_5 = func_2(var_3, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(-1000f, -149f)), _wgslsmith_f_op_f32(max(1000f, -1000f)), 270f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1402f, -694f, 931f)))))));
    let var_6 = Struct_1(vec4<bool>(var_1.a.x, true, (var_1.b ^ _wgslsmith_sub_i32(var_1.b, 0i)) >= _wgslsmith_mod_i32(4460i & var_4.b, ~var_4.b), global0[_wgslsmith_index_u32(~u_input.a, 7u)]), countOneBits(select(u_input.c.x, -abs(-1i), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a ^ 4294967295u, ~var_0.x), 7u)])), var_1.a);
    let var_7 = Struct_2(select(_wgslsmith_clamp_vec3_u32(vec3<u32>(~u_input.b.x, u_input.a, func_1().x), _wgslsmith_clamp_vec3_u32(countOneBits(vec3<u32>(var_0.x, u_input.a, var_0.x)), abs(vec3<u32>(11353u, u_input.a, u_input.d)), ~u_input.b), _wgslsmith_mod_vec3_u32(select(u_input.b, u_input.b, true), ~vec3<u32>(var_0.x, 45814u, u_input.a))), vec3<u32>(var_0.x, 1u, ~u_input.a), vec3<bool>(true, all(select(vec3<bool>(false, false, false), var_3.zxz, vec3<bool>(true, var_1.c.x, true))), all(func_2(var_5.a, vec3<f32>(562f, 360f, -899f)).c))), global0[_wgslsmith_index_u32(var_0.x, 7u)], select(!func_2(!vec4<bool>(false, true, global0[_wgslsmith_index_u32(u_input.d, 7u)], var_5.c.x), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-610f, -1421f, -2361f)))).c, var_5.c, var_1.a), var_6);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x, 1i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-217f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -271f), _wgslsmith_f_op_f32(-434f + -375f)))), -var_6.b, u_input.c);
}

