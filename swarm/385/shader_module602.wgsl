struct Struct_1 {
    a: vec3<u32>,
    b: vec3<bool>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: u32 = 4294967295u;

var<private> global2: array<vec4<i32>, 4> = array<vec4<i32>, 4>(vec4<i32>(i32(-2147483648), 1i, 2147483647i, i32(-2147483648)), vec4<i32>(2147483647i, -1i, 2147483647i, -1i), vec4<i32>(0i, 1i, -1i, 0i), vec4<i32>(0i, -32364i, 0i, 2147483647i));

var<private> global3: Struct_3;

var<private> global4: array<vec4<i32>, 2>;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: u32) -> vec4<i32> {
    global1 = arg_0;
    global1 = ~_wgslsmith_sub_u32(~0u, _wgslsmith_sub_u32(u_input.a >> (u_input.a % 32u), abs(arg_0))) | (_wgslsmith_add_u32(10948u, (u_input.a | u_input.a) >> (~4294967295u % 32u)) ^ u_input.a);
    global3 = Struct_3(-reverseBits(vec4<i32>(-1i) * -vec4<i32>(global3.a.x, u_input.c.x, 1i, u_input.c.x)));
    let var_0 = -global2[_wgslsmith_index_u32(arg_0, 4u)];
    let var_1 = Struct_2(abs(u_input.c));
    return reverseBits(-(var_0 | _wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, global3.a.x, var_1.a.x, 1i), countOneBits(global2[_wgslsmith_index_u32(arg_0, 4u)]))));
}

fn func_2() -> Struct_3 {
    global3 = Struct_3(abs(func_3(1u)));
    var var_0 = u_input.b;
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1f - -758f)));
    let var_2 = vec3<u32>(~_wgslsmith_sub_u32(u_input.a, 1u), _wgslsmith_dot_vec4_u32(select(select(vec4<u32>(12238u, u_input.a, 27539u, u_input.a), min(vec4<u32>(u_input.a, 52785u, 41121u, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)), true), _wgslsmith_sub_vec4_u32(vec4<u32>(24990u, u_input.a, 4294967295u, u_input.a), vec4<u32>(1u, 10818u, u_input.a, u_input.a)), vec4<bool>(true, true, false, true)), ~vec4<u32>(17659u, ~1u, u_input.a, _wgslsmith_div_u32(u_input.a, 21475u))), u_input.a);
    let var_3 = any(select(select(select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true)), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), true), true), !select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false), false), vec4<bool>(true, true, true, true)), vec4<bool>(false, _wgslsmith_dot_vec2_i32(global3.a.zy, global3.a.xx) == _wgslsmith_mult_i32(global3.a.x, 69252i), false, any(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true)))), false));
    return Struct_3(~vec4<i32>(~(u_input.c.x << (76818u % 32u)), u_input.b, -u_input.b, _wgslsmith_mult_i32(max(global3.a.x, global3.a.x), _wgslsmith_div_i32(global3.a.x, u_input.c.x))));
}

fn func_4(arg_0: vec3<i32>, arg_1: f32, arg_2: Struct_3, arg_3: vec4<f32>) -> Struct_3 {
    var var_0 = Struct_1(_wgslsmith_mult_vec3_u32(vec3<u32>(reverseBits(u_input.a), 10978u, u_input.a) ^ vec3<u32>(1u, u_input.a | u_input.a, ~u_input.a), _wgslsmith_div_vec3_u32(min(vec3<u32>(35966u, u_input.a, u_input.a), ~vec3<u32>(u_input.a, 1093u, u_input.a)), ~abs(vec3<u32>(u_input.a, 4294967295u, 100170u)))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), _wgslsmith_f_op_vec3_f32(-arg_3.yxx));
    var var_1 = 0i;
    let var_2 = ~global3.a.x;
    var var_3 = false;
    let var_4 = Struct_2(_wgslsmith_add_vec2_i32(-(abs(global3.a.wy) | ~vec2<i32>(arg_2.a.x, 7914i)), arg_0.xx));
    return Struct_3((max(vec4<i32>(0i, 6289i, -2147483647i, 0i), ~vec4<i32>(global3.a.x, var_4.a.x, var_4.a.x, 2147483647i)) ^ -abs(vec4<i32>(arg_0.x, -16897i, arg_2.a.x, 4411i))) & _wgslsmith_add_vec4_i32(~vec4<i32>(arg_0.x, var_4.a.x, -10375i, arg_0.x), abs(vec4<i32>(arg_0.x, arg_2.a.x, -24815i, var_2))));
}

fn func_5(arg_0: u32, arg_1: vec4<u32>, arg_2: Struct_3) -> vec3<bool> {
    var var_0 = _wgslsmith_add_u32(arg_1.x, 4294967295u);
    global0 = 397f;
    let var_1 = vec3<u32>(4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, ~(~31469u)), reverseBits(~(arg_1.zy >> (vec2<u32>(arg_1.x, u_input.a) % vec2<u32>(32u))))), 34002u);
    global2 = array<vec4<i32>, 4>();
    let var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-977f, 1793f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1452f, -507f) * -690f), _wgslsmith_f_op_f32(sign(-2034f))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1428f, -434f, -1251f) - vec3<f32>(2196f, -100f, -1380f)) + vec3<f32>(-790f, 519f, 509f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1271f, 245f, 490f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, _wgslsmith_f_op_f32(1405f * -1164f), -1102f))));
    return !(!vec3<bool>(!any(vec3<bool>(false, false, true)), _wgslsmith_f_op_f32(991f + var_2.x) == -525f, true));
}

fn func_6(arg_0: vec3<bool>, arg_1: Struct_3) -> Struct_3 {
    var var_0 = func_2();
    var var_1 = false;
    var var_2 = vec3<bool>(all(select(vec4<bool>(false, !arg_0.x, true, true), select(vec4<bool>(true, arg_0.x, true, false), vec4<bool>(true, true, true, true), select(vec4<bool>(arg_0.x, true, true, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, false, false))), select(select(vec4<bool>(true, true, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, false, arg_0.x, true), false), !vec4<bool>(arg_0.x, false, false, arg_0.x), true))), arg_0.x, !arg_0.x);
    var_2 = !vec3<bool>(all(!vec3<bool>(true, var_2.x, var_2.x)), var_2.x, !(true && all(vec3<bool>(arg_0.x, false, arg_0.x))));
    global2 = array<vec4<i32>, 4>();
    return arg_1;
}

fn func_1(arg_0: vec4<u32>, arg_1: vec3<u32>) -> Struct_3 {
    var var_0 = vec2<u32>(arg_1.x, 4294967295u);
    var var_1 = _wgslsmith_add_u32(~u_input.a, ~arg_0.x);
    var var_2 = Struct_2(-u_input.c | ~u_input.c);
    global1 = 1u;
    global4 = array<vec4<i32>, 2>();
    return func_6(select(func_5(_wgslsmith_mod_u32(~4294967295u, _wgslsmith_div_u32(4294967295u, u_input.a)), _wgslsmith_sub_vec4_u32(~vec4<u32>(0u, var_0.x, 21670u, var_0.x), vec4<u32>(arg_0.x, 0u, 11116u, 0u) << (vec4<u32>(u_input.a, u_input.a, 0u, 55023u) % vec4<u32>(32u))), func_4(~global3.a.zwz, -547f, func_2(), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-849f, -944f, -1334f, -1000f))))), !vec3<bool>(false, true, all(vec2<bool>(false, true))), true || ((i32(-1i) * -32283i) == select(67993i, u_input.b, true))), Struct_3(_wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(global2[_wgslsmith_index_u32(var_0.x, 4u)], global4[_wgslsmith_index_u32(u_input.a, 2u)]) & _wgslsmith_sub_vec4_i32(global3.a, vec4<i32>(global3.a.x, 40282i, u_input.b, global3.a.x)), global3.a, _wgslsmith_clamp_vec4_i32(vec4<i32>(-32499i, u_input.b, global3.a.x, global3.a.x), vec4<i32>(-21516i, 2147483647i, 39305i, 1i) << (arg_0 % vec4<u32>(32u)), ~vec4<i32>(-1i, -2147483647i, global3.a.x, var_2.a.x)))));
}

fn func_7(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec4<bool>) -> Struct_1 {
    var var_0 = arg_3.yx;
    let var_1 = (u_input.a | 14115u) | 40094u;
    let var_2 = arg_2;
    global2 = array<vec4<i32>, 4>();
    var var_3 = global3.a.x;
    return Struct_1(~(~(~vec3<u32>(u_input.a, 0u, 125793u)) ^ abs(countOneBits(vec3<u32>(4294967295u, 0u, u_input.a)))), arg_3.xzw, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(565f, -427f, 164f) + vec3<f32>(-1000f, -2358f, -170f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-752f, -2029f, -295f)), select(vec3<bool>(true, var_0.x, true), arg_3.wwy, true))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3.a.xxz;
    var var_1 = u_input.a;
    var var_2 = ~(~max(~vec2<u32>(0u, u_input.a), vec2<u32>(_wgslsmith_mult_u32(u_input.a, 94654u), 1u)));
    global4 = array<vec4<i32>, 2>();
    var var_3 = func_7(func_1(vec4<u32>(var_2.x, 13839u, u_input.a, ~5500u | (31619u << (u_input.a % 32u))), vec3<u32>(~9399u, var_2.x, ~(~var_2.x))), Struct_2(abs(abs(~vec2<i32>(global3.a.x, u_input.b)))), Struct_2(func_6(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), Struct_3(-vec4<i32>(u_input.b, 2147483647i, var_0.x, 84458i))).a.wz), vec4<bool>(false, true, any(vec3<bool>(true, select(false, false, false), true)), any(vec4<bool>(true, any(vec2<bool>(false, false)), false, var_2.x == var_2.x))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a);
}

