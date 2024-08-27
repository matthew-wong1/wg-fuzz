struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: bool,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec2<f32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(24421i, -1i, 2147483647i);

var<private> global1: array<Struct_1, 7>;

var<private> global2: f32 = -1180f;

var<private> global3: bool = false;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> f32 {
    var var_0 = global1[_wgslsmith_index_u32(~1u, 7u)];
    let var_1 = ~abs(u_input.c.wxy);
    global3 = !any(!vec4<bool>(select(true, var_0.c, var_0.c), !arg_1.c, -1i <= global0.x, true));
    global2 = 749f;
    global0 = u_input.c.zyy << (u_input.b % vec3<u32>(32u));
    return arg_1.a;
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: f32) -> f32 {
    let var_0 = max(global0.x >> (~65308u % 32u), countOneBits(-13102i) ^ ~u_input.a);
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(36185u, global1[_wgslsmith_index_u32(reverseBits(_wgslsmith_dot_vec2_u32(~u_input.b.xy, u_input.b.zz | u_input.b.xy)), 7u)])) + arg_2);
    var var_1 = Struct_1(-854f, ~(~firstLeadingBit(vec2<u32>(4294967295u, 0u))) << (_wgslsmith_div_vec2_u32(~abs(u_input.b.xx), vec2<u32>(u_input.b.x, ~u_input.b.x)) % vec2<u32>(32u)), true, vec2<u32>(reverseBits(arg_0), max(4294967295u, arg_0)));
    var var_2 = -523f;
    let var_3 = _wgslsmith_dot_vec3_i32(vec3<i32>(0i, -3249i, global0.x), abs(-max(u_input.c.wxz, u_input.c.xxz))) >> (arg_0 % 32u);
    return _wgslsmith_f_op_f32(f32(-1f) * -202f);
}

fn func_1() -> Struct_1 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_2(u_input.b.x, false, 446f)), 543f)) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-361f * 727f), _wgslsmith_f_op_f32(1189f * 1000f), false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -161f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(494f * -1264f))) * -1552f), _wgslsmith_f_op_f32(sign(1000f)));
    return global1[_wgslsmith_index_u32(u_input.b.x, 7u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = u_input.c.xx;
    let var_2 = _wgslsmith_f_op_f32(var_0.a + -386f);
    let var_3 = var_1.x;
    let var_4 = u_input.c;
    let var_5 = !(!vec2<bool>(false, _wgslsmith_clamp_i32(global0.x, -2732i, var_4.x) < 2147483647i));
    global3 = true && func_1().c;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>((u_input.b.x | ~var_0.d.x) ^ u_input.b.x, 4294967295u, var_0.d.x, 52472u), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-407f - _wgslsmith_f_op_f32(abs(1162f)))))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_2, _wgslsmith_f_op_f32(-var_2)))), -192f, 2496i);
}

