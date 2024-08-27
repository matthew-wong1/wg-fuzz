struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: vec3<f32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec3<i32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: vec2<bool>,
}

struct Struct_5 {
    a: i32,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<vec4<i32>, 12> = array<vec4<i32>, 12>(vec4<i32>(-38834i, -26805i, 2147483647i, -1i), vec4<i32>(-3608i, 9941i, -4441i, 0i), vec4<i32>(10427i, i32(-2147483648), -72313i, i32(-2147483648)), vec4<i32>(56445i, 1i, 20562i, 6745i), vec4<i32>(30256i, -47813i, 44185i, 17787i), vec4<i32>(-1i, 1i, 31897i, 4834i), vec4<i32>(-22209i, 2147483647i, 2147483647i, -10098i), vec4<i32>(812i, -31997i, 0i, 2147483647i), vec4<i32>(2147483647i, i32(-2147483648), 2147483647i, 14148i), vec4<i32>(0i, 1i, i32(-2147483648), -1i), vec4<i32>(-23715i, i32(-2147483648), -1i, 12549i), vec4<i32>(1i, 3636i, 27135i, 46452i));

var<private> global2: array<vec4<f32>, 31>;

var<private> global3: vec4<f32> = vec4<f32>(-1000f, -1000f, 627f, -1166f);

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
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

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: bool, arg_1: Struct_4, arg_2: bool, arg_3: Struct_3) -> u32 {
    global3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_1.a)) + _wgslsmith_f_op_f32(-1825f * -125f)))), -1248f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(arg_1.a, 1862f, any(arg_3.a)))))));
    var var_0 = arg_3;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1162f))));
    var_0 = arg_3;
    global0 = false;
    return (46313u | _wgslsmith_mod_u32(69666u, ~_wgslsmith_add_u32(u_input.c.x, u_input.c.x))) ^ 0u;
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: f32, arg_3: f32) -> bool {
    let var_0 = true;
    var var_1 = vec4<i32>(~countOneBits(-45783i), _wgslsmith_dot_vec4_i32(~_wgslsmith_clamp_vec4_i32(vec4<i32>(-19540i, -28749i, u_input.b.x, -1i), _wgslsmith_add_vec4_i32(global1[_wgslsmith_index_u32(1u, 12u)], global1[_wgslsmith_index_u32(4294967295u, 12u)]), vec4<i32>(3316i, 38263i, 2147483647i, 7893i)), -global1[_wgslsmith_index_u32(41087u, 12u)]), u_input.b.x, 3988i);
    let var_2 = select(u_input.c, vec4<u32>(~firstLeadingBit(18850u), firstTrailingBit(func_3(global3.x <= arg_2, Struct_4(arg_1, vec2<bool>(var_0, var_0)), !var_0, Struct_3(vec4<bool>(false, false, var_0, false), vec3<i32>(u_input.b.x, 1i, u_input.b.x), Struct_1(arg_3), Struct_1(arg_0)))), ~4294967295u, 0u), !vec4<bool>(true, select(true, false, !var_0), true, !(var_0 | var_0)));
    var var_3 = ~_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, reverseBits(-1i), min(~var_1.x, 2209i)), vec3<i32>(_wgslsmith_dot_vec2_i32(var_1.ww >> (vec2<u32>(u_input.d, 4294967295u) % vec2<u32>(32u)), ~var_1.wx), -1i, -1i));
    let var_4 = ~14819i;
    return select(0i < var_4, any(!(!(!vec3<bool>(true, false, var_0)))), any(vec3<bool>(false, !var_0, !var_0)) || true);
}

fn func_1() -> Struct_3 {
    global0 = any(select(!vec3<bool>(true, true, global3.x != -1110f), !vec3<bool>(false, any(vec3<bool>(false, true, false)), true), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), func_2(global3.x, _wgslsmith_f_op_f32(global3.x * global3.x), _wgslsmith_f_op_f32(abs(global3.x)), _wgslsmith_f_op_f32(floor(387f))))));
    global2 = array<vec4<f32>, 31>();
    var var_0 = _wgslsmith_add_u32(4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.a), ~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.c.x, u_input.c.x), u_input.c.zy)));
    global3 = _wgslsmith_f_op_vec4_f32(global2[_wgslsmith_index_u32(~abs(~u_input.a), 31u)] + vec4<f32>(global3.x, _wgslsmith_f_op_f32(-1000f + global3.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1356f - -1544f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.x * 1446f) - global3.x)), _wgslsmith_f_op_f32(-global3.x)));
    let var_1 = !all(!vec3<bool>(true, true, u_input.b.x <= 55881i));
    return Struct_3(vec4<bool>(all(vec2<bool>(var_1 & false, !var_1)), all(vec4<bool>(true, var_1, true, var_1)), true, var_1), u_input.b, Struct_1(_wgslsmith_f_op_f32(trunc(global3.x))), Struct_1(global3.x));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<i32>, 12>();
    global0 = true;
    let var_0 = u_input.b.x & (31470i ^ (-26795i & _wgslsmith_dot_vec4_i32(-global1[_wgslsmith_index_u32(4294967295u, 12u)], ~global1[_wgslsmith_index_u32(7100u, 12u)])));
    let var_1 = func_1();
    var var_2 = _wgslsmith_clamp_vec3_i32(vec3<i32>(-var_0, u_input.b.x, _wgslsmith_div_i32(~0i, i32(-1i) * -2147483647i)), max(~(~vec3<i32>(-910i, 0i, u_input.b.x)), vec3<i32>(reverseBits(~0i), -54851i, var_1.b.x)), ~firstLeadingBit(vec3<i32>(~u_input.b.x, _wgslsmith_div_i32(6549i, 21911i), _wgslsmith_dot_vec2_i32(var_1.b.zy, vec2<i32>(u_input.b.x, var_0)))));
    var var_3 = Struct_1(690f);
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.a + global3.x) * _wgslsmith_f_op_f32(-var_3.a)), -1797f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c.a) - _wgslsmith_f_op_f32(-global3.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1827f + 575f))))));
    global0 = true;
    var var_5 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(151f, -650f), vec2<f32>(var_1.d.a, var_3.a), true)) * _wgslsmith_f_op_vec2_f32(min(global3.zx, global3.yy)))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1445f, -184f))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_u32(u_input.c.x, ~39932u));
}

