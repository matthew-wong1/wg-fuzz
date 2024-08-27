struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 7> = array<vec2<bool>, 7>(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false));

var<private> global1: i32;

var<private> global2: f32 = -2873f;

var<private> global3: array<Struct_1, 16>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec2<u32>) -> u32 {
    global3 = array<Struct_1, 16>();
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -942f);
    global1 = ~12557i << (1u % 32u);
    let var_1 = Struct_1(all(vec4<bool>(true, true, true, true)), firstTrailingBit(vec2<i32>(select(arg_0.x, -36846i, all(global0[_wgslsmith_index_u32(4294967295u, 7u)])), (36750i >> (arg_1.x % 32u)) << ((arg_1.x >> (arg_1.x % 32u)) % 32u))), ~_wgslsmith_div_vec2_i32(u_input.d, vec2<i32>(~arg_0.x, 2203i)), select(global0[_wgslsmith_index_u32(14397u, 7u)], select(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_1.x, arg_1.x), 7u)], vec2<bool>(var_0 >= var_0, true), true), !((50957i != arg_0.x) && false)));
    global0 = array<vec2<bool>, 7>();
    return arg_1.x;
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: vec3<f32>, arg_3: f32) -> vec4<bool> {
    let var_0 = arg_0.b.x;
    var var_1 = vec4<bool>(true, true, !select(!(!arg_0.a), any(vec4<bool>(arg_0.a, true, false, arg_0.d.x)), !(arg_3 != arg_2.x)), true & arg_0.d.x);
    global2 = arg_3;
    let var_2 = Struct_1(any(!vec4<bool>(true, any(vec4<bool>(true, arg_0.d.x, arg_0.d.x, arg_0.a)), all(var_1.wxz), select(var_1.x, false, false))), u_input.b.zy >> (countOneBits(_wgslsmith_div_vec2_u32(vec2<u32>(21214u, 0u), select(vec2<u32>(0u, 1u), vec2<u32>(1u, 4294967295u), vec2<bool>(var_1.x, var_1.x)))) % vec2<u32>(32u)), vec2<i32>(arg_0.b.x, firstTrailingBit(-9318i & u_input.a)), var_1.yz);
    var_1 = select(vec4<bool>(any(var_1.xw), !any(select(vec4<bool>(true, arg_0.d.x, var_2.a, false), vec4<bool>(var_1.x, arg_0.d.x, false, true), arg_0.a)), true, var_2.d.x), !select(vec4<bool>(true, true, true, true), select(!vec4<bool>(var_1.x, true, var_2.a, true), !vec4<bool>(var_2.d.x, var_2.d.x, var_1.x, var_1.x), vec4<bool>(true, arg_0.a, arg_0.d.x, false)), !(!vec4<bool>(arg_0.d.x, true, var_1.x, true))), var_2.d.x);
    return vec4<bool>(-2147483647i < var_2.c.x, true, false, !var_2.a);
}

fn func_2(arg_0: f32, arg_1: vec3<bool>, arg_2: i32, arg_3: i32) -> vec4<f32> {
    var var_0 = global3[_wgslsmith_index_u32(1u, 16u)];
    global3 = array<Struct_1, 16>();
    let var_1 = select(func_4(global3[_wgslsmith_index_u32(~func_3(select(vec4<i32>(arg_3, -1i, 0i, u_input.b.x), vec4<i32>(2147483647i, u_input.b.x, var_0.b.x, u_input.c), true), ~vec2<u32>(8783u, 4294967295u)), 16u)], -abs(1i), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, 187f, arg_0)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1330f, arg_0, -452f) + vec3<f32>(1078f, arg_0, arg_0))), select(arg_1, arg_1, true))), 1000f), vec4<bool>(14196i >= arg_2, true, arg_1.x, any(arg_1)), !(!func_4(Struct_1(arg_1.x, vec2<i32>(var_0.b.x, arg_2), vec2<i32>(23326i, u_input.d.x), global0[_wgslsmith_index_u32(24137u, 7u)]), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, -2147483647i, var_0.b.x, -27802i), vec4<i32>(arg_3, var_0.c.x, arg_2, -22161i)), vec3<f32>(arg_0, -980f, 457f), -847f)));
    let var_2 = (~vec4<u32>(min(54311u, 4294967295u), ~1u, 1u, ~0u) | _wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 1u, 21123u, 24154u), vec4<u32>(13725u, 0u, 1u, 32631u), vec4<u32>(0u, 4294967295u, 1u, 66630u)) >> (vec4<u32>(4294967295u, 0u, 17210u, 4294967295u) % vec4<u32>(32u)), ~vec4<u32>(1u, 1u, 1u, 1u))) | vec4<u32>(countOneBits(1u), ~_wgslsmith_sub_u32(~10245u, abs(0u)), 4294967295u, min(1u, ~(~61193u)));
    let var_3 = ~u_input.b;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0, 248f, arg_0, arg_0), vec4<f32>(arg_0, arg_0, 1662f, arg_0), var_1)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(915f, -517f, 2660f, 297f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0, 125f, 196f, 322f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1074f, -1441f, 883f, arg_0))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(1109f, arg_0, 950f, arg_0), vec4<f32>(arg_0, 1226f, arg_0, -1000f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1627f, arg_0, arg_0, 570f), vec4<f32>(222f, arg_0, -405f, arg_0))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-2969f, arg_0, 1213f, arg_0), vec4<f32>(arg_0, arg_0, -853f, arg_0), var_1))))));
}

fn func_5(arg_0: i32, arg_1: vec4<f32>) -> vec4<u32> {
    let var_0 = global3[_wgslsmith_index_u32(_wgslsmith_div_u32(~1u, _wgslsmith_add_u32(_wgslsmith_clamp_u32(select(0u >> (1u % 32u), 1u, true), _wgslsmith_dot_vec4_u32(vec4<u32>(36302u, 34305u, 67585u, 32661u), vec4<u32>(1u, 1u, 1u, 1u)), select(4294967295u, _wgslsmith_add_u32(42274u, 13434u), false)), ~(~(~36234u)))), 16u)];
    let var_1 = Struct_1(!var_0.a, u_input.d, -(~countOneBits(u_input.d)), vec2<bool>(min(37619u, ~1u) >= ~_wgslsmith_clamp_u32(17878u, 70999u, 53331u), false));
    global1 = -52240i;
    global0 = array<vec2<bool>, 7>();
    return ~vec4<u32>(~_wgslsmith_div_u32(~0u, _wgslsmith_div_u32(4294967295u, 31364u)), _wgslsmith_clamp_u32(1u, 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), select(vec3<u32>(9984u, 26549u, 12811u), vec3<u32>(59206u, 37033u, 0u), true))), _wgslsmith_div_u32(select(_wgslsmith_dot_vec3_u32(vec3<u32>(89177u, 39606u, 64440u), vec3<u32>(8190u, 1u, 89327u)), select(4294967295u, 4294967295u, var_0.a), var_1.a), ~4294967295u), ~(~_wgslsmith_add_u32(1860u, 89323u)));
}

fn func_1(arg_0: Struct_1, arg_1: f32) -> Struct_1 {
    var var_0 = func_5(_wgslsmith_add_i32(u_input.d.x, ~(~274i)) & u_input.a, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_1, -832f, -110f, arg_1))), _wgslsmith_div_vec4_f32(vec4<f32>(-1195f, -776f, 179f, -346f), vec4<f32>(-144f, arg_1, arg_1, 843f)), true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(arg_1, vec3<bool>(arg_0.d.x, arg_0.d.x, true), arg_0.b.x, -50908i))))))));
    var var_1 = vec2<bool>(true, true);
    global3 = array<Struct_1, 16>();
    global0 = array<vec2<bool>, 7>();
    global3 = array<Struct_1, 16>();
    return global3[_wgslsmith_index_u32(~func_3(-(vec4<i32>(u_input.e, 31936i, u_input.b.x, arg_0.c.x) >> (~vec4<u32>(var_0.x, var_0.x, var_0.x, 1u) % vec4<u32>(32u))), var_0.xx), 16u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var_0 = true;
    global1 = u_input.e;
    var_0 = select(true, (_wgslsmith_dot_vec3_i32(abs(u_input.b), vec3<i32>(-18766i, u_input.d.x, u_input.d.x)) <= u_input.d.x) == all(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), false);
    var var_1 = func_1(global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(~357u, select(1u, 95835u, false) << (1u % 32u)), 16u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(1284f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(5024i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -249f) + _wgslsmith_f_op_f32(f32(-1f) * -711f)), _wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(~vec2<u32>(0u, 1u), _wgslsmith_mult_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(1u, 46874u))), _wgslsmith_div_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(~1u, 1u))));
}

