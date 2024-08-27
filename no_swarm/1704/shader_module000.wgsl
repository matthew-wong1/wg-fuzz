struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: f32,
    d: i32,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec4<i32>,
}

struct Struct_5 {
    a: Struct_3,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_4, 1>;

var<private> global2: array<Struct_3, 23>;

var<private> global3: array<f32, 28> = array<f32, 28>(-1154f, 490f, 1687f, 1000f, 752f, 825f, 1379f, 714f, -738f, -1012f, 140f, -161f, 1001f, -527f, 700f, 953f, 681f, -1041f, -1653f, -1000f, -784f, 207f, 832f, 702f, 1517f, -1477f, 1207f, 1216f);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> i32 {
    let var_0 = vec2<u32>(~firstTrailingBit(_wgslsmith_clamp_u32(1u, 11610u, 61273u)), select(u_input.b.x, max(_wgslsmith_dot_vec3_u32(~vec3<u32>(14017u, 1u, u_input.b.x), u_input.b), u_input.b.x), global3[_wgslsmith_index_u32(firstLeadingBit(~u_input.b.x), 28u)] <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(u_input.b.x, 28u)] + global3[_wgslsmith_index_u32(57751u, 28u)]) * -1311f)));
    global1 = array<Struct_4, 1>();
    return u_input.d.x;
}

fn func_2() -> bool {
    let var_0 = vec3<i32>(-36488i, -2147483647i, _wgslsmith_add_i32(-19542i, u_input.a.x)) ^ ((vec3<i32>(-1i) * -(~u_input.c.xzy)) | _wgslsmith_mult_vec3_i32(u_input.d.wxw, ~vec3<i32>(u_input.c.x, u_input.a.x, u_input.a.x)));
    global3 = array<f32, 28>();
    global1 = array<Struct_4, 1>();
    global1 = array<Struct_4, 1>();
    let var_1 = Struct_5(global2[_wgslsmith_index_u32(59099u, 23u)], _wgslsmith_div_vec4_i32(~u_input.d, vec4<i32>(0i, func_3(), func_3(), 1i)));
    return false;
}

fn func_4(arg_0: vec4<bool>) -> Struct_2 {
    var var_0 = global3[_wgslsmith_index_u32(4294967295u, 28u)];
    var_0 = global3[_wgslsmith_index_u32(~(~(_wgslsmith_sub_u32(u_input.b.x & u_input.b.x, max(u_input.b.x, u_input.b.x)) ^ ~u_input.b.x)), 28u)];
    var var_1 = u_input.b.x & 29131u;
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-798f, global3[_wgslsmith_index_u32(u_input.b.x, 28u)])), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(17492u, 28u)])))), _wgslsmith_f_op_f32(f32(-1f) * -513f));
    var var_2 = u_input.b.x;
    return Struct_2(true, _wgslsmith_add_i32(u_input.d.x, i32(-1i) * -1i), global3[_wgslsmith_index_u32(u_input.b.x, 28u)], 2147483647i);
}

fn func_1(arg_0: u32) -> bool {
    let var_0 = 4294967295u;
    var var_1 = _wgslsmith_div_u32(u_input.b.x, _wgslsmith_add_u32(abs(~var_0) ^ abs(28166u), ~(~(~19502u))));
    var_1 = ~arg_0 ^ (~_wgslsmith_sub_u32(0u, 0u & arg_0) << (0u % 32u));
    var var_2 = func_4(vec4<bool>(any(vec4<bool>(true, true, true, true)) && !all(vec4<bool>(false, false, false, false)), !func_2(), true, select(false, true, false)));
    var var_3 = Struct_5(global2[_wgslsmith_index_u32(abs(~firstTrailingBit(u_input.b.x) & ~0u), 23u)], -_wgslsmith_mod_vec4_i32(abs(vec4<i32>(50754i, -1i, var_2.d, 2147483647i)), vec4<i32>(~u_input.a.x, ~0i, var_2.d, firstLeadingBit(var_2.d))));
    return var_2.a;
}

fn func_5(arg_0: bool) -> Struct_1 {
    global0 = func_2();
    global2 = array<Struct_3, 23>();
    let var_0 = vec4<bool>(!func_1(22311u), true, any(vec2<bool>(true, true)), !arg_0);
    return Struct_1(select(select(select(select(var_0, var_0, arg_0), !var_0, !vec4<bool>(var_0.x, true, arg_0, true)), select(!vec4<bool>(false, false, var_0.x, arg_0), var_0, false), !select(var_0, var_0, vec4<bool>(false, false, true, true))), vec4<bool>(select(false, false, var_0.x) || arg_0, _wgslsmith_sub_i32(-14970i, -2147483647i) > max(u_input.d.x, u_input.c.x), !any(var_0), false), vec4<bool>(true, _wgslsmith_f_op_f32(sign(225f)) < _wgslsmith_f_op_f32(2506f * -1242f), !(u_input.c.x > u_input.c.x), all(!var_0))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_1(4507u));
    var_0 = func_5(1092f < global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_div_u32(~19346u, 41058u), _wgslsmith_mod_u32(u_input.b.x, u_input.b.x), countOneBits(_wgslsmith_add_u32(u_input.b.x, 84419u))), 28u)]);
    global2 = array<Struct_3, 23>();
    var var_1 = func_4(vec4<bool>(var_0.a.x, var_0.a.x, true, -413f > global3[_wgslsmith_index_u32(u_input.b.x, 28u)])).a;
    let var_2 = ~max(u_input.b.x, min(_wgslsmith_sub_u32(countOneBits(u_input.b.x), _wgslsmith_clamp_u32(0u, u_input.b.x, 1032u)), 0u));
    let var_3 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(u_input.b.x, 28u)], global3[_wgslsmith_index_u32(11990u, 28u)], 1685f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global3[_wgslsmith_index_u32(10422u, 28u)], global3[_wgslsmith_index_u32(u_input.b.x, 28u)], global3[_wgslsmith_index_u32(var_2, 28u)]), vec3<f32>(global3[_wgslsmith_index_u32(var_2, 28u)], -288f, global3[_wgslsmith_index_u32(var_2, 28u)]), vec3<bool>(var_0.a.x, var_0.a.x, var_0.a.x)))))))));
    var var_4 = min(abs(7644u), reverseBits(1u));
    let var_5 = Struct_4(!func_5(var_0.a.x).a, ~vec4<i32>(_wgslsmith_mod_i32(-2147483647i, ~23518i), _wgslsmith_sub_i32(u_input.a.x >> (24293u % 32u), u_input.a.x), firstLeadingBit(-2147483647i), abs(6462i)));
    let x = u_input.a;
    s_output = StorageBuffer(global3[_wgslsmith_index_u32(~(~_wgslsmith_add_u32(1u, ~1u)), 28u)], _wgslsmith_div_vec3_f32(var_3, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1028f, 943f, global3[_wgslsmith_index_u32(var_2, 28u)]) + vec3<f32>(-309f, global3[_wgslsmith_index_u32(87511u, 28u)], global3[_wgslsmith_index_u32(4294967295u, 28u)]))), var_3))), _wgslsmith_add_vec4_i32(-var_5.b, var_5.b));
}

