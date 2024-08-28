struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: f32,
    d: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
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

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec2<f32>) -> vec2<bool> {
    var var_0 = u_input.a.x;
    var var_1 = Struct_1(select(!select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), true), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true), false), true), !select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true)))), firstTrailingBit(reverseBits(33315u)), arg_0.x, !(!any(vec2<bool>(true, true))));
    var_0 = -(0i << (_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(~var_1.b, 0u >> (u_input.d.x % 32u), abs(var_1.b)), reverseBits(13517u) & _wgslsmith_dot_vec4_u32(vec4<u32>(15310u, var_1.b, 43212u, u_input.d.x), vec4<u32>(4294967295u, 0u, 1u, u_input.d.x)), 12796u) % 32u));
    var_1 = Struct_1(var_1.a, 1u, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(-1000f - var_1.c))), all(!select(!vec4<bool>(var_1.d, var_1.a.x, true, true), select(vec4<bool>(var_1.a.x, true, true, true), vec4<bool>(false, var_1.a.x, false, true), true), !var_1.d)));
    var var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-295f + _wgslsmith_f_op_f32(min(var_1.c, var_1.c)))) - var_1.c)));
    return var_1.a.xz;
}

fn func_4(arg_0: vec2<bool>, arg_1: vec4<i32>, arg_2: i32, arg_3: vec3<u32>) -> bool {
    var var_0 = Struct_1(!vec3<bool>(arg_0.x, !(false != arg_0.x), arg_0.x), _wgslsmith_mod_u32(arg_3.x, _wgslsmith_sub_u32(arg_3.x, abs(1u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1003f + 759f), _wgslsmith_f_op_f32(f32(-1f) * -195f)))), false);
    let var_1 = Struct_1(!var_0.a, ~(~max(0u, abs(5382u))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -373f))), any(var_0.a) && var_0.d);
    return true != var_1.a.x;
}

fn func_2(arg_0: bool) -> Struct_1 {
    var var_0 = select(!vec2<bool>(select(false, true, arg_0) || true, _wgslsmith_dot_vec4_i32(vec4<i32>(24845i, u_input.b, 2147483647i, -1i), vec4<i32>(1i, -1i, u_input.c, u_input.a.x)) > _wgslsmith_mod_i32(u_input.c, 34375i)), select(!(!select(vec2<bool>(true, arg_0), vec2<bool>(arg_0, true), vec2<bool>(arg_0, false))), vec2<bool>(true, select(false, !arg_0, arg_0 & arg_0)), arg_0), false);
    let var_1 = var_0.x;
    var_0 = vec2<bool>((arg_0 != all(!vec3<bool>(arg_0, arg_0, arg_0))) || arg_0, func_4(func_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(983f, 268f), vec2<f32>(-685f, -952f))))), ~vec4<i32>(~(-15134i), abs(-673i), _wgslsmith_clamp_i32(u_input.b, u_input.a.x, -2147483647i), _wgslsmith_mod_i32(u_input.b, -38554i)), max(22133i, 0i), vec3<u32>(473u, 4294967295u, ~u_input.d.x)));
    let var_2 = Struct_1(!(!select(!vec3<bool>(arg_0, var_0.x, false), select(vec3<bool>(arg_0, false, false), vec3<bool>(var_0.x, true, false), true), vec3<bool>(false, true, var_0.x))), 1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(434f * -668f), 1101f, var_0.x)))), false);
    var_0 = vec2<bool>(select(2147483647i, -(~2682i), true) < ((i32(-1i) * -u_input.c) >> (var_2.b % 32u)), false);
    return var_2;
}

fn func_5(arg_0: Struct_1) -> vec2<i32> {
    var var_0 = func_2(arg_0.a.x).c;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(608f + _wgslsmith_f_op_f32(step(-918f, _wgslsmith_f_op_f32(arg_0.c * arg_0.c)))), arg_0.c)));
    let var_1 = 17082i;
    let var_2 = Struct_1(select(vec3<bool>(!any(vec4<bool>(arg_0.a.x, arg_0.a.x, true, false)), !arg_0.d, !(arg_0.b >= arg_0.b)), func_2(arg_0.b <= u_input.d.x).a, !all(!vec3<bool>(arg_0.d, arg_0.d, true))), 9612u, -2665f, !arg_0.d);
    let var_3 = _wgslsmith_div_i32(u_input.c, var_1);
    return vec2<i32>(-1i) * -(~u_input.a.xw);
}

fn func_1(arg_0: bool, arg_1: vec3<u32>, arg_2: vec4<u32>, arg_3: u32) -> vec4<bool> {
    var var_0 = -_wgslsmith_mod_i32(_wgslsmith_add_i32(-_wgslsmith_add_i32(u_input.b, -10223i), -19011i), _wgslsmith_div_i32(1i, -1i));
    var var_1 = _wgslsmith_add_vec2_i32(-vec2<i32>(u_input.b << (1u % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(20229i, u_input.b, -1i), vec3<i32>(20723i, u_input.c, -1i))) << (u_input.d % vec2<u32>(32u)), func_5(func_2(all(vec3<bool>(arg_0, arg_0, true)))));
    let var_2 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1383f, -1000f, -544f, 224f)))) + vec4<f32>(1f, 409f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-450f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -303f))))));
    let var_3 = u_input.a;
    let var_4 = -153f;
    return !select(select(select(vec4<bool>(arg_0, arg_0, arg_0, true), !vec4<bool>(arg_0, arg_0, arg_0, false), vec4<bool>(arg_0, true, arg_0, arg_0)), select(vec4<bool>(arg_0, false, false, false), !vec4<bool>(arg_0, arg_0, true, arg_0), !vec4<bool>(false, false, arg_0, arg_0)), !(!vec4<bool>(true, arg_0, arg_0, true))), !(!vec4<bool>(arg_0, arg_0, arg_0, false)), vec4<bool>(!(!arg_0), arg_0, arg_0, arg_0));
}

fn func_6(arg_0: vec4<bool>, arg_1: u32) -> bool {
    var var_0 = _wgslsmith_dot_vec3_i32(vec3<i32>(firstTrailingBit(_wgslsmith_div_i32(-22642i, -2147483647i)), -4465i & ~u_input.a.x, u_input.a.x >> (1u % 32u)), select(_wgslsmith_add_vec3_i32(vec3<i32>(-1i, u_input.a.x, u_input.b), reverseBits(u_input.a.yyx)), firstTrailingBit(u_input.a.zww), arg_0.wzz)) ^ ~_wgslsmith_add_i32(~_wgslsmith_div_i32(u_input.a.x, u_input.a.x), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, -1i, 0i), u_input.a.xyw) >> (~4294967295u % 32u));
    var_0 = _wgslsmith_sub_i32(-2147483647i, _wgslsmith_dot_vec2_i32(~firstLeadingBit(u_input.a.xy), ~u_input.a.xx)) << (15806u % 32u);
    var var_1 = u_input.d.x;
    let var_2 = Struct_1(vec3<bool>(arg_0.x, select(func_1(all(arg_0.ww), ~vec3<u32>(arg_1, 106105u, arg_1), _wgslsmith_add_vec4_u32(vec4<u32>(0u, arg_1, 181913u, u_input.d.x), vec4<u32>(102204u, arg_1, 4294967295u, arg_1)), firstLeadingBit(arg_1)).x, false, arg_0.x), arg_0.x), _wgslsmith_div_u32(_wgslsmith_mod_u32(1u, 4294967295u), 1u), -1000f, false);
    var var_3 = !(!select(!select(arg_0.yww, var_2.a, arg_0.x), var_2.a, func_1(var_2.d, _wgslsmith_mult_vec3_u32(vec3<u32>(1u, u_input.d.x, 11970u), vec3<u32>(u_input.d.x, 28486u, arg_1)), vec4<u32>(u_input.d.x, 5370u, arg_1, u_input.d.x), u_input.d.x).wxy));
    return var_2.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(!vec3<bool>(func_6(func_1(false, vec3<u32>(29757u, 1u, u_input.d.x), vec4<u32>(71387u, u_input.d.x, u_input.d.x, 42215u), 0u), 1786u), true, true), ~min(_wgslsmith_add_u32(countOneBits(u_input.d.x), 34048u), 24663u), -1226f, all(!vec3<bool>(any(vec3<bool>(true, false, true)), false, true)));
    let var_1 = -_wgslsmith_add_i32(firstTrailingBit(u_input.c) ^ -(~u_input.b), u_input.c);
    let var_2 = vec3<bool>(!any(vec3<bool>(false, !var_0.a.x, func_4(var_0.a.yx, u_input.a, var_1, vec3<u32>(84956u, var_0.b, u_input.d.x)))), true, _wgslsmith_f_op_f32(sign(-1145f)) <= _wgslsmith_f_op_f32(-var_0.c));
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(-2225f)))), var_0.c, -169f);
    var_3 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-283f, var_3.x, -1796f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_3.x, 1369f, -1044f), vec3<f32>(1032f, var_0.c, -190f), var_0.d)))) * vec3<f32>(327f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1036f + var_3.x)), -2572f))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(4810u, var_0.b), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-var_3.x), 474f, -1000f, var_3.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_3.x, -632f, 1000f, -169f), vec4<f32>(var_3.x, -1000f, -1459f, var_0.c), vec4<bool>(var_0.a.x, true, var_0.a.x, true)))))))));
}

