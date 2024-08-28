struct Struct_1 {
    a: vec3<f32>,
    b: vec3<f32>,
    c: vec3<u32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: i32, arg_3: Struct_2) -> vec3<i32> {
    var var_0 = Struct_4(!any(!(!arg_0.b)));
    let var_1 = arg_3.b;
    let var_2 = arg_0.a;
    var var_3 = Struct_4(true);
    var var_4 = Struct_2(var_2, var_1, arg_0.c);
    return vec3<i32>(_wgslsmith_mult_i32(~(arg_2 ^ arg_3.c), -62653i), -var_4.c, _wgslsmith_sub_i32(~1i, 1i)) << (var_4.a.c % vec3<u32>(32u));
}

fn func_2() -> Struct_4 {
    let var_0 = -1460f;
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1207f, 1452f)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0)) - vec2<f32>(var_0, 894f))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_0, 1000f), vec2<f32>(-776f, 856f)))))));
    var var_2 = max(~(-(~vec3<i32>(-3450i, u_input.a, 10438i))), _wgslsmith_clamp_vec3_i32(select(-vec3<i32>(0i, u_input.a, u_input.a), ~(-vec3<i32>(u_input.a, 2147483647i, 3512i)), vec3<bool>(true, true, true)), func_3(Struct_2(Struct_1(vec3<f32>(-546f, var_0, var_0), vec3<f32>(var_0, var_1.x, -1401f), vec3<u32>(4294967295u, 46795u, 4294967295u), true), vec3<bool>(true, true, true), 2147483647i), 1001i, u_input.a, Struct_2(Struct_1(vec3<f32>(-196f, var_1.x, var_0), vec3<f32>(var_0, var_1.x, -767f), vec3<u32>(111415u, 1u, 0u), false), select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), false), firstTrailingBit(-2147483647i))), vec3<i32>(-2147483647i | (u_input.a | -31118i), _wgslsmith_mod_i32(0i, countOneBits(u_input.a)), min(-41270i, u_input.a))));
    var var_3 = vec2<bool>(true, false);
    var var_4 = 0i;
    return Struct_4(true);
}

fn func_4(arg_0: Struct_4, arg_1: i32, arg_2: Struct_2) -> vec3<f32> {
    let var_0 = arg_1;
    var var_1 = _wgslsmith_f_op_f32(min(arg_2.a.a.x, _wgslsmith_f_op_f32(-arg_2.a.a.x)));
    var_1 = 1246f;
    var_1 = -878f;
    var_1 = -1074f;
    return _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(arg_2.a.a + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(arg_2.a.a.x, arg_2.a.b.x, true)), _wgslsmith_f_op_f32(-arg_2.a.a.x), arg_2.a.b.x)))));
}

fn func_5(arg_0: bool, arg_1: vec3<f32>, arg_2: u32, arg_3: Struct_2) -> Struct_2 {
    var var_0 = true;
    var_0 = arg_3.a.d;
    var_0 = select(false, any(!select(select(arg_3.b, vec3<bool>(true, arg_0, true), arg_3.b), vec3<bool>(true, true, arg_0), select(vec3<bool>(true, true, false), vec3<bool>(false, arg_0, arg_3.b.x), vec3<bool>(true, false, arg_3.a.d)))), !arg_3.a.d);
    var_0 = true;
    var var_1 = Struct_2(arg_3.a, select(vec3<bool>(arg_0 || (-1166f == arg_1.x), func_2().a, true), vec3<bool>(-1699f == arg_3.a.b.x, true, any(select(vec4<bool>(arg_0, true, false, true), vec4<bool>(arg_0, arg_3.b.x, false, arg_0), arg_3.b.x))), false), 0i);
    return Struct_2(Struct_1(_wgslsmith_div_vec3_f32(arg_1, vec3<f32>(_wgslsmith_f_op_f32(arg_3.a.b.x - 1551f), _wgslsmith_f_op_f32(f32(-1f) * -136f), _wgslsmith_f_op_f32(var_1.a.b.x * arg_1.x))), var_1.a.b, vec3<u32>(~(~84190u), _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(var_1.a.c, vec3<u32>(0u, 58498u, 1u)), _wgslsmith_dot_vec2_u32(var_1.a.c.zx, arg_3.a.c.yz)), arg_2), select(true, !(!arg_0), any(select(vec4<bool>(true, false, var_1.a.d, true), vec4<bool>(arg_3.b.x, false, var_1.a.d, true), vec4<bool>(arg_3.a.d, arg_3.b.x, false, arg_3.b.x))))), vec3<bool>(_wgslsmith_f_op_f32(abs(arg_3.a.a.x)) == arg_1.x, true, arg_3.a.d), _wgslsmith_clamp_i32(arg_3.c, ~(-2147483647i), ~(_wgslsmith_dot_vec4_i32(vec4<i32>(-4459i, -2147483647i, u_input.a, var_1.c), vec4<i32>(arg_3.c, u_input.a, -1i, arg_3.c)) & (u_input.a >> (36840u % 32u)))));
}

fn func_1() -> vec3<f32> {
    let var_0 = -886f;
    let var_1 = Struct_3(func_5(true, _wgslsmith_f_op_vec3_f32(func_4(func_2(), u_input.a, Struct_2(Struct_1(vec3<f32>(var_0, var_0, var_0), vec3<f32>(var_0, -282f, 762f), vec3<u32>(1u, 61470u, 0u), false), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true), reverseBits(u_input.a)))), 0u, Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0, -906f, var_0), vec3<f32>(914f, var_0, var_0))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0, -287f, 490f))), vec3<u32>(1u, 1u, 1u), -64127i >= u_input.a), vec3<bool>(true, true, true), _wgslsmith_mult_i32(~u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 7249i, u_input.a, 1i), vec4<i32>(6781i, -46776i, -4185i, u_input.a))))), ~_wgslsmith_div_u32(44876u, 1u) << (_wgslsmith_div_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4087u), vec2<u32>(0u, 0u)), min(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 53510u), vec2<u32>(70202u, 9916u)), ~79816u)) % 32u));
    let var_2 = func_5(var_1.a.b.x, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_1.a.a.b.x, var_1.a.a.b.x, var_0), vec3<f32>(1073f, 248f, 475f))))))), 51838u, Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(vec3<f32>(-855f, var_1.a.a.a.x, -961f), var_1.a.a.a), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0, var_0, -1411f))))), _wgslsmith_f_op_vec3_f32(trunc(func_5(false, vec3<f32>(-1199f, var_0, -157f), var_1.a.a.c.x, var_1.a).a.a)), var_1.a.a.c, !var_1.a.a.d & var_1.a.b.x), select(var_1.a.b, func_5(false, _wgslsmith_f_op_vec3_f32(round(vec3<f32>(604f, 332f, var_0))), 44617u & var_1.b, var_1.a).b, func_2().a), ~(_wgslsmith_mult_i32(1i, var_1.a.c) >> (var_1.b % 32u))));
    var var_3 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(trunc(var_2.a.a.xy)))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_2.a.b.x, 968f), vec2<f32>(var_2.a.b.x, var_2.a.b.x))) - vec2<f32>(1303f, var_1.a.a.a.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_2.a.b.xy - var_2.a.a.xz) * _wgslsmith_f_op_vec2_f32(var_1.a.a.b.yy - vec2<f32>(373f, -503f))), false)))));
    var var_4 = var_2.b.zy;
    return _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(Struct_4(false), _wgslsmith_add_i32(-1i, u_input.a), Struct_2(var_2.a, vec3<bool>(var_1.a.a.d, var_2.a.d, true), var_2.c))), vec3<f32>(-2030f, _wgslsmith_f_op_f32(-var_0), -935f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-564f, 236f, -1093f) + vec3<f32>(-2884f, -276f, 934f))) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(224f, 495f, -1088f) + vec3<f32>(204f, 725f, -1782f)))))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1()) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 466f, 644f) + vec3<f32>(696f, 478f, 944f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1048f, -210f, 301f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1160f, -1000f, -676f)))))), reverseBits(firstLeadingBit(vec3<u32>(6474u, 0u, ~4294967295u))), any(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), true)));
    let var_1 = -vec3<i32>(~abs(_wgslsmith_sub_i32(u_input.a, 7834i)), 0i, 35595i);
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.b * var_0.a))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_0.a, vec3<f32>(-582f, 1853f, var_0.a.x))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(var_0.b))))), _wgslsmith_f_op_vec3_f32(func_5(true, _wgslsmith_f_op_vec3_f32(step(var_0.b, _wgslsmith_f_op_vec3_f32(func_4(Struct_4(true), var_1.x, Struct_2(Struct_1(vec3<f32>(var_0.a.x, -376f, var_0.a.x), vec3<f32>(var_0.a.x, var_0.a.x, 487f), var_0.c, false), vec3<bool>(var_0.d, var_0.d, var_0.d), -5799i))))), 0u, func_5(false, _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.b.x, var_0.b.x, 309f))), ~var_0.c.x, Struct_2(Struct_1(var_0.a, vec3<f32>(var_0.a.x, var_0.b.x, var_0.a.x), var_0.c, true), vec3<bool>(true, false, true), 1i))).a.b - vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -791f), _wgslsmith_f_op_f32(-var_0.a.x)), var_0.b.x, 185f)), var_0.c, all(vec4<bool>(true, (58587i << (var_0.c.x % 32u)) > firstLeadingBit(var_1.x), _wgslsmith_f_op_f32(-var_0.a.x) < _wgslsmith_f_op_f32(abs(1273f)), true)));
    var var_3 = select(abs(~4294967295u), _wgslsmith_add_u32(firstTrailingBit(abs(func_5(var_2.d, var_0.b, 4294967295u, Struct_2(Struct_1(vec3<f32>(var_0.b.x, 1035f, -1439f), vec3<f32>(var_2.a.x, var_2.b.x, 454f), vec3<u32>(var_2.c.x, var_2.c.x, 1u), true), vec3<bool>(var_2.d, var_0.d, var_2.d), 17862i)).a.c.x)), ~(~var_0.c.x)), var_0.d);
    let var_4 = select(var_2.c.yz, var_2.c.xx, select(!vec2<bool>(false, var_0.d), !vec2<bool>(var_0.d, !var_0.d), !select(select(vec2<bool>(var_0.d, false), vec2<bool>(var_0.d, false), var_0.d), vec2<bool>(var_2.d, var_0.d), select(vec2<bool>(var_0.d, false), vec2<bool>(var_0.d, var_0.d), var_0.d))));
    let var_5 = Struct_3(func_5(func_5(_wgslsmith_div_i32(u_input.a, var_1.x) > abs(-1i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.b) * _wgslsmith_f_op_vec3_f32(func_1())), var_0.c.x ^ var_0.c.x, Struct_2(Struct_1(var_2.b, var_0.a, var_2.c, var_0.d), vec3<bool>(var_2.d, var_0.d, true), var_1.x)).a.d, vec3<f32>(_wgslsmith_f_op_f32(trunc(2403f)), -1897f, _wgslsmith_f_op_vec3_f32(func_4(func_2(), -33306i, Struct_2(var_0, vec3<bool>(var_0.d, var_0.d, var_0.d), var_1.x))).x), abs(select(func_5(true, var_2.a, var_2.c.x, Struct_2(var_2, vec3<bool>(var_2.d, false, false), var_1.x)).a.c.x, _wgslsmith_dot_vec3_u32(var_2.c, vec3<u32>(73999u, 89u, var_2.c.x)), select(true, false, true))), Struct_2(Struct_1(vec3<f32>(var_2.a.x, var_0.b.x, 848f), _wgslsmith_f_op_vec3_f32(-var_0.a), ~var_2.c, false), !select(vec3<bool>(var_2.d, true, true), vec3<bool>(false, var_0.d, var_0.d), true), -(u_input.a >> (107914u % 32u)))), 23977u);
    let var_6 = vec2<f32>(_wgslsmith_f_op_vec3_f32(func_1()).x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) - 1f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.b.x + var_2.b.x), _wgslsmith_div_f32(var_2.b.x, var_0.b.x))), _wgslsmith_f_op_f32(f32(-1f) * -1622f)));
    let var_7 = func_5(true, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(floor(var_0.b)))), _wgslsmith_mult_u32(~var_2.c.x, 4294967295u) >> (firstLeadingBit(1u) % 32u), func_5(var_2.d, vec3<f32>(-1083f, var_2.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -200f) * var_6.x)), var_5.b, Struct_2(var_0, select(!vec3<bool>(true, var_0.d, var_0.d), !var_5.a.b, var_5.a.b.x), _wgslsmith_div_i32(2147483647i >> (var_0.c.x % 32u), 2147483647i))));
    var var_8 = func_5(true, _wgslsmith_div_vec3_f32(var_0.b, vec3<f32>(var_6.x, var_7.a.a.x, var_7.a.a.x)), var_0.c.x, var_5.a).b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_u32(var_4, _wgslsmith_sub_vec2_u32(var_2.c.zy, abs(var_5.a.a.c.yy))), ~0u);
}

