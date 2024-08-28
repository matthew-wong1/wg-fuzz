struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec3<f32>,
    c: vec4<f32>,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: vec4<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 19> = array<vec4<u32>, 19>(vec4<u32>(9162u, 0u, 1u, 1u), vec4<u32>(25621u, 1u, 1u, 29217u), vec4<u32>(4294967295u, 56363u, 0u, 4294967295u), vec4<u32>(8407u, 51230u, 26196u, 1u), vec4<u32>(10482u, 10814u, 20400u, 38770u), vec4<u32>(34300u, 59951u, 4294967295u, 16985u), vec4<u32>(5520u, 81848u, 8976u, 32534u), vec4<u32>(4294967295u, 36560u, 1u, 75277u), vec4<u32>(0u, 4294967295u, 55540u, 0u), vec4<u32>(0u, 13847u, 0u, 1u), vec4<u32>(1u, 42615u, 1u, 1u), vec4<u32>(1u, 3904u, 1u, 0u), vec4<u32>(0u, 0u, 3007u, 46960u), vec4<u32>(0u, 4294967295u, 4294967295u, 34546u), vec4<u32>(44368u, 17584u, 103498u, 2779u), vec4<u32>(61122u, 1u, 53213u, 45650u), vec4<u32>(30103u, 1u, 0u, 0u), vec4<u32>(1u, 0u, 0u, 35274u), vec4<u32>(1u, 0u, 1u, 10392u));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: vec2<f32>) -> bool {
    return false;
}

fn func_3(arg_0: vec2<bool>, arg_1: vec2<f32>, arg_2: bool, arg_3: Struct_1) -> Struct_4 {
    global0 = array<vec4<u32>, 19>();
    let var_0 = vec2<u32>(~1u, ~1u);
    let var_1 = !vec2<bool>(arg_0.x, any(vec3<bool>(true, true, !arg_0.x)));
    var var_2 = 1i;
    var var_3 = Struct_3(true, _wgslsmith_mult_i32(u_input.b.x, 1i), ~(~(-vec4<i32>(u_input.b.x, u_input.c, -12898i, 2147483647i))));
    return Struct_4(Struct_3(arg_2, firstLeadingBit(-1i), var_3.c), ~var_0.x);
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: bool, arg_3: Struct_4) -> Struct_2 {
    global0 = array<vec4<u32>, 19>();
    let var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0.c) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.x)), arg_0.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c.x) + -680f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.x) + _wgslsmith_f_op_f32(-1772f - -799f)))), _wgslsmith_f_op_vec3_f32(arg_0.a.wxx + arg_0.c.ywy), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_0.a * arg_0.a)));
    global0 = array<vec4<u32>, 19>();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * 373f) - var_0.b.x) * arg_0.b.x);
    var var_2 = func_3(vec2<bool>(!arg_2 && true, arg_1), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-299f, 1034f))))) * arg_0.a.xz), arg_2, Struct_1(arg_3.b));
    return Struct_2(arg_0.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -932f)))) + _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(1668f)), _wgslsmith_f_op_f32(-187f + var_0.a.x), 1796f), vec3<f32>(_wgslsmith_f_op_f32(var_0.c.x - -1762f), _wgslsmith_f_op_f32(f32(-1f) * -3493f), _wgslsmith_f_op_f32(-1000f * 164f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(var_1)), _wgslsmith_div_f32(arg_0.b.x, _wgslsmith_f_op_f32(1627f + arg_0.a.x)), -185f, _wgslsmith_div_f32(-1294f, _wgslsmith_f_op_f32(-var_1))) * var_0.c));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec4<f32>, arg_2: vec2<bool>) -> vec2<f32> {
    global0 = array<vec4<u32>, 19>();
    var var_0 = Struct_2(arg_1, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(731f, -542f, 1749f))))) - arg_1.zyx), vec4<f32>(arg_1.x, arg_1.x, arg_1.x, arg_1.x));
    var_0 = func_4(Struct_2(var_0.c, _wgslsmith_f_op_vec3_f32(var_0.b - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(var_0.c.zxx + vec3<f32>(arg_1.x, -533f, -992f))))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(var_0.a, _wgslsmith_f_op_vec4_f32(select(arg_1, arg_1, arg_2.x)))))), select(true & !(-1351f < var_0.c.x), false, true), arg_2.x, func_3(!(!arg_2), vec2<f32>(101f, _wgslsmith_f_op_f32(-var_0.c.x)), (arg_2.x || arg_2.x) != (func_2(var_0.a.wx) || true), Struct_1(u_input.d)));
    var_0 = func_4(Struct_2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -471f), var_0.b.x, 625f, var_0.b.x), var_0.a, select(!vec4<bool>(false, true, true, arg_2.x), select(vec4<bool>(arg_2.x, arg_2.x, arg_2.x, arg_2.x), vec4<bool>(false, false, arg_2.x, true), true), vec4<bool>(arg_2.x, true, arg_2.x, arg_2.x)))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_1.xxw * arg_1.zwx), func_4(Struct_2(var_0.a, var_0.c.xyz, vec4<f32>(-146f, 585f, 830f, -1545f)), false, arg_2.x, Struct_4(Struct_3(true, 0i, vec4<i32>(u_input.b.x, u_input.b.x, u_input.c, -36492i)), arg_0.x)).a.xzy))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(-799f, -526f, -423f, 530f), arg_1), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.c.x, arg_1.x, -625f, -1463f), var_0.a))), true))), true, !any(vec4<bool>(any(vec2<bool>(true, arg_2.x)), all(vec2<bool>(arg_2.x, arg_2.x)), any(vec2<bool>(false, arg_2.x)), func_2(vec2<f32>(-896f, -374f)))), func_3(arg_2, var_0.a.yz, true, Struct_1(u_input.a)));
    var var_1 = _wgslsmith_clamp_vec2_u32(~(_wgslsmith_mod_vec2_u32(arg_0, arg_0) | vec2<u32>(countOneBits(arg_0.x), func_3(arg_2, arg_1.yw, true, Struct_1(15876u)).b)), max(_wgslsmith_mult_vec2_u32(arg_0, select(arg_0 | arg_0, _wgslsmith_clamp_vec2_u32(vec2<u32>(22608u, arg_0.x), arg_0, vec2<u32>(arg_0.x, 1u)), arg_2)), max(vec2<u32>(reverseBits(4294967295u), 1u), arg_0)), arg_0);
    return var_0.b.xx;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(-u_input.b);
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1843f, 243f) - _wgslsmith_f_op_f32(-803f * 230f)) + _wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-584f * 745f)) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1265f, 183f))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(908f)))));
    var var_2 = min(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.d, min(u_input.d ^ 1u, ~u_input.a)), vec2<u32>(u_input.a, u_input.d | 0u)), vec2<u32>(~(~_wgslsmith_mult_u32(61875u, 16304u)), reverseBits(~u_input.a)));
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1(_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 4294967295u) | min(vec2<u32>(30051u, 61329u), vec2<u32>(u_input.d, var_2.x)), ~_wgslsmith_add_vec2_u32(vec2<u32>(53796u, u_input.a), vec2<u32>(50345u, 4294967295u)), _wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(4294967295u, u_input.d)), ~vec2<u32>(1u, var_2.x), vec2<u32>(4294967295u, 48439u))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-2190f, _wgslsmith_f_op_f32(trunc(-187f)), _wgslsmith_f_op_f32(ceil(-853f)), -477f) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -395f, var_1.x, 169f) + vec4<f32>(var_1.x, -154f, 170f, var_1.x)), vec4<f32>(-495f, -278f, var_1.x, var_1.x)))), vec2<bool>(all(vec4<bool>(true, true, true, true)), !(var_2.x < 0u)))));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-540f)) * _wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-210f + 608f)))));
    var var_4 = _wgslsmith_mod_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(global0[_wgslsmith_index_u32(1u, 19u)], vec4<u32>(var_2.x & 25216u, var_2.x, var_2.x, 16863u)), var_2.x), var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.d, var_2.x), vec2<u32>(48662u, 106709u)) | vec2<u32>(u_input.a, u_input.a), select(vec2<u32>(0u, var_2.x), vec2<u32>(1u, u_input.a), true)), vec2<u32>(var_2.x, _wgslsmith_mod_u32(_wgslsmith_div_u32(106276u, var_2.x), 1u))), var_1.x);
}

