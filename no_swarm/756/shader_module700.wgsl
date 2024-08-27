struct Struct_1 {
    a: bool,
    b: f32,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec2<f32>,
    c: u32,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(false, 239f, 38555u, -1i), Struct_1(false, -623f, 1u, 18534i), Struct_1(false, 1178f, 1u, 8307i), Struct_1(false, 183f, 12745u, i32(-2147483648)), Struct_1(false, -165f, 1u, -1i), Struct_1(true, -668f, 11679u, 19521i), Struct_1(false, 1294f, 107098u, 5374i), Struct_1(false, -294f, 111901u, 44025i));

var<private> global1: Struct_1 = Struct_1(false, 2425f, 56801u, -1i);

var<private> global2: array<bool, 21>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_1(arg_0: f32, arg_1: Struct_2) -> i32 {
    var var_0 = vec3<i32>(global1.d, 4862i, -abs(-41490i));
    var var_1 = arg_1.b.x;
    var var_2 = arg_0;
    let var_3 = !(!vec2<bool>(global1.a, arg_1.a.x));
    var_2 = arg_0;
    return -2147483647i;
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: vec4<bool>, arg_3: vec2<bool>) -> vec4<f32> {
    let var_0 = Struct_3(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(~(vec2<u32>(global1.c, global1.c) << (vec2<u32>(global1.c, global1.c) % vec2<u32>(32u))), _wgslsmith_div_vec2_u32(~vec2<u32>(1u, global1.c), ~vec2<u32>(global1.c, 49335u))), ~1569u), Struct_2(arg_3, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_1, 625f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_1, arg_1), vec2<f32>(-348f, 1673f))))), select(3740u, select(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, global1.c), vec3<u32>(33732u, global1.c, global1.c)), _wgslsmith_dot_vec3_u32(vec3<u32>(global1.c, 4294967295u, 16070u), vec3<u32>(48024u, 0u, global1.c)), true), true)), Struct_2(!(!select(arg_3, vec2<bool>(global1.a, global1.a), arg_3)), vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_1 - arg_0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.b * 152f) + arg_0)), global1.c));
    let var_1 = 2147483647i;
    let var_2 = select(_wgslsmith_dot_vec2_u32(vec2<u32>(~0u >> (var_0.b.c % 32u), ~global1.c), abs(~vec2<u32>(104790u, 32891u))), ~(1u ^ _wgslsmith_mod_u32(0u, ~global1.c)), all(vec2<bool>(_wgslsmith_dot_vec3_i32(u_input.c.yzx, vec3<i32>(global1.d, u_input.c.x, u_input.b.x)) >= -21614i, false)));
    global1 = Struct_1(arg_3.x, var_0.b.b.x, 20981u, (func_1(arg_1, var_0.b) << (~4294967295u % 32u)) >> (var_2 % 32u));
    var var_3 = abs(var_2);
    return vec4<f32>(-445f, arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(arg_0)))) + _wgslsmith_f_op_f32(sign(113f)))), _wgslsmith_f_op_f32(trunc(1855f)));
}

fn func_2(arg_0: i32, arg_1: vec2<f32>, arg_2: vec4<i32>, arg_3: Struct_1) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1248f, global1.b, -267f, 456f), _wgslsmith_f_op_vec4_f32(func_3(global1.b, global1.b, vec4<bool>(true, global2[_wgslsmith_index_u32(arg_3.c, 21u)], true, true), vec2<bool>(false, false)))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, global1.b, 1000f, arg_1.x), vec4<f32>(arg_1.x, global1.b, -847f, arg_1.x)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-2325f, 657f, -293f, arg_1.x))), !vec4<bool>(true, arg_3.a, global1.a, global2[_wgslsmith_index_u32(19624u, 21u)])))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.b, 1049f, -176f, -396f)))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.b, arg_3.b, global1.b, arg_1.x) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global1.b, -729f, arg_3.b, 270f))))), !vec4<bool>(false, true, global1.a, true))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-423f + 1700f), _wgslsmith_f_op_f32(-1373f + global1.b), _wgslsmith_div_f32(749f, global1.b), global1.b) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, 1439f, -234f, -652f))))) * vec4<f32>(_wgslsmith_f_op_f32(489f + _wgslsmith_f_op_f32(-global1.b)), -1555f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_3.b - global1.b), _wgslsmith_f_op_f32(-arg_1.x))), _wgslsmith_f_op_f32(step(global1.b, arg_1.x)))));
    global0 = array<Struct_1, 8>();
    global2 = array<bool, 21>();
    var var_1 = -(max((i32(-1i) * -5532i) >> ((1187u << (global1.c % 32u)) % 32u), reverseBits(u_input.a.x)) >> (4294967295u % 32u));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, arg_1.x, global1.b, -1091f) * vec4<f32>(446f, var_0.x, 2140f, arg_3.b))) - vec4<f32>(482f, 433f, var_0.x, _wgslsmith_f_op_f32(261f - -837f))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1014f, var_0.x, 853f, global1.b))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.b, global1.b, 282f, 163f)))), vec4<bool>(!global2[_wgslsmith_index_u32(global1.c, 21u)], all(vec2<bool>(global1.a, global1.a)), false, all(vec4<bool>(arg_3.a, false, true, true)))))));
    return _wgslsmith_dot_vec2_u32(vec2<u32>(reverseBits(firstTrailingBit(19773u)) & ~_wgslsmith_mod_u32(1u, 1u), select(7956u, ~1u, arg_3.a)), vec2<u32>(0u, ~1u >> (arg_3.c % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.b < global1.b;
    global2 = array<bool, 21>();
    var var_1 = ~_wgslsmith_mult_vec3_u32(vec3<u32>(select(29141u, global1.c, true), ~global1.c, ~global1.c), ~vec3<u32>(global1.c, 0u, 0u) & (vec3<u32>(1u, 1u, 0u) & vec3<u32>(global1.c, 32630u, global1.c))) << ((_wgslsmith_mod_vec3_u32(~(~vec3<u32>(37174u, global1.c, global1.c)), max(~vec3<u32>(global1.c, global1.c, 0u), _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 40812u, global1.c), vec3<u32>(global1.c, global1.c, 45995u)))) >> (~vec3<u32>(_wgslsmith_mod_u32(4294967295u, 1u), 4294967295u, 1u) % vec3<u32>(32u))) % vec3<u32>(32u));
    var_1 = ~(~max(_wgslsmith_clamp_vec3_u32(~vec3<u32>(global1.c, 26206u, var_1.x), max(vec3<u32>(global1.c, var_1.x, 21157u), vec3<u32>(1u, 35402u, 29457u)), select(vec3<u32>(112557u, var_1.x, var_1.x), vec3<u32>(global1.c, 0u, 1u), vec3<bool>(global1.a, global1.a, false))), ~vec3<u32>(global1.c, var_1.x, var_1.x)));
    global1 = global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(28190u, func_2(func_1(-918f, Struct_2(vec2<bool>(global2[_wgslsmith_index_u32(global1.c, 21u)], global1.a), vec2<f32>(-1383f, 535f), global1.c)), vec2<f32>(global1.b, global1.b), -vec4<i32>(u_input.e.x, u_input.c.x, u_input.b.x, 51033i), Struct_1(global1.a, global1.b, 19051u, 1i)) >> (var_1.x % 32u)), 8u)];
    var var_2 = all(select(select(!(!vec3<bool>(global1.a, false, false)), select(vec3<bool>(global1.a, false, global2[_wgslsmith_index_u32(80694u, 21u)]), vec3<bool>(false, false, global1.a), vec3<bool>(false, true, global2[_wgslsmith_index_u32(var_1.x, 21u)])), vec3<bool>(all(vec4<bool>(global2[_wgslsmith_index_u32(17254u, 21u)], global1.a, global2[_wgslsmith_index_u32(var_1.x, 21u)], false)), global2[_wgslsmith_index_u32(53147u, 21u)] || global1.a, any(vec2<bool>(global1.a, global2[_wgslsmith_index_u32(4294967295u, 21u)])))), !(!select(vec3<bool>(true, true, false), vec3<bool>(false, global1.a, global2[_wgslsmith_index_u32(global1.c, 21u)]), vec3<bool>(false, global1.a, true))), true));
    global2 = array<bool, 21>();
    var var_3 = global0[_wgslsmith_index_u32(4294967295u, 8u)];
    var var_4 = Struct_1(true, _wgslsmith_f_op_f32(abs(global1.b)), var_1.x, ~abs(select(2147483647i | u_input.c.x, -28103i, global1.a || false)));
    let x = u_input.a;
    s_output = StorageBuffer(10013i);
}

