struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: u32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 19>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_2) -> f32 {
    global0 = array<vec3<i32>, 19>();
    global0 = array<vec3<i32>, 19>();
    global0 = array<vec3<i32>, 19>();
    var var_0 = arg_0;
    var_0 = Struct_2(Struct_1(~(~(vec3<u32>(33211u, 0u, 23660u) | vec3<u32>(u_input.a, u_input.d.x, 3399u))), arg_0.a.b, 1u, vec3<i32>(-select(1i, u_input.c, false), 2147483647i, -45060i)), 4294967295u);
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(516f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.b + -1821f))) * _wgslsmith_f_op_f32(1098f + 824f));
}

fn func_2() -> Struct_1 {
    var var_0 = vec3<u32>(u_input.d.x, u_input.a, ~(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, u_input.d.x, u_input.a), vec4<u32>(45192u, u_input.d.x, 75635u, 1u)))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(346f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-100f, -187f) * -2042f))) - 1500f);
    return Struct_1(vec3<u32>(26373u, select(var_0.x, 1u, false), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 0u) << (max(vec2<u32>(var_0.x, u_input.d.x), vec2<u32>(u_input.b, 4294967295u)) % vec2<u32>(32u)), firstLeadingBit(reverseBits(vec2<u32>(1u, 4294967295u))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(vec3<u32>(0u, u_input.b, u_input.d.x), 1398f, 4294967295u, vec3<i32>(u_input.c, u_input.c, u_input.c)), 66380u)))) - -654f)), 18649u, min(global0[_wgslsmith_index_u32(var_0.x, 19u)], _wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(abs(vec3<i32>(-2147483647i, u_input.c, u_input.c)), abs(global0[_wgslsmith_index_u32(40271u, 19u)])), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(1518u, var_0.x), 19u)])));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    let var_0 = all(!(!(!select(vec2<bool>(true, false), vec2<bool>(false, true), false))));
    let var_1 = !select(!(!select(vec4<bool>(var_0, false, var_0, true), vec4<bool>(false, var_0, var_0, var_0), true)), vec4<bool>(true, -1i == _wgslsmith_mod_i32(u_input.c, 14247i), var_0, var_0), select(vec4<bool>(var_0, var_0 && false, any(vec2<bool>(true, var_0)), var_0), vec4<bool>(true, -1309f <= arg_1.b, false, true), !(!vec4<bool>(false, var_0, false, false))));
    global0 = array<vec3<i32>, 19>();
    global0 = array<vec3<i32>, 19>();
    let var_2 = vec2<bool>(-56342i < ~(-_wgslsmith_sub_i32(arg_1.d.x, arg_1.d.x)), !(!var_0));
    return func_2();
}

fn func_5(arg_0: Struct_2, arg_1: bool) -> Struct_2 {
    var var_0 = arg_0.a.d.xz ^ firstLeadingBit(max(vec2<i32>(17426i, arg_0.a.d.x ^ arg_0.a.d.x), _wgslsmith_add_vec2_i32(arg_0.a.d.zx, vec2<i32>(-54187i, 0i)) ^ vec2<i32>(u_input.c, u_input.c)));
    var_0 = arg_0.a.d.zy;
    let var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0.a.b)))));
    var var_2 = ~firstTrailingBit(_wgslsmith_clamp_vec4_i32(-reverseBits(vec4<i32>(arg_0.a.d.x, 0i, 54343i, arg_0.a.d.x)), reverseBits(~vec4<i32>(62442i, -1i, -8320i, 1i)), _wgslsmith_div_vec4_i32(vec4<i32>(arg_0.a.d.x, var_0.x, 0i, 19000i) & vec4<i32>(25357i, arg_0.a.d.x, 1669i, 28784i), select(vec4<i32>(13365i, -41577i, -2147483647i, arg_0.a.d.x), vec4<i32>(0i, arg_0.a.d.x, 2147483647i, -1i), vec4<bool>(arg_1, false, arg_1, false)))));
    global0 = array<vec3<i32>, 19>();
    return Struct_2(Struct_1(~vec3<u32>(~0u, _wgslsmith_dot_vec3_u32(vec3<u32>(22381u, 4294967295u, 840u), arg_0.a.a), ~0u), -809f, 44778u, arg_0.a.d), 34055u);
}

fn func_1() -> bool {
    let var_0 = func_5(Struct_2(func_4(func_2(), Struct_1(~vec3<u32>(0u, u_input.d.x, 1u), _wgslsmith_f_op_f32(1065f * 1000f), firstLeadingBit(u_input.d.x), global0[_wgslsmith_index_u32(u_input.b, 19u)] << (vec3<u32>(u_input.d.x, 1u, u_input.d.x) % vec3<u32>(32u)))), ~u_input.d.x), true);
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1000f, var_0.a.b, -1894f, var_0.a.b), vec4<f32>(2184f, 1319f, -805f, var_0.a.b)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(456f * -2298f), var_0.a.b, 1691f, _wgslsmith_f_op_f32(var_0.a.b - -524f))))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.b, _wgslsmith_f_op_f32(-var_0.a.b), var_0.a.b, -469f)))));
    global0 = array<vec3<i32>, 19>();
    return _wgslsmith_add_i32(_wgslsmith_div_i32(countOneBits(reverseBits(var_0.a.d.x)), -_wgslsmith_div_i32(var_0.a.d.x, u_input.c)), -53116i) > -var_0.a.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(all(select(vec3<bool>(false, func_1(), true), select(vec3<bool>(false, false, false), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), true), true), !select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true)))), any(vec4<bool>(func_1() && true, true, u_input.c != abs(u_input.c), false)), any(!(!select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true)))), all(select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), true), true)));
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -1910f)));
    let var_2 = Struct_1(abs(_wgslsmith_mult_vec3_u32(vec3<u32>(min(u_input.a, u_input.a), u_input.b << (u_input.d.x % 32u), ~1u), vec3<u32>(1u, 0u, ~u_input.d.x))), _wgslsmith_f_op_f32(trunc(-1745f)), u_input.b, ~(-abs(reverseBits(vec3<i32>(u_input.c, 14874i, u_input.c)))));
    var_0 = select(select(!(!vec4<bool>(var_0.x, var_0.x, var_0.x, false)), !select(!vec4<bool>(true, var_0.x, var_0.x, false), vec4<bool>(var_0.x, var_0.x, false, var_0.x), vec4<bool>(false, var_0.x, false, true)), !vec4<bool>(!var_0.x, !var_0.x, true, true)), !vec4<bool>(var_0.x | true, true, var_0.x, !var_0.x | (var_2.d.x != var_2.d.x)), select(vec4<bool>(!(!var_0.x), var_0.x, false, all(vec3<bool>(false, var_0.x, true)) && true), select(vec4<bool>(var_0.x && false, !var_0.x, all(vec4<bool>(var_0.x, false, true, false)), true), vec4<bool>(false, any(var_0.yzz), true, var_0.x), !(!vec4<bool>(var_0.x, var_0.x, false, var_0.x))), !select(select(vec4<bool>(var_0.x, false, true, true), vec4<bool>(var_0.x, true, var_0.x, var_0.x), var_0.x), vec4<bool>(var_0.x, var_0.x, true, var_0.x), !vec4<bool>(false, var_0.x, false, false))));
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(-953f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.b + _wgslsmith_div_f32(715f, -443f)), -994f)), var_2.b);
    global0 = array<vec3<i32>, 19>();
    let var_4 = func_5(func_5(func_5(func_5(Struct_2(Struct_1(vec3<u32>(u_input.d.x, 1u, 20400u), var_2.b, u_input.b, global0[_wgslsmith_index_u32(u_input.d.x, 19u)]), 4294967295u), true), false), _wgslsmith_sub_i32(-12976i, i32(-1i) * -14327i) < ~(-var_2.d.x)), true);
    global0 = array<vec3<i32>, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(var_4.a.d.x, vec2<i32>(select(var_2.d.x, 52740i ^ -u_input.c, !(!var_0.x)), -24723i), ~(~firstTrailingBit(vec4<u32>(var_4.a.c, var_2.c, 0u, 4294967295u) & vec4<u32>(0u, var_4.b, var_2.c, var_2.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b) * 915f) - -722f)));
}

