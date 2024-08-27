struct Struct_1 {
    a: u32,
    b: u32,
    c: i32,
    d: vec3<bool>,
    e: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: array<bool, 4> = array<bool, 4>(true, false, false, false);

var<private> global2: bool;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> vec4<u32> {
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, global0.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(2215f, -257f), vec2<f32>(global0.x, -1158f), true)))))));
    var var_0 = _wgslsmith_f_op_f32(-global0.x);
    var var_1 = Struct_1(reverseBits(u_input.a.x), 23387u, abs(18817i), select(vec3<bool>(any(vec2<bool>(global1[_wgslsmith_index_u32(1u, 4u)], true)), true, any(!vec3<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 4u)], global1[_wgslsmith_index_u32(38491u, 4u)], true))), select(vec3<bool>(!global1[_wgslsmith_index_u32(u_input.a.x, 4u)], true, false), select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, global1[_wgslsmith_index_u32(4294967295u, 4u)]), global1[_wgslsmith_index_u32(u_input.a.x, 4u)]), vec3<bool>(global1[_wgslsmith_index_u32(23868u, 4u)], global1[_wgslsmith_index_u32(1u, 4u)], false), !global1[_wgslsmith_index_u32(u_input.b.x, 4u)]), !vec3<bool>(global1[_wgslsmith_index_u32(7608u, 4u)], false, global1[_wgslsmith_index_u32(u_input.b.x, 4u)])), false), min(4294967295u, 13555u));
    let var_2 = Struct_2(false, Struct_1(~_wgslsmith_clamp_u32(var_1.e, 4294967295u, firstLeadingBit(var_1.b)), u_input.b.x << ((~u_input.b.x >> (u_input.b.x % 32u)) % 32u), -var_1.c, var_1.d, ~40554u), _wgslsmith_dot_vec2_i32(~vec2<i32>(-var_1.c, max(41735i, var_1.c)), _wgslsmith_mod_vec2_i32(reverseBits(vec2<i32>(var_1.c, var_1.c)), -vec2<i32>(-1805i, 2147483647i)) & vec2<i32>(i32(-1i) * -1i, var_1.c)));
    global1 = array<bool, 4>();
    return ~_wgslsmith_mult_vec4_u32(u_input.a, vec4<u32>(4294967295u, u_input.a.x, u_input.b.x, ~10125u) >> (abs(vec4<u32>(var_1.a, u_input.b.x, 27057u, 12759u)) % vec4<u32>(32u)));
}

fn func_2(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: vec4<bool>) -> vec4<u32> {
    global2 = false;
    var var_0 = Struct_2(true, arg_0.b, _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(-vec2<i32>(23500i, 3020i), vec2<i32>(0i, 29360i) >> (u_input.a.wx % vec2<u32>(32u))), vec2<i32>(arg_0.c, _wgslsmith_mod_i32(arg_0.c, arg_0.c))), vec2<i32>(arg_0.b.c, -(arg_0.c | 30767i))));
    let var_1 = _wgslsmith_mod_vec4_u32(vec4<u32>(0u, ~(~(~arg_0.b.a)), max(32641u, max(var_0.b.e, var_0.b.b) >> (arg_0.b.b % 32u)), 1u | ~var_0.b.a), min(vec4<u32>(u_input.a.x, 1u, min(7706u, 0u), u_input.a.x), _wgslsmith_mod_vec4_u32(firstTrailingBit(_wgslsmith_add_vec4_u32(u_input.a, u_input.a)), vec4<u32>(firstLeadingBit(u_input.a.x), 1u, _wgslsmith_clamp_u32(u_input.b.x, var_0.b.e, 21552u), 1u))));
    let var_2 = _wgslsmith_mod_u32(82219u, 20636u);
    let var_3 = _wgslsmith_f_op_f32(251f - _wgslsmith_f_op_f32(sign(global0.x)));
    return func_3();
}

fn func_1() -> vec2<f32> {
    var var_0 = Struct_1(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(u_input.a, ~vec4<u32>(0u, u_input.b.x, u_input.b.x, u_input.b.x)), u_input.a), abs(~func_2(Struct_2(false, Struct_1(u_input.b.x, 21642u, -2147483647i, vec3<bool>(global1[_wgslsmith_index_u32(45811u, 4u)], global1[_wgslsmith_index_u32(u_input.b.x, 4u)], global1[_wgslsmith_index_u32(0u, 4u)]), u_input.b.x), 0i), vec4<f32>(global0.x, global0.x, -1947f, global0.x), vec4<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 4u)], global1[_wgslsmith_index_u32(u_input.b.x, 4u)], global1[_wgslsmith_index_u32(u_input.a.x, 4u)], true)))), u_input.b.x, min(countOneBits(43293i), reverseBits(~(-2147483647i))), vec3<bool>(true, all(vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.b.x, 4u)] || true)), true), ~_wgslsmith_mod_u32(1u, reverseBits(u_input.a.x) >> ((u_input.a.x ^ 1u) % 32u)));
    global1 = array<bool, 4>();
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, _wgslsmith_f_op_f32(-global0.x)) - vec2<f32>(-1054f, global0.x)), var_0.d.x)));
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(u_input.a.x, var_0.a, 37166u)), ~vec3<u32>(1u, u_input.b.x, var_0.a)) & ~var_0.a, 4u)] && true;
    let var_2 = var_0.c;
    return vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, -1862f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(sign(global0.x)), var_0.d.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = global1[_wgslsmith_index_u32(~61416u, 4u)];
    let var_0 = false;
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(global0.x, 690f), vec2<f32>(819f, global0.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, -472f)) - vec2<f32>(global0.x, global0.x)))) + _wgslsmith_f_op_vec2_f32(func_1())));
    global2 = !any(select(!vec3<bool>(false, true, var_0), select(select(vec3<bool>(var_0, global1[_wgslsmith_index_u32(u_input.a.x, 4u)], false), vec3<bool>(var_0, global1[_wgslsmith_index_u32(u_input.b.x, 4u)], false), vec3<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 4u)], global1[_wgslsmith_index_u32(u_input.b.x, 4u)], global1[_wgslsmith_index_u32(u_input.b.x, 4u)])), vec3<bool>(global1[_wgslsmith_index_u32(2572u, 4u)], false, var_0), any(vec3<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 4u)], global1[_wgslsmith_index_u32(0u, 4u)], true))), !select(vec3<bool>(global1[_wgslsmith_index_u32(34854u, 4u)], global1[_wgslsmith_index_u32(u_input.b.x, 4u)], var_0), vec3<bool>(var_0, var_0, var_0), false)));
    global2 = any(vec3<bool>(!(!global1[_wgslsmith_index_u32(abs(u_input.a.x), 4u)]), select(true | select(false, var_0, var_0), !global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(12755u, 1u), 4u)], all(!vec4<bool>(true, true, true, var_0))), true));
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global0.x, global0.x), vec2<f32>(global0.x, global0.x))))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global0.x, -753f), vec2<f32>(global0.x, global0.x))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, -831f) + vec2<f32>(-1157f, global0.x))) - vec2<f32>(global0.x, _wgslsmith_f_op_f32(trunc(974f)))) * _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(302f, _wgslsmith_f_op_f32(select(global0.x, 1067f, true)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(~(~2147483647i), -(~(~2147483647i))), u_input.a.yw);
}

