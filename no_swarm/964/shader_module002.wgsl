struct Struct_1 {
    a: i32,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<i32>,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: u32,
    d: i32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 3> = array<vec3<bool>, 3>(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false));

var<private> global1: array<i32, 27>;

var<private> global2: array<i32, 26> = array<i32, 26>(0i, 1i, 0i, i32(-2147483648), -1i, 0i, -16916i, 2147483647i, 5243i, -31833i, -15201i, i32(-2147483648), 4481i, 0i, 2147483647i, 0i, 1i, i32(-2147483648), -16261i, 0i, 1i, -1i, 0i, 5457i, 0i, -42852i);

var<private> global3: vec2<i32> = vec2<i32>(0i, -49323i);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_1) -> f32 {
    var var_0 = reverseBits(_wgslsmith_dot_vec4_u32(max(_wgslsmith_div_vec4_u32(vec4<u32>(17793u, u_input.d.x, u_input.b, 27127u), firstTrailingBit(vec4<u32>(u_input.d.x, u_input.a.x, 1u, u_input.e))), countOneBits(_wgslsmith_div_vec4_u32(vec4<u32>(30892u, 1u, u_input.b, 83976u), vec4<u32>(50135u, u_input.d.x, 1u, u_input.d.x)))), ~(_wgslsmith_add_vec4_u32(vec4<u32>(1u, u_input.a.x, 77866u, u_input.d.x), vec4<u32>(42699u, u_input.b, u_input.e, u_input.e)) << (~vec4<u32>(u_input.a.x, 37105u, u_input.b, 1u) % vec4<u32>(32u)))));
    var_0 = _wgslsmith_mod_u32(u_input.b, _wgslsmith_add_u32(~u_input.e, reverseBits(u_input.b)));
    global2 = array<i32, 26>();
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-826f, _wgslsmith_f_op_f32(round(-515f)), _wgslsmith_f_op_f32(f32(-1f) * -511f)));
    global1 = array<i32, 27>();
    return var_1.x;
}

fn func_4(arg_0: vec4<f32>) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_f32(trunc(arg_0.x));
    var var_1 = global3.x;
    var var_2 = _wgslsmith_div_f32(_wgslsmith_div_f32(-1759f, _wgslsmith_f_op_f32(ceil(-1208f))), arg_0.x);
    global1 = array<i32, 27>();
    var var_3 = Struct_1(-1i, !select(select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)));
    return !vec4<bool>(var_3.b.x, !var_3.b.x, true, var_3.b.x);
}

fn func_2(arg_0: vec3<u32>) -> Struct_1 {
    global2 = array<i32, 26>();
    global0 = array<vec3<bool>, 3>();
    let var_0 = true;
    let var_1 = Struct_1(u_input.c.x, !select(vec4<bool>(true, var_0 && var_0, true, any(vec2<bool>(true, true))), !select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, var_0, var_0), vec4<bool>(true, true, var_0, true)), false));
    let var_2 = i32(-1i) * -(13701i >> (~u_input.e % 32u));
    return Struct_1(global2[_wgslsmith_index_u32(1u, 26u)], func_4(vec4<f32>(_wgslsmith_f_op_f32(func_3(Struct_1(global3.x, vec4<bool>(false, false, var_1.b.x, var_1.b.x)))), -2355f, 612f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(2184f, -1314f) + -812f))));
}

fn func_5(arg_0: Struct_1, arg_1: vec3<u32>) -> Struct_1 {
    global0 = array<vec3<bool>, 3>();
    global0 = array<vec3<bool>, 3>();
    let var_0 = arg_0;
    global3 = u_input.c.zx;
    let var_1 = vec3<bool>(false, any(vec2<bool>(var_0.b.x & arg_0.b.x, !select(false, var_0.b.x, var_0.b.x))), (i32(-1i) * -_wgslsmith_add_i32(u_input.c.x, -21333i)) > global1[_wgslsmith_index_u32(arg_1.x, 27u)]);
    return var_0;
}

fn func_1() -> Struct_1 {
    var var_0 = ~(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, 0u), _wgslsmith_mult_vec2_u32(u_input.d, u_input.d))));
    var var_1 = vec4<bool>(all(global0[_wgslsmith_index_u32(~u_input.a.x, 3u)]), true, 31120i > max(~_wgslsmith_dot_vec4_i32(u_input.c, u_input.c), _wgslsmith_sub_i32(global1[_wgslsmith_index_u32(u_input.b, 27u)] | 1i, _wgslsmith_mod_i32(global2[_wgslsmith_index_u32(u_input.a.x, 26u)], u_input.c.x))), !(-40311i != ((global2[_wgslsmith_index_u32(58784u, 26u)] >> (106897u % 32u)) & (-1721i ^ u_input.c.x))));
    let var_2 = func_5(func_2(vec3<u32>(firstLeadingBit(~14968u), _wgslsmith_sub_u32(~89248u, u_input.a.x), _wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.b, 1u), 1u))), u_input.a);
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -648f);
    var_1 = var_2.b;
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = countOneBits(vec2<i32>(-2594i, u_input.c.x));
    global3 = u_input.c.yw;
    var var_0 = func_1();
    global2 = array<i32, 26>();
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-459f)))))), -1348f, -1139f);
    var var_2 = _wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(-1i, select(_wgslsmith_dot_vec4_i32(abs(u_input.c), vec4<i32>(global3.x, global1[_wgslsmith_index_u32(0u, 27u)], u_input.c.x, -2147483647i)), global1[_wgslsmith_index_u32(u_input.d.x, 27u)], true), -reverseBits(_wgslsmith_div_i32(-15514i, -2147483647i)), ~_wgslsmith_div_i32(_wgslsmith_add_i32(1i, -7591i), ~63936i)));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(vec4<u32>(firstLeadingBit(u_input.d.x) ^ 0u, u_input.b, 23083u, u_input.e | _wgslsmith_mult_u32(u_input.e, u_input.d.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(sign(-1291f)))))), u_input.e, -max(~var_0.a, global2[_wgslsmith_index_u32(~(~u_input.e), 26u)]), ~countOneBits(vec2<i32>(_wgslsmith_add_i32(var_0.a, 14924i), _wgslsmith_dot_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(1u, 26u)], 25050i, 2147483647i, 1i), vec4<i32>(2147483647i, -2147483647i, global2[_wgslsmith_index_u32(52362u, 26u)], 2147483647i)))));
}

