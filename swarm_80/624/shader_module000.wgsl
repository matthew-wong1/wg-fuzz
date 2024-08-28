struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<bool>,
    c: Struct_1,
    d: vec2<bool>,
    e: vec2<f32>,
}

struct Struct_3 {
    a: i32,
    b: vec2<bool>,
    c: i32,
    d: Struct_2,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec4<f32>,
    d: vec4<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<vec4<u32>, 12> = array<vec4<u32>, 12>(vec4<u32>(4294967295u, 25431u, 0u, 0u), vec4<u32>(4294967295u, 31773u, 46100u, 0u), vec4<u32>(0u, 57566u, 1u, 4294967295u), vec4<u32>(9774u, 20987u, 1u, 66396u), vec4<u32>(0u, 29382u, 4294967295u, 0u), vec4<u32>(48035u, 0u, 452u, 158793u), vec4<u32>(0u, 4294967295u, 4294967295u, 1u), vec4<u32>(33606u, 17076u, 8059u, 6145u), vec4<u32>(1u, 9883u, 42420u, 66318u), vec4<u32>(4294967295u, 1u, 3007u, 1u), vec4<u32>(1u, 103431u, 1u, 23629u), vec4<u32>(4294967295u, 108912u, 71654u, 9786u));

var<private> global2: array<vec4<i32>, 7>;

var<private> global3: array<i32, 10> = array<i32, 10>(-1i, -1i, 1i, 2402i, -21946i, 57204i, -1i, -13173i, i32(-2147483648), 2147483647i);

var<private> global4: Struct_2 = Struct_2(1u, vec3<bool>(false, true, false), Struct_1(vec4<i32>(0i, i32(-2147483648), -1i, 64247i)), vec2<bool>(false, true), vec2<f32>(1216f, -1208f));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec4<bool>) -> vec2<i32> {
    var var_0 = -35204i;
    let var_1 = firstTrailingBit(_wgslsmith_add_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(global4.a, 5746u, arg_0.x), arg_0.wyy), _wgslsmith_mult_u32(33525u, 103543u) & arg_0.x)) | ~1014u;
    global2 = array<vec4<i32>, 7>();
    return global4.c.a.wx << (select(_wgslsmith_add_vec2_u32(u_input.b.xz, reverseBits(arg_0.wz)), firstLeadingBit(vec2<u32>(34394u, _wgslsmith_div_u32(arg_0.x, global4.a))), false) % vec2<u32>(32u));
}

fn func_2() -> f32 {
    let var_0 = func_3(vec4<u32>(u_input.b.x & _wgslsmith_div_u32(1u, 34219u), ~(~global4.a) | 1u, 1u, ~0u), vec4<bool>(true, true, true, true));
    var var_1 = _wgslsmith_f_op_vec2_f32(-global4.e);
    var var_2 = Struct_3(var_0.x, vec2<bool>(-2147483647i > u_input.a, global4.b.x), func_3(vec4<u32>(0u, global0.a, 4294967295u, 8512u), vec4<bool>(all(select(vec4<bool>(false, true, global0.b.x, global4.d.x), vec4<bool>(global0.b.x, true, global0.d.x, global0.b.x), vec4<bool>(global4.b.x, false, false, false))), true | global0.b.x, true, global0.e.x >= var_1.x)).x, Struct_2(global4.a, select(!(!vec3<bool>(false, true, global4.d.x)), !select(global0.b, vec3<bool>(true, false, false), false), false), global4.c, vec2<bool>(!(29241i < global3[_wgslsmith_index_u32(2610u, 10u)]), global0.d.x), global4.e), firstTrailingBit(countOneBits(_wgslsmith_mult_i32(-global4.c.a.x, _wgslsmith_div_i32(1i, global4.c.a.x)))));
    global2 = array<vec4<i32>, 7>();
    let var_3 = _wgslsmith_div_vec4_i32(-(~(~global2[_wgslsmith_index_u32(28865u, 7u)] | (global4.c.a & vec4<i32>(2147483647i, 2147483647i, global3[_wgslsmith_index_u32(global0.a, 10u)], global4.c.a.x)))), ~global0.c.a);
    return _wgslsmith_f_op_f32(exp2(var_1.x));
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: i32) -> Struct_2 {
    let var_0 = global0.b.x;
    global1 = array<vec4<u32>, 12>();
    global0 = Struct_2(~4294967295u, !global4.b, Struct_1(global0.c.a), global0.d, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-143f, global0.e.x)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(global4.e.x)))))));
    let var_1 = Struct_2(~_wgslsmith_mult_u32(4294967295u, ~global0.a), global0.b, global4.c, global4.d, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.e.x + -1854f), 210f) + arg_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.e.x))));
    global0 = Struct_2(_wgslsmith_sub_u32(u_input.b.x, ~u_input.b.x), select(global0.b, !global0.b, global0.b.x), Struct_1(global2[_wgslsmith_index_u32(0u, 7u)]), vec2<bool>(global4.b.x, all(vec4<bool>(true, true, true, any(vec4<bool>(var_1.b.x, global4.d.x, var_1.d.x, false))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global4.e - _wgslsmith_f_op_vec2_f32(vec2<f32>(757f, arg_1) + vec2<f32>(arg_1, 1000f)))));
    return Struct_2(4294967295u, !global4.b, Struct_1(vec4<i32>(global4.c.a.x, 1i, global3[_wgslsmith_index_u32(var_1.a, 10u)], ~firstTrailingBit(global0.c.a.x))), select(vec2<bool>(true || any(vec2<bool>(global4.d.x, global0.d.x)), max(var_1.a, 1u) == (global4.a >> (28191u % 32u))), var_1.d, !(!select(global4.d, vec2<bool>(var_1.d.x, global0.d.x), vec2<bool>(false, true)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(439f, _wgslsmith_f_op_f32(min(-614f, global0.e.x))) - global4.e), _wgslsmith_f_op_vec2_f32(var_1.e - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-503f, -851f)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_0, global4.e.x)))))));
}

fn func_1(arg_0: vec3<bool>) -> vec4<f32> {
    let var_0 = func_4(_wgslsmith_f_op_f32(abs(global4.e.x)), _wgslsmith_f_op_f32(func_2()), u_input.a);
    global4 = Struct_2(4294967295u | var_0.a, var_0.b, func_4(global4.e.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.e.x, global0.e.x)), global4.c.a.x).c, global4.d, vec2<f32>(var_0.e.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(-var_0.e.x))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(1000f, global0.e.x)))))));
    var var_1 = vec2<u32>(~_wgslsmith_clamp_u32(~(~u_input.b.x), ~(~11360u), firstTrailingBit(u_input.b.x) >> (~global4.a % 32u)), 1u);
    global3 = array<i32, 10>();
    global3 = array<i32, 10>();
    return _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(func_2()), 190f, _wgslsmith_f_op_f32(307f * -945f), _wgslsmith_f_op_f32(-var_0.e.x))));
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_1) -> u32 {
    return firstTrailingBit(4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.b;
    var var_1 = global4.c.a.x;
    global3 = array<i32, 10>();
    var var_2 = func_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(vec3<bool>(true, var_0.x, var_0.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.e.x, -177f, -2773f, global4.e.x) - vec4<f32>(-700f, 200f, global0.e.x, -813f)))) * vec4<f32>(_wgslsmith_f_op_f32(-global0.e.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0.e.x - 328f))), _wgslsmith_f_op_f32(trunc(-805f)), global4.e.x)), Struct_1(global4.c.a));
    var var_3 = select(_wgslsmith_div_i32((~global0.c.a.x >> (min(28448u, global4.a) % 32u)) | 28939i, 0i), global4.c.a.x, (i32(-1i) * -_wgslsmith_sub_i32(-2147483647i, 1i)) <= firstTrailingBit(13156i));
    global1 = array<vec4<u32>, 12>();
    global1 = array<vec4<u32>, 12>();
    let var_4 = vec4<u32>(4294967295u, min(global4.a, _wgslsmith_dot_vec3_u32(u_input.b, select(firstLeadingBit(vec3<u32>(global4.a, 1u, global0.a)), ~u_input.b, select(vec3<bool>(false, true, false), global4.b, vec3<bool>(global0.d.x, var_0.x, false))))), u_input.b.x, _wgslsmith_mod_u32(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(18626u, global4.a, global0.a, 4294967295u), vec4<u32>(global4.a, global4.a, u_input.b.x, 4294967295u))), _wgslsmith_dot_vec3_u32(u_input.b, ~vec3<u32>(41389u, 40223u, global0.a))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(floor(global0.e)), 1u, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0.e.x, 574f, 464f, global4.e.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.e.x, -814f, -1301f, -1081f) + vec4<f32>(126f, -1250f, global4.e.x, global0.e.x)))))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1229f, global0.e.x, -1000f, global0.e.x))))))), u_input.b.x);
}

