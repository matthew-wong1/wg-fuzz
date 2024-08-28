struct Struct_1 {
    a: vec2<bool>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: f32,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: vec2<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 23>;

var<private> global1: Struct_1 = Struct_1(vec2<bool>(false, false), vec4<u32>(25669u, 46197u, 0u, 1u));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: vec4<f32>, arg_1: f32) -> Struct_1 {
    return Struct_1(!(!(!(!global1.a))), global1.b);
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: vec3<f32>) -> Struct_1 {
    var var_0 = Struct_1(arg_1.a, _wgslsmith_add_vec4_u32(arg_1.b, ~abs(~vec4<u32>(global1.b.x, 4294967295u, 18601u, 23508u))));
    var_0 = func_2(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(560f, 740f, 1651f, 1008f))), vec4<f32>(-712f, _wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(438f * arg_2.x), _wgslsmith_f_op_f32(-431f + arg_2.x)))))), 438f);
    var var_1 = Struct_2(func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-640f, arg_2.x, -799f, 406f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.x, arg_2.x))).a.x & true, 1u, _wgslsmith_f_op_f32(arg_2.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -2093f))))), func_2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) * _wgslsmith_f_op_f32(trunc(-1794f))), 611f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1341f + arg_2.x)), arg_2.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(arg_2.x, arg_2.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-704f)), -1394f), var_0.a.x))), ~(~min(2147483647i, u_input.c.x)) < 0i);
    global0 = array<u32, 23>();
    global0 = array<u32, 23>();
    return arg_1;
}

fn func_4(arg_0: vec2<f32>, arg_1: i32, arg_2: Struct_1) -> f32 {
    let var_0 = !any(!global1.a);
    var var_1 = firstLeadingBit(~select(~(~vec4<i32>(u_input.c.x, u_input.a, 27586i, u_input.a)), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.e.x, 0i, 15911i, 1i), min(vec4<i32>(arg_1, 1i, arg_1, -7081i), vec4<i32>(1i, u_input.e.x, u_input.c.x, 3805i))), vec4<bool>(any(vec4<bool>(arg_2.a.x, true, global1.a.x, true)), true, !var_0, false)));
    let var_2 = arg_1;
    let var_3 = !vec2<bool>(true, any(select(select(vec4<bool>(false, false, arg_2.a.x, arg_2.a.x), vec4<bool>(var_0, false, global1.a.x, true), vec4<bool>(var_0, false, true, arg_2.a.x)), select(vec4<bool>(arg_2.a.x, global1.a.x, true, true), vec4<bool>(false, true, global1.a.x, arg_2.a.x), arg_2.a.x), select(vec4<bool>(false, var_0, false, arg_2.a.x), vec4<bool>(true, global1.a.x, false, var_0), global1.a.x))));
    var var_4 = Struct_2(true, 65309u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x + arg_0.x)), Struct_1(!vec2<bool>(!var_0, any(vec3<bool>(global1.a.x, arg_2.a.x, global1.a.x))), global1.b << (~(arg_2.b >> (arg_2.b % vec4<u32>(32u))) % vec4<u32>(32u))), false);
    return var_4.c;
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    global0 = array<u32, 23>();
    var var_0 = Struct_2(any(vec3<bool>(any(select(vec3<bool>(global1.a.x, global1.a.x, arg_2.a.x), vec3<bool>(true, arg_2.a.x, false), true)), true, !(true == global1.a.x))), ~(18894u & arg_1.b.x), _wgslsmith_div_f32(-278f, _wgslsmith_f_op_f32(select(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, arg_0.x, arg_2.a.x))), _wgslsmith_f_op_f32(step(arg_0.x, -182f)) >= _wgslsmith_f_op_f32(trunc(-696f))))), Struct_1(!func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, 479f, -1912f, arg_0.x)), -278f).a, _wgslsmith_clamp_vec4_u32(~(~arg_1.b), abs(vec4<u32>(33241u, u_input.d.x, global1.b.x, 10511u) ^ vec4<u32>(global1.b.x, global0[_wgslsmith_index_u32(1u, 23u)], 72696u, 4294967295u)), ~arg_2.b)), func_2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(func_4(vec2<f32>(arg_0.x, arg_0.x), -3405i, arg_2)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x + arg_0.x)), arg_0.x), -3198f).a.x);
    let var_1 = Struct_2(global1.a.x, arg_2.b.x, _wgslsmith_f_op_f32(f32(-1f) * -874f), func_3(~_wgslsmith_mult_i32(28641i, 1i) > (~2147483647i | ~u_input.c.x), arg_1, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-arg_0), _wgslsmith_f_op_vec3_f32(step(arg_0, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-306f, -1000f, 984f)))), true))), all(func_3(!arg_2.a.x, func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-583f, var_0.c, -277f, 282f)), _wgslsmith_f_op_f32(round(1091f))), vec3<f32>(-1000f, -1623f, _wgslsmith_f_op_f32(-arg_0.x))).a));
    global0 = array<u32, 23>();
    global0 = array<u32, 23>();
    return arg_2;
}

fn func_1(arg_0: vec3<i32>) -> Struct_1 {
    global1 = func_5(vec3<f32>(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(834f, 978f), vec2<f32>(1237f, 1853f))), _wgslsmith_sub_i32(u_input.c.x, arg_0.x) << (0u % 32u), func_3(global1.a.x, func_2(vec4<f32>(126f, 762f, -468f, -262f), 579f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-201f, -526f, 1913f))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-471f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -719f)))), _wgslsmith_f_op_f32(round(813f))), func_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-332f, -1047f, 120f, -102f) - vec4<f32>(478f, -262f, 1581f, 462f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) * vec4<f32>(614f, -1000f, 238f, 654f)), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(892f - 165f)))), Struct_1(!global1.a, vec4<u32>(~global0[_wgslsmith_index_u32(firstTrailingBit(u_input.d.x), 23u)], 71401u, 14221u, 4294967295u)));
    global1 = Struct_1(global1.a, vec4<u32>(u_input.b, ~(~0u), global1.b.x, firstTrailingBit(global0[_wgslsmith_index_u32(1u, 23u)] | global0[_wgslsmith_index_u32(global1.b.x, 23u)]) | 1u));
    global0 = array<u32, 23>();
    global0 = array<u32, 23>();
    return Struct_1(func_3(~(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(37843u, 23u)], 23u)] & u_input.b) >= ~50362u, func_3(true, Struct_1(!global1.a, vec4<u32>(0u, 10773u, global0[_wgslsmith_index_u32(44656u, 23u)], global0[_wgslsmith_index_u32(38479u, 23u)])), vec3<f32>(1f, 1f, 1f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(220f, 3111f, 689f) * vec3<f32>(-2299f, -1574f, 227f))))).a, _wgslsmith_mod_vec4_u32(~(vec4<u32>(34338u, 2905u, 4294967295u, u_input.b) << (~vec4<u32>(1u, 33763u, global0[_wgslsmith_index_u32(1u, 23u)], global1.b.x) % vec4<u32>(32u))), global1.b));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1(u_input.e);
    var var_0 = u_input.a;
    var_0 = _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(u_input.e, vec3<i32>(-32370i, 0i, u_input.c.x)), vec3<i32>(u_input.c.x, _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.e.x, u_input.c.x), u_input.c), u_input.a) << (1u % 32u), u_input.c.x));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(f32(-1f) * -1541f)));
    let var_2 = _wgslsmith_div_u32(_wgslsmith_sub_u32(0u, func_1(~vec3<i32>(-40085i, 0i, u_input.c.x)).b.x), 40281u);
    let var_3 = _wgslsmith_f_op_f32(sign(253f));
    var var_4 = 2314f;
    var var_5 = all(global1.a);
    let x = u_input.a;
    s_output = StorageBuffer(global1.b.zzw);
}

