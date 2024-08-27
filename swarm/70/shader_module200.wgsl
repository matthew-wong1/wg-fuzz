struct Struct_1 {
    a: bool,
    b: i32,
    c: vec4<bool>,
    d: bool,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: bool,
    c: Struct_3,
}

struct Struct_5 {
    a: bool,
    b: Struct_2,
    c: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: vec2<f32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> vec2<f32> {
    let var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1377f * -657f), _wgslsmith_f_op_f32(-174f + -1353f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -128f), _wgslsmith_f_op_f32(-577f + 1308f)), 1719f, _wgslsmith_f_op_f32(-328f + 1934f)) * vec4<f32>(856f, _wgslsmith_div_f32(616f, 279f), _wgslsmith_f_op_f32(f32(-1f) * -160f), -1335f)), Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(580f, -1973f, -687f)))), Struct_1(any(vec2<bool>(true, false)), abs(-14370i), !select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false)), all(vec4<bool>(false, false, true, true)) == true), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-3208f)))))));
    var var_1 = _wgslsmith_f_op_vec2_f32(select(var_0.b.a.yz, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(2232f - var_0.b.a.x))))), vec2<bool>(any(!(!var_0.b.b.c.wx)), !var_0.b.b.c.x && false)));
    var var_2 = Struct_3(vec4<f32>(689f, var_0.b.a.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-536f, var_1.x))), var_0.a.x)), _wgslsmith_f_op_f32(-2185f - _wgslsmith_f_op_f32(-var_1.x))), var_0.b);
    let var_3 = 57629i;
    let var_4 = !var_2.b.b.c.wx;
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-510f, var_2.b.a.x)))), _wgslsmith_f_op_vec2_f32(-var_2.a.zx), var_0.b.b.c.x)) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.a.x - _wgslsmith_f_op_f32(-var_1.x)) + 470f), _wgslsmith_f_op_f32(abs(-127f))));
}

fn func_2(arg_0: f32) -> vec3<u32> {
    let var_0 = Struct_4(0u, u_input.a.x <= (firstTrailingBit(_wgslsmith_div_u32(u_input.b.x, u_input.a.x)) | u_input.a.x), Struct_3(vec4<f32>(-408f, _wgslsmith_f_op_f32(sign(arg_0)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1442f * arg_0))), 265f), Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, -238f, -164f)), Struct_1(true, _wgslsmith_dot_vec3_i32(vec3<i32>(87089i, -2147483647i, -33734i), vec3<i32>(14325i, -1i, -1155i)), vec4<bool>(true, true, true, true), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2927f * 841f)))));
    var var_1 = vec2<f32>(var_0.c.b.c, 863f);
    let var_2 = u_input.b.zw;
    var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(var_0.c.b.a.xy, var_0.c.a.ww))) * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3()) + _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(514f, var_1.x)))), _wgslsmith_f_op_vec2_f32(func_3()))));
    var_1 = var_0.c.b.a.xz;
    return abs(vec3<u32>(68616u, 1u, var_0.a));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec4<i32>, arg_2: Struct_3, arg_3: f32) -> vec4<u32> {
    var var_0 = vec2<u32>(_wgslsmith_dot_vec3_u32(u_input.a, select(~u_input.a, ~u_input.b.zyx, !vec3<bool>(arg_2.b.b.c.x, true, arg_2.b.b.a)) ^ func_2(_wgslsmith_f_op_f32(ceil(313f)))), u_input.b.x);
    let var_1 = arg_1.x;
    let var_2 = ~(~(-vec4<i32>(var_1, arg_1.x, -1i, arg_2.b.b.b)));
    var var_3 = !vec2<bool>(false, any(!vec4<bool>(arg_2.b.b.d, arg_2.b.b.d, true, false)));
    let var_4 = arg_2;
    return _wgslsmith_clamp_vec4_u32(u_input.b, vec4<u32>(countOneBits(_wgslsmith_dot_vec3_u32(reverseBits(u_input.a), firstTrailingBit(vec3<u32>(u_input.b.x, var_0.x, var_0.x)))), _wgslsmith_mult_u32(~4294967295u, firstTrailingBit(u_input.b.x)), 9021u, 4294967295u), u_input.b);
}

fn func_4(arg_0: u32) -> Struct_1 {
    let var_0 = Struct_5(false, Struct_2(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-793f, 481f, 2002f), vec3<f32>(-1962f, 848f, -1000f))))), Struct_1(4294967295u < arg_0, -23687i, vec4<bool>(true, true, true, true), false), 265f), -60720i);
    let var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.b.c, -681f, var_0.b.a.x, -1171f), vec4<f32>(1000f, var_0.b.a.x, var_0.b.c, -2330f)))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.a.x, var_0.b.a.x, var_0.b.a.x, 1000f) + vec4<f32>(1000f, -363f, var_0.b.c, 475f)))))), var_0.b);
    var var_2 = -vec3<i32>(-_wgslsmith_div_i32(var_1.b.b.b, 1i), 2147483647i, firstLeadingBit(select(var_0.b.b.b, var_0.b.b.b ^ 1i, var_0.a)));
    var var_3 = min(vec3<u32>(0u, 0u, u_input.a.x), ~(~u_input.b.wxy));
    let var_4 = var_1;
    return var_4.b.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = countOneBits(~vec2<i32>(36033i, ~(~1i)));
    var var_1 = !(any(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true))) || false);
    let var_2 = func_4(_wgslsmith_add_u32(4294967295u, abs(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 1u, u_input.b.x, 65223u) << (vec4<u32>(u_input.b.x, u_input.a.x, u_input.a.x, 65210u) % vec4<u32>(32u)), func_1(vec3<f32>(2683f, 150f, -684f), vec4<i32>(0i, 0i, var_0.x, 3974i), Struct_3(vec4<f32>(908f, -561f, -1000f, 344f), Struct_2(vec3<f32>(1829f, -461f, -219f), Struct_1(true, 2147483647i, vec4<bool>(false, true, true, true), false), 420f)), -610f)))));
    var var_3 = Struct_3(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1000f * 167f), _wgslsmith_div_f32(-1554f, 790f))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-136f, 1015f), _wgslsmith_f_op_f32(select(339f, 526f, true)), all(vec3<bool>(var_2.a, true, false))))), _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(f32(-1f) * -1250f)), -1777f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1147f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(584f + 1595f))))), Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1013f, 553f, 170f) + vec3<f32>(321f, 484f, 273f)))), var_2, 613f));
    var_1 = true;
    let var_4 = 25855u;
    var_3 = Struct_3(var_3.a, var_3.b);
    var_1 = true;
    let var_5 = u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(3566u, 4294967295u), ~(-65355i), var_5, vec2<f32>(1105f, _wgslsmith_f_op_vec2_f32(func_3()).x), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2502f), var_3.a.x, 548f));
}

