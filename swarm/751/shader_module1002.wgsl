struct Struct_1 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: u32,
    e: vec2<f32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec3<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 31>;

var<private> global1: bool = true;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: u32) -> i32 {
    global1 = true;
    global1 = all(!arg_0);
    let var_0 = _wgslsmith_add_i32(u_input.b.x, _wgslsmith_div_i32(_wgslsmith_clamp_i32(u_input.a, ~16444i, u_input.a) | u_input.b.x, ~(-1i)));
    var var_1 = _wgslsmith_clamp_vec4_u32(~(~max(global0[_wgslsmith_index_u32(abs(106448u), 31u)], ~vec4<u32>(arg_2, arg_1.b.d, u_input.d.x, arg_1.b.b))), global0[_wgslsmith_index_u32(arg_2, 31u)], vec4<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(95023u, arg_2, arg_1.b.d, 0u), vec4<u32>(u_input.e.x, u_input.d.x, 4294967295u, 1u)), _wgslsmith_div_u32(15668u, arg_1.b.d), abs(_wgslsmith_mod_u32(firstTrailingBit(arg_1.b.d), 44252u)), arg_2));
    var var_2 = select(select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), !arg_1.b.c.b.x), vec2<bool>(arg_1.b.c.c.x, false)), arg_1.b.a.c.xz, arg_1.b.a.b.x), arg_1.b.c.b.yy, true);
    return -734i;
}

fn func_2(arg_0: vec2<u32>, arg_1: u32, arg_2: Struct_3) -> bool {
    var var_0 = arg_2.b.a;
    var var_1 = vec4<u32>(arg_1, 4294967295u, arg_1 & arg_1, arg_0.x);
    var var_2 = _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, -2147483647i, ~30454i, 7755i), u_input.b);
    var var_3 = _wgslsmith_add_i32(-(i32(-1i) * -u_input.a), _wgslsmith_clamp_i32(u_input.a << (_wgslsmith_div_u32(~4294967295u, ~1u) % 32u), func_3(vec2<bool>(any(vec4<bool>(arg_2.b.c.c.x, false, true, var_0.c.x)), var_0.b.x), Struct_3(arg_2.b.e, Struct_2(arg_2.b.c, 20535u, Struct_1(arg_2.b.a.a, arg_2.b.c.b, var_0.b), 0u, vec2<f32>(arg_2.a.x, arg_2.b.e.x))), 1u ^ arg_0.x), u_input.a));
    let var_4 = u_input.e.x;
    return any(!(!(!select(vec4<bool>(false, var_0.b.x, false, false), var_0.c, vec4<bool>(true, false, true, false)))));
}

fn func_1() -> vec4<bool> {
    let var_0 = select(vec3<bool>(func_2(reverseBits(vec2<u32>(58290u, 4294967295u)), reverseBits(0u), Struct_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 212f) * vec2<f32>(-995f, -1000f)), Struct_2(Struct_1(vec3<bool>(false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false)), 89611u, Struct_1(vec3<bool>(false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false)), u_input.c.x, vec2<f32>(2433f, -784f)))), false, _wgslsmith_f_op_f32(f32(-1f) * -373f) >= _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(272f, -1644f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), false))), select(vec3<bool>(true, true, true), vec3<bool>(true, any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), false)), true), !(func_2(u_input.d.xx, 0u, Struct_3(vec2<f32>(1273f, 155f), Struct_2(Struct_1(vec3<bool>(true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false)), 4294967295u, Struct_1(vec3<bool>(true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true)), 0u, vec2<f32>(703f, -393f)))) & true)), true);
    var var_1 = _wgslsmith_f_op_f32(1519f + -494f);
    var var_2 = 1i;
    var var_3 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1117f, 1047f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-505f, 1498f), vec2<f32>(192f, 656f))), vec2<f32>(1f, 1f))))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-758f, 1212f)) * vec2<f32>(223f, 604f)) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1235f, -777f) * vec2<f32>(133f, 1294f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-900f, 818f))))))));
    var var_4 = Struct_1(vec3<bool>(true, false, _wgslsmith_mod_i32(select(-1i, u_input.a, true), firstLeadingBit(u_input.a)) == -_wgslsmith_clamp_i32(2147483647i, u_input.a, u_input.a)), !vec4<bool>(any(var_0), var_0.x, var_0.x, var_0.x), !vec4<bool>(var_0.x, true, var_0.x, true));
    return select(select(var_4.b, select(select(var_4.c, !var_4.c, vec4<bool>(var_0.x, var_4.b.x, var_4.b.x, false)), vec4<bool>(false, true, !var_0.x, true), all(vec3<bool>(false, var_0.x, var_4.c.x))), any(!var_4.a)), vec4<bool>(var_0.x, any(vec4<bool>(true, var_0.x, var_0.x, var_4.b.x)), var_4.a.x, any(var_4.c)), select(select(vec4<bool>(any(vec3<bool>(true, true, true)), all(vec2<bool>(var_4.a.x, false)), func_2(u_input.c.zy, 0u, Struct_3(vec2<f32>(-880f, 398f), Struct_2(Struct_1(vec3<bool>(var_4.c.x, true, var_4.b.x), vec4<bool>(var_0.x, var_0.x, var_4.c.x, false), vec4<bool>(var_4.a.x, var_4.b.x, var_0.x, var_4.a.x)), 26074u, Struct_1(vec3<bool>(false, var_0.x, var_4.a.x), vec4<bool>(var_0.x, var_0.x, var_4.a.x, false), vec4<bool>(var_4.b.x, true, var_4.c.x, var_4.a.x)), u_input.c.x, vec2<f32>(-236f, var_3.x)))), var_3.x != 544f), vec4<bool>(var_0.x | var_0.x, any(var_0), true, !var_0.x), vec4<bool>(var_0.x | var_4.a.x, any(vec2<bool>(var_0.x, true)), any(var_4.c.zw), select(var_4.a.x, var_0.x, var_4.a.x))), select(var_4.c, vec4<bool>(var_0.x, true, var_0.x, !var_0.x), all(select(vec2<bool>(var_0.x, true), var_4.b.xz, false))), select(vec4<bool>(false, var_0.x, all(vec2<bool>(true, var_0.x)), true), var_4.c, !var_4.c)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = any(select(vec4<bool>(all(vec3<bool>(false, true, true)), any(vec2<bool>(true, true)), true, any(select(vec2<bool>(true, true), vec2<bool>(true, true), true))), select(select(vec4<bool>(true, true, true, true), func_1(), select(true, true, true)), func_1(), func_1()), true));
    var var_0 = Struct_2(Struct_1(vec3<bool>(true & (u_input.c.x <= 0u), all(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), true)), true), !vec4<bool>(true, false, true, all(vec4<bool>(true, true, true, true))), !(!select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true)))), u_input.c.x, Struct_1(vec3<bool>(true, any(vec3<bool>(true, true, true)), !(0i >= u_input.a)), func_1(), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, any(vec2<bool>(true, false))), true)), ~(~_wgslsmith_mult_u32(u_input.d.x, u_input.c.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-107f, -1000f)))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(522f, 1000f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-361f, 308f) + vec2<f32>(-1116f, -687f))))));
    let var_1 = -547f >= _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(363f, 823f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(869f - _wgslsmith_f_op_f32(ceil(var_0.e.x))) - _wgslsmith_f_op_f32(f32(-1f) * -209f)), var_0.a.b.x));
    var_0 = Struct_2(Struct_1(vec3<bool>(false, var_0.c.b.x, true), vec4<bool>(any(!vec3<bool>(var_1, false, false)), min(var_0.b, u_input.e.x) != ~16487u, any(!var_0.c.c.wyz), var_1), func_1()), u_input.d.x, var_0.c, 1u, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 426f)))), var_0.e));
    global1 = true;
    global1 = -14501i > _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, -22231i), u_input.b.zy) ^ u_input.b.yx, u_input.b.zx);
    global1 = !(var_1 | !var_1);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b, var_0.e.x, u_input.b.x);
}

