struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: u32,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 4> = array<u32, 4>(1u, 1u, 1u, 6313u);

var<private> global1: array<Struct_1, 12>;

var<private> global2: vec4<i32>;

var<private> global3: array<i32, 23>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec3<f32>, arg_2: Struct_4) -> u32 {
    global1 = array<Struct_1, 12>();
    global3 = array<i32, 23>();
    global0 = array<u32, 4>();
    var var_0 = arg_2.a.b.a;
    global2 = _wgslsmith_add_vec4_i32(~u_input.d, u_input.d) >> (select(vec4<u32>(47260u, _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(0u, 4u)], u_input.a.x), 4294967295u, ~u_input.a.x) ^ _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, 21365u, 44758u, u_input.a.x), vec4<u32>(global0[_wgslsmith_index_u32(18267u, 4u)], u_input.a.x, u_input.a.x, global0[_wgslsmith_index_u32(u_input.a.x, 4u)]) & vec4<u32>(global0[_wgslsmith_index_u32(1u, 4u)], 5754u, 16313u, global0[_wgslsmith_index_u32(1u, 4u)]), ~vec4<u32>(u_input.a.x, u_input.a.x, 81638u, 1u)), abs(_wgslsmith_mod_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(u_input.a.x, 4u)], 28410u, 1u, 1u), vec4<u32>(1u, 0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 4u)], 4u)], 4294967295u))) & select(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, global0[_wgslsmith_index_u32(0u, 4u)], u_input.a.x, 25882u), vec4<u32>(global0[_wgslsmith_index_u32(30859u, 4u)], 4970u, 0u, 0u)), abs(vec4<u32>(u_input.a.x, u_input.a.x, 7768u, 1u)), select(vec4<bool>(var_0.x, arg_2.a.b.a.x, var_0.x, var_0.x), vec4<bool>(false, false, var_0.x, var_0.x), false)), !any(vec3<bool>(arg_2.a.b.d, var_0.x, arg_2.a.b.a.x))) % vec4<u32>(32u));
    return firstLeadingBit(~u_input.a.x);
}

fn func_2(arg_0: i32, arg_1: Struct_1) -> Struct_2 {
    let var_0 = vec4<f32>(-792f, 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1363f, 2670f, false))), 769f);
    var var_1 = global1[_wgslsmith_index_u32(4294967295u & _wgslsmith_div_u32(~76840u, global0[_wgslsmith_index_u32(select(global0[_wgslsmith_index_u32(32405u, 4u)], _wgslsmith_div_u32(global0[_wgslsmith_index_u32(u_input.a.x, 4u)], global0[_wgslsmith_index_u32(47311u, 4u)]) | global0[_wgslsmith_index_u32(countOneBits(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(37291u, 4u)], 4u)]), 4u)], all(!vec4<bool>(arg_1.a.x, false, arg_1.d, arg_1.d))), 4u)]), 12u)];
    global0 = array<u32, 4>();
    return Struct_2(var_0, Struct_1(var_1.a, u_input.d.x, ~global2.x >> (_wgslsmith_clamp_u32(u_input.a.x | u_input.a.x, _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(u_input.a.x, 4u)], u_input.a.x), func_3(vec2<f32>(194f, 386f), vec3<f32>(var_0.x, var_0.x, 288f), Struct_4(Struct_2(var_0, Struct_1(arg_1.a, 55006i, -2147483647i, false), vec4<f32>(var_0.x, var_0.x, 1167f, 107f))))) % 32u), arg_1.d), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1565f, -239f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(345f)))), -1119f) - _wgslsmith_f_op_vec4_f32(var_0 - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0)))));
}

fn func_1() -> StorageBuffer {
    var var_0 = _wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i >> (_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(3079u, 4u)], 2511u) % 32u), countOneBits(global2.x), 1i, global3[_wgslsmith_index_u32(4294967295u, 23u)]), _wgslsmith_clamp_vec4_i32(vec4<i32>(1i, u_input.c.x, 0i, global2.x), _wgslsmith_mod_vec4_i32(vec4<i32>(global2.x, 0i, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 4u)], 4u)], 23u)], global2.x), u_input.d), ~u_input.d) ^ (firstTrailingBit(u_input.d) & -u_input.d)), u_input.d, vec4<i32>(global3[_wgslsmith_index_u32(~(global0[_wgslsmith_index_u32(~10341u, 4u)] << (8933u % 32u)), 23u)], 2147483647i, ~18757i, -(global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(46558u, u_input.a.x), 23u)] | global3[_wgslsmith_index_u32(10719u, 23u)])));
    global3 = array<i32, 23>();
    let var_1 = !(!(!((global3[_wgslsmith_index_u32(9290u, 23u)] >> (global0[_wgslsmith_index_u32(28442u, 4u)] % 32u)) > _wgslsmith_sub_i32(var_0.x, -1i))));
    global0 = array<u32, 4>();
    var var_2 = Struct_4(func_2(~_wgslsmith_add_i32(0i, _wgslsmith_mod_i32(-40359i, var_0.x)), Struct_1(select(select(vec3<bool>(true, false, var_1), vec3<bool>(var_1, var_1, var_1), true), vec3<bool>(var_1, true, var_1), true), 15004i, _wgslsmith_clamp_i32(global2.x, global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, 1560u), 23u)], -global2.x), true)));
    return StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-1568f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1573f)))), abs(firstTrailingBit(_wgslsmith_mult_u32(_wgslsmith_sub_u32(0u, global0[_wgslsmith_index_u32(u_input.a.x, 4u)]), select(u_input.a.x, global0[_wgslsmith_index_u32(87950u, 4u)], var_1)))), _wgslsmith_f_op_vec4_f32(var_2.a.a - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(var_2.a.a - _wgslsmith_f_op_vec4_f32(sign(var_2.a.c)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

