struct Struct_1 {
    a: vec4<f32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<u32>,
    d: vec2<u32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 19> = array<f32, 19>(604f, 1638f, 151f, -738f, 472f, 2000f, 183f, 816f, -151f, -1798f, 707f, 218f, -628f, 387f, 102f, -892f, 288f, -1000f, -883f);

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1(arg_0: vec3<i32>) -> vec3<u32> {
    global0 = array<f32, 19>();
    global0 = array<f32, 19>();
    global0 = array<f32, 19>();
    global0 = array<f32, 19>();
    return select(u_input.b, _wgslsmith_sub_vec3_u32(u_input.b << (vec3<u32>(1u << (u_input.c.x % 32u), u_input.c.x, _wgslsmith_div_u32(1u, u_input.b.x)) % vec3<u32>(32u)), countOneBits(~vec3<u32>(u_input.b.x, 1u, u_input.b.x))), select(vec3<bool>(true, true, true), !vec3<bool>(any(vec4<bool>(true, true, false, true)), true, true), vec3<bool>(true, true, true)));
}

fn func_3() -> bool {
    let var_0 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 19u)]), 1176f, u_input.c.x <= 67914u)), -1000f), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0[_wgslsmith_index_u32(1u, 19u)], _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(69880u, 19u)])), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(global0[_wgslsmith_index_u32(1u, 19u)], -704f), vec2<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 19u)], -1000f))), true || (u_input.a != -8077i))), !(~u_input.c.x != countOneBits(u_input.b.x))))));
    global0 = array<f32, 19>();
    var var_1 = u_input.b.x >> (abs(u_input.c.x) % 32u);
    let var_2 = -1i >= u_input.a;
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-825f, global0[_wgslsmith_index_u32(u_input.c.x, 19u)], -177f, global0[_wgslsmith_index_u32(4294967295u, 19u)]))) + _wgslsmith_div_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(48429u, 19u)], -1352f, 833f, var_0.x), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-981f, -182f, var_0.x, global0[_wgslsmith_index_u32(1u, 19u)]))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-326f, 2497f, 250f, -2163f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(997f, global0[_wgslsmith_index_u32(1u, 19u)], global0[_wgslsmith_index_u32(4294967295u, 19u)], -387f)))), 58350u);
    return any(vec4<bool>(true, var_2, true && (-253f == var_3.a.x), var_2)) || false;
}

fn func_2(arg_0: bool, arg_1: vec3<u32>) -> Struct_3 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(215f, global0[_wgslsmith_index_u32(arg_1.x, 19u)], global0[_wgslsmith_index_u32(5971u, 19u)], -1000f) - vec4<f32>(global0[_wgslsmith_index_u32(arg_1.x, 19u)], global0[_wgslsmith_index_u32(arg_1.x, 19u)], global0[_wgslsmith_index_u32(44991u, 19u)], -958f)) + vec4<f32>(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(arg_1.x, 4294967295u), 19u)], _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(arg_1.x, 19u)] * 618f), _wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(14868u, 19u)])), _wgslsmith_f_op_f32(select(-1282f, -1968f, false)))), u_input.b.x), _wgslsmith_sub_i32(_wgslsmith_div_i32(i32(-1i) * -35685i, u_input.a), _wgslsmith_sub_i32(u_input.a, u_input.a)));
    var var_1 = !select(vec3<bool>(arg_0, arg_0, all(!vec4<bool>(arg_0, arg_0, false, false))), select(select(select(vec3<bool>(true, false, arg_0), vec3<bool>(false, false, arg_0), vec3<bool>(false, false, true)), vec3<bool>(arg_0, false, false), false), select(vec3<bool>(false, false, arg_0), select(vec3<bool>(arg_0, false, true), vec3<bool>(arg_0, false, arg_0), true), func_3()), true), !(!(!vec3<bool>(false, arg_0, false))));
    let var_2 = ~(~(var_0.b >> ((_wgslsmith_sub_u32(var_0.a.b, var_0.a.b) >> (48918u % 32u)) % 32u)));
    let var_3 = var_0;
    var var_4 = Struct_3(var_1.yy);
    return Struct_3(!(!var_4.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(2911u);
    var var_1 = u_input.a;
    var_1 = ~(_wgslsmith_mod_i32(-1i >> (_wgslsmith_mod_u32(50729u, u_input.c.x) % 32u), ~(-2147483647i)) >> (_wgslsmith_mod_u32(abs(var_0), _wgslsmith_mult_u32(4294967295u, ~var_0)) % 32u));
    var var_2 = Struct_3(vec2<bool>(select(true, true, any(select(vec2<bool>(true, false), vec2<bool>(true, true), true))), any(vec3<bool>(true, any(vec4<bool>(true, true, false, false)), true))));
    var_1 = 0i;
    var_2 = func_2(var_2.a.x, func_1(-(~(~vec3<i32>(u_input.a, u_input.a, -45562i)))));
    var_2 = Struct_3(select(var_2.a, vec2<bool>(true, true), var_2.a.x | (true | var_2.a.x)));
    var_1 = -firstLeadingBit(-4756i);
    var var_3 = -countOneBits(-(~_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, -46654i, u_input.a, u_input.a), vec4<i32>(-24393i, 2147483647i, -2147483647i, u_input.a), vec4<i32>(-1i, u_input.a, u_input.a, u_input.a))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_u32(~u_input.b, vec3<u32>(u_input.c.x, 36890u, u_input.c.x)), 57398i, firstLeadingBit(select(~(~vec4<u32>(3892u, var_0, 1619u, 0u)), vec4<u32>(var_0 | 4294967295u, ~var_0, ~u_input.b.x, ~0u), !vec4<bool>(true, var_2.a.x, true, false))), countOneBits(u_input.b.yz) | ~_wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(var_0, var_0), u_input.b.zx), _wgslsmith_clamp_vec2_u32(vec2<u32>(var_0, 723u), vec2<u32>(24061u, 1001u), u_input.b.yy)), reverseBits(max(firstLeadingBit(-vec4<i32>(var_3.x, var_3.x, u_input.a, var_3.x)), firstTrailingBit(abs(vec4<i32>(-8694i, -29672i, u_input.a, 1i))))));
}

