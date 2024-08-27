struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: i32,
    b: vec3<f32>,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<i32>,
}

struct Struct_5 {
    a: i32,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(-29634i, vec2<u32>(12200u, 0u));

var<private> global1: array<f32, 32> = array<f32, 32>(-152f, 759f, -340f, -1378f, -384f, -1334f, 285f, -633f, -813f, -331f, 1000f, -732f, -1729f, 536f, 907f, 591f, 492f, -643f, -512f, 836f, 1000f, 902f, -1000f, -802f, -705f, -1310f, -341f, -239f, -616f, -1800f, 866f, 910f);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<bool>, arg_1: f32, arg_2: Struct_4, arg_3: u32) -> i32 {
    global1 = array<f32, 32>();
    return u_input.a;
}

fn func_2() -> vec3<f32> {
    let var_0 = Struct_2(-reverseBits(func_3(vec2<bool>(false, true), _wgslsmith_f_op_f32(select(223f, 914f, false)), Struct_4(Struct_1(global1[_wgslsmith_index_u32(4294967295u, 32u)]), vec2<i32>(0i, 41101i)), countOneBits(global0.b.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-496f, -278f, global1[_wgslsmith_index_u32(0u, 32u)]))))))), _wgslsmith_f_op_f32(sign(-459f)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(global0.b.x, 32u)]))) * -749f)));
    var var_1 = min(global0.b.x, ~19108u) << (((firstTrailingBit(36272u) & 78472u) & 4294967295u) % 32u);
    global0 = Struct_5(global0.a, ~vec2<u32>(1u, firstLeadingBit(global0.b.x) | global0.b.x));
    let var_2 = var_0;
    global1 = array<f32, 32>();
    return vec3<f32>(var_2.d.a, var_2.c, _wgslsmith_f_op_f32(-262f - _wgslsmith_f_op_f32(exp2(var_2.d.a))));
}

fn func_1(arg_0: vec3<bool>, arg_1: f32, arg_2: Struct_5, arg_3: vec3<i32>) -> bool {
    let var_0 = Struct_1(1608f);
    let var_1 = _wgslsmith_add_i32(1i, arg_2.a);
    let var_2 = _wgslsmith_f_op_vec3_f32(func_2());
    let var_3 = 4294967295u;
    global1 = array<f32, 32>();
    return arg_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_5(~u_input.a, ~abs(firstTrailingBit(vec2<u32>(1u, global0.b.x) ^ global0.b)));
    var var_0 = select(!(!all(vec4<bool>(true, false, true, false))), _wgslsmith_mod_u32(1u, _wgslsmith_sub_u32(4294967295u, global0.b.x) << (select(global0.b.x, global0.b.x, false) % 32u)) >= global0.b.x, !(func_1(vec3<bool>(false, false, true), global1[_wgslsmith_index_u32(31161u, 32u)], Struct_5(-1i, vec2<u32>(4294967295u, 4294967295u)), vec3<i32>(0i, u_input.a, global0.a)) && true) || true);
    var var_1 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-404f, global1[_wgslsmith_index_u32(global0.b.x, 32u)], 1307f, _wgslsmith_f_op_f32(step(-1269f, 1f)))))));
    global0 = Struct_5(select(1i, global0.a, any(vec3<bool>(true, true, true))), ~min(vec2<u32>(1u, 4294967295u), _wgslsmith_mod_vec2_u32(global0.b, global0.b)) | vec2<u32>(40930u, firstLeadingBit(1u)));
    var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(0u, 32u)], var_1.x, -508f, 1097f) * vec4<f32>(670f, var_1.x, 758f, global1[_wgslsmith_index_u32(1u, 32u)])))), _wgslsmith_div_vec4_f32(vec4<f32>(-483f, _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 32u)]), _wgslsmith_div_f32(359f, global1[_wgslsmith_index_u32(8229u, 32u)])), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 32u)], -518f, 199f, global1[_wgslsmith_index_u32(global0.b.x, 32u)]) * vec4<f32>(-193f, global1[_wgslsmith_index_u32(global0.b.x, 32u)], -180f, var_1.x)) * vec4<f32>(var_1.x, -598f, var_1.x, global1[_wgslsmith_index_u32(global0.b.x, 32u)]))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(global0.b.x, 32u)], var_1.x, 173f, var_1.x) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1.x, var_1.x, -1231f, 961f), vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x)))) + vec4<f32>(global1[_wgslsmith_index_u32(firstTrailingBit(global0.b.x), 32u)], -715f, _wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(4294967295u, 32u)], global1[_wgslsmith_index_u32(17911u, 32u)])), -665f))));
    global1 = array<f32, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(106000u, global0.b.x, firstTrailingBit(0u), 86915u)), countOneBits(~countOneBits(vec4<u32>(0u, 0u, global0.b.x, 4294967295u)))));
}

