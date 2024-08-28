struct Struct_1 {
    a: vec2<bool>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec2<u32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
    c: bool,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec3<i32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<bool, 18>;

var<private> global2: Struct_2 = Struct_2(-33310i, Struct_1(vec2<bool>(true, false), vec2<i32>(-2744i, -1i)), vec2<u32>(28490u, 484u));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec4<f32>) -> u32 {
    var var_0 = u_input.a.x;
    let var_1 = all(select(select(vec4<bool>(global0.x, true, false, arg_1.d.x), !arg_0.d, select(vec4<bool>(global2.b.a.x, arg_1.b.a.x, arg_0.b.a.x, true), arg_0.d, vec4<bool>(false, arg_1.d.x, false, true))), !arg_0.d, true)) != true;
    var var_2 = arg_1.b;
    global0 = !arg_1.d;
    global1 = array<bool, 18>();
    return min(4294967295u, _wgslsmith_div_u32(57639u, global2.c.x)) ^ (~4294967295u << (0u % 32u));
}

fn func_3(arg_0: vec3<f32>, arg_1: i32, arg_2: i32, arg_3: Struct_2) -> bool {
    let var_0 = true;
    var var_1 = true;
    global2 = Struct_2(i32(-1i) * -2147483647i, Struct_1(select(vec2<bool>(26049u < arg_3.c.x, true), select(vec2<bool>(global0.x, true), select(vec2<bool>(var_0, false), global0.xy, arg_3.b.a), global0.x), arg_3.b.a), _wgslsmith_add_vec2_i32(~vec2<i32>(u_input.a.x, -19657i), _wgslsmith_clamp_vec2_i32(~vec2<i32>(arg_2, arg_1), vec2<i32>(-1i, arg_3.a), vec2<i32>(1i, 17259i)))), firstTrailingBit(vec2<u32>(arg_3.c.x, ~4294967295u)));
    global0 = !vec4<bool>(true, all(vec3<bool>(global1[_wgslsmith_index_u32(1848u, 18u)], true, select(true, false, global2.b.a.x))), true, false);
    let var_2 = !(!global2.b.a.x);
    return all(global0.zzw);
}

fn func_2(arg_0: u32) -> Struct_3 {
    var var_0 = !vec4<bool>(!global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, global2.c.x), vec2<u32>(arg_0, global2.c.x)), 18u)] | true, !global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_0, 49451u), 18u)], global0.x != select(!global0.x, all(global2.b.a), all(global0.zy)), !all(!global2.b.a));
    var var_1 = true;
    var var_2 = global2.b;
    let var_3 = !global0.x;
    var var_4 = ~global2.b.b.x;
    return Struct_3(vec3<f32>(-2342f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(833f, _wgslsmith_f_op_f32(f32(-1f) * -102f), true & var_2.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f))), global2.b, any(select(vec4<bool>(global1[_wgslsmith_index_u32(countOneBits(global2.c.x), 18u)], true, any(global0.yww), any(vec4<bool>(var_2.a.x, true, false, true))), vec4<bool>(true, true, global1[_wgslsmith_index_u32(arg_0, 18u)], true), select(select(vec4<bool>(global0.x, global2.b.a.x, true, var_2.a.x), vec4<bool>(false, false, global2.b.a.x, false), global0.x), !vec4<bool>(global1[_wgslsmith_index_u32(7247u, 18u)], global2.b.a.x, false, false), true))), select(vec4<bool>(func_3(vec3<f32>(-523f, 739f, -115f), u_input.a.x, var_2.b.x, Struct_2(22650i, Struct_1(var_0.wz, var_2.b), vec2<u32>(56675u, 2271u))) && any(global0.yzy), all(select(vec4<bool>(global0.x, false, false, false), vec4<bool>(true, true, global1[_wgslsmith_index_u32(arg_0, 18u)], true), vec4<bool>(true, true, global2.b.a.x, var_0.x))), func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-811f, 649f, -1172f)), countOneBits(u_input.a.x), global2.a & 903i, Struct_2(-39771i, global2.b, global2.c)), true), vec4<bool>(true, all(select(vec4<bool>(global1[_wgslsmith_index_u32(arg_0, 18u)], true, var_3, global2.b.a.x), vec4<bool>(true, var_3, true, global1[_wgslsmith_index_u32(0u, 18u)]), false)), firstLeadingBit(u_input.a.x) > ~2147483647i, func_3(vec3<f32>(233f, 306f, -1764f), var_2.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, var_2.b.x, 0i), u_input.a), Struct_2(2039i, Struct_1(vec2<bool>(true, true), var_2.b), global2.c))), true));
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: u32, arg_3: Struct_3) -> Struct_3 {
    global0 = vec4<bool>(global0.x, true, !func_2(~select(arg_2, 4294967295u, true)).c, all(!(!vec2<bool>(global0.x, true))));
    var var_0 = select(vec4<bool>(any(arg_3.d.yzy), arg_3.c, arg_3.d.x, any(vec3<bool>(arg_0.a.x || global1[_wgslsmith_index_u32(0u, 18u)], global2.c.x <= global2.c.x, false))), !(!(!(!vec4<bool>(global2.b.a.x, false, false, true)))), any(global0.zxy));
    global2 = Struct_2(_wgslsmith_mod_i32(-15068i, select(-33779i, _wgslsmith_dot_vec2_i32(global2.b.b, u_input.a.yy), global2.b.a.x)), global2.b, vec2<u32>(firstLeadingBit(_wgslsmith_add_u32(global2.c.x, 1u)) << (_wgslsmith_mod_u32(func_1(Struct_3(arg_3.a, Struct_1(vec2<bool>(global0.x, arg_3.b.a.x), global2.b.b), true, vec4<bool>(true, true, global2.b.a.x, true)), arg_3, vec4<f32>(1120f, arg_3.a.x, 623f, 401f)), _wgslsmith_add_u32(2227u, global2.c.x)) % 32u), ~13070u));
    var var_1 = -(~arg_3.b.b.x);
    let var_2 = abs(arg_3.b.b.x);
    return Struct_3(arg_3.a, func_2(arg_2).b, global2.b.a.x, select(vec4<bool>(any(vec4<bool>(global1[_wgslsmith_index_u32(77781u, 18u)], false, var_0.x, false)), global0.x, true, true), vec4<bool>(all(!vec2<bool>(global2.b.a.x, false)), arg_3.a.x <= _wgslsmith_f_op_f32(step(1093f, arg_3.a.x)), false, !(global1[_wgslsmith_index_u32(arg_2, 18u)] | global1[_wgslsmith_index_u32(global2.c.x, 18u)])), func_2(global2.c.x | 4294967295u).d));
}

fn func_5(arg_0: Struct_3) -> Struct_1 {
    let var_0 = reverseBits(countOneBits((vec4<u32>(global2.c.x, global2.c.x, 696u, global2.c.x) | vec4<u32>(3813u, 0u, global2.c.x, global2.c.x)) | vec4<u32>(60115u, 23722u, global2.c.x, global2.c.x))) >> (vec4<u32>(33186u | global2.c.x, 4357u, _wgslsmith_sub_u32(0u, _wgslsmith_mult_u32(global2.c.x, 1u)) | (1u >> (~global2.c.x % 32u)), 40697u ^ _wgslsmith_dot_vec4_u32(vec4<u32>(global2.c.x, global2.c.x, 16039u, 15009u) ^ vec4<u32>(global2.c.x, global2.c.x, global2.c.x, 4294967295u), _wgslsmith_add_vec4_u32(vec4<u32>(1u, 0u, 42822u, 1u), vec4<u32>(global2.c.x, global2.c.x, 1u, global2.c.x)))) % vec4<u32>(32u));
    return func_2(~global2.c.x).b;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 18>();
    var var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-595f, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1140f, 1620f), _wgslsmith_f_op_f32(-1224f - 521f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-443f + 797f)))), func_5(func_4(Struct_1(vec2<bool>(true, true), firstLeadingBit(global2.b.b)), abs(u_input.a.x), min(global2.c.x, global2.c.x), func_2(func_1(Struct_3(vec3<f32>(1056f, 2227f, 1048f), Struct_1(vec2<bool>(global2.b.a.x, true), global2.b.b), global0.x, vec4<bool>(true, global1[_wgslsmith_index_u32(global2.c.x, 18u)], global1[_wgslsmith_index_u32(global2.c.x, 18u)], false)), Struct_3(vec3<f32>(962f, -262f, -152f), global2.b, global2.b.a.x, vec4<bool>(global0.x, global1[_wgslsmith_index_u32(4294967295u, 18u)], global2.b.a.x, true)), vec4<f32>(847f, -152f, -452f, -1046f))))), true, select(vec4<bool>(true, global0.x, true, func_4(func_2(0u).b, ~(-2147483647i), global2.c.x & global2.c.x, Struct_3(vec3<f32>(-427f, -370f, -788f), global2.b, false, vec4<bool>(global0.x, false, global1[_wgslsmith_index_u32(global2.c.x, 18u)], false))).b.a.x), vec4<bool>(false, !(!global2.b.a.x), !global2.b.a.x, select(false, true, 4294967295u < global2.c.x)), vec4<bool>(true, true, false, true)));
    var_0 = Struct_3(vec3<f32>(var_0.a.x, var_0.a.x, 591f), Struct_1(vec2<bool>(true, ~global2.c.x > countOneBits(global2.c.x)), select(vec2<i32>(98066i, global2.a) & _wgslsmith_div_vec2_i32(global2.b.b, vec2<i32>(global2.a, var_0.b.b.x)), func_4(var_0.b, countOneBits(global2.a), reverseBits(global2.c.x), Struct_3(var_0.a, var_0.b, true, vec4<bool>(global0.x, false, true, global0.x))).b.b, !(!vec2<bool>(true, var_0.c)))), all(!(!(!vec2<bool>(var_0.b.a.x, false)))), !(!func_2(global2.c.x).d));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1973f + var_0.a.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.a.x)) - var_0.a.x));
    var var_2 = global1[_wgslsmith_index_u32(firstTrailingBit(1u), 18u)];
    let var_3 = _wgslsmith_f_op_f32(1041f - _wgslsmith_div_f32(788f, _wgslsmith_f_op_f32(-575f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-297f, -1505f)))));
    global1 = array<bool, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, global2.c.x) ^ vec2<u32>(global2.c.x, global2.c.x), ~vec2<u32>(1u, 7622u), ~vec2<u32>(0u, global2.c.x)), abs(global2.c))), _wgslsmith_f_op_f32(var_1.x * 578f), ~vec3<i32>(-var_0.b.b.x, -39819i, global2.b.b.x) << (select(vec3<u32>(global2.c.x, ~global2.c.x, ~global2.c.x), _wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(29869u, 27410u, global2.c.x), vec3<u32>(1u, 0u, 45538u)), firstLeadingBit(vec3<u32>(20411u, 44476u, 1u))), var_0.d.wzx) % vec3<u32>(32u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-378f + 639f) * _wgslsmith_f_op_f32(var_1.x - var_3)), _wgslsmith_f_op_f32(round(var_0.a.x)), _wgslsmith_f_op_f32(var_3 - _wgslsmith_f_op_f32(-var_1.x)), 1048f)));
}

