struct Struct_1 {
    a: f32,
    b: f32,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: bool,
    d: u32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: f32 = 264f;

var<private> global2: f32;

var<private> global3: array<f32, 11>;

var<private> global4: Struct_3 = Struct_3(vec3<f32>(-621f, -343f, -944f), vec3<bool>(false, true, false));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec3<f32> {
    let var_0 = Struct_1(-1836f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global3[_wgslsmith_index_u32(54505u, 11u)])) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global3[_wgslsmith_index_u32(u_input.b.x, 11u)])))))), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(select(0u, ~62978u << (_wgslsmith_div_u32(4294967295u, u_input.a) % 32u), global0.x), 11u)]), !(!(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 0i, -9531i), vec3<i32>(-2147483647i, -2147483647i, -2147483647i)) <= -10219i)));
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(u_input.a, 11u)] * global3[_wgslsmith_index_u32(0u, 11u)]), global4.a.x, false)) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.a)) - _wgslsmith_f_op_f32(floor(-203f))), _wgslsmith_f_op_f32(ceil(global3[_wgslsmith_index_u32(4294967295u, 11u)])), var_0.d)));
    let var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.a.x, _wgslsmith_f_op_f32(1435f - global4.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c + var_0.a) + _wgslsmith_f_op_f32(-1851f + 1208f)))), global4.b);
    var var_2 = 295f;
    let var_3 = var_1;
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(1372f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(global4.a.x)), _wgslsmith_f_op_f32(floor(298f)))), var_3.a.x)), _wgslsmith_f_op_vec3_f32(-var_3.a));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(663f, global4.a.x, _wgslsmith_f_op_f32(round(1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(8552u, 11u)])) >= global3[_wgslsmith_index_u32(u_input.a, 11u)]);
    let var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1548f + 1339f), _wgslsmith_div_f32(-1120f, 1099f), _wgslsmith_f_op_f32(f32(-1f) * -206f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.b, 492f, global4.a.x), global4.a) - _wgslsmith_f_op_vec3_f32(func_3())))), !vec3<bool>(global4.b.x, true, any(!global4.b)));
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -244f) - _wgslsmith_f_op_f32(var_1.a.x * 1175f));
    var var_2 = vec4<u32>(291u, u_input.a, u_input.b.x, ~(~u_input.b.x >> (abs(~u_input.b.x) % 32u)));
    var var_3 = var_1;
    return Struct_1(_wgslsmith_f_op_f32(trunc(var_1.a.x)), -889f, -282f, (any(var_3.b) || (all(vec4<bool>(var_3.b.x, global4.b.x, false, false)) != all(global4.b))) && all(select(select(vec4<bool>(true, var_1.b.x, true, var_0.d), vec4<bool>(global4.b.x, false, false, global0.x), vec4<bool>(var_0.d, var_1.b.x, false, true)), vec4<bool>(global4.b.x, true, true, false), !vec4<bool>(var_0.d, global4.b.x, true, false))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2) -> vec3<f32> {
    let var_0 = vec2<f32>(680f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_1.b.c)) + global4.a.x))));
    let var_1 = func_2();
    global0 = !select(global4.b, global4.b, !(!global4.b.x));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-124f)));
    let var_2 = Struct_3(global4.a, !(!(!select(vec3<bool>(true, false, true), vec3<bool>(global0.x, false, global4.b.x), global4.b))));
    return _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_2.a.x, _wgslsmith_f_op_f32(-var_2.a.x), var_0.x)))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2) -> Struct_2 {
    var var_0 = vec3<u32>(arg_1.d, 1u << (0u % 32u), u_input.a) | firstLeadingBit(reverseBits(~(vec3<u32>(0u, arg_1.a.x, u_input.a) | arg_1.a.zzx)));
    let var_1 = arg_1;
    let var_2 = var_1;
    global3 = array<f32, 11>();
    let var_3 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_3()).x), -676f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_vec3_f32(func_1(var_1.b, Struct_2(var_2.a, var_2.b, true, var_1.d))).x, _wgslsmith_div_f32(arg_0.a.x, 1000f)))))));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_clamp_u32(31059u ^ ~u_input.a, u_input.b.x, ~u_input.a);
    var var_1 = vec4<u32>(0u, 1u, 4294967295u, _wgslsmith_mult_u32(4294967295u, _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.b, vec3<u32>(4294967295u, u_input.b.x, u_input.b.x)) ^ countOneBits(u_input.b), firstLeadingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(38331u, u_input.a, 55419u), vec3<u32>(0u, u_input.b.x, u_input.b.x))))));
    global3 = array<f32, 11>();
    let var_2 = func_4(Struct_3(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(1291f, global3[_wgslsmith_index_u32(var_1.x, 11u)], global3[_wgslsmith_index_u32(u_input.b.x, 11u)]) + vec3<f32>(global4.a.x, global4.a.x, global4.a.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global4.a) + _wgslsmith_f_op_vec3_f32(func_1(Struct_1(global3[_wgslsmith_index_u32(u_input.a, 11u)], 923f, global3[_wgslsmith_index_u32(4294967295u, 11u)], global0.x), Struct_2(vec4<u32>(8310u, u_input.a, u_input.b.x, u_input.a), Struct_1(-567f, -546f, 1382f, global4.b.x), false, 70307u)))), vec3<bool>(true, true, true))), global4.b), Struct_2(vec4<u32>(var_1.x, _wgslsmith_mult_u32(u_input.a, 4294967295u), u_input.b.x, u_input.a) & min(firstLeadingBit(vec4<u32>(var_1.x, 33214u, 0u, 91357u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.x, 0u, 34342u, 6602u), vec4<u32>(17526u, 4294967295u, 20745u, var_1.x), vec4<u32>(var_1.x, 21665u, var_1.x, u_input.b.x))), func_2(), !any(!vec4<bool>(false, global0.x, true, global0.x)), _wgslsmith_sub_u32(1u, u_input.b.x)));
    var_1 = vec4<u32>(~(~(var_2.a.x | max(u_input.b.x, var_2.d))), ~reverseBits(~min(u_input.b.x, 4294967295u)), ~1u, 52028u);
    var var_3 = abs(_wgslsmith_mod_i32(-67085i, 1i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(-5862i, _wgslsmith_mult_i32(1i, -1i)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(619f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global4.a.x, -1000f, false))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(var_2.a.x, 11u)] + var_2.b.a)))), vec4<u32>(4294967295u, _wgslsmith_add_u32(u_input.a, ~var_1.x), ~_wgslsmith_mod_u32(firstLeadingBit(u_input.b.x), var_2.a.x), select(var_2.a.x << (~23996u % 32u), ~(~u_input.a), !(!var_2.b.d))));
}

