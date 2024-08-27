struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: vec4<u32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec4<u32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 12>;

var<private> global1: array<u32, 31>;

var<private> global2: Struct_1;

var<private> global3: vec2<u32> = vec2<u32>(42149u, 44370u);

var<private> global4: array<vec2<i32>, 20> = array<vec2<i32>, 20>(vec2<i32>(-17011i, 0i), vec2<i32>(45759i, 0i), vec2<i32>(0i, 0i), vec2<i32>(-42601i, 7274i), vec2<i32>(1i, 13155i), vec2<i32>(-35877i, 20495i), vec2<i32>(-68154i, 2147483647i), vec2<i32>(-50335i, i32(-2147483648)), vec2<i32>(11560i, -1i), vec2<i32>(-43071i, -1i), vec2<i32>(-48230i, i32(-2147483648)), vec2<i32>(-60713i, i32(-2147483648)), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(30064i, 1i), vec2<i32>(2147483647i, 45042i), vec2<i32>(28866i, 33366i), vec2<i32>(0i, 56960i), vec2<i32>(9592i, -1i), vec2<i32>(-74143i, 2147483647i), vec2<i32>(11080i, -30167i));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<i32> {
    let var_0 = (u_input.e.x & 1245u) | _wgslsmith_mult_u32(~10537u, 0u);
    var var_1 = Struct_2(_wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-65749i, -2147483647i, u_input.a), global2.d.xwy, global2.d.xww | global2.d.wxx), _wgslsmith_clamp_vec3_i32(~global2.d.yzy, global2.d.zyy ^ global2.a, firstLeadingBit(vec3<i32>(global2.d.x, 25979i, -13341i)))) ^ -_wgslsmith_clamp_vec3_i32(vec3<i32>(global2.d.x, 18602i, -12142i), -vec3<i32>(global2.d.x, global2.a.x, u_input.a), global2.a), Struct_1(vec3<i32>(1i, _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.c, u_input.d), vec2<i32>(global2.d.x, u_input.a)), _wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, global2.d.x), global4[_wgslsmith_index_u32(19433u, 20u)])), abs(55239i)), ~(~4294967295u), u_input.b, global2.d), global2.c, Struct_1(_wgslsmith_mod_vec3_i32(-(~global2.a), global2.a), ~_wgslsmith_add_u32(_wgslsmith_clamp_u32(1u, global1[_wgslsmith_index_u32(global2.b, 31u)], u_input.e.x), 4294967295u), reverseBits(global2.c), select(~vec4<i32>(-19545i, 4683i, u_input.d, u_input.c), _wgslsmith_clamp_vec4_i32(global2.d, select(vec4<i32>(38152i, u_input.a, global2.d.x, -9581i), vec4<i32>(-18712i, -4910i, -2147483647i, u_input.d), vec4<bool>(true, true, true, false)), _wgslsmith_clamp_vec4_i32(global2.d, global2.d, vec4<i32>(global2.d.x, global2.a.x, -6228i, -19007i))), !select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true)))));
    let var_2 = -(~(~abs(_wgslsmith_mult_vec2_i32(vec2<i32>(-1i, var_1.d.a.x), var_1.d.a.zy))));
    var var_3 = Struct_1(vec3<i32>(reverseBits(u_input.c), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 0i, u_input.d, 1i), var_1.d.d) | 1i, ~var_2.x), ~(global2.c.x << (~0u % 32u)), countOneBits(global2.c) & vec4<u32>(~reverseBits(4294967295u), 24800u, ~firstTrailingBit(48957u), global3.x), abs(countOneBits(~(-var_1.d.d))));
    let var_4 = _wgslsmith_div_vec4_i32(global2.d, ~(-(global2.d >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0, 1u, var_0, 0u), vec4<u32>(var_0, 58950u, var_3.b, 133874u), u_input.b) % vec4<u32>(32u)))));
    return vec4<i32>(_wgslsmith_add_i32(_wgslsmith_div_i32(min(u_input.a, 9266i), var_2.x), var_4.x), _wgslsmith_dot_vec4_i32(~(-var_4), -global2.d), ~(-u_input.d), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i | u_input.d, 43294i, abs(u_input.d), abs(0i)), firstLeadingBit(var_3.d))) << (_wgslsmith_mult_vec4_u32(countOneBits(var_1.c), _wgslsmith_add_vec4_u32(global2.c, ~var_3.c) ^ vec4<u32>(4294967295u, 1u, 55670u, _wgslsmith_div_u32(27602u, global2.b))) % vec4<u32>(32u));
}

fn func_2() -> Struct_1 {
    let var_0 = -1000f;
    global4 = array<vec2<i32>, 20>();
    let var_1 = _wgslsmith_f_op_f32(ceil(var_0)) > var_0;
    let var_2 = Struct_1(global2.d.yyw, global1[_wgslsmith_index_u32(global3.x, 31u)], global2.c, global2.d);
    global4 = array<vec2<i32>, 20>();
    return Struct_1(global2.a, _wgslsmith_mult_u32(0u, ~4294967295u), _wgslsmith_clamp_vec4_u32(abs(~select(var_2.c, vec4<u32>(global1[_wgslsmith_index_u32(3421u, 31u)], 4294967295u, global1[_wgslsmith_index_u32(var_2.b, 31u)], 46344u), true)), ~global2.c, vec4<u32>(u_input.b.x | 36424u, _wgslsmith_mult_u32(u_input.b.x, 40177u), 0u | global2.b, min(13671u, global2.b)) << (var_2.c % vec4<u32>(32u))), ~func_3());
}

fn func_1(arg_0: vec4<u32>, arg_1: f32, arg_2: Struct_1) -> f32 {
    let var_0 = func_2();
    let var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, arg_1, arg_1) - vec3<f32>(-1004f, 1792f, arg_1))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(903f, arg_1, arg_1)))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-161f))), _wgslsmith_f_op_f32(round(arg_1)), arg_1)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1027f, arg_1, 897f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, arg_1, 1000f))))))), any(select(!select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false)), select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true)), vec3<bool>(true, false, true), select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), false)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec3<bool>(false, true, true)))))));
    var var_2 = ~_wgslsmith_mult_i32(select(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(global2.d.xyy, vec3<i32>(1i, var_0.a.x, -1i)), global2.a), -(global2.a.x | -2147483647i), false), _wgslsmith_sub_i32(reverseBits(global2.d.x), min(2147483647i, func_3().x)));
    let var_3 = 0u;
    let var_4 = Struct_2(-vec3<i32>(-_wgslsmith_sub_i32(2147483647i, global2.a.x), arg_2.a.x, var_0.a.x), arg_2, firstTrailingBit(_wgslsmith_mod_vec4_u32(global2.c, reverseBits(countOneBits(vec4<u32>(14445u, 2662u, arg_2.b, 4294967295u))))), Struct_1(var_0.a >> (vec3<u32>(abs(global2.b), global2.b, ~arg_2.c.x) % vec3<u32>(32u)), 57907u, ~select(u_input.b, var_0.c, select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), false)), -global2.d));
    return -1000f;
}

fn func_4(arg_0: u32, arg_1: vec3<f32>, arg_2: Struct_2, arg_3: Struct_1) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(502f, arg_1.x, all(vec3<bool>(false, false, true)))), arg_1.x), -670f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    global3 = ~firstTrailingBit(arg_2.d.c.wx);
    let var_1 = Struct_2(reverseBits(arg_2.b.a), Struct_1(~global2.d.yyx, ~(~(~55874u)), func_2().c, global2.d), ~max(arg_3.c, arg_3.c) & ~vec4<u32>(u_input.e.x, ~18502u, select(0u, 4294967295u, true), arg_2.b.b), arg_3);
    global3 = global2.c.ww;
    global1 = array<u32, 31>();
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(firstTrailingBit(abs(37864u)), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-424f)), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(func_1(u_input.b, -208f, Struct_1(vec3<i32>(u_input.c, u_input.c, 51280i), 0u, global2.c, global2.d))))), _wgslsmith_f_op_f32(-1f), 1000f), Struct_2(vec3<i32>(global2.d.x, global2.a.x, global2.a.x), Struct_1(firstTrailingBit(-vec3<i32>(u_input.a, 62211i, u_input.d)), firstTrailingBit(u_input.b.x), ~func_2().c, _wgslsmith_mod_vec4_i32(global2.d, ~vec4<i32>(0i, global2.d.x, global2.d.x, global2.a.x))), global2.c, Struct_1(-vec3<i32>(1i, 0i, -2147483647i), ~select(u_input.e.x, 0u, true), global2.c, global2.d)), func_2());
    global3 = min(~vec2<u32>(~global1[_wgslsmith_index_u32(abs(1u), 31u)], 1u), select(_wgslsmith_add_vec2_u32(var_0.c.zy, ~func_2().c.zz), vec2<u32>(global2.b, _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(0u, 5634u), u_input.b.wz), select(vec2<u32>(global3.x, var_0.b.b), var_0.b.c.wz, true))), select(vec2<bool>(true, true), vec2<bool>(true, true), false)));
    global1 = array<u32, 31>();
    global0 = array<vec4<f32>, 12>();
    var var_1 = false;
    let var_2 = -(~_wgslsmith_clamp_vec3_i32(countOneBits(_wgslsmith_div_vec3_i32(vec3<i32>(-11190i, -5093i, -5110i), vec3<i32>(global2.a.x, -91500i, -33258i))), global2.a | _wgslsmith_sub_vec3_i32(var_0.b.a, var_0.d.d.wxw), vec3<i32>(reverseBits(var_0.d.d.x), abs(40042i), var_0.a.x)));
    let var_3 = func_4(_wgslsmith_add_u32(~global1[_wgslsmith_index_u32(~1u | global3.x, 31u)], global2.c.x), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-193f, -721f, -1384f), vec3<f32>(-200f, 493f, -1000f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1905f, _wgslsmith_f_op_f32(sign(416f)), -459f)))), var_0, Struct_1(var_2 ^ var_0.b.d.zxw, firstTrailingBit(func_4(~var_0.b.b, _wgslsmith_f_op_vec3_f32(vec3<f32>(-606f, -289f, 646f) - vec3<f32>(1545f, 640f, 834f)), func_4(u_input.e.x, vec3<f32>(-1610f, -1000f, -116f), Struct_2(global2.a, Struct_1(vec3<i32>(global2.a.x, global2.d.x, 2147483647i), 4294967295u, global2.c, global2.d), vec4<u32>(4294967295u, 72107u, global1[_wgslsmith_index_u32(77250u, 31u)], 17791u), var_0.b), var_0.d), Struct_1(global2.a, global2.b, vec4<u32>(global1[_wgslsmith_index_u32(4294967295u, 31u)], 1u, 0u, 1u), vec4<i32>(global2.d.x, var_2.x, var_0.d.d.x, 2147483647i))).d.c.x), global2.c, -vec4<i32>(var_0.b.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(global2.a.x, -41364i), var_2.xx), var_2.x | var_0.d.a.x, global2.a.x)));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1249f))))), 170f));
    let var_5 = max(select(u_input.c, _wgslsmith_dot_vec4_i32(var_0.d.d, var_3.d.d), true), -2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(var_0.a.yx), vec3<u32>(~u_input.b.x, global1[_wgslsmith_index_u32(~(~83620u), 31u)] >> (36213u % 32u), _wgslsmith_div_u32(_wgslsmith_sub_u32(var_0.d.c.x, u_input.e.x), 1739u)), _wgslsmith_add_vec4_i32(global2.d, min(countOneBits(_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, 32076i, 0i, -11842i), vec4<i32>(29962i, 0i, 1i, global2.d.x))), vec4<i32>(firstTrailingBit(2147483647i), ~var_5, 0i, _wgslsmith_sub_i32(var_0.b.a.x, var_0.b.d.x)))), u_input.b);
}

