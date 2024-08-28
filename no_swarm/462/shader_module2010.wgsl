struct Struct_1 {
    a: vec4<u32>,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<f32>,
    c: f32,
    d: vec4<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 26>;

var<private> global1: array<vec2<f32>, 12>;

var<private> global2: vec4<f32>;

var<private> global3: array<bool, 18>;

var<private> global4: vec2<u32> = vec2<u32>(29313u, 44967u);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> bool {
    var var_0 = select(!arg_2.b, arg_0.b, vec2<bool>((_wgslsmith_f_op_f32(trunc(838f)) <= _wgslsmith_f_op_f32(global2.x - global2.x)) != ((global0[_wgslsmith_index_u32(4294967295u, 26u)] ^ -1i) <= global0[_wgslsmith_index_u32(max(global4.x, 33553u), 26u)]), any(!select(vec4<bool>(arg_0.b.x, arg_2.b.x, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, global3[_wgslsmith_index_u32(u_input.a.x, 18u)], false, false)))));
    var_0 = select(arg_0.b, vec2<bool>(true, !(global0[_wgslsmith_index_u32(5814u, 26u)] >= -1i)), _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-17668i, u_input.b, u_input.b, u_input.b), vec4<i32>(1i, u_input.b, global0[_wgslsmith_index_u32(1u, 26u)], 2147483647i)) >> (1u % 32u), global0[_wgslsmith_index_u32(~reverseBits(arg_1), 26u)]) <= ~select(global0[_wgslsmith_index_u32(abs(4294967295u), 26u)], -49757i, true));
    global4 = abs(_wgslsmith_add_vec2_u32(~arg_2.a.zy, _wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(u_input.a.x, 54894u), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.a.x, 27297u, 1u, arg_0.a.x), arg_2.a)), vec2<u32>(~arg_2.a.x, ~u_input.a.x))));
    return true;
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: i32) -> vec2<bool> {
    global1 = array<vec2<f32>, 12>();
    let var_0 = global4.x;
    let var_1 = -(firstTrailingBit(~vec2<i32>(-62952i, -25998i) >> (u_input.a % vec2<u32>(32u))) << (u_input.a % vec2<u32>(32u)));
    var var_2 = _wgslsmith_div_i32(2147483647i, arg_2);
    let var_3 = select(!arg_1.b, vec2<bool>(func_3(Struct_1(vec4<u32>(1u, arg_1.a.x, 1u, u_input.a.x), vec2<bool>(false, true)), ~15802u << (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 0u), u_input.a) % 32u), Struct_1(vec4<u32>(10312u, arg_1.a.x, 1u, arg_1.a.x), arg_1.b)), !arg_1.b.x), (arg_0 || all(select(vec4<bool>(true, true, global3[_wgslsmith_index_u32(4294967295u, 18u)], false), vec4<bool>(false, false, arg_0, false), vec4<bool>(global3[_wgslsmith_index_u32(9096u, 18u)], arg_0, true, global3[_wgslsmith_index_u32(42393u, 18u)])))) || any(select(!vec4<bool>(arg_1.b.x, arg_1.b.x, arg_1.b.x, true), select(vec4<bool>(global3[_wgslsmith_index_u32(global4.x, 18u)], arg_1.b.x, global3[_wgslsmith_index_u32(124896u, 18u)], arg_1.b.x), vec4<bool>(arg_1.b.x, arg_0, arg_1.b.x, true), false), vec4<bool>(false, true, false, arg_1.b.x))));
    return vec2<bool>(false, true);
}

fn func_1(arg_0: Struct_1) -> u32 {
    let var_0 = Struct_1(countOneBits(max(arg_0.a, arg_0.a)), func_2(false, Struct_1(~arg_0.a, arg_0.b), ~countOneBits(~global0[_wgslsmith_index_u32(global4.x, 26u)])));
    let var_1 = u_input.b;
    global4 = vec2<u32>(~global4.x, 48040u);
    global2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(347f, global2.x, global2.x, global2.x), vec4<f32>(-1330f, global2.x, -285f, global2.x))))) * vec4<f32>(_wgslsmith_div_f32(global2.x, -677f), global2.x, _wgslsmith_f_op_f32(-global2.x), 1285f))));
    var var_2 = any(select(!vec4<bool>(all(vec4<bool>(var_0.b.x, false, true, global3[_wgslsmith_index_u32(1u, 18u)])), !var_0.b.x, true, true), select(!vec4<bool>(var_0.b.x, arg_0.b.x, true, false), select(select(vec4<bool>(true, false, global3[_wgslsmith_index_u32(5956u, 18u)], arg_0.b.x), vec4<bool>(var_0.b.x, var_0.b.x, true, var_0.b.x), vec4<bool>(global3[_wgslsmith_index_u32(global4.x, 18u)], arg_0.b.x, arg_0.b.x, false)), vec4<bool>(arg_0.b.x, global3[_wgslsmith_index_u32(33205u, 18u)], global3[_wgslsmith_index_u32(65267u, 18u)], arg_0.b.x), select(vec4<bool>(global3[_wgslsmith_index_u32(1u, 18u)], var_0.b.x, global3[_wgslsmith_index_u32(54915u, 18u)], false), vec4<bool>(true, arg_0.b.x, var_0.b.x, true), vec4<bool>(false, false, true, false))), select(!vec4<bool>(var_0.b.x, global3[_wgslsmith_index_u32(0u, 18u)], var_0.b.x, false), vec4<bool>(var_0.b.x, true, true, false), false)), false));
    return arg_0.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 26>();
    global4 = ~abs(vec2<u32>(~func_1(Struct_1(vec4<u32>(4294967295u, global4.x, 17673u, 1u), vec2<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 18u)], global3[_wgslsmith_index_u32(global4.x, 18u)]))), _wgslsmith_mod_u32(global4.x & 3923u, 9080u)));
    var var_0 = u_input.a.x;
    var_0 = countOneBits(firstTrailingBit(0u)) ^ global4.x;
    var var_1 = Struct_1(min(abs(firstLeadingBit(max(vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, global4.x)))), ((vec4<u32>(4226u, u_input.a.x, global4.x, global4.x) & vec4<u32>(global4.x, 108355u, u_input.a.x, 4294967295u)) ^ ~vec4<u32>(global4.x, u_input.a.x, global4.x, 27030u)) & ~(~vec4<u32>(15601u, global4.x, u_input.a.x, u_input.a.x))), !vec2<bool>(false && select(global3[_wgslsmith_index_u32(global4.x, 18u)], global3[_wgslsmith_index_u32(29136u, 18u)], global3[_wgslsmith_index_u32(u_input.a.x, 18u)]), (60059u | u_input.a.x) <= u_input.a.x));
    var var_2 = Struct_1(var_1.a, var_1.b);
    let x = u_input.a;
    s_output = StorageBuffer(min(select(vec3<i32>(-10931i, -13747i, u_input.b), ~vec3<i32>(6580i, -2147483647i, 27899i), true) << (var_2.a.yxy % vec3<u32>(32u)), _wgslsmith_sub_vec3_i32((vec3<i32>(u_input.b, -27024i, 24279i) >> (var_1.a.xyz % vec3<u32>(32u))) & vec3<i32>(u_input.b, -1i, -35784i), vec3<i32>(i32(-1i) * -4475i, 1i, ~u_input.b))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1185f, global2.x))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global2.x)))), global2.x), _wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(0i, -24289i, -46612i, 2147483647i), -vec4<i32>(2147483647i, u_input.b, global0[_wgslsmith_index_u32(4294967295u, 26u)], -1i)) & ~vec4<i32>(4776i, global0[_wgslsmith_index_u32(var_1.a.x, 26u)], -6814i, u_input.b), vec4<i32>(~(global0[_wgslsmith_index_u32(u_input.a.x, 26u)] & global0[_wgslsmith_index_u32(global4.x, 26u)]), 12902i << (var_1.a.x % 32u), -2147483647i, firstTrailingBit(global0[_wgslsmith_index_u32(1u, 26u)]) << (u_input.a.x % 32u))), _wgslsmith_dot_vec2_i32(vec2<i32>(-(i32(-1i) * -1i), u_input.b), vec2<i32>(global0[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_mult_u32(var_1.a.x, 0u)), 26u)], global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(var_2.a.x, 1u, ~u_input.a.x), 26u)])));
}

