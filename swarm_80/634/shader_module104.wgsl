struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: bool,
    d: bool,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec4<f32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 7> = array<f32, 7>(-1000f, -1085f, 443f, -466f, -567f, 798f, 626f);

var<private> global1: array<Struct_1, 26>;

var<private> global2: array<bool, 8> = array<bool, 8>(false, false, true, false, true, false, false, false);

var<private> global3: array<Struct_1, 22>;

var<private> global4: f32 = -1485f;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: f32, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: vec4<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0))));
    var var_1 = arg_1.yy;
    global2 = array<bool, 8>();
    var var_2 = arg_2.b.x;
    var_2 = -9388i;
    return global3[_wgslsmith_index_u32(arg_3.x >> (u_input.c % 32u), 22u)];
}

fn func_2(arg_0: vec2<i32>, arg_1: vec3<bool>, arg_2: f32, arg_3: Struct_1) -> bool {
    let var_0 = -_wgslsmith_add_i32(1i, ~(~_wgslsmith_dot_vec2_i32(arg_0, arg_0)));
    global2 = array<bool, 8>();
    let var_1 = !select(arg_1.zx, vec2<bool>(true, true), arg_1.yx);
    global0 = array<f32, 7>();
    global3 = array<Struct_1, 22>();
    return var_1.x;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: Struct_1) -> f32 {
    var var_0 = all(!(!arg_2.wy));
    let var_1 = 0i;
    var var_2 = func_1(_wgslsmith_div_f32(-181f, global0[_wgslsmith_index_u32(u_input.c, 7u)]), arg_2, func_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(min(1u, 4294967295u), 7u)]), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_sub_u32(u_input.c, 56774u), _wgslsmith_clamp_u32(u_input.c, u_input.c, 4294967295u)), 7u)], all(vec4<bool>(true, true, arg_3.d, true)))), select(!select(arg_2, vec4<bool>(false, true, arg_3.c, false), arg_2), !arg_2, ~u_input.c >= ~77u), Struct_1(!(global0[_wgslsmith_index_u32(49697u, 7u)] <= global0[_wgslsmith_index_u32(15471u, 7u)]), vec3<i32>(u_input.a, arg_1.b.x, -38660i) >> (vec3<u32>(1u, u_input.c, 64976u) % vec3<u32>(32u)), true, func_1(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 7u)]), arg_2, func_1(2439f, arg_2, arg_1, vec4<u32>(u_input.c, u_input.c, u_input.c, 42635u)), abs(vec4<u32>(4294967295u, u_input.c, u_input.c, u_input.c))).e, true), ~(~vec4<u32>(u_input.c, u_input.c, 62784u, u_input.c))), ~_wgslsmith_div_vec4_u32(select(select(vec4<u32>(u_input.c, 1u, u_input.c, 4294967295u), vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c), arg_3.d), firstLeadingBit(vec4<u32>(u_input.c, u_input.c, 1u, u_input.c)), global2[_wgslsmith_index_u32(~u_input.c, 8u)]), select(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c, 5057u, 4413u, 4294967295u), vec4<u32>(u_input.c, 303u, u_input.c, 34542u)), ~vec4<u32>(u_input.c, u_input.c, 1u, u_input.c), true)));
    let var_3 = ~0u;
    let var_4 = Struct_1(false, _wgslsmith_clamp_vec3_i32(~arg_3.b, -(~vec3<i32>(-2147483647i, -2147483647i, 8521i)), vec3<i32>(~(-9539i), var_1, var_2.b.x)), !all(!arg_2), var_2.e, true);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(4294967295u, 7u)]))), global0[_wgslsmith_index_u32(u_input.c, 7u)], false)) - _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_add_u32(var_3 & var_3, 1u), 7u)])) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_3, 7u)] + global0[_wgslsmith_index_u32(1u, 7u)]) - _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.c, 7u)])))), 427f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec2<bool>(global2[_wgslsmith_index_u32(max(reverseBits(0u), firstLeadingBit(u_input.c)), 8u)] & all(select(vec2<bool>(global2[_wgslsmith_index_u32(83646u, 8u)], global2[_wgslsmith_index_u32(4294967295u, 8u)]), vec2<bool>(global2[_wgslsmith_index_u32(u_input.c, 8u)], true), global2[_wgslsmith_index_u32(u_input.c, 8u)])), !func_2(max(vec2<i32>(u_input.d, u_input.d), vec2<i32>(2147483647i, 1i)), select(vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 8u)], global2[_wgslsmith_index_u32(60700u, 8u)], false), vec3<bool>(true, true, global2[_wgslsmith_index_u32(39979u, 8u)]), vec3<bool>(global2[_wgslsmith_index_u32(1u, 8u)], global2[_wgslsmith_index_u32(u_input.c, 8u)], true)), _wgslsmith_f_op_f32(-561f - global0[_wgslsmith_index_u32(0u, 7u)]), func_1(-1066f, vec4<bool>(global2[_wgslsmith_index_u32(u_input.c, 8u)], global2[_wgslsmith_index_u32(0u, 8u)], true, global2[_wgslsmith_index_u32(u_input.c, 8u)]), global3[_wgslsmith_index_u32(u_input.c, 22u)], vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c))));
    let var_1 = global3[_wgslsmith_index_u32(~_wgslsmith_div_u32(34530u, 76613u), 22u)];
    let var_2 = abs(~(~(~(~vec3<u32>(65531u, u_input.c, 7516u)))));
    global4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_1(true, var_1.b, true, true, var_1.d), Struct_1(true, var_1.b, var_1.d, false, global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.c, var_2.x), 8u)]), vec4<bool>(false, true, var_0.x, !var_0.x), Struct_1(false, vec3<i32>(-2147483647i, var_1.b.x, 2147483647i), 28669u <= u_input.c, true, !var_1.e))) + global0[_wgslsmith_index_u32(var_2.x, 7u)]));
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1996f, 1596f))), -1682f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(163f)), global0[_wgslsmith_index_u32(var_2.x, 7u)]) - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global0[_wgslsmith_index_u32(1553u, 7u)], global0[_wgslsmith_index_u32(u_input.c, 7u)]))))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(542f * _wgslsmith_f_op_f32(ceil(570f))), _wgslsmith_f_op_f32(f32(-1f) * -407f))));
    var var_4 = Struct_1(global2[_wgslsmith_index_u32(~select(u_input.c, min(min(var_2.x, u_input.c), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 4294967295u, 56672u, 20119u), vec4<u32>(var_2.x, 40988u, var_2.x, 4294967295u))), var_1.d), 8u)], _wgslsmith_add_vec3_i32(var_1.b, -func_1(_wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(0u, 7u)], -275f)), select(vec4<bool>(var_1.a, var_1.c, false, false), vec4<bool>(var_1.c, false, var_0.x, false), vec4<bool>(var_1.c, false, false, false)), global1[_wgslsmith_index_u32(~11555u, 26u)], vec4<u32>(u_input.c, var_2.x, 29029u, 51042u)).b), var_1.e, global2[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(var_2, vec3<u32>(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_2.x, var_2.x), vec2<u32>(u_input.c, 38831u)), _wgslsmith_mod_u32(44905u, 34701u))), abs(firstTrailingBit(_wgslsmith_div_u32(var_2.x, u_input.c)))), 8u)], any(!vec3<bool>(var_2.x < u_input.c, all(vec4<bool>(true, true, false, global2[_wgslsmith_index_u32(1u, 8u)])), true)));
    let x = u_input.a;
    s_output = StorageBuffer(1i, _wgslsmith_clamp_vec2_i32(-select(vec2<i32>(var_4.b.x, var_1.b.x), vec2<i32>(var_4.b.x, var_4.b.x), !vec2<bool>(global2[_wgslsmith_index_u32(1u, 8u)], var_0.x)), vec2<i32>(1i << (u_input.c % 32u), _wgslsmith_add_i32(_wgslsmith_add_i32(-2319i, 63439i), ~var_4.b.x)), ~var_1.b.xz), vec2<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c, var_2.x, var_2.x, var_2.x), vec4<u32>(26923u, var_2.x, u_input.c, 1u)), vec4<u32>(25322u, 9987u, 0u, 14903u), min(vec4<u32>(0u, u_input.c, u_input.c, var_2.x), vec4<u32>(u_input.c, 83275u, u_input.c, 1u))), _wgslsmith_mult_vec4_u32(vec4<u32>(var_2.x, u_input.c, 0u, 4294967295u), ~vec4<u32>(u_input.c, 49226u, 0u, 4294967295u))), 4294967295u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(789f, 188f, global0[_wgslsmith_index_u32(u_input.c, 7u)], 923f)), vec4<f32>(_wgslsmith_f_op_f32(var_3.x * var_3.x), _wgslsmith_f_op_f32(var_3.x + var_3.x), _wgslsmith_f_op_f32(-316f * var_3.x), global0[_wgslsmith_index_u32(select(1u, 78808u, true), 7u)]))) - vec4<f32>(var_3.x, _wgslsmith_f_op_f32(var_3.x + _wgslsmith_f_op_f32(min(var_3.x, 879f))), _wgslsmith_f_op_f32(select(1000f, -652f, var_1.b.x <= 0i)), global0[_wgslsmith_index_u32(~(~4294967295u), 7u)])), vec3<i32>(firstLeadingBit(-2856i), firstLeadingBit(max(-10023i, var_4.b.x)) & (var_1.b.x << (32148u % 32u)), firstTrailingBit(u_input.e)));
}

