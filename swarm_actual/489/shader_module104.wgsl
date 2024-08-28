struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
    c: vec2<u32>,
    d: f32,
    e: vec4<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: bool,
    d: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<f32, 5>;

var<private> global2: vec4<bool>;

var<private> global3: f32 = -103f;

var<private> global4: array<vec3<i32>, 5> = array<vec3<i32>, 5>(vec3<i32>(2147483647i, 0i, -1i), vec3<i32>(22259i, 0i, 1i), vec3<i32>(-5314i, 16638i, 2147483647i), vec3<i32>(1i, -83554i, -1i), vec3<i32>(1i, 1i, -7942i));

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_4, arg_1: vec4<i32>) -> f32 {
    let var_0 = u_input.b.x;
    global2 = select(select(select(vec4<bool>(arg_0.c, global2.x, true, var_0 >= var_0), vec4<bool>(!arg_0.a.a.x, !arg_0.c, arg_0.c || true, arg_0.c), !vec4<bool>(false, true, global2.x, global2.x)), vec4<bool>(var_0 >= _wgslsmith_div_i32(-2147483647i, u_input.b.x), arg_0.a.a.x, u_input.a.x == 1u, true), any(global2.yx)), select(select(!select(vec4<bool>(true, false, global2.x, arg_0.a.a.x), vec4<bool>(false, global2.x, arg_0.a.a.x, false), global2.x), select(vec4<bool>(true, arg_0.a.a.x, true, false), select(vec4<bool>(global2.x, false, global2.x, arg_0.c), vec4<bool>(false, false, true, true), arg_0.c), vec4<bool>(arg_0.c, global2.x, arg_0.c, false)), select(!vec4<bool>(arg_0.c, true, false, true), vec4<bool>(false, false, arg_0.a.a.x, true), vec4<bool>(true, true, true, true))), vec4<bool>(true, !(var_0 < -29959i), global2.x, false), any(vec4<bool>(!global2.x, global2.x, false, arg_0.a.a.x))), !vec4<bool>(1u >= _wgslsmith_sub_u32(79483u, u_input.a.x), !arg_0.a.a.x, (global2.x & false) | true, true));
    global1 = array<f32, 5>();
    var var_1 = _wgslsmith_sub_i32(14090i, -_wgslsmith_clamp_i32(abs(-1i), _wgslsmith_div_i32(arg_0.b, min(u_input.b.x, arg_0.b)), _wgslsmith_add_i32(-1i, arg_0.b) & -379i));
    global3 = _wgslsmith_f_op_f32(f32(-1f) * -195f);
    return -455f;
}

fn func_2() -> vec3<bool> {
    global1 = array<f32, 5>();
    global4 = array<vec3<i32>, 5>();
    global1 = array<f32, 5>();
    let var_0 = Struct_1(!(!vec2<bool>(global2.x && global2.x, all(vec4<bool>(false, true, global2.x, global2.x)))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_3(Struct_4(var_0, -u_input.b.x, global2.x, _wgslsmith_f_op_f32(335f - 1000f)), vec4<i32>(i32(-1i) * -14176i, -1i, countOneBits(u_input.b.x), _wgslsmith_add_i32(0i, 2147483647i)))), _wgslsmith_div_f32(global1[_wgslsmith_index_u32(23534u, 5u)], global1[_wgslsmith_index_u32(22855u, 5u)])));
    return vec3<bool>(!all(!select(vec4<bool>(var_0.a.x, true, var_0.a.x, true), vec4<bool>(global2.x, global2.x, false, global2.x), true)), global2.x || var_0.a.x, false);
}

fn func_1(arg_0: vec4<u32>) -> vec3<bool> {
    let var_0 = vec3<u32>(19044u, 37506u, _wgslsmith_sub_u32(firstTrailingBit(arg_0.x >> (arg_0.x % 32u)), 70604u)) & _wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(~u_input.a.x, u_input.a.x, _wgslsmith_add_u32(4294967295u, u_input.a.x)), max(~vec3<u32>(arg_0.x, 1u, u_input.a.x), vec3<u32>(arg_0.x, u_input.a.x, 58903u))), vec3<u32>(~select(arg_0.x, u_input.a.x, global2.x), 6331u, _wgslsmith_mod_u32(1u, u_input.a.x)));
    var var_1 = !select(global2.ywz, vec3<bool>(all(global2.ww), !select(global2.x, false, global2.x), true | all(global2.wyx)), func_2());
    global0 = true && global2.x;
    let var_2 = select(reverseBits(_wgslsmith_sub_vec4_i32(-vec4<i32>(u_input.b.x, u_input.b.x, 13628i, -1i), firstLeadingBit(vec4<i32>(u_input.b.x, u_input.b.x, 50396i, -1i)))) | firstTrailingBit(-vec4<i32>(-12058i, 2147483647i, -1i, u_input.b.x)), firstTrailingBit(_wgslsmith_add_vec4_i32(select(vec4<i32>(u_input.b.x, u_input.b.x, -36799i, -20326i), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), vec4<bool>(var_1.x, var_1.x, global2.x, true)), -vec4<i32>(u_input.b.x, -1i, 1i, u_input.b.x)) & (vec4<i32>(u_input.b.x, u_input.b.x, 14708i, -1i) ^ (vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x) << (vec4<u32>(var_0.x, 4294967295u, 44799u, 0u) % vec4<u32>(32u))))), !select(vec4<bool>(global2.x, 29081u == u_input.a.x, true, global2.x), select(vec4<bool>(global2.x, global2.x, true, var_1.x), !vec4<bool>(var_1.x, var_1.x, global2.x, global2.x), select(vec4<bool>(true, true, true, false), vec4<bool>(false, global2.x, true, false), vec4<bool>(global2.x, true, true, true))), !select(vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(global2.x, global2.x, global2.x, true), vec4<bool>(true, true, global2.x, false))));
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_4(Struct_1(!vec2<bool>(global2.x, var_1.x)), firstTrailingBit(var_2.x) ^ (u_input.b.x >> (u_input.a.x % 32u)), (var_0.x | arg_0.x) < _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 16319u), arg_0.ywz), _wgslsmith_f_op_f32(round(113f))), vec4<i32>(~0i, u_input.b.x, _wgslsmith_div_i32(0i, u_input.b.x) << (~var_0.x % 32u), 51204i))));
    return select(func_2(), vec3<bool>(!(any(vec4<bool>(global2.x, var_1.x, global2.x, true)) || true), true, true), vec3<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1606f - global1[_wgslsmith_index_u32(arg_0.x, 5u)]) + _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(var_0.x, 5u)] - -597f)) <= _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1[_wgslsmith_index_u32(u_input.a.x, 5u)], 261f)), false, all(vec2<bool>(!global2.x, global2.x))));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: Struct_2, arg_3: vec4<bool>) -> bool {
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1025f * global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(~1u, 4294967295u), 5u)]));
    global0 = arg_0.a.a.x;
    let var_0 = Struct_4(Struct_1(func_1(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 0u), ~vec4<u32>(4294967295u, 1u, 49098u, u_input.a.x))).zx), _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(u_input.b.x, 79443i, u_input.b.x) >> (vec3<u32>(u_input.a.x, arg_2.b, arg_0.b) % vec3<u32>(32u))), min(global4[_wgslsmith_index_u32(arg_2.b, 5u)], u_input.b) ^ select(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), u_input.b, arg_3.xxz)), _wgslsmith_sub_i32(select(i32(-1i) * -2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, -39247i), u_input.b.xx), true), _wgslsmith_add_i32(8848i | u_input.b.x, -30548i))), true, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(531f)))));
    var var_1 = Struct_2(Struct_1(arg_2.a.a), ~arg_0.b, var_0.b >= abs(~u_input.b.x));
    return var_1.c;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = vec4<bool>(false, u_input.a.x != 57734u, true, (!all(vec3<bool>(false, global2.x, false)) == true) == global2.x);
    let var_0 = all(vec3<bool>(global2.x, true, func_4(Struct_2(Struct_1(global2.zx), 4294967295u, true), func_1(vec4<u32>(u_input.a.x, u_input.a.x, 0u, 0u)), Struct_2(Struct_1(global2.xy), 74649u, global2.x), !vec4<bool>(global2.x, true, false, global2.x)) && all(!global2.xz)));
    let var_1 = Struct_2(Struct_1(!(!vec2<bool>(global2.x, true))), abs(~u_input.a.x), (u_input.a.x | ~u_input.a.x) >= (u_input.a.x << (u_input.a.x % 32u)));
    let var_2 = Struct_4(Struct_1(func_1(abs(vec4<u32>(var_1.b, 4294967295u, 4294967295u, 0u) & vec4<u32>(4294967295u, u_input.a.x, 4294967295u, 54105u))).xx), 2147483647i, !(any(!vec4<bool>(var_0, true, global2.x, global2.x)) && true), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -264f) + global1[_wgslsmith_index_u32(4294967295u, 5u)]), 1046f, false)));
    var var_3 = vec4<bool>(!(true && !any(vec4<bool>(var_2.a.a.x, false, false, var_0))), true, _wgslsmith_div_i32(var_2.b, _wgslsmith_add_i32(_wgslsmith_add_i32(-1i, -2147483647i), _wgslsmith_add_i32(50087i, u_input.b.x))) < max(firstTrailingBit(select(u_input.b.x, u_input.b.x, var_0)), ~(~u_input.b.x)), !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1161f - -770f)) >= _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(abs(1u), 5u)])));
    var var_4 = Struct_2(Struct_1(vec2<bool>(true, any(vec2<bool>(var_2.c, var_3.x)))), 1u, !select(func_1(~vec4<u32>(var_1.b, u_input.a.x, var_1.b, var_1.b)).x, global2.x, !var_2.a.a.x));
    var_4 = Struct_2(Struct_1(select(!var_1.a.a, func_1(vec4<u32>(26498u, u_input.a.x, u_input.a.x, var_4.b)).yy, !vec2<bool>(var_0, true))), _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(56365u, var_1.b), var_4.b & 79288u, _wgslsmith_add_u32(u_input.a.x, 8910u)), vec3<u32>(4294967295u, var_1.b, var_1.b)), ~0u), !(false || var_1.c));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1427f), _wgslsmith_f_op_f32(-680f * _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~var_4.b, 5u)]))));
}

