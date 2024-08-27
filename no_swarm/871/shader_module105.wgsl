struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec2<u32>,
    c: bool,
    d: bool,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: bool,
    d: bool,
    e: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 22>;

var<private> global1: array<u32, 19> = array<u32, 19>(0u, 13305u, 4294967295u, 0u, 9192u, 1u, 0u, 28701u, 13078u, 4294967295u, 1u, 27896u, 23257u, 1u, 1u, 31013u, 70159u, 41974u, 19021u);

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: bool, arg_1: f32, arg_2: f32, arg_3: i32) -> u32 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 - -1595f) - _wgslsmith_f_op_f32(ceil(arg_2))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(947f + _wgslsmith_f_op_f32(745f * _wgslsmith_f_op_f32(sign(1000f)))) - arg_1));
    let var_1 = u_input.b.x;
    global0 = array<vec2<bool>, 22>();
    var var_2 = u_input.e;
    var var_3 = Struct_4(Struct_3(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1783f))))), max(~reverseBits(-56105i), -33130i), false, all(vec3<bool>(21281u <= u_input.e, !arg_0, true)), -2147483647i), arg_0);
    return ~u_input.e >> ((global1[_wgslsmith_index_u32(abs(_wgslsmith_clamp_u32(_wgslsmith_add_u32(u_input.b.x, global1[_wgslsmith_index_u32(865u, 19u)]), var_1, 0u)), 19u)] >> (global1[_wgslsmith_index_u32(20716u, 19u)] % 32u)) % 32u);
}

fn func_2(arg_0: vec3<bool>, arg_1: vec2<bool>) -> vec2<u32> {
    let var_0 = i32(-1i) * -u_input.c;
    var var_1 = reverseBits(-2147483647i);
    global1 = array<u32, 19>();
    let var_2 = u_input.d.x << (_wgslsmith_mult_u32(u_input.e, ~select(global1[_wgslsmith_index_u32(u_input.b.x, 19u)], 24266u, true) << (firstLeadingBit(func_3(arg_0.x, 1038f, 507f, -2147483647i)) % 32u)) % 32u);
    var var_3 = -43939i;
    return ~abs(vec2<u32>(global1[_wgslsmith_index_u32(~20665u, 19u)], _wgslsmith_mod_u32(1u, firstTrailingBit(56719u))));
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> Struct_1 {
    global0 = array<vec2<bool>, 22>();
    var var_0 = u_input.c;
    global1 = array<u32, 19>();
    let var_1 = Struct_1(u_input.b.wx, ~(-(i32(-1i) * -2147483647i)), 471f, 1000f);
    var_0 = -(~_wgslsmith_clamp_i32(-20447i, max(1i, _wgslsmith_mult_i32(26623i, 15270i)), var_1.b));
    return Struct_1(~(~func_2(vec3<bool>(false, false, false), global0[_wgslsmith_index_u32(21923u, 22u)])) >> (abs(_wgslsmith_div_vec2_u32(vec2<u32>(0u, global1[_wgslsmith_index_u32(30878u, 19u)]), vec2<u32>(arg_1.a.x, u_input.b.x))) % vec2<u32>(32u)), 1i, -794f, arg_1.d);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: bool) -> bool {
    let var_0 = vec4<f32>(func_1(arg_0.d, func_1(_wgslsmith_f_op_f32(-arg_0.d), func_1(1000f, arg_0))).d, -1147f, func_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0.d * 1183f))))), func_1(1539f, func_1(arg_0.d, func_1(-459f, arg_0)))).c, 537f);
    var var_1 = arg_2;
    global1 = array<u32, 19>();
    var var_2 = u_input.d;
    let var_3 = countOneBits(~firstTrailingBit(_wgslsmith_sub_u32(0u, u_input.b.x))) >> (global1[_wgslsmith_index_u32(~1u << (global1[_wgslsmith_index_u32(u_input.e, 19u)] % 32u), 19u)] % 32u);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.e;
    let var_1 = Struct_4(Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1639f - _wgslsmith_div_f32(-2392f, -2337f))), u_input.d.x, u_input.c < u_input.a, func_4(func_1(360f, Struct_1(u_input.b.zw, u_input.a, 124f, -2201f)), vec3<u32>(reverseBits(0u), ~global1[_wgslsmith_index_u32(4294967295u, 19u)], var_0 | u_input.e), !any(vec3<bool>(false, true, true))), countOneBits(select(u_input.c, 1i, true))), true && func_4(func_1(_wgslsmith_f_op_f32(min(-1555f, 624f)), Struct_1(vec2<u32>(19594u, u_input.b.x), u_input.c, 1000f, 799f)), ~_wgslsmith_mod_vec3_u32(vec3<u32>(33728u, u_input.b.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(7003u, 19u)], 19u)]), vec3<u32>(7016u, global1[_wgslsmith_index_u32(0u, 19u)], var_0)), any(vec4<bool>(true, false, true, true)) || true));
    let var_2 = vec2<bool>(false, var_1.a.c);
    let var_3 = ~(~u_input.e);
    var var_4 = _wgslsmith_add_vec3_u32(countOneBits(vec3<u32>(var_3, 1u, 111728u) | vec3<u32>(u_input.e, u_input.e, 1u)), ~_wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.b.x, u_input.b.x, var_3), u_input.b.yzy)) & ~vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(var_3, 19u)], 4294967295u, 26059u), _wgslsmith_sub_vec3_u32(vec3<u32>(31411u, 1u, 4294967295u), vec3<u32>(1u, var_3, 63383u))), 0u, 59689u);
    let x = u_input.a;
    s_output = StorageBuffer(18762i, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1097f - _wgslsmith_f_op_f32(max(665f, var_1.a.a))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.a + 360f) + -1703f)))));
}

