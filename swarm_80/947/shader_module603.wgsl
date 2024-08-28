struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: bool,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_4,
    c: Struct_3,
    d: bool,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec4<bool>) -> i32 {
    var var_0 = 685f;
    let var_1 = _wgslsmith_mod_vec4_i32(firstTrailingBit(-vec4<i32>(u_input.a, -2766i, u_input.a, u_input.a) << (vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, u_input.b.x) % vec4<u32>(32u))), vec4<i32>(-(~u_input.a), -(~(-12878i)), ~u_input.a, _wgslsmith_clamp_i32(2147483647i, firstTrailingBit(-25760i), -2147483647i))) | vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(29217i, u_input.a, u_input.a, 99643i), ~vec4<i32>(u_input.a, u_input.a, u_input.a, 57512i)), vec4<i32>(_wgslsmith_div_i32(u_input.a, u_input.a), firstLeadingBit(u_input.a), 1i, u_input.a)), ~_wgslsmith_div_i32(~u_input.a, 0i), ~1i, firstTrailingBit(0i));
    var_0 = _wgslsmith_f_op_f32(1272f * _wgslsmith_f_op_f32(sign(-192f)));
    let var_2 = true;
    var var_3 = Struct_5(Struct_1(arg_0.wyy), Struct_4(!vec4<bool>(var_2, all(vec4<bool>(true, var_2, var_2, var_2)), 0u <= u_input.b.x, all(arg_0.zxw))), Struct_3(Struct_2(vec2<i32>(-2147483647i, u_input.a) << (~vec2<u32>(0u, u_input.b.x) % vec2<u32>(32u)), 25226i), (~3394u ^ firstLeadingBit(u_input.b.x)) ^ _wgslsmith_add_u32(u_input.b.x | 1u, min(11445u, 10192u)), all(vec4<bool>(arg_0.x, true, arg_0.x, false)) | !(!arg_0.x)), all(!(!(!arg_0))), !(!arg_0.wxz));
    return -var_1.x & var_3.c.a.b;
}

fn func_2() -> Struct_4 {
    var var_0 = abs(vec4<i32>(_wgslsmith_dot_vec2_i32(~(vec2<i32>(13672i, 21942i) | vec2<i32>(u_input.a, 1i)), _wgslsmith_mod_vec2_i32(-vec2<i32>(-66211i, u_input.a), _wgslsmith_add_vec2_i32(vec2<i32>(-4347i, u_input.a), vec2<i32>(u_input.a, 43619i)))), _wgslsmith_add_i32(u_input.a, -func_3(vec4<bool>(true, true, false, true))), ~countOneBits(min(u_input.a, u_input.a)), ~firstLeadingBit(u_input.a)));
    var_0 = _wgslsmith_add_vec4_i32(~abs(_wgslsmith_add_vec4_i32(min(vec4<i32>(u_input.a, 0i, 0i, 43176i), vec4<i32>(37495i, 9536i, 1i, -1i)), vec4<i32>(0i, u_input.a, -35972i, var_0.x) | vec4<i32>(-52526i, var_0.x, 7548i, var_0.x))), vec4<i32>(var_0.x, -2147483647i, ~_wgslsmith_mod_i32(~(-32701i), _wgslsmith_div_i32(11285i, u_input.a)), u_input.a));
    let var_1 = ~_wgslsmith_mult_u32(firstLeadingBit(firstLeadingBit(u_input.b.x)), 24271u);
    var var_2 = u_input.a;
    let var_3 = Struct_2(var_0.zz, -_wgslsmith_mod_i32(~select(4776i, var_0.x, false), -_wgslsmith_div_i32(var_0.x, u_input.a)));
    return Struct_4(vec4<bool>(true, true, true, true));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_3) -> vec3<bool> {
    var var_0 = func_2();
    let var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(976f))) * -1232f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1305f * -2283f) + _wgslsmith_f_op_f32(f32(-1f) * -124f))))));
    var_0 = Struct_4(var_0.a);
    var var_2 = vec3<i32>(u_input.a, u_input.a, -60379i);
    let var_3 = max(vec3<i32>(-2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(1i, 27497i), -24973i, min(arg_2.a.a.x, 8752i)), abs(vec3<i32>(arg_2.a.b, u_input.a, arg_1.a.a.x) | vec3<i32>(u_input.a, arg_2.a.a.x, -41454i))), max(2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 1i, 22415i, u_input.a), vec4<i32>(-4858i, 0i, u_input.a, -36721i)) & abs(0i))), _wgslsmith_sub_vec3_i32(vec3<i32>(-reverseBits(u_input.a), -_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, var_2.x, 2147483647i, var_2.x), vec4<i32>(arg_2.a.b, u_input.a, 1i, var_2.x)), _wgslsmith_add_i32(-arg_2.a.a.x, arg_1.a.b)), _wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(reverseBits(vec3<i32>(var_2.x, 1i, 1i)), vec3<i32>(0i, u_input.a, arg_2.a.b)), -firstTrailingBit(vec3<i32>(arg_1.a.a.x, -1i, arg_1.a.b)))));
    return !vec3<bool>(arg_1.c, !(arg_2.c || func_2().a.x), !arg_2.c);
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: Struct_3) -> vec2<bool> {
    var var_0 = 2004f;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -632f) - _wgslsmith_f_op_f32(max(-391f, 1188f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-591f)))));
    var_0 = _wgslsmith_f_op_f32(exp2(1f));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1000f, 1717f)) * _wgslsmith_f_op_f32(f32(-1f) * -203f))))));
    let var_2 = (i32(-1i) * -10198i) >> (arg_2.b % 32u);
    return !func_1(arg_1, arg_2, arg_2).xx;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_u32(~u_input.b.x, _wgslsmith_div_u32(~(~u_input.b.x) | _wgslsmith_mod_u32(1u, abs(18140u)), u_input.b.x));
    let var_1 = select(!func_4(~4294967295u, Struct_1(func_1(Struct_1(vec3<bool>(true, false, false)), Struct_3(Struct_2(vec2<i32>(0i, -1i), -27654i), u_input.b.x, true), Struct_3(Struct_2(vec2<i32>(u_input.a, u_input.a), 2147483647i), 0u, false))), Struct_3(Struct_2(vec2<i32>(u_input.a, u_input.a), u_input.a), 1u, any(vec3<bool>(false, false, true)))), func_1(Struct_1(func_1(Struct_1(vec3<bool>(true, true, false)), Struct_3(Struct_2(vec2<i32>(u_input.a, 0i), u_input.a), var_0, true), Struct_3(Struct_2(vec2<i32>(u_input.a, 20081i), u_input.a), 1u, false))), Struct_3(Struct_2(-vec2<i32>(u_input.a, u_input.a), u_input.a), u_input.b.x, any(func_4(var_0, Struct_1(vec3<bool>(true, true, false)), Struct_3(Struct_2(vec2<i32>(u_input.a, 1i), u_input.a), 0u, false)))), Struct_3(Struct_2(vec2<i32>(-2147483647i, 33758i), u_input.a), ~u_input.b.x, true)).yz, select(vec2<bool>(false, true), vec2<bool>(true, true), true));
    let var_2 = 1559f;
    let var_3 = func_1(Struct_1(vec3<bool>(true, var_1.x, func_4(min(676u, u_input.b.x), Struct_1(vec3<bool>(var_1.x, var_1.x, var_1.x)), Struct_3(Struct_2(vec2<i32>(2147483647i, -1i), u_input.a), 0u, true)).x)), Struct_3(Struct_2(-vec2<i32>(u_input.a, -11212i), u_input.a), 4294967295u, !(var_1.x || false)), Struct_3(Struct_2(firstTrailingBit(vec2<i32>(u_input.a, 0i)) ^ vec2<i32>(u_input.a, 2147483647i), _wgslsmith_mod_i32(u_input.a, 43795i)), 39229u, any(!func_2().a)));
    let var_4 = Struct_5(Struct_1(!select(select(vec3<bool>(false, var_3.x, true), vec3<bool>(var_3.x, true, false), var_3), vec3<bool>(true, var_3.x, true), var_3)), func_2(), Struct_3(Struct_2(vec2<i32>(u_input.a, -u_input.a), u_input.a), 34745u, true), false, !(!func_2().a.yzw));
    let var_5 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1571f * -1501f), _wgslsmith_f_op_f32(-var_2))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(508f, 1545f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_2, 177f), vec2<f32>(var_2, var_2), vec2<bool>(var_3.x, var_1.x))))), vec2<f32>(var_2, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(var_2))))), select(false, false | var_1.x, true))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-(u_input.a >> (~var_4.c.b % 32u)), _wgslsmith_div_i32(-37742i, _wgslsmith_sub_i32(max(var_4.c.a.b, -2147483647i), var_4.c.a.a.x)), 1i, -_wgslsmith_clamp_i32(abs(var_4.c.a.b), u_input.a, _wgslsmith_dot_vec2_i32(var_4.c.a.a, var_4.c.a.a))), _wgslsmith_sub_i32(-u_input.a, 0i >> (var_0 % 32u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-338f, 1f, var_2) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1052f, var_5.x, var_5.x), vec3<f32>(-1586f, 1768f, -372f), var_4.e.x)), _wgslsmith_div_vec3_f32(vec3<f32>(924f, var_2, var_5.x), vec3<f32>(-571f, -1003f, -1310f))))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, var_2, 727f)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-142f, var_5.x, var_2)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(2400f, 1000f, -827f), vec3<f32>(938f, 767f, var_5.x)))))), _wgslsmith_clamp_i32(_wgslsmith_mod_i32(reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(38511i, var_4.c.a.b, 23299i), vec3<i32>(-1i, var_4.c.a.a.x, -34255i))), u_input.a), -u_input.a, -firstTrailingBit(u_input.a) ^ abs(firstLeadingBit(u_input.a))));
}

