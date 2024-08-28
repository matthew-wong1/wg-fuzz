struct Struct_1 {
    a: vec2<bool>,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 16> = array<bool, 16>(false, true, false, true, false, false, false, false, true, true, false, false, true, false, false, true);

var<private> global1: Struct_1 = Struct_1(vec2<bool>(true, false), 1i);

var<private> global2: array<Struct_1, 10>;

var<private> global3: array<i32, 24> = array<i32, 24>(1i, i32(-2147483648), 1i, -1109i, -1i, 10591i, 45829i, 1i, 54767i, -734i, 32820i, 1i, 40780i, i32(-2147483648), 0i, 2147483647i, -1i, 1i, -71463i, 28762i, -12554i, 1i, 0i, i32(-2147483648));

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: Struct_1) -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(638f, -630f), vec2<f32>(-1854f, -1244f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1815f, 1000f))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1000f, 329f))), true)))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(344f, _wgslsmith_f_op_f32(f32(-1f) * -1896f)) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), 395f)));
    let var_1 = arg_0;
    let var_2 = !(false | !global1.a.x);
    let var_3 = -22519i;
    var var_4 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(238f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x + 1411f), -809f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-271f + 2801f) + var_0.x)))), var_0));
    return _wgslsmith_f_op_f32(f32(-1f) * -669f);
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: vec4<u32>) -> bool {
    let var_0 = arg_1;
    let var_1 = 4294967295u;
    let var_2 = global2[_wgslsmith_index_u32(65744u ^ (_wgslsmith_mult_u32(u_input.d.x, 0u | firstLeadingBit(u_input.d.x)) >> (~_wgslsmith_sub_u32(arg_2.x, ~arg_2.x) % 32u)), 10u)];
    global2 = array<Struct_1, 10>();
    let var_3 = -7694i;
    return !(~1u >= u_input.c) & true;
}

fn func_2(arg_0: i32) -> vec3<i32> {
    let var_0 = Struct_1(vec2<bool>(true, func_4(_wgslsmith_f_op_f32(func_3(Struct_1(global1.a, global3[_wgslsmith_index_u32(4294967295u, 24u)]))), global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.d.x, u_input.c, ~u_input.b), 10u)], max(~u_input.d, _wgslsmith_sub_vec4_u32(u_input.d, vec4<u32>(u_input.c, u_input.d.x, 15471u, 48988u))))), _wgslsmith_mult_i32(_wgslsmith_sub_i32(1i, _wgslsmith_sub_i32(arg_0, global1.b)), -u_input.e) & countOneBits(arg_0));
    return _wgslsmith_mod_vec3_i32(firstLeadingBit(-(~abs(vec3<i32>(global3[_wgslsmith_index_u32(u_input.a, 24u)], u_input.e, arg_0)))), ~abs(vec3<i32>(global3[_wgslsmith_index_u32(~u_input.a, 24u)], 1i, 0i)));
}

fn func_1(arg_0: i32) -> vec3<i32> {
    global1 = global2[_wgslsmith_index_u32(u_input.c, 10u)];
    let var_0 = countOneBits(func_2(global1.b | (i32(-1i) * -73766i)));
    let var_1 = global2[_wgslsmith_index_u32(u_input.d.x ^ _wgslsmith_div_u32(1u, ~(~_wgslsmith_add_u32(1u, u_input.a))), 10u)];
    var var_2 = vec2<bool>(select(any(select(vec4<bool>(global1.a.x, global1.a.x, true, true), select(vec4<bool>(false, global1.a.x, global1.a.x, false), vec4<bool>(global1.a.x, var_1.a.x, false, global0[_wgslsmith_index_u32(u_input.c, 16u)]), global0[_wgslsmith_index_u32(u_input.d.x, 16u)]), !vec4<bool>(true, true, global1.a.x, global0[_wgslsmith_index_u32(u_input.c, 16u)]))), global0[_wgslsmith_index_u32(0u ^ ~select(u_input.d.x, u_input.a, var_1.a.x), 16u)], (1u << (_wgslsmith_clamp_u32(u_input.c, u_input.a, u_input.d.x) % 32u)) != min(u_input.c, u_input.a)), !(u_input.e > -(~0i)));
    global0 = array<bool, 16>();
    return max(-select(var_0, vec3<i32>(~(-16057i), 37521i, i32(-1i) * -8995i), !(!vec3<bool>(var_2.x, false, true))), _wgslsmith_div_vec3_i32(var_0, -countOneBits(func_2(global1.b))));
}

fn func_5(arg_0: f32, arg_1: vec3<i32>, arg_2: i32, arg_3: vec2<f32>) -> vec3<u32> {
    global3 = array<i32, 24>();
    global2 = array<Struct_1, 10>();
    global1 = Struct_1(select(select(vec2<bool>(all(vec3<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 16u)], global0[_wgslsmith_index_u32(28786u, 16u)], global0[_wgslsmith_index_u32(u_input.d.x, 16u)])), true), global1.a, vec2<bool>(func_4(342f, global2[_wgslsmith_index_u32(16066u, 10u)], vec4<u32>(u_input.c, u_input.b, 83883u, 1u)), false)), global1.a, select(select(vec2<bool>(global1.a.x, true), vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 16u)], false), !global1.a.x), select(global1.a, !vec2<bool>(global0[_wgslsmith_index_u32(25114u, 16u)], false), true), !global0[_wgslsmith_index_u32(countOneBits(u_input.d.x), 16u)])), arg_2);
    var var_0 = -38338i >> (~_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), u_input.d.xw), 22752u) % 32u);
    let var_1 = 1172f;
    return select(~vec3<u32>(abs(37u), _wgslsmith_sub_u32(u_input.d.x, 40063u), ~4294967295u) | vec3<u32>(~u_input.b & ~u_input.b, firstLeadingBit(4294967295u), 4350u), u_input.d.xxw, select(vec3<bool>(true, true, true), !vec3<bool>(all(vec2<bool>(global0[_wgslsmith_index_u32(18817u, 16u)], global1.a.x)), global0[_wgslsmith_index_u32(u_input.a, 16u)] && true, global1.a.x), vec3<bool>(all(select(global1.a, vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 16u)], true), true)), !global0[_wgslsmith_index_u32(u_input.d.x, 16u)], true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2[_wgslsmith_index_u32(4294967295u, 10u)];
    global3 = array<i32, 24>();
    global0 = array<bool, 16>();
    let var_1 = !(!global1.a.x);
    var var_2 = vec4<i32>(~1i, -_wgslsmith_add_i32(~u_input.e, -2147483647i) << (u_input.c % 32u), 1i, -32569i);
    let var_3 = global2[_wgslsmith_index_u32(u_input.c, 10u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_i32(vec3<i32>(select(reverseBits(var_2.x), -1i, any(vec3<bool>(var_3.a.x, var_0.a.x, false))), u_input.e, _wgslsmith_sub_i32(~2147483647i, _wgslsmith_add_i32(global1.b, -2147483647i))), _wgslsmith_add_vec3_i32(var_2.wyw, var_2.yxw)), u_input.d.x, _wgslsmith_sub_vec3_u32(~_wgslsmith_add_vec3_u32(~u_input.d.zxz, _wgslsmith_add_vec3_u32(u_input.d.xxy, vec3<u32>(u_input.b, u_input.c, 4294967295u))), func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(860f)) - _wgslsmith_div_f32(-142f, 270f)), func_1(2147483647i), ~var_2.x, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1264f, 1182f)), vec2<f32>(586f, -794f), var_0.a)))), ~4294967295u);
}

