struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: f32,
    c: bool,
    d: vec4<u32>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: bool,
}

struct Struct_5 {
    a: bool,
    b: u32,
    c: vec3<u32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 16> = array<bool, 16>(false, true, false, true, false, false, true, true, false, true, false, false, false, true, true, false);

var<private> global1: array<vec2<i32>, 14> = array<vec2<i32>, 14>(vec2<i32>(i32(-2147483648), 1i), vec2<i32>(1i, 2147483647i), vec2<i32>(-39816i, -25170i), vec2<i32>(-1i, 39560i), vec2<i32>(-15930i, 9798i), vec2<i32>(-11589i, 50948i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(2147483647i, 0i), vec2<i32>(2147483647i, -1i), vec2<i32>(47633i, i32(-2147483648)), vec2<i32>(0i, -33862i), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(2147483647i, -43860i), vec2<i32>(-17234i, 2147483647i));

var<private> global2: Struct_5;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2() -> Struct_1 {
    var var_0 = 664f;
    let var_1 = ~(1u >> ((4294967295u >> (global2.b % 32u)) % 32u));
    var var_2 = Struct_2(global2.d.c, global2.d.d, global2.d.c, global2.d.c);
    return global2.d.d;
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: Struct_2, arg_3: vec4<bool>) -> Struct_1 {
    let var_0 = Struct_4(vec4<i32>(~((-2147483647i >> (global2.d.d.a % 32u)) >> (func_2().a % 32u)), select(~firstTrailingBit(-12846i), firstLeadingBit(1i), all(vec3<bool>(true, arg_1, arg_1)) || false), firstLeadingBit(-1i), firstTrailingBit(1i)), any(!select(vec2<bool>(arg_3.x, false), arg_3.yx, true)));
    var var_1 = u_input.a;
    global2 = Struct_5(all(vec3<bool>(true, !(!arg_1), true)), ~(_wgslsmith_div_u32(_wgslsmith_sub_u32(global2.c.x, 1u), max(0u, 16338u)) ^ select(4294967295u, ~arg_2.b.a, false)), _wgslsmith_clamp_vec3_u32((u_input.a | u_input.a) ^ global2.c, u_input.a, ~u_input.a), Struct_2(global2.d.c, func_2(), func_2(), func_2()));
    global2 = Struct_5(any(vec4<bool>(false, true, !arg_1, true)), u_input.b, vec3<u32>(_wgslsmith_dot_vec2_u32(var_1.yz, global2.c.xy) | arg_0.a, max(global2.c.x, _wgslsmith_mult_u32(0u, 4294967295u)), global2.d.b.a) >> ((~reverseBits(u_input.a) & vec3<u32>(23883u >> (arg_0.a % 32u), ~var_1.x, global2.d.c.a ^ u_input.b)) % vec3<u32>(32u)), global2.d);
    let var_2 = -vec4<i32>(abs(~var_0.a.x), 1i, -36062i, -_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a.x, -1i, var_0.a.x), -var_0.a.wyw));
    return func_2();
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2) -> Struct_5 {
    let var_0 = select(vec2<bool>(all(!vec2<bool>(global2.a, global0[_wgslsmith_index_u32(arg_0.a, 16u)])), all(vec2<bool>(global0[_wgslsmith_index_u32(arg_0.a, 16u)], true))), !select(select(!vec2<bool>(global2.a, global2.a), vec2<bool>(true, false), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(global2.c.yx, global2.c.zz), 16u)]), vec2<bool>(global0[_wgslsmith_index_u32(arg_1.b.a, 16u)] || global0[_wgslsmith_index_u32(1u, 16u)], false), select(vec2<bool>(true, global2.a), vec2<bool>(global0[_wgslsmith_index_u32(arg_0.a, 16u)], global2.a), true)), global2.a & true);
    let var_1 = _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, 12800i, -2147483647i), vec3<i32>(1i, 1i, -17709i), vec3<i32>(5600i, -1i, 12449i)), max(_wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, 2147483647i, 11742i), vec3<i32>(0i, 0i, 77049i)), vec3<i32>(-1i, 0i, -40327i) >> (u_input.a % vec3<u32>(32u))), _wgslsmith_add_vec3_i32(-vec3<i32>(2147483647i, -7873i, -1i), ~vec3<i32>(0i, 32118i, -2147483647i)))), -2147483647i);
    var var_2 = _wgslsmith_sub_vec4_u32(vec4<u32>(1u, _wgslsmith_mult_u32(abs(global2.b), ~u_input.a.x), ~(~global2.c.x), ~arg_0.a << (1u % 32u)), _wgslsmith_div_vec4_u32(~vec4<u32>(global2.c.x, global2.c.x, 124u, u_input.a.x) | reverseBits(vec4<u32>(4294967295u, 4294967295u, 51u, global2.c.x)), abs(~vec4<u32>(28610u, 0u, arg_1.a.a, arg_1.b.a)))) >> (~_wgslsmith_mod_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(0u, 19305u, 4294967295u, arg_0.a), vec4<u32>(50677u, 10888u, 1u, 4081u)), vec4<u32>(59343u, ~arg_1.d.a, _wgslsmith_mult_u32(4294967295u, 1u), u_input.b)) % vec4<u32>(32u));
    global1 = array<vec2<i32>, 14>();
    var var_3 = Struct_3(select(var_0, select(!var_0, var_0, all(!var_0)), select(!(global0[_wgslsmith_index_u32(55694u, 16u)] | false), global0[_wgslsmith_index_u32(reverseBits(29950u >> (arg_1.c.a % 32u)), 16u)], any(vec3<bool>(global0[_wgslsmith_index_u32(45993u, 16u)], global2.a, global0[_wgslsmith_index_u32(u_input.a.x, 16u)])))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(506f, -1255f)), 1f, !any(var_0))), global0[_wgslsmith_index_u32(1u, 16u)], ~(~reverseBits(~vec4<u32>(13487u, global2.c.x, 51361u, 1u))));
    return Struct_5(all(vec4<bool>(u_input.a.x < _wgslsmith_add_u32(arg_0.a, var_2.x), 30345u <= arg_0.a, true, select(var_0.x, true, var_3.c) | (var_1 >= 0i))), _wgslsmith_dot_vec3_u32(var_3.d.wzz, _wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(111140u, 4294967295u, var_3.d.x), vec3<u32>(arg_1.a.a, 0u, arg_0.a)) | ~vec3<u32>(var_2.x, 47291u, 16861u), reverseBits(firstLeadingBit(var_3.d.xxy)))), vec3<u32>(abs(~arg_0.a) >> (1u % 32u), firstTrailingBit(~1u << (_wgslsmith_add_u32(u_input.b, var_3.d.x) % 32u)), arg_0.a), Struct_2(Struct_1(_wgslsmith_div_u32(var_3.d.x, arg_0.a ^ 35923u)), Struct_1(max(firstTrailingBit(40369u), 40583u)), func_2(), func_2()));
}

fn func_1(arg_0: u32) -> Struct_5 {
    return func_4(func_2(), Struct_2(Struct_1(global2.c.x), global2.d.d, func_3(global2.d.b, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~1u, ~arg_0), 16u)], global2.d, vec4<bool>(global2.a, false, !global2.a, any(vec4<bool>(true, true, true, true)))), Struct_1(arg_0)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<i32>, 14>();
    var var_0 = reverseBits((firstTrailingBit(32856i) & 1i) >> (~(~(~1u)) % 32u));
    let var_1 = 14108u;
    global2 = func_1(_wgslsmith_add_u32(countOneBits(1u), ~_wgslsmith_mod_u32(0u, global2.b) & ~var_1));
    let var_2 = Struct_3(vec2<bool>(!(!(global0[_wgslsmith_index_u32(0u, 16u)] & global2.a)), true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-415f - -617f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1455f, -1000f)))), any(select(!select(vec3<bool>(true, global2.a, true), vec3<bool>(true, global0[_wgslsmith_index_u32(34000u, 16u)], true), global2.a), select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.b, 16u)], true, global2.a), !vec3<bool>(global0[_wgslsmith_index_u32(8807u, 16u)], global0[_wgslsmith_index_u32(0u, 16u)], global2.a), !vec3<bool>(true, true, global0[_wgslsmith_index_u32(35542u, 16u)])), select(!vec3<bool>(global2.a, true, false), vec3<bool>(true, true, global2.a), true))), select(vec4<u32>(func_2().a, 43600u, u_input.a.x, global2.d.b.a & var_1), ~firstLeadingBit(vec4<u32>(0u, var_1, 40050u, 52015u)), select(!vec4<bool>(true, false, global0[_wgslsmith_index_u32(168u, 16u)], false), !vec4<bool>(global0[_wgslsmith_index_u32(var_1, 16u)], true, true, false), true)) ^ vec4<u32>(global2.c.x, 35391u, u_input.a.x, reverseBits(func_2().a)));
    var var_3 = var_2.d;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(~(-1i << ((1506u >> (var_2.d.x % 32u)) % 32u)), reverseBits(~(i32(-1i) * -22783i))), ~reverseBits(~reverseBits(vec3<i32>(-2147483647i, -8237i, -3543i))));
}

