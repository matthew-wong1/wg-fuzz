struct Struct_1 {
    a: bool,
    b: bool,
    c: u32,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<i32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec3<u32>) -> bool {
    var var_0 = Struct_1(!(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1010f, 766f))) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -684f) * 1137f)), true, u_input.b, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(463f, 428f, -1000f) - vec3<f32>(1286f, -510f, -166f))))))));
    var_0 = Struct_1(true, var_0.b, ~u_input.b, var_0.d);
    var_0 = Struct_1(var_0.b, any(!(!(!vec3<bool>(var_0.a, false, var_0.b)))), arg_0.x, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1013f, 934f, -1880f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(var_0.d))), !(!vec3<bool>(var_0.b, var_0.a, var_0.b)))), _wgslsmith_f_op_vec3_f32(step(var_0.d, var_0.d))));
    var_0 = Struct_1(true, ~abs(u_input.a ^ u_input.a) < 0i, arg_0.x >> (~var_0.c % 32u), var_0.d);
    var_0 = Struct_1(var_0.b, var_0.a, countOneBits(_wgslsmith_add_u32(_wgslsmith_sub_u32(u_input.b, var_0.c), 1u)), _wgslsmith_f_op_vec3_f32(var_0.d * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.d.x, var_0.d.x, var_0.d.x), vec3<f32>(-656f, 578f, -353f), true))))))));
    return var_0.b;
}

fn func_2() -> vec3<f32> {
    var var_0 = !func_3(firstTrailingBit(vec3<u32>(u_input.b, ~1u, ~u_input.b)));
    var_0 = ((~_wgslsmith_mult_u32(u_input.b, 0u) & ~u_input.b) >= ~_wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(63987u, u_input.b)), vec2<u32>(u_input.b, 0u))) | (4294967295u > u_input.b);
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1551f, -1040f, -716f, -1096f)))), vec4<f32>(_wgslsmith_f_op_f32(2148f + -729f), _wgslsmith_f_op_f32(max(1091f, 192f)), _wgslsmith_f_op_f32(f32(-1f) * -332f), -1233f))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1367f + -819f) - _wgslsmith_f_op_f32(select(-1000f, -169f, false))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1645f), -265f, true)), -1774f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1135f * -1026f) - _wgslsmith_f_op_f32(step(-3241f, -2006f))))));
    var_0 = true;
    var var_2 = Struct_1(all(!vec3<bool>(u_input.a < 0i, u_input.b != u_input.b, true)), any(!select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), false), vec3<bool>(true, false, true), vec3<bool>(false, false, true))), 1u, var_1.wyz);
    return vec3<f32>(223f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.d.x + 855f)))), _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_2.d.x, -535f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1.x)) - _wgslsmith_f_op_f32(floor(var_1.x))))));
}

fn func_1() -> f32 {
    var var_0 = Struct_1(all(vec2<bool>(true, true)), any(vec2<bool>(true, true)), 6542u, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-940f)) - 374f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(622f, -449f)), 171f) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(func_2()), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(659f, -133f, -2074f), vec3<f32>(-811f, -1000f, -430f)) * vec3<f32>(-589f, -611f, -1378f))))));
    let var_1 = false;
    var_0 = Struct_1(false, false, ~abs(_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(var_0.c, u_input.b)), vec2<u32>(u_input.b, 67590u) | vec2<u32>(0u, 4294967295u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.d + _wgslsmith_f_op_vec3_f32(vec3<f32>(1419f, 127f, var_0.d.x) * vec3<f32>(var_0.d.x, var_0.d.x, var_0.d.x))) * var_0.d)));
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-700f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(354f)))), var_0.d.x, _wgslsmith_f_op_f32(2300f + 689f), var_0.d.x));
    var var_3 = vec3<bool>(!(!(select(var_0.b, true, var_1) || true)), !all(!(!vec3<bool>(var_0.b, false, var_1))), !(98546u <= u_input.b));
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(var_0.d.x)))) * 778f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(all(vec3<bool>(true, true, true)), false, _wgslsmith_sub_u32(u_input.b, u_input.b), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-743f)), _wgslsmith_f_op_f32(func_1()))), -900f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(127f)))))));
    var var_1 = Struct_1(1u <= _wgslsmith_clamp_u32(78547u, firstTrailingBit(var_0.c << (var_0.c % 32u)), _wgslsmith_mult_u32(u_input.b & var_0.c, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.c, u_input.b, 0u, 8877u), vec4<u32>(u_input.b, var_0.c, var_0.c, u_input.b)))), true, abs(~u_input.b), var_0.d);
    let x = u_input.a;
    s_output = StorageBuffer(616f, firstLeadingBit(-_wgslsmith_clamp_i32(-u_input.a, u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -19488i, -2147483647i, -49756i), vec4<i32>(u_input.a, u_input.a, -2147483647i, u_input.a)))), _wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(select(-vec3<i32>(u_input.a, -25765i, -2147483647i), vec3<i32>(2147483647i, 1i, u_input.a) << (vec3<u32>(7071u, u_input.b, var_0.c) % vec3<u32>(32u)), u_input.a > u_input.a), _wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(-1i, -19599i, -2147483647i)), vec3<i32>(u_input.a, u_input.a, 0i))), ~(~(vec3<i32>(-2147483647i, 43718i, 36008i) | vec3<i32>(u_input.a, u_input.a, 1i))), ~vec3<i32>(u_input.a, ~0i, _wgslsmith_div_i32(u_input.a, u_input.a))), ~abs(max(vec2<u32>(var_1.c, 4294967295u), vec2<u32>(u_input.b, 13094u)) >> (select(vec2<u32>(4294967295u, 1u), vec2<u32>(1u, u_input.b), true) % vec2<u32>(32u))));
}

