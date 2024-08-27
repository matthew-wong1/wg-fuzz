struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
    c: i32,
    d: bool,
    e: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 12>;

var<private> global1: array<i32, 4>;

var<private> global2: array<vec4<f32>, 20> = array<vec4<f32>, 20>(vec4<f32>(496f, 2170f, -327f, 781f), vec4<f32>(-910f, -119f, -343f, -351f), vec4<f32>(-165f, -1000f, 1643f, 993f), vec4<f32>(122f, 664f, -1092f, -158f), vec4<f32>(-1429f, 139f, -850f, 276f), vec4<f32>(657f, 1532f, 1097f, 544f), vec4<f32>(-1000f, -238f, -505f, -214f), vec4<f32>(-540f, 202f, 469f, 1000f), vec4<f32>(-119f, 1028f, -1199f, 224f), vec4<f32>(1184f, 484f, -1870f, 386f), vec4<f32>(947f, 903f, 1000f, -970f), vec4<f32>(2733f, -388f, 603f, -657f), vec4<f32>(1652f, 134f, -394f, -1585f), vec4<f32>(1605f, -469f, -1426f, 403f), vec4<f32>(-1274f, -490f, -1852f, 1228f), vec4<f32>(-1073f, 205f, 194f, -570f), vec4<f32>(1008f, 1546f, -1918f, 433f), vec4<f32>(522f, -805f, -2354f, -1905f), vec4<f32>(940f, -209f, -676f, -771f), vec4<f32>(802f, -671f, 760f, 826f));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> u32 {
    global2 = array<vec4<f32>, 20>();
    var var_0 = u_input.c;
    var var_1 = true;
    var_1 = true;
    var_0 = u_input.c;
    return ~u_input.b.x | ((u_input.b.x << ((_wgslsmith_div_u32(43074u, u_input.b.x) >> (u_input.b.x % 32u)) % 32u)) >> (u_input.b.x % 32u));
}

fn func_2() -> vec2<bool> {
    let var_0 = 743f;
    global1 = array<i32, 4>();
    let var_1 = _wgslsmith_mod_u32(~min(u_input.b.x & abs(u_input.b.x), ~1u), reverseBits(_wgslsmith_div_u32(1u, 30778u)));
    let var_2 = global2[_wgslsmith_index_u32(~_wgslsmith_add_u32(_wgslsmith_sub_u32(~104716u, _wgslsmith_div_u32(var_1, var_1)), ~func_3()) >> (~1u % 32u), 20u)];
    let var_3 = Struct_3(_wgslsmith_f_op_vec3_f32(-var_2.wyz), Struct_2(Struct_1(519f, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0, 426f))), var_0)), countOneBits(global1[_wgslsmith_index_u32(u_input.b.x, 4u)]), all(vec3<bool>(true, true, false)) && !select(true, -524f >= var_2.x, true), Struct_2(Struct_1(149f, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.x, var_2.x) - vec2<f32>(var_0, -1000f)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_2.x, var_0), vec2<f32>(1446f, -1085f)))), _wgslsmith_f_op_f32(1583f * 1f))));
    return select(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~20791u, ~var_1), 12u)], global0[_wgslsmith_index_u32(4294967295u, 12u)], vec2<bool>(true, any(!vec2<bool>(false, var_3.d))));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec3<u32>, arg_2: f32) -> Struct_3 {
    var var_0 = func_2();
    var var_1 = vec4<u32>(arg_1.x, min(u_input.b.x, u_input.b.x), min(19897u, u_input.b.x), 48669u);
    var var_2 = any(!(!vec2<bool>(true, any(vec4<bool>(var_0.x, false, arg_0.x, false)))));
    global0 = array<vec2<bool>, 12>();
    var var_3 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2))), -1082f, -965f), Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) - _wgslsmith_f_op_f32(max(122f, 132f))), vec2<f32>(_wgslsmith_f_op_f32(abs(1000f)), _wgslsmith_f_op_f32(arg_2 * -1075f)), arg_2)), -u_input.c, !all(arg_0), Struct_2(Struct_1(-1496f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2, -561f) - vec2<f32>(920f, -1801f))), -1110f)));
    return Struct_3(_wgslsmith_f_op_vec3_f32(var_3.a + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(var_3.a + vec3<f32>(var_3.a.x, 587f, var_3.b.a.a)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(var_3.a))))), Struct_2(var_3.b.a), min(18795i, reverseBits(i32(-1i) * -25396i) ^ reverseBits(~u_input.c)), 528f >= _wgslsmith_f_op_f32(-var_3.e.a.c), var_3.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(!(!(!select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false)))), ~(~vec3<u32>(u_input.b.x, _wgslsmith_div_u32(u_input.b.x, u_input.b.x), _wgslsmith_dot_vec3_u32(u_input.b, u_input.b))), -1181f);
    let var_1 = var_0.e;
    var var_2 = vec3<i32>(_wgslsmith_dot_vec3_i32(select(-_wgslsmith_clamp_vec3_i32(vec3<i32>(0i, var_0.c, var_0.c), vec3<i32>(global1[_wgslsmith_index_u32(4294967295u, 4u)], u_input.a, var_0.c), vec3<i32>(25805i, 39751i, var_0.c)), _wgslsmith_sub_vec3_i32(~vec3<i32>(var_0.c, -2902i, u_input.c), ~vec3<i32>(-1i, global1[_wgslsmith_index_u32(0u, 4u)], -1i)), vec3<bool>(var_0.d, var_0.d, any(vec3<bool>(var_0.d, true, var_0.d)))), vec3<i32>(firstLeadingBit(~global1[_wgslsmith_index_u32(0u, 4u)]), 16701i, var_0.c)), 2147483647i ^ _wgslsmith_sub_i32(u_input.c, ~1i), u_input.a);
    global2 = array<vec4<f32>, 20>();
    var var_3 = _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(select(select(-vec3<i32>(-1i, 8814i, var_2.x), ~vec3<i32>(1i, var_0.c, 34819i), !vec3<bool>(true, false, var_0.d)), vec3<i32>(~43976i, 0i, -23033i), select(vec3<bool>(var_0.d, var_0.d, true), !vec3<bool>(true, false, var_0.d), !var_0.d)), vec3<i32>(func_1(!vec3<bool>(var_0.d, var_0.d, true), firstLeadingBit(u_input.b), var_0.b.a.c).c, _wgslsmith_add_i32(2147483647i, global1[_wgslsmith_index_u32(~0u, 4u)]), abs(_wgslsmith_add_i32(var_0.c, 17801i)))), -vec3<i32>(1i, ~(-2147483647i), u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(751f * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(var_0.b.a.a, var_0.b.a.a))))), _wgslsmith_f_op_f32(select(var_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(2775f, var_0.b.a.c)) * 634f), var_0.d)))));
}

