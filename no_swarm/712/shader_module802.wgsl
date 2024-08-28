struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: bool,
    b: f32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: vec3<i32>,
    c: vec3<i32>,
    d: Struct_1,
    e: vec2<u32>,
}

struct Struct_5 {
    a: i32,
    b: Struct_1,
    c: vec4<f32>,
    d: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec4<f32>,
    d: vec2<f32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: vec4<i32>) -> vec3<bool> {
    var var_0 = Struct_5(i32(-1i) * -_wgslsmith_add_i32(arg_0, _wgslsmith_dot_vec4_i32(arg_2, vec4<i32>(arg_2.x, 35123i, -1i, arg_1.a))), arg_1, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1318f, 1950f, -796f, -319f), vec4<f32>(-548f, -1228f, 760f, 270f)) - vec4<f32>(672f, 1000f, -1976f, -694f)) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -143f), _wgslsmith_f_op_f32(f32(-1f) * -434f), _wgslsmith_f_op_f32(step(939f, 522f)), -125f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-817f - _wgslsmith_div_f32(860f, -1434f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(172f)), _wgslsmith_div_f32(-1205f, 1000f), true)), true)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-496f)))));
    var var_1 = Struct_3(Struct_2((arg_1.a != arg_0) || select(all(vec2<bool>(false, true)), false, true), var_0.d));
    var var_2 = _wgslsmith_f_op_f32(trunc(var_1.a.b));
    let var_3 = _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, 1u) << (vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_mult_u32(4294967295u, u_input.a), u_input.a), _wgslsmith_dot_vec2_u32(abs(vec2<u32>(u_input.a, u_input.a)), min(vec2<u32>(21171u, u_input.a), vec2<u32>(u_input.a, 76401u)))) % vec2<u32>(32u)), abs(~min(vec2<u32>(u_input.a, 39317u), _wgslsmith_add_vec2_u32(vec2<u32>(1u, 46197u), vec2<u32>(40026u, 47985u)))));
    return vec3<bool>(true, var_1.a.a, !(1u == u_input.a));
}

fn func_2(arg_0: i32, arg_1: i32) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(-896f * _wgslsmith_f_op_f32(f32(-1f) * -2125f));
    var var_1 = Struct_3(Struct_2(true, -1372f));
    var var_2 = any(select(vec4<bool>(true, select(var_1.a.a, false, var_1.a.a), true, var_1.a.a), select(select(vec4<bool>(var_1.a.a, false, var_1.a.a, false), vec4<bool>(false, true, var_1.a.a, var_1.a.a), vec4<bool>(var_1.a.a, true, var_1.a.a, var_1.a.a)), !vec4<bool>(var_1.a.a, var_1.a.a, true, var_1.a.a), false), vec4<bool>(false, var_1.a.a, true, false))) || any(func_3(-1i, Struct_1(_wgslsmith_clamp_i32(arg_1, 81096i, arg_0)), -(~vec4<i32>(52739i, arg_0, arg_0, arg_0))));
    var var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(-104f)), -1145f, var_1.a.b, _wgslsmith_f_op_f32(trunc(var_1.a.b))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-769f))), _wgslsmith_f_op_f32(trunc(var_1.a.b)), 1741f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-1201f)), var_1.a.b, 1169f > var_1.a.b)))));
    var_0 = var_3.x;
    return 25650i;
}

fn func_4(arg_0: i32) -> Struct_2 {
    var var_0 = true;
    var var_1 = false;
    var_0 = all(!(!func_3(firstTrailingBit(arg_0), Struct_1(36935i), _wgslsmith_mod_vec4_i32(vec4<i32>(arg_0, arg_0, arg_0, -2147483647i), vec4<i32>(arg_0, arg_0, arg_0, 1i))).zy));
    var var_2 = _wgslsmith_add_vec4_i32(-(vec4<i32>(arg_0, arg_0, 0i, -13376i) >> (vec4<u32>(u_input.a, 4294967295u, u_input.a, 41928u) % vec4<u32>(32u))), _wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(-vec4<i32>(-2147483647i, 35635i, arg_0, arg_0), vec4<i32>(63370i, 0i, -44104i, arg_0)), _wgslsmith_div_vec4_i32(firstTrailingBit(vec4<i32>(arg_0, arg_0, -14729i, -11477i)), select(vec4<i32>(2147483647i, arg_0, 28531i, arg_0), vec4<i32>(1i, arg_0, arg_0, arg_0), true)))) >> (countOneBits(~vec4<u32>(14954u, 4294967295u, 143906u, 97584u) & min(vec4<u32>(u_input.a, u_input.a, 0u, 0u), vec4<u32>(u_input.a, 56572u, u_input.a, u_input.a) ^ vec4<u32>(u_input.a, 4294967295u, 55932u, 1u))) % vec4<u32>(32u));
    let var_3 = 49580u;
    return Struct_2(abs(countOneBits(25227i)) != abs(arg_0), _wgslsmith_f_op_f32(f32(-1f) * -533f));
}

fn func_5(arg_0: vec2<i32>, arg_1: vec4<i32>, arg_2: Struct_2, arg_3: i32) -> Struct_4 {
    var var_0 = Struct_5(arg_1.x >> (abs(_wgslsmith_clamp_u32(~u_input.a, ~u_input.a, 630u)) % 32u), Struct_1(abs(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(arg_0, arg_1.xx), _wgslsmith_mod_vec2_i32(arg_0, arg_1.xw)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1111f, -912f, arg_2.b, -2475f)), vec4<f32>(_wgslsmith_f_op_f32(trunc(-506f)), _wgslsmith_f_op_f32(f32(-1f) * -1538f), _wgslsmith_f_op_f32(f32(-1f) * -1471f), -393f), !vec4<bool>(arg_2.a, arg_2.a, arg_2.a, true))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.b, 935f, -1968f, arg_2.b)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1568f, arg_2.b, 1000f, arg_2.b)))))), _wgslsmith_f_op_f32(f32(-1f) * -2053f));
    let var_1 = Struct_4(func_4(var_0.a).a, vec3<i32>(min(min(func_2(var_0.b.a, arg_0.x), arg_1.x), -(-2147483647i | arg_3)), arg_1.x, _wgslsmith_mult_i32(arg_1.x, -(arg_3 ^ 36635i))), -min(arg_1.xyw, arg_1.wyw), var_0.b, vec2<u32>(~0u, ~(~(~u_input.a))));
    var var_2 = _wgslsmith_div_vec3_i32(-var_1.b, select(var_1.b, -vec3<i32>(29882i, -10576i, 4005i) >> (firstTrailingBit(~vec3<u32>(0u, var_1.e.x, var_1.e.x)) % vec3<u32>(32u)), vec3<bool>(arg_2.a, true, var_1.e.x <= 34611u)));
    let var_3 = select(select(vec3<bool>(any(select(vec4<bool>(false, var_1.a, false, false), vec4<bool>(false, true, true, false), true)), !arg_2.a, arg_2.a), !(!(!vec3<bool>(false, arg_2.a, var_1.a))), false), select(!select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, var_1.a), vec3<bool>(arg_2.a, true, true), vec3<bool>(false, true, var_1.a)), any(vec4<bool>(true, arg_2.a, true, arg_2.a))), select(!select(vec3<bool>(false, false, true), vec3<bool>(arg_2.a, false, var_1.a), arg_2.a), !func_3(var_0.a, var_0.b, arg_1), vec3<bool>(var_1.e.x < 1u, false, any(vec3<bool>(true, var_1.a, var_1.a)))), ~var_2.x <= _wgslsmith_dot_vec2_i32(~arg_1.yz, -var_2.yx)), select(select(select(!vec3<bool>(true, var_1.a, true), vec3<bool>(true, true, false), arg_2.a | var_1.a), func_3(~(-19637i), Struct_1(arg_0.x), min(vec4<i32>(var_2.x, 58343i, -1i, 7849i), vec4<i32>(-2147483647i, -2147483647i, arg_0.x, var_1.d.a))), var_1.a), select(select(func_3(-2147483647i, Struct_1(var_1.d.a), arg_1), !vec3<bool>(var_1.a, true, arg_2.a), !vec3<bool>(arg_2.a, arg_2.a, true)), select(select(vec3<bool>(arg_2.a, arg_2.a, false), vec3<bool>(var_1.a, false, var_1.a), var_1.a), func_3(arg_0.x, var_1.d, vec4<i32>(arg_0.x, arg_3, var_0.a, arg_3)), select(vec3<bool>(true, var_1.a, false), vec3<bool>(arg_2.a, arg_2.a, var_1.a), vec3<bool>(false, false, var_1.a))), vec3<bool>(any(vec4<bool>(false, var_1.a, var_1.a, arg_2.a)), false != arg_2.a, !arg_2.a)), select(select(vec3<bool>(var_1.a, var_1.a, arg_2.a), func_3(24171i, var_0.b, arg_1), true), func_3(~var_1.d.a, Struct_1(-2147483647i), -vec4<i32>(var_1.d.a, var_1.c.x, var_0.b.a, arg_3)), var_1.a)));
    let var_4 = var_0.b;
    return var_1;
}

fn func_1(arg_0: f32) -> i32 {
    let var_0 = func_5(max(-(vec2<i32>(1i, 1i) ^ (vec2<i32>(-21545i, -1i) >> (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u)))), -abs(vec2<i32>(-1i, -2147483647i))), abs(vec4<i32>(-6100i, i32(-1i) * -9857i, ~(-2147483647i), _wgslsmith_mult_i32(2822i, 11561i))) << (reverseBits(_wgslsmith_add_vec4_u32(reverseBits(vec4<u32>(49711u, 4294967295u, 4294967295u, u_input.a)), vec4<u32>(u_input.a, 27218u, 0u, 28507u))) % vec4<u32>(32u)), func_4(_wgslsmith_mod_i32(func_2(2147483647i, i32(-1i) * -1234i), _wgslsmith_add_i32(1i, func_2(11660i, -56653i)))), reverseBits(-(i32(-1i) * -5043i)));
    let var_1 = arg_0 <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-725f)) - arg_0) * _wgslsmith_f_op_f32(select(arg_0, -163f, arg_0 < arg_0))), arg_0);
    var var_2 = reverseBits(vec2<i32>(-2147483647i >> (1u % 32u), var_0.b.x >> ((var_0.e.x << (~u_input.a % 32u)) % 32u)));
    var var_3 = _wgslsmith_add_i32(abs(~reverseBits(-var_2.x)), var_2.x);
    var var_4 = vec3<f32>(_wgslsmith_f_op_f32(-1013f * _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(arg_0, arg_0)))))))), -1766f);
    return -26776i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1u;
    var var_1 = Struct_1(func_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-574f - -685f), -454f))) | _wgslsmith_add_i32(1i, abs(1i)));
    var_1 = func_5(~select(~_wgslsmith_add_vec2_i32(vec2<i32>(1i, var_1.a), vec2<i32>(var_1.a, var_1.a)), _wgslsmith_div_vec2_i32(vec2<i32>(var_1.a, var_1.a), vec2<i32>(56975i, var_1.a) ^ vec2<i32>(-2147483647i, var_1.a)), vec2<bool>(true, any(vec2<bool>(true, false)))), _wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(-vec4<i32>(1i, -2147483647i, var_1.a, var_1.a) | abs(vec4<i32>(var_1.a, -12701i, var_1.a, -2147483647i)), -vec4<i32>(var_1.a, var_1.a, var_1.a, var_1.a)), abs(select(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, 20678i, -45390i, var_1.a), vec4<i32>(2147483647i, var_1.a, 37041i, -7072i)), select(vec4<i32>(33918i, var_1.a, 34391i, var_1.a), vec4<i32>(0i, 0i, var_1.a, 0i), false), all(vec3<bool>(false, false, false))))), func_4(_wgslsmith_dot_vec3_i32(vec3<i32>(-var_1.a, _wgslsmith_sub_i32(var_1.a, var_1.a), 4120i >> (u_input.a % 32u)), vec3<i32>(1i, var_1.a, ~var_1.a))), _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(abs(reverseBits(vec4<i32>(var_1.a, -17363i, 1i, var_1.a))), _wgslsmith_sub_vec4_i32(vec4<i32>(-1i, var_1.a, -2147483647i, var_1.a), vec4<i32>(var_1.a, var_1.a, var_1.a, var_1.a)) >> (firstLeadingBit(vec4<u32>(3053u, var_0, u_input.a, var_0)) % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, -39567i, 36732i, var_1.a), -vec4<i32>(44870i, 59394i, var_1.a, 20254i))), vec4<i32>(~53850i ^ reverseBits(var_1.a), _wgslsmith_mod_i32(var_1.a, _wgslsmith_mult_i32(-35167i, -15101i)), _wgslsmith_mod_i32(var_1.a, 0i), -23075i))).d;
    var_1 = func_5(_wgslsmith_add_vec2_i32(-(~vec2<i32>(var_1.a, var_1.a)), ~vec2<i32>(1i, 1i) >> (select(~vec2<u32>(var_0, 4294967295u), ~vec2<u32>(19077u, 4294967295u), any(vec3<bool>(false, false, false))) % vec2<u32>(32u))), abs(vec4<i32>(var_1.a << (25824u % 32u), select(var_1.a, -4033i, true), countOneBits(33936i), var_1.a)), func_4(-38259i), _wgslsmith_add_i32(-1i, 0i) >> ((_wgslsmith_mod_u32(min(var_0, u_input.a), u_input.a >> (var_0 % 32u)) >> (u_input.a % 32u)) % 32u)).d;
    var_1 = func_5(abs(-(vec2<i32>(var_1.a, var_1.a) | vec2<i32>(19945i, -12273i)) | countOneBits(~vec2<i32>(-21995i, var_1.a))), vec4<i32>(2147483647i, ~firstLeadingBit(_wgslsmith_sub_i32(10259i, -1i)), var_1.a, abs(min(var_1.a, -var_1.a))), Struct_2(func_3(_wgslsmith_sub_i32(-15748i, var_1.a) | -40282i, Struct_1(1i), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(var_1.a, -1i, var_1.a, -1i), vec4<i32>(1i, var_1.a, var_1.a, 55589i), vec4<i32>(var_1.a, var_1.a, -45173i, var_1.a))).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(393f))))), var_1.a).d;
    var_1 = Struct_1(firstLeadingBit(_wgslsmith_mult_i32(1i, firstLeadingBit(_wgslsmith_mult_i32(var_1.a, var_1.a)))));
    var_1 = Struct_1(-2147483647i);
    var var_2 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1596f)) - func_4(var_1.a).b), _wgslsmith_f_op_f32(f32(-1f) * -355f), _wgslsmith_f_op_f32(f32(-1f) * -1264f), _wgslsmith_f_op_f32(abs(-1190f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1296f), _wgslsmith_f_op_f32(sign(1000f))), -766f, _wgslsmith_f_op_f32(129f - -1513f), -1915f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_2.x)) - var_2.x)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, var_2.x)) + var_2.xy), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.zz) - _wgslsmith_f_op_vec2_f32(var_2.xy + vec2<f32>(var_2.x, 694f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-677f, 1498f) * var_2.wx) + vec2<f32>(-2876f, var_2.x)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-466f, _wgslsmith_f_op_f32(1655f * var_2.x), -1483f, 249f) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1031f, -141f, 773f, -1407f)) * _wgslsmith_div_vec4_f32(vec4<f32>(-543f, 1188f, var_2.x, var_2.x), vec4<f32>(281f, -578f, 1001f, 1543f)))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1869f, 1f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_2.x, -382f, -287f, var_2.x), vec4<f32>(var_2.x, 218f, -185f, var_2.x))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, var_2.x, 1000f, 738f) + vec4<f32>(var_2.x, var_2.x, 1295f, -1222f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(351f, var_2.x, var_2.x, -1321f), vec4<f32>(var_2.x, var_2.x, var_2.x, 345f), false)))) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_div_f32(var_2.x, var_2.x), _wgslsmith_f_op_f32(-732f + var_2.x), var_2.x, var_2.x)))));
}

