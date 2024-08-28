struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: bool,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
    c: vec4<bool>,
    d: Struct_1,
    e: f32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec4<f32>,
    c: Struct_2,
    d: Struct_1,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
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

var<private> global0: array<bool, 15>;

var<private> global1: Struct_3 = Struct_3(Struct_2(-13643i, 64869i, 26502u, Struct_1(2147483647i, vec4<i32>(-1i, 0i, 0i, i32(-2147483648)), vec3<i32>(7199i, i32(-2147483648), 9055i), true)), vec3<bool>(false, true, false), vec4<bool>(true, false, false, true), Struct_1(-28321i, vec4<i32>(2147483647i, 0i, 27805i, 2147483647i), vec3<i32>(i32(-2147483648), 31737i, -4077i), true), -1000f);

var<private> global2: array<vec3<i32>, 30>;

var<private> global3: array<vec4<bool>, 3> = array<vec4<bool>, 3>(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true));

var<private> global4: array<vec2<f32>, 23>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: bool, arg_1: bool) -> i32 {
    var var_0 = _wgslsmith_mult_u32(u_input.b.x, countOneBits(~24922u) & global1.a.c);
    var var_1 = global1.a.c;
    var var_2 = global1.a;
    let var_3 = Struct_3(global1.a, select(global1.c.zwz, global1.b, true), vec4<bool>(global1.a.d.d, !(!select(true, arg_1, false)), global1.a.d.d, arg_0), Struct_1(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(~var_2.d.b.wx, global1.a.d.c.yy), i32(-1i) * -48448i), ~reverseBits(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, 1i, u_input.a.x, 1i), var_2.d.b)), ~global1.d.b.wyz, all(!select(vec4<bool>(global1.b.x, true, global0[_wgslsmith_index_u32(var_2.c, 15u)], true), vec4<bool>(global0[_wgslsmith_index_u32(0u, 15u)], true, false, global0[_wgslsmith_index_u32(global1.a.c, 15u)]), global3[_wgslsmith_index_u32(1u, 3u)]))), global1.e);
    var var_4 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global1.e - global1.e), _wgslsmith_f_op_f32(var_3.e + global1.e), _wgslsmith_div_f32(var_3.e, var_3.e)))), vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-330f, 512f)))), var_3.e, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(501f, _wgslsmith_f_op_f32(367f + -238f)))))));
    return -10106i;
}

fn func_2(arg_0: Struct_3) -> vec2<bool> {
    global3 = array<vec4<bool>, 3>();
    var var_0 = arg_0;
    global3 = array<vec4<bool>, 3>();
    global1 = Struct_3(Struct_2(_wgslsmith_mult_i32(-(var_0.a.d.c.x | 11466i), arg_0.d.a), global1.a.b, ~global1.a.c, Struct_1(arg_0.a.b, firstLeadingBit(select(u_input.a, arg_0.d.b, var_0.c)), ~abs(vec3<i32>(2147483647i, u_input.a.x, arg_0.a.d.b.x)), all(!var_0.c.zw))), !(!var_0.b), select(select(!vec4<bool>(true, global1.d.d, false, false), select(global3[_wgslsmith_index_u32(var_0.a.c, 3u)], !global3[_wgslsmith_index_u32(13924u, 3u)], true), global1.c), vec4<bool>((var_0.d.d & false) || true, global1.b.x, !(!global0[_wgslsmith_index_u32(var_0.a.c, 15u)]), true), global1.c), global1.a.d, _wgslsmith_f_op_f32(-var_0.e));
    var var_1 = max(_wgslsmith_add_i32(u_input.a.x, i32(-1i) * -u_input.a.x), -_wgslsmith_mod_i32(select(-u_input.a.x, func_3(false, true), true), -arg_0.a.d.a ^ global1.a.b));
    return !select(!vec2<bool>(true, all(var_0.b)), global1.c.zw, arg_0.e == -1334f);
}

fn func_1(arg_0: i32, arg_1: bool) -> Struct_1 {
    var var_0 = ~select(u_input.b, u_input.b, select(vec2<bool>(global1.e > -2041f, !global1.a.d.d), func_2(Struct_3(Struct_2(arg_0, 17882i, global1.a.c, global1.d), global1.b, global1.c, Struct_1(arg_0, vec4<i32>(arg_0, u_input.a.x, u_input.a.x, -1254i), vec3<i32>(global1.a.b, u_input.a.x, global1.d.c.x), global0[_wgslsmith_index_u32(u_input.b.x, 15u)]), 657f)), global1.e != _wgslsmith_f_op_f32(global1.e + 1248f)));
    global4 = array<vec2<f32>, 23>();
    let var_1 = Struct_3(Struct_2(~u_input.a.x, reverseBits(8917i), 0u, global1.a.d), global1.c.yzz, global3[_wgslsmith_index_u32(var_0.x, 3u)], Struct_1(u_input.a.x, global1.a.d.b, _wgslsmith_sub_vec3_i32(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(34623u >> (u_input.b.x % 32u), ~var_0.x), 30u)], firstLeadingBit(vec3<i32>(-2147483647i, arg_0, arg_0))), false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.e)), _wgslsmith_f_op_f32(-global1.e)))));
    var var_2 = !(!(!vec2<bool>(global0[_wgslsmith_index_u32(var_0.x >> (14545u % 32u), 15u)], any(vec3<bool>(arg_1, global0[_wgslsmith_index_u32(var_0.x, 15u)], true)))));
    let var_3 = ~u_input.b;
    return var_1.a.d;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec3<i32>, 30>();
    let var_0 = func_1(~(~abs(-15525i) | max(global1.a.b, max(u_input.a.x, -16116i))), !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global1.e)) * -1000f) >= global1.e));
    let var_1 = vec3<u32>(4294967295u, ~0u, abs(~u_input.b.x));
    var var_2 = -global1.a.a | global1.d.b.x;
    global2 = array<vec3<i32>, 30>();
    let var_3 = global1.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(~0i, func_1(global1.a.d.c.x, var_0.d).b.x));
}

