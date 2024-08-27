struct Struct_1 {
    a: vec2<f32>,
    b: vec3<f32>,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> vec3<f32> {
    let var_0 = select(vec4<bool>(any(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true)), true, false, false), !vec4<bool>(true, true, any(vec3<bool>(false, true, true)), true), !all(vec3<bool>(true, true, false)) || (false && !any(vec3<bool>(true, true, true))));
    var var_1 = ~u_input.a.x << (~(~(~10878u) >> (u_input.a.x % 32u)) % 32u);
    var var_2 = _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(select(max(vec3<u32>(4294967295u, u_input.a.x, u_input.a.x) ^ vec3<u32>(106315u, 1u, u_input.a.x), vec3<u32>(44366u, 1u, 81752u)), vec3<u32>(~u_input.a.x, _wgslsmith_mod_u32(u_input.a.x, u_input.a.x), firstTrailingBit(u_input.a.x)), select(!var_0.xww, vec3<bool>(true, true, var_0.x), true)), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a.x, 0u, 4294967295u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), u_input.a.x, u_input.a.x & ~0u)), u_input.a.x);
    var var_3 = u_input.a.x;
    var var_4 = select(var_0, !var_0, vec4<bool>(false, any(select(var_0.yxw, select(vec3<bool>(true, true, true), var_0.zzy, var_0.x), var_0.www)), false, true));
    return vec3<f32>(865f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -341f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -560f))) + _wgslsmith_f_op_f32(f32(-1f) * -230f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-150f, 1f))));
}

fn func_2(arg_0: f32) -> Struct_2 {
    var var_0 = !select(select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false)), false), vec4<bool>(select(any(vec3<bool>(true, false, true)), select(true, true, false), true), true, select(any(vec2<bool>(false, false)), true, true), true), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true));
    var var_1 = Struct_2(vec4<i32>(1i, 1i, 1i, 1i), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1141f + 1124f)), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1909f, arg_0)))), _wgslsmith_f_op_vec3_f32(func_3()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(475f, arg_0)))), _wgslsmith_f_op_f32(step(321f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0)))))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, arg_0) - vec2<f32>(arg_0, 945f)))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(117f, arg_0, arg_0)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-397f, arg_0, arg_0) * vec3<f32>(arg_0, arg_0, 1024f))))), arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * -378f)))), Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, 435f) + vec2<f32>(-472f, arg_0)), vec2<f32>(arg_0, arg_0))), _wgslsmith_div_vec2_f32(vec2<f32>(arg_0, -1000f), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_0, arg_0)))), _wgslsmith_f_op_f32(floor(-1596f)) > 243f)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1000f, arg_0, 275f)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_vec3_f32(func_3()).x), _wgslsmith_f_op_f32(min(2270f, arg_0))));
    let var_2 = 1388f;
    var_0 = select(vec4<bool>(1u != u_input.a.x, true, var_0.x & var_0.x, !(false || all(var_0.xw))), select(select(!vec4<bool>(var_0.x, false, false, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, var_0.x, true, false), var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, false), !vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x))), vec4<bool>(var_0.x, true, false, !(!var_0.x)), vec4<bool>(_wgslsmith_clamp_i32(-1i, 0i, -2147483647i) < var_1.a.x, any(vec4<bool>(true, false, var_0.x, var_0.x)), !(!var_0.x), !var_0.x)), any(!(!select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, false, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, false)))));
    let var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(var_1.b.a)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(arg_0 * var_2), _wgslsmith_f_op_f32(arg_0 + 819f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1573f, -123f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, var_2) - var_1.c.b.xx)))));
    return Struct_2(var_1.a, var_1.d, var_1.b, var_1.b);
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: i32, arg_3: bool) -> Struct_2 {
    var var_0 = Struct_2(-vec4<i32>(-17707i, 2147483647i, -42427i, _wgslsmith_mod_i32(countOneBits(-14565i), ~arg_2)), func_2(arg_0.b.d).b, arg_0.d, Struct_1(_wgslsmith_f_op_vec2_f32(arg_0.c.a * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.d.b.xz + vec2<f32>(302f, -1000f)), arg_0.d.a)), vec3<f32>(223f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1925f + arg_0.b.b.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -979f), _wgslsmith_f_op_f32(f32(-1f) * -247f)))), _wgslsmith_f_op_f32(abs(1496f)), arg_0.b.d));
    let var_1 = vec3<u32>(u_input.a.x, ~_wgslsmith_mod_u32(u_input.a.x, 27603u), _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(max(~vec4<u32>(31860u, 1u, u_input.a.x, 18233u), ~vec4<u32>(u_input.a.x, 1u, u_input.a.x, u_input.a.x)), vec4<u32>(u_input.a.x, _wgslsmith_dot_vec2_u32(u_input.a, u_input.a), ~u_input.a.x, 1802u)), u_input.a.x));
    var_0 = arg_0;
    let var_2 = arg_0;
    var var_3 = var_0.d.b.x;
    return Struct_2(firstTrailingBit(vec4<i32>(-_wgslsmith_sub_i32(17193i, arg_0.a.x), 0i, 1i << (var_1.x % 32u), var_2.a.x)), var_2.d, func_2(_wgslsmith_f_op_f32(var_0.d.a.x - var_0.c.b.x)).c, func_2(-312f).b);
}

fn func_1() -> vec2<i32> {
    var var_0 = func_4(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(555f + -1000f) * _wgslsmith_f_op_f32(-548f - -1137f))), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, _wgslsmith_add_i32(~1i, _wgslsmith_mult_i32(1i, 0i))), vec2<i32>(firstTrailingBit(31566i), -_wgslsmith_sub_i32(369i, -60911i))), _wgslsmith_sub_i32(-_wgslsmith_div_i32(1i, -2147483647i), ~(-2147483647i) >> (0u % 32u)) ^ ~(-_wgslsmith_dot_vec4_i32(vec4<i32>(14675i, 0i, -2147483647i, -45737i), vec4<i32>(-2147483647i, -26600i, 14575i, 31040i))), true);
    var_0 = func_2(528f);
    let var_1 = 1324f;
    var_0 = Struct_2(var_0.a, var_0.d, var_0.b, func_2(-1000f).c);
    let var_2 = select(!vec4<bool>(!all(vec2<bool>(true, false)), true, true, any(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false), true))), !select(select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), true), true);
    return var_0.a.zw ^ select(vec2<i32>(var_0.a.x, -var_0.a.x), vec2<i32>(var_0.a.x, var_0.a.x), any(var_2));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -_wgslsmith_mult_vec2_i32(vec2<i32>(1i, -_wgslsmith_div_i32(2147483647i, -2147483647i)), func_1() | max(vec2<i32>(-1i, 0i), select(vec2<i32>(5653i, -2147483647i), vec2<i32>(0i, 0i), vec2<bool>(false, false))));
    var var_1 = func_4(func_4(func_4(Struct_2(firstTrailingBit(vec4<i32>(1i, 12855i, 102343i, var_0.x)), func_2(-1000f).b, func_2(-2333f).d, func_4(Struct_2(vec4<i32>(16771i, var_0.x, var_0.x, 53140i), Struct_1(vec2<f32>(-2321f, -170f), vec3<f32>(1127f, 173f, -945f), -1781f, -762f), Struct_1(vec2<f32>(-193f, 196f), vec3<f32>(1064f, 196f, 269f), 961f, 1083f), Struct_1(vec2<f32>(-1000f, 656f), vec3<f32>(459f, 1881f, -250f), -2222f, -1766f)), -1i, var_0.x, true).b), -_wgslsmith_div_i32(var_0.x, var_0.x), -25079i, true), -1i, var_0.x, !any(vec3<bool>(true, true, true))), _wgslsmith_dot_vec3_i32(-(-vec3<i32>(36282i, var_0.x, var_0.x) | -vec3<i32>(var_0.x, var_0.x, 18563i)), vec3<i32>(~reverseBits(var_0.x), firstLeadingBit(var_0.x), func_1().x)), -90670i, true & any(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), all(vec2<bool>(true, true)))));
    var_1 = func_2(var_1.c.a.x);
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(827f, -682f, _wgslsmith_f_op_f32(-var_1.c.d), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(950f))))));
    var_0 = reverseBits(_wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(-vec2<i32>(16721i, var_0.x), -var_1.a.ww), countOneBits(min(abs(vec2<i32>(-1i, 11490i)), -var_1.a.wz))));
    let var_3 = var_1.a.x;
    var var_4 = vec3<bool>(!any(vec4<bool>(true, true, true, select(false, false, false))), true, any(vec2<bool>(all(vec4<bool>(true, true, true, true)), true)));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.d.c, vec2<i32>(var_0.x, firstTrailingBit(-1i)), ~min(select(vec3<u32>(u_input.a.x, 1u, u_input.a.x) ^ vec3<u32>(u_input.a.x, u_input.a.x, 1u), vec3<u32>(69434u, u_input.a.x, u_input.a.x), vec3<bool>(true, var_4.x, var_4.x)), vec3<u32>(u_input.a.x | u_input.a.x, 4294967295u, 1u)), var_1.c.d);
}

