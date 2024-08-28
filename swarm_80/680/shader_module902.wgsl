struct Struct_1 {
    a: f32,
    b: f32,
    c: vec2<bool>,
    d: bool,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec4<bool>) -> f32 {
    var var_0 = Struct_1(-1320f, 1865f, !select(!arg_0.yx, !(!arg_0.zx), select(select(arg_0.yx, arg_0.ww, arg_0.xw), select(vec2<bool>(true, arg_0.x), arg_0.ww, vec2<bool>(arg_0.x, true)), u_input.b > 1i)), any(arg_0) || arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-853f - -1593f), 1f))) + 1000f));
    let var_1 = countOneBits(firstTrailingBit(u_input.e.xz));
    var_0 = Struct_1(512f, _wgslsmith_div_f32(654f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.e, -493f)) - _wgslsmith_f_op_f32(-1593f - var_0.a)))), vec2<bool>(arg_0.x, arg_0.x), -82739i > -var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b * var_0.e)));
    var var_2 = !any(!(!select(vec3<bool>(true, true, true), arg_0.wxz, false)));
    var_2 = true;
    return var_0.b;
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(arg_1.b, _wgslsmith_f_op_f32(1511f * _wgslsmith_f_op_f32(573f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.e)))), vec2<bool>(arg_2.c.x, arg_2.c.x), arg_2.d, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0))))))));
    var_0 = arg_1;
    var_0 = arg_1;
    let var_1 = ~u_input.c & abs(reverseBits(~(~u_input.c)));
    let var_2 = arg_0;
    return Struct_1(arg_1.e, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(vec4<bool>(true, arg_1.c.x, true, !var_0.d))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_2.e)) - _wgslsmith_f_op_f32(step(arg_1.a, -270f))))), vec2<bool>(arg_1.c.x, true), true, -107f);
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: u32, arg_3: Struct_1) -> vec2<bool> {
    let var_0 = select(!vec4<bool>(_wgslsmith_f_op_f32(arg_3.a - 1000f) != 713f, !arg_3.d, (arg_1.c.x || arg_1.d) || arg_3.c.x, !all(vec3<bool>(arg_1.d, false, false))), vec4<bool>(false, func_2(-661f, arg_1, Struct_1(1211f, _wgslsmith_f_op_f32(1366f - arg_0), vec2<bool>(true, true), true, func_2(arg_3.a, arg_1, arg_1).b)).c.x, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(863f, arg_3.b), arg_3.e)) > _wgslsmith_f_op_f32(-1452f * _wgslsmith_f_op_f32(sign(1056f))), true), false);
    var var_1 = Struct_1(arg_1.a, _wgslsmith_f_op_f32(func_2(arg_3.e, func_2(-1038f, Struct_1(1024f, arg_1.b, arg_3.c, arg_1.d, 1158f), Struct_1(arg_0, arg_0, vec2<bool>(false, true), false, arg_3.e)), Struct_1(_wgslsmith_f_op_f32(arg_1.a * 621f), _wgslsmith_f_op_f32(-arg_1.a), !arg_3.c, any(vec2<bool>(var_0.x, false)), _wgslsmith_f_op_f32(-arg_1.b))).a + _wgslsmith_f_op_f32(490f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_3.e))))), vec2<bool>(any(vec3<bool>(true, true, all(var_0))), all(select(arg_1.c, arg_1.c, vec2<bool>(arg_3.c.x, var_0.x)))), select(109732u, ~(~arg_2), false) < (~(~u_input.d) & arg_2), arg_0);
    var var_2 = u_input.e;
    let var_3 = ~u_input.e.yxz;
    var_1 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1864f) * -251f) * var_1.e)), func_2(-1522f, Struct_1(arg_1.a, _wgslsmith_f_op_f32(-var_1.a), select(var_0.wy, func_2(547f, arg_1, arg_3).c, var_1.d), _wgslsmith_f_op_f32(arg_1.b - arg_3.e) >= func_2(319f, arg_1, arg_1).b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-989f, arg_1.a)), arg_3.a)), Struct_1(_wgslsmith_f_op_f32(1714f - arg_1.a), _wgslsmith_f_op_f32(func_3(!var_0)), func_2(_wgslsmith_f_op_f32(select(var_1.a, -697f, var_0.x)), func_2(arg_1.a, Struct_1(268f, var_1.a, arg_1.c, var_0.x, var_1.a), Struct_1(arg_3.e, arg_0, var_1.c, true, 3233f)), Struct_1(707f, arg_3.a, var_0.xw, arg_1.d, 1375f)).c, var_1.a <= _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)))), Struct_1(938f, _wgslsmith_f_op_f32(-arg_3.e), vec2<bool>(var_0.x, all(!arg_3.c)), !any(vec3<bool>(false, true, arg_3.c.x)) | (u_input.c.x < ~14985u), -760f));
    return !func_2(-158f, arg_1, arg_1).c;
}

fn func_5(arg_0: vec4<i32>, arg_1: u32, arg_2: Struct_1, arg_3: bool) -> vec4<u32> {
    var var_0 = _wgslsmith_sub_u32(_wgslsmith_add_u32(select(_wgslsmith_clamp_u32(27272u, arg_1, 1u), firstLeadingBit(30360u), !arg_3) << (4294967295u % 32u), ~abs(u_input.d)), _wgslsmith_div_u32(~1u, _wgslsmith_sub_u32(u_input.d, arg_1)));
    var var_1 = arg_2;
    var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec4<bool>(arg_3, false, arg_3, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b)))) * _wgslsmith_f_op_f32(arg_2.b * arg_2.a)), 1984f, select(vec2<bool>(arg_2.c.x, var_1.c.x || !arg_2.c.x), arg_2.c, vec2<bool>(true, true)), all(select(select(select(vec3<bool>(false, var_1.c.x, arg_3), vec3<bool>(arg_3, true, var_1.c.x), vec3<bool>(true, arg_3, arg_3)), !vec3<bool>(true, arg_3, true), true), !vec3<bool>(false, true, arg_2.d), all(vec3<bool>(var_1.d, false, true)))), arg_2.e);
    var_1 = arg_2;
    var var_2 = arg_0.zyw;
    return _wgslsmith_clamp_vec4_u32(firstTrailingBit(~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d, 24167u, 1u, u_input.a), vec4<u32>(4261u, u_input.c.x, 4294967295u, 19481u))), _wgslsmith_mod_vec4_u32(countOneBits(vec4<u32>(firstLeadingBit(u_input.a), ~4294967295u, arg_1, 5299u)), ~countOneBits(reverseBits(u_input.c))), ~countOneBits(~u_input.c) | min(~(~vec4<u32>(arg_1, u_input.d, arg_1, arg_1)), firstLeadingBit(vec4<u32>(u_input.c.x, 39203u, 4294967295u, 1u))));
}

fn func_1(arg_0: u32, arg_1: vec2<i32>, arg_2: Struct_1) -> bool {
    var var_0 = vec4<u32>(max(32768u, u_input.a), u_input.a, 42168u, 1u);
    var_0 = _wgslsmith_mult_vec4_u32(u_input.c << (_wgslsmith_mult_vec4_u32(~(u_input.c & vec4<u32>(75247u, var_0.x, 8118u, 4294967295u)), max(u_input.c, vec4<u32>(116466u, u_input.d, arg_0, u_input.d))) % vec4<u32>(32u)), func_5(u_input.e, ~u_input.a, Struct_1(-703f, -1289f, func_4(_wgslsmith_f_op_f32(max(-119f, arg_2.e)), Struct_1(734f, arg_2.a, vec2<bool>(false, true), arg_2.c.x, 1775f), 0u, func_2(-1329f, Struct_1(arg_2.a, arg_2.e, vec2<bool>(arg_2.c.x, true), true, arg_2.b), arg_2)), (var_0.x == 15121u) == true, arg_2.e), true));
    var_0 = countOneBits(u_input.c);
    var_0 = ~vec4<u32>(_wgslsmith_dot_vec2_u32(~max(u_input.c.yz, var_0.wy), vec2<u32>(37916u, func_5(vec4<i32>(u_input.e.x, 0i, -1i, u_input.e.x), var_0.x, Struct_1(822f, 565f, vec2<bool>(arg_2.c.x, arg_2.d), true, -1254f), arg_2.c.x).x)), 8373u, 1u, _wgslsmith_mult_u32(~(62146u << (u_input.a % 32u)), 79004u));
    var var_1 = 1i;
    return !arg_2.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec3<bool>(true, !func_1(0u, vec2<i32>(u_input.b, -1i), Struct_1(1880f, 1000f, vec2<bool>(true, false), false, 229f)) & true, true);
    var_0 = !(!(!vec3<bool>(!var_0.x, false, true)));
    let var_1 = ~select(~(~max(vec3<u32>(4294967295u, u_input.c.x, 37406u), u_input.c.yzx)), u_input.c.xwy, _wgslsmith_sub_i32(2147483647i, abs(u_input.e.x)) == u_input.e.x);
    let var_2 = func_2(_wgslsmith_f_op_f32(1129f - -593f), Struct_1(_wgslsmith_f_op_f32(897f + -645f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(182f - 503f))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1320f, 1331f), -1801f, var_0.x != var_0.x)))), var_0.zx, !var_0.x, 1f), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -772f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1034f)))), func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -676f)), Struct_1(-242f, _wgslsmith_f_op_f32(-1804f + -741f), vec2<bool>(false, false), true, 1436f), u_input.a, Struct_1(_wgslsmith_f_op_f32(1527f - -608f), 1553f, !var_0.xx, var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -1486f))), true, -842f));
    var_0 = vec3<bool>(var_0.x, any(vec2<bool>(true, true)), var_0.x);
    var_0 = vec3<bool>(true, true, true);
    let var_3 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.a - var_2.b) - -415f))))));
    let var_4 = -_wgslsmith_dot_vec2_i32(-_wgslsmith_mult_vec2_i32(firstTrailingBit(u_input.e.yx), -vec2<i32>(0i, -56386i)), -vec2<i32>(~8200i, ~(-2147483647i)));
    let x = u_input.a;
    s_output = StorageBuffer(345f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3, var_2.a, 548f) + vec3<f32>(825f, var_2.e, var_3)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-221f, var_2.e, 596f))), vec3<f32>(406f, var_2.a, var_3), select(vec3<bool>(true, var_0.x, var_2.d), vec3<bool>(true, true, true), var_2.c.x)))), ~(~vec2<u32>(_wgslsmith_mult_u32(53308u, var_1.x), 0u & var_1.x)));
}

