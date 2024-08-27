struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_2,
    c: vec4<i32>,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: u32, arg_1: vec4<u32>) -> vec3<f32> {
    var var_0 = _wgslsmith_add_u32(select(64739u, _wgslsmith_div_u32(u_input.e.x, select(arg_0, arg_1.x, true)), true), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.e.x), vec2<u32>(u_input.e.x, ~15912u))) & arg_0;
    var var_1 = !select(vec2<bool>(any(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), true)), any(select(vec2<bool>(false, false), vec2<bool>(false, false), true))), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true)), !select(vec2<bool>(false, false), vec2<bool>(false, false), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false))));
    var var_2 = Struct_5(_wgslsmith_mod_i32(u_input.c, u_input.d));
    var var_3 = abs(vec4<u32>(_wgslsmith_sub_u32(min(0u, arg_1.x << (u_input.e.x % 32u)), 0u), _wgslsmith_mult_u32(~reverseBits(arg_0), arg_0), u_input.e.x, ~firstLeadingBit(arg_0)));
    var_3 = arg_1;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, _wgslsmith_f_op_f32(ceil(1089f)), -1013f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(-1535f, -416f)), -856f, -1658f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -439f, -293f))))) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-340f, -1890f, -961f))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-926f, -518f, 734f)))))))));
}

fn func_2(arg_0: i32) -> Struct_3 {
    let var_0 = Struct_2(Struct_1(u_input.b, vec3<bool>(any(vec2<bool>(false, true)), true, true), vec3<bool>(all(vec4<bool>(true, true, true, true)), true, !any(vec3<bool>(true, false, true)))));
    var var_1 = _wgslsmith_clamp_i32(-u_input.a, arg_0, _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(24019i, u_input.c, arg_0)), _wgslsmith_clamp_vec3_i32(vec3<i32>(arg_0, u_input.a, -2147483647i), abs(vec3<i32>(u_input.c, -12772i, 1i)), -vec3<i32>(-45052i, arg_0, u_input.a)))) >= _wgslsmith_mult_i32(_wgslsmith_mod_i32(1i, u_input.a), _wgslsmith_add_i32(13833i, -12501i) >> ((~var_0.a.a | ~4294967295u) % 32u));
    var_1 = !(any(vec2<bool>(any(vec3<bool>(var_0.a.c.x, var_0.a.c.x, var_0.a.c.x)), true)) || var_0.a.b.x);
    var var_2 = ~_wgslsmith_add_i32(arg_0, 0i);
    let var_3 = Struct_4(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(abs(133f)), 674f, _wgslsmith_div_f32(-729f, _wgslsmith_div_f32(-1212f, -179f))), _wgslsmith_f_op_vec3_f32(func_3(~4294967295u, ~vec4<u32>(44709u, 1u, 84687u, 98520u) & ~vec4<u32>(47308u, u_input.b, var_0.a.a, var_0.a.a))))), Struct_2(var_0.a), vec4<i32>(~u_input.c, ~28469i, _wgslsmith_mod_i32(20545i, arg_0), reverseBits(1i)));
    return Struct_3(any(var_3.b.a.b.xy) | true);
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_3) -> i32 {
    var var_0 = -abs(-((vec4<i32>(64125i, -35250i, 0i, u_input.a) >> (vec4<u32>(27353u, u_input.e.x, u_input.e.x, 37180u) % vec4<u32>(32u))) & ~vec4<i32>(u_input.a, u_input.d, 1i, 73795i)));
    var_0 = -_wgslsmith_div_vec4_i32(vec4<i32>(i32(-1i) * -2147483647i, 6506i, ~2147483647i >> (countOneBits(0u) % 32u), -58738i), _wgslsmith_mod_vec4_i32(vec4<i32>(~7538i, _wgslsmith_clamp_i32(-1i, -2147483647i, 16650i), 1i, ~var_0.x), vec4<i32>(-1i, 0i, var_0.x, 2147483647i) & vec4<i32>(var_0.x, -25606i, -57572i, -2147483647i)));
    let var_1 = arg_0;
    var_0 = -(((~vec4<i32>(u_input.a, -1i, var_0.x, u_input.a) ^ max(vec4<i32>(-1i, var_0.x, var_0.x, 9322i), vec4<i32>(-2147483647i, u_input.a, var_0.x, -58351i))) | _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c, var_0.x, var_0.x, var_0.x), vec4<i32>(u_input.c, 1i, 1i, -1i))) << (vec4<u32>(~2071u & _wgslsmith_mod_u32(u_input.b, u_input.b), ~9738u, u_input.e.x >> (_wgslsmith_mod_u32(1u, u_input.b) % 32u), reverseBits(~u_input.b)) % vec4<u32>(32u)));
    var var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, arg_0.x)), 246f, 982f), arg_0), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(var_1.x - var_1.x)), -1444f, var_1.x))), true));
    return max(2147483647i, 73829i);
}

fn func_5(arg_0: Struct_5, arg_1: vec4<u32>) -> vec3<bool> {
    var var_0 = 1f;
    var var_1 = _wgslsmith_mod_i32(-1i, -2147483647i);
    var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1243f + 1714f)))), _wgslsmith_div_f32(_wgslsmith_div_f32(1698f, _wgslsmith_div_f32(-903f, -1607f)), _wgslsmith_div_f32(-2621f, -225f))))));
    let var_2 = func_2(-1i);
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(-444f, 1140f)), _wgslsmith_f_op_f32(min(-820f, -1360f))) * vec2<f32>(_wgslsmith_f_op_f32(-1090f - 526f), _wgslsmith_f_op_f32(f32(-1f) * -759f)))));
    return select(vec3<bool>(false, any(select(vec3<bool>(var_2.a, var_2.a, var_2.a), !vec3<bool>(var_2.a, true, var_2.a), vec3<bool>(true, var_2.a, true))), true), select(vec3<bool>(var_2.a, 2147483647i < countOneBits(u_input.d), true), !(!vec3<bool>(true, var_2.a, var_2.a)), vec3<bool>(false, false, select(var_2.a, true, true))), vec3<bool>(var_2.a, true, true));
}

fn func_6(arg_0: vec3<bool>) -> Struct_2 {
    var var_0 = 4294967295u;
    return Struct_2(Struct_1(min(_wgslsmith_mod_u32(_wgslsmith_sub_u32(u_input.e.x, 4294967295u), u_input.e.x), 10354u), vec3<bool>(any(arg_0.yz), arg_0.x, select(arg_0.x, 1i < u_input.a, arg_0.x)), func_5(Struct_5(2147483647i), reverseBits(~vec4<u32>(63016u, 4294967295u, 4294967295u, 0u)))));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<u32>) -> Struct_3 {
    var var_0 = func_6(func_5(Struct_5(func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 516f, 1678f)), func_2(u_input.d))), vec4<u32>(1u, _wgslsmith_clamp_u32(4294967295u, _wgslsmith_sub_u32(4294967295u, arg_1.x), ~11775u), countOneBits(~4294967295u), 13149u & ~arg_0.a)));
    let var_1 = _wgslsmith_div_vec2_f32(vec2<f32>(1000f, _wgslsmith_f_op_f32(round(-584f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_3(4294967295u, vec4<u32>(0u, 69267u, 102114u, arg_0.a))).x + _wgslsmith_div_f32(724f, 177f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1561f * -532f), _wgslsmith_f_op_vec3_f32(func_3(4294967295u, vec4<u32>(41115u, var_0.a.a, 1u, 0u))).x)))));
    var_0 = func_6(func_5(Struct_5(u_input.a), ~vec4<u32>(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a.a, 64884u, u_input.e.x), vec3<u32>(arg_1.x, arg_1.x, 27132u)), 0u, firstTrailingBit(u_input.b))));
    var var_2 = Struct_1(0u, var_0.a.b, arg_0.b);
    var var_3 = select(true, all(func_6(vec3<bool>(var_0.a.b.x || false, true, true)).a.c), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(0i, 0i, 58171i), vec3<i32>(-1i, u_input.a, 0i)) & firstLeadingBit(vec3<i32>(u_input.d, u_input.c, -1i)), select(countOneBits(vec3<i32>(2147483647i, 25764i, -13162i)), vec3<i32>(u_input.a, -1i, u_input.c), !arg_0.b.x)) != _wgslsmith_sub_i32(1i, -43665i));
    return Struct_3(!(!var_2.b.x));
}

fn func_7(arg_0: vec2<f32>, arg_1: i32, arg_2: Struct_3) -> Struct_1 {
    var var_0 = vec3<bool>(_wgslsmith_f_op_f32(-425f + _wgslsmith_f_op_f32(trunc(arg_0.x))) == arg_0.x, false | ((u_input.b << (4294967295u % 32u)) != u_input.b), func_2(arg_1).a);
    let var_1 = !(!(!(!select(vec3<bool>(true, true, var_0.x), vec3<bool>(arg_2.a, var_0.x, true), true))));
    var_0 = var_1;
    let var_2 = 1u;
    var var_3 = func_1(Struct_1(u_input.b, var_1, select(!var_1, !func_6(vec3<bool>(false, false, arg_2.a)).a.b, _wgslsmith_f_op_f32(exp2(arg_0.x)) == -2054f)), vec2<u32>(_wgslsmith_dot_vec3_u32(select(~vec3<u32>(5279u, 38551u, u_input.e.x), abs(vec3<u32>(var_2, var_2, var_2)), select(var_1, vec3<bool>(var_1.x, var_0.x, false), true)), vec3<u32>(_wgslsmith_mod_u32(0u, u_input.b), var_2, var_2)), _wgslsmith_sub_u32(30940u, ~u_input.b)));
    return func_6(select(func_6(!(!var_1)).a.b, !func_6(vec3<bool>(true, true, var_0.x)).a.c, vec3<bool>(true, all(select(vec2<bool>(var_3.a, true), var_0.zz, vec2<bool>(false, true))), true))).a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-1466f + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1000f)) + _wgslsmith_f_op_f32(f32(-1f) * -786f)))));
    let var_1 = false;
    let var_2 = func_7(_wgslsmith_f_op_vec2_f32(-vec2<f32>(205f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f * 226f), -364f))), -38464i, func_1(Struct_1(_wgslsmith_mod_u32(u_input.b ^ u_input.e.x, u_input.e.x), !vec3<bool>(var_1, var_1, var_1), select(!vec3<bool>(var_1, var_1, var_1), select(vec3<bool>(false, var_1, var_1), vec3<bool>(false, false, var_1), vec3<bool>(false, var_1, true)), var_1)), u_input.e & vec2<u32>(~1u, u_input.b)));
    var var_3 = -(~_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 11430i, -2147483647i), ~vec3<i32>(18305i, -10599i, -56638i))) & countOneBits(3014i);
    var_3 = -u_input.a;
    let var_4 = func_6(var_2.c);
    var_3 = u_input.a;
    var var_5 = func_6(var_2.c);
    let var_6 = vec4<f32>(-741f, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_0, var_0), -315f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) * -1359f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_3(u_input.e.x, ~vec4<u32>(4294967295u, var_5.a.a, var_4.a.a, u_input.e.x))).x)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(var_2.a), vec4<f32>(1061f, _wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(f32(-1f) * -697f)), -1627f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1213f + var_0), _wgslsmith_f_op_f32(-508f - var_0), !var_5.a.c.x)))), -927f, -16918i);
}

