struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec2<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: f32,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: i32,
    d: u32,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<f32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_2) -> vec2<bool> {
    let var_0 = !vec3<bool>(any(vec3<bool>(true, true, true)), arg_0.b.a.a.x, any(arg_1.b.a));
    let var_1 = select(select(vec4<bool>(any(vec2<bool>(true, false)), any(!vec4<bool>(false, arg_0.b.b.a.x, true, arg_1.e.a.x)), true, !arg_0.b.b.a.x | (arg_0.b.e.a.x || true)), vec4<bool>(true, all(vec4<bool>(false, false, arg_0.b.a.a.x, arg_1.c.a.x)), true, false), reverseBits(0i) > ~select(arg_0.c, -24210i, false)), !select(select(select(vec4<bool>(false, var_0.x, false, false), vec4<bool>(arg_0.b.b.a.x, arg_1.b.a.x, true, true), true), select(vec4<bool>(arg_1.e.a.x, arg_1.c.a.x, var_0.x, arg_1.c.a.x), vec4<bool>(true, arg_1.a.a.x, true, true), arg_0.b.a.a.x), !arg_1.b.a.x), select(vec4<bool>(arg_1.b.a.x, false, false, arg_0.b.c.a.x), !vec4<bool>(arg_1.c.a.x, true, arg_0.b.c.a.x, true), !vec4<bool>(false, arg_0.b.c.a.x, false, false)), vec4<bool>(false && arg_1.c.a.x, true, arg_1.a.a.x, false)), true);
    let var_2 = arg_0;
    var var_3 = ~(var_2.e.x << (_wgslsmith_dot_vec3_u32(firstLeadingBit(~vec3<u32>(17477u, 1u, u_input.a)), abs(vec3<u32>(15357u, u_input.a, var_2.d)) << (~vec3<u32>(u_input.a, u_input.a, 21840u) % vec3<u32>(32u))) % 32u));
    var var_4 = all(select(!vec4<bool>(all(vec3<bool>(var_2.b.c.a.x, arg_0.b.b.a.x, var_1.x)), any(arg_0.b.e.a), any(var_1), !arg_1.c.a.x), select(vec4<bool>(true, arg_0.b.b.a.x, true, var_0.x), vec4<bool>(27320i <= arg_0.e.x, all(var_0), any(var_0.zz), false & var_1.x), false), !(!select(var_1, vec4<bool>(arg_0.b.c.a.x, true, true, arg_0.b.b.a.x), arg_0.b.e.a.x))));
    return var_2.b.a.a.yx;
}

fn func_4(arg_0: vec2<bool>, arg_1: vec3<f32>, arg_2: Struct_4, arg_3: Struct_1) -> bool {
    var var_0 = arg_2.b;
    var_0 = Struct_2(var_0.b, var_0.a, Struct_1(arg_2.b.c.a), var_0.d, arg_3);
    var var_1 = Struct_2(Struct_1(select(select(select(var_0.c.a, arg_3.a, arg_2.b.c.a.x), vec3<bool>(arg_2.b.e.a.x, arg_0.x, arg_3.a.x), select(vec3<bool>(arg_3.a.x, var_0.b.a.x, false), arg_2.b.a.a, arg_2.b.b.a)), select(vec3<bool>(arg_0.x, false, arg_3.a.x), vec3<bool>(arg_2.b.a.a.x, var_0.a.a.x, true), arg_3.a.x), !arg_2.b.a.a)), Struct_1(select(vec3<bool>(true, true, true), !(!vec3<bool>(arg_2.b.c.a.x, arg_2.b.b.a.x, var_0.c.a.x)), arg_2.b.e.a.x)), Struct_1(!(!vec3<bool>(var_0.b.a.x, true, true))), _wgslsmith_mod_vec2_u32(select(vec2<u32>(4294967295u, ~u_input.a), arg_2.b.d, arg_3.a.x), vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_mod_u32(41633u, var_0.d.x), 1u), ~(~var_0.d.x))), var_0.b);
    let var_2 = Struct_1(vec3<bool>(all(vec4<bool>(true, false, false, true)) | !(arg_2.a >= arg_2.b.d.x), arg_2.b.a.a.x, all(vec4<bool>(true, arg_0.x, false, arg_2.b.e.a.x))));
    var var_3 = var_1.a.a.x && true;
    return true;
}

fn func_2(arg_0: i32, arg_1: vec2<bool>) -> Struct_2 {
    var var_0 = vec4<bool>(true, arg_1.x | func_4(func_3(Struct_4(u_input.a, Struct_2(Struct_1(vec3<bool>(arg_1.x, arg_1.x, arg_1.x)), Struct_1(vec3<bool>(false, arg_1.x, true)), Struct_1(vec3<bool>(arg_1.x, arg_1.x, arg_1.x)), vec2<u32>(1u, 4294967295u), Struct_1(vec3<bool>(true, arg_1.x, false))), 0i, 12028u, vec2<i32>(15587i, arg_0)), Struct_2(Struct_1(vec3<bool>(false, arg_1.x, false)), Struct_1(vec3<bool>(arg_1.x, false, arg_1.x)), Struct_1(vec3<bool>(true, true, arg_1.x)), vec2<u32>(u_input.a, 1u), Struct_1(vec3<bool>(false, true, arg_1.x)))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-174f, -1265f, 1273f)))), Struct_4(countOneBits(u_input.a), Struct_2(Struct_1(vec3<bool>(true, arg_1.x, false)), Struct_1(vec3<bool>(false, arg_1.x, true)), Struct_1(vec3<bool>(arg_1.x, true, arg_1.x)), vec2<u32>(4294967295u, 48919u), Struct_1(vec3<bool>(arg_1.x, arg_1.x, arg_1.x))), 17515i ^ arg_0, min(40421u, 13228u), vec2<i32>(2147483647i, 0i)), Struct_1(select(vec3<bool>(true, false, true), vec3<bool>(arg_1.x, false, true), vec3<bool>(true, true, false)))), arg_1.x, (_wgslsmith_mult_i32(_wgslsmith_mod_i32(-2147483647i, arg_0), -2147483647i) ^ arg_0) != (~max(-44082i, arg_0) ^ ~arg_0));
    var var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(831f, 202f)));
    var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-551f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-472f, _wgslsmith_div_f32(-304f, -1000f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-1000f))))))))));
    var_0 = vec4<bool>(all(select(!(!vec4<bool>(arg_1.x, var_0.x, false, var_0.x)), select(vec4<bool>(true, false, arg_1.x, true), vec4<bool>(true, false, var_0.x, false), vec4<bool>(false, false, true, var_0.x)), !vec4<bool>(arg_1.x, false, var_0.x, false))), false, !(!var_0.x), !any(select(select(vec3<bool>(arg_1.x, true, var_0.x), vec3<bool>(false, true, false), vec3<bool>(true, arg_1.x, true)), vec3<bool>(arg_1.x, true, false), true)));
    var var_2 = vec3<u32>(u_input.a, ~min(1u | u_input.a, ~4294967295u), _wgslsmith_mod_u32(_wgslsmith_mod_u32(firstLeadingBit(u_input.a), _wgslsmith_div_u32(u_input.a, 4294967295u)), ~u_input.a << (firstLeadingBit(9521u) % 32u)) << (~u_input.a % 32u));
    return Struct_2(Struct_1(!select(select(vec3<bool>(false, arg_1.x, arg_1.x), vec3<bool>(false, true, true), var_0.zwx), vec3<bool>(arg_1.x, false, false), !vec3<bool>(var_0.x, arg_1.x, arg_1.x))), Struct_1(!select(!var_0.xzz, !vec3<bool>(var_0.x, arg_1.x, true), select(vec3<bool>(false, true, true), var_0.yyz, vec3<bool>(false, arg_1.x, arg_1.x)))), Struct_1(var_0.ywx), ~var_2.zx, Struct_1(select(select(var_0.zzy, var_0.xxz, vec3<bool>(var_0.x, true, false)), !select(vec3<bool>(true, var_0.x, var_0.x), var_0.wyx, vec3<bool>(false, var_0.x, var_0.x)), any(vec2<bool>(arg_1.x, var_0.x)))));
}

fn func_5(arg_0: Struct_2, arg_1: bool) -> Struct_3 {
    var var_0 = -40875i;
    var_0 = -16347i << (~_wgslsmith_dot_vec4_u32(vec4<u32>(~1u, ~u_input.a, func_2(0i, vec2<bool>(arg_1, true)).d.x, _wgslsmith_mult_u32(u_input.a, arg_0.d.x)), ~(~vec4<u32>(u_input.a, 32675u, 0u, arg_0.d.x))) % 32u);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1243f))) <= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(1000f)), _wgslsmith_f_op_f32(ceil(363f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-968f))))));
    var_0 = i32(-1i) * -abs(-abs(18449i));
    var_1 = u_input.a != u_input.a;
    return Struct_3(arg_1, !(!arg_1), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -192f) + _wgslsmith_f_op_f32(-1000f - 553f)) - 817f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f))) + -1590f)));
}

fn func_6(arg_0: Struct_3) -> Struct_1 {
    var var_0 = vec4<u32>(~0u, ~reverseBits(75836u), ~(68330u << (0u % 32u)), u_input.a) ^ vec4<u32>(~(max(38215u, u_input.a) & 0u), u_input.a, countOneBits(~0u), u_input.a);
    var_0 = ~(~vec4<u32>(func_2(-1i, select(vec2<bool>(arg_0.a, false), vec2<bool>(arg_0.b, true), false)).d.x, var_0.x, var_0.x, ~135682u));
    let var_1 = _wgslsmith_add_i32(~1i, -1i);
    let var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -398f)));
    let var_3 = !vec4<bool>(_wgslsmith_sub_u32(~u_input.a, _wgslsmith_dot_vec2_u32(var_0.xx, var_0.ww)) >= ~var_0.x, func_5(func_2(_wgslsmith_dot_vec2_i32(vec2<i32>(-9278i, var_1), vec2<i32>(1i, 4051i)), func_2(-37552i, vec2<bool>(true, arg_0.a)).b.a.zz), func_2(var_1, vec2<bool>(arg_0.a, true)).c.a.x).a, true | func_4(vec2<bool>(arg_0.a, arg_0.a), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_2, arg_0.c, arg_0.c))), Struct_4(4294967295u, Struct_2(Struct_1(vec3<bool>(false, false, true)), Struct_1(vec3<bool>(arg_0.a, true, true)), Struct_1(vec3<bool>(arg_0.a, true, arg_0.a)), vec2<u32>(1u, 1u), Struct_1(vec3<bool>(arg_0.b, arg_0.b, false))), 0i, 39401u, vec2<i32>(var_1, 2147483647i)), func_2(var_1, vec2<bool>(false, arg_0.a)).e), arg_0.b);
    return func_2(var_1, !(!func_2(_wgslsmith_add_i32(var_1, var_1), var_3.xx).c.a.yz)).b;
}

fn func_1() -> i32 {
    let var_0 = Struct_4(u_input.a, Struct_2(func_6(func_5(func_2(1i, vec2<bool>(true, true)), func_4(vec2<bool>(false, true), vec3<f32>(608f, -1705f, -402f), Struct_4(u_input.a, Struct_2(Struct_1(vec3<bool>(true, true, false)), Struct_1(vec3<bool>(false, true, false)), Struct_1(vec3<bool>(true, true, false)), vec2<u32>(31479u, 12362u), Struct_1(vec3<bool>(false, true, false))), -1i, 4294967295u, vec2<i32>(-1i, 3460i)), Struct_1(vec3<bool>(true, false, false))))), func_6(Struct_3(true, true, 461f)), Struct_1(select(vec3<bool>(false, true, false), func_6(Struct_3(false, true, -1000f)).a, true)), firstTrailingBit(~vec2<u32>(0u, 4929u) ^ min(vec2<u32>(41337u, u_input.a), vec2<u32>(u_input.a, u_input.a))), func_6(Struct_3(true, func_6(Struct_3(false, false, -1031f)).a.x, _wgslsmith_div_f32(-2642f, 1222f)))), (~1i << (_wgslsmith_add_u32(max(1u, u_input.a), 40085u) % 32u)) & (i32(-1i) * -1i), u_input.a, vec2<i32>(-2147483647i, -59821i));
    return var_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(max(~countOneBits(countOneBits(-2147483647i)), -22983i), ~max(2147483647i, ~max(15818i, 4466i)));
    var_0 = -vec2<i32>(abs(-var_0.x & _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, var_0.x, 0i, var_0.x), vec4<i32>(var_0.x, -50075i, 18650i, var_0.x))), func_1());
    let var_1 = vec4<bool>(func_6(func_5(Struct_2(func_6(Struct_3(false, false, 399f)), func_2(2191i, vec2<bool>(false, false)).b, Struct_1(vec3<bool>(true, true, false)), ~vec2<u32>(1u, 61533u), func_6(Struct_3(false, false, -1000f))), false)).a.x, true && !all(vec3<bool>(true, true, false)), false, true);
    var var_2 = ~u_input.a;
    var_2 = u_input.a >> (~48798u % 32u);
    var var_3 = ~(~vec4<u32>(u_input.a, max(_wgslsmith_div_u32(u_input.a, u_input.a), u_input.a), _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, 72232u, u_input.a), vec3<u32>(u_input.a, 4532u, 1u) & vec3<u32>(92325u, u_input.a, 0u)), u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(select(firstTrailingBit(var_3.x) ^ _wgslsmith_sub_u32(0u, var_3.x), ~1u, true), firstTrailingBit(_wgslsmith_mod_u32(4294967295u ^ u_input.a, _wgslsmith_clamp_u32(4294967295u, 34946u, 1u))), u_input.a | 4294967295u), reverseBits(max(~u_input.a, 1u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1032f, 747f, -615f, 217f), vec4<f32>(1292f, -1013f, -1456f, -1119f))), vec4<f32>(-1000f, 1094f, -670f, 384f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1280f, 1517f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-837f, -384f))), vec2<f32>(1f, 1f))))));
}

