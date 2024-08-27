struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: vec3<f32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec4<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: i32,
}

struct Struct_5 {
    a: u32,
    b: vec3<u32>,
    c: vec3<f32>,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: u32;

var<private> global2: vec2<bool> = vec2<bool>(true, false);

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> Struct_4 {
    global1 = u_input.d.x;
    let var_0 = Struct_4(-((~u_input.c >> (countOneBits(vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.a)) % vec4<u32>(32u))) ^ _wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, u_input.b, 0i, u_input.b), u_input.c), firstLeadingBit(u_input.c), vec4<i32>(-13217i, u_input.b, 64496i, -2147483647i) & vec4<i32>(19445i, 2147483647i, u_input.b, u_input.c.x))), -u_input.c.x);
    return var_0;
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: vec3<u32>) -> vec2<bool> {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_1.b, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-974f, arg_1.a.c.x)))) * arg_1.a.c.x), arg_1.d.c.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1306f + arg_1.d.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(arg_1.b)), _wgslsmith_f_op_f32(-arg_1.d.c.x)))));
    var var_1 = arg_1.a.b.wz;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x));
    let var_3 = select(vec2<bool>(false, 1u != _wgslsmith_mod_u32(~arg_2.x, u_input.a << (arg_0.x % 32u))), select(arg_1.d.b.wz, select(select(select(arg_1.c.ww, vec2<bool>(false, false), arg_1.d.b.yz), !vec2<bool>(arg_1.c.x, var_1.x), !arg_1.c.yy), !arg_1.c.ww, arg_1.c.yx), arg_1.d.b.zy), true);
    var_1 = vec2<bool>(-u_input.c.x <= arg_1.a.a, true);
    return vec2<bool>(global2.x, false);
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_4, arg_2: vec2<bool>) -> bool {
    let var_0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(-911f, _wgslsmith_div_f32(2605f, 830f))), _wgslsmith_f_op_f32(ceil(-706f)), _wgslsmith_f_op_f32(round(-1000f))))));
    var var_1 = var_0.xz;
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1297f, var_1.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1172f)), _wgslsmith_f_op_f32(-var_0.x)), var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(598f - var_1.x))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1283f, _wgslsmith_div_f32(1151f, 298f), _wgslsmith_f_op_f32(min(-1726f, _wgslsmith_f_op_f32(floor(var_1.x)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(687f * var_0.x), 568f)))));
    global0 = u_input.a;
    global1 = u_input.a | ~(_wgslsmith_add_u32(u_input.a, u_input.a) | 31128u);
    return all(!(!vec3<bool>(-414f != var_1.x, all(vec3<bool>(true, global2.x, arg_2.x)), true)));
}

fn func_5(arg_0: vec4<bool>, arg_1: u32) -> Struct_1 {
    let var_0 = select(arg_0.zw, vec2<bool>(false, select(arg_0.x, global2.x, true)), global2.x == any(select(func_3(u_input.d, Struct_2(Struct_1(u_input.c.x, vec4<bool>(arg_0.x, global2.x, arg_0.x, false), vec3<f32>(832f, 795f, -1000f), vec2<i32>(u_input.c.x, 2147483647i)), 1140f, vec4<bool>(true, arg_0.x, global2.x, true), Struct_1(-23762i, vec4<bool>(true, global2.x, arg_0.x, global2.x), vec3<f32>(835f, 894f, 845f), u_input.c.zz)), u_input.d), func_3(vec3<u32>(u_input.a, u_input.d.x, 47171u), Struct_2(Struct_1(3504i, arg_0, vec3<f32>(-1047f, 250f, 668f), vec2<i32>(-11020i, 16927i)), -1087f, vec4<bool>(true, false, arg_0.x, true), Struct_1(25491i, arg_0, vec3<f32>(1382f, -338f, -319f), vec2<i32>(u_input.c.x, 2147483647i))), u_input.d), true)));
    var var_1 = Struct_2(Struct_1(-1i & -_wgslsmith_add_i32(u_input.c.x, u_input.c.x), arg_0, vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-129f + 238f), _wgslsmith_f_op_f32(-1227f + 511f)), -1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(757f - 740f), 1f)), _wgslsmith_sub_vec2_i32(u_input.c.zw, vec2<i32>(1i, u_input.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1392f, _wgslsmith_f_op_f32(-917f - _wgslsmith_f_op_f32(min(653f, -1033f))), true))), vec4<bool>(arg_0.x, true, (~1234u > (u_input.a << (0u % 32u))) && arg_0.x, false), Struct_1(u_input.c.x, arg_0, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(2381f + -354f), -343f, _wgslsmith_f_op_f32(f32(-1f) * -1050f)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1000f, -1708f, 1118f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(797f, -720f, 1505f)))), reverseBits(max(~vec2<i32>(0i, u_input.b), _wgslsmith_add_vec2_i32(u_input.c.yx, vec2<i32>(u_input.b, 2147483647i))))));
    var var_2 = reverseBits(var_1.a.a) >> (11516u % 32u);
    let var_3 = _wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(~_wgslsmith_add_vec2_i32(min(var_1.d.d, vec2<i32>(-1i, -11032i)), min(vec2<i32>(var_1.a.a, -1i), u_input.c.wz)), u_input.c.yy, ~(-(~var_1.a.d))), var_1.a.d);
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -800f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.d.c.x * var_1.b), _wgslsmith_f_op_f32(-971f + -193f)) - var_1.d.c.x))));
    return var_1.a;
}

fn func_1(arg_0: Struct_5, arg_1: f32, arg_2: i32, arg_3: i32) -> bool {
    global0 = arg_0.b.x;
    global2 = !vec2<bool>(!all(vec3<bool>(global2.x, global2.x, global2.x)), !global2.x);
    var var_0 = Struct_2(func_5(vec4<bool>(global2.x, global2.x, !all(vec3<bool>(global2.x, true, global2.x)), func_4(_wgslsmith_sub_vec4_i32(u_input.c, vec4<i32>(arg_3, 0i, u_input.c.x, u_input.b)), func_2(), func_3(u_input.d, Struct_2(Struct_1(30548i, vec4<bool>(global2.x, true, global2.x, true), arg_0.c, u_input.c.zw), arg_0.d, vec4<bool>(false, global2.x, true, global2.x), Struct_1(arg_3, vec4<bool>(global2.x, false, global2.x, global2.x), vec3<f32>(arg_1, 513f, arg_1), vec2<i32>(1i, u_input.b))), vec3<u32>(arg_0.b.x, 32425u, 49935u)))), 562u << (_wgslsmith_add_u32(_wgslsmith_add_u32(u_input.d.x, 35186u), select(49990u, arg_0.a, true)) % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1, func_5(!vec4<bool>(true, global2.x, global2.x, true), u_input.d.x & 0u).c.x))), !(!select(vec4<bool>(global2.x, global2.x, global2.x, global2.x), !vec4<bool>(false, global2.x, true, false), select(vec4<bool>(global2.x, global2.x, true, global2.x), vec4<bool>(global2.x, false, true, false), global2.x))), Struct_1(min(0i, 2147483647i), func_5(select(select(vec4<bool>(global2.x, false, true, true), vec4<bool>(global2.x, true, true, true), vec4<bool>(global2.x, global2.x, true, global2.x)), !vec4<bool>(false, global2.x, global2.x, global2.x), global2.x), u_input.a).b, vec3<f32>(arg_0.c.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1))), _wgslsmith_f_op_f32(f32(-1f) * -872f)), u_input.c.zx));
    var var_1 = min(-_wgslsmith_clamp_i32(_wgslsmith_mult_i32(func_2().b, 1i), min(_wgslsmith_sub_i32(-44217i, arg_3), arg_2), 9437i), _wgslsmith_sub_i32(u_input.c.x, arg_3));
    let var_2 = Struct_2(func_5(vec4<bool>(true, true, true, _wgslsmith_f_op_f32(floor(-879f)) == _wgslsmith_div_f32(896f, var_0.d.c.x)), 20388u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.b, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(703f, var_0.b), -588f)), true))), select(vec4<bool>(!(!global2.x), var_0.c.x, any(select(var_0.c.yz, var_0.a.b.zw, true)), ~arg_3 < -var_0.a.a), select(var_0.c, vec4<bool>(global2.x, global2.x, true, false), global2.x), !func_5(var_0.d.b, countOneBits(u_input.d.x)).b), Struct_1(-2147483647i, !var_0.d.b, arg_0.c, ~(~(-u_input.c.zx))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(u_input.c.x, !vec4<bool>(global2.x, func_1(Struct_5(0u, u_input.d, vec3<f32>(1012f, -505f, 400f), -1443f), -1000f, u_input.b, 26920i) && global2.x, global2.x, any(!vec4<bool>(global2.x, global2.x, true, global2.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -177f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(865f * 1038f)), -493f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-851f, -2372f, -1000f)))), ~vec2<i32>(firstTrailingBit(-62931i), 0i));
    var var_1 = func_2();
    global0 = ~_wgslsmith_mult_u32(u_input.d.x, 4294967295u);
    var_1 = func_2();
    var var_2 = Struct_3(Struct_1(-2147483647i, var_0.b, _wgslsmith_f_op_vec3_f32(select(func_5(select(var_0.b, var_0.b, false), u_input.a).c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1154f, var_0.c.x, 1064f))), var_0.b.yzw)), func_2().a.zx), vec4<i32>(-var_1.a.x | 1i, 0i, ~28607i, -var_1.a.x) | vec4<i32>(26956i, func_5(!vec4<bool>(var_0.b.x, true, true, false), ~0u).a, abs(_wgslsmith_div_i32(u_input.c.x, u_input.c.x)), var_1.b));
    let var_3 = Struct_4(abs(vec4<i32>(i32(-1i) * -2147483647i, firstTrailingBit(var_1.a.x), 1i, _wgslsmith_sub_i32(-42268i, var_1.a.x))), var_0.d.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(u_input.a, u_input.d.x, u_input.a) >> (vec3<u32>(u_input.d.x, u_input.a, _wgslsmith_mod_u32(_wgslsmith_clamp_u32(72121u, u_input.d.x, u_input.a), abs(u_input.a))) % vec3<u32>(32u)), _wgslsmith_dot_vec2_u32(u_input.d.xx, _wgslsmith_add_vec2_u32(~reverseBits(u_input.d.xy), vec2<u32>(50128u, u_input.d.x))), _wgslsmith_mult_vec3_i32(u_input.c.xzy >> (reverseBits(_wgslsmith_add_vec3_u32(u_input.d, vec3<u32>(u_input.a, 13210u, u_input.a))) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_i32(vec3<i32>(var_1.b, u_input.c.x, var_1.b ^ var_3.b), vec3<i32>(var_0.a, var_1.b, select(var_3.b, 0i, true)), u_input.c.wwx)));
}

