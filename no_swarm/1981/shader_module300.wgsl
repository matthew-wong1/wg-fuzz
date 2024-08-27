struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec3<f32>,
    d: vec3<i32>,
}

struct Struct_3 {
    a: f32,
    b: vec3<u32>,
    c: Struct_1,
    d: Struct_1,
    e: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_5 {
    a: Struct_1,
    b: f32,
    c: u32,
    d: Struct_2,
    e: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 29> = array<vec4<bool>, 29>(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false));

var<private> global1: Struct_5 = Struct_5(Struct_1(49339u), 102f, 4294967295u, Struct_2(Struct_1(81486u), vec3<i32>(2147483647i, i32(-2147483648), 38620i), vec3<f32>(950f, -1988f, -859f), vec3<i32>(-1i, 1i, 1i)), -1226f);

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: vec3<i32>) -> Struct_1 {
    global0 = array<vec4<bool>, 29>();
    var var_0 = Struct_5(Struct_1(global1.c), -429f, ~25481u, global1.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.b, 1954f))))));
    global0 = array<vec4<bool>, 29>();
    let var_1 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -333f), 1447f, _wgslsmith_div_f32(-164f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.e), global1.d.c.x))), global1.e)));
    let var_2 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1.x, 944f, global1.d.c.x, var_1.x)))))));
    return Struct_1(global1.d.a.a | reverseBits(0u ^ (u_input.a.x & var_0.a.a)));
}

fn func_3(arg_0: vec2<bool>) -> f32 {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(global1.e, global1.e)), _wgslsmith_f_op_f32(210f - global1.d.c.x), -110f, global1.b) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-723f, global1.d.c.x, 656f, 1503f) + vec4<f32>(1000f, -2112f, -1708f, global1.e)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.d.c.x, global1.b, 1000f, global1.e)), vec4<bool>(true, arg_0.x, arg_0.x, true)))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -427f), _wgslsmith_f_op_f32(round(global1.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-495f * -1066f) + global1.d.c.x), _wgslsmith_f_op_f32(trunc(global1.b)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global1.d.c.x, global1.b, -1853f, 552f), vec4<f32>(global1.e, global1.d.c.x, global1.d.c.x, 595f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-513f, global1.e, global1.b, 776f))))));
    let var_1 = global1.d;
    let var_2 = _wgslsmith_dot_vec2_u32(select(~(~u_input.b), ~vec2<u32>(u_input.b.x, u_input.a.x), arg_0.x) | _wgslsmith_div_vec2_u32((vec2<u32>(u_input.a.x, 21353u) ^ vec2<u32>(var_1.a.a, 4863u)) | select(u_input.b, vec2<u32>(global1.a.a, 1u), true), abs(u_input.a | u_input.b)), u_input.b);
    var var_3 = select(!(global1.d.b.x <= abs(u_input.d)) || true, !(countOneBits(~u_input.a.x) == var_2), any(global0[_wgslsmith_index_u32(~(0u & var_1.a.a), 29u)]));
    return 308f;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1, arg_2: i32, arg_3: vec2<f32>) -> vec4<u32> {
    global0 = array<vec4<bool>, 29>();
    global0 = array<vec4<bool>, 29>();
    let var_0 = _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(~(firstLeadingBit(vec3<u32>(23938u, 0u, 4294967295u)) | vec3<u32>(arg_1.a, 0u, arg_1.a)), ~(~vec3<u32>(30707u, 0u, 1u))), max(20412u, u_input.a.x));
    global0 = array<vec4<bool>, 29>();
    let var_1 = true == (_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -119f))) < _wgslsmith_f_op_f32(func_3(vec2<bool>(true, true))));
    return _wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(firstLeadingBit(~4278u), max(arg_0.a.a & 90221u, 1u), 0u, 1u), ~abs(vec4<u32>(arg_0.a.a, 19760u, 4294967295u, 2710u))), select(reverseBits(~firstTrailingBit(vec4<u32>(global1.c, 9964u, 0u, 1u))), ~(vec4<u32>(u_input.a.x, 24094u, var_0, u_input.a.x) & ~vec4<u32>(0u, 1u, arg_0.a.a, 4294967295u)), true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_vec4_u32(~select(func_2(global1.d, func_1(vec3<i32>(-26199i, -47954i, -39953i)), 19099i, global1.d.c.zy), (vec4<u32>(1u, u_input.a.x, 67568u, global1.a.a) >> (vec4<u32>(u_input.b.x, global1.d.a.a, global1.a.a, global1.a.a) % vec4<u32>(32u))) | _wgslsmith_div_vec4_u32(vec4<u32>(global1.d.a.a, u_input.a.x, 1u, u_input.b.x), vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, 0u)), select(vec4<bool>(true, true, true, true), global0[_wgslsmith_index_u32(countOneBits(18195u), 29u)], true)), vec4<u32>(min(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, global1.d.a.a, global1.c), vec3<u32>(global1.c, 43018u, 89230u)), vec3<u32>(4294967295u, u_input.a.x, 9212u)), ~_wgslsmith_mult_u32(u_input.b.x, 15601u)), u_input.a.x, ((u_input.a.x << (18927u % 32u)) & u_input.a.x) & 6711u, u_input.b.x));
    var var_1 = Struct_4(global1.d, func_1(_wgslsmith_mult_vec3_i32(select(global1.d.b, global1.d.d, vec3<bool>(true, true, true)), vec3<i32>(firstTrailingBit(u_input.c), _wgslsmith_sub_i32(u_input.d, -3083i), u_input.d))));
    global0 = array<vec4<bool>, 29>();
    var_0 = vec4<u32>(~u_input.a.x, _wgslsmith_dot_vec2_u32(func_2(var_1.a, var_1.a.a, 2147483647i, var_1.a.c.zy).zz, var_0.zx), _wgslsmith_clamp_u32(min(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.c, 13626u, 4294967295u, 0u), vec4<u32>(u_input.b.x, 0u, u_input.a.x, 25911u)), 47063u), 4294967295u << (var_0.x % 32u), _wgslsmith_sub_u32(70320u, ~4294967295u)), (1u ^ max(54375u, global1.c)) ^ _wgslsmith_sub_u32(17632u, var_1.a.a.a)) & (vec4<u32>(6166u, ~var_1.b.a, _wgslsmith_dot_vec2_u32(var_0.yz, u_input.b) & ~u_input.b.x, ~_wgslsmith_mult_u32(u_input.a.x, 1u)) & abs(_wgslsmith_sub_vec4_u32(~vec4<u32>(global1.d.a.a, 4294967295u, 14740u, global1.c), vec4<u32>(global1.c, 0u, var_1.a.a.a, 71158u))));
    var var_2 = global1.a;
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.c.x, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(977f, global1.d.c.x), _wgslsmith_f_op_f32(-var_1.a.c.x))), _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(f32(-1f) * -2152f)))) * vec3<f32>(var_1.a.c.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.d.c.x + global1.e)), -304f, false)), _wgslsmith_f_op_f32(trunc(-1596f))));
    var var_4 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-1075f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1000f, -1000f)))), 17503u, var_0.xzz);
}

