struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: vec3<bool>,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec2<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: i32,
    d: vec3<u32>,
    e: vec2<f32>,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 12> = array<vec4<f32>, 12>(vec4<f32>(-967f, -1816f, -1781f, 1205f), vec4<f32>(825f, -727f, -320f, -321f), vec4<f32>(2868f, 694f, -495f, -318f), vec4<f32>(-1068f, -256f, 1000f, -1235f), vec4<f32>(-127f, -123f, 1385f, 573f), vec4<f32>(-636f, 732f, -1260f, -403f), vec4<f32>(883f, 225f, 1378f, 800f), vec4<f32>(-2033f, 952f, -362f, -1000f), vec4<f32>(-1308f, -176f, 328f, -1388f), vec4<f32>(-1255f, -1854f, -135f, 429f), vec4<f32>(896f, 737f, -906f, 947f), vec4<f32>(385f, 2173f, 311f, 326f));

var<private> global1: Struct_4;

var<private> global2: Struct_5 = Struct_5(Struct_2(Struct_1(vec4<i32>(12289i, -32921i, 1008i, 2147483647i), -50853i, vec3<bool>(true, true, false), 1868f, true), 39754u, Struct_1(vec4<i32>(71324i, -1i, -1i, 2147483647i), 43024i, vec3<bool>(true, false, false), -377f, false), vec3<f32>(-699f, 759f, -355f)));

var<private> global3: array<vec3<bool>, 30> = array<vec3<bool>, 30>(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: u32, arg_1: Struct_4, arg_2: vec3<i32>, arg_3: Struct_5) -> i32 {
    let var_0 = false;
    global0 = array<vec4<f32>, 12>();
    global1 = arg_1;
    global2 = arg_3;
    var var_1 = global1.a;
    return -1i;
}

fn func_2(arg_0: f32, arg_1: vec4<bool>) -> Struct_4 {
    var var_0 = Struct_1(global1.a.a.c.a, _wgslsmith_add_i32(func_3(global2.a.b, Struct_4(global1.a, global1.a.b, 1i, vec3<u32>(32798u, 22075u, u_input.a.x), vec2<f32>(global2.a.c.d, 1716f)), _wgslsmith_mod_vec3_i32(~global1.a.a.a.a.yyy, -global1.a.a.c.a.xww), Struct_5(global2.a)), global2.a.a.b & -4952i), !(!select(!global3[_wgslsmith_index_u32(global2.a.b, 30u)], arg_1.zyy, vec3<bool>(true, false, global2.a.c.e))), _wgslsmith_f_op_f32(f32(-1f) * -125f), global1.a.b.c.x);
    let var_1 = Struct_5(global1.a.a);
    global2 = var_1;
    let var_2 = global1.a;
    var var_3 = global1.a.a.d;
    return Struct_4(global1.a, var_2.b, min(-2147483647i, 18846i), global1.d, _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1010f, var_3.x))), 262f))));
}

fn func_1(arg_0: vec3<f32>, arg_1: i32, arg_2: Struct_1) -> i32 {
    var var_0 = 2823f;
    global1 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global2.a.c.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(896f * 1227f))))), vec4<bool>(!global2.a.c.c.x, 44559u > _wgslsmith_mod_u32(9785u, 1u ^ global1.a.a.b), !global1.a.b.e, false));
    global3 = array<vec3<bool>, 30>();
    let var_1 = any(vec3<bool>(!any(func_2(-685f, vec4<bool>(true, arg_2.e, arg_2.e, true)).b.c), ((arg_2.a.x ^ global1.a.b.a.x) >> (45516u % 32u)) >= _wgslsmith_mod_i32(abs(1i), _wgslsmith_dot_vec2_i32(arg_2.a.yz, vec2<i32>(-1i, global1.b.a.x))), func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.a.a.d + arg_0.x), _wgslsmith_f_op_f32(282f * arg_0.x)), !(!vec4<bool>(global2.a.c.e, global1.b.c.x, global2.a.a.e, global2.a.a.c.x))).b.e));
    var var_2 = func_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global2.a.c.d, 1145f)))))), !(!select(select(vec4<bool>(var_1, global1.b.c.x, global2.a.c.c.x, false), vec4<bool>(true, var_1, global1.b.c.x, false), vec4<bool>(false, true, arg_2.c.x, true)), vec4<bool>(false, true, var_1, global1.a.b.e), var_1)));
    return -firstLeadingBit(2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_5(global2.a);
    let var_0 = select(0i, func_1(_wgslsmith_div_vec3_f32(vec3<f32>(global2.a.c.d, _wgslsmith_f_op_f32(exp2(global1.a.a.a.d)), 1f), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.e.x, global1.b.d, global1.e.x) - vec3<f32>(245f, global1.e.x, global2.a.a.d))))), _wgslsmith_dot_vec4_i32(global1.b.a, _wgslsmith_mult_vec4_i32(vec4<i32>(global2.a.c.b, global1.a.b.b, 20459i, global1.c), vec4<i32>(global2.a.c.a.x, 1i, 17210i, 23473i) >> (vec4<u32>(global2.a.b, global1.a.a.b, 1u, global1.a.a.b) % vec4<u32>(32u)))), global1.a.a.a), global2.a.a.e);
    let var_1 = _wgslsmith_mult_vec3_i32(-(vec3<i32>(global2.a.a.b, ~2147483647i, -2147483647i) << (~firstTrailingBit(u_input.a) % vec3<u32>(32u))), -_wgslsmith_sub_vec3_i32(~firstLeadingBit(vec3<i32>(22636i, var_0, -1i)), vec3<i32>(global1.a.a.a.b & -6204i, ~1i, -11706i << (0u % 32u))));
    let var_2 = func_2(global1.e.x, select(vec4<bool>(false, all(vec2<bool>(global1.a.a.a.c.x, true)), false, global2.a.c.e), vec4<bool>(false, false, global1.b.c.x || true, true), vec4<bool>(global2.a.a.e, false, any(global1.a.a.a.c.xz), global1.a.a.c.e))).a;
    var var_3 = func_2(_wgslsmith_f_op_f32(abs(var_2.b.d)), vec4<bool>(func_2(_wgslsmith_f_op_f32(round(global2.a.a.d)), !select(vec4<bool>(true, global1.a.b.c.x, false, true), vec4<bool>(true, var_2.a.a.c.x, global1.a.a.a.c.x, false), vec4<bool>(var_2.b.c.x, global2.a.a.c.x, true, false))).b.c.x, func_2(642f, select(select(vec4<bool>(true, false, true, global2.a.a.e), vec4<bool>(var_2.b.c.x, global2.a.c.c.x, false, global1.b.e), global1.a.b.c.x), !vec4<bool>(global2.a.a.e, false, true, false), true)).a.a.a.c.x, true, global1.b.c.x)).a.a.c;
    var_3 = Struct_1(-(-global1.b.a ^ vec4<i32>(5410i, _wgslsmith_add_i32(var_2.c.x, -70669i), global1.c, 14080i)), _wgslsmith_mult_i32(-2147483647i, global2.a.a.b), !vec3<bool>(any(!global2.a.c.c.zy), true, false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_2.a.c.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-916f)) + _wgslsmith_f_op_f32(abs(var_3.d)))))), true);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(1i, -14738i)), -vec2<i32>(2446i, -81529i)), _wgslsmith_sub_i32(var_3.a.x, firstLeadingBit(var_1.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(629f, 520f, var_3.d) * func_2(var_3.d, !select(vec4<bool>(global1.b.e, var_2.b.c.x, true, false), vec4<bool>(false, global1.b.c.x, true, true), vec4<bool>(false, false, true, true))).a.a.d), vec4<i32>(_wgslsmith_add_i32(global1.a.c.x, ~(~var_0)), _wgslsmith_div_i32(-select(var_1.x, -2147483647i, var_2.a.c.c.x), 1i >> (_wgslsmith_dot_vec3_u32(u_input.a, u_input.a) % 32u)), func_3(global2.a.b, Struct_4(Struct_3(var_2.a, var_2.a.a, vec2<i32>(44038i, var_0)), func_2(-287f, vec4<bool>(global2.a.a.c.x, var_2.b.e, var_2.a.c.c.x, false)).a.b, _wgslsmith_sub_i32(global1.a.a.c.a.x, global2.a.c.a.x), func_2(462f, vec4<bool>(false, global2.a.a.e, false, var_3.e)).d, global2.a.d.zy), -_wgslsmith_clamp_vec3_i32(global2.a.c.a.zyz, global1.b.a.xwy, vec3<i32>(var_3.b, var_2.b.b, -6444i)), Struct_5(global2.a)), firstLeadingBit(_wgslsmith_sub_i32(var_0, var_0))));
}

