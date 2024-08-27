struct Struct_1 {
    a: vec4<i32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: f32,
    c: bool,
    d: vec2<f32>,
}

struct Struct_4 {
    a: bool,
    b: u32,
    c: i32,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: u32, arg_1: Struct_2) -> f32 {
    let var_0 = Struct_4(arg_1.a.b == _wgslsmith_f_op_f32(-arg_1.b.b), _wgslsmith_clamp_u32(4294967295u, max(_wgslsmith_clamp_u32(98206u, ~arg_0, 25487u), 4294967295u), 62856u), -2147483647i);
    let var_1 = Struct_2(arg_1.a, arg_1.b);
    let var_2 = arg_1;
    var var_3 = _wgslsmith_f_op_f32(min(1227f, -225f));
    let var_4 = Struct_1(vec4<i32>(2147483647i ^ abs(arg_1.b.a.x), 1i & var_2.a.a.x, -abs(arg_1.b.a.x), ~var_1.a.a.x | _wgslsmith_div_i32(var_1.a.a.x, -72981i | u_input.b)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(646f * _wgslsmith_f_op_f32(floor(var_2.a.b))) * arg_1.b.b))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_1.b.b))) + _wgslsmith_f_op_f32(sign(876f)))));
}

fn func_2() -> Struct_5 {
    var var_0 = any(vec2<bool>(true, true));
    var var_1 = any(!select(vec4<bool>(true, true, true, true), vec4<bool>(u_input.d < u_input.d, false, any(vec4<bool>(true, true, false, true)), all(vec4<bool>(true, true, false, true))), all(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false)))));
    var_1 = any(vec4<bool>(false, true, _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(select(-1221f, 104f, true))) <= _wgslsmith_f_op_f32(func_3(18732u, Struct_2(Struct_1(vec4<i32>(u_input.b, -2147483647i, u_input.e.x, -1i), 813f), Struct_1(vec4<i32>(u_input.a.x, u_input.e.x, u_input.b, 1i), 832f)))), all(select(vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(false, true)))));
    var_1 = true == !all(vec3<bool>(any(vec2<bool>(true, true)), true, true));
    var var_2 = 12608u;
    return Struct_5(Struct_3(~(~vec2<u32>(u_input.d, 13798u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + 254f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(413f - 432f)))), true, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_div_f32(-2201f, -1000f), -1679f), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1331f, 445f) + vec2<f32>(863f, 1000f)), vec2<f32>(-239f, 1829f)), false))));
}

fn func_4(arg_0: Struct_5, arg_1: Struct_3, arg_2: i32) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1000f, -1339f, arg_0.a.d.x)))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, arg_1.b, 369f)))))));
    return vec2<bool>(false, all(!select(select(vec2<bool>(arg_1.c, false), vec2<bool>(false, arg_1.c), vec2<bool>(false, false)), !vec2<bool>(arg_0.a.c, arg_1.c), vec2<bool>(arg_0.a.c, arg_1.c))));
}

fn func_1() -> vec3<bool> {
    let var_0 = select(!select(select(vec2<bool>(false, true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), false)), select(vec2<bool>(true, true), vec2<bool>(true, true), true), -1i < u_input.a.x), !select(vec2<bool>(true, true), vec2<bool>(true, false), func_4(func_2(), Struct_3(vec2<u32>(u_input.c, u_input.c), -583f, false, vec2<f32>(-533f, -649f)), _wgslsmith_mod_i32(u_input.a.x, u_input.b))), select(!select(func_4(Struct_5(Struct_3(vec2<u32>(61016u, 0u), -309f, false, vec2<f32>(-1545f, 326f))), Struct_3(vec2<u32>(u_input.c, u_input.d), 935f, true, vec2<f32>(611f, -1099f)), u_input.b), vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false))), vec2<bool>(true, true), select(!select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, true), all(vec3<bool>(true, false, true)) || true)));
    var var_1 = Struct_1(select(~vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.e, u_input.e), 0i, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.e.x, u_input.a.x, u_input.a.x), vec4<i32>(25301i, 2147483647i, -33398i, -28728i)), -47582i), max(firstLeadingBit(vec4<i32>(18180i, u_input.a.x, u_input.a.x, 17423i)), vec4<i32>(~0i, _wgslsmith_mult_i32(u_input.b, u_input.b), ~(-34411i), -2147483647i)), reverseBits(-65103i) != u_input.e.x), func_2().a.b);
    let var_2 = _wgslsmith_clamp_i32(-52151i, -35381i, -8975i);
    let var_3 = var_1.b;
    var var_4 = var_0.x;
    return !vec3<bool>(var_0.x, !(!var_0.x), all(!vec4<bool>(true, var_0.x, var_0.x, var_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(func_1()) == select(any(select(vec3<bool>(false, true, false), func_1(), func_1().x)), true, true);
    var_0 = true;
    var_0 = 1000f != _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-func_2().a.b), 1263f, 4294967295u != ~(u_input.c ^ 102860u)));
    var_0 = !(true & (any(func_4(Struct_5(Struct_3(vec2<u32>(u_input.d, u_input.d), 900f, true, vec2<f32>(1000f, -379f))), Struct_3(vec2<u32>(u_input.d, 1u), 662f, true, vec2<f32>(-311f, 341f)), u_input.a.x)) || false));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(~u_input.a));
}

