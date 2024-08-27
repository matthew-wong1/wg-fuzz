struct Struct_1 {
    a: vec3<f32>,
    b: vec4<bool>,
    c: vec2<i32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: u32,
}

struct Struct_4 {
    a: i32,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_3) -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-1082f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-2562f))))));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1006f))), _wgslsmith_f_op_f32(506f * 1394f))) - _wgslsmith_f_op_f32(-arg_1.b.a.x));
    var_0 = 1266f;
    let var_1 = Struct_4(firstLeadingBit(arg_1.b.c.x) << (0u % 32u), all(vec2<bool>(arg_1.b.b.x, !(!arg_1.b.b.x))));
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -324f);
    return vec3<i32>(min(-48036i, arg_1.a.a.x), _wgslsmith_clamp_i32(-2147483647i, -47392i, _wgslsmith_mod_i32(firstTrailingBit(1i), firstTrailingBit(-arg_1.a.a.x))), (~_wgslsmith_sub_i32(var_1.a, var_1.a) ^ abs(-arg_1.b.d.x)) & max(~select(-1i, -30705i, true), reverseBits(firstTrailingBit(u_input.b.x))));
}

fn func_2(arg_0: Struct_4, arg_1: vec4<f32>) -> Struct_2 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1000f, arg_1.x, 658f))), !vec4<bool>(arg_0.b, false, false, arg_0.b), vec2<i32>(-2779i, 23410i), vec3<i32>(_wgslsmith_dot_vec2_i32(u_input.b.wy & (vec2<i32>(u_input.b.x, u_input.b.x) ^ vec2<i32>(-1i, 54043i)), vec2<i32>(-2147483647i, 1i)), u_input.e, -(i32(-1i) * -10275i)));
    var_0 = Struct_1(var_0.a, !select(var_0.b, select(!var_0.b, var_0.b, var_0.b.x), !var_0.b), _wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(var_0.c.x, u_input.e), 0i), vec2<i32>(-32913i, 1i), var_0.d.yy), _wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(-func_3(u_input.d, Struct_3(Struct_2(vec3<i32>(arg_0.a, arg_0.a, -1i)), Struct_1(var_0.a, var_0.b, u_input.b.yy, var_0.d), 62233u)), ~(~vec3<i32>(var_0.c.x, -1i, var_0.d.x))), _wgslsmith_mult_vec3_i32(var_0.d, min(_wgslsmith_mod_vec3_i32(vec3<i32>(1i, 1i, 2147483647i), vec3<i32>(arg_0.a, var_0.d.x, u_input.b.x)), vec3<i32>(0i, var_0.c.x, u_input.b.x))), firstLeadingBit(~vec3<i32>(u_input.e, -6973i, arg_0.a))));
    var var_1 = _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_div_f32(arg_1.x, 625f), _wgslsmith_f_op_f32(exp2(arg_1.x)))));
    var var_2 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.a.x), var_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1343f - var_1.x) + -1463f), 332f), _wgslsmith_f_op_vec3_f32(max(arg_1.yyw, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(arg_1.yyy, vec3<f32>(-566f, var_0.a.x, -284f)) * _wgslsmith_f_op_vec3_f32(arg_1.yxy - vec3<f32>(886f, 1249f, var_1.x))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(arg_1.ywz, arg_1.zxw, var_0.b.zxx)), var_0.a, vec3<bool>(var_0.b.x, var_0.b.x, false))))))));
    var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(431f, var_2.x) - var_2.x))), _wgslsmith_f_op_f32(f32(-1f) * -215f));
    return Struct_2(abs(var_0.d));
}

fn func_1(arg_0: vec2<u32>) -> Struct_2 {
    return func_2(Struct_4(u_input.e, true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-463f, 669f, 635f, 1994f) + vec4<f32>(-164f, -914f, 254f, 1158f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 4294967295u;
    var var_1 = vec4<bool>(false, any(!(!select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), true))), true, false);
    var var_2 = Struct_3(func_1(~(~(vec2<u32>(var_0, u_input.a) | u_input.d.xw))), Struct_1(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-158f, -432f, -143f))))))), !select(vec4<bool>(true, var_1.x, var_1.x, false), vec4<bool>(var_1.x, false, var_1.x, true), false), u_input.b.yy, _wgslsmith_clamp_vec3_i32(max(u_input.b.wyx, vec3<i32>(u_input.e, u_input.e, 37473i)), vec3<i32>(~u_input.b.x, u_input.e, 2147483647i), min(vec3<i32>(u_input.b.x, -12846i, 20746i) << (u_input.d.wzx % vec3<u32>(32u)), u_input.b.wyy))), 7440u);
    let var_3 = Struct_3(Struct_2(-vec3<i32>(~(-42208i), -28032i, firstTrailingBit(u_input.e))), var_2.b, firstTrailingBit(~(1u >> (var_2.c % 32u))));
    var var_4 = Struct_4(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(var_3.b.c.x, 2147483647i, var_2.a.a.x, 2147483647i) ^ (vec4<i32>(0i, -32915i, u_input.b.x, -33060i) | vec4<i32>(u_input.b.x, var_3.a.a.x, -1i, 0i))), var_2.a.a.x), true);
    var_1 = !vec4<bool>(true, false, any(select(var_2.b.b.zy, vec2<bool>(true, var_3.b.b.x), all(vec4<bool>(var_1.x, var_2.b.b.x, var_1.x, false)))), false);
    var var_5 = -76022i;
    let var_6 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-812f, var_3.b.a.x, var_2.b.a.x, var_2.b.a.x)))))));
    var_1 = var_2.b.b;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.ww, vec4<u32>(~var_0, 1439u, ~var_3.c, _wgslsmith_sub_u32(u_input.d.x, ~(21182u ^ var_2.c))));
}

