struct Struct_1 {
    a: vec2<f32>,
    b: vec2<f32>,
    c: vec4<i32>,
    d: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: bool,
}

struct Struct_3 {
    a: vec3<f32>,
    b: u32,
    c: Struct_1,
    d: vec2<i32>,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 4>;

var<private> global1: array<vec3<i32>, 6> = array<vec3<i32>, 6>(vec3<i32>(3124i, 0i, 0i), vec3<i32>(i32(-2147483648), i32(-2147483648), 2147483647i), vec3<i32>(43644i, -22874i, -28886i), vec3<i32>(3699i, 2147483647i, 9721i), vec3<i32>(i32(-2147483648), i32(-2147483648), -1i), vec3<i32>(32672i, 17855i, -1i));

var<private> global2: array<bool, 19> = array<bool, 19>(true, false, false, false, true, true, true, true, true, true, false, false, false, true, true, true, true, true, true);

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2() -> u32 {
    let var_0 = _wgslsmith_clamp_vec2_u32(u_input.b.xz, ~vec2<u32>(u_input.b.x, ~_wgslsmith_sub_u32(u_input.b.x, u_input.b.x)), ~(~(~(vec2<u32>(1u, u_input.b.x) | u_input.b.yz))));
    let var_1 = !global2[_wgslsmith_index_u32(0u, 19u)];
    var var_2 = 0u;
    var_2 = 3154u;
    var var_3 = var_1;
    return ~u_input.b.x;
}

fn func_3(arg_0: f32, arg_1: vec2<bool>, arg_2: bool, arg_3: vec3<u32>) -> u32 {
    global0 = array<Struct_2, 4>();
    global0 = array<Struct_2, 4>();
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_0, 235f)))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_0, arg_0), vec2<f32>(901f, arg_0))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0)))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, arg_0) * vec2<f32>(-1000f, 836f)), vec2<f32>(-696f, arg_0))))), true)), vec2<f32>(_wgslsmith_f_op_f32(-982f + 789f), arg_0), ~_wgslsmith_mod_vec4_i32(firstLeadingBit(vec4<i32>(u_input.a.x, -35735i, -53623i, 20419i) >> (vec4<u32>(0u, 0u, arg_3.x, 4294967295u) % vec4<u32>(32u))), firstTrailingBit(vec4<i32>(u_input.a.x, -44070i, u_input.a.x, -44830i)) << (vec4<u32>(arg_3.x, u_input.b.x, u_input.b.x, 83539u) % vec4<u32>(32u))), u_input.a.x);
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1126f - var_0.b.x))), arg_0) * var_0.a), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(min(var_0.b.x, -1000f)), _wgslsmith_f_op_f32(round(688f))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-2077f, 366f))))) - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-var_0.a)))), -abs(firstTrailingBit(vec4<i32>(-741i, var_0.d, var_0.d, -2147483647i) | vec4<i32>(var_0.c.x, u_input.a.x, u_input.a.x, var_0.d))), -countOneBits(abs(u_input.a.x)));
    let var_2 = arg_3;
    return var_2.x;
}

fn func_1() -> Struct_3 {
    let var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1105f + 778f), _wgslsmith_f_op_f32(-240f - 1137f), _wgslsmith_f_op_f32(max(-1410f, 332f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-771f, 203f, 883f), _wgslsmith_f_op_vec3_f32(vec3<f32>(423f, -377f, 429f) + vec3<f32>(1589f, -860f, 285f)), all(vec3<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 19u)], global2[_wgslsmith_index_u32(0u, 19u)], global2[_wgslsmith_index_u32(u_input.b.x, 19u)])))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 912f, 133f)))))), _wgslsmith_sub_u32(_wgslsmith_clamp_u32(func_2(), ~(~0u), 4294967295u), u_input.b.x), Struct_1(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1020f, -915f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-361f, -1729f), vec2<f32>(471f, 302f)))), -(~(-vec4<i32>(72211i, -2147483647i, u_input.a.x, u_input.a.x))), u_input.a.x | -36386i), u_input.a ^ _wgslsmith_mod_vec2_i32(-u_input.a, abs(u_input.a) >> (u_input.b.zz % vec2<u32>(32u))), vec4<u32>(func_3(1365f, vec2<bool>(true, true), !select(global2[_wgslsmith_index_u32(64497u, 19u)], global2[_wgslsmith_index_u32(1u, 19u)], global2[_wgslsmith_index_u32(u_input.b.x, 19u)]), _wgslsmith_sub_vec3_u32(u_input.b.xzx << (vec3<u32>(0u, u_input.b.x, 58093u) % vec3<u32>(32u)), u_input.b.zyx ^ u_input.b.xxz)), 1u, 0u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, u_input.b.x, u_input.b.x), ~u_input.b)));
    var var_1 = _wgslsmith_div_i32(var_0.d.x, -29049i);
    global0 = array<Struct_2, 4>();
    global2 = array<bool, 19>();
    var_1 = _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(-reverseBits(global1[_wgslsmith_index_u32(1u, 6u)]), countOneBits(var_0.c.c.yxw) | (vec3<i32>(var_0.d.x, var_0.c.c.x, u_input.a.x) >> (u_input.b.yzy % vec3<u32>(32u))), -var_0.c.c.yww) | firstTrailingBit(vec3<i32>(countOneBits(0i), select(19961i, 0i, true), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, var_0.d.x), u_input.a))), global1[_wgslsmith_index_u32(var_0.e.x, 6u)]);
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = vec3<i32>(-45482i, firstTrailingBit(u_input.a.x), _wgslsmith_div_i32(u_input.a.x, ~(i32(-1i) * -18391i))) | var_0.c.c.xyx;
    global2 = array<bool, 19>();
    var var_2 = global0[_wgslsmith_index_u32(~var_0.e.x, 4u)];
    global1 = array<vec3<i32>, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a);
}

