struct Struct_1 {
    a: f32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: bool,
    b: vec2<bool>,
    c: Struct_1,
    d: vec2<f32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: u32,
}

struct Struct_4 {
    a: u32,
    b: u32,
    c: vec4<i32>,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
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

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> i32 {
    var var_0 = 1000f;
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1f)) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -551f), _wgslsmith_f_op_f32(select(114f, -1125f, false))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-310f + 407f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(888f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1268f + -708f) - 660f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + 693f))))));
    var var_1 = -_wgslsmith_add_vec2_i32(select(max(vec2<i32>(1i, 6724i), vec2<i32>(1i, 1i)), ~select(vec2<i32>(23263i, 2147483647i), vec2<i32>(-1i, 2147483647i), false), true), ~_wgslsmith_sub_vec2_i32(~vec2<i32>(-2147483647i, 1i), reverseBits(vec2<i32>(-1i, -2147483647i))));
    var var_2 = _wgslsmith_f_op_f32(832f - _wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1903f * -852f), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), false)));
    var var_3 = -max(abs(firstLeadingBit(vec4<i32>(var_1.x, 2147483647i, var_1.x, var_1.x) << (vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) % vec4<u32>(32u)))), ~vec4<i32>(~0i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.x, var_1.x, var_1.x), vec3<i32>(43608i, 23284i, var_1.x)), countOneBits(var_1.x), -24570i));
    return -_wgslsmith_add_i32(~1i, var_1.x) | ~var_1.x;
}

fn func_2(arg_0: u32) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * 2148f) == _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-423f * -935f) + -572f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(413f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -102f), _wgslsmith_f_op_f32(-2236f * 1000f), true))));
    let var_1 = _wgslsmith_div_i32(max((-1i << (~arg_0 % 32u)) ^ -firstLeadingBit(30567i), func_3() & ~13001i), -15601i);
    var var_2 = Struct_3(vec4<i32>(_wgslsmith_sub_i32(var_1, countOneBits(var_1)), -478i, var_1, -42275i), ~51637u);
    var_2 = Struct_3(var_2.a >> (u_input.a % vec4<u32>(32u)), firstTrailingBit(abs(u_input.a.x)));
    var var_3 = vec2<f32>(_wgslsmith_div_f32(1236f, -853f), -327f);
    return -1315f;
}

fn func_4(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: i32) -> Struct_1 {
    var var_0 = !any(select(vec4<bool>(arg_0.b.x, all(arg_1), arg_0.b.x, select(arg_0.b.x, true, arg_0.a)), arg_1, any(arg_1) && arg_1.x));
    let var_1 = arg_0.c;
    var_0 = arg_1.x;
    var var_2 = reverseBits(reverseBits(arg_0.c.b.x));
    var var_3 = select(~(~firstTrailingBit(vec4<i32>(-35994i, arg_2, 0i, var_1.b.x) >> (u_input.a % vec4<u32>(32u)))), vec4<i32>(~0i, max(-10622i, abs(-58976i)), arg_2, 49332i), any(vec3<bool>(true, any(vec2<bool>(arg_1.x, false)), any(!arg_0.b))));
    return Struct_1(arg_0.d.x, ~_wgslsmith_add_vec2_i32(~_wgslsmith_sub_vec2_i32(vec2<i32>(arg_2, 370i), var_3.xy), select(vec2<i32>(-1i, var_3.x), max(vec2<i32>(var_3.x, var_1.b.x), arg_0.c.b), !arg_1.xx)));
}

fn func_1(arg_0: Struct_5) -> Struct_3 {
    let var_0 = 630f;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(-1165f)))), -707f)), -132f)), _wgslsmith_add_vec2_i32(vec2<i32>(1i, 1i) >> ((u_input.a.zy & vec2<u32>(u_input.a.x, u_input.a.x)) % vec2<u32>(32u)), -(~vec2<i32>(-2147483647i, 0i))));
    let var_2 = select(!select(!(!vec3<bool>(arg_0.a, arg_0.a, arg_0.a)), !vec3<bool>(arg_0.a, arg_0.a, true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(arg_0.a, arg_0.a, false), vec3<bool>(false, true, true)), arg_0.a)), vec3<bool>(!(arg_0.a && arg_0.a) != arg_0.a, !arg_0.a, true), !(!vec3<bool>(all(vec4<bool>(arg_0.a, false, arg_0.a, arg_0.a)), var_0 > -449f, true)));
    var_1 = func_4(Struct_2(any(vec4<bool>(var_2.x, true, arg_0.a, arg_0.a)) == var_2.x, vec2<bool>(false, all(select(vec2<bool>(true, true), vec2<bool>(arg_0.a, false), vec2<bool>(arg_0.a, var_2.x)))), Struct_1(_wgslsmith_f_op_f32(min(var_1.a, _wgslsmith_f_op_f32(func_2(u_input.a.x)))), var_1.b), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1000f, -1000f), vec2<f32>(-1533f, var_0)) + vec2<f32>(527f, -1770f))))), vec4<bool>(any(select(vec4<bool>(false, arg_0.a, true, arg_0.a), vec4<bool>(false, arg_0.a, arg_0.a, var_2.x), true)) || arg_0.a, !arg_0.a, true, true | !select(var_2.x, true, false)), _wgslsmith_mult_i32(-2147483647i, -1i));
    var_1 = Struct_1(1f, vec2<i32>(_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(~vec4<i32>(-54761i, -7202i, 3337i, -1i), vec4<i32>(var_1.b.x, var_1.b.x, var_1.b.x, var_1.b.x) & vec4<i32>(-16227i, var_1.b.x, var_1.b.x, 2147483647i)), var_1.b.x, var_1.b.x), -2147483647i));
    return Struct_3(reverseBits(vec4<i32>(reverseBits(var_1.b.x), var_1.b.x, _wgslsmith_mod_i32(1i << (u_input.a.x % 32u), var_1.b.x & var_1.b.x), var_1.b.x)), u_input.a.x);
}

fn func_5(arg_0: f32, arg_1: Struct_3, arg_2: Struct_1) -> Struct_1 {
    let var_0 = arg_1.b << (reverseBits(arg_1.b) % 32u);
    let var_1 = firstTrailingBit(~(u_input.a.wy << (~vec2<u32>(25042u, 0u) % vec2<u32>(32u))));
    let var_2 = max(arg_1.a.x, -23454i);
    var var_3 = var_1.x;
    var var_4 = Struct_5(!(!(~0u >= _wgslsmith_dot_vec4_u32(vec4<u32>(var_0, var_1.x, 0u, var_1.x), u_input.a))));
    return func_4(Struct_2(true, !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(var_4.a, false)), func_4(Struct_2(var_4.a, select(vec2<bool>(var_4.a, var_4.a), vec2<bool>(var_4.a, var_4.a), var_4.a), Struct_1(arg_2.a, vec2<i32>(-16981i, var_2)), vec2<f32>(1852f, arg_2.a)), !vec4<bool>(var_4.a, false, var_4.a, false), arg_2.b.x), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(452f, arg_0) - vec2<f32>(arg_2.a, 339f)), vec2<f32>(526f, 1087f), !var_4.a)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(994f, arg_0) * vec2<f32>(1137f, 353f)))))), select(!(!select(vec4<bool>(var_4.a, var_4.a, false, var_4.a), vec4<bool>(var_4.a, var_4.a, var_4.a, var_4.a), false)), select(!select(vec4<bool>(true, false, var_4.a, var_4.a), vec4<bool>(var_4.a, false, true, var_4.a), true), select(vec4<bool>(false, true, var_4.a, true), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, var_4.a, true), true), var_4.a), !vec4<bool>(var_4.a, var_4.a, var_4.a, var_4.a)), select(vec4<bool>(var_4.a, var_4.a, var_4.a, true & var_4.a), select(!vec4<bool>(var_4.a, var_4.a, true, true), vec4<bool>(false, var_4.a, var_4.a, false), select(vec4<bool>(var_4.a, var_4.a, true, var_4.a), vec4<bool>(var_4.a, true, var_4.a, var_4.a), vec4<bool>(true, false, var_4.a, var_4.a))), 22730u >= ~arg_1.b)), var_2);
}

fn func_6(arg_0: Struct_1, arg_1: Struct_3, arg_2: f32) -> f32 {
    var var_0 = ~(i32(-1i) * -80900i);
    var_0 = func_1(Struct_5(true)).a.x;
    var var_1 = Struct_4(arg_1.b, u_input.a.x, vec4<i32>(~reverseBits(arg_1.a.x), 2147483647i | (i32(-1i) * -arg_1.a.x), ~select(-25077i, 0i, false) << (_wgslsmith_dot_vec2_u32(u_input.a.yz, u_input.a.zy >> (vec2<u32>(arg_1.b, arg_1.b) % vec2<u32>(32u))) % 32u), func_3()));
    var_0 = -(0i << (_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, 44011u, 697u), vec3<u32>(0u, 4294967295u, arg_1.b)), vec3<u32>(_wgslsmith_div_u32(27131u, var_1.a), 48675u >> (1u % 32u), max(72481u, 0u))) % 32u));
    var_0 = ~(i32(-1i) * -4930i);
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(arg_2))))));
}

fn func_7(arg_0: Struct_5, arg_1: vec3<f32>, arg_2: Struct_2) -> Struct_5 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -554f);
    let var_1 = Struct_2(arg_2.b.x, vec2<bool>(true, arg_2.a), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_6(Struct_1(-1000f, vec2<i32>(arg_2.c.b.x, 29384i)), func_1(Struct_5(false)), arg_2.c.a)) + _wgslsmith_f_op_f32(arg_2.c.a + _wgslsmith_f_op_f32(-arg_1.x))), vec2<i32>(~(-20229i), -_wgslsmith_clamp_i32(1i, arg_2.c.b.x, 5273i))), arg_2.d);
    var var_2 = ~_wgslsmith_clamp_u32(abs(~func_1(Struct_5(arg_2.b.x)).b), ~1u, 0u);
    let var_3 = arg_2.a;
    let var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.d)));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(Struct_5(all(vec3<bool>(false, select(true, true, false), true))), vec3<f32>(_wgslsmith_f_op_f32(round(912f)), _wgslsmith_f_op_f32(func_6(func_5(-1592f, func_1(Struct_5(false)), Struct_1(-444f, vec2<i32>(1i, 37126i))), Struct_3(vec4<i32>(-11449i, 2147483647i, -34139i, 2147483647i), 4294967295u), _wgslsmith_f_op_f32(717f - -1105f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(585f * 1f) - 947f)), Struct_2(!all(vec2<bool>(true, true)), vec2<bool>(true, true), Struct_1(_wgslsmith_div_f32(func_4(Struct_2(false, vec2<bool>(true, true), Struct_1(481f, vec2<i32>(25391i, 1i)), vec2<f32>(995f, 877f)), vec4<bool>(false, false, true, false), 1i).a, -1071f), vec2<i32>(_wgslsmith_add_i32(2147483647i, -1i), i32(-1i) * -2147483647i)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1057f, 1223f)), vec2<f32>(-898f, 326f), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)))) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1052f, -530f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(445f, 1042f)), true)))));
    var var_1 = _wgslsmith_sub_vec2_i32(~(-countOneBits(vec2<i32>(1i, 4433i))), _wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, 2147483647i), -vec2<i32>(-18415i, -1i)) >> (u_input.a.zx % vec2<u32>(32u))) & (vec2<i32>(-2147483647i, ~_wgslsmith_mod_i32(-25846i, 10072i)) >> (_wgslsmith_sub_vec2_u32(~abs(u_input.a.yy), abs(~u_input.a.wy)) % vec2<u32>(32u)));
    var var_2 = Struct_2(var_0.a & !(!(2147483647i < var_1.x)), !(!vec2<bool>(var_0.a, var_0.a || false)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1381f))) * 876f), countOneBits(vec2<i32>(~1i, ~var_1.x))), vec2<f32>(-670f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1207f * 998f)) - -639f)));
    var var_3 = any(!vec4<bool>(true, var_2.b.x, true, false));
    var var_4 = Struct_3(func_1(func_7(func_7(func_7(Struct_5(var_2.b.x), vec3<f32>(var_2.c.a, -185f, var_2.c.a), Struct_2(true, vec2<bool>(false, false), Struct_1(713f, var_2.c.b), vec2<f32>(var_2.c.a, var_2.c.a))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_2.d.x, var_2.d.x, 332f), vec3<f32>(-1279f, -1000f, var_2.c.a))), Struct_2(var_2.b.x, vec2<bool>(true, var_2.a), var_2.c, vec2<f32>(-327f, var_2.c.a))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.d.x, 496f, var_2.c.a)))), Struct_2(true, vec2<bool>(var_0.a, var_2.b.x), Struct_1(var_2.c.a, var_2.c.b), vec2<f32>(-2067f, -1671f)))).a, u_input.a.x);
    var_0 = func_7(func_7(func_7(Struct_5(true), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.d.x, 774f, -374f)) - vec3<f32>(-523f, 1884f, -1296f)), Struct_2(var_2.b.x, select(var_2.b, vec2<bool>(false, true), var_2.b), func_5(-2232f, Struct_3(vec4<i32>(var_4.a.x, var_2.c.b.x, var_4.a.x, 8664i), u_input.a.x), Struct_1(-1028f, var_4.a.wx)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1570f, 414f) * var_2.d))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.c.a, var_2.c.a, -119f)))), Struct_2(var_2.a, vec2<bool>(true, true), func_5(-166f, Struct_3(vec4<i32>(var_4.a.x, var_2.c.b.x, -2147483647i, var_4.a.x), u_input.a.x), var_2.c), var_2.d)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(410f, 823f, -363f))), vec3<f32>(var_2.c.a, var_2.d.x, var_2.d.x)) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(837f, var_2.c.a, -429f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-847f, var_2.d.x, 615f) * vec3<f32>(780f, -1696f, -739f)), var_2.c.a >= -1494f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.d.x, _wgslsmith_f_op_f32(f32(-1f) * -255f), _wgslsmith_f_op_f32(-1251f * var_2.c.a))))), Struct_2(false, vec2<bool>(var_2.a, true), Struct_1(411f, -abs(var_4.a.yy)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_2.c.a, var_2.c.a), vec2<f32>(var_2.c.a, -2487f)) - vec2<f32>(-602f, -506f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-172f, -860f) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-906f - var_2.c.a)))))), 17549u);
}

