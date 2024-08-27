struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: f32,
    d: vec3<bool>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 28> = array<f32, 28>(-1383f, 786f, 1406f, 1000f, 345f, 669f, 1220f, -325f, 2059f, 550f, 1000f, 694f, -195f, 1464f, 612f, 663f, 650f, -245f, -500f, 1538f, 237f, 415f, -419f, 240f, -1523f, -1323f, -1578f, -268f);

var<private> global1: array<Struct_1, 23>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<f32>, arg_1: vec2<i32>, arg_2: vec2<bool>) -> f32 {
    global0 = array<f32, 28>();
    var var_0 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-125f, _wgslsmith_div_f32(arg_0.x, arg_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(arg_0.x))))), 230f)));
    var_0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, var_0.x, 157f) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_0.x, -1000f, -1175f), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1960f, global0[_wgslsmith_index_u32(66281u, 28u)], -447f))))))))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1670f)), 664f)))), _wgslsmith_div_vec4_u32(~(~select(vec4<u32>(0u, 35541u, 0u, u_input.b), vec4<u32>(0u, 1u, u_input.b, u_input.b), false)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.b, 0u) >> (vec4<u32>(59835u, 1021u, 13102u, 4294967295u) % vec4<u32>(32u)), vec4<u32>(0u, u_input.b, 4294967295u, u_input.b)) | (countOneBits(vec4<u32>(1u, u_input.b, u_input.b, u_input.b)) ^ ~vec4<u32>(u_input.b, 0u, 13784u, u_input.b))), _wgslsmith_f_op_f32(max(arg_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), -1578f))), select(!(!select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), true)), vec3<bool>(!(!arg_2.x), true, any(vec2<bool>(arg_2.x, true)) && true), vec3<bool>(all(!arg_2), arg_2.x, true)), vec2<i32>(-1i) * -select(arg_1, firstTrailingBit(u_input.a), select(true, true, arg_2.x)));
    let var_2 = vec4<bool>(true, true, arg_2.x, var_1.b.x <= 6109u);
    return -717f;
}

fn func_2(arg_0: vec2<bool>) -> vec3<bool> {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec2<f32>(global0[_wgslsmith_index_u32(u_input.b, 28u)], -110f), u_input.a, vec2<bool>(true, arg_0.x))) * global0[_wgslsmith_index_u32(u_input.b, 28u)]))), ~(~vec4<u32>(11216u, u_input.b, u_input.b, u_input.b)), global0[_wgslsmith_index_u32(0u, 28u)], select(vec3<bool>(select(false, false, arg_0.x), arg_0.x, arg_0.x && false), select(select(vec3<bool>(arg_0.x, true, arg_0.x), vec3<bool>(true, false, arg_0.x), true), !vec3<bool>(true, arg_0.x, true), false), any(vec2<bool>(arg_0.x, true))), max(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), u_input.a) >> ((vec2<u32>(u_input.b, 4294967295u) | vec2<u32>(13129u, 3386u)) % vec2<u32>(32u)), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a.x, 1i) & u_input.a, u_input.a))));
    var var_1 = var_0;
    global0 = array<f32, 28>();
    var var_2 = Struct_2(Struct_1(-404f, _wgslsmith_sub_vec4_u32(var_0.a.b, firstLeadingBit(vec4<u32>(u_input.b, var_0.a.b.x, 4294967295u, var_0.a.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(4294967295u, 28u)], _wgslsmith_f_op_f32(step(var_0.a.c, var_1.a.c))))), vec3<bool>(true, true, true), ~(-u_input.a) | select(vec2<i32>(u_input.a.x, var_1.a.e.x) | vec2<i32>(-1i, var_1.a.e.x), vec2<i32>(u_input.a.x, -48624i), vec2<bool>(var_0.a.d.x, true))));
    var var_3 = var_2.a;
    return !(!vec3<bool>(!(var_3.a != 754f), false, any(var_3.d.yz)));
}

fn func_1(arg_0: vec3<f32>, arg_1: bool) -> i32 {
    global1 = array<Struct_1, 23>();
    let var_0 = (_wgslsmith_sub_i32(~u_input.a.x, -13034i) << (_wgslsmith_sub_u32(reverseBits(u_input.b) << (u_input.b % 32u), ~(~u_input.b)) % 32u)) & -16890i;
    global1 = array<Struct_1, 23>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1050f - 1502f) * arg_0.x))));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(max(1225f, 1377f)), vec4<u32>(u_input.b, 30115u, 102510u, max(u_input.b ^ u_input.b, u_input.b) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(50886u, u_input.b) >> (vec2<u32>(27082u, u_input.b) % vec2<u32>(32u)), abs(vec2<u32>(4294967295u, 4196u))) % 32u)), _wgslsmith_f_op_f32(var_1 - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 - var_1) - arg_0.x) - 1f)), select(!select(select(vec3<bool>(arg_1, false, arg_1), vec3<bool>(true, arg_1, arg_1), false), func_2(vec2<bool>(arg_1, arg_1)), vec3<bool>(arg_1, arg_1, arg_1)), vec3<bool>(true, ~var_0 != (var_0 << (1u % 32u)), arg_1), arg_1 | !(arg_1 || arg_1)), _wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(u_input.a, u_input.a), (_wgslsmith_div_vec2_i32(u_input.a, vec2<i32>(0i, 48036i)) ^ u_input.a) >> (~select(vec2<u32>(u_input.b, 26135u), vec2<u32>(u_input.b, u_input.b), false) % vec2<u32>(32u))));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(firstLeadingBit(-13500i), u_input.a.x, _wgslsmith_mod_i32(u_input.a.x, u_input.a.x), u_input.a.x);
    let var_1 = Struct_2(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(0u, u_input.b, 0u, u_input.b)), ~_wgslsmith_add_vec4_u32(vec4<u32>(1131u, u_input.b, 1u, u_input.b), vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b))), 4294967295u), 23u)]);
    var var_2 = Struct_1(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~firstLeadingBit(var_1.a.b.x & 14875u), 28u)] * var_1.a.a), var_1.a.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-171f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(29531u, 28u)] + global0[_wgslsmith_index_u32(14005u, 28u)]))) + _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(1u, 28u)], 658f))) * _wgslsmith_f_op_f32(-var_1.a.a)), var_1.a.d, u_input.a);
    var var_3 = _wgslsmith_clamp_i32(var_2.e.x & ~countOneBits(-var_2.e.x), ~(u_input.a.x ^ func_1(vec3<f32>(var_1.a.a, -222f, var_2.c), var_1.a.d.x | true)), 2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(~(-var_2.e.x), _wgslsmith_div_i32(var_0.x >> (1u % 32u), i32(-1i) * -19473i), 1i, ~_wgslsmith_div_i32(var_1.a.e.x, var_2.e.x) ^ -5287i), var_2.b.yxx, select(var_1.a.b, vec4<u32>(u_input.b, ~1u, max(var_1.a.b.x, 7395u), 1u), vec4<bool>(false, any(vec4<bool>(var_2.d.x, var_2.d.x, var_2.d.x, true)), -1i <= var_1.a.e.x, !var_1.a.d.x)) ^ _wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(var_2.b, _wgslsmith_sub_vec4_u32(var_2.b, var_2.b)), ~firstLeadingBit(var_2.b)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(939f, global0[_wgslsmith_index_u32(var_2.b.x, 28u)]), vec2<f32>(var_2.c, -843f), vec2<bool>(var_2.d.x, true))) - vec2<f32>(-1850f, var_2.a))))));
}

