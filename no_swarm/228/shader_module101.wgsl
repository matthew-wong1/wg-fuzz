struct Struct_1 {
    a: vec2<bool>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec3<f32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec3<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: vec3<u32>,
    d: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: Struct_1,
    d: vec4<i32>,
}

struct Struct_5 {
    a: Struct_3,
    b: bool,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: f32,
    d: f32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<i32, 3>;

var<private> global2: vec2<bool> = vec2<bool>(true, true);

var<private> global3: array<f32, 20> = array<f32, 20>(767f, -1000f, 604f, -320f, -772f, -666f, -693f, -610f, -767f, 1000f, -1904f, -1148f, 1165f, 438f, 152f, -2798f, -956f, 732f, -1154f, -1000f);

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> bool {
    var var_0 = Struct_3(global2.x, 19799u, min(vec3<u32>(39932u, ~_wgslsmith_mod_u32(u_input.c.x, u_input.c.x), u_input.c.x), vec3<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.c.x, u_input.c.x), vec3<u32>(23537u, 4294967295u, u_input.c.x)), select(0u, 21776u, false)), ~firstLeadingBit(u_input.c.x), ~(~u_input.c.x))), true);
    global0 = select(select(!(!vec3<bool>(global2.x, global0.x, true)), vec3<bool>(!var_0.a | (global0.x && var_0.d), !global2.x, !global2.x), !((1i != global1[_wgslsmith_index_u32(u_input.c.x, 3u)]) || true)), select(select(vec3<bool>(false, all(vec3<bool>(var_0.d, global0.x, var_0.d)), all(vec4<bool>(global2.x, global0.x, var_0.d, global2.x))), select(!vec3<bool>(global0.x, true, true), !vec3<bool>(false, var_0.a, false), var_0.d), true), vec3<bool>(false, !any(vec4<bool>(global2.x, false, false, global2.x)), var_0.a), true), vec3<bool>(!(global3[_wgslsmith_index_u32(firstLeadingBit(4294967295u), 20u)] > -271f), var_0.a || false, var_0.d));
    var var_1 = u_input.b;
    let var_2 = true;
    var var_3 = vec3<i32>(0i, var_1.x << (u_input.c.x % 32u), _wgslsmith_mod_i32(~2147483647i, _wgslsmith_dot_vec2_i32(var_1.yx, vec2<i32>(global1[_wgslsmith_index_u32(var_0.b, 3u)], u_input.b.x)) & (firstLeadingBit(0i) >> (firstLeadingBit(49058u) % 32u))));
    return -11031i != ~var_1.x;
}

fn func_2(arg_0: Struct_5, arg_1: f32, arg_2: u32, arg_3: Struct_2) -> i32 {
    global0 = vec3<bool>(!(!(-arg_3.a.c.x != -arg_3.d.c.x)), true, false);
    global2 = select(select(arg_3.a.a, select(global0.yz, select(select(vec2<bool>(global0.x, false), global0.zy, global0.zy), vec2<bool>(false, false), select(vec2<bool>(global2.x, global0.x), global0.yx, arg_0.b)), vec2<bool>(func_3(), func_3())), ~(~29373u) <= _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(arg_3.b, arg_3.d.b.zz), ~arg_0.a.c.xz)), !global0.xz, arg_3.d.a);
    var var_0 = _wgslsmith_f_op_f32(max(190f, _wgslsmith_f_op_f32(trunc(global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(reverseBits(_wgslsmith_div_u32(arg_0.c.x, u_input.c.x)), ~68695u), 20u)]))));
    let var_1 = ~max(firstTrailingBit(~arg_2) >> (arg_0.c.x % 32u), ~abs(4294967295u & arg_2));
    global1 = array<i32, 3>();
    return -49653i;
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: f32, arg_3: Struct_5) -> bool {
    global2 = global0.xx;
    let var_0 = !vec4<bool>(global2.x, true, global2.x, all(!vec4<bool>(global2.x, arg_3.a.d, false, false)));
    let var_1 = false;
    let var_2 = Struct_4(Struct_3(!(-522f < _wgslsmith_f_op_f32(-arg_2)), _wgslsmith_mult_u32(arg_3.a.c.x, ~arg_3.a.b), (~arg_1.c ^ arg_3.c) & _wgslsmith_div_vec3_u32(~arg_1.c, ~vec3<u32>(arg_3.a.b, arg_3.a.b, 0u)), !arg_3.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(307f, -597f)) - -754f), Struct_1(global0.zx, abs(abs(arg_1.c)), arg_0, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, -886f, global3[_wgslsmith_index_u32(arg_3.c.x, 20u)])) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(4294967295u, 20u)], -431f, 181f) * vec3<f32>(arg_2, 1000f, global3[_wgslsmith_index_u32(arg_1.c.x, 20u)])))), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(1f, global3[_wgslsmith_index_u32(~52838u, 20u)])))), vec4<i32>(global1[_wgslsmith_index_u32(~(arg_3.c.x & ~79420u), 3u)], reverseBits(-(~1i)), 54741i, 18252i));
    let var_3 = arg_3;
    return false;
}

fn func_1() -> f32 {
    global2 = vec2<bool>(true, global2.x);
    global2 = global0.zy;
    global3 = array<f32, 20>();
    let var_0 = -2147483647i;
    var var_1 = Struct_5(Struct_3(func_4(vec2<i32>(func_2(Struct_5(Struct_3(false, 3104u, vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x), global0.x), true, vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x)), global3[_wgslsmith_index_u32(u_input.c.x, 20u)], 24845u, Struct_2(Struct_1(vec2<bool>(global0.x, true), vec3<u32>(25785u, u_input.c.x, u_input.c.x), u_input.a.yx, vec3<f32>(-533f, global3[_wgslsmith_index_u32(4294967295u, 20u)], global3[_wgslsmith_index_u32(26347u, 20u)]), vec2<f32>(868f, global3[_wgslsmith_index_u32(u_input.c.x, 20u)])), u_input.c, vec3<f32>(global3[_wgslsmith_index_u32(0u, 20u)], 828f, -1191f), Struct_1(global0.yx, vec3<u32>(0u, 0u, 0u), u_input.a.xx, vec3<f32>(-1104f, 453f, 1000f), vec2<f32>(global3[_wgslsmith_index_u32(u_input.c.x, 20u)], global3[_wgslsmith_index_u32(u_input.c.x, 20u)])))), i32(-1i) * -59048i), Struct_3(global2.x, ~3283u, vec3<u32>(31873u, u_input.c.x, u_input.c.x) >> (vec3<u32>(u_input.c.x, 27974u, u_input.c.x) % vec3<u32>(32u)), true), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-464f, -1815f)), Struct_5(Struct_3(global2.x, u_input.c.x, vec3<u32>(7664u, 1u, u_input.c.x), global0.x), all(vec3<bool>(false, true, true)), vec3<u32>(u_input.c.x, 40389u, u_input.c.x) & vec3<u32>(39423u, 4294967295u, 17499u))), max(select(u_input.c.x, ~0u, false), _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.c.x, 1u, u_input.c.x), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c.x, 1u, u_input.c.x), vec3<u32>(18644u, 0u, 4294967295u)))), vec3<u32>(~41094u, _wgslsmith_div_u32(u_input.c.x, max(u_input.c.x, u_input.c.x)), ~u_input.c.x), u_input.c.x >= 1u), false, vec3<u32>(0u, _wgslsmith_mod_u32(u_input.c.x, _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(12088u, u_input.c.x), vec2<u32>(u_input.c.x, 43485u)), 4294967295u)), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x >> (u_input.c.x % 32u), ~4294967295u), vec2<u32>(u_input.c.x, u_input.c.x))));
    return global3[_wgslsmith_index_u32(countOneBits(1u) ^ var_1.a.b, 20u)];
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1564f, global3[_wgslsmith_index_u32(firstLeadingBit(~47024u), 20u)], global3[_wgslsmith_index_u32((0u >> (u_input.c.x % 32u)) << (_wgslsmith_clamp_u32(u_input.c.x, 4294967295u, u_input.c.x) % 32u), 20u)], global3[_wgslsmith_index_u32(u_input.c.x, 20u)])), -312f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(abs(-1142f))), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(global3[_wgslsmith_index_u32(u_input.c.x, 20u)], global3[_wgslsmith_index_u32(0u, 20u)])), _wgslsmith_f_op_f32(1000f * global3[_wgslsmith_index_u32(u_input.c.x, 20u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(u_input.c.x, 20u)] - 779f))), global3[_wgslsmith_index_u32(~(u_input.c.x ^ _wgslsmith_mod_u32(18877u, u_input.c.x)), 20u)]));
}

