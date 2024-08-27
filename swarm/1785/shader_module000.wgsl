struct Struct_1 {
    a: vec3<bool>,
    b: vec2<i32>,
    c: f32,
    d: f32,
    e: vec3<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec4<bool>,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: f32) -> bool {
    var var_0 = ~select(_wgslsmith_dot_vec3_i32(-(~u_input.a.zxw), u_input.b), 1i, any(arg_1.c.a.xx));
    let var_1 = -arg_1.c.e;
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_2, -505f), vec2<f32>(arg_2, arg_1.d.c))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(arg_1.d.c, -1022f), vec2<f32>(arg_1.c.d, arg_2)))))));
    var_2 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.d.d, arg_2)))));
    var var_3 = arg_1.c.a.x;
    return true;
}

fn func_2(arg_0: Struct_2, arg_1: bool, arg_2: Struct_2) -> bool {
    var var_0 = vec3<bool>(any(vec2<bool>(arg_1, select(all(arg_0.b.xwy), false, arg_1))), any(arg_0.b), all(!(!vec3<bool>(arg_0.c.a.x, arg_1, true))));
    var_0 = vec3<bool>(true, true, arg_0.e);
    let var_1 = arg_0;
    var_0 = select(vec3<bool>(func_3(_wgslsmith_mod_u32(54178u, 4294967295u), var_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_2.c.d)) + _wgslsmith_f_op_f32(-arg_0.d.c))), true, true), vec3<bool>((_wgslsmith_sub_u32(u_input.e, 0u) >> (27572u % 32u)) >= u_input.e, any(vec4<bool>(false, true, false, true)), !(0i > -var_1.a.x)), select(vec3<bool>(all(!arg_2.c.a.zz), !(arg_0.c.e.x > arg_0.a.x), !arg_2.e), !arg_2.d.a, arg_0.d.a));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-179f, -853f)) + 2036f);
    return arg_1;
}

fn func_1(arg_0: vec4<i32>, arg_1: vec3<u32>, arg_2: Struct_1) -> bool {
    let var_0 = select(!vec4<bool>(func_2(Struct_2(vec4<i32>(arg_0.x, 2147483647i, arg_0.x, arg_0.x), vec4<bool>(arg_2.a.x, arg_2.a.x, false, arg_2.a.x), arg_2, arg_2, true), !arg_2.a.x, Struct_2(vec4<i32>(arg_0.x, arg_2.b.x, 2147483647i, u_input.d.x), vec4<bool>(true, false, arg_2.a.x, arg_2.a.x), Struct_1(vec3<bool>(true, false, arg_2.a.x), arg_2.e.yy, 160f, arg_2.c, arg_0.wzw), Struct_1(vec3<bool>(arg_2.a.x, arg_2.a.x, true), vec2<i32>(57287i, 14003i), arg_2.c, -2264f, vec3<i32>(-34730i, u_input.b.x, 6612i)), false)), false, _wgslsmith_f_op_f32(-arg_2.d) >= -811f, arg_2.a.x), vec4<bool>(func_3(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(0u, arg_1.x), u_input.c.yw), _wgslsmith_sub_vec2_u32(vec2<u32>(arg_1.x, u_input.e), arg_1.zy)), Struct_2(vec4<i32>(1i, arg_2.b.x, arg_2.b.x, arg_2.b.x), !vec4<bool>(arg_2.a.x, true, arg_2.a.x, true), Struct_1(vec3<bool>(arg_2.a.x, arg_2.a.x, arg_2.a.x), arg_2.b, arg_2.c, -284f, vec3<i32>(2147483647i, arg_2.b.x, -41953i)), arg_2, any(arg_2.a.xz)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_2.c, -1057f)))), true, any(vec4<bool>(true, arg_2.a.x | false, arg_2.a.x, true)), true), vec4<bool>(arg_2.a.x, func_3(u_input.c.x, Struct_2(u_input.a, select(vec4<bool>(false, false, arg_2.a.x, true), vec4<bool>(true, false, true, false), vec4<bool>(true, arg_2.a.x, arg_2.a.x, arg_2.a.x)), Struct_1(vec3<bool>(true, arg_2.a.x, arg_2.a.x), arg_0.zz, -1383f, arg_2.c, vec3<i32>(1i, 9789i, 2910i)), Struct_1(arg_2.a, arg_0.yx, arg_2.c, 164f, u_input.a.wzz), u_input.c.x < arg_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -657f))), !((arg_0.x <= -1i) && any(vec2<bool>(false, false))), arg_2.a.x));
    var var_1 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(771f, arg_2.d, -879f)));
    var var_2 = Struct_2(u_input.a, select(!(!vec4<bool>(arg_2.a.x, false, var_0.x, arg_2.a.x)), select(!var_0, !(!vec4<bool>(false, true, var_0.x, true)), var_0), all(select(select(arg_2.a, arg_2.a, vec3<bool>(false, true, arg_2.a.x)), vec3<bool>(true, true, false), arg_2.a.x))), Struct_1(select(select(var_0.xwy, !var_0.yxz, true), !select(var_0.wyy, vec3<bool>(true, var_0.x, arg_2.a.x), vec3<bool>(var_0.x, arg_2.a.x, var_0.x)), any(select(vec2<bool>(true, var_0.x), vec2<bool>(true, true), arg_2.a.x))), vec2<i32>(max(-arg_2.e.x, arg_0.x), _wgslsmith_mod_i32(10424i, -2147483647i)), _wgslsmith_f_op_f32(round(var_1.x)), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_sub_vec3_i32(-arg_2.e << (u_input.c.yzz % vec3<u32>(32u)), vec3<i32>(u_input.d.x, -1i, arg_2.e.x) & min(arg_2.e, arg_0.zxw))), Struct_1(arg_2.a, firstLeadingBit(u_input.b.xz), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(641f, 903f))) - -1509f), _wgslsmith_f_op_f32(-194f + 301f), u_input.a.xyx), true);
    var var_3 = Struct_1(vec3<bool>(var_0.x, false, var_2.c.a.x), -vec2<i32>(1i, 1i), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_2.d + _wgslsmith_f_op_f32(-var_2.d.c)), 1900f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-739f, -1016f, var_2.c.a.x & var_2.c.a.x)), -871f)), var_2.a.yyz);
    var_2 = Struct_2(select(var_2.a, vec4<i32>(~select(0i, -63260i, false), -arg_2.e.x, abs(~(-1980i)), u_input.d.x), true), !select(!(!var_0), !vec4<bool>(true, var_3.a.x, var_2.c.a.x, arg_2.a.x), true), arg_2, Struct_1(select(arg_2.a, select(!vec3<bool>(true, var_3.a.x, var_0.x), select(vec3<bool>(var_2.e, false, true), vec3<bool>(var_3.a.x, true, var_0.x), true), !var_3.a), var_3.a), -vec2<i32>(0i, -2147483647i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(arg_2.d)), var_1.x), -728f, vec3<i32>(-1i) * -abs(arg_2.e)), ((~var_2.a.x != var_3.e.x) | (true || func_3(arg_1.x, Struct_2(var_2.a, vec4<bool>(true, false, arg_2.a.x, var_2.b.x), arg_2, Struct_1(vec3<bool>(var_3.a.x, arg_2.a.x, false), vec2<i32>(1i, 0i), -1475f, var_2.d.d, arg_2.e), var_2.b.x), 865f))) & true);
    return var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(vec4<i32>(reverseBits(abs(u_input.d.x)), u_input.b.x, -1i, select(13442i, 1i, true)), _wgslsmith_add_vec3_u32(vec3<u32>(~u_input.c.x, ~(u_input.e >> (123675u % 32u)), u_input.c.x), _wgslsmith_sub_vec3_u32(u_input.c.xwy, abs(u_input.c.yxy)) << (~(~vec3<u32>(4294967295u, u_input.e, 0u)) % vec3<u32>(32u))), Struct_1(vec3<bool>(true, true, true), abs(reverseBits(u_input.d)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1503f), _wgslsmith_f_op_f32(f32(-1f) * -674f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(2178f, 785f)))), 1f)), vec3<i32>(-38609i << (u_input.c.x % 32u), ~(~(-59997i)), -13260i)));
    var var_1 = 487f;
    let var_2 = u_input.c.x;
    let var_3 = firstLeadingBit(_wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(~u_input.b, u_input.b), vec3<i32>(u_input.b.x, _wgslsmith_mult_i32(u_input.d.x, countOneBits(u_input.a.x)), u_input.d.x)));
    var_0 = func_1(countOneBits(-(~vec4<i32>(u_input.a.x, -1i, 0i, var_3.x)) & ~reverseBits(vec4<i32>(u_input.a.x, u_input.a.x, -21962i, 2505i))), ~firstLeadingBit(_wgslsmith_mult_vec3_u32(u_input.c.wxx, select(u_input.c.wyx, u_input.c.zzx, true))), Struct_1(!(!select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), false)), select(u_input.b.yy, vec2<i32>(~u_input.b.x, var_3.x), vec2<bool>(true, false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - -547f) + -1160f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-737f, -824f, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(615f - _wgslsmith_f_op_f32(-321f + -634f)) * _wgslsmith_f_op_f32(838f * _wgslsmith_div_f32(1761f, -1320f))), -u_input.a.yzx));
    let var_4 = ~abs(~select(~u_input.c.wzz, u_input.c.yzx << (vec3<u32>(9875u, var_2, 0u) % vec3<u32>(32u)), vec3<bool>(false, true, true)));
    let var_5 = Struct_2(u_input.a, vec4<bool>(false, -966f <= _wgslsmith_f_op_f32(select(2159f, _wgslsmith_f_op_f32(round(199f)), true)), false, all(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(false, false)))), Struct_1(select(vec3<bool>(true, func_2(Struct_2(u_input.a, vec4<bool>(true, false, false, true), Struct_1(vec3<bool>(false, false, false), u_input.a.yy, 1000f, 614f, var_3), Struct_1(vec3<bool>(false, true, true), u_input.a.wx, -819f, 824f, u_input.b), false), false, Struct_2(u_input.a, vec4<bool>(false, false, false, false), Struct_1(vec3<bool>(true, true, true), vec2<i32>(29329i, u_input.a.x), 128f, 1308f, vec3<i32>(u_input.a.x, 0i, var_3.x)), Struct_1(vec3<bool>(false, true, false), vec2<i32>(var_3.x, 24331i), -1515f, 771f, vec3<i32>(u_input.d.x, u_input.a.x, -42077i)), false)), true), vec3<bool>(true, true, true), vec3<bool>(true, func_1(vec4<i32>(var_3.x, var_3.x, -2147483647i, u_input.a.x), vec3<u32>(var_4.x, 33639u, var_4.x), Struct_1(vec3<bool>(true, true, false), vec2<i32>(-1i, -10347i), 1000f, 1612f, var_3)), func_1(u_input.a, vec3<u32>(44404u, var_2, 4294967295u), Struct_1(vec3<bool>(false, false, false), var_3.xy, -1014f, -1115f, vec3<i32>(var_3.x, var_3.x, -1i))))), -u_input.a.xw, 1000f, -1939f, vec3<i32>(_wgslsmith_clamp_i32(firstLeadingBit(-12582i), -1i, var_3.x), max(-u_input.b.x, _wgslsmith_dot_vec2_i32(var_3.zx, var_3.zz)), abs(reverseBits(-40379i)))), Struct_1(select(vec3<bool>(true, func_2(Struct_2(u_input.a, vec4<bool>(true, true, true, true), Struct_1(vec3<bool>(true, false, false), var_3.xy, 451f, -380f, u_input.b), Struct_1(vec3<bool>(true, false, true), vec2<i32>(var_3.x, -2147483647i), -1000f, 1843f, u_input.a.zww), true), true, Struct_2(vec4<i32>(var_3.x, 10762i, 2147483647i, 1i), vec4<bool>(false, true, true, true), Struct_1(vec3<bool>(false, false, false), u_input.a.yy, -157f, 2216f, var_3), Struct_1(vec3<bool>(true, false, true), vec2<i32>(var_3.x, var_3.x), -1500f, 1024f, var_3), false)), true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true)), vec3<bool>(true, true, true)), reverseBits(countOneBits(_wgslsmith_div_vec2_i32(var_3.zz, var_3.yz))), _wgslsmith_f_op_f32(-619f * _wgslsmith_div_f32(235f, _wgslsmith_f_op_f32(473f + 108f))), 1608f, var_3 & firstTrailingBit(_wgslsmith_div_vec3_i32(var_3, var_3))), func_2(Struct_2(firstTrailingBit(u_input.a), vec4<bool>(true, false, func_1(u_input.a, vec3<u32>(0u, 4294967295u, 4294967295u), Struct_1(vec3<bool>(false, false, true), var_3.yz, 1360f, 887f, u_input.b)), true), Struct_1(vec3<bool>(true, true, false), ~u_input.d, -1465f, -532f, -var_3), Struct_1(vec3<bool>(true, true, true), countOneBits(u_input.a.yx), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(max(622f, -901f)), abs(var_3)), false), false, Struct_2(select(~u_input.a, ~vec4<i32>(u_input.d.x, var_3.x, u_input.a.x, -1i), any(vec4<bool>(true, true, true, false))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true)), Struct_1(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false)), select(vec2<i32>(u_input.d.x, -75551i), u_input.a.xz, false), _wgslsmith_f_op_f32(round(-1698f)), 2286f, -vec3<i32>(var_3.x, -1i, 0i)), Struct_1(vec3<bool>(false, false, false), firstTrailingBit(vec2<i32>(u_input.b.x, var_3.x)), _wgslsmith_f_op_f32(478f - 503f), -925f, ~var_3), true)));
    var var_6 = _wgslsmith_dot_vec2_u32(vec2<u32>(~_wgslsmith_dot_vec3_u32(u_input.c.ywx, vec3<u32>(0u, var_2, 0u)) | (27170u ^ var_4.x), u_input.e ^ select(4294967295u, ~48381u, func_1(vec4<i32>(u_input.a.x, 18278i, var_3.x, 39607i), vec3<u32>(var_4.x, u_input.e, 10111u), Struct_1(var_5.b.yxw, vec2<i32>(1i, -22984i), -224f, var_5.c.d, u_input.b)))), countOneBits(~u_input.c.yx));
    var_1 = 409f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(1205f, -422f) - vec2<f32>(var_5.d.c, var_5.c.d)), _wgslsmith_div_vec2_f32(vec2<f32>(121f, var_5.c.c), vec2<f32>(var_5.c.c, -1427f)), true)))), vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_5.d.d * var_5.d.d))), var_5.c.d)), -6012i);
}

