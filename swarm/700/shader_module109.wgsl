struct Struct_1 {
    a: vec2<bool>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<bool>,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: u32,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3) -> bool {
    let var_0 = Struct_4(~(-select(~vec3<i32>(-2147483647i, 4661i, 0i), firstTrailingBit(vec3<i32>(0i, -2147483647i, -37373i)), vec3<bool>(true, false, true))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-267f, -383f));
    var var_2 = Struct_3(min(countOneBits(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, arg_0.b.x, u_input.a.x), vec3<u32>(arg_0.b.x, 12481u, 43661u)))), max(~_wgslsmith_mult_u32(arg_1.b, 1u), ~u_input.b.x)), abs(firstLeadingBit(min(~31460u, reverseBits(1u)))));
    let var_3 = min(reverseBits(~(-vec2<i32>(var_0.a.x, var_0.a.x))), var_0.a.xx >> ((abs(vec2<u32>(var_2.a, 55429u)) & _wgslsmith_mult_vec2_u32(u_input.b.yy, arg_0.b)) % vec2<u32>(32u))) >> (abs(vec2<u32>(~u_input.a.x, ~arg_0.b.x)) % vec2<u32>(32u));
    let var_4 = false;
    return all(vec4<bool>(false, true, arg_0.a.x, true));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec2<u32>, arg_2: vec3<bool>, arg_3: vec2<f32>) -> Struct_3 {
    let var_0 = Struct_2(arg_3.x, vec3<bool>(true, func_3(Struct_1(arg_2.yz, u_input.b.zz), Struct_3(1u, 4294967295u)), true), reverseBits(-_wgslsmith_add_i32(-arg_0.x, -arg_0.x)), Struct_1(vec2<bool>(all(!vec2<bool>(arg_2.x, true)), !arg_2.x), _wgslsmith_mult_vec2_u32(vec2<u32>(15994u, u_input.b.x), ~abs(arg_1))));
    let var_1 = vec3<f32>(arg_3.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-1614f)))), _wgslsmith_f_op_f32(f32(-1f) * -238f), var_0.d.a.x)), arg_3.x);
    let var_2 = var_0.b.x;
    var var_3 = var_1;
    var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-461f, _wgslsmith_f_op_f32(sign(arg_3.x)), var_3.x))));
    return Struct_3(var_0.d.b.x | _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(u_input.a, vec4<u32>(28742u, 0u, 4294967295u, u_input.a.x)), vec4<u32>(var_0.d.b.x, 1u, u_input.a.x, var_0.d.b.x)), countOneBits(~u_input.a)), _wgslsmith_sub_u32(_wgslsmith_mult_u32(arg_1.x, ~1u), countOneBits(29660u)));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_3) -> vec4<bool> {
    let var_0 = Struct_1(!(!select(select(arg_0.wy, arg_0.zx, arg_0.x), arg_0.ww, arg_0.yy)), vec2<u32>(~u_input.a.x, _wgslsmith_dot_vec2_u32(abs(u_input.a.xy), vec2<u32>(firstTrailingBit(1u), 18898u))));
    var var_1 = _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -266f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-106f, -776f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1000f * -241f)))))));
    var var_2 = arg_0;
    var_1 = vec2<f32>(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.x))))));
    var var_3 = vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 0u, 1u), _wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.b, vec3<u32>(10213u, var_0.b.x, 42639u), vec3<u32>(u_input.a.x, 4294967295u, u_input.b.x) & u_input.a.wyw), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(7698u, u_input.b.x, 64323u), u_input.a.xxw), ~6083u, _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(4294967295u, 27526u, arg_1.b, var_0.b.x))))), arg_1.b, 6844u);
    return select(vec4<bool>(true, true, var_0.a.x, true), arg_0, vec4<bool>(any(arg_0), any(!select(vec3<bool>(var_2.x, arg_0.x, arg_0.x), vec3<bool>(true, true, false), true)), _wgslsmith_f_op_f32(-710f * var_1.x) <= _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.x, 1177f) * _wgslsmith_div_f32(-989f, var_1.x)), !var_2.x));
}

fn func_5(arg_0: vec4<bool>) -> Struct_2 {
    var var_0 = reverseBits(~select(reverseBits(vec3<i32>(20484i, 2147483647i, 1i)), _wgslsmith_add_vec3_i32(vec3<i32>(39070i, -30432i, 41670i), vec3<i32>(0i, 38231i, 8064i)), all(arg_0)) | vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), countOneBits(vec4<i32>(0i, -2147483647i, 16512i, -75276i))), 10249i, 20434i << (~u_input.b.x % 32u)));
    var var_1 = !select(arg_0.zz, vec2<bool>(arg_0.x, all(func_4(arg_0, Struct_3(12749u, 0u)))), arg_0.zx);
    let var_2 = Struct_3(22360u, reverseBits(29740u));
    var var_3 = Struct_2(592f, select(arg_0.yxy, select(vec3<bool>(!arg_0.x, true, true), arg_0.yxz, arg_0.x), func_4(func_4(vec4<bool>(arg_0.x, arg_0.x, var_1.x, var_1.x), func_2(vec3<i32>(var_0.x, 0i, -57591i), vec2<u32>(24365u, u_input.a.x), arg_0.zxx, vec2<f32>(-1000f, -560f))), func_2(~vec3<i32>(-1i, var_0.x, var_0.x), u_input.a.yz, select(arg_0.yzy, vec3<bool>(arg_0.x, true, true), arg_0.yxz), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(204f, 1294f), vec2<f32>(-603f, 1000f), arg_0.yx)))).www), (-_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, -10310i, -1i, var_0.x), vec4<i32>(1i, var_0.x, var_0.x, 0i)) | (var_0.x | ~1i)) & _wgslsmith_sub_i32(_wgslsmith_mod_i32(var_0.x, max(48038i, var_0.x)), var_0.x), Struct_1(!(!arg_0.yy), vec2<u32>(~var_2.b << (_wgslsmith_div_u32(40040u, var_2.a) % 32u), _wgslsmith_div_u32(~0u, ~39449u))));
    let var_4 = _wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(1i, 5183i, 0i) & vec3<i32>(var_3.c, var_3.c, -1i), ~vec3<i32>(var_3.c, var_0.x, var_0.x), vec3<i32>(-2147483647i, -6356i, var_0.x)), vec3<i32>(-var_3.c, 0i, ~var_3.c)), vec3<i32>(reverseBits(_wgslsmith_div_i32(12260i, var_3.c)), _wgslsmith_dot_vec2_i32(min(vec2<i32>(20984i, var_0.x), vec2<i32>(var_0.x, 1i)), reverseBits(var_0.zx)), var_3.c)), vec3<i32>(~(-2147483647i), -var_3.c, 1i), -vec3<i32>(var_3.c, -1i, -(~var_3.c)));
    return Struct_2(_wgslsmith_f_op_f32(var_3.a * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(479f)) + _wgslsmith_div_f32(var_3.a, -1003f)))), !func_4(arg_0, Struct_3(var_3.d.b.x ^ 4294967295u, _wgslsmith_clamp_u32(22122u, var_3.d.b.x, var_2.b))).xxw, var_0.x, var_3.d);
}

fn func_1() -> bool {
    var var_0 = func_5(select(select(func_4(vec4<bool>(true, true, true, true), func_2(vec3<i32>(0i, 81745i, 1i), vec2<u32>(u_input.a.x, u_input.a.x), vec3<bool>(true, false, false), vec2<f32>(-1000f, 175f))), vec4<bool>(all(vec2<bool>(false, false)), true, any(vec4<bool>(false, false, false, false)), func_4(vec4<bool>(false, false, true, false), Struct_3(18010u, u_input.b.x)).x), u_input.a.x < ~4294967295u), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), func_4(vec4<bool>(true, true, true, true), Struct_3(4294967295u, 4294967295u))), true), vec4<bool>(true, !(u_input.b.x <= 39728u), ~u_input.a.x >= abs(u_input.a.x), true)));
    let var_1 = var_0.c;
    let var_2 = !select(select(vec4<bool>(-10288i > var_0.c, -191f != var_0.a, !var_0.d.a.x, all(vec4<bool>(var_0.b.x, true, false, false))), !(!vec4<bool>(false, false, true, var_0.d.a.x)), func_4(vec4<bool>(var_0.d.a.x, var_0.b.x, false, false), Struct_3(0u, 4294967295u))), !vec4<bool>(func_4(vec4<bool>(var_0.b.x, var_0.d.a.x, true, var_0.d.a.x), Struct_3(var_0.d.b.x, 68256u)).x, any(vec4<bool>(var_0.b.x, var_0.b.x, false, false)), 496f > var_0.a, true), select(select(!vec4<bool>(var_0.d.a.x, var_0.d.a.x, var_0.b.x, true), vec4<bool>(var_0.b.x, true, var_0.b.x, false), func_3(Struct_1(var_0.d.a, vec2<u32>(0u, 4294967295u)), Struct_3(1u, u_input.b.x))), !(!vec4<bool>(var_0.b.x, true, false, var_0.d.a.x)), func_4(select(vec4<bool>(var_0.d.a.x, false, var_0.d.a.x, true), vec4<bool>(false, var_0.d.a.x, var_0.d.a.x, false), vec4<bool>(false, true, var_0.b.x, var_0.b.x)), func_2(vec3<i32>(0i, -1i, var_0.c), u_input.b.zy, vec3<bool>(var_0.d.a.x, false, var_0.d.a.x), vec2<f32>(var_0.a, var_0.a)))));
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(174f, 867f, 1000f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, -1000f, -499f)))) - vec3<f32>(-1164f, -380f, -2409f)));
    var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_3.x), var_3.x, _wgslsmith_f_op_f32(sign(1083f))) + vec3<f32>(-370f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_3.x + -1096f))), var_0.a)));
    return func_3(Struct_1(func_5(vec4<bool>(all(var_2.wwy), 71993u >= u_input.b.x, var_2.x, true)).b.xy, u_input.b.yy), Struct_3(39797u, _wgslsmith_sub_u32(~(~u_input.a.x), u_input.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(func_1() || !all(vec3<bool>(true, false, true)));
    let var_1 = Struct_2(_wgslsmith_div_f32(882f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1365f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1095f))))), vec3<bool>(all(select(vec4<bool>(true, true, false, true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true)), func_4(vec4<bool>(true, false, false, false), Struct_3(70518u, 1u)))), false, true), 1i, Struct_1(func_5(vec4<bool>(func_5(vec4<bool>(true, false, true, false)).b.x, true, 4294967295u > u_input.a.x, true)).b.zz, vec2<u32>(_wgslsmith_add_u32(1u, u_input.a.x), u_input.b.x) << (~u_input.a.yz % vec2<u32>(32u))));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -452f) * -1000f)) - var_1.a) >= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.a)))));
    var var_2 = vec3<bool>(true, true, !(~14484u <= _wgslsmith_add_u32(~29101u, u_input.a.x)));
    var var_3 = abs(max(var_1.d.b.x, _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(0u, var_1.d.b.x, var_1.d.b.x, u_input.a.x)) & (var_1.d.b.x << (_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.a.x), vec2<u32>(u_input.b.x, 0u)) % 32u))));
    var var_4 = vec3<u32>(4294967295u, 24675u, 15811u);
    var_0 = true;
    let x = u_input.a;
    s_output = StorageBuffer(select(-vec2<i32>(-1i, var_1.c | -2147483647i), -(~_wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, 23480i), vec2<i32>(var_1.c, var_1.c))), vec2<bool>(false, any(!vec4<bool>(var_1.d.a.x, true, false, false)))), _wgslsmith_sub_u32(var_4.x ^ u_input.a.x, 65123u));
}

