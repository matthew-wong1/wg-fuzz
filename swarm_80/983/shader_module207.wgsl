struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: f32,
    b: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: f32,
    d: bool,
    e: vec4<u32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec2<i32>,
    c: i32,
}

struct Struct_5 {
    a: u32,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -17818i;

var<private> global1: array<vec2<u32>, 4> = array<vec2<u32>, 4>(vec2<u32>(4294967295u, 1197u), vec2<u32>(43846u, 77696u), vec2<u32>(33231u, 0u), vec2<u32>(1u, 1u));

var<private> global2: array<Struct_5, 6>;

var<private> global3: array<f32, 19>;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec4<u32>, arg_2: i32) -> f32 {
    var var_0 = _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(select(abs(vec4<i32>(arg_2, -2147483647i, arg_2, -38151i)), vec4<i32>(-9708i, arg_2, 39011i, arg_0.x), any(vec3<bool>(true, true, true))), (vec4<i32>(-67138i, 0i, arg_2, -5553i) | u_input.d) << (_wgslsmith_mod_vec4_u32(vec4<u32>(0u, u_input.e, 30497u, arg_1.x), vec4<u32>(arg_1.x, 38596u, 1u, 4294967295u)) % vec4<u32>(32u))) & arg_0, vec4<i32>(-_wgslsmith_clamp_i32(27363i, 1i, arg_0.x), _wgslsmith_dot_vec3_i32(~u_input.d.zxx, _wgslsmith_clamp_vec3_i32(u_input.d.yyw, vec3<i32>(arg_0.x, -3618i, -1i), u_input.d.zzz)) | -max(arg_0.x, -4858i), arg_2, 1i));
    let var_1 = 10277u;
    global3 = array<f32, 19>();
    global1 = array<vec2<u32>, 4>();
    var_0 = _wgslsmith_mod_i32(~1i, -abs(~arg_2) >> (abs(u_input.e) % 32u));
    return _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(global3[_wgslsmith_index_u32(u_input.a.x & arg_1.x, 19u)], _wgslsmith_div_f32(global3[_wgslsmith_index_u32(firstTrailingBit(min(u_input.a.x, 0u)), 19u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(84081u, 19u)] * 451f) - _wgslsmith_f_op_f32(f32(-1f) * -351f)))), -1191f));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec4<bool>) -> i32 {
    let var_0 = Struct_1(~u_input.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(global3[_wgslsmith_index_u32(~33859u, 19u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global3[_wgslsmith_index_u32(10329u, 19u)]))))), -712f), 7536i);
    let var_1 = Struct_2(_wgslsmith_f_op_f32(func_3(_wgslsmith_div_vec4_i32(u_input.d >> (~vec4<u32>(u_input.e, 331u, 70023u, var_0.a.x) % vec4<u32>(32u)), -u_input.d >> (vec4<u32>(var_0.a.x, var_0.a.x, 4294967295u, 8816u) % vec4<u32>(32u))), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, var_0.a.x, var_0.a.x, 12599u) >> (vec4<u32>(var_0.a.x, 95934u, var_0.a.x, 4294967295u) % vec4<u32>(32u)), ~vec4<u32>(38879u, u_input.a.x, 56504u, var_0.a.x)) << (~vec4<u32>(13232u, u_input.a.x, u_input.e, 0u) % vec4<u32>(32u)), ~(-arg_0.x ^ (i32(-1i) * -4698i)))), vec2<f32>(var_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.b))) + -512f)));
    global2 = array<Struct_5, 6>();
    global1 = array<vec2<u32>, 4>();
    let var_2 = u_input.d.zw;
    return countOneBits(var_0.c);
}

fn func_1(arg_0: i32) -> i32 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global3[_wgslsmith_index_u32(~_wgslsmith_add_u32(u_input.e, 8203u), 19u)])) * _wgslsmith_f_op_f32(exp2(global3[_wgslsmith_index_u32(u_input.e, 19u)]))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(min(436f, global3[_wgslsmith_index_u32(4294967295u, 19u)])), 843f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3[_wgslsmith_index_u32(u_input.a.x, 19u)], -1215f)) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1f, 1f))))));
    global0 = -_wgslsmith_add_i32(func_2(~firstTrailingBit(u_input.d.zyy), vec4<bool>(true, true, true, true)), 1i);
    let var_1 = Struct_1(~min(max(_wgslsmith_clamp_vec3_u32(u_input.a, u_input.a, vec3<u32>(u_input.a.x, u_input.a.x, 21744u)), select(u_input.a, u_input.a, vec3<bool>(true, true, false))), u_input.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-3236f - 1178f)), ~(~_wgslsmith_mult_i32(u_input.c, i32(-1i) * -2147483647i)));
    var var_2 = Struct_1(var_1.a & ~select(u_input.a & vec3<u32>(u_input.e, var_1.a.x, 4294967295u), u_input.a, vec3<bool>(true, true, true)), -762f, _wgslsmith_add_i32(~_wgslsmith_sub_i32(arg_0, 2147483647i), ~reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d.x, var_1.c, arg_0), vec3<i32>(-1i, 0i, u_input.d.x)))));
    var_2 = var_1;
    return min(_wgslsmith_clamp_i32(~abs(_wgslsmith_sub_i32(3734i, -1i)), 0i, arg_0), (u_input.b << (firstTrailingBit(~var_2.a.x) % 32u)) & var_2.c);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~(-u_input.d.x);
    var var_0 = vec4<i32>(~u_input.c, func_1(-u_input.d.x), 2147483647i, max(-_wgslsmith_mod_i32(-u_input.c, _wgslsmith_div_i32(u_input.d.x, 26513i)), -2147483647i));
    global1 = array<vec2<u32>, 4>();
    global2 = array<Struct_5, 6>();
    var var_1 = !select(vec4<bool>(true, false, false, true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), !select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false)), true), select(select(vec4<bool>(true, true, false, true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), true), true), vec4<bool>(true, true, select(false, false, true), u_input.a.x <= 4294967295u), !select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false))));
    global1 = array<vec2<u32>, 4>();
    var_1 = !(!vec4<bool>(true, all(!var_1.yx), !var_1.x || false, true));
    var var_2 = Struct_2(global3[_wgslsmith_index_u32(u_input.a.x, 19u)], _wgslsmith_f_op_vec2_f32(vec2<f32>(global3[_wgslsmith_index_u32(1u << (~u_input.e % 32u), 19u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-338f)) * _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(u_input.e, 19u)] + global3[_wgslsmith_index_u32(42413u, 19u)]))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3[_wgslsmith_index_u32(u_input.a.x, 19u)], global3[_wgslsmith_index_u32(u_input.a.x, 19u)])))));
    var_0 = select(vec4<i32>(-1i, i32(-1i) * -6035i, _wgslsmith_div_i32(1i, u_input.d.x), i32(-1i) * -func_2(var_0.wzw, vec4<bool>(true, var_1.x, false, true))), min(vec4<i32>(1i, _wgslsmith_sub_i32(-1i, 2147483647i), countOneBits(-17509i), ~u_input.c) ^ u_input.d, -(firstTrailingBit(vec4<i32>(35590i, var_0.x, var_0.x, 3853i)) ^ _wgslsmith_div_vec4_i32(vec4<i32>(var_0.x, u_input.d.x, var_0.x, u_input.b), vec4<i32>(1i, var_0.x, -1i, -56630i)))), select(select(vec4<bool>(false, var_1.x, var_1.x, all(vec2<bool>(var_1.x, false))), select(!vec4<bool>(true, var_1.x, false, var_1.x), !vec4<bool>(var_1.x, false, false, var_1.x), all(vec3<bool>(true, false, true))), true), !(!vec4<bool>(true, var_1.x, true, var_1.x)), vec4<bool>(true, true, true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(min(min(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a.x, 55702u), firstLeadingBit(global1[_wgslsmith_index_u32(54790u, 4u)])), _wgslsmith_mod_vec2_u32(~u_input.a.yy, abs(vec2<u32>(u_input.e, 11924u)))), ~(~abs(u_input.a.xx))), vec4<u32>(1u, 23553u, u_input.e, u_input.a.x), u_input.a, 26777i);
}

