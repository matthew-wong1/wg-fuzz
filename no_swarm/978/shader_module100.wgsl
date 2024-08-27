struct Struct_1 {
    a: f32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec3<bool>,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
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

var<private> global0: array<i32, 8>;

var<private> global1: array<u32, 13>;

var<private> global2: array<vec3<f32>, 15>;

var<private> global3: vec3<u32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3() -> vec4<u32> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-296f, 1000f) + 2359f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(622f, -1403f))))), select(reverseBits(_wgslsmith_add_vec4_u32(select(vec4<u32>(0u, 27537u, 36659u, global1[_wgslsmith_index_u32(0u, 13u)]), vec4<u32>(5272u, 7477u, 0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global3.x, 13u)], 13u)]), false), vec4<u32>(global3.x, 17008u, 73010u, global1[_wgslsmith_index_u32(1u, 13u)]) << (vec4<u32>(global1[_wgslsmith_index_u32(0u, 13u)], 56452u, global1[_wgslsmith_index_u32(29362u, 13u)], 1u) % vec4<u32>(32u)))), abs((vec4<u32>(global1[_wgslsmith_index_u32(global3.x, 13u)], global3.x, global3.x, global1[_wgslsmith_index_u32(4294967295u, 13u)]) >> (vec4<u32>(43186u, global3.x, 1u, global1[_wgslsmith_index_u32(23649u, 13u)]) % vec4<u32>(32u))) << (vec4<u32>(0u, 1u, 0u, global1[_wgslsmith_index_u32(17287u, 13u)]) % vec4<u32>(32u))), true));
    let var_1 = var_0;
    global2 = array<vec3<f32>, 15>();
    global1 = array<u32, 13>();
    global0 = array<i32, 8>();
    return var_0.b;
}

fn func_2() -> bool {
    var var_0 = vec3<u32>(4294967295u, _wgslsmith_dot_vec4_u32(func_3(), _wgslsmith_sub_vec4_u32(~vec4<u32>(0u, 4294967295u, 0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(28723u, 13u)], 13u)]), vec4<u32>(1u, 45322u, global1[_wgslsmith_index_u32(global3.x, 13u)], 11904u))) | 1u, _wgslsmith_add_u32(0u, abs(global3.x)));
    let var_1 = -11088i;
    let var_2 = any(select(vec2<bool>(select(true, all(vec4<bool>(true, false, false, false)), any(vec3<bool>(false, true, false))), select(false, true, any(vec2<bool>(true, false)))), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(var_0.x > global1[_wgslsmith_index_u32(global3.x, 13u)], all(vec3<bool>(true, false, false))), vec2<bool>(any(vec4<bool>(false, true, false, false)), false))));
    global3 = abs(firstLeadingBit(select(vec3<u32>(81946u, ~0u, _wgslsmith_mult_u32(32506u, global3.x)), ~func_3().xyx, ~4294967295u >= _wgslsmith_mod_u32(24292u, global3.x))));
    global1 = array<u32, 13>();
    return all(select(select(vec3<bool>(true, true, var_2), vec3<bool>(!var_2, select(var_2, var_2, true), !var_2), true), select(vec3<bool>(!var_2, false, all(vec4<bool>(false, var_2, var_2, false))), select(vec3<bool>(false, true, var_2), vec3<bool>(var_2, var_2, var_2), vec3<bool>(false, var_2, var_2)), var_2), vec3<bool>(var_2, all(!vec3<bool>(true, var_2, var_2)), !any(vec3<bool>(true, false, false)))));
}

fn func_1() -> Struct_2 {
    var var_0 = !vec2<bool>(select(all(vec2<bool>(true, true)), false, _wgslsmith_mod_u32(global3.x, global1[_wgslsmith_index_u32(1u, 13u)]) > 36748u), !(!any(vec3<bool>(true, true, false))));
    var var_1 = max(max(reverseBits(u_input.a.wx), -_wgslsmith_clamp_vec2_i32(~u_input.a.xz, -vec2<i32>(global0[_wgslsmith_index_u32(global3.x, 8u)], 32017i), -vec2<i32>(u_input.a.x, 0i))), select(vec2<i32>(1i, 1i), -(abs(u_input.a.yw) << ((global3.yy | vec2<u32>(0u, global1[_wgslsmith_index_u32(0u, 13u)])) % vec2<u32>(32u))), vec2<bool>(~1u <= _wgslsmith_dot_vec4_u32(vec4<u32>(50890u, 4294967295u, 77610u, 74012u), vec4<u32>(1u, 60617u, 1u, global3.x)), true)));
    global2 = array<vec3<f32>, 15>();
    global0 = array<i32, 8>();
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1132f - -1000f));
    return Struct_2(vec4<bool>(!all(!vec3<bool>(false, var_0.x, var_0.x)), select(true, ~4294967295u == reverseBits(global1[_wgslsmith_index_u32(global3.x, 13u)]), var_0.x), func_2() || true, var_0.x), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-873f * _wgslsmith_f_op_f32(f32(-1f) * -119f))), vec4<u32>(~_wgslsmith_clamp_u32(43725u, global3.x, 1u), min(min(global1[_wgslsmith_index_u32(global3.x, 13u)], 4294967295u), 0u), reverseBits(global3.x), ~global3.x)), !(!select(select(vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(false, false, false), true), vec3<bool>(true, true, true), false)), Struct_1(-228f, _wgslsmith_sub_vec4_u32(~max(vec4<u32>(global3.x, global3.x, global1[_wgslsmith_index_u32(global3.x, 13u)], 1u), vec4<u32>(42645u, global1[_wgslsmith_index_u32(20617u, 13u)], global3.x, global1[_wgslsmith_index_u32(6112u, 13u)])), _wgslsmith_div_vec4_u32(vec4<u32>(global3.x, global3.x, 0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 13u)], 13u)]), ~vec4<u32>(global3.x, global3.x, global3.x, 0u)))), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -2798f), vec4<u32>(global1[_wgslsmith_index_u32(abs(global1[_wgslsmith_index_u32(1u, 13u)]), 13u)], 0u, ~260u, 1u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(44943u);
}

