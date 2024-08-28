struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
    c: i32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 24> = array<i32, 24>(1i, -16570i, 2147483647i, 28368i, 0i, 1i, 2147483647i, 23695i, i32(-2147483648), i32(-2147483648), 30781i, 37566i, 13101i, 0i, 31459i, -1i, -13097i, i32(-2147483648), 1i, 890i, 1i, -32012i, 1i, -37093i);

var<private> global1: Struct_4 = Struct_4(Struct_3(vec4<f32>(-771f, -486f, -456f, -1528f), 866f), 11490u);

var<private> global2: Struct_3 = Struct_3(vec4<f32>(1727f, 413f, -1189f, -482f), -1000f);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2() -> Struct_2 {
    let var_0 = global1.a.a.x;
    global2 = Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.b, _wgslsmith_f_op_f32(sign(global1.a.b)), -389f, 531f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(global2.a)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.b, global1.a.a.x, 1000f, global1.a.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-280f))));
    var var_1 = global2.b;
    global0 = array<i32, 24>();
    let var_2 = _wgslsmith_f_op_f32(-global1.a.b);
    return Struct_2(global1.b);
}

fn func_1(arg_0: Struct_3, arg_1: f32) -> vec2<bool> {
    let var_0 = _wgslsmith_mult_vec4_i32(vec4<i32>(1i, ~select(countOneBits(-1i), _wgslsmith_div_i32(u_input.a, 19855i), true), _wgslsmith_dot_vec4_i32(~vec4<i32>(0i, 1i, 2147483647i, global0[_wgslsmith_index_u32(4294967295u, 24u)]), -vec4<i32>(-1i, u_input.a, -2147483647i, global0[_wgslsmith_index_u32(global1.b, 24u)])) >> (0u % 32u), 1i), vec4<i32>(-(i32(-1i) * -8406i), _wgslsmith_mult_i32(_wgslsmith_sub_i32(u_input.a, global0[_wgslsmith_index_u32(max(1u, 1u), 24u)]), ~global0[_wgslsmith_index_u32(5363u, 24u)] & -1577i), _wgslsmith_add_i32(-1i, global0[_wgslsmith_index_u32(global1.b, 24u)]), (u_input.a >> (global1.b % 32u)) | -30154i));
    let var_1 = 2147483647i;
    let var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(-arg_0.a), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(1f)))))));
    let var_3 = func_2();
    global2 = Struct_3(vec4<f32>(-1899f, _wgslsmith_f_op_f32(round(-1927f)), arg_1, -606f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(global1.a.a.x, var_2.a.x)), arg_1))));
    return vec2<bool>(!(!all(vec3<bool>(true, true, true))), var_3.a < 4294967295u);
}

fn func_3(arg_0: Struct_4, arg_1: bool) -> bool {
    var var_0 = arg_0.a.a.x;
    let var_1 = Struct_1(-global0[_wgslsmith_index_u32(80920u, 24u)]);
    var var_2 = func_2();
    let var_3 = abs(-2147483647i);
    var var_4 = vec3<u32>(abs(~_wgslsmith_mult_u32(1u, _wgslsmith_mult_u32(1u, 4294967295u))), 50798u, ((global1.b | var_2.a) >> (~(arg_0.b << (arg_0.b % 32u)) % 32u)) << (1u % 32u));
    return !any(select(vec3<bool>(true, true, true), vec3<bool>(true, arg_1, arg_1 | true), !(arg_1 & false)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(1i ^ global0[_wgslsmith_index_u32(~global1.b, 24u)], ((2147483647i & u_input.a) ^ -2147483647i) ^ global0[_wgslsmith_index_u32(abs(global1.b) ^ global1.b, 24u)], -select(_wgslsmith_sub_i32(2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, global0[_wgslsmith_index_u32(36875u, 24u)], global0[_wgslsmith_index_u32(global1.b, 24u)]), vec3<i32>(u_input.a, global0[_wgslsmith_index_u32(4294967295u, 24u)], -1i))), 2147483647i, false), -2147483647i);
    var var_1 = vec4<bool>(false, true, !any(!select(vec2<bool>(false, true), vec2<bool>(true, true), false)), all(select(!func_1(Struct_3(global1.a.a, global1.a.b), global1.a.b), select(vec2<bool>(false, true), vec2<bool>(false, true), func_1(global1.a, 454f)), func_3(Struct_4(Struct_3(global1.a.a, global2.a.x), global1.b), true))));
    let var_2 = vec2<i32>(_wgslsmith_add_i32(-2147483647i, countOneBits(_wgslsmith_div_i32(global0[_wgslsmith_index_u32(26816u, 24u)], 12782i)) << (1u % 32u)), 11260i);
    let var_3 = ~vec2<u32>(~global1.b, ~26368u >> (reverseBits(global1.b & global1.b) % 32u));
    var var_4 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global2.b))), _wgslsmith_f_op_f32(-779f - global2.b))));
    let var_5 = vec3<bool>(6724u != var_3.x, func_3(Struct_4(global1.a, var_3.x), true), true);
    let x = u_input.a;
    s_output = StorageBuffer(max(var_3, ~((var_3 & vec2<u32>(global1.b, 1u)) | vec2<u32>(4294967295u, var_3.x))), global2.a.yxw, -1i, ~1u >> (func_2().a % 32u), _wgslsmith_f_op_f32(round(707f)));
}

