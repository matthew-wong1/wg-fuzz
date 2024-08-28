struct Struct_1 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: i32,
    d: vec4<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: u32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 1> = array<bool, 1>(true);

var<private> global1: array<vec2<i32>, 15> = array<vec2<i32>, 15>(vec2<i32>(65717i, 21525i), vec2<i32>(563i, 1i), vec2<i32>(-8975i, 2147483647i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(1i, 3927i), vec2<i32>(1692i, 0i), vec2<i32>(-1i, -1i), vec2<i32>(1i, 36739i), vec2<i32>(5276i, 0i), vec2<i32>(-36256i, 1i), vec2<i32>(-5674i, 2147483647i), vec2<i32>(2147483647i, 1i), vec2<i32>(0i, -31869i), vec2<i32>(1i, 28145i), vec2<i32>(207i, 47340i));

var<private> global2: vec4<f32> = vec4<f32>(-1371f, -767f, -953f, -218f);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec2<u32>) -> bool {
    let var_0 = ~select(u_input.c, u_input.b.x, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(abs(~u_input.a.x), ~arg_0.x), 1u)]);
    let var_1 = _wgslsmith_f_op_f32(-global2.x);
    global1 = array<vec2<i32>, 15>();
    let var_2 = ~reverseBits(abs(2147483647i));
    var var_3 = select(vec3<bool>(true, true, all(select(vec2<bool>(global0[_wgslsmith_index_u32(arg_0.x, 1u)], true), !vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 1u)], global0[_wgslsmith_index_u32(arg_0.x, 1u)]), !vec2<bool>(false, global0[_wgslsmith_index_u32(arg_0.x, 1u)])))), !select(vec3<bool>(any(vec3<bool>(false, true, global0[_wgslsmith_index_u32(u_input.a.x, 1u)])), false, all(vec2<bool>(global0[_wgslsmith_index_u32(1490u, 1u)], global0[_wgslsmith_index_u32(arg_0.x, 1u)]))), select(vec3<bool>(global0[_wgslsmith_index_u32(81118u, 1u)], true, global0[_wgslsmith_index_u32(u_input.a.x, 1u)]), select(vec3<bool>(true, global0[_wgslsmith_index_u32(0u, 1u)], global0[_wgslsmith_index_u32(0u, 1u)]), vec3<bool>(global0[_wgslsmith_index_u32(55824u, 1u)], global0[_wgslsmith_index_u32(arg_0.x, 1u)], true), true), select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 1u)], global0[_wgslsmith_index_u32(u_input.a.x, 1u)], false), vec3<bool>(true, global0[_wgslsmith_index_u32(arg_0.x, 1u)], true), vec3<bool>(true, true, true))), (-730f > global2.x) != !global0[_wgslsmith_index_u32(4294967295u, 1u)]), !global0[_wgslsmith_index_u32(40583u, 1u)]);
    return false;
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    global0 = array<bool, 1>();
    var var_0 = func_3(vec2<u32>(~u_input.a.x << (~arg_0 % 32u), _wgslsmith_sub_u32(_wgslsmith_add_u32(arg_0, arg_2.a.x), firstLeadingBit(1u)))) & false;
    global1 = array<vec2<i32>, 15>();
    global0 = array<bool, 1>();
    global1 = array<vec2<i32>, 15>();
    return Struct_1(arg_3.a);
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    var var_0 = Struct_1((_wgslsmith_add_vec3_u32(select(vec3<u32>(arg_0, 4294967295u, 1u), vec3<u32>(4294967295u, arg_1.a.x, 4294967295u), global0[_wgslsmith_index_u32(0u, 1u)]), arg_3.a & vec3<u32>(68252u, arg_0, arg_0)) | vec3<u32>(1u, _wgslsmith_clamp_u32(13491u, arg_3.a.x, 0u), firstTrailingBit(arg_0))) & firstLeadingBit(reverseBits(vec3<u32>(arg_3.a.x, arg_0, 46094u) & vec3<u32>(u_input.a.x, 44122u, arg_3.a.x))));
    let var_1 = Struct_1(vec3<u32>(arg_0, max(4209u, _wgslsmith_add_u32(arg_3.a.x << (23554u % 32u), ~var_0.a.x)), ~arg_1.a.x));
    let var_2 = all(select(!vec3<bool>(true, select(global0[_wgslsmith_index_u32(arg_0, 1u)], global0[_wgslsmith_index_u32(35512u, 1u)], true), true || global0[_wgslsmith_index_u32(1u, 1u)]), vec3<bool>(global0[_wgslsmith_index_u32(39642u, 1u)], any(!vec3<bool>(global0[_wgslsmith_index_u32(1u, 1u)], global0[_wgslsmith_index_u32(var_1.a.x, 1u)], global0[_wgslsmith_index_u32(var_0.a.x, 1u)])), false), !(!vec3<bool>(false, false, global0[_wgslsmith_index_u32(0u, 1u)]))));
    var var_3 = arg_3;
    let var_4 = vec3<f32>(_wgslsmith_f_op_f32(max(1640f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-848f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1000f, arg_2))) - _wgslsmith_div_f32(239f, _wgslsmith_f_op_f32(f32(-1f) * -178f))) + global2.x), _wgslsmith_f_op_f32(f32(-1f) * -212f));
    return var_1;
}

fn func_1(arg_0: vec3<u32>) -> u32 {
    let var_0 = func_4(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(57184u, u_input.a.x, u_input.a.x), _wgslsmith_dot_vec3_u32(vec3<u32>(14670u, 1u, arg_0.x), vec3<u32>(16039u, 6312u, u_input.a.x) ^ vec3<u32>(43911u, arg_0.x, arg_0.x)) | arg_0.x), func_2(min(~arg_0.x, arg_0.x) | ~arg_0.x, Struct_1(select(vec3<u32>(arg_0.x, arg_0.x, arg_0.x), vec3<u32>(u_input.a.x, 0u, arg_0.x), global0[_wgslsmith_index_u32(u_input.a.x, 1u)]) << (u_input.a.yyw % vec3<u32>(32u))), Struct_1(abs(vec3<u32>(arg_0.x, u_input.a.x, arg_0.x))), Struct_1(vec3<u32>(~u_input.a.x, _wgslsmith_mod_u32(u_input.a.x, 23081u), u_input.a.x))), global2.x, Struct_1(_wgslsmith_clamp_vec3_u32(arg_0, abs(~vec3<u32>(u_input.a.x, 4294967295u, 0u)), u_input.a.xzx)));
    global0 = array<bool, 1>();
    var var_1 = ~(~92044u);
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_u32(32802u, _wgslsmith_mod_u32(~_wgslsmith_mod_u32(u_input.a.x, 29410u), ~max(1u, abs(u_input.a.x))));
    let var_1 = ~vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(7948u, ~var_0), reverseBits(max(vec2<u32>(0u, 1u), u_input.a.yw))), func_1(vec3<u32>(~32135u, firstTrailingBit(u_input.a.x), ~var_0)), u_input.a.x);
    let var_2 = global2.x;
    let var_3 = 4294967295u;
    let var_4 = u_input.d.zzy;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d, _wgslsmith_mult_vec3_u32(~vec3<u32>(0u, _wgslsmith_sub_u32(4294967295u, 4294967295u), u_input.a.x), reverseBits(~select(vec3<u32>(var_0, 2810u, var_3), vec3<u32>(var_1.x, 51608u, 2305u), true))), ~reverseBits(~(39282u >> (var_3 % 32u))), u_input.a.x, ~u_input.d.x);
}

