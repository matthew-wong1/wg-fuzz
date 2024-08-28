struct Struct_1 {
    a: vec3<i32>,
    b: vec4<bool>,
    c: vec2<bool>,
    d: i32,
}

struct Struct_2 {
    a: i32,
    b: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: vec4<f32>,
    d: vec4<u32>,
}

struct Struct_4 {
    a: i32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: u32,
    e: bool,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_4,
    c: bool,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
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

var<private> global0: u32 = 1u;

var<private> global1: Struct_4 = Struct_4(-63530i, vec2<u32>(48411u, 33019u), vec2<i32>(0i, i32(-2147483648)), 4294967295u, true);

var<private> global2: array<Struct_5, 11>;

var<private> global3: array<vec3<i32>, 29>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> u32 {
    let var_0 = select(abs(global1.c), -reverseBits(reverseBits(vec2<i32>(global1.a, global1.a)) ^ global1.c), 46356u > (max(_wgslsmith_dot_vec4_u32(vec4<u32>(27641u, global1.d, global1.b.x, global1.b.x), vec4<u32>(14975u, 4294967295u, 36188u, u_input.a.x)), 1u) & 57685u));
    var var_1 = _wgslsmith_mod_i32(-1i, ~730i);
    return _wgslsmith_sub_u32(global1.b.x, min(max(firstLeadingBit(global1.b.x), u_input.a.x) << (4294967295u % 32u), 4294967295u));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec2<bool>, arg_2: Struct_5) -> Struct_1 {
    let var_0 = arg_2.a;
    global1 = Struct_4(15721i, ~max(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, global1.b.x), vec2<u32>(26788u, 14403u)) << (select(u_input.a.zz, vec2<u32>(arg_2.b.b.x, 0u), var_0.b.wx) % vec2<u32>(32u)), arg_0.xz), vec2<i32>(1i, firstTrailingBit(arg_2.a.d)) & -global1.c, max(48427u, global1.d & func_3()), arg_1.x);
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1657f, -1175f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(3123f, -362f)), select(vec2<bool>(arg_2.a.b.x, true), var_0.b.yx, arg_2.b.e)))))));
    var var_2 = -_wgslsmith_clamp_i32(var_0.d, arg_2.b.c.x, ~global1.c.x);
    let var_3 = global1.b | u_input.a.zz;
    return var_0;
}

fn func_1(arg_0: vec2<f32>, arg_1: bool) -> u32 {
    var var_0 = Struct_4(global1.a, global1.b, abs(~abs(global1.c)), ~u_input.a.x, all(!(!select(vec4<bool>(true, false, arg_1, false), vec4<bool>(true, arg_1, global1.e, true), vec4<bool>(global1.e, true, false, global1.e)))));
    global2 = array<Struct_5, 11>();
    let var_1 = func_2(abs(u_input.a), vec2<bool>(var_0.c.x >= var_0.a, !all(vec3<bool>(global1.e, arg_1, global1.e))), global2[_wgslsmith_index_u32(~u_input.a.x, 11u)]);
    global1 = Struct_4(~countOneBits(0i), ~(~(~vec2<u32>(4294967295u, global1.b.x) | (var_0.b | vec2<u32>(4294967295u, var_0.d)))), vec2<i32>(_wgslsmith_clamp_i32(i32(-1i) * -12070i, 2147483647i, -16904i), -(i32(-1i) * -1107i)), ~(~(~89119u)), !(!(!arg_1)));
    let var_2 = 1172f;
    return global1.b.x;
}

fn func_4(arg_0: u32) -> i32 {
    var var_0 = ~max(u_input.a, u_input.a);
    let var_1 = Struct_5(func_2(vec3<u32>(reverseBits(firstLeadingBit(4294967295u)), u_input.a.x, arg_0), vec2<bool>(true, true), global2[_wgslsmith_index_u32(abs(_wgslsmith_div_u32(~1u, countOneBits(u_input.a.x))), 11u)]), Struct_4(global1.c.x, vec2<u32>(arg_0, 32338u) ^ var_0.zz, vec2<i32>(global1.c.x, global1.c.x), 34328u, any(func_2(u_input.a, vec2<bool>(false, global1.e), global2[_wgslsmith_index_u32(u_input.a.x, 11u)]).b) && false), !(-2147483647i == global1.c.x), vec4<i32>(global1.c.x, _wgslsmith_clamp_i32(global1.c.x, global1.c.x, _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(1i, global1.a, global1.c.x), global3[_wgslsmith_index_u32(var_0.x, 29u)], global3[_wgslsmith_index_u32(u_input.a.x, 29u)]), global3[_wgslsmith_index_u32(~u_input.a.x, 29u)])), ~global1.c.x >> (max(~1u, abs(22262u)) % 32u), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(-vec4<i32>(1i, global1.c.x, global1.a, 2147483647i), vec4<i32>(2147483647i, 16039i, global1.c.x, global1.a) >> (vec4<u32>(1u, 0u, u_input.a.x, arg_0) % vec4<u32>(32u))), vec4<i32>(0i, global1.a, global1.a, -51491i))));
    let var_2 = arg_0;
    let var_3 = Struct_3(Struct_2(-global1.a, vec3<u32>(~_wgslsmith_mult_u32(4294967295u, global1.b.x), var_1.b.d, 2495u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-2119f, 2227f)) - -1745f)) + -520f), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2403f, 570f, 1343f, 1461f)) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1000f, -662f, -140f, -480f)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-292f, -229f, -387f, 727f))))), ~(~vec4<u32>(var_2, 1u, 1u, arg_0)) >> (~vec4<u32>(5830u << (var_1.b.b.x % 32u), ~global1.d, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.b.d, 0u, 77266u, 1u), vec4<u32>(64179u, arg_0, u_input.a.x, 1u)), 18574u) % vec4<u32>(32u)));
    let var_4 = vec3<bool>(all(vec4<bool>(true, !(!var_1.b.e), var_1.a.b.x, var_1.c)), !all(vec4<bool>(var_1.b.e != var_1.c, global1.a > -1i, var_3.b > var_3.b, true)), all(var_1.a.b.yyy));
    return func_2(vec3<u32>(var_0.x, 22259u, var_2 ^ 0u), select(var_4.xx, vec2<bool>(func_2(~vec3<u32>(var_2, var_1.b.b.x, 0u), var_1.a.b.xy, Struct_5(var_1.a, Struct_4(global1.a, var_0.zx, vec2<i32>(-1i, var_1.a.d), 1u, true), true, vec4<i32>(var_1.d.x, global1.a, var_3.a.a, var_1.b.c.x))).b.x, (false || global1.e) || (false | global1.e)), any(select(select(vec2<bool>(global1.e, var_4.x), var_4.xx, false), func_2(var_3.d.ywz, var_1.a.b.ww, Struct_5(var_1.a, var_1.b, var_1.a.c.x, vec4<i32>(var_3.a.a, var_3.a.a, -26522i, -40150i))).b.yz, true))), Struct_5(Struct_1(-_wgslsmith_mult_vec3_i32(vec3<i32>(9776i, 21345i, var_3.a.a), vec3<i32>(var_1.a.a.x, var_1.b.a, -2147483647i)), func_2(u_input.a, func_2(var_3.a.b, var_1.a.c, Struct_5(Struct_1(global3[_wgslsmith_index_u32(10511u, 29u)], vec4<bool>(true, true, true, false), vec2<bool>(global1.e, var_4.x), 8953i), Struct_4(2147483647i, global1.b, var_1.b.c, global1.d, global1.e), false, vec4<i32>(12234i, 2147483647i, 0i, 55616i))).b.zy, Struct_5(Struct_1(vec3<i32>(var_1.b.c.x, var_1.b.c.x, var_3.a.a), var_1.a.b, vec2<bool>(false, var_1.c), var_3.a.a), var_1.b, true, var_1.d)).b, !vec2<bool>(false, var_4.x), var_1.a.a.x), var_1.b, false, _wgslsmith_clamp_vec4_i32(var_1.d ^ var_1.d, vec4<i32>(global1.c.x, global1.c.x, var_1.b.c.x, -15333i) ^ vec4<i32>(var_1.d.x, global1.c.x, -1i, var_1.a.a.x), ~vec4<i32>(var_3.a.a, 33277i, var_1.a.d, -2147483647i)) >> (~min(vec4<u32>(global1.b.x, 4294967295u, var_2, var_0.x), var_3.d) % vec4<u32>(32u)))).a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -(~func_4(func_1(vec2<f32>(-1063f, -1000f), global1.e)) << (func_1(vec2<f32>(_wgslsmith_f_op_f32(676f - -761f), 105f), all(select(vec2<bool>(global1.e, false), vec2<bool>(global1.e, global1.e), global1.e))) % 32u));
    global2 = array<Struct_5, 11>();
    let var_1 = select(global1.b, (~vec2<u32>(1u, global1.d) ^ u_input.a.xz) | ~vec2<u32>(_wgslsmith_sub_u32(u_input.a.x, global1.d), ~114389u), !func_2(~u_input.a, vec2<bool>(any(vec2<bool>(false, global1.e)), global1.e), global2[_wgslsmith_index_u32(countOneBits(40264u), 11u)]).b.yz);
    var var_2 = select(!(!(!vec3<bool>(global1.e, true, global1.e))), vec3<bool>(true, all(!(!vec3<bool>(false, false, global1.e))), !all(!vec3<bool>(true, false, global1.e))), vec3<bool>(true, true, true));
    var var_3 = Struct_3(Struct_2(1i, vec3<u32>(u_input.a.x, 0u, ~1u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1475f, 281f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-580f, _wgslsmith_f_op_f32(ceil(-2674f)))))), vec4<f32>(1f, 1f, 1f, 1f), ~vec4<u32>(3513u, 1u, _wgslsmith_sub_u32(50667u, 0u), ~global1.b.x & (var_1.x | 1u)));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.c.x * 708f) + _wgslsmith_div_f32(1374f, -1000f)) * var_3.c.x))));
    let x = u_input.a;
    s_output = StorageBuffer(global1.c.x);
}

