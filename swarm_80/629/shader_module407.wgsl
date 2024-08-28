struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec3<u32>,
    c: Struct_1,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec2<u32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<i32, 12> = array<i32, 12>(-33305i, 32353i, -29627i, i32(-2147483648), 0i, 1i, 0i, 55819i, -52667i, 1i, 52960i, -18371i);

var<private> global2: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(i32(-2147483648)), Struct_1(15061i), Struct_1(-39381i), Struct_1(-23576i), Struct_1(-1i), Struct_1(-27129i), Struct_1(i32(-2147483648)), Struct_1(1i), Struct_1(-14587i), Struct_1(0i), Struct_1(2147483647i), Struct_1(-55096i), Struct_1(-41967i), Struct_1(-17309i), Struct_1(2147483647i), Struct_1(6168i), Struct_1(32549i), Struct_1(1i), Struct_1(1i), Struct_1(34709i), Struct_1(-750i));

var<private> global3: Struct_2;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3() -> vec2<u32> {
    global1 = array<i32, 12>();
    global0 = true;
    var var_0 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(global3.e, global3.e) * vec2<f32>(global3.e, 2203f)), vec2<f32>(1220f, global3.e))) - vec2<f32>(_wgslsmith_f_op_f32(-global3.e), global3.e))));
    global3 = Struct_2(!global3.a, _wgslsmith_div_vec3_u32(~global3.b, global3.b), Struct_1(global3.c.a), Struct_1(~(-11900i)), global3.e);
    let var_1 = global3.a;
    return vec2<u32>(~(global3.b.x | global3.b.x), (1u >> (global3.b.x % 32u)) | global3.b.x);
}

fn func_4(arg_0: vec2<f32>, arg_1: f32, arg_2: vec2<u32>, arg_3: f32) -> bool {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(ceil(-692f))));
    let var_1 = _wgslsmith_div_u32(arg_2.x, arg_2.x);
    var var_2 = firstLeadingBit(~(~(~_wgslsmith_add_vec2_u32(arg_2, vec2<u32>(arg_2.x, var_1)))));
    let var_3 = ~vec4<i32>(-(~_wgslsmith_dot_vec3_i32(vec3<i32>(0i, global3.d.a, global3.c.a), vec3<i32>(global3.d.a, global1[_wgslsmith_index_u32(4294967295u, 12u)], 1i))), -u_input.a >> (arg_2.x % 32u), u_input.a, _wgslsmith_mult_i32(1i, u_input.a));
    var var_4 = arg_0;
    return !(~1i > global1[_wgslsmith_index_u32(1u >> (global3.b.x % 32u), 12u)]);
}

fn func_2(arg_0: vec3<i32>, arg_1: vec3<i32>) -> bool {
    global1 = array<i32, 12>();
    let var_0 = _wgslsmith_add_vec3_i32(~arg_0, -vec3<i32>(1534i, (u_input.a & 40946i) & global3.d.a, global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(global3.b.x, global3.b.x), 12u)]));
    global2 = array<Struct_1, 21>();
    global1 = array<i32, 12>();
    global1 = array<i32, 12>();
    return !func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, global3.e) * vec2<f32>(-1059f, -395f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.e * _wgslsmith_f_op_f32(-1264f * global3.e)) - global3.e), func_3(), _wgslsmith_f_op_f32(ceil(1897f)));
}

fn func_1(arg_0: vec2<i32>) -> vec2<bool> {
    let var_0 = abs(select(~(~select(vec2<i32>(2147483647i, -1i), vec2<i32>(48244i, arg_0.x), false)), ~_wgslsmith_clamp_vec2_i32(~arg_0, _wgslsmith_div_vec2_i32(arg_0, vec2<i32>(arg_0.x, 2147483647i)), arg_0), func_2(-(vec3<i32>(2147483647i, -47627i, arg_0.x) & vec3<i32>(arg_0.x, 2147483647i, -47223i)), vec3<i32>(0i >> (global3.b.x % 32u), ~40372i, 1i))));
    return !global3.a.ww;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = global3.a.x;
    var var_0 = select(select(!global3.a.zz, global3.a.wz, select(!select(vec2<bool>(global3.a.x, false), global3.a.ww, false), func_1(_wgslsmith_clamp_vec2_i32(vec2<i32>(global3.d.a, global3.d.a), vec2<i32>(20680i, u_input.a), vec2<i32>(-2147483647i, -1i))), any(global3.a))), !select(global3.a.zy, func_1(~vec2<i32>(-2147483647i, global1[_wgslsmith_index_u32(0u, 12u)])), global3.a.wx), false || !all(global3.a));
    global0 = !global3.a.x;
    var var_1 = Struct_2(select(!global3.a, global3.a, false), global3.b, global2[_wgslsmith_index_u32(~(~_wgslsmith_sub_u32(~92127u, _wgslsmith_mod_u32(global3.b.x, 4294967295u))), 21u)], Struct_1(1i), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.e * -1000f))))));
    global3 = Struct_2(vec4<bool>(any(select(vec2<bool>(var_0.x, true), var_1.a.wz, global3.a.wy)), var_0.x, func_4(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(vec2<f32>(global3.e, var_1.e), vec2<f32>(global3.e, global3.e)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.e + var_1.e)), global3.b.zy, _wgslsmith_f_op_f32(-var_1.e)), global3.a.x), vec3<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(41885u, global3.b.x, global3.b.x, 6622u), vec4<u32>(42268u, 4294967295u, 96591u, var_1.b.x)) << (1u % 32u), countOneBits(global3.b.x), _wgslsmith_div_u32(var_1.b.x, 0u) >> (_wgslsmith_sub_u32(countOneBits(var_1.b.x), func_3().x) % 32u)), Struct_1(~(-7055i)), var_1.c, _wgslsmith_f_op_f32(1475f * _wgslsmith_f_op_f32(-var_1.e)));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.c.a >> (((~var_1.b.x & global3.b.x) ^ var_1.b.x) % 32u));
}

