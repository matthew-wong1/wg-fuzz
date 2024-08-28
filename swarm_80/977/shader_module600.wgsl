struct Struct_1 {
    a: u32,
    b: f32,
    c: vec3<u32>,
    d: bool,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: u32,
    c: bool,
    d: vec4<bool>,
    e: i32,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: bool,
    d: Struct_2,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec3<i32>(-1616i, 0i, -47046i), 47126u, true, vec4<bool>(true, false, true, false), -25323i);

var<private> global1: array<vec2<f32>, 14>;

var<private> global2: array<bool, 25> = array<bool, 25>(false, true, false, false, false, true, false, false, false, true, true, true, true, false, false, true, false, true, false, true, true, true, true, true, false);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> vec3<u32> {
    global1 = array<vec2<f32>, 14>();
    let var_0 = Struct_3(-global0.a, u_input.a, !any(!select(vec2<bool>(global0.c, true), vec2<bool>(false, false), false)), !(!global0.d), global0.a.x);
    let var_1 = -(~2147483647i);
    var var_2 = Struct_1(var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1117f - -2550f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * 528f)))), vec3<u32>(~(1479u >> (global0.b % 32u)) >> ((1u & u_input.b.x) % 32u), u_input.b.x, ~var_0.b), !all(vec3<bool>(global2[_wgslsmith_index_u32(52608u, 25u)] || false, global0.c, false)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -861f, _wgslsmith_f_op_f32(-449f * -1599f), _wgslsmith_f_op_f32(select(-922f, 563f, global0.d.x))) + vec4<f32>(_wgslsmith_div_f32(-1172f, 1078f), 1262f, 520f, -597f)) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-977f, 1000f, -793f, -453f) + vec4<f32>(1274f, -307f, 148f, 318f)))))));
    var_2 = Struct_1(~4294967295u, var_2.e.x, vec3<u32>(~global0.b ^ (33602u | u_input.a), var_0.b, 1u), !(global0.b <= u_input.a), var_2.e);
    return _wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(~firstTrailingBit(vec3<u32>(u_input.b.x, 59228u, var_0.b)), min(countOneBits(vec3<u32>(1u, global0.b, u_input.b.x)), var_2.c) ^ min(var_2.c, var_2.c)), vec3<u32>((291u | select(4294967295u, var_0.b, true)) >> (~1u % 32u), var_0.b, ~(~(~var_0.b))));
}

fn func_2(arg_0: vec2<i32>) -> u32 {
    var var_0 = Struct_2(Struct_1(~(4294967295u << (0u % 32u)), _wgslsmith_div_f32(2218f, 433f), ~vec3<u32>(~32173u, u_input.b.x, ~1u), (global0.d.x || global2[_wgslsmith_index_u32(~global0.b, 25u)]) | (_wgslsmith_clamp_i32(arg_0.x, 0i, -54833i) < global0.e), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1156f, 339f, -1003f, -224f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-840f, -998f, -883f, 930f))) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(1228f, 1747f, -669f, -826f) + vec4<f32>(-282f, -163f, -1000f, -471f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(692f, -378f, 751f, 1000f) - vec4<f32>(-1050f, 1000f, -1000f, 1591f)))))));
    let var_1 = Struct_2(Struct_1(1u, _wgslsmith_f_op_f32(-1f), func_3() | var_0.a.c, !(!(80870u != global0.b)), _wgslsmith_f_op_vec4_f32(select(var_0.a.e, var_0.a.e, all(select(global0.d.yy, global0.d.zy, var_0.a.d))))));
    return u_input.a;
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: bool) -> Struct_3 {
    global0 = Struct_3(~global0.a, func_2(-max(global0.a.zz, ~vec2<i32>(global0.a.x, global0.a.x))), true, !(!select(!vec4<bool>(false, arg_2, global2[_wgslsmith_index_u32(global0.b, 25u)], arg_2), select(global0.d, global0.d, arg_2), -2147483647i != global0.a.x)), abs(-2147483647i));
    var var_0 = true;
    global1 = array<vec2<f32>, 14>();
    global1 = array<vec2<f32>, 14>();
    global1 = array<vec2<f32>, 14>();
    return Struct_3(vec3<i32>(global0.a.x, max(_wgslsmith_mult_i32(global0.a.x >> (54692u % 32u), countOneBits(13976i)), _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(13097i, -2147483647i, global0.e, 56257i), vec4<i32>(759i, -1i, 24886i, -1i)), countOneBits(2147483647i))), global0.a.x), global0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-887f))) <= 146f, vec4<bool>(true, false, _wgslsmith_f_op_f32(sign(-444f)) <= -986f, _wgslsmith_sub_u32(firstTrailingBit(u_input.b.x), arg_0) > _wgslsmith_dot_vec4_u32(~vec4<u32>(37018u, 4294967295u, 1u, 1u), ~vec4<u32>(38674u, global0.b, 0u, global0.b))), -global0.e >> (~(~33144u) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(1u, 11960u, any(select(select(global0.d.yyx, vec3<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 25u)], global2[_wgslsmith_index_u32(u_input.b.x, 25u)], global2[_wgslsmith_index_u32(global0.b, 25u)]), vec3<bool>(false, global2[_wgslsmith_index_u32(u_input.a, 25u)], false)), global0.d.xyy, select(!vec3<bool>(global2[_wgslsmith_index_u32(52282u, 25u)], true, true), select(global0.d.xww, vec3<bool>(global2[_wgslsmith_index_u32(u_input.a, 25u)], false, global2[_wgslsmith_index_u32(1u, 25u)]), global2[_wgslsmith_index_u32(global0.b, 25u)]), vec3<bool>(global2[_wgslsmith_index_u32(15120u, 25u)], global0.c, false)))));
    var var_1 = !func_1(1u, max((93199u & u_input.a) | (30744u >> (var_0.b % 32u)), max(var_0.b | var_0.b, _wgslsmith_add_u32(4294967295u, var_0.b))), ~4294967295u <= u_input.b.x).d.yw;
    global0 = Struct_3(vec3<i32>(firstTrailingBit(_wgslsmith_add_i32(abs(1i), countOneBits(global0.e))), 2147483647i, global0.a.x), ~1u, true, !vec4<bool>(all(func_1(var_0.b, u_input.b.x, global2[_wgslsmith_index_u32(1u, 25u)]).d.yz), !(!global2[_wgslsmith_index_u32(5632u, 25u)]), var_0.c, false), _wgslsmith_mult_i32(firstLeadingBit(abs(global0.e)), _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(global0.e, var_0.e), func_1(63625u, 4294967295u, false).a.yz), min(global0.a.x, -34403i) ^ -1i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1670f, -369f, 1000f) * vec3<f32>(-516f, 492f, 1481f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -266f, 252f))) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1357f, -825f, 389f), vec3<f32>(-396f, 654f, -1115f))))))), var_0.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(537f + -632f) * _wgslsmith_f_op_f32(step(499f, 153f)))))));
}

