struct Struct_1 {
    a: f32,
    b: i32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec3<bool>,
    c: Struct_2,
    d: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: Struct_3,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 24> = array<vec4<bool>, 24>(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false));

var<private> global1: f32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_4) -> f32 {
    var var_0 = arg_1.a;
    global0 = array<vec4<bool>, 24>();
    global0 = array<vec4<bool>, 24>();
    var_0 = arg_1.a;
    global1 = 1124f;
    return _wgslsmith_f_op_f32(ceil(896f));
}

fn func_2() -> Struct_4 {
    let var_0 = u_input.a.x ^ 88849u;
    global0 = array<vec4<bool>, 24>();
    let var_1 = true;
    global0 = array<vec4<bool>, 24>();
    global0 = array<vec4<bool>, 24>();
    return Struct_4(Struct_1(_wgslsmith_f_op_f32(func_3(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, 0u, var_0, 6791u) >> (vec4<u32>(4294967295u, 0u, 0u, 28714u) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, 1249u, 4294967295u, 61398u), vec4<u32>(u_input.a.x, 4294967295u, var_0, u_input.a.x))), Struct_4(Struct_1(-1237f, -31654i, vec4<i32>(-3494i, -7674i, -36878i, -2147483647i)), ~38887u, Struct_3(vec2<bool>(true, var_1), vec3<bool>(var_1, true, true), Struct_2(Struct_1(597f, -46804i, vec4<i32>(26741i, -2147483647i, 2147483647i, 2147483647i))), var_1), !vec2<bool>(var_1, true)))), -68387i, -(_wgslsmith_clamp_vec4_i32(vec4<i32>(40407i, 4122i, 6491i, 0i), vec4<i32>(1i, 25236i, 2147483647i, 41604i), vec4<i32>(2147483647i, 15396i, -2147483647i, 46851i)) & ~vec4<i32>(-22518i, 7608i, 2147483647i, 17485i))), ~45099u, Struct_3(vec2<bool>(any(vec3<bool>(true, false, false)), true), vec3<bool>(true, true, false), Struct_2(Struct_1(_wgslsmith_f_op_f32(435f + -413f), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 34694i, 0i, -2147483647i), vec4<i32>(-216i, -2147483647i, -19401i, -1i)), abs(vec4<i32>(-1i, 10260i, -2147483647i, 36562i)))), !(!var_1 | any(vec3<bool>(true, true, var_1)))), vec2<bool>(77267u < firstTrailingBit(var_0), var_1));
}

fn func_1(arg_0: bool, arg_1: vec4<bool>) -> vec4<i32> {
    let var_0 = func_2();
    var var_1 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(exp2(var_0.a.a)), _wgslsmith_f_op_f32(-1485f - var_0.c.c.a.a), -1200f), vec3<f32>(1251f, 1000f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a.a, var_0.c.c.a.a))), arg_1.x & false))));
    var var_2 = var_0.d;
    global0 = array<vec4<bool>, 24>();
    var var_3 = ~(~var_0.a.c.x);
    return var_0.a.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(-791f, ~(-37580i), _wgslsmith_mult_vec4_i32(func_1(true, vec4<bool>(true, any(global0[_wgslsmith_index_u32(72226u, 24u)]), true, true)), ~vec4<i32>(-26400i, -1i, _wgslsmith_mult_i32(45531i, -34052i), _wgslsmith_mod_i32(-2147483647i, -2147483647i))));
    var var_1 = func_2().c;
    var var_2 = Struct_1(var_0.a, var_1.c.a.c.x, var_0.c);
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.c.a.a, 665f, 1288f) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-197f, 775f, var_1.c.a.a), vec3<f32>(851f, -590f, var_1.c.a.a), true)))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1133f, 692f, 323f), vec3<f32>(1191f, 619f, var_1.c.a.a)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1302f, -917f, var_1.c.a.a)))) + vec3<f32>(_wgslsmith_f_op_f32(func_3(vec4<u32>(u_input.a.x, 1u, u_input.a.x, u_input.a.x), Struct_4(Struct_1(1000f, -51248i, vec4<i32>(7757i, -2147483647i, var_0.b, 2147483647i)), 8034u, Struct_3(var_1.b.xy, var_1.b, var_1.c, var_1.d), vec2<bool>(true, var_1.b.x)))), -1072f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1019f)) + _wgslsmith_div_f32(var_2.a, var_1.c.a.a)))));
    var_1 = Struct_3(vec2<bool>(var_1.a.x, any(func_2().d)), vec3<bool>(!all(vec4<bool>(var_1.a.x, true, var_1.b.x, true)), var_1.a.x && any(global0[_wgslsmith_index_u32(u_input.a.x, 24u)]), !func_2().c.d), var_1.c, max(-7459i, reverseBits(_wgslsmith_add_i32(var_1.c.a.c.x, var_2.c.x))) <= 2147483647i);
    let var_4 = var_2.a;
    var var_5 = func_2().c;
    var var_6 = -_wgslsmith_mult_vec3_i32(var_0.c.wyy, _wgslsmith_sub_vec3_i32(vec3<i32>(var_1.c.a.c.x, ~var_1.c.a.c.x, -19507i), _wgslsmith_add_vec3_i32(var_5.c.a.c.wwy, var_2.c.yww | vec3<i32>(var_1.c.a.b, -1i, 2147483647i))));
    let var_7 = _wgslsmith_clamp_u32(u_input.a.x, select(~abs(u_input.a.x & u_input.a.x), select(~_wgslsmith_dot_vec2_u32(u_input.a.xx, vec2<u32>(u_input.a.x, u_input.a.x)), ~u_input.a.x, var_1.d), !var_1.a.x || var_5.b.x), _wgslsmith_sub_u32(u_input.a.x, ~u_input.a.x) >> (_wgslsmith_mod_u32(~_wgslsmith_mod_u32(4094u, u_input.a.x), ~30534u) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a, _wgslsmith_f_op_f32(var_2.a - _wgslsmith_f_op_f32(-var_1.c.a.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.c.a.a * -1346f) * var_1.c.a.a), _wgslsmith_f_op_f32(abs(var_0.a))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1198f, 903f, var_2.a, var_3.x)))), 43699i, vec3<i32>(var_2.c.x, min(_wgslsmith_dot_vec4_i32(func_2().c.c.a.c, var_5.c.a.c), 1i), _wgslsmith_mod_i32(~(~var_5.c.a.b), -func_1(true, global0[_wgslsmith_index_u32(u_input.a.x, 24u)]).x)));
}

