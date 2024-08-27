struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: vec3<i32>,
    d: u32,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec3<f32>,
    d: Struct_2,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1(arg_0: vec3<f32>, arg_1: u32, arg_2: Struct_2, arg_3: i32) -> i32 {
    var var_0 = Struct_2(~u_input.c);
    return 49707i;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_3, arg_2: u32, arg_3: vec2<bool>) -> f32 {
    var var_0 = firstLeadingBit(vec4<i32>(_wgslsmith_mod_i32(1i ^ arg_0.c.x, abs(countOneBits(-69120i))), countOneBits(arg_1.a.c.x), select(~(-116704i >> (u_input.c.x % 32u)), -8805i, true), abs(select(-1i, arg_0.b, false))));
    var var_1 = arg_0.a;
    var var_2 = var_1.xx;
    var var_3 = abs(~6122u);
    var var_4 = -countOneBits(vec2<i32>(var_0.x & arg_1.a.b, ~(-40399i)) ^ ~_wgslsmith_clamp_vec2_i32(vec2<i32>(-16847i, var_0.x), vec2<i32>(u_input.a.x, arg_0.c.x), u_input.a));
    return arg_1.c.x;
}

fn func_3(arg_0: bool, arg_1: f32, arg_2: Struct_2) -> Struct_3 {
    var var_0 = Struct_3(Struct_1(_wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, arg_2.a.x, arg_2.a.x), vec3<u32>(u_input.c.x, 15826u, 10792u)) | abs(vec3<u32>(1u, 12106u, 0u)), abs(firstLeadingBit(vec3<u32>(4294967295u, 14519u, u_input.b)))), -func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, 1830f, -163f)), firstLeadingBit(arg_2.a.x), arg_2, u_input.a.x), vec3<i32>(3956i, -75733i, _wgslsmith_clamp_i32(-1i, 24245i, u_input.d.x) | _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.d.x, u_input.d.x, -1i), vec4<i32>(u_input.d.x, 0i, -4395i, -703i))), arg_2.a.x), arg_2, _wgslsmith_f_op_vec3_f32(vec3<f32>(-1819f, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(429f, 238f))), arg_1) - vec3<f32>(arg_1, _wgslsmith_div_f32(arg_1, 1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1205f)) - _wgslsmith_f_op_f32(ceil(533f))))), arg_2, u_input.d);
    let var_1 = max(firstLeadingBit(max(~(~19369u), 1u)), _wgslsmith_dot_vec3_u32(abs(vec3<u32>(~u_input.c.x, var_0.a.d, u_input.c.x)), ~vec3<u32>(select(59105u, arg_2.a.x, false), _wgslsmith_dot_vec2_u32(vec2<u32>(28866u, 26457u), vec2<u32>(29563u, 4294967295u)), min(4294967295u, 15564u))));
    var var_2 = var_0.d;
    var_0 = Struct_3(var_0.a, Struct_2(~(~(~arg_2.a))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(var_0.c, var_0.c, arg_0)) + _wgslsmith_f_op_vec3_f32(var_0.c + vec3<f32>(var_0.c.x, arg_1, var_0.c.x)))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(sign(-338f)), -1115f, _wgslsmith_f_op_f32(f32(-1f) * -689f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(474f, 1090f, var_0.c.x))))))), Struct_2(arg_2.a), vec2<i32>(func_1(_wgslsmith_f_op_vec3_f32(var_0.c - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1689f, var_0.c.x, -1699f) + vec3<f32>(arg_1, var_0.c.x, var_0.c.x))), ~(u_input.b << (4451u % 32u)), arg_2, u_input.d.x), firstLeadingBit(1i)));
    var_0 = Struct_3(Struct_1(min(vec3<u32>(var_1 ^ var_1, _wgslsmith_dot_vec2_u32(vec2<u32>(52149u, var_2.a.x), var_2.a), _wgslsmith_sub_u32(var_2.a.x, u_input.c.x)), var_0.a.a), u_input.d.x | -26690i, ~var_0.a.c, abs(var_1)), Struct_2(vec2<u32>(var_0.a.a.x, ~u_input.c.x) & ~reverseBits(vec2<u32>(1u, var_0.b.a.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(var_0.c))), Struct_2(~var_0.b.a), _wgslsmith_clamp_vec2_i32(select(-var_0.e, vec2<i32>(~u_input.d.x, u_input.d.x), arg_0), abs(select(vec2<i32>(var_0.e.x, u_input.a.x), vec2<i32>(var_0.e.x, 19805i), arg_0)) & vec2<i32>(min(-6958i, -57320i), u_input.d.x), -vec2<i32>(abs(1i), var_0.a.b)));
    return Struct_3(Struct_1(select(abs(vec3<u32>(var_0.b.a.x, arg_2.a.x, u_input.c.x)), vec3<u32>(1u, 4294967295u, arg_2.a.x), select(vec3<bool>(arg_0, arg_0, true), vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(arg_0, false, arg_0))) >> (var_0.a.a % vec3<u32>(32u)), -var_0.e.x, var_0.a.c, u_input.c.x), arg_2, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-var_0.c))) * var_0.c), Struct_2(~_wgslsmith_add_vec2_u32(~arg_2.a, _wgslsmith_add_vec2_u32(var_0.b.a, vec2<u32>(var_0.b.a.x, 52279u)))), reverseBits(vec2<i32>(abs(-5517i), -34323i)));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1) -> Struct_2 {
    let var_0 = Struct_3(arg_0.a, arg_0.b, arg_0.c, func_3(select(all(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true))), all(vec4<bool>(true, true, false, false)), all(vec3<bool>(false, true, false))), arg_0.c.x, arg_0.d).d, vec2<i32>(-38491i, _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.c.x, arg_1.c.x, -2147483647i, -21789i), vec4<i32>(-45861i, 46513i, 23616i, arg_0.a.b)), 1i, -abs(1i))));
    var var_1 = func_3(any(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)))) & all(vec3<bool>(true, true, true)), -1220f, Struct_2(countOneBits(_wgslsmith_mod_vec2_u32(~arg_0.b.a, max(arg_1.a.zz, var_0.a.a.zy)))));
    let var_2 = _wgslsmith_div_vec4_i32(~_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_1.c.x, 73440i, var_1.e.x, arg_1.b), vec4<i32>(arg_0.a.c.x, 0i, var_0.a.c.x, var_1.a.b), ~vec4<i32>(80093i, 50727i, var_0.a.b, var_1.e.x)), _wgslsmith_sub_vec4_i32(~vec4<i32>(0i, u_input.d.x, 0i, 47034i), select(vec4<i32>(0i, -1i, arg_1.c.x, arg_1.b), vec4<i32>(arg_0.e.x, u_input.d.x, -83122i, -15191i), vec4<bool>(false, true, true, false))) << (vec4<u32>(~u_input.b, ~24044u, var_1.b.a.x >> (1u % 32u), _wgslsmith_mod_u32(78707u, arg_0.a.a.x)) % vec4<u32>(32u))) | vec4<i32>(_wgslsmith_clamp_i32(-var_1.a.b, -reverseBits(arg_0.e.x), 60613i), countOneBits(2147483647i), -7747i, var_0.e.x >> (firstLeadingBit(var_0.a.a.x) % 32u));
    var var_3 = -10679i;
    let var_4 = select(var_2.xyx, ~max(var_0.a.c, var_0.a.c), vec3<bool>(false, false, any(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)))));
    return Struct_2(~vec2<u32>(~min(4294967295u, 28474u), 4294967295u));
}

fn func_5(arg_0: Struct_2, arg_1: i32, arg_2: Struct_2) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(621f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -242f) + _wgslsmith_f_op_f32(sign(1189f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1179f) - _wgslsmith_f_op_f32(floor(-311f)))), _wgslsmith_f_op_f32(466f - _wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(-601f - -337f))))) * vec3<f32>(1f, 1f, 1f));
    var var_1 = func_3(func_3(select(true, all(vec4<bool>(true, true, true, true)), false), var_0.x, func_3(false, -1755f, func_4(Struct_3(Struct_1(vec3<u32>(u_input.c.x, 39216u, 1u), 2147483647i, vec3<i32>(-1i, arg_1, u_input.d.x), u_input.c.x), arg_0, vec3<f32>(var_0.x, var_0.x, 1237f), Struct_2(vec2<u32>(11913u, 57827u)), vec2<i32>(arg_1, u_input.a.x)), Struct_1(vec3<u32>(44945u, arg_2.a.x, u_input.b), u_input.d.x, vec3<i32>(-13264i, arg_1, arg_1), arg_2.a.x))).d).e.x <= _wgslsmith_mod_i32(arg_1, func_3(-2147483647i >= arg_1, _wgslsmith_f_op_f32(810f - -1040f), Struct_2(vec2<u32>(4294967295u, u_input.c.x))).e.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -518f)))))), Struct_2(arg_2.a)).a;
    let var_2 = func_3(any(!select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false))), _wgslsmith_f_op_f32(302f - _wgslsmith_f_op_f32(f32(-1f) * -1907f)), arg_2);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1966f) * 570f) - _wgslsmith_f_op_f32(f32(-1f) * -375f)));
    var_1 = var_2.a;
    return func_3(all(select(select(vec4<bool>(false, true, false, false), select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), false), false), vec4<bool>(false, true, true, arg_1 == -2147483647i), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_3)) - 603f), var_2.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-281f, _wgslsmith_div_f32(-411f, _wgslsmith_f_op_f32(-2575f + 1000f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-1444f, -1000f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-378f + -1511f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(134f, 152f, 317f, 170f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-182f, 674f, -408f, -359f) - vec4<f32>(1096f, -1000f, -1000f, 624f)) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(765f, 1068f, 300f, 1866f)))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1458f, -1991f, _wgslsmith_f_op_f32(min(-610f, 1220f)), _wgslsmith_f_op_f32(751f * -1000f)))));
    var var_1 = vec2<bool>((false || (~u_input.a.x <= func_1(vec3<f32>(var_0.x, -1381f, 271f), u_input.c.x, Struct_2(u_input.c), u_input.a.x))) | true, u_input.b >= ~abs(_wgslsmith_clamp_u32(u_input.b, u_input.c.x, 53433u)));
    var var_2 = func_5(Struct_2(~vec2<u32>(~0u, _wgslsmith_sub_u32(u_input.b, 0u))), 0i, func_4(func_3(all(select(vec4<bool>(var_1.x, var_1.x, var_1.x, false), vec4<bool>(var_1.x, true, true, true), vec4<bool>(var_1.x, false, var_1.x, var_1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_1(vec3<u32>(4294967295u, 1u, 4294967295u), -22639i, vec3<i32>(36392i, u_input.d.x, u_input.d.x), u_input.c.x), Struct_3(Struct_1(vec3<u32>(u_input.b, 34998u, u_input.b), 1i, vec3<i32>(-15604i, u_input.a.x, u_input.a.x), 1u), Struct_2(u_input.c), vec3<f32>(var_0.x, var_0.x, -1000f), Struct_2(vec2<u32>(1u, u_input.b)), vec2<i32>(1i, u_input.a.x)), u_input.b, vec2<bool>(var_1.x, var_1.x))) + -1063f), Struct_2(u_input.c)), Struct_1(~select(vec3<u32>(45744u, u_input.c.x, u_input.b), vec3<u32>(82217u, u_input.b, 107098u), vec3<bool>(false, true, var_1.x)), 2147483647i, ~vec3<i32>(-6517i, 0i, -2147483647i), abs(4294967295u))));
    var var_3 = 741f;
    var var_4 = Struct_1(func_3(!all(!vec2<bool>(var_1.x, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1004f))), Struct_2(u_input.c)).a.a, _wgslsmith_mod_i32(1i, var_2.e.x), var_2.a.c, 1u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1988f, _wgslsmith_f_op_f32(sign(var_2.c.x)), var_2.c.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -572f))))));
}

