struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: i32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: i32,
    b: vec2<u32>,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(4294967295u, 1101f, -578f, Struct_1(vec4<f32>(123f, 1355f, -956f, 501f), -60842i, 13794i, vec3<u32>(1u, 45411u, 47731u)));

var<private> global1: i32 = i32(-2147483648);

var<private> global2: array<Struct_1, 29>;

var<private> global3: array<Struct_1, 7>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: f32, arg_3: i32) -> f32 {
    let var_0 = Struct_3(~(~1u), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b + -307f)))), _wgslsmith_f_op_f32(-490f * _wgslsmith_f_op_f32(select(-531f, global0.b, true))), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(845f, -558f, arg_2, 1117f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b, 863f, -217f, global0.b))), -_wgslsmith_dot_vec3_i32(vec3<i32>(17233i, global0.d.b, 62976i), vec3<i32>(arg_1.a, 1i, -59410i) ^ vec3<i32>(5644i, arg_0.a, -38183i)), firstLeadingBit(1i), min(global0.d.d, abs(~vec3<u32>(arg_1.b.x, 1u, u_input.b)))));
    var var_1 = _wgslsmith_sub_u32(_wgslsmith_sub_u32(_wgslsmith_div_u32(_wgslsmith_mult_u32(global0.a, ~70219u), ~reverseBits(102970u)), arg_0.b.x), arg_0.b.x);
    var var_2 = abs(vec4<i32>(var_0.d.b, -61478i, 18796i, i32(-1i) * -2147483647i));
    var var_3 = 0u;
    var var_4 = vec4<bool>(var_0.b == _wgslsmith_f_op_f32(493f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) - arg_2)), true, !(!any(vec4<bool>(false, true, false, true))), true);
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) - var_0.b), var_0.b)))));
}

fn func_2() -> vec4<f32> {
    global0 = Struct_3(~((1u << (_wgslsmith_mod_u32(global0.d.d.x, u_input.b) % 32u)) << (u_input.a.x % 32u)), -1000f, global0.b, global0.d);
    let var_0 = vec3<bool>(true, true, true);
    global1 = -u_input.c;
    var var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_2(-37093i, u_input.a.wz), Struct_2(global0.d.b, vec2<u32>(u_input.b, 4294967295u)), -374f, _wgslsmith_mult_i32(-39623i, global0.d.b))))))));
    global0 = Struct_3(26478u, _wgslsmith_f_op_f32(global0.c + _wgslsmith_f_op_f32(791f - 301f)), _wgslsmith_f_op_f32(-global0.d.a.x), global2[_wgslsmith_index_u32(max(global0.a, _wgslsmith_dot_vec3_u32(countOneBits(global0.d.d), max(~u_input.a.wwx, firstTrailingBit(global0.d.d)))), 29u)]);
    return _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0.c, _wgslsmith_div_f32(2491f, global0.d.a.x), 516f, _wgslsmith_f_op_f32(-global0.d.a.x))));
}

fn func_1() -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec4_f32(abs(global0.d.a));
    let var_1 = ~firstLeadingBit(_wgslsmith_add_u32(abs(15223u), max(~u_input.a.x, global0.d.d.x)));
    var var_2 = select(!select(vec4<bool>(false, true, true, var_0.x == -838f), !select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false)), 1u < var_1), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(false, true, true, any(vec3<bool>(true, true, all(vec4<bool>(false, false, false, false))))));
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2()) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(630f * global0.d.a.x), _wgslsmith_f_op_f32(abs(-644f)), _wgslsmith_f_op_f32(round(807f)), _wgslsmith_f_op_f32(global0.c + -1000f)) + vec4<f32>(var_0.x, _wgslsmith_f_op_f32(round(232f)), _wgslsmith_f_op_f32(exp2(global0.b)), _wgslsmith_f_op_f32(floor(1443f))))), i32(-1i) * -26215i, -reverseBits(-firstTrailingBit(global0.d.b)), ~_wgslsmith_mod_vec3_u32(reverseBits(vec3<u32>(4515u, global0.a, 4294967295u)), ~_wgslsmith_mod_vec3_u32(u_input.a.zxz, u_input.a.xxx)));
    global1 = min(abs(_wgslsmith_mod_i32(~_wgslsmith_mod_i32(47022i, 19943i), reverseBits(1i))), i32(-1i) * -82278i);
    return Struct_3(~_wgslsmith_clamp_u32(u_input.a.x, 12503u, ~var_1), var_0.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-1332f, _wgslsmith_f_op_vec4_f32(func_2()).x, true)), _wgslsmith_f_op_f32(1386f + 1498f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(var_0.x, global0.b, false)))))), Struct_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1521f, -135f, var_0.x, var_0.x)), var_0)), _wgslsmith_sub_i32(countOneBits(var_3.c), _wgslsmith_mod_i32(17132i ^ u_input.c, var_3.c)), var_3.b, ~var_3.d ^ _wgslsmith_mod_vec3_u32(firstLeadingBit(vec3<u32>(u_input.b, 4294967295u, 51668u)), ~vec3<u32>(10807u, var_1, var_1))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = global0.d;
    global3 = array<Struct_1, 7>();
    var var_2 = var_0.d;
    let var_3 = Struct_1(vec4<f32>(var_1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b * 290f)) - _wgslsmith_div_f32(var_0.b, _wgslsmith_f_op_f32(global0.b * 1978f))), 180f, _wgslsmith_f_op_f32(-2832f - _wgslsmith_div_f32(-1580f, _wgslsmith_div_f32(var_1.a.x, var_2.a.x)))), var_2.c, -8516i, vec3<u32>(var_1.d.x, ~(~global0.a ^ 4294967295u), 0u));
    let var_4 = var_3;
    global3 = array<Struct_1, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(1f, _wgslsmith_div_u32(abs(_wgslsmith_div_u32(var_0.a, 1u) << (var_4.d.x % 32u)), ~_wgslsmith_mult_u32(global0.d.d.x ^ global0.d.d.x, min(112312u, var_3.d.x))), u_input.a.x);
}

