struct Struct_1 {
    a: vec3<f32>,
    b: vec3<f32>,
    c: i32,
    d: bool,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<i32>,
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

var<private> global0: Struct_1 = Struct_1(vec3<f32>(-650f, 403f, -1276f), vec3<f32>(1000f, 810f, 340f), 2147483647i, false, 0u);

var<private> global1: bool;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_1) -> vec4<i32> {
    global1 = any(!vec4<bool>(true, -arg_2.c > u_input.c.x, arg_0.d, select(select(false, arg_0.d, arg_2.d), any(vec3<bool>(false, arg_2.d, false)), false)));
    global1 = select(any(vec4<bool>(_wgslsmith_f_op_f32(-global0.a.x) == _wgslsmith_div_f32(-159f, global0.b.x), arg_0.d, false, _wgslsmith_f_op_f32(f32(-1f) * -2143f) <= _wgslsmith_f_op_f32(ceil(arg_2.b.x)))), any(select(vec4<bool>(true, true, true, !arg_2.d), !vec4<bool>(false, arg_0.d, arg_2.d, global0.d), any(vec2<bool>(global0.d, false)))), all(select(select(select(vec2<bool>(global0.d, arg_2.d), vec2<bool>(false, true), arg_2.d), vec2<bool>(arg_0.d, arg_2.d), false), !(!vec2<bool>(true, global0.d)), !global0.d && (global0.c <= 2147483647i))));
    let var_0 = vec4<bool>(all(vec3<bool>(true, true, !any(vec2<bool>(true, global0.d)))), _wgslsmith_mod_i32(arg_2.c, _wgslsmith_sub_i32(~arg_0.c, _wgslsmith_sub_i32(-1i, global0.c))) != -_wgslsmith_mult_i32(firstLeadingBit(26858i), ~arg_2.c), arg_0.d, global0.a.x != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.x)));
    global1 = !var_0.x;
    var var_1 = var_0.yxw;
    return abs(_wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(~reverseBits(vec4<i32>(2147483647i, 2147483647i, arg_2.c, 38701i)), vec4<i32>(1i, i32(-1i) * -2147483647i, -u_input.c.x, 1i), vec4<i32>(countOneBits(-3179i), global0.c, i32(-1i) * -34895i, 2147483647i)), ~vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.c, u_input.c.x, -32536i), vec3<i32>(arg_0.c, 11356i, 41044i)), _wgslsmith_mult_i32(u_input.c.x, 17139i), max(57561i, -21002i), arg_0.c)));
}

fn func_2() -> f32 {
    global1 = any(vec3<bool>(global0.d, global0.d, false));
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-145f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(global0.b.x)), _wgslsmith_f_op_f32(-global0.b.x))), _wgslsmith_div_f32(1130f, _wgslsmith_f_op_f32(-global0.a.x))), global0.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.b + global0.a)), ~_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -1i, global0.c | global0.c, abs(0i)), ~(vec4<i32>(u_input.c.x, u_input.c.x, -1i, global0.c) ^ vec4<i32>(global0.c, global0.c, global0.c, u_input.c.x))), !(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -737f), _wgslsmith_f_op_f32(global0.a.x + -531f)) <= global0.b.x), ~firstLeadingBit(1u) >> (firstLeadingBit(_wgslsmith_div_u32(u_input.a, ~u_input.b.x)) % 32u));
    var var_1 = vec4<f32>(var_0.b.x, var_0.b.x, _wgslsmith_f_op_f32(select(var_0.b.x, 1744f, any(select(!vec2<bool>(var_0.d, global0.d), vec2<bool>(var_0.d, global0.d), any(vec4<bool>(true, var_0.d, global0.d, false)))))), global0.b.x);
    global1 = true;
    var var_2 = firstLeadingBit(func_3(Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-641f, var_1.x, global0.b.x) - _wgslsmith_f_op_vec3_f32(global0.a * vec3<f32>(var_1.x, -1277f, 1162f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(174f, var_0.a.x, var_0.b.x))), _wgslsmith_add_i32(-1i, abs(-38316i)), global0.d, var_0.e), ~u_input.b, var_0));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0.a.x))) * _wgslsmith_f_op_f32(round(-1000f)))) * var_1.x);
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.x) * _wgslsmith_f_op_f32(-168f * arg_0.b.x)), true))) + _wgslsmith_f_op_f32(f32(-1f) * -1114f));
    let var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-395f - _wgslsmith_div_f32(1843f, global0.b.x)) - _wgslsmith_f_op_f32(f32(-1f) * -146f)), 1131f, 1000f), vec3<f32>(_wgslsmith_f_op_f32(-567f * arg_0.b.x), 917f, _wgslsmith_f_op_f32(abs(417f))), reverseBits(global0.c), !select(false, any(vec4<bool>(arg_0.d, global0.d, true, global0.d)), arg_0.d), _wgslsmith_mult_u32(firstLeadingBit(u_input.a << (u_input.a % 32u)) >> (u_input.b.x % 32u), _wgslsmith_mod_u32(~firstTrailingBit(33041u), _wgslsmith_dot_vec3_u32(countOneBits(u_input.b), u_input.b))));
    var var_2 = var_1;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.b.x))) + -1350f);
    var var_4 = arg_0;
    return Struct_1(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.x, 104f, global0.a.x)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-288f, -1180f, 2206f) + vec3<f32>(162f, var_2.a.x, var_1.a.x)) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(353f, var_4.b.x, -360f), vec3<f32>(var_1.a.x, var_1.a.x, -336f), vec3<bool>(true, arg_0.d, var_2.d))))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_4.a.x, _wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_f_op_f32(-var_2.a.x)) * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.x) - 1000f), var_1.a.x, _wgslsmith_f_op_f32(-1f))), 2147483647i, true, select(~countOneBits(29690u), ~19582u, true));
}

fn func_1() -> f32 {
    global0 = func_4(Struct_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(global0.b.x * global0.a.x), _wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(floor(-1164f))), _wgslsmith_f_op_vec3_f32(select(global0.b, _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.b.x, 1360f, 690f) + vec3<f32>(global0.a.x, 1000f, 1738f)), true)), !global0.d)), vec3<f32>(514f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1467f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(1160f)), 545f)), 25284i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0.b.x, global0.a.x, true)) * _wgslsmith_div_f32(global0.b.x, -113f)) < _wgslsmith_f_op_f32(global0.a.x + _wgslsmith_f_op_f32(func_2())), ~(~min(14516u, 29491u))));
    var var_0 = abs(-36035i);
    return _wgslsmith_f_op_f32(f32(-1f) * -665f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 424f;
    global0 = Struct_1(global0.b, vec3<f32>(global0.a.x, -2183f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-420f * _wgslsmith_f_op_f32(func_1()))))), _wgslsmith_mod_i32(u_input.c.x, u_input.c.x), all(select(vec3<bool>(!global0.d, false, false), vec3<bool>(!global0.d, true, global0.d), any(vec3<bool>(true, global0.d, true)))), 1u);
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.x, var_0, global0.b.x)) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0, var_0, -555f), global0.b)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(global0.b, vec3<f32>(var_0, 524f, 663f))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -195f), _wgslsmith_f_op_f32(397f + -2103f), var_0))), global0.c, false, _wgslsmith_mult_u32(global0.e, u_input.b.x));
    var var_1 = abs(u_input.c);
    var var_2 = vec2<u32>(0u, min(4294967295u, 0u));
    var var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2045f) + _wgslsmith_f_op_f32(f32(-1f) * -417f)), -833f, _wgslsmith_f_op_f32(func_2())) + global0.b), vec3<f32>(_wgslsmith_f_op_f32(func_1()), -1317f, _wgslsmith_f_op_f32(func_2())), -23908i, global0.d, firstTrailingBit(u_input.b.x));
    let var_4 = Struct_1(vec3<f32>(173f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(global0.a.x)))))), _wgslsmith_f_op_f32(f32(-1f) * -1234f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-var_3.b))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.a), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global0.a.x, -1069f, -1000f))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(var_3.b + vec3<f32>(-1530f, -319f, var_0)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, -1306f, -223f)))) * global0.a)), select(max(-(global0.c | var_1.x), u_input.c.x | firstLeadingBit(1i)), 1i, !any(select(vec4<bool>(global0.d, global0.d, false, var_3.d), vec4<bool>(false, var_3.d, var_3.d, var_3.d), vec4<bool>(true, global0.d, global0.d, var_3.d)))), all(select(!(!vec2<bool>(false, global0.d)), select(!vec2<bool>(true, global0.d), select(vec2<bool>(true, true), vec2<bool>(global0.d, true), false), false), !select(vec2<bool>(var_3.d, false), vec2<bool>(true, true), global0.d))), _wgslsmith_div_u32(0u, max(1u, _wgslsmith_div_u32(0u, 1u))));
    let var_5 = _wgslsmith_div_f32(639f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1312f + var_0)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(39183i, -22970i ^ var_1.x), vec2<i32>(~0i, -_wgslsmith_sub_i32(-2147483647i, var_1.x)));
}

