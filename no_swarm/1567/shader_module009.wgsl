struct Struct_1 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<f32>,
    d: i32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<bool, 1> = array<bool, 1>(true);

var<private> global2: array<f32, 8>;

var<private> global3: f32;

var<private> global4: bool = false;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: bool, arg_1: f32, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    let var_0 = Struct_1(vec4<bool>(arg_0, all(!(!arg_3.a.xyy)), true, any(select(!vec4<bool>(false, true, false, global1[_wgslsmith_index_u32(49041u, 1u)]), select(arg_3.a, vec4<bool>(false, true, true, global1[_wgslsmith_index_u32(26541u, 1u)]), arg_3.a), select(vec4<bool>(false, true, global1[_wgslsmith_index_u32(u_input.a, 1u)], false), arg_2.a, arg_3.a.x)))), vec4<i32>(~(~arg_3.b.x), -40936i, _wgslsmith_mult_i32(arg_2.b.x, arg_3.b.x), abs(-52850i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(arg_2.c, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_3.c.x, global2[_wgslsmith_index_u32(u_input.a, 8u)], arg_3.c.x, -146f))), _wgslsmith_f_op_vec4_f32(step(arg_2.c, vec4<f32>(1050f, arg_1, global2[_wgslsmith_index_u32(44859u, 8u)], arg_1))), arg_3.a))))));
    global2 = array<f32, 8>();
    global4 = true;
    return 1i;
}

fn func_2(arg_0: Struct_1) -> i32 {
    let var_0 = ~(-(vec4<i32>(func_3(true, -1412f, Struct_1(arg_0.a, arg_0.b, arg_0.c), arg_0), _wgslsmith_mod_i32(-2147483647i, arg_0.b.x), -arg_0.b.x, 13452i) & max(arg_0.b << (vec4<u32>(u_input.a, 59132u, 1u, u_input.a) % vec4<u32>(32u)), -vec4<i32>(-2147483647i, -2147483647i, arg_0.b.x, arg_0.b.x))));
    global4 = arg_0.a.x;
    var var_1 = arg_0;
    global1 = array<bool, 1>();
    let var_2 = u_input.a;
    return ~(~19371i);
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: Struct_1, arg_3: vec2<f32>) -> Struct_1 {
    var var_0 = Struct_1(arg_2.a, ~_wgslsmith_sub_vec4_i32(vec4<i32>(func_2(Struct_1(vec4<bool>(true, arg_1, true, true), arg_2.b, vec4<f32>(global2[_wgslsmith_index_u32(74044u, 8u)], -2191f, 1486f, -577f))), 1i, 30459i, 45162i | arg_2.b.x), select(-vec4<i32>(arg_0, arg_2.b.x, 2147483647i, arg_0), countOneBits(vec4<i32>(26938i, arg_2.b.x, 1i, arg_2.b.x)), arg_2.a.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, -713f, arg_3.x, arg_3.x), arg_2.c, 2147483647i <= arg_0)), _wgslsmith_div_vec4_f32(vec4<f32>(2298f, global2[_wgslsmith_index_u32(4294967295u, 8u)], -866f, global2[_wgslsmith_index_u32(4294967295u, 8u)]), arg_2.c)))));
    global4 = all(vec2<bool>(any(vec3<bool>(arg_1, arg_2.a.x, arg_1)), true));
    let var_1 = vec2<i32>(~(~(var_0.b.x >> (1u % 32u))) << (1u % 32u), arg_2.b.x);
    global1 = array<bool, 1>();
    global4 = global1[_wgslsmith_index_u32(~u_input.a, 1u)];
    return Struct_1(arg_2.a, _wgslsmith_sub_vec4_i32(abs(abs(vec4<i32>(-1i, -1i, var_0.b.x, 0i) ^ arg_2.b)), vec4<i32>(-var_1.x ^ var_1.x, ~1i, select(var_1.x, arg_0, true), -1i)), vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1008f))), 1594f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(349f - _wgslsmith_f_op_f32(-var_0.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(969f + 1088f)), false)), var_0.c.x));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1) -> vec2<i32> {
    let var_0 = func_1(-2147483647i, arg_0.x, func_1(arg_1.b.x, any(!(!vec4<bool>(true, arg_1.a.x, true, false))), arg_1, vec2<f32>(global2[_wgslsmith_index_u32(u_input.a, 8u)], global2[_wgslsmith_index_u32(39979u, 8u)])), _wgslsmith_f_op_vec2_f32(-vec2<f32>(886f, global2[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_add_u32(u_input.a, u_input.a), ~68779u), 8u)])));
    let var_1 = 41232u;
    global1 = array<bool, 1>();
    let var_2 = firstLeadingBit(~(~(~(~u_input.a))));
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.c.x + var_0.c.x) * -1458f)), arg_1.c.x)));
    return vec2<i32>(var_0.b.x, firstTrailingBit(-abs(var_0.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(~func_4(!select(vec3<bool>(false, false, true), vec3<bool>(false, true, global1[_wgslsmith_index_u32(u_input.a, 1u)]), vec3<bool>(global1[_wgslsmith_index_u32(u_input.a, 1u)], global1[_wgslsmith_index_u32(1u, 1u)], true)), func_1(min(-6227i, 60113i), false, Struct_1(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 1u)], global1[_wgslsmith_index_u32(u_input.a, 1u)], false, global1[_wgslsmith_index_u32(55346u, 1u)]), vec4<i32>(27313i, 1i, 5217i, 36506i), vec4<f32>(-1000f, global2[_wgslsmith_index_u32(48979u, 8u)], -256f, 957f)), vec2<f32>(global2[_wgslsmith_index_u32(6005u, 8u)], global2[_wgslsmith_index_u32(1u, 8u)]))), _wgslsmith_mod_vec2_i32(vec2<i32>(abs(1i), i32(-1i) * -4339i) ^ (vec2<i32>(-33338i, -2147483647i) | _wgslsmith_clamp_vec2_i32(vec2<i32>(7143i, 35824i), vec2<i32>(-4309i, -20768i), vec2<i32>(0i, -60290i))), select(vec2<i32>(1i, 1i), vec2<i32>(-5815i, 0i) << (countOneBits(vec2<u32>(u_input.a, u_input.a)) % vec2<u32>(32u)), select(vec2<bool>(global1[_wgslsmith_index_u32(u_input.a, 1u)], false), vec2<bool>(global1[_wgslsmith_index_u32(u_input.a, 1u)], global1[_wgslsmith_index_u32(1u, 1u)]), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a, u_input.a), 1u)]))), true);
    var var_1 = 21909i;
    global1 = array<bool, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(min(abs(-1i), 1i), -1i, vec4<f32>(-3524f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -418f) * _wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(48938u, 8u)]))) * _wgslsmith_f_op_f32(-934f * _wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(0u, 8u)])))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.a, 8u)]))))), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.a, 8u)] * _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 8u)]))), firstTrailingBit(~55926i), max(~(~select(vec3<u32>(17133u, 4294967295u, 18361u), vec3<u32>(0u, u_input.a, 73639u), vec3<bool>(global1[_wgslsmith_index_u32(u_input.a, 1u)], false, true))), min(select(vec3<u32>(1u, u_input.a, 50588u), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, 42568u, 0u), vec3<u32>(0u, u_input.a, u_input.a)), func_1(var_0.x, false, Struct_1(vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 1u)], true, false, false), vec4<i32>(var_0.x, var_0.x, 0i, var_0.x), vec4<f32>(global2[_wgslsmith_index_u32(25757u, 8u)], 568f, global2[_wgslsmith_index_u32(16926u, 8u)], global2[_wgslsmith_index_u32(u_input.a, 8u)])), vec2<f32>(global2[_wgslsmith_index_u32(u_input.a, 8u)], 302f)).a.xyx), ~(~vec3<u32>(7038u, u_input.a, 0u)))));
}

