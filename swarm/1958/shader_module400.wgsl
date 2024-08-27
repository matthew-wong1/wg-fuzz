struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec4<u32>,
    d: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: Struct_2,
    d: u32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(3308u, Struct_3(Struct_1(-1642f), Struct_1(-178f)), Struct_2(Struct_1(-975f), vec2<bool>(false, false), vec4<u32>(9920u, 45929u, 58167u, 0u), vec4<i32>(-116941i, -22597i, i32(-2147483648), -56453i)), 4294967295u, vec4<i32>(-38166i, 1i, 13715i, 0i));

var<private> global1: f32;

var<private> global2: array<vec2<f32>, 28> = array<vec2<f32>, 28>(vec2<f32>(-317f, 1108f), vec2<f32>(1000f, 331f), vec2<f32>(-724f, 395f), vec2<f32>(1573f, -884f), vec2<f32>(350f, -1586f), vec2<f32>(952f, 469f), vec2<f32>(528f, -1946f), vec2<f32>(435f, -376f), vec2<f32>(2207f, -1387f), vec2<f32>(1938f, 568f), vec2<f32>(778f, 470f), vec2<f32>(780f, -1533f), vec2<f32>(1523f, 1000f), vec2<f32>(-609f, 512f), vec2<f32>(-653f, 1000f), vec2<f32>(186f, -243f), vec2<f32>(-1128f, 447f), vec2<f32>(-2189f, 1000f), vec2<f32>(523f, 764f), vec2<f32>(-731f, -314f), vec2<f32>(1160f, -615f), vec2<f32>(-1731f, -238f), vec2<f32>(805f, -696f), vec2<f32>(-917f, -1000f), vec2<f32>(-559f, -525f), vec2<f32>(-716f, 884f), vec2<f32>(463f, 1000f), vec2<f32>(1000f, 693f));

var<private> global3: u32;

var<private> global4: array<bool, 21> = array<bool, 21>(true, true, true, false, false, true, false, false, true, true, false, false, true, false, true, false, false, false, false, true, true);

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_3) -> vec4<u32> {
    global4 = array<bool, 21>();
    var var_0 = Struct_1(-1127f);
    var var_1 = Struct_2(arg_0.a, select(!select(arg_0.b, select(vec2<bool>(global0.c.b.x, true), vec2<bool>(arg_0.b.x, false), vec2<bool>(false, global0.c.b.x)), !arg_0.b.x), !(!select(vec2<bool>(arg_0.b.x, arg_0.b.x), arg_0.b, arg_0.b)), true), vec4<u32>(arg_0.c.x, _wgslsmith_mod_u32(~arg_0.c.x, _wgslsmith_clamp_u32(0u, u_input.a, arg_0.c.x)), ~25187u, _wgslsmith_mult_u32(max(_wgslsmith_mod_u32(61285u, 8180u), 4294967295u), global0.c.c.x)), ~global0.e & global0.c.d);
    global2 = array<vec2<f32>, 28>();
    global4 = array<bool, 21>();
    return var_1.c;
}

fn func_2(arg_0: u32, arg_1: bool) -> Struct_4 {
    global2 = array<vec2<f32>, 28>();
    global2 = array<vec2<f32>, 28>();
    let var_0 = global0.b;
    global1 = -747f;
    var var_1 = 4294967295u;
    return Struct_4(4294967295u ^ _wgslsmith_dot_vec4_u32(firstLeadingBit(abs(global0.c.c)), vec4<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, arg_0, global0.a, 5613u), global0.c.c), _wgslsmith_sub_u32(u_input.d, arg_0), _wgslsmith_clamp_u32(4294967295u, arg_0, global0.a))), global0.b, Struct_2(var_0.b, !select(!vec2<bool>(false, global0.c.b.x), global0.c.b, !vec2<bool>(false, global0.c.b.x)), ~_wgslsmith_clamp_vec4_u32(func_3(global0.c, global0.b), ~vec4<u32>(u_input.a, arg_0, arg_0, 4294967295u), ~global0.c.c), global0.c.d), ~firstTrailingBit(reverseBits(countOneBits(1u))), global0.c.d);
}

fn func_1(arg_0: vec3<i32>, arg_1: i32, arg_2: vec3<u32>) -> Struct_4 {
    global2 = array<vec2<f32>, 28>();
    var var_0 = _wgslsmith_div_vec3_i32(abs(~global0.e.zww), global0.c.d.xyx);
    global0 = func_2(0u, !global4[_wgslsmith_index_u32(~(~(u_input.a << (0u % 32u))), 21u)]);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.c.a.a, global0.b.a.a, global0.c.a.a) + vec3<f32>(116f, global0.b.a.a, 1136f)) - vec3<f32>(global0.b.a.a, 698f, 915f))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b.b.a, global0.c.a.a, global0.b.a.a))), vec3<f32>(_wgslsmith_f_op_f32(global0.b.a.a * global0.c.a.a), _wgslsmith_f_op_f32(abs(global0.b.b.a)), global0.b.a.a), global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(72257u, arg_2.x), 21u)] || (u_input.d != arg_2.x)))));
    let var_2 = select(firstTrailingBit(~func_3(func_2(u_input.d, true).c, global0.b).xz), _wgslsmith_clamp_vec2_u32(~abs(arg_2.xz), ~(~global0.c.c.xz) & ~(global0.c.c.wz | arg_2.yx), vec2<u32>(~1u, abs(16407u)) >> (~arg_2.xz % vec2<u32>(32u))), global4[_wgslsmith_index_u32(global0.c.c.x, 21u)]);
    return Struct_4(select(~select(~4294967295u, ~4294967295u, !global0.c.b.x), firstTrailingBit(~global0.d ^ func_2(global0.c.c.x, global4[_wgslsmith_index_u32(u_input.a, 21u)]).a), false), Struct_3(global0.b.b, func_2(arg_2.x, false).c.a), global0.c, 4294967295u, global0.e);
}

fn func_4(arg_0: bool, arg_1: Struct_3, arg_2: Struct_4, arg_3: Struct_3) -> vec4<f32> {
    var var_0 = arg_1.a;
    let var_1 = arg_2.a;
    var var_2 = func_2(reverseBits(~_wgslsmith_div_u32(4294967295u, func_3(Struct_2(arg_2.c.a, global0.c.b, arg_2.c.c, vec4<i32>(u_input.c, u_input.c, 28706i, u_input.e)), arg_2.b).x)), (i32(-1i) * -global0.e.x) > arg_2.e.x).c;
    global0 = func_2(60183u, global4[_wgslsmith_index_u32(abs(~(var_1 | 69629u)), 21u)]);
    var var_3 = global0.b;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(140f, 294f, _wgslsmith_f_op_f32(step(arg_2.c.a.a, -1020f)), 586f))))) - _wgslsmith_div_vec4_f32(vec4<f32>(arg_2.b.b.a, _wgslsmith_f_op_f32(sign(func_1(vec3<i32>(-2147483647i, arg_2.e.x, -1i), -1i, vec3<u32>(1u, 4294967295u, 1u)).c.a.a)), _wgslsmith_f_op_f32(-var_3.a.a), 264f), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(232f, arg_2.c.a.a, 746f, -256f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(732f, var_3.b.a, global0.c.a.a, var_0.a)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>((global0.d | reverseBits(~2718u)) > (25837u & _wgslsmith_div_u32(u_input.d, u_input.d)), global0.c.b.x, !(global4[_wgslsmith_index_u32(1u, 21u)] && true), !all(vec4<bool>(global0.c.b.x, global0.c.b.x, global0.c.b.x, global4[_wgslsmith_index_u32(64076u, 21u)])) || (36711u != global0.a));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c.a.a, _wgslsmith_f_op_f32(f32(-1f) * -1712f), global0.c.a.a, -1567f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_4(!var_0.x, global0.b, func_1(global0.e.zzx, 27760i, global0.c.c.wyw), global0.b)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.c.a.a, global0.b.b.a, 116f, -665f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c.a.a, global0.c.a.a, -620f, -1019f)))))));
    global4 = array<bool, 21>();
    var var_2 = func_2(32292u >> (global0.d % 32u), _wgslsmith_mod_i32(firstTrailingBit(-29860i), global0.c.d.x) > u_input.c);
    global3 = 23718u;
    let var_3 = Struct_1(-427f);
    let var_4 = select(-min(select(vec3<i32>(var_2.c.d.x, u_input.c, -1i), _wgslsmith_add_vec3_i32(var_2.c.d.xzz, var_2.c.d.xwz), true != var_2.c.b.x), var_2.c.d.yzx), max(~vec3<i32>(31485i << (global0.d % 32u), ~0i, global0.c.d.x << (global0.d % 32u)), reverseBits(reverseBits(vec3<i32>(global0.e.x, 52032i, global0.e.x) << (vec3<u32>(global0.c.c.x, global0.c.c.x, u_input.a) % vec3<u32>(32u))))), select(!(!select(vec3<bool>(false, true, true), vec3<bool>(true, var_0.x, true), true)), vec3<bool>(all(vec3<bool>(true, var_2.c.b.x, true)), !(!var_0.x), var_0.x), global0.c.b.x | func_2(_wgslsmith_div_u32(15795u, global0.d), true).c.b.x));
    let var_5 = ~(~var_2.d) << (abs(~(select(89022u, var_2.c.c.x, global0.c.b.x) & ~7855u)) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.c.c.x ^ u_input.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -161f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.c.a.a, 353f) + 875f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(418f + var_2.b.b.a)))));
}

