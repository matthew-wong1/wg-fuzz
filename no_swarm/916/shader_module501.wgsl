struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec2<u32>,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec2<f32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 9>;

var<private> global1: array<u32, 22>;

var<private> global2: Struct_3 = Struct_3(vec4<bool>(true, false, true, true));

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1() -> Struct_1 {
    return Struct_1(vec4<f32>(1f, 1993f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(1f)), -1381f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-2141f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -744f) - -658f))));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: Struct_2) -> u32 {
    global1 = array<u32, 22>();
    var var_0 = Struct_3(global2.a);
    return _wgslsmith_mod_u32(~(~select(1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~39798u, 22u)], 22u)], var_0.a.x)), ~global1[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_3.b.x, 22u)], 22u)], 22u)], arg_3.b.x, global1[_wgslsmith_index_u32(4294967295u, 22u)]) | _wgslsmith_dot_vec2_u32(arg_3.b, arg_3.b), 22u)]);
}

fn func_2(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: u32, arg_3: vec2<i32>) -> Struct_3 {
    global1 = array<u32, 22>();
    var var_0 = _wgslsmith_dot_vec4_u32(vec4<u32>(~21689u, func_3(arg_0.a, func_1(), _wgslsmith_add_vec4_i32(vec4<i32>(-1i, u_input.b, 2147483647i, u_input.d), vec4<i32>(arg_3.x, arg_3.x, u_input.c.x, u_input.b)), Struct_2(vec2<f32>(arg_0.a.x, arg_0.a.x), vec2<u32>(17297u, 258u))), arg_2, 1u), _wgslsmith_mult_vec4_u32(vec4<u32>(26028u, ~arg_1.x, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.x, 38916u, 4294967295u, global1[_wgslsmith_index_u32(arg_1.x, 22u)]), vec4<u32>(global1[_wgslsmith_index_u32(32472u, 22u)], arg_2, 37806u, global1[_wgslsmith_index_u32(1u, 22u)])), ~0u), reverseBits(vec4<u32>(arg_2, 0u, 47031u, 153886u)))) > (max(76627u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_2, 22u)] | select(4294967295u, 66852u, true), 22u)]) ^ _wgslsmith_clamp_u32(~0u ^ arg_1.x, arg_2, reverseBits(max(arg_2, global1[_wgslsmith_index_u32(21876u, 22u)]))));
    global0 = array<vec2<f32>, 9>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -723f) * -1203f);
    var var_2 = -1233f;
    return Struct_3(global2.a);
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: vec2<f32>, arg_3: Struct_3) -> Struct_2 {
    global1 = array<u32, 22>();
    global1 = array<u32, 22>();
    global0 = array<vec2<f32>, 9>();
    global0 = array<vec2<f32>, 9>();
    let var_0 = reverseBits(~(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(38676u, 22u)], 22u)] & global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(countOneBits(countOneBits(1u)), 22u)], 22u)], 22u)], 22u)], 22u)]));
    return Struct_2(_wgslsmith_f_op_vec2_f32(trunc(arg_2)), ~reverseBits(firstTrailingBit(_wgslsmith_sub_vec2_u32(vec2<u32>(var_0, 0u), vec2<u32>(4294967295u, 45212u)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(vec4<bool>(true || global2.a.x, global2.a.x, global2.a.x, global2.a.x));
    var var_1 = countOneBits(-1i);
    var var_2 = func_4(func_1(), ~(-1i), vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1767f + 1806f) + -1440f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -517f))), func_2(Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1111f, 359f, 1062f, 761f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(731f, 2082f, -1448f, -1740f)), global2.a.x))), ~(~vec3<u32>(1u, 62661u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(2103u, 22u)], 22u)])), ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 22u)], 22u)], vec2<i32>(0i, u_input.b)));
    global1 = array<u32, 22>();
    var var_3 = 1u;
    var var_4 = Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -221f), func_1().a.x, var_2.a.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), func_1().a));
    global2 = Struct_3(select(var_0.a, !vec4<bool>(!global2.a.x, true, all(vec3<bool>(var_0.a.x, false, true)), any(global2.a)), vec4<bool>(false, var_0.a.x, max(19522u, 0u) != global1[_wgslsmith_index_u32(4294967295u, 22u)], !(0u <= var_2.b.x))));
    var var_5 = func_4(Struct_1(var_4.a), ~u_input.b | u_input.c.x, var_2.a, func_2(Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a.x, 1042f, var_2.a.x, -204f) * vec4<f32>(var_2.a.x, 527f, 1099f, 1446f))), _wgslsmith_add_vec3_u32(countOneBits(vec3<u32>(1u, var_2.b.x, 74749u)), vec3<u32>(var_2.b.x, var_2.b.x, 4294967295u) & vec3<u32>(global1[_wgslsmith_index_u32(4294967295u, 22u)], 4294967295u, var_2.b.x)) << (~vec3<u32>(var_2.b.x, 72988u, 1u) % vec3<u32>(32u)), 838u, reverseBits(vec2<i32>(-u_input.b, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, -5832i, 2147483647i), vec3<i32>(u_input.c.x, -49125i, u_input.b))))));
    var var_6 = max(firstLeadingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, u_input.c.x, u_input.b, 1i), vec4<i32>(0i, u_input.c.x, -51752i, u_input.d) | vec4<i32>(u_input.d, u_input.d, 17272i, -2147483647i)) >> (~firstTrailingBit(vec4<u32>(var_5.b.x, 0u, var_2.b.x, var_5.b.x)) % vec4<u32>(32u))), _wgslsmith_add_vec4_i32(-vec4<i32>(75739i, ~u_input.b, u_input.a.x, ~1i), vec4<i32>(-reverseBits(64213i), u_input.b, _wgslsmith_mod_i32(u_input.d, -31309i), u_input.d)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(var_4.a.zx)) - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.a.x, var_5.a.x) - var_5.a)))))), var_5.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(373f, 1897f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_5.a.x, var_4.a.x)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_4.a.xy, _wgslsmith_f_op_vec2_f32(-var_2.a), any(vec3<bool>(global2.a.x, global2.a.x, global2.a.x)))) + _wgslsmith_f_op_vec2_f32(-var_2.a))), -978f, var_5.a.x);
}

