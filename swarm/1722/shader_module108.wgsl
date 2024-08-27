struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: vec2<u32>,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec2<u32>,
    d: f32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 14>;

var<private> global1: array<Struct_5, 19> = array<Struct_5, 19>(Struct_5(Struct_2(false, vec2<u32>(0u, 11165u))), Struct_5(Struct_2(false, vec2<u32>(0u, 4294967295u))), Struct_5(Struct_2(true, vec2<u32>(1u, 0u))), Struct_5(Struct_2(false, vec2<u32>(69318u, 4294967295u))), Struct_5(Struct_2(false, vec2<u32>(4294967295u, 4294967295u))), Struct_5(Struct_2(true, vec2<u32>(3213u, 0u))), Struct_5(Struct_2(false, vec2<u32>(11866u, 64917u))), Struct_5(Struct_2(false, vec2<u32>(68938u, 50071u))), Struct_5(Struct_2(true, vec2<u32>(16094u, 36098u))), Struct_5(Struct_2(false, vec2<u32>(20973u, 59085u))), Struct_5(Struct_2(true, vec2<u32>(4294967295u, 5456u))), Struct_5(Struct_2(false, vec2<u32>(19885u, 75685u))), Struct_5(Struct_2(false, vec2<u32>(4294967295u, 4508u))), Struct_5(Struct_2(false, vec2<u32>(49070u, 56564u))), Struct_5(Struct_2(true, vec2<u32>(0u, 34027u))), Struct_5(Struct_2(true, vec2<u32>(50578u, 4294967295u))), Struct_5(Struct_2(true, vec2<u32>(1932u, 4294967295u))), Struct_5(Struct_2(false, vec2<u32>(49373u, 55970u))), Struct_5(Struct_2(true, vec2<u32>(0u, 18529u))));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec4<bool> {
    global0 = array<f32, 14>();
    var var_0 = 11128u;
    var_0 = min(6560u, max(~(~countOneBits(1694u)), 1u));
    let var_1 = u_input.b;
    var var_2 = global1[_wgslsmith_index_u32(34855u, 19u)];
    return vec4<bool>(true, false, u_input.a.x == firstTrailingBit(47942i), all(vec2<bool>(var_2.a.a, var_2.a.a)));
}

fn func_2() -> u32 {
    global1 = array<Struct_5, 19>();
    let var_0 = u_input.a;
    var var_1 = Struct_5(Struct_2(all(select(func_3(), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true))), _wgslsmith_div_vec2_u32(min(abs(vec2<u32>(13922u, u_input.b)), ~vec2<u32>(47750u, 5199u)), vec2<u32>(11070u, 9975u) & _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, 1u), vec2<u32>(33447u, u_input.b), vec2<u32>(54213u, 1u)))));
    var_1 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~(~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, var_1.a.b.x, 30324u, var_1.a.b.x) & vec4<u32>(u_input.b, u_input.b, u_input.b, 4294967295u), ~vec4<u32>(22u, var_1.a.b.x, u_input.b, 18861u))), ~(~(~reverseBits(vec4<u32>(0u, u_input.b, var_1.a.b.x, 0u))))), 19u)];
    return ~(_wgslsmith_mod_u32(var_1.a.b.x, u_input.b) & _wgslsmith_sub_u32(u_input.b, u_input.b)) & _wgslsmith_dot_vec4_u32(firstTrailingBit(firstLeadingBit(vec4<u32>(0u, u_input.b, u_input.b, u_input.b) & vec4<u32>(var_1.a.b.x, var_1.a.b.x, 62971u, u_input.b))), ~(vec4<u32>(u_input.b, u_input.b, 1u, u_input.b) & vec4<u32>(var_1.a.b.x, 15261u, 647u, u_input.b)) & ~vec4<u32>(4294967295u, 51830u, u_input.b, 0u));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_3) -> bool {
    global1 = array<Struct_5, 19>();
    let var_0 = -679f;
    let var_1 = arg_0.a.x;
    let var_2 = true;
    var var_3 = countOneBits(firstTrailingBit(vec3<u32>(u_input.b, _wgslsmith_div_u32(func_2(), _wgslsmith_add_u32(u_input.b, 4294967295u)), 0u)));
    return false | all(!arg_0.a.yx);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec4<bool>(true, func_1(Struct_1(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false))), Struct_3(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), u_input.a.zy))), true, (_wgslsmith_sub_u32(u_input.b, u_input.b) > 23688u) | true);
    global1 = array<Struct_5, 19>();
    let var_1 = _wgslsmith_div_f32(global0[_wgslsmith_index_u32(~u_input.b, 14u)], _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.b, 14u)] - global0[_wgslsmith_index_u32(u_input.b, 14u)]));
    let var_2 = Struct_2(!var_0.x, vec2<u32>(~_wgslsmith_sub_u32(~u_input.b, ~13172u), ~reverseBits(1280u) >> ((u_input.b ^ u_input.b) % 32u)));
    let var_3 = Struct_2(var_2.a, select(select(var_2.b | (var_2.b ^ var_2.b), vec2<u32>(~26415u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 1u, var_2.b.x), vec3<u32>(691u, var_2.b.x, 27798u))), var_2.a || (u_input.a.x >= -14323i)), ~(~vec2<u32>(var_2.b.x, 73529u)), vec2<bool>(select(any(var_0.yzx), true, var_2.a), select(false, var_2.a, false))));
    var var_4 = var_2;
    var var_5 = Struct_2(var_0.x, var_3.b);
    let x = u_input.a;
    s_output = StorageBuffer(var_1, -1i, vec2<u32>(~_wgslsmith_sub_u32(10371u | var_3.b.x, var_2.b.x ^ 1u), var_5.b.x), _wgslsmith_f_op_f32(403f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 + _wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(4294967295u, 14u)]))) - -967f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-701f, -1000f, _wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(46639u, 14u)], var_1, false)), global0[_wgslsmith_index_u32(var_2.b.x, 14u)]), vec4<f32>(var_1, _wgslsmith_f_op_f32(var_1 * -1001f), _wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b, 14u)])), func_3()))));
}

