struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: vec3<f32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<i32>,
    c: Struct_1,
    d: vec3<u32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
    d: vec2<u32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: f32, arg_1: vec4<i32>, arg_2: vec3<bool>) -> u32 {
    let var_0 = arg_1.x;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(arg_0 * 232f), vec2<f32>(arg_0, arg_0), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-178f, 864f, -1209f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, 292f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, 152f, -883f) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1705f, arg_0, arg_0)))))) + vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1786f * arg_0), -1264f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(arg_0, arg_0)), _wgslsmith_f_op_f32(step(586f, arg_0))), _wgslsmith_f_op_f32(step(arg_0, _wgslsmith_f_op_f32(-arg_0))))), select(abs(vec4<i32>(arg_1.x ^ -8888i, u_input.a.x, abs(-51882i), 2147483647i)), vec4<i32>(firstTrailingBit(_wgslsmith_mult_i32(arg_1.x, -1i)), -1i, firstLeadingBit(arg_1.x ^ 33116i), ~(i32(-1i) * -2147483647i)), vec4<bool>(false, !any(vec3<bool>(arg_2.x, false, arg_2.x)), !arg_2.x | true, !(false & arg_2.x))));
    let var_2 = !(!arg_2);
    var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(-219f, _wgslsmith_f_op_f32(1436f + -896f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_1.a + -917f))))), var_1.c.xx, var_1.c, vec4<i32>(_wgslsmith_add_i32(var_0, i32(-1i) * -9583i), -_wgslsmith_mult_i32(u_input.a.x, -27904i), _wgslsmith_clamp_i32(u_input.a.x, var_0, arg_1.x) & ~var_1.d.x, abs(abs(arg_1.x))) << (~vec4<u32>(50422u, 1u, ~4294967295u, 1u) % vec4<u32>(32u)));
    var var_3 = Struct_3(abs(_wgslsmith_mult_u32(reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(27687u, 70904u), vec2<u32>(89180u, 4294967295u))), 1u)), Struct_2(_wgslsmith_f_op_f32(abs(var_1.c.x)), vec2<i32>(15854i, min(var_1.d.x, 24118i) >> (~66897u % 32u)), Struct_1(_wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_1.b, vec2<f32>(arg_0, -926f)) + var_1.c.xz), var_1.c, abs(vec4<i32>(var_1.d.x, arg_1.x, var_1.d.x, 9008i) << (vec4<u32>(1u, 64218u, 4294967295u, 119450u) % vec4<u32>(32u)))), _wgslsmith_add_vec3_u32(vec3<u32>(reverseBits(2783u), reverseBits(0u), _wgslsmith_dot_vec3_u32(vec3<u32>(103191u, 81264u, 1u), vec3<u32>(4294967295u, 39440u, 88806u))), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(5254u, 4294967295u, 0u), vec3<u32>(0u, 119603u, 5785u), vec3<u32>(169597u, 1u, 4294967295u)))), Struct_1(118f, _wgslsmith_div_vec2_f32(vec2<f32>(arg_0, _wgslsmith_f_op_f32(1559f + 657f)), var_1.b), vec3<f32>(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -751f)), _wgslsmith_f_op_f32(trunc(var_1.a))), var_1.d));
    return abs(var_3.a);
}

fn func_4(arg_0: Struct_3, arg_1: vec2<u32>) -> bool {
    let var_0 = -1188f;
    let var_1 = vec4<bool>(select(all(select(vec3<bool>(false, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), false), true)), true, false), all(vec4<bool>(true, true, true, true)), true, all(vec3<bool>(all(vec2<bool>(false, true)), select(true, true, false) || any(vec2<bool>(true, false)), true)));
    let var_2 = Struct_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0.c.a))), min(vec2<i32>(-1i) * -(~u_input.a.xw), vec2<i32>(-34840i, ~(-47399i))), arg_0.c, arg_0.b.d);
    var var_3 = vec4<u32>(0u, 10986u, arg_1.x | ~_wgslsmith_dot_vec2_u32(max(vec2<u32>(arg_0.a, 84884u), arg_1), vec2<u32>(arg_1.x, arg_1.x)), 0u);
    var_3 = countOneBits(select(~vec4<u32>(firstTrailingBit(0u), var_2.d.x, ~4294967295u, max(1u, 4294967295u)), ~max(vec4<u32>(78093u, 53604u, arg_0.b.d.x, 0u), ~vec4<u32>(4294967295u, 36108u, arg_0.a, 43507u)), any(select(select(vec3<bool>(false, false, var_1.x), var_1.yzw, var_1.zxz), select(vec3<bool>(false, var_1.x, true), vec3<bool>(var_1.x, var_1.x, var_1.x), var_1.wwy), vec3<bool>(var_1.x, false, var_1.x)))));
    return var_1.x;
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: vec4<f32>, arg_3: Struct_1) -> i32 {
    var var_0 = vec4<bool>(true, func_4(Struct_3(func_3(-1000f, reverseBits(vec4<i32>(42929i, 2147483647i, -2147483647i, 2147483647i)), vec3<bool>(true, arg_1, true)), Struct_2(1f, _wgslsmith_mod_vec2_i32(arg_0.d.xz, vec2<i32>(20662i, 54169i)), Struct_1(arg_0.b.x, arg_2.ww, arg_2.wyx, u_input.a), max(vec3<u32>(53271u, 1u, 0u), vec3<u32>(1u, 62178u, 61463u))), Struct_1(_wgslsmith_f_op_f32(sign(-683f)), arg_2.ww, _wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_2.x, 1157f, arg_3.c.x))), countOneBits(arg_3.d))), vec2<u32>(1u, 1u)), select(true, arg_0.d.x >= _wgslsmith_div_i32(u_input.a.x, u_input.a.x), true), true);
    let var_1 = arg_0.d;
    var var_2 = min(max(vec2<u32>(0u, ~62097u), ~vec2<u32>(1u, 1u)), firstLeadingBit(~min(abs(vec2<u32>(48117u, 61445u)), ~vec2<u32>(1u, 45985u))));
    let var_3 = var_0.zxz;
    var var_4 = Struct_2(1664f, ~_wgslsmith_div_vec2_i32(min(u_input.a.wy, abs(arg_0.d.zy)), _wgslsmith_mult_vec2_i32(var_1.zy << (vec2<u32>(var_2.x, 4294967295u) % vec2<u32>(32u)), vec2<i32>(var_1.x, arg_3.d.x))), arg_0, ~select(reverseBits(abs(vec3<u32>(var_2.x, var_2.x, var_2.x))), _wgslsmith_clamp_vec3_u32(vec3<u32>(19851u, var_2.x, var_2.x), _wgslsmith_div_vec3_u32(vec3<u32>(22161u, var_2.x, var_2.x), vec3<u32>(0u, 11910u, var_2.x)), vec3<u32>(4294967295u, var_2.x, 0u)), !(var_3.x & false)));
    return u_input.a.x;
}

fn func_1() -> Struct_3 {
    var var_0 = ~(~u_input.a.xz);
    var_0 = -u_input.a.zw;
    var_0 = u_input.a.zz;
    let var_1 = -func_2(Struct_1(-1239f, _wgslsmith_f_op_vec2_f32(-vec2<f32>(1135f, 1719f)), vec3<f32>(866f, 1069f, 209f), abs(vec4<i32>(32272i, 1i, 41442i, var_0.x))), true, _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-777f, -2420f, 348f, -687f), vec4<f32>(205f, -1271f, 807f, -796f)), _wgslsmith_div_vec4_f32(vec4<f32>(-937f, 1298f, 271f, -1958f), vec4<f32>(464f, 1000f, 387f, -1000f))), Struct_1(_wgslsmith_f_op_f32(-1452f - -990f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1057f, -1284f) - vec2<f32>(-273f, 1136f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-591f, -900f, -1572f)), u_input.a)) != -1i;
    let var_2 = _wgslsmith_f_op_f32(round(-930f));
    return Struct_3(~(~(~(~4294967295u))), Struct_2(var_2, u_input.a.yw, Struct_1(_wgslsmith_f_op_f32(trunc(1644f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2, var_2) * vec2<f32>(var_2, var_2)) - _wgslsmith_div_vec2_f32(vec2<f32>(var_2, 1017f), vec2<f32>(var_2, var_2))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_2, var_2, var_2))))), u_input.a | ~u_input.a), ~vec3<u32>(1u, 1u, 1u)), Struct_1(165f, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2, var_2) - vec2<f32>(var_2, var_2)))), vec2<f32>(_wgslsmith_f_op_f32(-var_2), var_2), any(select(vec3<bool>(false, var_1, false), vec3<bool>(false, false, var_1), false)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_2 - var_2), var_2, _wgslsmith_f_op_f32(abs(-531f))) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-221f, 1603f, 843f), vec3<f32>(var_2, var_2, -204f)))), vec4<i32>(var_0.x, -_wgslsmith_sub_i32(-3172i, 1i), var_0.x, 0i)));
}

fn func_5(arg_0: Struct_3, arg_1: bool) -> bool {
    let var_0 = func_1().c;
    let var_1 = Struct_3(arg_0.a, func_1().b, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.c.a, -361f))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c.x, arg_0.b.a)), _wgslsmith_div_vec2_f32(vec2<f32>(644f, -149f), vec2<f32>(arg_0.c.c.x, arg_0.b.a)))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b.c.a, arg_0.c.c.x, var_0.c.x)))), -var_0.d));
    var var_2 = !arg_1;
    let var_3 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_0.b.c.b.x * _wgslsmith_f_op_f32(arg_0.b.a * var_0.a)), 1592f, _wgslsmith_f_op_f32(var_0.a - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(var_0.a)))))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(var_0.a)), -611f)), arg_0.b.a, _wgslsmith_f_op_f32(sign(arg_0.b.a))))));
    var_2 = !(!(!(!(!arg_1))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstTrailingBit(u_input.a);
    var var_1 = var_0.x >> (~(4294967295u << (_wgslsmith_dot_vec2_u32(~vec2<u32>(0u, 58710u), ~vec2<u32>(35159u, 31445u)) % 32u)) % 32u);
    var var_2 = !func_5(func_1(), 0i != u_input.a.x);
    let var_3 = ~19002u;
    var var_4 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(~(4294967295u >> (~(0u << (var_3 % 32u)) % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1609f))), ~var_3 << (var_3 % 32u), select(~max(vec2<u32>(var_3, var_4.a), vec2<u32>(21060u, 93494u) ^ var_4.b.d.yx), vec2<u32>(~4294967295u, var_4.a), !(!all(vec3<bool>(false, true, false)))), _wgslsmith_mult_vec3_u32(~(~(~var_4.b.d)), ~var_4.b.d));
}

