struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: i32,
    b: vec2<i32>,
    c: bool,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(-766f), Struct_1(-1263f), Struct_1(-875f), Struct_1(-174f), Struct_1(753f), Struct_1(161f), Struct_1(-1000f), Struct_1(858f));

var<private> global2: vec2<bool>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2() -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -439f), 1052f, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-119f, _wgslsmith_div_f32(-486f, 941f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1435f * 151f)), global2.x)), -973f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(351f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-657f + 1000f) - _wgslsmith_f_op_f32(round(-878f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1682f * -265f), _wgslsmith_f_op_f32(1171f * 315f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1074f)))) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-459f, -2039f)) * 1219f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(744f - -1853f))), 867f, _wgslsmith_f_op_f32(sign(483f)))));
    var var_1 = var_0.x;
    var var_2 = Struct_2(_wgslsmith_mod_i32(u_input.b.x, -2147483647i), vec2<i32>(12764i, u_input.b.x), all(vec3<bool>(global2.x, true, global2.x)), global2.x);
    let var_3 = var_0.x;
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.x, var_0.x, true)) + -850f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(1660f - var_0.x), _wgslsmith_f_op_f32(-1654f * var_0.x))) - 720f));
    return u_input.d;
}

fn func_3() -> vec4<bool> {
    let var_0 = Struct_2(_wgslsmith_sub_i32(-u_input.b.x, select(-(~u_input.b.x), u_input.b.x, any(vec2<bool>(false, global2.x)))), -(~_wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-9846i, 61069i), u_input.b.xz), _wgslsmith_div_vec2_i32(u_input.b.wy, u_input.b.yw))), any(!select(vec3<bool>(global2.x, false, global2.x), vec3<bool>(global2.x, true, global2.x), vec3<bool>(false, global2.x, global2.x))) == true, !(!(!(!global2.x))));
    global0 = _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-1000f + -545f));
    let var_1 = !(!vec3<bool>(all(!vec4<bool>(global2.x, global2.x, true, true)), var_0.d, false));
    var var_2 = var_1.zy;
    let var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1681f))));
    return vec4<bool>(!all(select(var_1, var_1, var_1)), var_0.c, global2.x, true);
}

fn func_1(arg_0: Struct_2) -> Struct_2 {
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.c.x, ~func_2()), 8u)];
    var var_1 = 776f;
    var var_2 = func_3();
    var var_3 = Struct_2(-2147483647i, firstLeadingBit(_wgslsmith_add_vec2_i32(countOneBits(u_input.b.yy), ~(vec2<i32>(-2147483647i, -26385i) & arg_0.b))), arg_0.c, arg_0.d);
    var var_4 = arg_0;
    return Struct_2(~arg_0.a, select(~vec2<i32>(-61103i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, var_4.b.x), vec2<i32>(u_input.b.x, u_input.b.x))), -((vec2<i32>(-106898i, var_3.a) ^ vec2<i32>(var_4.b.x, arg_0.a)) >> (vec2<u32>(u_input.c.x, 9339u) % vec2<u32>(32u))), ~_wgslsmith_div_u32(u_input.a, 34260u) <= func_2()), !global2.x, all(var_2.wy));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: i32) -> i32 {
    var var_0 = u_input.c.x << (~(~_wgslsmith_mod_u32(~u_input.a, 1u)) % 32u);
    let var_1 = !arg_2.xy;
    global0 = _wgslsmith_div_f32(2050f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a + -169f) - arg_1.a))));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a - _wgslsmith_f_op_f32(round(-499f))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.a, _wgslsmith_f_op_f32(arg_1.a - 1566f))));
    let var_2 = Struct_2(reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.b.x, arg_3), -select(vec2<i32>(arg_0.b.x, 1i), vec2<i32>(u_input.b.x, 2147483647i), global2.x))), _wgslsmith_add_vec2_i32(arg_0.b ^ (vec2<i32>(-2849i, u_input.b.x) | u_input.b.zw), _wgslsmith_div_vec2_i32(u_input.b.yx, u_input.b.zz)) << ((~abs(u_input.c.xw) >> (_wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.d, u_input.d), u_input.c.wx) % vec2<u32>(32u))) % vec2<u32>(32u)), true, global2.x);
    return var_2.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_vec3_i32(vec3<i32>(0i, func_4(func_1(Struct_2(17549i, vec2<i32>(u_input.b.x, 1i), true, global2.x)), global1[_wgslsmith_index_u32(39515u, 8u)], func_3(), func_1(Struct_2(u_input.b.x, u_input.b.yy, true, false)).a) | max(-23102i, -44755i), -2147483647i), _wgslsmith_add_vec3_i32(firstLeadingBit(~_wgslsmith_mult_vec3_i32(u_input.b.yzz, vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x))), min(u_input.b.xwy, u_input.b.wxz)));
    global2 = !select(vec2<bool>(any(vec4<bool>(false, global2.x, global2.x, global2.x)), all(func_3().yzx)), !select(select(vec2<bool>(global2.x, global2.x), vec2<bool>(global2.x, global2.x), vec2<bool>(global2.x, false)), vec2<bool>(global2.x, global2.x), true), global2.x);
    global2 = vec2<bool>(all(vec3<bool>(all(select(vec2<bool>(global2.x, false), vec2<bool>(global2.x, global2.x), vec2<bool>(false, true))), true, all(!vec2<bool>(global2.x, global2.x)))), false);
    let var_1 = _wgslsmith_mod_u32(52302u, _wgslsmith_mod_u32(71538u | abs(~u_input.c.x), 1u));
    global2 = vec2<bool>(global2.x, all(vec2<bool>(true, global2.x || true)));
    var var_2 = Struct_2(-u_input.b.x, vec2<i32>(u_input.b.x, abs(-u_input.b.x)), true, global2.x);
    var var_3 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(firstTrailingBit(u_input.c), vec4<u32>(22126u, ~1u, 80406u, u_input.d)), 8u)];
    let var_4 = func_1(func_1(func_1(Struct_2(1i, _wgslsmith_sub_vec2_i32(var_2.b, var_0.yy), all(vec3<bool>(true, var_2.c, global2.x)), global2.x))));
    var_2 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(0u, vec3<u32>(firstTrailingBit((u_input.a ^ 4294967295u) << (~1u % 32u)), u_input.d, u_input.a), ~var_1, max(vec4<i32>(~(i32(-1i) * -9149i), -27088i, ~_wgslsmith_div_i32(-19580i, u_input.b.x), var_0.x), countOneBits(_wgslsmith_mod_vec4_i32(select(u_input.b, vec4<i32>(var_4.b.x, var_0.x, u_input.b.x, var_2.a), true), u_input.b))));
}

