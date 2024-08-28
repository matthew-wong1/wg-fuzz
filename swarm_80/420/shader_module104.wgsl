struct Struct_1 {
    a: vec2<bool>,
    b: vec3<bool>,
    c: vec3<u32>,
    d: i32,
    e: u32,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: bool,
    d: vec4<u32>,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec3<u32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<vec3<f32>, 24> = array<vec3<f32>, 24>(vec3<f32>(356f, -401f, -1028f), vec3<f32>(-725f, -629f, 397f), vec3<f32>(465f, -465f, -240f), vec3<f32>(-555f, 1298f, -1000f), vec3<f32>(261f, 335f, 2009f), vec3<f32>(-120f, 1176f, -266f), vec3<f32>(1004f, -466f, 1000f), vec3<f32>(271f, -141f, -1644f), vec3<f32>(1180f, -1079f, -279f), vec3<f32>(1000f, -666f, 772f), vec3<f32>(-138f, -318f, -628f), vec3<f32>(-1097f, 901f, -1000f), vec3<f32>(118f, -311f, 179f), vec3<f32>(-476f, -1000f, 749f), vec3<f32>(536f, -621f, -956f), vec3<f32>(1000f, 2709f, 141f), vec3<f32>(2543f, 1373f, 313f), vec3<f32>(-1645f, -596f, -1349f), vec3<f32>(-2447f, 1356f, 912f), vec3<f32>(-1000f, 1000f, -194f), vec3<f32>(801f, -373f, -715f), vec3<f32>(246f, 1060f, 687f), vec3<f32>(1000f, -373f, -726f), vec3<f32>(913f, -830f, -186f));

var<private> global2: array<i32, 17>;

var<private> global3: vec4<i32>;

var<private> global4: vec2<bool> = vec2<bool>(true, false);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3) -> u32 {
    return _wgslsmith_mult_u32(reverseBits(~abs(select(arg_0.a.x, 0u, global4.x))), 4294967295u);
}

fn func_2(arg_0: vec2<f32>, arg_1: vec2<bool>) -> Struct_2 {
    global2 = array<i32, 17>();
    var var_0 = Struct_3(~vec2<u32>(0u << (1u % 32u), func_3(Struct_3(vec2<u32>(22095u, 22317u)))));
    let var_1 = global3.x;
    let var_2 = ~vec4<u32>(_wgslsmith_mod_u32(~_wgslsmith_mod_u32(var_0.a.x, 4294967295u), _wgslsmith_mod_u32(firstLeadingBit(0u), var_0.a.x)), ~firstTrailingBit(var_0.a.x) & func_3(Struct_3(vec2<u32>(var_0.a.x, var_0.a.x))), var_0.a.x, _wgslsmith_mod_u32(1u, var_0.a.x));
    let var_3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, arg_0.x, arg_0.x, 969f) + vec4<f32>(-615f, 756f, arg_0.x, -1323f)) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, 465f, 1088f, 141f) - vec4<f32>(-2949f, 1165f, -515f, 405f)), _wgslsmith_div_vec4_f32(vec4<f32>(-515f, arg_0.x, arg_0.x, arg_0.x), vec4<f32>(-1830f, arg_0.x, -1140f, arg_0.x))))))), vec4<f32>(512f, _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-621f - arg_0.x)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-475f, 776f) * _wgslsmith_f_op_f32(-arg_0.x))))), !(!(!vec4<bool>(arg_1.x, true, global4.x, arg_1.x)))));
    return Struct_2(var_0.a.x, !any(vec4<bool>(true | global4.x, arg_1.x || arg_1.x, select(arg_1.x, arg_1.x, global4.x), arg_1.x)), true, var_2);
}

fn func_4(arg_0: Struct_2, arg_1: f32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(315f)), 524f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1246f)))), -220f));
    global4 = !(!(!vec2<bool>(global4.x, !arg_0.c)));
    var var_1 = arg_0.d.x;
    let var_2 = global4.x == !arg_0.b;
    var_1 = 86456u;
    return Struct_2(_wgslsmith_sub_u32(~abs(_wgslsmith_mult_u32(23464u, 12031u)), firstLeadingBit(func_3(Struct_3(vec2<u32>(82607u, 1u))))), global4.x, true, arg_0.d);
}

fn func_1() -> bool {
    var var_0 = func_4(func_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-601f + 770f)), 302f), select(select(!vec2<bool>(true, global4.x), select(vec2<bool>(true, false), vec2<bool>(global4.x, global4.x), global4.x), global4.x & global4.x), vec2<bool>(global4.x, !global4.x), all(!vec2<bool>(global4.x, false)))), -434f);
    var var_1 = 34706u;
    let var_2 = Struct_2(var_0.d.x, var_0.c, !global4.x, _wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(var_0.d, vec4<u32>(var_0.a, firstTrailingBit(4294967295u), ~19273u, var_0.d.x)), countOneBits(vec4<u32>(4294967295u, var_0.a >> (var_0.a % 32u), func_3(Struct_3(var_0.d.ww)), 87873u))));
    var var_3 = 1u;
    return global4.x;
}

fn func_5(arg_0: Struct_2, arg_1: bool, arg_2: vec3<bool>, arg_3: Struct_1) -> i32 {
    let var_0 = arg_3;
    let var_1 = global3.x;
    let var_2 = vec2<i32>(abs(11792i & (_wgslsmith_dot_vec4_i32(vec4<i32>(55278i, -2147483647i, arg_3.d, 2147483647i), vec4<i32>(global2[_wgslsmith_index_u32(1u, 17u)], -16712i, global3.x, global3.x)) & -44313i)), abs(12808i));
    var var_3 = arg_0;
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-873f, _wgslsmith_f_op_f32(select(928f, 2053f, false))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -826f), _wgslsmith_f_op_f32(1000f - -207f), !arg_3.b.x)))));
    return var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, _wgslsmith_mult_u32(12196u, 14197u), max(1u, 1u)), ~(~vec3<u32>(0u, 9729u, 1u))), ~1u);
    let var_1 = 2147483647i;
    global1 = array<vec3<f32>, 24>();
    global4 = vec2<bool>(true, true);
    global3 = vec4<i32>(func_5(Struct_2((4294967295u ^ var_0.x) & ~var_0.x, global4.x, true, _wgslsmith_add_vec4_u32(~vec4<u32>(var_0.x, var_0.x, 20435u, 51744u), max(vec4<u32>(0u, 4294967295u, 74258u, var_0.x), vec4<u32>(var_0.x, 9639u, 34311u, var_0.x)))), true, select(vec3<bool>(func_1(), !global4.x, global4.x), vec3<bool>(true, global4.x && global4.x, false), true), Struct_1(select(select(vec2<bool>(false, true), vec2<bool>(false, global4.x), vec2<bool>(true, global4.x)), select(vec2<bool>(false, global4.x), vec2<bool>(false, false), true), vec2<bool>(false, global4.x)), select(select(vec3<bool>(false, global4.x, false), vec3<bool>(global4.x, global4.x, false), vec3<bool>(global4.x, true, true)), select(vec3<bool>(false, true, global4.x), vec3<bool>(false, false, false), false), u_input.a.x <= global3.x), ~(~vec3<u32>(10703u, 0u, 4294967295u)), 6627i | var_1, var_0.x)), global2[_wgslsmith_index_u32(min(72563u, 4294967295u), 17u)], _wgslsmith_clamp_i32(func_5(Struct_2(~4294967295u, any(vec4<bool>(global4.x, global4.x, true, true)), 4294967295u > var_0.x, ~vec4<u32>(4294967295u, 1189u, var_0.x, 0u)), !global4.x, !select(vec3<bool>(true, false, global4.x), vec3<bool>(false, global4.x, global4.x), global4.x), Struct_1(!vec2<bool>(true, global4.x), !vec3<bool>(true, global4.x, global4.x), min(vec3<u32>(1u, var_0.x, 40815u), vec3<u32>(1u, 0u, var_0.x)), ~global2[_wgslsmith_index_u32(0u, 17u)], var_0.x | 1u)), max(-16332i, 1i | global3.x), 2147483647i & var_1), reverseBits(211i));
    global4 = select(vec2<bool>(func_4(Struct_2(_wgslsmith_div_u32(32468u, 67088u), !global4.x, global4.x, ~vec4<u32>(var_0.x, var_0.x, 1u, var_0.x)), _wgslsmith_div_f32(-1651f, -437f)).b, false), vec2<bool>(func_4(Struct_2(var_0.x, global4.x, global4.x, _wgslsmith_add_vec4_u32(vec4<u32>(var_0.x, 4294967295u, var_0.x, var_0.x), vec4<u32>(var_0.x, var_0.x, 1u, var_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1355f)) * _wgslsmith_f_op_f32(step(-1910f, 643f)))).c, global4.x), false);
    let var_2 = _wgslsmith_f_op_vec3_f32(-global1[_wgslsmith_index_u32(~var_0.x, 24u)]);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_u32(~var_0.x, var_0.x), _wgslsmith_dot_vec4_i32(~u_input.a >> (~_wgslsmith_add_vec4_u32(vec4<u32>(0u, var_0.x, var_0.x, var_0.x), vec4<u32>(var_0.x, 1u, 0u, 74765u)) % vec4<u32>(32u)), select(vec4<i32>(1i, global3.x, ~(-60821i), u_input.a.x), vec4<i32>(-2147483647i, 1i, global3.x << (1u % 32u), _wgslsmith_sub_i32(var_1, 0i)), select(vec4<bool>(global4.x, true, global4.x, false), vec4<bool>(global4.x, global4.x, false, global4.x), !vec4<bool>(true, global4.x, false, true)))), -33517i, abs(_wgslsmith_mult_vec3_u32(func_4(Struct_2(17624u, true, global4.x, vec4<u32>(4294967295u, 19487u, var_0.x, var_0.x)), 134f).d.yxw, _wgslsmith_add_vec3_u32(vec3<u32>(91008u, 71774u, var_0.x), vec3<u32>(var_0.x, 79741u, 0u)))) ^ abs(~vec3<u32>(var_0.x, 29545u, 95777u) >> (vec3<u32>(var_0.x, var_0.x, 4294967295u) % vec3<u32>(32u))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_2.x, 644f))));
}

