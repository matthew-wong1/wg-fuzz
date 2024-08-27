struct Struct_1 {
    a: f32,
    b: i32,
    c: vec2<i32>,
    d: vec3<u32>,
    e: i32,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: u32) -> bool {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(arg_1.xy + vec2<f32>(1415f, arg_0.a))))) * vec2<f32>(_wgslsmith_f_op_f32(ceil(2110f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1280f - arg_1.x), arg_0.a))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(arg_0.a + 581f), _wgslsmith_f_op_f32(abs(-262f))))) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-464f, -1000f), vec2<f32>(1218f, arg_0.a), all(vec3<bool>(false, false, false))))))));
    var var_1 = vec2<bool>(false, true);
    let var_2 = arg_0;
    let var_3 = vec2<bool>(!var_1.x, false);
    var_1 = !select(var_3, var_3, vec2<bool>(var_3.x, arg_2 > reverseBits(u_input.a.x)));
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a * var_2.a))), _wgslsmith_f_op_f32(-arg_1.x), true)) <= _wgslsmith_f_op_f32(-arg_0.a);
}

fn func_4(arg_0: Struct_2) -> f32 {
    let var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.c, 476f));
    var var_2 = Struct_2(all(vec3<bool>(select(true, u_input.a.x == u_input.a.x, true), arg_0.a, _wgslsmith_f_op_f32(sign(1708f)) < _wgslsmith_f_op_f32(412f * -1299f))), _wgslsmith_f_op_f32(step(var_1, -1347f)), 1f);
    let var_3 = _wgslsmith_add_i32(u_input.b.x, u_input.b.x);
    let var_4 = vec4<i32>(firstLeadingBit(-abs(1i) >> (~u_input.a.x % 32u)), 1981i, _wgslsmith_add_i32(u_input.b.x, u_input.b.x), -_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, -1i), vec2<i32>(var_3, var_3)), vec2<i32>(u_input.b.x, 8905i)), _wgslsmith_dot_vec2_i32(vec2<i32>(-28209i, -22461i), vec2<i32>(var_3, var_3)) >> (31556u % 32u), _wgslsmith_add_i32(_wgslsmith_mod_i32(0i, u_input.b.x), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, var_3, u_input.b.x, 1i), vec4<i32>(u_input.b.x, -2147483647i, -51690i, -38436i)))));
    return 1431f;
}

fn func_2(arg_0: Struct_1) -> f32 {
    var var_0 = _wgslsmith_mod_vec2_i32(vec2<i32>(17566i, arg_0.b), arg_0.c & ~min(vec2<i32>(-14966i, 2147483647i), vec2<i32>(0i, -9248i)));
    var var_1 = Struct_2(arg_0.d.x >= firstTrailingBit(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(0u, arg_0.d.x, arg_0.d.x), arg_0.d.x)), _wgslsmith_f_op_f32(func_4(Struct_2(func_3(arg_0, _wgslsmith_f_op_vec4_f32(-vec4<f32>(2207f, 270f, arg_0.a, 602f)), 1u), arg_0.a, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-176f))))))), _wgslsmith_f_op_f32(round(-1138f)));
    let var_2 = select(select(!vec2<bool>(var_1.a || false, any(vec4<bool>(var_1.a, var_1.a, var_1.a, false))), select(vec2<bool>(var_1.a == false, var_1.a), vec2<bool>(var_1.a, false), select(!vec2<bool>(var_1.a, true), vec2<bool>(var_1.a, true), vec2<bool>(true, var_1.a))), select(vec2<bool>(true, false), !(!vec2<bool>(var_1.a, var_1.a)), !var_1.a)), !vec2<bool>(false, !all(vec3<bool>(true, false, var_1.a))), vec2<bool>(true, any(!(!vec4<bool>(var_1.a, var_1.a, var_1.a, true)))));
    var var_3 = 1u;
    var_3 = max(abs(~u_input.a.x) & arg_0.d.x, ~67989u);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a + var_1.c));
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_2(any(vec3<bool>(true, true, true)), -910f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(587f, -1000f, true)), _wgslsmith_f_op_f32(f32(-1f) * -507f)))))));
    var var_1 = var_0;
    let var_2 = (!var_0.a & (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_1(-105f, u_input.b.x, u_input.b, u_input.a, u_input.b.x)))) == var_1.b)) & var_1.a;
    let var_3 = abs(vec3<u32>(countOneBits(firstLeadingBit(abs(20516u))), u_input.c, _wgslsmith_mod_u32(u_input.a.x, 1u)));
    var_1 = var_0;
    return Struct_1(_wgslsmith_f_op_f32(-103f + -638f), u_input.b.x, _wgslsmith_mult_vec2_i32(u_input.b, vec2<i32>(_wgslsmith_clamp_i32(0i, 2147483647i, 1i), u_input.b.x)) << (max(vec2<u32>(1u, _wgslsmith_clamp_u32(var_3.x, 4294967295u, var_3.x)), max(firstLeadingBit(vec2<u32>(var_3.x, 1u)), _wgslsmith_add_vec2_u32(vec2<u32>(35498u, 6913u), vec2<u32>(1u, var_3.x)))) % vec2<u32>(32u)), vec3<u32>(var_3.x, select(~firstLeadingBit(var_3.x), _wgslsmith_sub_u32(79877u, var_3.x), var_1.a), 89869u), u_input.b.x);
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: bool) -> Struct_2 {
    let var_0 = arg_1.a;
    var var_1 = arg_1.e;
    var var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-141f, arg_1.a, arg_1.a), vec3<f32>(var_0, 1000f, arg_1.a))))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_1.a, 619f, var_0))) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1636f, arg_1.a, -1173f)))), vec3<f32>(-1364f, 1403f, -323f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 - var_0)), _wgslsmith_f_op_f32(-1000f + arg_1.a), -1016f)), true));
    let var_3 = vec3<u32>(arg_1.d.x, firstTrailingBit(~(~u_input.a.x)), ~_wgslsmith_mod_u32(reverseBits(~24813u), 1u));
    return Struct_2(arg_2, var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 - var_2.x)));
}

fn func_6(arg_0: Struct_2) -> Struct_1 {
    let var_0 = ~u_input.a.x;
    let var_1 = Struct_1(arg_0.b, func_1().b, -u_input.b, _wgslsmith_mod_vec3_u32(select(abs(u_input.a) << (u_input.a % vec3<u32>(32u)), ~u_input.a, false), firstLeadingBit(u_input.a)), u_input.b.x);
    let var_2 = var_1.d.x;
    var var_3 = func_5(select(select(vec2<bool>(func_5(vec2<bool>(arg_0.a, arg_0.a), Struct_1(var_1.a, var_1.e, vec2<i32>(2147483647i, 0i), u_input.a, u_input.b.x), false).a, func_3(var_1, vec4<f32>(463f, var_1.a, -736f, var_1.a), 1u)), vec2<bool>(false | arg_0.a, var_0 == 7515u), any(!vec4<bool>(arg_0.a, false, arg_0.a, arg_0.a))), vec2<bool>(!(!arg_0.a), arg_0.a || arg_0.a), vec2<bool>(true, arg_0.a)), func_1(), !arg_0.a);
    var var_4 = vec2<bool>(false, any(!(!vec2<bool>(var_3.a, arg_0.a))));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec4<u32>(~(~50911u), firstTrailingBit(4294967295u) << (0u % 32u), 1u, reverseBits(13806u)), min(vec4<u32>(firstLeadingBit(1u), 0u, u_input.c, 14613u), ~vec4<u32>(firstTrailingBit(u_input.c), _wgslsmith_mod_u32(1u, u_input.a.x), u_input.c, _wgslsmith_add_u32(9805u, 19716u))), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, all(vec4<bool>(false, true, true, true)), true), vec4<bool>(u_input.c <= 4294967295u, u_input.b.x >= u_input.b.x, any(vec4<bool>(false, true, true, false)), true)));
    var var_1 = func_6(func_5(vec2<bool>(true, (-22184i < u_input.b.x) && select(true, false, false)), func_1(), !(!any(vec4<bool>(true, true, true, true)))));
    let var_2 = Struct_2(true, 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) + -1221f));
    let var_3 = Struct_2(all(select(vec4<bool>(true, var_2.a, var_2.a || var_2.a, true), !(!vec4<bool>(var_2.a, true, false, var_2.a)), vec4<bool>(u_input.a.x >= var_1.d.x, any(vec2<bool>(true, false)), true, var_2.a))), func_1().a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(911f - -582f)));
    var var_4 = abs(~(vec4<u32>(0u, 45855u, 23750u, 61884u) << (vec4<u32>(var_0.x, 1u, var_1.d.x, 1u) % vec4<u32>(32u))) & _wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(31741u, 19877u, u_input.a.x, var_1.d.x), vec4<u32>(39108u, var_0.x, 33165u, 39759u)), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 0u, u_input.a.x, u_input.c), vec4<u32>(var_1.d.x, 67853u, 1u, 1u)), vec4<u32>(var_0.x, u_input.c, var_1.d.x, u_input.a.x))) >> (_wgslsmith_sub_vec4_u32(countOneBits(_wgslsmith_clamp_vec4_u32(~vec4<u32>(27594u, 4294967295u, u_input.a.x, 0u), vec4<u32>(1u, u_input.c, u_input.a.x, var_0.x) >> (vec4<u32>(u_input.a.x, u_input.a.x, 0u, var_1.d.x) % vec4<u32>(32u)), _wgslsmith_add_vec4_u32(vec4<u32>(var_1.d.x, 30849u, 33705u, u_input.c), vec4<u32>(99273u, 1u, u_input.c, 0u)))), vec4<u32>(countOneBits(0u), 1776u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, var_1.d.x, var_0.x, u_input.c), vec4<u32>(0u, 1u, var_1.d.x, 1u)), _wgslsmith_div_u32(_wgslsmith_add_u32(var_0.x, 1u), 20257u))) % vec4<u32>(32u));
    var var_5 = firstLeadingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(~_wgslsmith_add_u32(4294967295u, 0u), ~(~0u), select(abs(2116u), var_4.x, u_input.b.x >= -102i), u_input.c), vec4<u32>(abs(_wgslsmith_div_u32(var_4.x, var_1.d.x)), ~u_input.c, ~var_4.x, 1u)));
    var var_6 = vec4<bool>(all(select(vec2<bool>(true, true), vec2<bool>(var_3.a, true), vec2<bool>(true, true))) || (countOneBits(u_input.b.x) < -_wgslsmith_sub_i32(-37265i, var_1.c.x)), func_3(func_6(var_3), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.c, 326f, -1000f, var_3.b) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a, 1000f, var_2.c, -2756f)))), select(min(4294967295u, u_input.c) | (4294967295u & var_5.x), var_4.x << (func_1().d.x % 32u), !var_2.a)), var_2.a, var_3.a);
    let var_7 = true;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(vec4<u32>(1u, 21218u, _wgslsmith_mod_u32(var_5.x, select(4294967295u, u_input.c, var_6.x)), 4294967295u)));
}

