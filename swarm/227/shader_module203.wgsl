struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: u32,
    d: vec4<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: bool) -> vec2<f32> {
    let var_0 = Struct_1(_wgslsmith_add_u32(~(arg_1.a & 1u), _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c, arg_0.a, arg_1.a, arg_0.a), vec4<u32>(arg_0.a, 43718u, 44492u, arg_0.a) ^ vec4<u32>(arg_1.a, arg_1.a, 4294967295u, arg_1.a)), _wgslsmith_mod_u32(u_input.c, arg_1.a) ^ _wgslsmith_div_u32(arg_1.a, 0u))), ~firstLeadingBit(arg_1.b), arg_0.c);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-904f, _wgslsmith_f_op_f32(-1793f - arg_1.c.x)));
    let var_2 = select(select(select(!vec2<bool>(arg_3, true), !(!vec2<bool>(arg_3, false)), any(vec4<bool>(false, true, arg_3, arg_3))), vec2<bool>(true & all(vec3<bool>(arg_3, arg_3, false)), false), vec2<bool>(_wgslsmith_f_op_f32(-336f * var_1) > 1000f, true)), vec2<bool>(any(!(!vec3<bool>(arg_3, false, arg_3))), arg_3), !arg_3);
    let var_3 = _wgslsmith_clamp_vec3_u32(vec3<u32>(~0u, abs(_wgslsmith_add_u32(var_0.a, ~1u)), _wgslsmith_mod_u32(abs(u_input.b.x | arg_1.a), _wgslsmith_mod_u32(_wgslsmith_mod_u32(8737u, arg_1.a), 1984u))), vec3<u32>(~_wgslsmith_mod_u32(u_input.c, 0u), ~_wgslsmith_clamp_u32(41630u & var_0.a, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, arg_0.a), u_input.b), arg_0.a), 8069u), ((select(u_input.b, u_input.b, var_2.x) | max(vec3<u32>(arg_1.a, var_0.a, arg_0.a), vec3<u32>(var_0.a, arg_1.a, 0u))) << (countOneBits(~u_input.b) % vec3<u32>(32u))) ^ ~(~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b.x, u_input.a.x, 0u), vec3<u32>(u_input.b.x, 4294967295u, arg_1.a))));
    let var_4 = var_0.a;
    return _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(410f, arg_1.c.x) * arg_2.yx))))), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1, 402f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-778f)) * _wgslsmith_div_f32(-623f, arg_1.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-392f)) - _wgslsmith_f_op_f32(-var_1)))));
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: bool) -> bool {
    var var_0 = arg_0;
    var var_1 = Struct_1(~37576u, -var_0.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(arg_0.c, _wgslsmith_f_op_vec2_f32(func_3(arg_0, arg_0, vec4<f32>(arg_0.c.x, 444f, 492f, var_0.c.x), arg_2)))), _wgslsmith_div_vec2_f32(var_0.c, _wgslsmith_f_op_vec2_f32(floor(var_0.c)))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-556f, _wgslsmith_f_op_f32(round(-547f))))));
    let var_2 = Struct_1(~27694u, _wgslsmith_clamp_vec3_i32(vec3<i32>(0i, -605i, -32667i), _wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-7727i, arg_0.b.x, -3897i), u_input.d.yxz, vec3<i32>(var_1.b.x, 1i, arg_0.b.x)), countOneBits(u_input.d.ywz)) | vec3<i32>(~var_1.b.x, 1i, arg_1 >> (u_input.b.x % 32u)), ~(~countOneBits(var_0.b))), _wgslsmith_f_op_vec2_f32(max(var_1.c, vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.c.x * var_1.c.x), _wgslsmith_f_op_f32(max(var_0.c.x, arg_0.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.c.x * var_0.c.x) + var_1.c.x)))));
    let var_3 = Struct_1(u_input.a.x, vec3<i32>(reverseBits(-arg_0.b.x), -5120i, -43330i | abs(var_1.b.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -145f), var_0.c.x) * arg_0.c));
    var var_4 = vec3<bool>(select((-var_1.b.x >= _wgslsmith_dot_vec4_i32(vec4<i32>(33884i, arg_0.b.x, arg_1, var_2.b.x), u_input.d)) & arg_2, arg_2 & all(vec2<bool>(arg_2, arg_2)), !(!arg_2)), arg_2, false);
    return any(!select(select(vec4<bool>(false, true, arg_2, true), select(vec4<bool>(true, false, arg_2, true), vec4<bool>(false, true, var_4.x, true), vec4<bool>(true, false, false, var_4.x)), vec4<bool>(false, arg_2, false, false)), !select(vec4<bool>(arg_2, false, false, true), vec4<bool>(var_4.x, false, true, false), arg_2), true && (var_4.x == arg_2)));
}

fn func_1(arg_0: Struct_1) -> bool {
    var var_0 = _wgslsmith_div_vec2_i32(vec2<i32>(-1i) * -u_input.e, _wgslsmith_sub_vec2_i32(select(vec2<i32>(_wgslsmith_div_i32(22896i, 2147483647i), i32(-1i) * -1i), vec2<i32>(_wgslsmith_clamp_i32(u_input.d.x, arg_0.b.x, u_input.d.x), ~u_input.e.x), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true))), vec2<i32>(20280i, -24455i)));
    let var_1 = !vec4<bool>(1u != _wgslsmith_add_u32(~u_input.a.x, u_input.a.x & 19255u), any(vec4<bool>(false, true, false, true)) && !func_2(Struct_1(1u, vec3<i32>(u_input.e.x, -1i, 1i), vec2<f32>(arg_0.c.x, arg_0.c.x)), -12585i, true), true, true);
    var var_2 = ~(~_wgslsmith_sub_u32(u_input.c, 1u));
    var_0 = _wgslsmith_mult_vec2_i32(~(countOneBits(u_input.e) | -u_input.d.xz) >> (vec2<u32>(36795u, _wgslsmith_mod_u32(_wgslsmith_sub_u32(u_input.c, 0u), reverseBits(1u))) % vec2<u32>(32u)), arg_0.b.zx);
    var var_3 = reverseBits(min(u_input.d, _wgslsmith_div_vec4_i32(~vec4<i32>(23155i, 13484i, var_0.x, -2147483647i), ~vec4<i32>(0i, arg_0.b.x, arg_0.b.x, arg_0.b.x)) & (vec4<i32>(-66863i, arg_0.b.x, var_0.x, 2147483647i) << (abs(vec4<u32>(0u, u_input.a.x, u_input.c, 28385u)) % vec4<u32>(32u)))));
    return !(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.c.x), _wgslsmith_f_op_f32(arg_0.c.x - -1557f))) <= _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.c.x), _wgslsmith_f_op_f32(f32(-1f) * -1263f), true))) || any(vec4<bool>(var_1.x, true, true, _wgslsmith_f_op_f32(-arg_0.c.x) <= 376f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(select(!all(vec2<bool>(true, true)), !(!any(vec4<bool>(false, true, false, false))), func_1(Struct_1(min(u_input.b.x, 4294967295u), u_input.d.yyz ^ u_input.d.zxz, _wgslsmith_f_op_vec2_f32(vec2<f32>(254f, 2401f) * vec2<f32>(-1657f, 124f))))), select(true, true, !func_2(Struct_1(u_input.b.x, vec3<i32>(-2147483647i, u_input.d.x, u_input.e.x), vec2<f32>(1053f, -1423f)), 1i, func_2(Struct_1(4294967295u, vec3<i32>(-12381i, u_input.d.x, -2147483647i), vec2<f32>(852f, 552f)), -1i, true))));
    var var_1 = u_input.b;
    var var_2 = vec4<bool>(any(select(!(!vec4<bool>(false, true, true, var_0.x)), vec4<bool>(!var_0.x, any(vec4<bool>(var_0.x, true, var_0.x, false)), false, true), all(select(var_0, var_0, var_0.x)))), any(!(!(!vec3<bool>(true, true, var_0.x)))), select((var_0.x | true) | (u_input.b.x == 34463u), ~u_input.c < max(var_1.x, var_1.x), !(!var_0.x)) && !any(select(vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(var_0.x, false, true), vec3<bool>(var_0.x, true, false))), func_2(Struct_1(u_input.a.x, u_input.d.zwx, _wgslsmith_f_op_vec2_f32(vec2<f32>(-1314f, 1000f) - vec2<f32>(-325f, -393f))), _wgslsmith_div_i32((-1i & u_input.e.x) | abs(u_input.e.x), 2147483647i), !any(!vec2<bool>(true, var_0.x))));
    var var_3 = 51584u;
    let var_4 = -2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(-1i | _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-68162i, var_4, -11895i, 0i) & u_input.d, _wgslsmith_sub_vec4_i32(u_input.d, vec4<i32>(u_input.d.x, 31635i, u_input.e.x, var_4))), _wgslsmith_sub_i32(17368i, 779i)), ~abs(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, u_input.a.x, 18048u, 4294967295u), vec4<u32>(u_input.a.x, var_1.x, 4294967295u, 4294967295u))) & _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(0u, var_1.x, u_input.c), _wgslsmith_mult_u32(var_1.x, 4294967295u), var_1.x, u_input.c), vec4<u32>(_wgslsmith_div_u32(0u, 10357u), _wgslsmith_mod_u32(var_1.x, var_1.x), u_input.b.x, ~4294967295u)), _wgslsmith_sub_i32(~(-24102i), 0i >> (~u_input.a.x % 32u)) & ((u_input.d.x >> (reverseBits(u_input.c) % 32u)) << (select(_wgslsmith_div_u32(var_1.x, var_1.x), 23607u, var_0.x) % 32u)), ~69427u, -1121f);
}

