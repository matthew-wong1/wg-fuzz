struct Struct_1 {
    a: i32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(-7825i, 6173i, 1i);

var<private> global1: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(-17205i, vec4<bool>(true, true, false, true)), Struct_1(1i, vec4<bool>(true, false, true, true)), Struct_1(46910i, vec4<bool>(false, false, true, true)), Struct_1(1i, vec4<bool>(false, true, true, true)), Struct_1(55233i, vec4<bool>(false, false, true, false)), Struct_1(2147483647i, vec4<bool>(true, false, true, true)), Struct_1(-1i, vec4<bool>(false, false, true, false)), Struct_1(-43560i, vec4<bool>(true, false, false, false)), Struct_1(-32184i, vec4<bool>(true, true, false, false)), Struct_1(-24881i, vec4<bool>(false, true, true, false)), Struct_1(-40032i, vec4<bool>(true, false, false, false)), Struct_1(24668i, vec4<bool>(true, false, false, true)), Struct_1(-42787i, vec4<bool>(false, true, true, false)), Struct_1(-68039i, vec4<bool>(false, true, false, false)), Struct_1(-14414i, vec4<bool>(true, false, true, false)), Struct_1(2147483647i, vec4<bool>(false, false, true, true)), Struct_1(4374i, vec4<bool>(true, false, true, false)), Struct_1(2147483647i, vec4<bool>(true, true, true, false)), Struct_1(-1i, vec4<bool>(true, true, false, false)), Struct_1(2147483647i, vec4<bool>(true, false, true, true)), Struct_1(i32(-2147483648), vec4<bool>(true, false, true, true)), Struct_1(i32(-2147483648), vec4<bool>(true, false, true, true)), Struct_1(-13275i, vec4<bool>(false, true, true, true)), Struct_1(i32(-2147483648), vec4<bool>(true, false, false, false)), Struct_1(i32(-2147483648), vec4<bool>(true, false, false, false)), Struct_1(0i, vec4<bool>(false, false, true, true)), Struct_1(2147483647i, vec4<bool>(true, true, false, false)), Struct_1(2147483647i, vec4<bool>(false, false, false, true)), Struct_1(47416i, vec4<bool>(false, true, false, true)), Struct_1(-22457i, vec4<bool>(false, false, true, true)), Struct_1(1247i, vec4<bool>(false, true, false, false)), Struct_1(0i, vec4<bool>(false, false, true, true)));

var<private> global2: array<u32, 24> = array<u32, 24>(1u, 32076u, 1u, 78551u, 4294967295u, 60683u, 0u, 1u, 33124u, 19658u, 4294967295u, 200u, 0u, 4294967295u, 0u, 22084u, 4294967295u, 1394u, 11057u, 34203u, 68948u, 17133u, 3011u, 65325u);

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: Struct_1) -> u32 {
    global0 = firstTrailingBit(_wgslsmith_mod_vec3_i32(select(_wgslsmith_mult_vec3_i32(vec3<i32>(-75027i, 1i, global0.x), vec3<i32>(arg_0.a, 2147483647i, global0.x)), vec3<i32>(global0.x, 57666i >> (u_input.a % 32u), max(global0.x, 2147483647i)), vec3<bool>(true, true, true)), vec3<i32>(reverseBits(arg_0.a), arg_0.a, _wgslsmith_mod_i32(arg_0.a, arg_0.a))));
    global2 = array<u32, 24>();
    return ~(abs(~global2[_wgslsmith_index_u32(121611u, 24u)]) & 4294967295u);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: i32) -> u32 {
    return ~u_input.a;
}

fn func_2() -> Struct_2 {
    global1 = array<Struct_1, 32>();
    let var_0 = _wgslsmith_add_vec3_u32(vec3<u32>(69299u, ~global2[_wgslsmith_index_u32(func_3(Struct_1(global0.x, vec4<bool>(true, true, true, true)), Struct_2(vec4<f32>(163f, -1280f, -483f, 465f), 728f, Struct_1(-2147483647i, vec4<bool>(true, false, false, false))), global0.x), 24u)], global2[_wgslsmith_index_u32(~(~4294967295u), 24u)]) >> (vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 23416u), vec2<u32>(32129u, global2[_wgslsmith_index_u32(1u, 24u)])), ~_wgslsmith_add_u32(global2[_wgslsmith_index_u32(1u, 24u)], 4294967295u), ~(~5994u)) % vec3<u32>(32u)), vec3<u32>(~global2[_wgslsmith_index_u32(35187u, 24u)], _wgslsmith_add_u32(8790u, u_input.a) << (_wgslsmith_dot_vec3_u32(vec3<u32>(11023u, 64u, 43555u), vec3<u32>(43370u, 16990u, 0u)) % 32u), u_input.a) ^ ~(~vec3<u32>(u_input.a, u_input.a, u_input.a)));
    var var_1 = -357f;
    global2 = array<u32, 24>();
    global1 = array<Struct_1, 32>();
    return Struct_2(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(217f, -1409f, -138f, 256f))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(-1874f, -1174f, -1000f, -730f), vec4<f32>(656f, 515f, 446f, -527f)), _wgslsmith_div_vec4_f32(vec4<f32>(966f, -459f, -1082f, 1000f), vec4<f32>(100f, -1144f, 177f, 1653f)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)))), _wgslsmith_f_op_f32(round(281f)), Struct_1(global0.x, vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.a | u_input.a, 24u)] >= firstLeadingBit(1u), true, false)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(51317u, 24u)], 24u)], 32u)];
    var var_1 = firstLeadingBit(vec2<u32>(func_1(global1[_wgslsmith_index_u32(12704u, 32u)]), _wgslsmith_mod_u32(4294967295u, global2[_wgslsmith_index_u32(0u, 24u)])));
    var_1 = ~abs(vec2<u32>(global2[_wgslsmith_index_u32(4294967295u, 24u)], ~4294967295u));
    var_0 = global1[_wgslsmith_index_u32(85291u, 32u)];
    let var_2 = var_0.a;
    let var_3 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(var_0.a, -max(_wgslsmith_mult_i32(var_3.c.a, 0i), global0.x)), (vec2<i32>(-var_0.a, _wgslsmith_mult_i32(0i, 2147483647i)) ^ ((global0.yx & global0.yy) >> (select(vec2<u32>(global2[_wgslsmith_index_u32(30746u, 24u)], u_input.a), vec2<u32>(var_1.x, var_1.x), false) % vec2<u32>(32u)))) ^ ~global0.zy);
}

