struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: vec2<f32>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: vec4<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec2<u32>) -> bool {
    global0 = ~4294967295u;
    let var_0 = _wgslsmith_clamp_vec2_i32(_wgslsmith_clamp_vec2_i32(u_input.d.xy, ~u_input.d.zx, u_input.d.xx), u_input.d.yx, firstTrailingBit(u_input.d.zy | firstTrailingBit(vec2<i32>(5210i, -1i))));
    var var_1 = arg_0.x;
    var_1 = _wgslsmith_dot_vec4_u32(vec4<u32>(25443u, 78840u, _wgslsmith_dot_vec2_u32(countOneBits(~vec2<u32>(u_input.b.x, arg_0.x)), ~u_input.e.wx), (~arg_0.x | u_input.c) ^ _wgslsmith_add_u32(4294967295u, _wgslsmith_div_u32(u_input.a, 4294967295u))), firstLeadingBit(u_input.e));
    var var_2 = ~abs(u_input.a);
    return true;
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) - vec3<f32>(-252f, -657f, -1235f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(836f, -960f, -129f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-143f, 880f, -1196f) + vec3<f32>(-1355f, 470f, 1180f)))))));
    var var_1 = Struct_1(-38051i, ~(~vec4<u32>(1u, u_input.e.x << (49452u % 32u), u_input.e.x & 70635u, ~1804u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(var_0.xz)) * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, -329f) - var_0.yy) * var_0.yy)))), vec2<bool>(true, func_3(_wgslsmith_mult_vec2_u32(u_input.e.wx, u_input.e.xz)) && all(vec2<bool>(false, true))));
    let var_2 = min(u_input.d.wxy, select(vec3<i32>(_wgslsmith_div_i32(u_input.d.x, -47852i) | -1i, ~1i, u_input.d.x), vec3<i32>(u_input.d.x, _wgslsmith_mult_i32(u_input.d.x, var_1.a << (87891u % 32u)), reverseBits(firstTrailingBit(u_input.d.x))), true));
    var var_3 = Struct_1(var_1.a, abs(firstTrailingBit(u_input.e)), var_1.c, select(vec2<bool>(select(var_1.d.x, true, all(var_1.d)), any(select(vec4<bool>(true, var_1.d.x, true, true), vec4<bool>(true, var_1.d.x, false, var_1.d.x), vec4<bool>(var_1.d.x, var_1.d.x, false, var_1.d.x)))), var_1.d, vec2<bool>(false, var_1.d.x)));
    var_1 = Struct_1(_wgslsmith_clamp_i32(var_1.a, u_input.d.x, -1i), abs(vec4<u32>(firstTrailingBit(var_1.b.x), var_1.b.x | u_input.c, ~0u, 68485u)) << ((vec4<u32>(_wgslsmith_mult_u32(24687u, 50534u), 0u, ~1u, 72995u) ^ ~abs(var_3.b)) % vec4<u32>(32u)), vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.x))), _wgslsmith_f_op_f32(sign(var_1.c.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1000f, 133f, var_3.d.x)) * _wgslsmith_f_op_f32(step(-1416f, var_3.c.x))) * _wgslsmith_f_op_f32(-1084f - -1027f))), select(vec2<bool>(all(!vec4<bool>(var_1.d.x, false, var_3.d.x, false)), var_3.d.x), select(vec2<bool>(var_1.d.x != var_1.d.x, var_2.x >= var_1.a), select(var_1.d, var_1.d, vec2<bool>(false, true)), select(true, true, !var_3.d.x)), true));
    return Struct_1(~(~1i), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, ~(~var_1.b.x), ~(~0u), u_input.c), vec4<u32>(var_1.b.x, ~_wgslsmith_dot_vec3_u32(var_3.b.xyx, var_1.b.zxx), var_1.b.x, _wgslsmith_div_u32(0u, 33738u))), var_0.xy, var_3.d);
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: u32, arg_3: Struct_1) -> u32 {
    let var_0 = !func_3(countOneBits(vec2<u32>(1u, 1u)) | ~(~arg_1.b.zx));
    var var_1 = arg_3;
    let var_2 = arg_1;
    let var_3 = _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1000f, _wgslsmith_f_op_f32(-var_1.c.x))));
    var var_4 = arg_1;
    return reverseBits(~firstTrailingBit(10707u));
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_1(u_input.d.x, ~vec4<u32>(func_4(max(vec3<u32>(u_input.a, 0u, 53635u), vec3<u32>(u_input.b.x, 1u, 47311u)), Struct_1(-40704i, vec4<u32>(43749u, u_input.a, u_input.a, 0u), vec2<f32>(-672f, -779f), vec2<bool>(false, false)), ~u_input.a, func_2()), firstLeadingBit(firstLeadingBit(u_input.e.x)), 4294967295u, 4294967295u), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-594f, _wgslsmith_f_op_f32(-283f * _wgslsmith_f_op_f32(min(1000f, -1453f)))))), select(vec2<bool>(true, true), !vec2<bool>(all(vec3<bool>(false, true, false)), true), true));
    let var_1 = Struct_1(-2147483647i, vec4<u32>(var_0.b.x & select(7301u, 22953u, var_0.d.x), _wgslsmith_mult_u32(var_0.b.x, _wgslsmith_dot_vec4_u32(u_input.e, vec4<u32>(u_input.b.x, u_input.a, 98890u, u_input.e.x))), _wgslsmith_div_u32(4294967295u, u_input.b.x | 54793u), _wgslsmith_mult_u32(~var_0.b.x, 28891u)) ^ var_0.b, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-func_2().c), var_0.c), var_0.d);
    let var_2 = func_2();
    var var_3 = func_2();
    let var_4 = vec3<bool>(func_2().d.x, true, !(~var_2.a < -1i));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(417f + -213f) + 1447f);
    var var_1 = Struct_1(43960i, countOneBits(_wgslsmith_mod_vec4_u32(countOneBits(vec4<u32>(u_input.e.x, u_input.a, 30032u, u_input.a)), vec4<u32>(76757u, 38161u, 1u, u_input.e.x)) & _wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.e.x, 4294967295u, u_input.a, 4294967295u), vec4<u32>(u_input.a, 1u, 30086u, u_input.b.x)), _wgslsmith_mult_vec4_u32(u_input.e, vec4<u32>(u_input.a, 1u, 15500u, u_input.b.x)))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0, -260f))), vec2<bool>(any(vec3<bool>(true, true, true)) | true, ((u_input.c > 78153u) || all(vec4<bool>(true, true, false, true))) & !select(true, true, true)));
    var var_2 = func_1();
    var var_3 = (firstLeadingBit(min(max(u_input.d.xw, vec2<i32>(var_2.a, var_2.a)), ~vec2<i32>(var_2.a, -2147483647i))) | _wgslsmith_add_vec2_i32(_wgslsmith_clamp_vec2_i32(~vec2<i32>(1i, var_1.a), -vec2<i32>(25160i, u_input.d.x), -u_input.d.yz), _wgslsmith_mod_vec2_i32(vec2<i32>(-7345i, var_1.a), u_input.d.xw))) >> ((var_1.b.yz & u_input.e.wy) % vec2<u32>(32u));
    let var_4 = var_1.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_0, var_0, 875f, -1115f), vec4<f32>(var_1.c.x, var_1.c.x, 351f, 160f)) + vec4<f32>(-940f, 1306f, var_0, var_2.c.x)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.c.x, var_0, var_2.c.x, -1585f) + vec4<f32>(var_2.c.x, var_1.c.x, 346f, var_0)))), 25960i);
}

