struct Struct_1 {
    a: f32,
    b: i32,
    c: vec4<i32>,
    d: i32,
}

struct Struct_2 {
    a: u32,
    b: vec4<u32>,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
    d: vec3<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 30> = array<vec2<f32>, 30>(vec2<f32>(-1035f, 463f), vec2<f32>(-2077f, 105f), vec2<f32>(1420f, -256f), vec2<f32>(191f, 763f), vec2<f32>(-376f, -2047f), vec2<f32>(990f, 669f), vec2<f32>(2344f, 1935f), vec2<f32>(-365f, 1261f), vec2<f32>(-1444f, 715f), vec2<f32>(-480f, -994f), vec2<f32>(-1487f, 169f), vec2<f32>(-197f, -1000f), vec2<f32>(497f, -453f), vec2<f32>(-178f, 308f), vec2<f32>(-1347f, 307f), vec2<f32>(425f, -857f), vec2<f32>(-1924f, 357f), vec2<f32>(369f, 1000f), vec2<f32>(-1366f, -136f), vec2<f32>(-685f, -1557f), vec2<f32>(422f, -593f), vec2<f32>(608f, 429f), vec2<f32>(-1110f, 627f), vec2<f32>(-545f, 1919f), vec2<f32>(1376f, -1565f), vec2<f32>(722f, -1541f), vec2<f32>(338f, -1435f), vec2<f32>(-139f, 1416f), vec2<f32>(1667f, -211f), vec2<f32>(1207f, -333f));

var<private> global1: Struct_1 = Struct_1(-1248f, -27457i, vec4<i32>(-12055i, -30496i, -6980i, 2147483647i), 1i);

var<private> global2: Struct_2;

var<private> global3: array<Struct_2, 12>;

var<private> global4: vec2<u32>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: vec4<f32>, arg_3: Struct_1) -> vec3<u32> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x))), 15139i, vec4<i32>(~global1.b, global1.b, global1.c.x, 2147483647i), global1.d);
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1000f, arg_0.c.a)) + -192f))), arg_0.c.a, true | all(select(vec3<bool>(true, arg_0.d, global2.d), vec3<bool>(false, false, true), vec3<bool>(false, true, false))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-955f - _wgslsmith_f_op_f32(trunc(-756f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-252f * _wgslsmith_div_f32(1016f, global2.c.a)) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_3.a)))), global2.d)));
    global3 = array<Struct_2, 12>();
    var var_2 = global2.c;
    var var_3 = false;
    return firstLeadingBit(~(~(~vec3<u32>(109126u, arg_0.b.x, 39338u))));
}

fn func_2() -> Struct_1 {
    global1 = global2.c;
    global2 = global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(20233u >> (0u % 32u), 2886u, ~_wgslsmith_mult_u32(36684u, 61873u)) & ~global2.a, 12u)];
    let var_0 = ~_wgslsmith_mult_u32(~_wgslsmith_dot_vec3_u32(global2.b.yyy >> (global2.b.xxy % vec3<u32>(32u)), func_3(Struct_2(global2.b.x, vec4<u32>(global2.a, global2.a, global2.b.x, 6887u), Struct_1(-1358f, global2.c.d, vec4<i32>(-2147483647i, 1i, global2.c.c.x, u_input.b), 0i), global2.d), 1u, vec4<f32>(646f, global1.a, global2.c.a, global2.c.a), Struct_1(global2.c.a, -19210i, vec4<i32>(21446i, global2.c.c.x, 1i, 0i), 2147483647i))), abs(~0u));
    global0 = array<vec2<f32>, 30>();
    global1 = global2.c;
    return Struct_1(-386f, -2712i, vec4<i32>(_wgslsmith_add_i32(-8927i, ~global1.b), global2.c.d, u_input.b, ~(-56127i)), abs(global1.d) | (select(min(global2.c.c.x, u_input.a), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, -1i, u_input.a, global2.c.c.x), global2.c.c), !global2.d) | 0i));
}

fn func_1(arg_0: vec3<bool>) -> Struct_1 {
    let var_0 = func_2();
    let var_1 = global2.c.a;
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(471f * 497f)))), (i32(-1i) * -34192i) | -(~(-global2.c.c.x)), ~var_0.c, -25727i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(vec3<bool>(!select(!global2.d, true, !global2.d), !global2.d, true));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.a, 105f, -591f, _wgslsmith_f_op_f32(select(global2.c.a, global2.c.a, global2.d)))))));
    var var_2 = Struct_2(global4.x, abs(~countOneBits(~vec4<u32>(global2.a, global2.b.x, global4.x, 26671u))), func_2(), true);
    global3 = array<Struct_2, 12>();
    var var_3 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(trunc(219f)), var_1.x))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.a, _wgslsmith_f_op_f32(-global2.c.a)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_0.a + 1173f), var_2.c.a))), vec2<bool>(true, true)));
    let var_4 = var_0.a;
    global4 = ~abs(~global2.b.wz);
    var_1 = vec4<f32>(var_0.a, global1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(func_2().a, _wgslsmith_f_op_f32(795f * global2.c.a))) - global2.c.a), 551f);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a, global2.b.x, _wgslsmith_dot_vec2_u32(select(var_2.b.zy, ~vec2<u32>(var_2.b.x, var_2.b.x), select(true, global2.d, true)) ^ ~_wgslsmith_div_vec2_u32(global2.b.yy, global2.b.wz), vec2<u32>(var_2.a, global2.b.x)), vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_2.c.a), _wgslsmith_f_op_f32(ceil(941f)))), _wgslsmith_div_f32(837f, _wgslsmith_f_op_f32(f32(-1f) * -1203f)), global2.c.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), -1902f));
}

