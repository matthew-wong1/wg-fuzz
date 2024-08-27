struct Struct_1 {
    a: bool,
    b: f32,
    c: vec3<bool>,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: f32,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: i32,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: f32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 1i;

var<private> global1: Struct_1 = Struct_1(false, -2070f, vec3<bool>(true, false, true), 4294967295u, 817f);

var<private> global2: array<Struct_2, 21>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2) -> vec4<f32> {
    global2 = array<Struct_2, 21>();
    var var_0 = !global1.c;
    var var_1 = 1000f;
    let var_2 = arg_0.a;
    var_0 = vec3<bool>(!global1.a, false, all(vec4<bool>(true, true, true, true)));
    return vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.e + _wgslsmith_f_op_f32(max(global1.b, _wgslsmith_f_op_f32(step(256f, arg_0.c)))))), _wgslsmith_f_op_f32(f32(-1f) * -1923f), 382f, _wgslsmith_f_op_f32(f32(-1f) * -1000f));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec4<u32>, arg_2: u32) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(1689f, -1715f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1267f)), _wgslsmith_f_op_f32(500f - _wgslsmith_f_op_f32(-830f - -1000f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(Struct_2(Struct_1(true, 857f, vec3<bool>(true, false, false), 4294967295u, global1.b), vec3<u32>(1u, arg_2, 0u), 626f, Struct_1(true, -553f, global1.c, u_input.a.x, global1.b), -1i)))))));
    var var_1 = -1570f;
    global1 = Struct_1(select(!global1.c.x, !any(global1.c), all(select(vec4<bool>(false, true, false, global1.c.x), vec4<bool>(global1.a, global1.c.x, false, true), vec4<bool>(global1.a, true, global1.c.x, false)))) == global1.a, var_0.x, vec3<bool>(global1.a, any(vec4<bool>(all(vec4<bool>(true, global1.a, true, global1.c.x)), any(vec4<bool>(false, false, global1.c.x, global1.c.x)), global1.a || global1.c.x, global1.c.x | global1.a)), true), ~arg_1.x, _wgslsmith_f_op_f32(1109f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.x))))));
    let var_2 = select(global1.c.yz, global1.c.zy, !(global1.a & (u_input.c >= u_input.b.x)) | true);
    return 100f;
}

fn func_1() -> f32 {
    var var_0 = Struct_1(true, -342f, global1.c, ~(~(~u_input.a.x & global1.d)), global1.e);
    var var_1 = false;
    global0 = _wgslsmith_mod_i32(-33826i, _wgslsmith_clamp_i32(u_input.e.x, u_input.e.x, 2147483647i));
    var var_2 = Struct_1(var_0.a, _wgslsmith_f_op_f32(max(-1027f, _wgslsmith_f_op_f32(global1.e * _wgslsmith_f_op_f32(-674f * -321f)))), var_0.c, global1.d, _wgslsmith_f_op_f32(1257f * global1.e));
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-938f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(vec4<i32>(u_input.e.x, 2147483647i, -42510i, -29523i), vec4<u32>(4294967295u, u_input.a.x, 1890u, global1.d), var_0.d)) + var_0.e), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.e * 991f) - var_0.b), 526f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-673f, 1115f, -284f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.e) + _wgslsmith_f_op_f32(abs(var_0.b)))) + vec4<f32>(_wgslsmith_f_op_f32(round(2714f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(251f, 1000f)) - 1f), var_2.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(767f * -1000f)))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.b - _wgslsmith_f_op_vec4_f32(func_3(global2[_wgslsmith_index_u32(var_2.d, 21u)])).x))) * _wgslsmith_f_op_f32(func_2(firstTrailingBit(vec4<i32>(~12942i, -2147483647i, _wgslsmith_mult_i32(u_input.d, u_input.e.x), 0i)), reverseBits(u_input.a), _wgslsmith_dot_vec2_u32(u_input.a.wx, firstLeadingBit(~u_input.a.zy)))));
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: Struct_2, arg_3: Struct_1) -> Struct_1 {
    global2 = array<Struct_2, 21>();
    let var_0 = all(select(vec3<bool>(true, arg_3.a, select(global1.c.x, false, arg_3.c.x)), arg_3.c, select(select(arg_2.a.c, vec3<bool>(global1.c.x, true, global1.a), vec3<bool>(global1.c.x, false, arg_2.a.a)), select(vec3<bool>(true, arg_3.a, global1.a), vec3<bool>(global1.c.x, true, arg_2.a.c.x), true), vec3<bool>(global1.a, false, false)))) || !(!arg_3.c.x);
    global2 = array<Struct_2, 21>();
    let var_1 = u_input.a;
    var var_2 = all(select(!(!select(vec4<bool>(false, true, global1.c.x, arg_3.a), vec4<bool>(global1.a, true, false, global1.a), vec4<bool>(var_0, arg_3.c.x, arg_2.d.a, false))), !vec4<bool>(var_0, all(vec4<bool>(global1.a, false, true, true)), all(global1.c), global1.c.x), var_0 || true));
    return arg_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 1i;
    global0 = ~_wgslsmith_div_i32(countOneBits(~u_input.c), u_input.d);
    let var_0 = global2[_wgslsmith_index_u32(~(~(~4294967295u)), 21u)];
    global2 = array<Struct_2, 21>();
    let var_1 = func_4(_wgslsmith_f_op_f32(func_1()), 1286f, Struct_2(Struct_1(var_0.d.a, global1.e, !global1.c, ~_wgslsmith_sub_u32(global1.d, global1.d), 2418f), var_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_3(global2[_wgslsmith_index_u32(1u, 21u)])).x - _wgslsmith_f_op_f32(-global1.b)), var_0.d, _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.e, var_0.e) ^ u_input.e.yy, vec2<i32>(-2147483647i, 17946i)), ~(-59322i & u_input.c))), var_0.d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(751f, _wgslsmith_f_op_f32(func_1()), func_4(var_0.d.b, -663f, global2[_wgslsmith_index_u32(var_1.d, 21u)], var_0.a).e, _wgslsmith_f_op_f32(-global1.e)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1000f, var_1.e, 1158f, var_1.b))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global1.e, 780f, 1810f, 178f), vec4<f32>(global1.b, -765f, -394f, var_0.c)))) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b, -1554f, -847f, var_1.e)))))), abs(vec4<u32>(~25058u, 6541u & u_input.a.x, _wgslsmith_div_u32(u_input.a.x, var_1.d), var_0.d.d) ^ u_input.a), abs((~u_input.a.zzy & ~var_0.b) | _wgslsmith_add_vec3_u32(~u_input.a.zxz, ~vec3<u32>(0u, u_input.a.x, 21257u))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global1.b - 295f), _wgslsmith_f_op_vec4_f32(func_3(global2[_wgslsmith_index_u32(var_1.d, 21u)])).x, all(select(select(vec4<bool>(false, var_0.a.a, false, var_0.d.c.x), vec4<bool>(global1.c.x, true, global1.c.x, var_1.c.x), var_1.c.x), select(vec4<bool>(false, var_0.d.a, false, global1.a), vec4<bool>(global1.c.x, true, var_1.c.x, true), var_0.a.a), false | var_1.c.x)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_vec4_f32(func_3(global2[_wgslsmith_index_u32(1u, 21u)])).x, -580f, var_0.d.e)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -194f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.b, -1141f) - _wgslsmith_f_op_f32(f32(-1f) * -111f)), 573f)));
}

