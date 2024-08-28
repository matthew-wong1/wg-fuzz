struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: i32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 11>;

var<private> global1: array<bool, 19>;

var<private> global2: Struct_1 = Struct_1(0i, vec4<u32>(4294967295u, 1u, 35541u, 0u), 1u, -53630i, 0u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> u32 {
    global1 = array<bool, 19>();
    let var_0 = Struct_2(arg_1, vec3<u32>(0u, 1u, 42908u), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(1000f, arg_0), arg_0, arg_0)))));
    var var_1 = -firstLeadingBit(vec4<i32>(-57225i, u_input.c.x, -(var_0.a.d & -2148i), _wgslsmith_dot_vec4_i32(min(vec4<i32>(0i, -62803i, global2.a, -2322i), vec4<i32>(var_0.a.a, 0i, u_input.c.x, global2.d)), vec4<i32>(var_0.a.d, -1i, -2147483647i, -1i))));
    var_1 = -vec4<i32>(arg_1.a, min(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(var_1.xz, var_1.zx), global2.a), 2147483647i), -2147483647i, -firstTrailingBit(~var_0.a.d));
    global2 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(global2.b.yw | ~_wgslsmith_sub_vec2_u32(var_0.b.yz, vec2<u32>(arg_1.e, 4294967295u)), vec2<u32>(reverseBits(1u), 10614u) ^ max(select(vec2<u32>(4294967295u, 40884u), vec2<u32>(u_input.e, 33251u), vec2<bool>(false, false)), ~vec2<u32>(arg_1.e, var_0.a.c))), var_0.b.xz), 11u)];
    return ~(~((_wgslsmith_sub_u32(32571u, u_input.b) | ~arg_1.e) >> (_wgslsmith_dot_vec4_u32(~vec4<u32>(6095u, var_0.a.b.x, 40759u, 1u), ~vec4<u32>(16814u, u_input.e, 0u, u_input.e)) % 32u)));
}

fn func_2(arg_0: i32, arg_1: Struct_2, arg_2: i32) -> vec4<bool> {
    let var_0 = 77303u ^ arg_1.b.x;
    global2 = global0[_wgslsmith_index_u32(~arg_1.b.x & arg_1.b.x, 11u)];
    global1 = array<bool, 19>();
    var var_1 = arg_1.a;
    global0 = array<Struct_1, 11>();
    return select(vec4<bool>(global1[_wgslsmith_index_u32(func_3(_wgslsmith_div_f32(801f, 1f), Struct_1(arg_1.a.d, var_1.b ^ arg_1.a.b, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0, var_0, var_0, u_input.e), vec4<u32>(76197u, 1u, 0u, 0u)), 1i, global2.c)), 19u)], global1[_wgslsmith_index_u32(arg_1.b.x ^ 51536u, 19u)], all(select(vec4<bool>(false, true, false, true), vec4<bool>(global1[_wgslsmith_index_u32(var_0, 19u)], global1[_wgslsmith_index_u32(arg_1.b.x, 19u)], true, true), !vec4<bool>(false, true, global1[_wgslsmith_index_u32(0u, 19u)], true))), any(!select(vec2<bool>(global1[_wgslsmith_index_u32(arg_1.a.b.x, 19u)], true), vec2<bool>(global1[_wgslsmith_index_u32(1u, 19u)], false), vec2<bool>(global1[_wgslsmith_index_u32(75658u, 19u)], true)))), select(vec4<bool>(true, !global1[_wgslsmith_index_u32(1u, 19u)], any(!vec2<bool>(global1[_wgslsmith_index_u32(8153u, 19u)], global1[_wgslsmith_index_u32(var_1.e, 19u)])), !global1[_wgslsmith_index_u32(25457u, 19u)]), !select(vec4<bool>(global1[_wgslsmith_index_u32(61476u, 19u)], false, global1[_wgslsmith_index_u32(27309u, 19u)], global1[_wgslsmith_index_u32(4294967295u, 19u)]), vec4<bool>(global1[_wgslsmith_index_u32(33866u, 19u)], global1[_wgslsmith_index_u32(arg_1.b.x, 19u)], false, global1[_wgslsmith_index_u32(var_1.c, 19u)]), select(vec4<bool>(global1[_wgslsmith_index_u32(var_0, 19u)], false, false, global1[_wgslsmith_index_u32(4294967295u, 19u)]), vec4<bool>(false, global1[_wgslsmith_index_u32(arg_1.b.x, 19u)], global1[_wgslsmith_index_u32(66854u, 19u)], global1[_wgslsmith_index_u32(var_1.b.x, 19u)]), vec4<bool>(false, global1[_wgslsmith_index_u32(global2.b.x, 19u)], global1[_wgslsmith_index_u32(arg_1.a.e, 19u)], global1[_wgslsmith_index_u32(global2.c, 19u)]))), vec4<bool>(false, !all(vec2<bool>(global1[_wgslsmith_index_u32(u_input.e, 19u)], true)), !any(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 19u)], global1[_wgslsmith_index_u32(38977u, 19u)], false, global1[_wgslsmith_index_u32(16466u, 19u)])), !(global1[_wgslsmith_index_u32(var_0, 19u)] && global1[_wgslsmith_index_u32(var_0, 19u)]))), !global1[_wgslsmith_index_u32((1862u & (u_input.e >> (var_0 % 32u))) >> (func_3(arg_1.c.x, Struct_1(arg_2, vec4<u32>(0u, 83853u, global2.c, 54476u), 1u, arg_0, var_0)) % 32u), 19u)]);
}

fn func_1(arg_0: i32, arg_1: bool) -> Struct_2 {
    let var_0 = Struct_1(-27311i, vec4<u32>(select(13590u, _wgslsmith_mult_u32(global2.e << (1u % 32u), u_input.e), any(select(vec3<bool>(true, true, false), vec3<bool>(true, arg_1, global1[_wgslsmith_index_u32(u_input.e, 19u)]), vec3<bool>(arg_1, global1[_wgslsmith_index_u32(8695u, 19u)], true)))), _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, global2.b.x), global2.b.zz ^ vec2<u32>(u_input.e, 0u), ~global2.b.xz), firstTrailingBit(vec2<u32>(4294967295u, 906u))), ~global2.e, global2.b.x), abs(_wgslsmith_add_u32(global2.e, _wgslsmith_sub_u32(u_input.e, min(0u, 4294967295u)))), arg_0, u_input.b);
    var var_1 = !vec3<bool>(!all(!vec4<bool>(true, global1[_wgslsmith_index_u32(1993u, 19u)], true, global1[_wgslsmith_index_u32(4294967295u, 19u)])), true, ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, 1u, 0u, 73212u), var_0.b) == 1u);
    var var_2 = select(vec2<bool>(reverseBits(u_input.c.x) == 0i, any(select(select(vec4<bool>(global1[_wgslsmith_index_u32(global2.b.x, 19u)], var_1.x, false, true), vec4<bool>(false, arg_1, false, var_1.x), vec4<bool>(true, var_1.x, var_1.x, global1[_wgslsmith_index_u32(var_0.c, 19u)])), vec4<bool>(var_1.x, false, false, false), func_2(19909i, Struct_2(Struct_1(-71313i, global2.b, 1u, 0i, var_0.b.x), vec3<u32>(70384u, 77036u, 0u), vec3<f32>(1842f, 188f, -575f)), global2.d)))), var_1.zx, !vec2<bool>(true, !var_1.x | true));
    global0 = array<Struct_1, 11>();
    let var_3 = Struct_2(global0[_wgslsmith_index_u32(global2.e, 11u)], vec3<u32>(global2.e, 90216u, _wgslsmith_sub_u32(48016u, abs(var_0.b.x | 39588u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(199f, -843f, -1238f)) + vec3<f32>(-419f, 1426f, 1334f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-423f, -272f, -351f), vec3<f32>(1f, 1f, 1f))))));
    return Struct_2(Struct_1(abs(~(~var_0.d)), _wgslsmith_clamp_vec4_u32(abs(vec4<u32>(var_0.c, 4294967295u, var_3.a.c, u_input.b)), ~(vec4<u32>(4294967295u, 80507u, 7633u, u_input.d) >> (vec4<u32>(19126u, 4294967295u, global2.c, 4294967295u) % vec4<u32>(32u))), countOneBits(global2.b) & ~vec4<u32>(u_input.d, var_0.b.x, 1u, 60821u)), firstTrailingBit(min(1u, global2.c)), _wgslsmith_sub_i32(-86871i, reverseBits(-20280i)) & -firstTrailingBit(-2147483647i), var_0.c), abs(vec3<u32>(~global2.c, ~0u, 1u) & vec3<u32>(~global2.e, var_3.b.x, var_0.c)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.c.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1387f * -244f))), var_3.c.x) + var_3.c));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 44348u;
    let var_1 = func_1(-countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, u_input.a, global2.d), ~vec3<i32>(-2147483647i, u_input.a, -1589i))), !(!select(false, all(vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 19u)], false)), select(true, true, global1[_wgslsmith_index_u32(54878u, 19u)]))));
    var_0 = 69659u;
    global0 = array<Struct_1, 11>();
    var_0 = ~(~_wgslsmith_dot_vec3_u32(abs(~vec3<u32>(0u, var_1.b.x, var_1.b.x)), firstTrailingBit(~global2.b.yxw)));
    let var_2 = all(!select(!vec2<bool>(global1[_wgslsmith_index_u32(1u, 19u)], true), vec2<bool>(func_2(global2.d, Struct_2(global0[_wgslsmith_index_u32(19192u, 11u)], vec3<u32>(global2.c, var_1.a.b.x, 64806u), var_1.c), global2.a).x, false), all(vec3<bool>(global1[_wgslsmith_index_u32(global2.c, 19u)], false, true))));
    var var_3 = 6848u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(max(63847i, 3490i), !var_2).c.x - var_1.c.x)), u_input.e);
}

