struct Struct_1 {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: i32,
    c: vec4<bool>,
    d: vec4<f32>,
    e: i32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec3<bool> {
    let var_0 = Struct_3(-_wgslsmith_sub_vec2_i32(abs(abs(vec2<i32>(53699i, -11445i))), firstTrailingBit(~vec2<i32>(u_input.b, u_input.b))), u_input.a);
    var var_1 = Struct_2(select(_wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.b, var_0.a.x, -2147483647i) << (vec3<u32>(18270u, 4294967295u, 0u) % vec3<u32>(32u)), firstLeadingBit(vec3<i32>(-2147483647i, -20335i, u_input.c)), countOneBits(vec3<i32>(-2147483647i, -77713i, -14101i))), abs(vec3<i32>(-37061i, 8803i, -2147483647i))), reverseBits(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.c, -56053i, -5451i), vec3<i32>(u_input.c, -10912i, var_0.b))) << (_wgslsmith_mod_vec3_u32(vec3<u32>(15838u, 4294967295u, 1u), vec3<u32>(1u, 1u, 1u)) % vec3<u32>(32u)), vec3<bool>(_wgslsmith_f_op_f32(ceil(-1259f)) >= _wgslsmith_div_f32(1000f, 2151f), true, true)), 9479i, select(!(!select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), true)), select(!select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), true), vec4<bool>(true, var_0.a.x < 2147483647i, true, true), all(vec2<bool>(true, true))), (_wgslsmith_mod_i32(-1i, var_0.a.x) != ~(-1142i)) && false), vec4<f32>(_wgslsmith_f_op_f32(-386f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1716f)))), -416f, 560f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-2261f)))))), reverseBits(var_0.a.x));
    let var_2 = Struct_2(vec3<i32>(22580i, ~var_1.a.x, _wgslsmith_sub_i32(u_input.c, firstTrailingBit(~var_0.b))), 0i, !var_1.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1.d.x, -1215f, var_1.d.x, var_1.d.x)))))))), -_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(41367i, 2147483647i, 1i, -2147483647i), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, var_1.e, u_input.a, 0i), vec4<i32>(var_1.b, -5798i, -1i, u_input.a)), vec4<i32>(var_0.b, -2147483647i, var_1.b, var_0.b)), _wgslsmith_mod_vec4_i32(vec4<i32>(var_1.b, -2147483647i, 1i, 0i), vec4<i32>(var_0.a.x, var_0.a.x, var_1.e, 49476i))));
    var var_3 = var_1.b;
    var var_4 = countOneBits(~_wgslsmith_sub_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(41051u, 1u, 1456u, 0u), vec4<u32>(20339u, 1u, 16690u, 8897u)), 30141u));
    return var_1.c.yxx;
}

fn func_4(arg_0: u32, arg_1: vec3<bool>, arg_2: Struct_3) -> f32 {
    global0 = true;
    var var_0 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-1290f, 1100f)))), _wgslsmith_f_op_f32(-575f - _wgslsmith_f_op_f32(ceil(1906f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(2785f, -1000f, arg_1.x)))))))));
    return _wgslsmith_f_op_f32(floor(250f));
}

fn func_2() -> i32 {
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(607f - 599f)) - _wgslsmith_f_op_f32(func_4(0u, func_3(), Struct_3(vec2<i32>(u_input.a, u_input.c), 1i)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-100f, 964f), _wgslsmith_f_op_f32(-444f + -589f))) - 558f)) < -259f;
    var var_0 = vec3<bool>(!all(vec3<bool>(true, u_input.c < u_input.a, true)), select(all(func_3().yz), any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true))), !(true != (u_input.a > 58297i))), all(vec4<bool>(any(vec2<bool>(false, false)), true, all(func_3().xy), all(vec3<bool>(true, false, true)))));
    let var_1 = any(!(!select(vec2<bool>(var_0.x, true), var_0.zy, true))) & !(!(!(u_input.c >= -2147483647i)));
    global0 = false;
    var var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1162f)))));
    return 1i;
}

fn func_1() -> Struct_2 {
    global0 = true;
    let var_0 = _wgslsmith_dot_vec4_i32(vec4<i32>(abs(~_wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.b), vec2<i32>(-2147483647i, u_input.c))), _wgslsmith_add_i32(1i, -(~u_input.c)), ~_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 0i) >> (vec2<u32>(0u, 0u) % vec2<u32>(32u)), vec2<i32>(1i, 2147483647i)), abs(1i)), ~(-_wgslsmith_add_vec4_i32(select(vec4<i32>(u_input.b, -1i, u_input.c, u_input.c), vec4<i32>(u_input.a, 9768i, u_input.a, u_input.b), false), reverseBits(vec4<i32>(u_input.c, -39206i, -2147483647i, -6104i)))));
    var var_1 = Struct_2(vec3<i32>(firstLeadingBit(-abs(10674i)), ~func_2(), func_2()), -select(_wgslsmith_mult_i32(26950i, 72386i), -2147483647i, all(vec4<bool>(false, true, false, true))) << (max(~1u, ~0u) % 32u), !select(vec4<bool>(true, true, true, all(vec2<bool>(true, false))), vec4<bool>(var_0 != 0i, true, true, true), false), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-642f, 1844f, 110f, -528f)))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-337f - 664f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-314f)) * _wgslsmith_f_op_f32(-840f - -2080f)), 548f, 877f)), -8167i);
    let var_2 = Struct_2(var_1.a, var_1.b, select(select(var_1.c, select(select(var_1.c, vec4<bool>(var_1.c.x, var_1.c.x, false, false), true), var_1.c, any(var_1.c.wx)), !(!var_1.c.x)), vec4<bool>(_wgslsmith_f_op_f32(-240f - 405f) >= var_1.d.x, var_1.c.x, var_1.c.x, all(var_1.c.xw)), true), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(-2038f)))), var_1.d.x, var_1.d.x, _wgslsmith_f_op_f32(-var_1.d.x)))), var_0);
    var_1 = var_2;
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~1u;
    global0 = true;
    var var_1 = func_1();
    var var_2 = Struct_1(1i, -_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(var_1.a, -vec3<i32>(var_1.e, 0i, u_input.c)), u_input.c), vec3<i32>(u_input.b, _wgslsmith_sub_i32(func_1().e, -19389i), ~(1i & var_1.e)) & _wgslsmith_mod_vec3_i32(vec3<i32>(-19124i, var_1.a.x, u_input.b) ^ -vec3<i32>(u_input.b, var_1.a.x, var_1.b), var_1.a), vec2<bool>(false & all(select(var_1.c, vec4<bool>(false, var_1.c.x, var_1.c.x, true), var_1.c.x)), true));
    var_0 = 0u;
    var_2 = Struct_1(var_2.c.x, 13682i, ~var_1.a, !var_2.d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1109f + _wgslsmith_f_op_f32(min(var_1.d.x, -238f))))) - _wgslsmith_f_op_f32(select(var_1.d.x, var_1.d.x, false))));
}

