struct Struct_1 {
    a: vec2<bool>,
    b: vec3<u32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: i32,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: f32,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_3, arg_2: u32, arg_3: u32) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(min(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(492f)))));
    var var_1 = _wgslsmith_dot_vec2_u32(u_input.b.yy, ~vec2<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(arg_1.d.c, u_input.b), u_input.b.x >> (137200u % 32u)), select(min(79376u, arg_3), abs(85631u), arg_1.d.a.x | arg_1.a)));
    var var_2 = Struct_1(arg_1.d.a, firstLeadingBit(abs(select(vec3<u32>(arg_3, 19564u, u_input.b.x), vec3<u32>(9127u, 24272u, 31982u), arg_1.a))), vec3<u32>(arg_1.d.c.x, u_input.b.x, 0u) & vec3<u32>(u_input.b.x, arg_2, arg_2));
    var_2 = Struct_1(vec2<bool>(true, !(~0i == u_input.a.x)), arg_1.d.b, u_input.b);
    var var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(round(arg_1.c))), -291f) - _wgslsmith_f_op_f32(sign(var_0)))));
    return _wgslsmith_mult_i32(1i, u_input.a.x);
}

fn func_3(arg_0: i32, arg_1: vec3<bool>, arg_2: i32) -> vec2<i32> {
    var var_0 = Struct_1(select(select(arg_1.yy, select(select(arg_1.yy, arg_1.zz, vec2<bool>(arg_1.x, false)), vec2<bool>(arg_1.x, false), arg_1.xy), !arg_1.x & !arg_1.x), arg_1.yy, true), abs(vec3<u32>(0u, _wgslsmith_mod_u32(u_input.b.x, 0u), ~max(u_input.b.x, u_input.b.x))), u_input.b);
    var var_1 = Struct_3(arg_1.x && var_0.a.x, u_input.a.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(186f + _wgslsmith_f_op_f32(abs(-251f))))), _wgslsmith_f_op_f32(-153f + _wgslsmith_f_op_f32(-833f + _wgslsmith_f_op_f32(260f + -1000f))), var_0.a.x)), Struct_1(select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), var_0.a, arg_1.xx), select(vec2<bool>(arg_1.x, var_0.a.x), vec2<bool>(false, arg_1.x), arg_1.x)), !arg_1.xx, select(var_0.a, vec2<bool>(false, var_0.a.x), var_0.a)), vec3<u32>(17906u, abs(~0u), 52244u), u_input.b), var_0.a.x);
    let var_2 = Struct_3(!(reverseBits(firstLeadingBit(u_input.b.x)) < var_1.d.c.x), arg_2, _wgslsmith_f_op_f32(f32(-1f) * -1425f), var_1.d, any(!(!select(arg_1, arg_1, arg_1))));
    var var_3 = abs(_wgslsmith_dot_vec4_i32(~u_input.a, vec4<i32>(10952i << (0u % 32u), ~(-arg_0), var_1.b, u_input.a.x << (0u % 32u))));
    var_3 = -abs(_wgslsmith_div_i32(min(-3169i, func_2(vec3<f32>(-1000f, var_1.c, var_2.c), var_2, var_0.c.x, u_input.b.x)), -48616i));
    return (vec2<i32>(-1i) * -(~u_input.a.xw)) | (vec2<i32>(_wgslsmith_mult_i32(-57621i, arg_0), var_1.b) ^ vec2<i32>(2147483647i, 832i));
}

fn func_1(arg_0: vec2<i32>) -> Struct_2 {
    let var_0 = select(~u_input.a.yw, _wgslsmith_sub_vec2_i32(func_3(~func_2(vec3<f32>(1592f, 1000f, 704f), Struct_3(true, 1i, 264f, Struct_1(vec2<bool>(true, true), vec3<u32>(31460u, u_input.b.x, 0u), u_input.b), false), 0u, 12078u), vec3<bool>(false, true, true), arg_0.x), ~arg_0), all(vec2<bool>(true, true)) && all(vec3<bool>(true, true, true)));
    var var_1 = Struct_1(select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(true, true), false), true), !vec2<bool>(true, any(vec2<bool>(false, true))), true), vec3<u32>(~1u, firstTrailingBit(reverseBits(u_input.b.x)), reverseBits(max(firstTrailingBit(u_input.b.x), ~u_input.b.x))), u_input.b >> (abs(~u_input.b) % vec3<u32>(32u)));
    var_1 = Struct_1(select(select(var_1.a, var_1.a, !select(var_1.a, var_1.a, vec2<bool>(false, true))), vec2<bool>(false, any(vec3<bool>(true, var_1.a.x, false)) || true), true), ~_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 1u, 4294967295u) ^ var_1.b, _wgslsmith_add_vec3_u32(vec3<u32>(var_1.c.x, var_1.b.x, 0u) | vec3<u32>(u_input.b.x, var_1.c.x, var_1.c.x), ~var_1.b)), vec3<u32>(_wgslsmith_mod_u32(max(_wgslsmith_mult_u32(u_input.b.x, var_1.b.x), 4294967295u), max(var_1.b.x, ~0u)), ~select(firstLeadingBit(800u), _wgslsmith_mult_u32(11840u, u_input.b.x), u_input.b.x >= 4294967295u), u_input.b.x >> (min(var_1.c.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 1u), vec2<u32>(20180u, var_1.b.x))) % 32u)));
    var_1 = Struct_1(!select(!select(vec2<bool>(var_1.a.x, var_1.a.x), var_1.a, vec2<bool>(false, var_1.a.x)), select(!var_1.a, vec2<bool>(var_1.a.x, true), all(vec4<bool>(true, var_1.a.x, true, var_1.a.x))), vec2<bool>(var_1.a.x != true, true)), u_input.b, ~var_1.c);
    var var_2 = Struct_2(vec2<i32>(-1i) * -select(~vec2<i32>(-27093i, u_input.a.x), var_0, select(vec2<bool>(var_1.a.x, true), var_1.a, var_1.a.x)), arg_0.x);
    return Struct_2(func_3(arg_0.x, vec3<bool>(var_1.a.x, all(select(vec4<bool>(false, false, true, var_1.a.x), vec4<bool>(true, false, false, var_1.a.x), var_1.a.x)), true), _wgslsmith_div_i32(-24512i, -var_0.x)), 104302i);
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: bool) -> u32 {
    let var_0 = 1265f;
    var var_1 = firstLeadingBit(vec2<u32>(48574u, u_input.b.x));
    let var_2 = countOneBits(-44609i & arg_2.a.x) | -21067i;
    var var_3 = arg_2;
    let var_4 = _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1406f, var_0) * -916f), var_0)));
    return u_input.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(u_input.a.yx, func_1(u_input.a.zy), func_1(u_input.a.xx), u_input.b.x < 4294967295u);
    var var_1 = func_1(-_wgslsmith_add_vec2_i32(max(-vec2<i32>(0i, 5912i), firstLeadingBit(vec2<i32>(1i, 1i))), min(min(vec2<i32>(u_input.a.x, 1i), u_input.a.xw), ~vec2<i32>(1i, u_input.a.x))));
    var var_2 = Struct_1(vec2<bool>(true, false), u_input.b, vec3<u32>(min(~(u_input.b.x >> (0u % 32u)), u_input.b.x), u_input.b.x << (~u_input.b.x % 32u), abs(0u)));
    var var_3 = _wgslsmith_mult_i32(-15013i, _wgslsmith_mod_i32(-(~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, 1i, var_1.a.x), u_input.a)), u_input.a.x ^ 2147483647i));
    var var_4 = vec3<bool>(false, all(!vec4<bool>(var_2.a.x, false, true, all(vec4<bool>(true, false, false, false)))), var_2.a.x);
    var var_5 = Struct_2(_wgslsmith_div_vec2_i32(-vec2<i32>(0i, var_1.b), firstTrailingBit(reverseBits(var_1.a))) ^ (min(u_input.a.yw, _wgslsmith_mult_vec2_i32(u_input.a.zw, u_input.a.wx)) << (vec2<u32>(25235u, 0u) % vec2<u32>(32u))), max(u_input.a.x, ~0i << (var_2.c.x % 32u)));
    var var_6 = Struct_1(select(var_4.xz, select(vec2<bool>(true, true), var_2.a, min(var_2.c.x, var_2.c.x) < u_input.b.x), any(vec2<bool>(any(vec3<bool>(var_2.a.x, true, var_4.x)), var_2.a.x))), abs(abs(firstLeadingBit(vec3<u32>(0u, u_input.b.x, var_2.c.x)))), reverseBits(~max(vec3<u32>(var_2.b.x, 8587u, 0u), var_2.b)));
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 2887u, 0u), select(vec3<u32>(39196u, var_6.b.x, 1u), u_input.b, var_6.a.x)), 83207u, 35349u), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-437f, 942f, false)))) * -1259f), -1000f, -761f, _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(step(805f, -255f)))));
}

