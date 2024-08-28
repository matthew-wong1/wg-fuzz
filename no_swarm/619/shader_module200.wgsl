struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec2<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
    c: vec2<i32>,
    d: Struct_1,
}

struct Struct_5 {
    a: u32,
    b: bool,
    c: vec2<u32>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_4, arg_2: vec4<f32>) -> i32 {
    var var_0 = (4294967295u << (u_input.e.x % 32u)) << (~(~u_input.e.x) % 32u);
    var_0 = 12397u;
    let var_1 = vec4<i32>(max(~max(12352i, 15708i) | -arg_1.c.x, 47850i), arg_1.c.x, ~(-4104i), ~_wgslsmith_clamp_i32(2153i, _wgslsmith_add_i32(_wgslsmith_sub_i32(-19194i, 1i), max(-1i, arg_1.a)), ~(0i ^ u_input.a.x)));
    var_0 = u_input.e.x;
    var var_2 = Struct_2(arg_0, reverseBits(var_1.yz), !select(!select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, any(vec3<bool>(false, true, true))), vec2<bool>(true, true)), Struct_1(_wgslsmith_f_op_vec3_f32(arg_2.yzy * _wgslsmith_f_op_vec3_f32(-arg_2.ywx))));
    return _wgslsmith_add_i32(~_wgslsmith_sub_i32(abs(-16923i), 10547i), ~var_2.b.x);
}

fn func_2(arg_0: u32, arg_1: f32) -> bool {
    var var_0 = Struct_4(countOneBits(func_3(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, arg_1, arg_1))), Struct_4(-1i, Struct_1(vec3<f32>(arg_1, 457f, -2566f)), ~u_input.d.yx, Struct_1(vec3<f32>(1037f, arg_1, arg_1))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_1, -1389f, arg_1, -1922f))))))), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(595f, -990f, -297f) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_1, arg_1, 576f), vec3<f32>(arg_1, arg_1, arg_1)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(133f, arg_1, 1035f)))), ~firstTrailingBit(~select(u_input.d.xx, u_input.d.xx, true)), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(arg_1)), _wgslsmith_f_op_f32(-arg_1), arg_1))));
    let var_1 = Struct_5(_wgslsmith_dot_vec4_u32(~firstTrailingBit(~vec4<u32>(u_input.b, 31876u, 57585u, u_input.b)), _wgslsmith_add_vec4_u32(vec4<u32>(abs(u_input.b), u_input.b & arg_0, 14681u, max(u_input.b, arg_0)), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, u_input.b, u_input.e.x, 112546u), vec4<u32>(arg_0, u_input.b, arg_0, 4294967295u)) | ~vec4<u32>(27153u, 16959u, arg_0, u_input.e.x))), true, _wgslsmith_sub_vec2_u32(u_input.e.zz, reverseBits(~vec2<u32>(5075u, 0u))), select(vec3<bool>(false, false, any(vec4<bool>(true, false, true, false))), select(select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), false), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false)), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true)), !(!select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), false))));
    var_0 = Struct_4(u_input.a.x, Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d.a.x) + -1232f), 767f, arg_1)), var_0.c, var_0.b);
    let var_2 = Struct_4(u_input.d.x, Struct_1(var_0.b.a), u_input.d.yz, Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-362f, arg_1) * -1464f), _wgslsmith_f_op_f32(f32(-1f) * -1641f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) + _wgslsmith_f_op_f32(f32(-1f) * -492f)))));
    var_0 = Struct_4(_wgslsmith_sub_i32(var_0.c.x, _wgslsmith_mod_i32(var_2.a, select(24866i, -1i, !var_1.d.x))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-var_0.d.a))))), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a.x | -1i, -1i << (_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, arg_0), vec3<u32>(1u, var_1.c.x, arg_0)) % 32u)), -vec2<i32>(_wgslsmith_dot_vec2_i32(u_input.a.zx, vec2<i32>(var_2.a, -64861i)), 0i), _wgslsmith_add_vec2_i32(u_input.d.yy, _wgslsmith_clamp_vec2_i32(vec2<i32>(var_2.a, var_2.c.x), var_2.c, -var_2.c))), var_2.d);
    return (_wgslsmith_clamp_u32(1u, 40757u, arg_0) & abs(u_input.b)) <= abs(_wgslsmith_mod_u32(0u, 90864u));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: vec4<u32>, arg_3: Struct_2) -> Struct_5 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_3.d.a)))));
    var var_1 = u_input.d.xx;
    var var_2 = select(vec3<bool>(true, true, all(vec2<bool>(true, arg_1.c.x))), vec3<bool>(arg_3.c.x, arg_3.c.x, ~var_1.x == -19515i), vec3<bool>(all(!vec3<bool>(false, arg_1.c.x, false)), false | (false && arg_3.c.x), !any(select(vec3<bool>(arg_1.c.x, true, arg_1.c.x), vec3<bool>(arg_3.c.x, true, arg_1.c.x), false))));
    var var_3 = _wgslsmith_f_op_vec2_f32(-arg_3.a.a.zx);
    var var_4 = !(!vec3<bool>(true, arg_3.c.x, arg_3.c.x));
    return Struct_5(countOneBits(arg_2.x) & 0u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(630f, arg_1.d.a.x)), _wgslsmith_f_op_f32(-arg_3.d.a.x)))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-156f + 1212f), var_3.x))), min(~(~arg_2.zy), vec2<u32>(_wgslsmith_sub_u32(select(1u, 16492u, arg_1.c.x), 42688u ^ arg_2.x), arg_2.x)), select(select(!vec3<bool>(var_4.x, var_4.x, false), vec3<bool>(true, !var_2.x, var_2.x || arg_3.c.x), !(!vec3<bool>(false, arg_3.c.x, var_2.x))), vec3<bool>(false, arg_3.c.x, false), false));
}

fn func_1(arg_0: i32, arg_1: vec4<i32>, arg_2: f32) -> Struct_5 {
    return func_4(vec3<u32>(firstTrailingBit(~(u_input.b & 42650u)), firstLeadingBit(abs(~29201u)), u_input.e.x), Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, arg_2, -1549f), vec3<f32>(arg_2, -1629f, -450f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, 402f, arg_2)))), -countOneBits(max(u_input.a.zy, arg_1.zx)), select(vec2<bool>(true, true), vec2<bool>(true, true), func_2(_wgslsmith_clamp_u32(0u, u_input.e.x, 30659u), arg_2)), Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(737f, arg_2, 1220f), _wgslsmith_f_op_vec3_f32(vec3<f32>(919f, -1000f, 1156f) - vec3<f32>(-887f, 463f, 2071f))))), ~(~(~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, u_input.e.x, 1u, u_input.b), vec4<u32>(0u, u_input.e.x, 36831u, 8531u)))), Struct_2(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(ceil(-769f)), _wgslsmith_f_op_f32(min(-1328f, arg_2)), _wgslsmith_f_op_f32(f32(-1f) * -185f))), select(arg_1.yx, -arg_1.xx, arg_1.x >= u_input.d.x) >> ((~vec2<u32>(30601u, 29003u) ^ firstTrailingBit(u_input.e.xz)) % vec2<u32>(32u)), vec2<bool>(_wgslsmith_sub_i32(49081i, arg_1.x) <= arg_1.x, true), Struct_1(vec3<f32>(arg_2, _wgslsmith_div_f32(arg_2, 331f), 1f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_5(~(~6263u), false, ~firstLeadingBit(min(reverseBits(u_input.e.zy), vec2<u32>(u_input.b, u_input.b))), vec3<bool>(all(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), false), false)), true, all(select(vec4<bool>(false, false, false, true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false)), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), false)))));
    var var_1 = vec3<f32>(294f, -1056f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1877f, -140f)))));
    var_1 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, var_1.x, -1000f) - vec3<f32>(var_1.x, var_1.x, var_1.x)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1517f, var_1.x, 152f))))))));
    var_0 = func_1(0i, vec4<i32>(u_input.a.x, ~1i, ~28323i, -30853i), var_1.x);
    var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(ceil(1889f)), _wgslsmith_div_f32(-905f, 2108f), -433f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, -672f, -316f) - vec3<f32>(var_1.x, var_1.x, -1395f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1194f, var_1.x, var_1.x) - vec3<f32>(var_1.x, var_1.x, var_1.x))))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_1.x, -290f, 527f))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1147f, 1000f, -691f), vec3<f32>(151f, 418f, 248f))))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-210f, -1000f, var_1.x) * vec3<f32>(-248f, var_1.x, -1686f))) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1424f, var_1.x, var_1.x), vec3<f32>(var_1.x, -1652f, var_1.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, -189f, -1109f)))))));
    var_0 = func_1(-1i, -_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c, u_input.c, -1i, -51155i), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.c, u_input.a.x), vec4<i32>(u_input.a.x, u_input.c, -1i, u_input.d.x), vec4<i32>(u_input.a.x, -44080i, u_input.c, -28120i))), _wgslsmith_f_op_f32(var_1.x - 229f));
    let x = u_input.a;
    s_output = StorageBuffer(1u, -2147483647i);
}

