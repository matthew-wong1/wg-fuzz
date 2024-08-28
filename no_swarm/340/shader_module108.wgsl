struct Struct_1 {
    a: vec4<i32>,
    b: vec4<bool>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: f32,
    d: vec3<f32>,
    e: vec3<bool>,
}

struct Struct_4 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: vec3<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: vec3<bool> = vec3<bool>(false, false, true);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: Struct_3) -> u32 {
    var var_0 = arg_1.a;
    global1 = !(!(!(!arg_2.e)));
    global0 = false;
    global1 = vec3<bool>(global1.x, arg_1.a.b.x, arg_2.e.x && true);
    let var_1 = u_input.b > 4294967295u;
    return abs(_wgslsmith_dot_vec2_u32(~_wgslsmith_mult_vec2_u32(u_input.c.yx ^ vec2<u32>(18380u, 17475u), abs(vec2<u32>(u_input.c.x, 0u))), ~u_input.d.zx));
}

fn func_2(arg_0: bool, arg_1: i32) -> vec3<f32> {
    global0 = !all(vec2<bool>(!any(vec4<bool>(true, false, arg_0, false)), false));
    var var_0 = vec3<u32>(u_input.b, abs(1u), min(~(1u >> (1u % 32u)) << (firstTrailingBit(u_input.e.x | 11345u) % 32u), _wgslsmith_add_u32((15293u & u_input.d.x) & 1896u, 40026u)));
    let var_1 = -4772i & arg_1;
    var_0 = vec3<u32>(abs(u_input.b), ~func_3(-(vec2<i32>(arg_1, 21883i) >> (var_0.zz % vec2<u32>(32u))), Struct_2(Struct_1(vec4<i32>(var_1, 0i, -1i, -5918i), vec4<bool>(true, arg_0, true, global1.x), var_1), Struct_1(vec4<i32>(arg_1, var_1, var_1, 2147483647i), vec4<bool>(false, true, false, global1.x), -1i), Struct_1(vec4<i32>(arg_1, 2147483647i, -1i, 1i), vec4<bool>(true, arg_0, global1.x, false), var_1)), Struct_3(false, ~var_0.x, -487f, vec3<f32>(-3068f, 1257f, -474f), select(vec3<bool>(global1.x, true, arg_0), vec3<bool>(true, global1.x, global1.x), false))), var_0.x);
    var_0 = ~u_input.d;
    return _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1217f), _wgslsmith_div_f32(539f, -729f), -958f))))));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<f32>) -> Struct_4 {
    let var_0 = Struct_4(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-arg_1.zzz), vec3<f32>(1115f, -965f, _wgslsmith_f_op_f32(-790f * arg_1.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2(false, -25142i)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, arg_1.x, arg_1.x)))))));
    let var_1 = Struct_2(Struct_1(~arg_0.a, arg_0.b, i32(-1i) * -36346i), Struct_1(vec4<i32>(~13072i, arg_0.a.x, abs(arg_0.a.x), i32(-1i) * -20662i), select(select(!vec4<bool>(false, arg_0.b.x, arg_0.b.x, false), !arg_0.b, select(arg_0.b, arg_0.b, arg_0.b.x)), select(select(vec4<bool>(global1.x, false, arg_0.b.x, arg_0.b.x), vec4<bool>(true, true, global1.x, false), vec4<bool>(true, global1.x, false, global1.x)), select(arg_0.b, arg_0.b, false), select(vec4<bool>(arg_0.b.x, false, arg_0.b.x, global1.x), vec4<bool>(arg_0.b.x, true, true, arg_0.b.x), true)), all(!arg_0.b.yx)), _wgslsmith_mult_i32(~max(arg_0.c, arg_0.c), reverseBits(_wgslsmith_mod_i32(arg_0.c, arg_0.a.x)))), arg_0);
    var var_2 = Struct_2(var_1.c, Struct_1(vec4<i32>(var_1.c.a.x, _wgslsmith_add_i32(_wgslsmith_mult_i32(arg_0.c, arg_0.c), arg_0.a.x), 17837i, 1i), arg_0.b, arg_0.c), Struct_1(var_1.c.a, var_1.b.b, 7670i));
    global0 = all(!arg_0.b.zz);
    var_2 = var_1;
    return Struct_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_1.x, _wgslsmith_f_op_f32(-292f * 312f), 978f), vec3<f32>(_wgslsmith_f_op_f32(sign(2020f)), arg_1.x, _wgslsmith_div_f32(-387f, 832f)))) + _wgslsmith_f_op_vec3_f32(func_2(all(vec4<bool>(false, true, var_1.b.b.x, false)), -12129i))));
}

fn func_4(arg_0: Struct_4) -> Struct_1 {
    let var_0 = ~select(~max(~1u, u_input.c.x & u_input.a), u_input.a, false);
    let var_1 = _wgslsmith_mult_i32(-6116i, 67684i);
    global1 = select(select(!vec3<bool>(14629u == var_0, false, select(false, global1.x, true)), vec3<bool>(select(any(vec3<bool>(true, global1.x, false)), true, select(false, global1.x, global1.x)), !select(global1.x, global1.x, global1.x), true), any(select(vec3<bool>(false, global1.x, global1.x), select(vec3<bool>(global1.x, true, true), vec3<bool>(global1.x, false, true), vec3<bool>(global1.x, true, global1.x)), select(vec3<bool>(true, global1.x, true), vec3<bool>(false, false, global1.x), vec3<bool>(false, true, true))))), vec3<bool>(any(vec3<bool>(global1.x, !global1.x, select(true, true, false))), any(vec2<bool>(arg_0.a.x <= -264f, global1.x)), global1.x), global1.x);
    global0 = false;
    let var_2 = 1u;
    return Struct_1(~abs(vec4<i32>(var_1, firstTrailingBit(-35391i), max(-39673i, var_1), i32(-1i) * -1i)), select(vec4<bool>(true, var_2 >= 37103u, any(select(vec2<bool>(false, global1.x), global1.yz, global1.yx)), true), select(select(select(vec4<bool>(true, global1.x, true, false), vec4<bool>(false, global1.x, false, true), true), !vec4<bool>(false, global1.x, global1.x, true), vec4<bool>(false, true, global1.x, global1.x)), !vec4<bool>(false, global1.x, true, true), !any(vec2<bool>(false, global1.x))), select(false, global1.x, true)), ~(~abs(1i)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = global1.x;
    let var_0 = global1.x;
    var var_1 = 426f;
    var var_2 = func_4(func_1(Struct_1(~vec4<i32>(1i, 0i, 16254i, -12330i), !(!vec4<bool>(global1.x, global1.x, global1.x, false)), 2147483647i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-801f, 591f, -1030f, 207f), vec4<f32>(-436f, -1597f, -163f, -1409f))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(194f, 493f, -935f, -743f))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-589f, -123f, -1494f, 1076f))), global1.x)))));
    var var_3 = abs(_wgslsmith_mult_vec2_i32(countOneBits(var_2.a.yw >> (_wgslsmith_sub_vec2_u32(u_input.c.zy, u_input.e) % vec2<u32>(32u))), select(firstTrailingBit(var_2.a.xw), firstLeadingBit(var_2.a.yx), true) ^ vec2<i32>(var_2.c, -1i)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(572f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(1055f)), 1f)) - -1947f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - _wgslsmith_f_op_f32(-208f * _wgslsmith_f_op_f32(sign(2037f))))), ~vec3<u32>(u_input.c.x, ~1u, _wgslsmith_mod_u32(1u, ~u_input.c.x)));
}

