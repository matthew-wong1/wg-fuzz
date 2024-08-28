struct Struct_1 {
    a: vec2<bool>,
    b: vec4<u32>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: vec4<bool>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec3<bool>,
    c: i32,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 21> = array<f32, 21>(-590f, -188f, 237f, -361f, -1283f, 398f, 732f, -1982f, 498f, -475f, 162f, 572f, -315f, -776f, 1031f, 145f, -1000f, -130f, 172f, -1009f, -2573f);

var<private> global1: vec4<u32> = vec4<u32>(43447u, 0u, 1u, 0u);

var<private> global2: array<vec3<i32>, 22>;

var<private> global3: Struct_2;

var<private> global4: i32 = 22406i;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: vec2<f32>) -> Struct_2 {
    global1 = ~firstLeadingBit(vec4<u32>(9768u, 70909u, _wgslsmith_dot_vec4_u32(global3.a.b, ~vec4<u32>(16438u, 4294967295u, 1u, global3.a.b.x)), ~1u));
    let var_0 = Struct_1(select(select(global3.d.yz, global3.a.a, select(select(global3.c.a, vec2<bool>(global3.c.a.x, true), vec2<bool>(false, global3.b)), vec2<bool>(false, global3.b), global3.b)), !vec2<bool>(global1.x == global3.c.b.x, true), vec2<bool>(any(global3.d.zwx) || true, global3.c.a.x)), abs(global3.c.b), any(!(!(!vec2<bool>(true, global3.c.c)))));
    global4 = ~u_input.b.x;
    global0 = array<f32, 21>();
    global3 = Struct_2(global3.c, global3.a.a.x, Struct_1(vec2<bool>(true, true), global3.c.b, !(!global3.c.a.x)), !(!vec4<bool>(var_0.a.x, global3.a.c, global3.b, global3.d.x)));
    return Struct_2(var_0, var_0.c, global3.a, !vec4<bool>(!all(global3.c.a), true, global3.a.c, global3.c.a.x | select(true, false, var_0.c)));
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: Struct_2) -> bool {
    global0 = array<f32, 21>();
    let var_0 = arg_2.a.b.x;
    var var_1 = select(global3.d.xxw, global3.d.ywz, arg_2.d.yzw);
    let var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(1264f)), _wgslsmith_f_op_f32(726f + _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(global3.a.b, vec4<u32>(global1.x, var_0, var_0, 6809u)), arg_2.c.b ^ arg_2.a.b), 21u)] * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(686f - -1747f), -887f, arg_2.b & var_1.x))))));
    global1 = ((global3.c.b | reverseBits(vec4<u32>(54542u, global1.x, 4294967295u, 4294967295u))) | min(func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, global0[_wgslsmith_index_u32(4294967295u, 21u)]))).a.b, vec4<u32>(arg_2.a.b.x, 1u, _wgslsmith_mult_u32(0u, 0u), max(global3.a.b.x, 1u)))) ^ arg_2.a.b;
    return any(func_2(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(ceil(1934f)), _wgslsmith_f_op_f32(step(923f, -278f))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(806f, -1099f)))))).d.wz);
}

fn func_1(arg_0: Struct_1) -> u32 {
    let var_0 = Struct_3(u_input.b.zzy, arg_0, Struct_1(!(!vec2<bool>(arg_0.a.x, global3.c.a.x)), arg_0.b, global3.c.c));
    var var_1 = !vec3<bool>(func_3(u_input.b.x, _wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(~arg_0.b.x, 21u)], _wgslsmith_f_op_f32(-194f + global0[_wgslsmith_index_u32(global3.c.b.x, 21u)]), global3.d.x)), func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2239f, global0[_wgslsmith_index_u32(arg_0.b.x, 21u)])))), true, true);
    return 22901u;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = Struct_2(Struct_1(vec2<bool>(!global3.d.x, true == !global3.b), ~vec4<u32>(21539u, func_1(global3.a), ~32365u, 0u), true), false, global3.a, vec4<bool>(global3.a.c, global3.a.a.x, any(global3.d.yzx), true));
    let var_0 = global3.a.a;
    global4 = _wgslsmith_clamp_i32(~(-abs(0i) | abs(u_input.a.x | 0i)), -18659i, _wgslsmith_mult_i32(_wgslsmith_mod_i32(-1i, -u_input.b.x), 0i));
    var var_1 = _wgslsmith_clamp_vec3_u32(global1.zxz, ~vec3<u32>(1u ^ global3.c.b.x, 4294967295u & (global3.a.b.x ^ global1.x), global1.x), reverseBits(countOneBits(select(~vec3<u32>(1u, 14971u, 0u), vec3<u32>(5518u, 4294967295u, global1.x), all(global3.c.a)))));
    var var_2 = var_0.x && !any(vec3<bool>(var_0.x, true, true));
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32(var_1.x, 21u)]);
}

