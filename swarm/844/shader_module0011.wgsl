struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: vec3<bool>,
    d: f32,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<bool, 19> = array<bool, 19>(true, true, true, true, true, true, true, false, true, false, true, false, true, true, false, true, false, true, true);

var<private> global2: array<i32, 10>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec2<i32>) -> i32 {
    let var_0 = Struct_1(_wgslsmith_mod_i32(abs(~global2[_wgslsmith_index_u32(4294967295u, 10u)]), min(~0i, i32(-1i) * -1i)), u_input.c.zy, vec3<bool>(!(1u != (u_input.b.x << (0u % 32u))), all(select(!vec4<bool>(global1[_wgslsmith_index_u32(0u, 19u)], global1[_wgslsmith_index_u32(1u, 19u)], true, global1[_wgslsmith_index_u32(870u, 19u)]), vec4<bool>(global1[_wgslsmith_index_u32(21577u, 19u)], global1[_wgslsmith_index_u32(u_input.b.x, 19u)], false, global1[_wgslsmith_index_u32(u_input.b.x, 19u)]), false)), false), 336f, u_input.a.yz);
    var var_1 = select(select(select(!var_0.c.yz, vec2<bool>(all(var_0.c.zz), false), global1[_wgslsmith_index_u32(u_input.d.x, 19u)]), select(var_0.c.yx, !var_0.c.yx, !(global1[_wgslsmith_index_u32(0u, 19u)] && false)), select(var_0.d >= 1120f, false, !any(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 19u)], global1[_wgslsmith_index_u32(0u, 19u)], global1[_wgslsmith_index_u32(u_input.d.x, 19u)], global1[_wgslsmith_index_u32(u_input.b.x, 19u)])))), !(!var_0.c.xy), !(!var_0.c.zy));
    global1 = array<bool, 19>();
    var var_2 = var_0;
    var var_3 = var_0;
    return var_2.a | (firstLeadingBit(-max(arg_0.x, -3084i)) | -1i);
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: i32) -> i32 {
    let var_0 = false;
    let var_1 = Struct_1(~_wgslsmith_clamp_i32(-arg_1.e.x, global2[_wgslsmith_index_u32(34359u, 10u)], 12980i), -(arg_1.e << (u_input.d.xz % vec2<u32>(32u))), !arg_1.c, arg_1.d, vec2<i32>(_wgslsmith_add_i32(~u_input.c.x, 1i ^ u_input.c.x), 0i & -arg_3) & ~_wgslsmith_mod_vec2_i32(arg_1.b, ~vec2<i32>(arg_1.a, 43778i)));
    return global2[_wgslsmith_index_u32(~(~countOneBits(4294967295u)), 10u)] & countOneBits(func_3(arg_1.e));
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: vec3<i32>) -> vec2<u32> {
    var var_0 = arg_0;
    var var_1 = _wgslsmith_clamp_i32(arg_0.b.x, ~func_2(u_input.b.x << (64452u % 32u), Struct_1(-1575i, vec2<i32>(1i, -2147483647i), vec3<bool>(false, false, arg_0.c.x), -175f, arg_2.yy), vec2<bool>(false, true), _wgslsmith_add_i32(11533i, 1i)), -reverseBits(1i)) <= 2147483647i;
    global0 = ~_wgslsmith_add_u32(~u_input.b.x, u_input.d.x);
    global1 = array<bool, 19>();
    let var_2 = u_input.b.x;
    return vec2<u32>(57590u, 13275u);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<i32, 10>();
    let var_0 = min(~_wgslsmith_clamp_vec2_u32(~vec2<u32>(u_input.d.x, 4294967295u), ~func_1(Struct_1(global2[_wgslsmith_index_u32(u_input.b.x, 10u)], vec2<i32>(-8857i, -32732i), vec3<bool>(global1[_wgslsmith_index_u32(51964u, 19u)], global1[_wgslsmith_index_u32(u_input.b.x, 19u)], false), 1807f, vec2<i32>(global2[_wgslsmith_index_u32(15852u, 10u)], u_input.c.x)), -4916i, vec3<i32>(u_input.a.x, global2[_wgslsmith_index_u32(u_input.b.x, 10u)], 0i)), firstTrailingBit(~vec2<u32>(30702u, u_input.d.x))), vec2<u32>(u_input.b.x, 33960u));
    global2 = array<i32, 10>();
    global2 = array<i32, 10>();
    let var_1 = Struct_1(-2809i, max(~select(~vec2<i32>(-21465i, 20972i), firstTrailingBit(vec2<i32>(global2[_wgslsmith_index_u32(u_input.d.x, 10u)], 2147483647i)), vec2<bool>(false, true)), min(vec2<i32>(firstLeadingBit(2147483647i), select(u_input.a.x, 1i, false)), vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, 0i, global2[_wgslsmith_index_u32(1u, 10u)]), u_input.a), 5752i << (var_0.x % 32u)))), select(!select(vec3<bool>(global1[_wgslsmith_index_u32(1u, 19u)], false, global1[_wgslsmith_index_u32(57687u, 19u)]), vec3<bool>(true, global1[_wgslsmith_index_u32(var_0.x, 19u)], false), !vec3<bool>(true, global1[_wgslsmith_index_u32(31043u, 19u)], false)), select(select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 19u)], global1[_wgslsmith_index_u32(41358u, 19u)], true), select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 19u)], global1[_wgslsmith_index_u32(15805u, 19u)], false), vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.b.x, 19u)], global1[_wgslsmith_index_u32(u_input.d.x, 19u)]), vec3<bool>(global1[_wgslsmith_index_u32(var_0.x, 19u)], global1[_wgslsmith_index_u32(58678u, 19u)], global1[_wgslsmith_index_u32(1u, 19u)])), global1[_wgslsmith_index_u32(var_0.x, 19u)] || global1[_wgslsmith_index_u32(35061u, 19u)]), select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 19u)], false, global1[_wgslsmith_index_u32(u_input.b.x, 19u)]), select(vec3<bool>(true, true, global1[_wgslsmith_index_u32(1u, 19u)]), vec3<bool>(global1[_wgslsmith_index_u32(3013u, 19u)], true, false), vec3<bool>(global1[_wgslsmith_index_u32(var_0.x, 19u)], global1[_wgslsmith_index_u32(var_0.x, 19u)], global1[_wgslsmith_index_u32(u_input.d.x, 19u)])), vec3<bool>(global1[_wgslsmith_index_u32(var_0.x, 19u)], true, true)), !select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 19u)], global1[_wgslsmith_index_u32(var_0.x, 19u)], false), vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.b.x, 19u)], true), global1[_wgslsmith_index_u32(37960u, 19u)])), vec3<bool>(all(!vec4<bool>(true, global1[_wgslsmith_index_u32(9829u, 19u)], global1[_wgslsmith_index_u32(23907u, 19u)], global1[_wgslsmith_index_u32(u_input.b.x, 19u)])), all(select(vec2<bool>(global1[_wgslsmith_index_u32(1u, 19u)], true), vec2<bool>(true, true), global1[_wgslsmith_index_u32(u_input.b.x, 19u)])), false)), _wgslsmith_f_op_f32(-1f), vec2<i32>(abs(_wgslsmith_div_i32(global2[_wgslsmith_index_u32(var_0.x, 10u)], countOneBits(global2[_wgslsmith_index_u32(u_input.b.x, 10u)]))), -u_input.c.x));
    let var_2 = Struct_1(-40957i, _wgslsmith_mod_vec2_i32(var_1.b, var_1.b), !vec3<bool>(select(select(global1[_wgslsmith_index_u32(4005u, 19u)], var_1.c.x, var_1.c.x), true, global1[_wgslsmith_index_u32(24842u << (var_0.x % 32u), 19u)]), true, var_1.c.x), -1544f, var_1.e);
    var var_3 = -var_1.b.x;
    let var_4 = _wgslsmith_div_vec3_i32(firstTrailingBit(u_input.c), -firstTrailingBit(countOneBits(u_input.a))) ^ vec3<i32>(abs(1i), firstTrailingBit(var_1.a), ~_wgslsmith_div_i32(2147483647i, global2[_wgslsmith_index_u32(firstLeadingBit(u_input.b.x), 10u)]));
    let x = u_input.a;
    s_output = StorageBuffer(global2[_wgslsmith_index_u32(var_0.x, 10u)], _wgslsmith_add_vec4_i32(-abs(~vec4<i32>(2147483647i, 2147483647i, -18656i, var_1.a)), vec4<i32>(0i, 0i, _wgslsmith_sub_i32(var_2.a, 12431i), 1i) >> (vec4<u32>(var_0.x, var_0.x >> (11501u % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, 17931u, u_input.b.x, u_input.d.x), vec4<u32>(4294967295u, u_input.b.x, 1u, 59253u)), _wgslsmith_mod_u32(var_0.x, 4294967295u)) % vec4<u32>(32u))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-663f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-949f, var_1.d))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1001f * 1691f)))));
}

