struct Struct_1 {
    a: f32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec3<bool>,
    d: vec4<u32>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(1u, 20357u);

var<private> global1: u32;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: f32, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: vec3<i32>) -> vec2<bool> {
    global0 = vec2<u32>(~(~_wgslsmith_mod_u32(u_input.d.x, min(arg_2.b.x, arg_2.b.x))), ~(u_input.d.x << (1u % 32u)));
    var var_0 = arg_1.x;
    global1 = global0.x;
    var var_1 = select(!(!arg_1.xz), arg_1.zw, select(arg_1.yy, vec2<bool>(arg_1.x, arg_1.x | select(arg_1.x, true, false)), !vec2<bool>(all(arg_1), false)));
    let var_2 = arg_1.zwx;
    return select(vec2<bool>(false, !var_1.x), !select(arg_1.xw, select(!arg_1.wx, var_2.yz, true), arg_1.yz), arg_1.yz);
}

fn func_4(arg_0: vec2<bool>) -> vec4<u32> {
    global0 = u_input.d;
    global0 = _wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.d, vec2<u32>(~(65651u ^ global0.x), u_input.d.x)), u_input.d);
    var var_0 = ~countOneBits(~vec4<u32>(~u_input.c, u_input.d.x, countOneBits(global0.x), 1u));
    var var_1 = Struct_2(countOneBits(select(-18850i, 0i << (~u_input.d.x % 32u), true)), Struct_1(_wgslsmith_f_op_f32(select(252f, 1242f, all(vec3<bool>(true, arg_0.x, false)))), ~vec4<u32>(1u, var_0.x, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.d.x), var_0.zz), var_0.x << (4294967295u % 32u))), !(!vec3<bool>(true, arg_0.x, arg_0.x)), abs(select(vec4<u32>(_wgslsmith_clamp_u32(27089u, 1u, global0.x), _wgslsmith_dot_vec3_u32(var_0.yzz, vec3<u32>(30452u, 48843u, var_0.x)), 69496u, var_0.x << (u_input.c % 32u)), ~vec4<u32>(u_input.c, u_input.d.x, u_input.d.x, var_0.x), select(!vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x), !vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)))), u_input.d);
    var_1 = Struct_2(var_1.a, var_1.b, select(var_1.c, vec3<bool>(true, !var_1.c.x, -1i > _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, var_1.a), vec2<i32>(14210i, u_input.a.x))), true), select(min(select(vec4<u32>(50293u, 19341u, u_input.d.x, var_0.x), var_1.d >> (var_1.d % vec4<u32>(32u)), true), ~(var_1.d >> (vec4<u32>(u_input.c, 20711u, 18839u, 0u) % vec4<u32>(32u)))), vec4<u32>(var_0.x, countOneBits(_wgslsmith_mult_u32(var_1.e.x, u_input.d.x)), abs(var_1.d.x), 0u), any(vec3<bool>(select(false, false, arg_0.x), all(vec4<bool>(arg_0.x, var_1.c.x, true, false)), true))), var_1.e);
    return var_1.b.b;
}

fn func_2() -> Struct_2 {
    global1 = firstTrailingBit(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(abs(vec4<u32>(global0.x, 26262u, 14083u, u_input.d.x)) & max(vec4<u32>(global0.x, u_input.d.x, global0.x, u_input.c), vec4<u32>(global0.x, global0.x, u_input.c, 1u)), ~(~vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.d.x))), ~_wgslsmith_mod_vec4_u32(firstTrailingBit(vec4<u32>(global0.x, global0.x, global0.x, 1u)), vec4<u32>(4294967295u, u_input.d.x, global0.x, 4294967295u))));
    global0 = ~(~u_input.d);
    var var_0 = Struct_2(_wgslsmith_div_i32(~u_input.a.x, u_input.a.x | -(~(-24378i))), Struct_1(_wgslsmith_f_op_f32(710f + _wgslsmith_f_op_f32(f32(-1f) * -2270f)), min(reverseBits(vec4<u32>(u_input.c, global0.x, 0u, 10708u)), abs(_wgslsmith_mod_vec4_u32(vec4<u32>(global0.x, u_input.c, global0.x, 1u), vec4<u32>(20871u, u_input.c, 0u, 13787u))))), vec3<bool>(true, true, true), _wgslsmith_div_vec4_u32(abs((vec4<u32>(21178u, 57610u, global0.x, 31113u) ^ vec4<u32>(4294967295u, 1u, 26532u, 1u)) | _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 37664u, 11565u, u_input.d.x), vec4<u32>(global0.x, global0.x, 24225u, 0u))), func_4(!func_3(944f, vec4<bool>(false, true, false, false), Struct_1(-205f, vec4<u32>(1924u, global0.x, 37318u, global0.x)), vec3<i32>(2147483647i, u_input.a.x, u_input.b)))), min(max(~u_input.d, ~vec2<u32>(1u, 41406u)), ~vec2<u32>(~35467u, reverseBits(34766u))));
    var_0 = Struct_2(~var_0.a, var_0.b, select(vec3<bool>(var_0.c.x, true, !(12775u < var_0.d.x)), vec3<bool>(any(vec4<bool>(var_0.c.x, true, false, false)), var_0.c.x, true), var_0.c), _wgslsmith_mult_vec4_u32(vec4<u32>(min(var_0.d.x, ~global0.x), var_0.b.b.x, var_0.e.x, 36518u), reverseBits(func_4(var_0.c.yy))), select(min(~(~vec2<u32>(0u, 6524u)), vec2<u32>(~1u, global0.x)), ~(~var_0.b.b.yx), true));
    global1 = min(~(u_input.d.x & global0.x) << (global0.x % 32u), ~(~0u));
    return Struct_2(var_0.a, Struct_1(-586f, select(~(~var_0.d), abs(~var_0.d), false)), !(!var_0.c), var_0.b.b, vec2<u32>(firstLeadingBit(u_input.c), var_0.d.x));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2) -> vec2<f32> {
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b.a, func_2().b.a));
}

fn func_1(arg_0: vec4<u32>) -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(func_5(func_2(), Struct_2((0i & _wgslsmith_sub_i32(-2147483647i, u_input.b)) | u_input.b, func_2().b, vec3<bool>(!select(true, false, true), 4294967295u < arg_0.x, select(8589u, 4130u, false) <= _wgslsmith_div_u32(41095u, 4294967295u)), vec4<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.x, 62604u, 0u, 0u), arg_0, vec4<u32>(0u, arg_0.x, 78832u, 10259u)), _wgslsmith_div_vec4_u32(arg_0, arg_0)), global0.x, ~(~1u), min(1u, 1u) ^ _wgslsmith_mod_u32(arg_0.x, global0.x)), ~reverseBits(vec2<u32>(global0.x, u_input.d.x)))));
    let var_1 = Struct_2(-10314i, func_2().b, func_2().c, arg_0, arg_0.wz >> (vec2<u32>(_wgslsmith_mod_u32(arg_0.x, ~global0.x), countOneBits(select(39904u, u_input.d.x, true))) % vec2<u32>(32u)));
    global1 = _wgslsmith_clamp_u32(u_input.d.x, 16202u, select((4294967295u ^ var_1.d.x) | select(1u, 4294967295u, true), ~1u, var_1.c.x) >> (~(~_wgslsmith_sub_u32(global0.x, global0.x)) % 32u));
    let var_2 = max(_wgslsmith_sub_vec3_u32(~var_1.d.yww, arg_0.wxw) | select(~var_1.b.b.wzz, abs(_wgslsmith_add_vec3_u32(var_1.d.zxz, var_1.d.zwz)), var_1.c), vec3<u32>(arg_0.x, 1u, ~1u));
    let var_3 = !var_1.c.xz;
    return var_1.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = u_input.d;
    global1 = ~(~_wgslsmith_sub_u32(~(~49344u), func_1(~vec4<u32>(u_input.d.x, 48701u, global0.x, global0.x))));
    var var_0 = Struct_1(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_vec2_f32(func_5(func_2(), Struct_2(u_input.a.x, func_2().b, vec3<bool>(true, true, true), vec4<u32>(u_input.d.x, 4294967295u, global0.x, u_input.d.x), u_input.d))).x), ~(~vec4<u32>(~global0.x, min(global0.x, 4294967295u), 13159u, ~global0.x)));
    global1 = ~33406u;
    var var_1 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(func_2().b.b.yy);
}

