struct Struct_1 {
    a: u32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: f32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 29>;

var<private> global1: array<vec2<f32>, 27>;

var<private> global2: Struct_2;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec4<i32>) -> u32 {
    global1 = array<vec2<f32>, 27>();
    global2 = Struct_2(47208i);
    var var_0 = 380f;
    let var_1 = 1i;
    var var_2 = -1375f;
    return 1u;
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: vec3<f32>) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1368f);
    global2 = Struct_2(40398i);
    let var_1 = Struct_3(~(~(~50780u)));
    var var_2 = global0[_wgslsmith_index_u32(func_3(vec4<i32>(~u_input.b.x, global2.a, ~(-_wgslsmith_mult_i32(u_input.b.x, 1i)), _wgslsmith_dot_vec3_i32(vec3<i32>(-11500i, -1i, u_input.b.x), ~vec3<i32>(u_input.a.x, u_input.b.x, global2.a)) << (_wgslsmith_mult_u32(4294967295u | var_1.a, var_1.a) % 32u))), 29u)];
    var_0 = -1200f;
    return arg_1;
}

fn func_4(arg_0: Struct_4, arg_1: vec3<f32>, arg_2: Struct_3, arg_3: vec2<f32>) -> Struct_4 {
    var var_0 = _wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(min(abs(~vec2<u32>(31855u, 1u)), _wgslsmith_sub_vec2_u32(vec2<u32>(arg_2.a, arg_2.a), firstLeadingBit(vec2<u32>(32477u, 47869u)))), vec2<u32>(arg_2.a, _wgslsmith_mult_u32(61363u, _wgslsmith_sub_u32(arg_2.a, arg_2.a)))), ~(~_wgslsmith_sub_vec2_u32(vec2<u32>(arg_2.a, arg_2.a), firstTrailingBit(vec2<u32>(68280u, arg_2.a)))));
    let var_1 = var_0.x;
    let var_2 = !select(vec4<bool>(false, true, any(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true))), true), vec4<bool>(!select(true, true, true), true, select(false, true, arg_3.x <= arg_1.x), _wgslsmith_add_i32(global2.a, 0i) < 0i), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), all(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), true))));
    let var_3 = arg_3.x;
    let var_4 = Struct_2(select(_wgslsmith_div_i32(firstTrailingBit(u_input.a.x), ~_wgslsmith_dot_vec2_i32(u_input.b.xy, u_input.a.wy)), -_wgslsmith_sub_i32(_wgslsmith_sub_i32(u_input.a.x, 29423i), 0i), false));
    return Struct_4(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.a))))));
}

fn func_5(arg_0: Struct_4, arg_1: vec4<i32>) -> u32 {
    global1 = array<vec2<f32>, 27>();
    global0 = array<Struct_3, 29>();
    let var_0 = -vec3<i32>(2147483647i, -2147483647i, (~0i ^ (global2.a << (4294967295u % 32u))) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(18940u, 19724u), abs(vec2<u32>(31408u, 0u))) % 32u));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(790f, arg_0.a, 1133f, arg_0.a) - vec4<f32>(arg_0.a, arg_0.a, -1828f, 412f)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1242f, -810f, arg_0.a, 531f)))), vec4<f32>(1115f, _wgslsmith_f_op_f32(f32(-1f) * -541f), arg_0.a, _wgslsmith_f_op_f32(max(327f, 739f))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true)), true))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0.a, 1000f, 1211f, arg_0.a)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(655f, arg_0.a, arg_0.a, -1000f), vec4<f32>(873f, arg_0.a, arg_0.a, 947f), vec4<bool>(true, false, false, true))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0.a, -1295f, arg_0.a, -246f), vec4<f32>(arg_0.a, -338f, arg_0.a, -206f))))))));
    var var_2 = global0[_wgslsmith_index_u32(0u, 29u)];
    return var_2.a;
}

fn func_1() -> u32 {
    var var_0 = func_5(func_4(Struct_4(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-155f, 1000f), -868f))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1572f, -597f, -532f)))), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, 0u), vec3<u32>(532u, 2622u, 22781u)), 1u) >> (abs(~4294967295u) % 32u), 29u)], vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -540f), _wgslsmith_f_op_f32(func_2(566f, _wgslsmith_f_op_f32(min(-853f, 698f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1186f, 309f, -889f) - vec3<f32>(-1462f, 976f, 985f)))))), countOneBits(vec4<i32>(_wgslsmith_clamp_i32(-1i, -global2.a, 39195i), ~_wgslsmith_add_i32(global2.a, u_input.b.x), abs(countOneBits(u_input.a.x)), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, 0i), reverseBits(vec3<i32>(8559i, -20621i, global2.a))))));
    let var_1 = max(u_input.b.yy, ~vec2<i32>(-13343i, -max(global2.a, u_input.a.x)));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(207f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(-655f)))), -167f, 1266f) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1319f, -1782f, -3126f, -1082f) * vec4<f32>(194f, 2098f, 1000f, -1520f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(780f, 340f, 1023f, -329f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 233f, -649f, -919f) - vec4<f32>(-567f, -237f, 122f, 485f)), true)), select(true, true, any(vec4<bool>(false, false, false, true)))))) * vec4<f32>(-254f, _wgslsmith_f_op_f32(abs(-291f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(226f, 207f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-595f + _wgslsmith_f_op_f32(-1208f - 517f)) - _wgslsmith_f_op_f32(ceil(399f)))));
    let var_3 = _wgslsmith_mult_vec3_u32(~reverseBits(select(~vec3<u32>(1u, 44939u, 4294967295u), ~vec3<u32>(0u, 1u, 4294967295u), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true)))), vec3<u32>(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(13340u, 4294967295u), vec2<u32>(1u, 1u)) >> (~1u % 32u), ~11210u));
    let var_4 = Struct_2(~(-_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(9614i, var_1.x), vec2<i32>(-2147483647i, global2.a)), firstTrailingBit(vec2<i32>(global2.a, -34271i)))));
    return 53956u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~(~1u), min(~(~select(vec4<u32>(4294967295u, 52288u, 0u, 4294967295u), vec4<u32>(22591u, 61741u, 4294967295u, 0u), false)), vec4<u32>(4294967295u, firstLeadingBit(0u) << (1u % 32u), ~0u, func_1())));
    let var_1 = Struct_4(2000f);
    let var_2 = select(select(select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), true), true), vec4<bool>(true, true, true, true), false), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false)), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false)), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), true))), all(!select(select(vec2<bool>(true, true), vec2<bool>(true, false), false), select(vec2<bool>(true, true), vec2<bool>(true, false), false), false)));
    var_0 = Struct_1(_wgslsmith_clamp_u32(countOneBits(~var_0.a) & var_0.b.x, 1u, countOneBits(~var_0.b.x) & ~select(14510u, var_0.a, false)), ~select(~(vec4<u32>(var_0.a, 85327u, 70272u, var_0.a) & var_0.b), vec4<u32>(~var_0.a, _wgslsmith_clamp_u32(1u, 0u, var_0.a), 18973u, ~var_0.b.x), vec4<bool>(true, var_2.x, var_2.x, true)));
    let var_3 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) * _wgslsmith_f_op_f32(trunc(104f))), _wgslsmith_f_op_f32(-var_1.a), func_5(func_4(var_1, vec3<f32>(-333f, var_1.a, 204f), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_0.b.x, 40278u), 29u)], vec2<f32>(var_1.a, var_1.a)), u_input.a) >= (_wgslsmith_dot_vec4_u32(~vec4<u32>(44339u, 94897u, 4294967295u, 48054u), vec4<u32>(0u, var_0.b.x, 4294967295u, 0u)) >> (~_wgslsmith_dot_vec4_u32(var_0.b, vec4<u32>(var_0.a, 17139u, var_0.a, 1u)) % 32u))));
    var var_4 = abs(_wgslsmith_clamp_vec4_i32(select(~vec4<i32>(8671i, u_input.a.x, -1i, global2.a), vec4<i32>(min(23736i, u_input.b.x), -2484i, global2.a, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 9468i), u_input.b.xy)), !any(vec4<bool>(true, var_2.x, var_2.x, true))), u_input.a, u_input.a));
    global1 = array<vec2<f32>, 27>();
    var var_5 = Struct_2(reverseBits(_wgslsmith_div_i32(-(~global2.a), ~(-1i))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b, (1i ^ _wgslsmith_div_i32(-20328i & global2.a, global2.a)) & global2.a, var_1.a, 1i, ~var_0.a);
}

