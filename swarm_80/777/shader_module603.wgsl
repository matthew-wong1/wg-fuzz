struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: vec2<i32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: f32,
    d: i32,
    e: vec2<bool>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: vec4<i32>,
}

struct Struct_4 {
    a: bool,
    b: vec3<i32>,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_5 {
    a: vec2<bool>,
    b: Struct_3,
    c: Struct_1,
    d: Struct_1,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec2<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
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

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_1() -> vec4<bool> {
    let var_0 = u_input.a.xwx;
    var var_1 = false;
    let var_2 = 1446f;
    var_1 = true;
    let var_3 = vec2<u32>(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(1u, var_0.x ^ var_0.x, u_input.b, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 4294967295u), vec2<u32>(var_0.x, 23571u)))), 0u) >> (~firstTrailingBit(select(u_input.a.zz, ~vec2<u32>(4294967295u, u_input.e), true)) % vec2<u32>(32u));
    return !(!(!vec4<bool>(false, true, true, select(false, false, true))));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_5, arg_2: vec4<bool>, arg_3: Struct_4) -> vec4<bool> {
    var var_0 = 246f;
    let var_1 = Struct_5(vec2<bool>(true, true), arg_1.b, arg_3.c, arg_3.c, ~vec4<i32>(arg_1.d.c.x, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, arg_1.e.x) | arg_3.b.zx, u_input.d.yx), _wgslsmith_add_i32(arg_1.d.c.x, u_input.d.x), _wgslsmith_add_i32(u_input.c << (4294967295u % 32u), ~(-1i))));
    var var_2 = Struct_3(!vec4<bool>(!arg_2.x, arg_1.d.b, var_1.c.b, select(arg_0.a, true, !var_1.b.a.x)), var_1.e | var_1.b.c, var_1.e);
    var_0 = 310f;
    var_2 = Struct_3(!(!var_1.b.a), -firstTrailingBit(~var_2.c | _wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, -1i, -2147483647i, arg_1.e.x), vec4<i32>(-1i, u_input.d.x, -22035i, 23085i))), vec4<i32>(-2147483647i, u_input.c, i32(-1i) * -arg_1.d.c.x, -6373i));
    return !vec4<bool>(var_1.d.b, all(!var_2.a.wx), arg_3.c.a.x, !(!(!arg_2.x)));
}

fn func_3() -> bool {
    let var_0 = Struct_4(all(func_2(Struct_2(true, true, _wgslsmith_f_op_f32(898f + 1337f), u_input.c, select(vec2<bool>(true, false), vec2<bool>(true, true), false)), Struct_5(vec2<bool>(true, true), Struct_3(vec4<bool>(true, true, true, true), u_input.d, u_input.d), Struct_1(vec3<bool>(true, true, false), false, vec2<i32>(-2147483647i, -855i), vec2<f32>(-715f, 626f)), Struct_1(vec3<bool>(true, true, false), false, vec2<i32>(-55590i, u_input.d.x), vec2<f32>(-2056f, -1000f)), vec4<i32>(2147483647i, u_input.c, -1i, -6382i)), func_2(Struct_2(true, true, -1302f, 2147483647i, vec2<bool>(true, false)), Struct_5(vec2<bool>(true, false), Struct_3(vec4<bool>(false, true, true, true), vec4<i32>(-1i, u_input.c, 48413i, u_input.d.x), u_input.d), Struct_1(vec3<bool>(true, false, true), false, u_input.d.zw, vec2<f32>(472f, -2192f)), Struct_1(vec3<bool>(false, false, true), false, u_input.d.wy, vec2<f32>(1559f, 1000f)), vec4<i32>(u_input.d.x, -34797i, u_input.d.x, -2147483647i)), vec4<bool>(false, true, false, true), Struct_4(false, u_input.d.zzz, Struct_1(vec3<bool>(false, true, false), false, vec2<i32>(u_input.c, -40245i), vec2<f32>(-147f, 544f)), Struct_2(true, false, -448f, u_input.c, vec2<bool>(true, false)))), Struct_4(true, u_input.d.zxy, Struct_1(vec3<bool>(true, true, false), false, u_input.d.zy, vec2<f32>(898f, 347f)), Struct_2(true, true, 1000f, 2147483647i, vec2<bool>(true, false)))).wzx), vec3<i32>(2147483647i, _wgslsmith_clamp_i32(firstLeadingBit(0i), u_input.c, _wgslsmith_sub_i32(select(41122i, 12256i, true), 1i)), 37162i), Struct_1(select(vec3<bool>(88880u != u_input.e, true, true), vec3<bool>(true, true, true), true), true, _wgslsmith_sub_vec2_i32(u_input.d.xy, -vec2<i32>(u_input.d.x, u_input.c)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -555f), 151f))), Struct_2(!any(func_2(Struct_2(false, true, -804f, -2147483647i, vec2<bool>(false, false)), Struct_5(vec2<bool>(false, true), Struct_3(vec4<bool>(true, true, true, false), u_input.d, u_input.d), Struct_1(vec3<bool>(false, true, false), true, u_input.d.xx, vec2<f32>(-1212f, 1032f)), Struct_1(vec3<bool>(false, true, false), false, vec2<i32>(-2147483647i, u_input.d.x), vec2<f32>(-2590f, 180f)), vec4<i32>(u_input.c, u_input.d.x, -13856i, u_input.c)), vec4<bool>(false, false, false, false), Struct_4(true, u_input.d.yww, Struct_1(vec3<bool>(true, false, true), false, vec2<i32>(22483i, u_input.c), vec2<f32>(816f, 249f)), Struct_2(false, true, 237f, -1i, vec2<bool>(true, true)))).zzw), false, _wgslsmith_f_op_f32(927f - 531f), -2147483647i, vec2<bool>(true, u_input.c >= -31541i)));
    var var_1 = var_0.d.e.x;
    let var_2 = Struct_3(func_1(), vec4<i32>(_wgslsmith_div_i32(_wgslsmith_mod_i32(firstLeadingBit(u_input.d.x), _wgslsmith_sub_i32(0i, var_0.b.x)), select(var_0.d.d, ~var_0.d.d, all(vec2<bool>(var_0.a, false)))), 0i, _wgslsmith_add_i32(var_0.b.x, abs(u_input.d.x)), 1i), ~(countOneBits(u_input.d) ^ ~(vec4<i32>(u_input.c, u_input.d.x, var_0.b.x, 0i) >> (u_input.a % vec4<u32>(32u)))));
    var_1 = !any(var_2.a.zx);
    let var_3 = _wgslsmith_f_op_vec2_f32(-var_0.c.d);
    return !(!(var_0.d.c != -810f)) | var_0.d.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(false, any(!func_2(Struct_2(false, true, -239f, -15027i, vec2<bool>(true, false)), Struct_5(vec2<bool>(true, false), Struct_3(vec4<bool>(false, true, false, true), vec4<i32>(1i, u_input.d.x, u_input.c, u_input.d.x), u_input.d), Struct_1(vec3<bool>(true, true, true), true, vec2<i32>(2147483647i, u_input.d.x), vec2<f32>(-776f, -253f)), Struct_1(vec3<bool>(true, true, true), false, vec2<i32>(u_input.d.x, -2147483647i), vec2<f32>(277f, -345f)), u_input.d), func_1(), Struct_4(false, u_input.d.xxz, Struct_1(vec3<bool>(true, false, true), false, vec2<i32>(2147483647i, -33756i), vec2<f32>(2270f, 1000f)), Struct_2(false, true, -2185f, u_input.d.x, vec2<bool>(false, true))))));
    var var_1 = vec4<bool>(true, true && (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1435f) * 299f) < _wgslsmith_f_op_f32(ceil(-1042f))), false, func_3());
    var_0 = var_1.wx;
    let var_2 = Struct_4(func_1().x, ~vec3<i32>(15050i, i32(-1i) * -u_input.c, u_input.d.x), Struct_1(var_1.xwz, var_1.x & var_0.x, -select(_wgslsmith_clamp_vec2_i32(vec2<i32>(1i, u_input.d.x), u_input.d.zx, u_input.d.zw), firstTrailingBit(u_input.d.ww), false), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1011f, -211f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1048f, -1056f))))), Struct_2(true, true, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-433f, 434f)))), -_wgslsmith_add_i32(abs(u_input.d.x), ~(-9225i)), vec2<bool>(var_1.x, var_1.x)));
    var var_3 = vec3<i32>(-4614i & _wgslsmith_clamp_i32(_wgslsmith_mod_i32(var_2.b.x, var_2.c.c.x) >> (88572u % 32u), var_2.b.x >> (4294967295u % 32u), -1i), u_input.d.x, 1i);
    let var_4 = Struct_2(true, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.d.c)), ~firstLeadingBit(var_2.d.d), func_2(Struct_2(true, var_0.x, var_2.d.c, u_input.c, vec2<bool>(true, true)), Struct_5(func_1().zy, Struct_3(!vec4<bool>(var_0.x, false, true, var_0.x), u_input.d, u_input.d | u_input.d), var_2.c, Struct_1(!vec3<bool>(false, var_1.x, var_1.x), true, vec2<i32>(var_2.d.d, 21230i), _wgslsmith_f_op_vec2_f32(-vec2<f32>(804f, -1367f))), vec4<i32>(var_3.x, max(20325i, var_2.c.c.x), _wgslsmith_clamp_i32(2147483647i, 0i, 1076i), u_input.c)), select(vec4<bool>(var_2.c.b | false, true, var_0.x & var_2.d.e.x, false), vec4<bool>(true, all(vec4<bool>(var_2.a, true, var_2.c.a.x, var_1.x)), true, all(vec4<bool>(var_0.x, var_1.x, var_2.a, var_1.x))), any(!var_1.yxz)), Struct_4(func_2(var_2.d, Struct_5(var_2.c.a.yz, Struct_3(vec4<bool>(true, true, var_0.x, var_1.x), vec4<i32>(1i, var_2.b.x, var_2.c.c.x, 2147483647i), vec4<i32>(var_3.x, 2514i, var_3.x, u_input.c)), var_2.c, var_2.c, vec4<i32>(var_3.x, var_2.d.d, -1i, var_3.x)), vec4<bool>(false, var_0.x, false, var_0.x), var_2).x & (false | var_0.x), u_input.d.ywz, var_2.c, Struct_2(any(vec3<bool>(var_1.x, var_2.a, var_2.a)), var_0.x, _wgslsmith_f_op_f32(max(-628f, 360f)), _wgslsmith_dot_vec2_i32(var_3.yz, var_2.b.yz), vec2<bool>(var_2.d.b, false)))).wz);
    let var_5 = Struct_3(vec4<bool>(abs(firstTrailingBit(3118i)) != firstTrailingBit(reverseBits(-29820i)), 73839u == (15196u ^ _wgslsmith_clamp_u32(u_input.e, u_input.e, u_input.a.x)), any(var_1.zx), all(func_2(var_4, Struct_5(var_2.d.e, Struct_3(vec4<bool>(var_0.x, true, false, false), u_input.d, vec4<i32>(var_4.d, var_3.x, -40475i, 2147483647i)), var_2.c, var_2.c, vec4<i32>(var_3.x, var_2.b.x, -2147483647i, u_input.c)), vec4<bool>(var_2.a, true, false, true), var_2))), vec4<i32>(var_4.d, ~_wgslsmith_dot_vec4_i32(u_input.d, u_input.d) & (0i & select(var_3.x, u_input.c, var_2.a)), i32(-1i) * -1i, ~var_3.x), u_input.d);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(-641f, var_4.c), u_input.d.x, var_2.c.d, var_4.c);
}

