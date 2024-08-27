struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(1286f, -611f, 691f, 2414f);

var<private> global1: bool;

var<private> global2: array<bool, 8> = array<bool, 8>(false, true, false, true, false, false, true, false);

var<private> global3: array<Struct_2, 3>;

var<private> global4: array<vec4<bool>, 2> = array<vec4<bool>, 2>(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false));

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec4<f32>) -> vec4<i32> {
    var var_0 = Struct_1(_wgslsmith_mult_vec3_i32(min(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, 1i, u_input.c, -33235i), vec4<i32>(0i, 1i, u_input.c, u_input.c)), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, 0i), vec2<i32>(1i, -19266i)), i32(-1i) * -15285i), ~vec3<i32>(5686i, 2147483647i, 0i)), -firstLeadingBit(vec3<i32>(2147483647i, -7056i, u_input.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-768f - 743f)), true & global2[_wgslsmith_index_u32(18175u, 8u)]);
    var var_1 = Struct_1(max(var_0.a, var_0.a), var_0.b, false);
    var var_2 = -113f;
    var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(611f))) + var_0.b) - _wgslsmith_f_op_f32(-var_0.b)));
    let var_3 = -var_1.a.x >> ((1u & arg_0.x) % 32u);
    return select(-(_wgslsmith_sub_vec4_i32(~vec4<i32>(var_1.a.x, var_3, 1i, 2147483647i), vec4<i32>(2147483647i, var_3, 2147483647i, var_3)) & abs(vec4<i32>(var_1.a.x, 11348i, var_0.a.x, 1i))), vec4<i32>(0i, reverseBits(_wgslsmith_dot_vec3_i32(var_0.a, var_0.a)) << (u_input.b % 32u), 1i, select(_wgslsmith_sub_i32(-2147483647i, select(var_3, u_input.c, var_0.c)), _wgslsmith_mod_i32(_wgslsmith_clamp_i32(-23849i, var_1.a.x, var_0.a.x), 0i), true)), select(379f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b + global0.x)), !var_0.c, !var_1.c));
}

fn func_2(arg_0: i32) -> Struct_1 {
    var var_0 = reverseBits(-func_3(u_input.d, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 756f, 1122f, -2340f))));
    global0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * _wgslsmith_f_op_f32(trunc(global0.x))), global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -337f) + -1440f), _wgslsmith_f_op_f32(global0.x * _wgslsmith_div_f32(1680f, 1679f))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(520f, global0.x, global2[_wgslsmith_index_u32(28664u, 8u)])), 1f)), _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(trunc(-189f))), global0.x), select(!select(vec4<bool>(global2[_wgslsmith_index_u32(0u, 8u)], global2[_wgslsmith_index_u32(u_input.b, 8u)], true, global2[_wgslsmith_index_u32(1u, 8u)]), vec4<bool>(global2[_wgslsmith_index_u32(u_input.e, 8u)], true, true, true), vec4<bool>(global2[_wgslsmith_index_u32(u_input.b, 8u)], global2[_wgslsmith_index_u32(1u, 8u)], global2[_wgslsmith_index_u32(49459u, 8u)], global2[_wgslsmith_index_u32(u_input.b, 8u)])), select(select(global4[_wgslsmith_index_u32(1u, 2u)], vec4<bool>(global2[_wgslsmith_index_u32(60620u, 8u)], global2[_wgslsmith_index_u32(4294967295u, 8u)], false, true), global4[_wgslsmith_index_u32(u_input.e, 2u)]), select(vec4<bool>(global2[_wgslsmith_index_u32(u_input.d.x, 8u)], global2[_wgslsmith_index_u32(37380u, 8u)], global2[_wgslsmith_index_u32(u_input.a, 8u)], false), global4[_wgslsmith_index_u32(1u, 2u)], false), !global4[_wgslsmith_index_u32(1u, 2u)]), true)))));
    let var_1 = Struct_2(abs(vec2<u32>(u_input.a >> (firstTrailingBit(u_input.d.x) % 32u), u_input.b)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.xxz) * _wgslsmith_f_op_vec3_f32(-global0.wwy)));
    let var_2 = false;
    let var_3 = ~abs(-6725i);
    return Struct_1(func_3(firstTrailingBit(select(_wgslsmith_mod_vec3_u32(u_input.d, vec3<u32>(4294967295u, u_input.d.x, 49838u)), vec3<u32>(var_1.a.x, 0u, 0u), any(vec2<bool>(true, global2[_wgslsmith_index_u32(var_1.a.x, 8u)])))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1.b.x, -636f, 1362f, 1041f)))))).www, -570f, global2[_wgslsmith_index_u32(~max(var_1.a.x, var_1.a.x), 8u)]);
}

fn func_1(arg_0: bool, arg_1: Struct_2, arg_2: Struct_2, arg_3: u32) -> Struct_2 {
    let var_0 = select(-(~(-3787i)), _wgslsmith_clamp_i32(u_input.c, u_input.c << (_wgslsmith_div_u32(_wgslsmith_mod_u32(1u, u_input.a), max(arg_1.a.x, 64468u)) % 32u), _wgslsmith_mod_i32(u_input.c, u_input.c) ^ _wgslsmith_clamp_i32(u_input.c, abs(u_input.c), -1i)), !(!all(!vec2<bool>(arg_0, false))));
    var var_1 = func_2(-1i);
    var var_2 = Struct_1(firstTrailingBit(-(~vec3<i32>(u_input.c, var_1.a.x, var_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + 352f)), -1205f, !any(vec2<bool>(arg_0, var_1.c))))), !global2[_wgslsmith_index_u32(max(_wgslsmith_add_u32(~u_input.d.x, ~arg_3), ~_wgslsmith_mod_u32(755u, arg_3)), 8u)]);
    var var_3 = _wgslsmith_f_op_f32(select(arg_1.b.x, arg_2.b.x, false));
    global2 = array<bool, 8>();
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(!global2[_wgslsmith_index_u32(0u, 8u)], global3[_wgslsmith_index_u32(u_input.a, 3u)], global3[_wgslsmith_index_u32(u_input.a, 3u)], 9254u);
    var var_1 = !(!global2[_wgslsmith_index_u32(1u, 8u)]);
    global2 = array<bool, 8>();
    global1 = true;
    var var_2 = global3[_wgslsmith_index_u32(select(~var_0.a.x, 30505u, true), 3u)];
    global4 = array<vec4<bool>, 2>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_2.b.x, var_0.b.x))) - global0.x) * global0.x), 1u, firstLeadingBit(vec2<i32>(_wgslsmith_sub_i32(u_input.c, 64791i), u_input.c)) & firstTrailingBit(~vec2<i32>(-2147483647i, u_input.c)), ~(~0u));
}

