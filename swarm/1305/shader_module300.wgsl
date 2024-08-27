struct Struct_1 {
    a: f32,
    b: i32,
    c: vec2<f32>,
    d: vec2<u32>,
    e: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<u32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_1 = Struct_1(1000f, 0i, vec2<f32>(-364f, 1000f), vec2<u32>(10555u, 3667u), 184u);

var<private> global2: array<bool, 13> = array<bool, 13>(true, false, true, false, false, true, true, true, true, false, false, false, true);

var<private> global3: vec3<f32>;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: f32) -> vec2<i32> {
    global3 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global3.x, -290f, _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, 308f, 1000f) + vec3<f32>(-501f, -421f, global3.x)))))), !vec3<bool>(false, global2[_wgslsmith_index_u32(42751u, 13u)], any(vec2<bool>(true, false)))));
    var var_0 = Struct_1(1000f, ~(-_wgslsmith_div_i32(2147483647i, u_input.b.x)), global3.yz, global1.d, ~25760u);
    let var_1 = !(!global2[_wgslsmith_index_u32(reverseBits(1u), 13u)]);
    let var_2 = vec4<u32>(countOneBits(global1.e) | _wgslsmith_mod_u32(0u, global1.e), var_0.d.x, ~(~44054u), u_input.c.x);
    let var_3 = Struct_1(_wgslsmith_f_op_f32(global3.x - _wgslsmith_f_op_f32(select(var_0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a - -1530f)), select(var_1, true, global2[_wgslsmith_index_u32(u_input.a.x, 13u)]) & true))), var_0.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-global3.xx), vec2<f32>(arg_0, _wgslsmith_f_op_f32(-global3.x)), !any(vec4<bool>(var_1, global2[_wgslsmith_index_u32(4294967295u, 13u)], global2[_wgslsmith_index_u32(50060u, 13u)], var_1)))) * global1.c), _wgslsmith_mult_vec2_u32(~(~u_input.c), global1.d), ~0u);
    return vec2<i32>(28965i, u_input.b.x);
}

fn func_2() -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(534f + global3.x), -924f, _wgslsmith_f_op_f32(max(476f, -445f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(global3.x + global3.x), -1847f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1944f, global1.c.x, 1472f)))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1953f, global3.x, global1.a)) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1000f, 268f, global1.c.x), vec3<f32>(-1111f, global3.x, global1.c.x))))))));
    global1 = Struct_1(_wgslsmith_f_op_f32(max(768f, -439f)), -(~(~u_input.b.x)) ^ u_input.b.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(global1.c, global3.yy))), u_input.c, ~4294967295u);
    global2 = array<bool, 13>();
    global2 = array<bool, 13>();
    global1 = Struct_1(global3.x, _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(u_input.b.x, global1.b, 78487i)), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, -62004i), vec3<i32>(25552i, 0i, u_input.b.x))), -1i), ~func_3(_wgslsmith_f_op_f32(-global1.a))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -877f)), _wgslsmith_f_op_f32(select(global3.x, _wgslsmith_f_op_f32(-2123f * var_0.x), global2[_wgslsmith_index_u32(min(u_input.d, 4305u), 13u)]))), var_0.zy), vec2<u32>(global1.d.x, firstTrailingBit(~global1.e)), u_input.d);
    return !(!select(!select(vec3<bool>(false, false, true), vec3<bool>(false, false, global2[_wgslsmith_index_u32(93129u, 13u)]), global2[_wgslsmith_index_u32(15637u, 13u)]), vec3<bool>(true, true, true), vec3<bool>(true, true, true)));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a, _wgslsmith_f_op_f32(max(global1.c.x, _wgslsmith_f_op_f32(arg_3.c.x - 1319f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-336f, global1.a))), _wgslsmith_f_op_f32(abs(-1025f)))));
    let var_1 = arg_3;
    global3 = vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.x)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1.c.x), -477f, global2[_wgslsmith_index_u32(_wgslsmith_div_u32(~0u, 7892u), 13u)])))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(global3.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.c.x), arg_1.c.x))));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(abs(var_0))))) - vec3<f32>(2002f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.a) - arg_1.c.x), -2172f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0)) * vec3<f32>(951f, global3.x, _wgslsmith_f_op_f32(exp2(global3.x))))));
    global1 = Struct_1(-2435f, global1.b, _wgslsmith_f_op_vec2_f32(vec2<f32>(1920f, arg_1.a) - var_1.c), vec2<u32>(3947u, 4294967295u), global1.e);
    return Struct_1(arg_1.c.x, -u_input.b.x, vec2<f32>(global1.c.x, arg_3.a), vec2<u32>(arg_3.d.x, select(76349u, arg_1.e & _wgslsmith_div_u32(1u, 57543u), any(vec3<bool>(false, true, true)))), arg_1.d.x ^ (~_wgslsmith_mult_u32(var_1.e, 69034u) >> (arg_1.d.x % 32u)));
}

fn func_1() -> i32 {
    global2 = array<bool, 13>();
    let var_0 = func_4(select(select(select(vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 13u)], global2[_wgslsmith_index_u32(u_input.c.x, 13u)], false), !vec3<bool>(false, global2[_wgslsmith_index_u32(u_input.a.x, 13u)], false), true), select(func_2(), select(vec3<bool>(global2[_wgslsmith_index_u32(45212u, 13u)], global2[_wgslsmith_index_u32(50236u, 13u)], global2[_wgslsmith_index_u32(global1.e, 13u)]), vec3<bool>(true, true, global2[_wgslsmith_index_u32(56208u, 13u)]), vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 13u)], true, true)), select(vec3<bool>(false, global2[_wgslsmith_index_u32(u_input.a.x, 13u)], global2[_wgslsmith_index_u32(global1.e, 13u)]), vec3<bool>(true, false, true), vec3<bool>(false, true, global2[_wgslsmith_index_u32(u_input.c.x, 13u)]))), !vec3<bool>(false, global2[_wgslsmith_index_u32(1u, 13u)], false)), !(!(!vec3<bool>(false, global2[_wgslsmith_index_u32(u_input.c.x, 13u)], true))), true & global2[_wgslsmith_index_u32(reverseBits(26973u), 13u)]), Struct_1(global1.c.x, i32(-1i) * -26468i, _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(-global1.a), global1.c.x))), global1.d, _wgslsmith_sub_u32(abs(u_input.c.x), ~global1.e) | select(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.d.x, u_input.a.x, global1.d.x, 107851u), vec4<u32>(1959u, 15688u, 0u, u_input.c.x)), ~u_input.d, global2[_wgslsmith_index_u32(reverseBits(u_input.d), 13u)])), u_input.b.x, Struct_1(global1.a, -abs(global1.b) | u_input.b.x, global3.zz, vec2<u32>(_wgslsmith_mod_u32(87536u, 1u), abs(global1.e & 101699u)), select(~u_input.a.x | 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, u_input.d, u_input.c.x, global1.d.x), vec4<u32>(0u, u_input.a.x, 44578u, 38704u)), !any(vec4<bool>(false, global2[_wgslsmith_index_u32(1u, 13u)], true, false)))));
    let var_1 = ~_wgslsmith_clamp_vec4_i32(~select(vec4<i32>(-23273i, var_0.b, u_input.b.x, 6589i), _wgslsmith_mult_vec4_i32(vec4<i32>(global1.b, -1i, 11554i, global1.b), vec4<i32>(var_0.b, global1.b, u_input.b.x, global1.b)), false), abs(vec4<i32>(u_input.b.x, global1.b, 54602i, -2147483647i)) & _wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(global1.b, u_input.b.x, var_0.b, u_input.b.x), vec4<i32>(1i, 0i, global1.b, var_0.b)), _wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, 0i, 1i, 54528i), vec4<i32>(1i, var_0.b, u_input.b.x, 8566i))), reverseBits(_wgslsmith_sub_vec4_i32(~vec4<i32>(global1.b, global1.b, -1i, global1.b), _wgslsmith_sub_vec4_i32(vec4<i32>(-25563i, global1.b, var_0.b, global1.b), vec4<i32>(global1.b, u_input.b.x, -1i, -2147483647i)))));
    global2 = array<bool, 13>();
    let var_2 = !(!global2[_wgslsmith_index_u32(global1.d.x, 13u)]);
    return -_wgslsmith_div_i32(~var_0.b, 0i) >> (var_0.d.x % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.b & func_1();
    var var_1 = func_4(vec3<bool>(~reverseBits(global1.e) != ((u_input.a.x << (u_input.d % 32u)) | 43080u), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(global1.d.x << (1u % 32u), _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(global1.d, vec2<u32>(88333u, global1.d.x)), _wgslsmith_add_vec2_u32(global1.d, u_input.c))), 13u)], false), Struct_1(global3.x, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, abs(global1.b), -global1.b, u_input.b.x >> (41266u % 32u)), firstLeadingBit(vec4<i32>(42091i, 0i, global1.b, 0i))), global3.yx, select(abs(vec2<u32>(0u, 13847u)), vec2<u32>(u_input.d, global1.d.x) >> (~vec2<u32>(global1.d.x, global1.d.x) % vec2<u32>(32u)), select(!vec2<bool>(global2[_wgslsmith_index_u32(0u, 13u)], global2[_wgslsmith_index_u32(global1.d.x, 13u)]), vec2<bool>(global2[_wgslsmith_index_u32(u_input.c.x, 13u)], global2[_wgslsmith_index_u32(u_input.d, 13u)]), vec2<bool>(global2[_wgslsmith_index_u32(u_input.d, 13u)], true))), ~(~countOneBits(global1.d.x))), 1i, func_4(vec3<bool>(!(global1.d.x >= global1.d.x), ~u_input.d >= ~1u, all(select(vec3<bool>(true, global2[_wgslsmith_index_u32(0u, 13u)], global2[_wgslsmith_index_u32(global1.d.x, 13u)]), vec3<bool>(global2[_wgslsmith_index_u32(u_input.d, 13u)], false, global2[_wgslsmith_index_u32(global1.d.x, 13u)]), false))), Struct_1(global3.x, func_1(), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(global1.c, global3.yx) * _wgslsmith_f_op_vec2_f32(-global1.c)), vec2<u32>(~4294967295u, u_input.d), global1.d.x), 41873i, func_4(!(!vec3<bool>(global2[_wgslsmith_index_u32(global1.d.x, 13u)], global2[_wgslsmith_index_u32(global1.d.x, 13u)], false)), Struct_1(-957f, -2147483647i, vec2<f32>(global1.a, -127f), ~vec2<u32>(global1.e, u_input.d), func_4(vec3<bool>(global2[_wgslsmith_index_u32(global1.d.x, 13u)], false, global2[_wgslsmith_index_u32(0u, 13u)]), Struct_1(483f, 25432i, vec2<f32>(global3.x, global3.x), vec2<u32>(global1.e, global1.e), global1.e), 33751i, Struct_1(303f, -1i, global3.yz, vec2<u32>(u_input.c.x, u_input.d), 31750u)).d.x), -5056i, func_4(vec3<bool>(false, false, global2[_wgslsmith_index_u32(global1.e, 13u)]), Struct_1(global3.x, 2373i, global3.zx, u_input.c, global1.d.x), -global1.b, Struct_1(global3.x, 1i, global1.c, u_input.a, global1.d.x)))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2069f) + global3.x), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(-475f, 408f), _wgslsmith_f_op_f32(exp2(global1.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1.a)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1267f))), 1822f))));
    let var_3 = firstTrailingBit(min(func_4(!vec3<bool>(global2[_wgslsmith_index_u32(var_1.d.x, 13u)], global2[_wgslsmith_index_u32(1u, 13u)], global2[_wgslsmith_index_u32(1u, 13u)]), func_4(vec3<bool>(true, false, true), Struct_1(1621f, u_input.b.x, var_2.yx, var_1.d, 48025u), -global1.b, Struct_1(-1072f, global1.b, vec2<f32>(1000f, global3.x), global1.d, global1.d.x)), global1.b, Struct_1(func_4(vec3<bool>(true, false, global2[_wgslsmith_index_u32(var_1.e, 13u)]), Struct_1(126f, -2010i, vec2<f32>(390f, -347f), global1.d, 70655u), var_1.b, Struct_1(-2548f, global1.b, vec2<f32>(global3.x, var_2.x), u_input.a, global1.e)).c.x, global1.b, _wgslsmith_div_vec2_f32(global3.zz, var_2.zz), u_input.c, ~var_1.e)).e, var_1.d.x));
    var var_4 = u_input.b.zy;
    let var_5 = Struct_1(-1063f, _wgslsmith_div_i32(reverseBits(_wgslsmith_clamp_i32(0i >> (var_1.d.x % 32u), -2147483647i >> (var_3 % 32u), 4591i)), countOneBits(global1.b)), var_2.yy, vec2<u32>(abs(~13937u), ~113977u), _wgslsmith_sub_u32(var_1.d.x, 1u));
    var var_6 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(1000f, -1642f)))), -1285f))));
    var_1 = func_4(!vec3<bool>(true, all(select(vec2<bool>(global2[_wgslsmith_index_u32(1u, 13u)], false), vec2<bool>(false, true), true)), !(u_input.d >= 86187u)), func_4(vec3<bool>(true, any(!vec2<bool>(global2[_wgslsmith_index_u32(global1.d.x, 13u)], global2[_wgslsmith_index_u32(27302u, 13u)])), all(!vec4<bool>(global2[_wgslsmith_index_u32(var_5.e, 13u)], global2[_wgslsmith_index_u32(var_3, 13u)], global2[_wgslsmith_index_u32(1000u, 13u)], true))), Struct_1(global1.a, u_input.b.x, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(exp2(global3.zx)))), func_4(func_2(), var_5, ~var_1.b, func_4(vec3<bool>(global2[_wgslsmith_index_u32(0u, 13u)], global2[_wgslsmith_index_u32(u_input.c.x, 13u)], true), var_5, var_4.x, var_5)).d, ~(~u_input.c.x)), _wgslsmith_div_i32(29201i, abs(global1.b)), Struct_1(-1000f, var_1.b, vec2<f32>(_wgslsmith_f_op_f32(-689f * global1.a), 1791f), (u_input.a >> (vec2<u32>(0u, var_1.d.x) % vec2<u32>(32u))) | select(global1.d, vec2<u32>(var_1.d.x, 4294967295u), true), var_3)), -var_1.b, Struct_1(_wgslsmith_f_op_f32(global3.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x - global1.c.x))), ~global1.b | -2147483647i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(global3.xz)) * _wgslsmith_f_op_vec2_f32(exp2(var_2.xy))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(921f, 629f))), vec2<u32>(~var_5.d.x, max(_wgslsmith_dot_vec4_u32(vec4<u32>(var_5.d.x, u_input.a.x, 1u, var_1.e), vec4<u32>(u_input.d, var_3, var_3, 1u)), ~4294967295u)), 4294967295u));
    var_1 = Struct_1(global3.x, -2147483647i, _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.a, var_5.a))), 889f))), abs(vec2<u32>(global1.d.x, ~_wgslsmith_mult_u32(1u, 11579u))), 1u);
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(~24398u, abs(func_4(vec3<bool>(global2[_wgslsmith_index_u32(1u, 13u)], global2[_wgslsmith_index_u32(u_input.d, 13u)], false), Struct_1(var_1.c.x, 0i, var_5.c, vec2<u32>(u_input.d, 13763u), var_5.e), 2147483647i, Struct_1(var_5.a, 26637i, vec2<f32>(var_5.c.x, var_6.x), vec2<u32>(u_input.d, 13781u), 0u)).d.x), 1u, var_3), var_3, firstTrailingBit(~(~vec4<u32>(4294967295u, u_input.a.x, global1.e, 0u))), _wgslsmith_div_vec4_u32(vec4<u32>(0u, var_3 ^ ~var_5.d.x, var_3, global1.e), abs(_wgslsmith_div_vec4_u32(vec4<u32>(var_5.e, var_5.d.x, u_input.c.x, global1.e), vec4<u32>(u_input.a.x, 19431u, 31783u, 4294967295u)) ^ _wgslsmith_add_vec4_u32(vec4<u32>(var_1.e, 0u, 22564u, u_input.c.x), vec4<u32>(85431u, var_1.d.x, u_input.a.x, u_input.d)))));
}

