struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 16> = array<bool, 16>(true, true, false, true, false, false, true, false, false, false, false, false, true, true, true, true);

var<private> global1: array<vec2<f32>, 22> = array<vec2<f32>, 22>(vec2<f32>(-1000f, 456f), vec2<f32>(-1046f, -398f), vec2<f32>(-309f, 320f), vec2<f32>(872f, 1347f), vec2<f32>(-1433f, 1306f), vec2<f32>(1018f, 485f), vec2<f32>(-1251f, -767f), vec2<f32>(147f, -168f), vec2<f32>(-1023f, -138f), vec2<f32>(387f, 423f), vec2<f32>(580f, -190f), vec2<f32>(495f, 886f), vec2<f32>(-1495f, -154f), vec2<f32>(-376f, 335f), vec2<f32>(-1314f, 1633f), vec2<f32>(638f, 1382f), vec2<f32>(1320f, -239f), vec2<f32>(1603f, -799f), vec2<f32>(605f, 2080f), vec2<f32>(-2511f, -329f), vec2<f32>(-491f, -2930f), vec2<f32>(-609f, -1775f));

var<private> global2: vec3<bool>;

var<private> global3: bool = true;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
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

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: Struct_2) -> vec3<bool> {
    global2 = vec3<bool>(all(select(!vec3<bool>(global2.x, global2.x, true), select(!vec3<bool>(global2.x, false, global2.x), !vec3<bool>(global2.x, true, false), !vec3<bool>(global2.x, global0[_wgslsmith_index_u32(u_input.a.x, 16u)], global2.x)), !(!vec3<bool>(global0[_wgslsmith_index_u32(arg_0.a, 16u)], true, global2.x)))), (~(-1i) ^ (~u_input.c.x ^ 6498i)) < 1i, any(select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.d, 16u)] | global2.x, global2.x, global2.x & global0[_wgslsmith_index_u32(13292u, 16u)], true), !vec4<bool>(global2.x, false, false, global0[_wgslsmith_index_u32(u_input.a.x, 16u)]), true)));
    var var_0 = Struct_2(u_input.d, arg_0.c, Struct_1(_wgslsmith_clamp_i32(u_input.c.x, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 9872i, u_input.c.x, arg_0.b.a), _wgslsmith_add_vec4_i32(u_input.c, vec4<i32>(14679i, 53885i, arg_0.c.a, -2147483647i))), u_input.b)));
    global2 = select(vec3<bool>(global0[_wgslsmith_index_u32(~u_input.d ^ u_input.a.x, 16u)], any(vec4<bool>(all(vec2<bool>(global2.x, global0[_wgslsmith_index_u32(70295u, 16u)])), true, true, all(vec4<bool>(global2.x, false, global2.x, true)))), any(!select(vec3<bool>(false, false, false), vec3<bool>(true, global0[_wgslsmith_index_u32(arg_0.a, 16u)], global2.x), global0[_wgslsmith_index_u32(var_0.a, 16u)]))), vec3<bool>(!(arg_0.a == 39293u) || (global0[_wgslsmith_index_u32(~41705u, 16u)] && all(vec4<bool>(false, false, true, global0[_wgslsmith_index_u32(u_input.a.x, 16u)]))), false, true), !select(vec3<bool>(select(false, global2.x, global0[_wgslsmith_index_u32(u_input.d, 16u)]), true, true), vec3<bool>(true, true, true), !select(vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 16u)], false, global0[_wgslsmith_index_u32(var_0.a, 16u)]), vec3<bool>(global0[_wgslsmith_index_u32(arg_0.a, 16u)], true, global0[_wgslsmith_index_u32(4294967295u, 16u)]), global2.x)));
    var_0 = Struct_2(2457u, Struct_1(u_input.b), var_0.c);
    global1 = array<vec2<f32>, 22>();
    return select(select(!select(vec3<bool>(global0[_wgslsmith_index_u32(arg_0.a, 16u)], global2.x, global2.x), select(vec3<bool>(false, true, global2.x), vec3<bool>(global0[_wgslsmith_index_u32(var_0.a, 16u)], global0[_wgslsmith_index_u32(var_0.a, 16u)], false), vec3<bool>(false, global0[_wgslsmith_index_u32(24521u, 16u)], true)), !vec3<bool>(global2.x, false, global0[_wgslsmith_index_u32(arg_0.a, 16u)])), vec3<bool>(global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.a, 7434u), u_input.a.zz), 16u)], ~53387u >= u_input.d, global0[_wgslsmith_index_u32(1u, 16u)]), select(select(!vec3<bool>(global0[_wgslsmith_index_u32(arg_0.a, 16u)], false, true), !vec3<bool>(false, global0[_wgslsmith_index_u32(60990u, 16u)], global0[_wgslsmith_index_u32(u_input.a.x, 16u)]), select(vec3<bool>(global2.x, global2.x, global2.x), vec3<bool>(false, true, global2.x), global0[_wgslsmith_index_u32(var_0.a, 16u)])), select(vec3<bool>(global0[_wgslsmith_index_u32(96329u, 16u)], global2.x, global2.x), vec3<bool>(global0[_wgslsmith_index_u32(1u, 16u)], global0[_wgslsmith_index_u32(3987u, 16u)], true), any(global2.xz)), !select(vec3<bool>(global2.x, global2.x, true), vec3<bool>(true, global0[_wgslsmith_index_u32(42062u, 16u)], false), false))), vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 16u)], all(vec3<bool>(true, true, true)), global2.x), vec3<bool>(false, select(all(!vec2<bool>(true, global2.x)), !global0[_wgslsmith_index_u32(var_0.a, 16u)] | (global0[_wgslsmith_index_u32(16886u, 16u)] | global2.x), true), !any(global2.zy)));
}

fn func_2(arg_0: i32, arg_1: f32) -> Struct_1 {
    global2 = !vec3<bool>(!all(func_3(Struct_2(30408u, Struct_1(u_input.b), Struct_1(u_input.c.x)))), false, global2.x);
    let var_0 = Struct_1(arg_0);
    let var_1 = ~(~75800u);
    global1 = array<vec2<f32>, 22>();
    let var_2 = ~2147483647i;
    return Struct_1(-1i);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec4<u32>, arg_3: bool) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-874f, _wgslsmith_f_op_f32(select(750f, -1047f, true)), -273f)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(643f, -911f, 673f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -1213f, 544f) + vec3<f32>(-1111f, -691f, -912f))))))))));
    var var_1 = vec4<f32>(var_0.x, var_0.x, var_0.x, _wgslsmith_f_op_f32(abs(var_0.x)));
    var var_2 = Struct_1(arg_0.a);
    var_2 = Struct_1(-2147483647i);
    let var_3 = arg_2;
    return ~(~10522u >> (select(_wgslsmith_dot_vec2_u32(var_3.zy, u_input.a.zz | arg_2.wx), 0u, min(-35526i, arg_0.a) <= arg_0.a) % 32u));
}

fn func_1() -> StorageBuffer {
    var var_0 = !(!any(!vec3<bool>(false, global0[_wgslsmith_index_u32(9300u, 16u)], global0[_wgslsmith_index_u32(u_input.d, 16u)]))) & (reverseBits(-1i) >= (u_input.c.x ^ ~(-1i)));
    global1 = array<vec2<f32>, 22>();
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-603f, _wgslsmith_f_op_f32(847f + -494f))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1f), 1113f, !(!global0[_wgslsmith_index_u32(u_input.a.x, 16u)]))), -396f, true || global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.d << (u_input.d % 32u), ~u_input.d), 16u)])));
    var var_2 = all(!(!select(vec2<bool>(true, true), global2.xz, true)));
    return StorageBuffer(u_input.c.zzx, vec2<u32>(68385u, 4294967295u), u_input.a.zx, vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_add_u32(max(u_input.a.x, 4294967295u), _wgslsmith_add_u32(u_input.a.x, u_input.a.x)), 4294967295u), ~min(u_input.a.x, 57751u) << (4294967295u % 32u), _wgslsmith_sub_u32(func_4(func_2(-27046i, 356f), Struct_2(88095u, Struct_1(33253i), Struct_1(69696i)), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 114945u, 13084u, 7025u), vec4<u32>(4294967295u, 1u, 0u, u_input.d)), true), reverseBits(u_input.d)), u_input.a.x ^ ~min(26938u, u_input.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

