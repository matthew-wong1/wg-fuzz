struct Struct_1 {
    a: u32,
    b: i32,
    c: u32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: f32,
    d: vec2<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec3<bool>,
    c: Struct_2,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec3<f32>,
    c: vec3<bool>,
    d: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: u32,
    d: u32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec3<f32>) -> f32 {
    global0 = Struct_1(abs(~2316u) ^ ~_wgslsmith_add_u32(1u, _wgslsmith_add_u32(0u, global0.c)), reverseBits(1i), 17941u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_0.x - arg_1.x), _wgslsmith_f_op_f32(1649f + 1000f), _wgslsmith_f_op_f32(arg_0.x * global0.d.x), global0.d.x)) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_0 + global0.d) - _wgslsmith_f_op_vec4_f32(arg_0 - arg_0)), vec4<f32>(1433f, 935f, _wgslsmith_f_op_f32(f32(-1f) * -306f), _wgslsmith_f_op_f32(trunc(global0.d.x)))))));
    let var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0) - global0.d), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, arg_0.x, _wgslsmith_div_f32(global0.d.x, -1000f))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2141f, arg_0.x, global0.d.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1) * _wgslsmith_div_vec3_f32(vec3<f32>(global0.d.x, global0.d.x, -709f), arg_1)), _wgslsmith_f_op_f32(global0.d.x + global0.d.x) >= 525f)))), select(vec3<bool>(true, global0.b != _wgslsmith_dot_vec4_i32(vec4<i32>(global0.b, global0.b, global0.b, global0.b), vec4<i32>(-15325i, -2147483647i, global0.b, global0.b)), true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), !any(vec3<bool>(true, false, true))), all(vec4<bool>(true, true, true, true))), global0.a ^ u_input.b.x);
    var var_1 = u_input.b;
    let var_2 = var_0;
    global0 = Struct_1(4294967295u, abs(reverseBits(_wgslsmith_sub_i32(-2147483647i, global0.b) ^ global0.b)), _wgslsmith_dot_vec3_u32(~_wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(var_1.x, global0.a, var_1.x), vec3<u32>(u_input.b.x, u_input.a.x, u_input.c.x)), vec3<u32>(u_input.c.x, 1u, 42605u), var_1.yyz), firstLeadingBit(~(~u_input.a))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1389f, _wgslsmith_f_op_f32(floor(arg_0.x)), 528f, _wgslsmith_div_f32(_wgslsmith_div_f32(362f, 100f), _wgslsmith_f_op_f32(ceil(var_2.b.x))))));
    return var_2.b.x;
}

fn func_2(arg_0: vec4<f32>) -> Struct_4 {
    var var_0 = Struct_1(_wgslsmith_mod_u32(0u, ~abs(u_input.b.x)), -_wgslsmith_dot_vec2_i32(max(vec2<i32>(global0.b, global0.b), _wgslsmith_mult_vec2_i32(vec2<i32>(global0.b, -36623i), vec2<i32>(global0.b, -1i))), select(vec2<i32>(-46865i, -1i), vec2<i32>(global0.b, global0.b), vec2<bool>(true, true))), firstLeadingBit(_wgslsmith_sub_u32(1u, ~global0.a)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_div_vec4_f32(vec4<f32>(1500f, arg_0.x, -1798f, 251f), vec4<f32>(arg_0.x, arg_0.x, -596f, -1568f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.x, 367f, arg_0.x), vec3<f32>(-249f, arg_0.x, 1662f), true))))), _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(arg_0 - arg_0), vec4<f32>(-562f, -653f, 1000f, arg_0.x))), global0.d.xzx)), arg_0.x, global0.d.x));
    global0 = Struct_1(~_wgslsmith_mod_u32(global0.a, 4294967295u), ~(~(~var_0.b)), 15339u, global0.d);
    var var_1 = any(vec2<bool>(!(1f < _wgslsmith_f_op_f32(-1000f * global0.d.x)), (all(vec3<bool>(false, true, true)) | true) || true));
    global0 = Struct_1(u_input.a.x ^ global0.a, _wgslsmith_sub_i32(-10149i | global0.b, 13259i), 0u << (var_0.c % 32u), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.d.x, _wgslsmith_f_op_f32(2682f + 408f), 613f, -1046f) + arg_0))));
    global0 = Struct_1(global0.a | ~(~98499u), -10962i, countOneBits(~max(global0.a, var_0.c) >> (4294967295u % 32u)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global0.d.x, -1000f, -396f, global0.d.x), var_0.d)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1705f, arg_0.x, -1379f, arg_0.x))) + vec4<f32>(-198f, -1013f, global0.d.x, arg_0.x)))), (~(-12753i) >> (global0.a % 32u)) <= -(~global0.b))));
    return Struct_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0) - vec4<f32>(_wgslsmith_f_op_f32(154f + 1856f), arg_0.x, _wgslsmith_f_op_f32(ceil(1f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1141f), _wgslsmith_f_op_f32(f32(-1f) * -861f))))), _wgslsmith_f_op_vec3_f32(floor(global0.d.zyy)), !vec3<bool>(!(var_0.b > 13976i), true, all(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false)))), ~u_input.a.x);
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: f32) -> vec2<f32> {
    var var_0 = u_input.c.xy;
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-280f, -732f, _wgslsmith_f_op_f32(arg_2 + _wgslsmith_f_op_f32(f32(-1f) * -1309f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1000f, global0.d.x)) + arg_2) + global0.d.x)));
    var var_2 = func_2(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-115f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(638f)), 231f, 6481u == global0.a)), global0.d.x, _wgslsmith_f_op_f32(-1000f - arg_2)))));
    var_2 = Struct_4(vec4<f32>(var_2.b.x, 1000f, 682f, _wgslsmith_f_op_f32(arg_2 * _wgslsmith_f_op_f32(floor(var_1.x)))), _wgslsmith_f_op_vec3_f32(select(var_2.a.xyw, vec3<f32>(549f, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(global0.d.x, var_1.x))), _wgslsmith_div_f32(_wgslsmith_div_f32(arg_2, global0.d.x), _wgslsmith_f_op_f32(-var_1.x))), !vec3<bool>(true, var_2.c.x, any(vec4<bool>(var_2.c.x, var_2.c.x, false, var_2.c.x))))), !select(var_2.c, vec3<bool>(any(vec4<bool>(false, false, var_2.c.x, false)), var_2.c.x, false), any(!vec3<bool>(false, false, var_2.c.x))), reverseBits(global0.a));
    let var_3 = select(vec3<i32>(~reverseBits(global0.b), _wgslsmith_sub_i32(4582i, 0i), abs(countOneBits(~(-2147483647i)))), vec3<i32>(arg_0, 0i, global0.b), var_2.c.x);
    return _wgslsmith_div_vec2_f32(var_2.b.yz, vec2<f32>(781f, -1000f));
}

fn func_4(arg_0: vec2<f32>) -> Struct_1 {
    let var_0 = !any(select(vec3<bool>(true, any(vec4<bool>(true, true, true, false)), false), vec3<bool>(all(vec2<bool>(true, true)), 0u == global0.c, select(true, true, false)), vec3<bool>(global0.b == global0.b, func_2(global0.d).c.x, false)));
    var var_1 = i32(-1i) * -42213i;
    global0 = Struct_1(_wgslsmith_dot_vec2_u32(u_input.c.xy, ~max(~u_input.a.xx, u_input.b.zy)), (global0.b & global0.b) | global0.b, _wgslsmith_sub_u32(_wgslsmith_add_u32(0u, 0u), _wgslsmith_sub_u32(abs(min(u_input.c.x, u_input.b.x)), firstTrailingBit(global0.a))), _wgslsmith_f_op_vec4_f32(global0.d - _wgslsmith_f_op_vec4_f32(global0.d - global0.d)));
    let var_2 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1023f + -980f)), -313f)), 175f, arg_0.x, global0.d.x), vec3<bool>(any(select(vec4<bool>(true, true, true, true), vec4<bool>(var_0, true, false, var_0), select(vec4<bool>(var_0, false, var_0, var_0), vec4<bool>(var_0, var_0, false, true), false))), var_0, var_0), Struct_2(vec3<f32>(1651f, 1908f, -833f), !func_2(_wgslsmith_f_op_vec4_f32(select(global0.d, vec4<f32>(arg_0.x, global0.d.x, -1000f, global0.d.x), vec4<bool>(var_0, true, false, true)))).c.zz, arg_0.x, ~(~vec2<u32>(27294u, global0.c)), Struct_1(max(_wgslsmith_dot_vec2_u32(u_input.a.xz, u_input.a.xz), 4294967295u), global0.b, ~0u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.d.x, 1252f, arg_0.x, arg_0.x)))));
    var var_3 = all(select(vec2<bool>(func_2(var_2.c.e.d).c.x, true), var_2.b.zy, !(global0.d.x >= -565f)));
    return Struct_1(abs(~22157u) ^ global0.a, global0.b >> (var_2.c.d.x % 32u), 4294967295u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(var_2.a)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a.x, 1000f, 1023f, -460f) + vec4<f32>(459f, 227f, -1228f, var_2.a.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(global0.d.x, global0.d.x)))));
    global0 = func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-global0.d.xy), _wgslsmith_f_op_vec2_f32(func_1(0i, u_input.b.x, global0.d.x)), true))))));
    let var_1 = !(!any(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, true))));
    var var_2 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(global0.d.x * global0.d.x), -696f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-236f)) - 1889f))), vec2<bool>(true, func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -1093f, global0.d.x, -1398f))).c.x), global0.d.x, u_input.c.xz, Struct_1(u_input.c.x & u_input.b.x, i32(-1i) * -2147483647i, 44052u, global0.d));
    var var_3 = var_2.e;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(global0.d.yy))) * _wgslsmith_f_op_vec2_f32(func_4(var_3.d.zx).d.yz * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.d.x, global0.d.x))))), firstLeadingBit(~(-global0.b)), 83326u, 29327u, min(~select(u_input.b, vec4<u32>(52331u, global0.a, var_2.e.a, var_2.d.x), vec4<bool>(var_2.b.x, true, true, true)) | countOneBits(~vec4<u32>(var_2.e.c, 4294967295u, 5399u, 4294967295u)), min(vec4<u32>(u_input.b.x, _wgslsmith_clamp_u32(var_3.c, 0u, 1u), _wgslsmith_div_u32(11141u, 32217u), var_3.a), vec4<u32>(_wgslsmith_sub_u32(1u, 0u), var_2.e.c, 59351u, ~4294967295u))));
}

