struct Struct_1 {
    a: u32,
    b: bool,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: bool,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
    c: Struct_1,
    d: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<i32>,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: f32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_4) -> bool {
    let var_0 = 721u;
    var var_1 = arg_0;
    let var_2 = arg_1.b;
    var var_3 = -1i == ~(firstTrailingBit(16433i) ^ var_2.d);
    let var_4 = _wgslsmith_sub_vec4_u32(vec4<u32>(~(arg_1.b.a.x | arg_1.a.a), ~28746u, _wgslsmith_div_u32(0u, ~var_0), u_input.a.x), vec4<u32>(arg_1.a.a, 4294967295u, 59013u, (0u | u_input.a.x) | ~1u)) & (vec4<u32>(~firstLeadingBit(4294967295u), ~(22139u | var_2.a.x), abs(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.a.a, 4294967295u, 97953u), arg_1.b.a)), (8513u & arg_1.b.a.x) << (90617u % 32u)) & ~(vec4<u32>(var_2.c.a, 58748u, 5324u, var_2.c.a) << (vec4<u32>(u_input.e, arg_1.a.a, 1u, 1u) % vec4<u32>(32u))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1380f + _wgslsmith_f_op_f32(var_2.b.a.x + 840f))) + _wgslsmith_div_f32(arg_1.b.b.a.x, 853f)) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b.b.a.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-465f * arg_1.b.b.a.x) * _wgslsmith_f_op_f32(max(-632f, var_2.b.a.x)))));
}

fn func_3(arg_0: bool, arg_1: vec2<bool>, arg_2: vec3<u32>) -> bool {
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(490f, -506f, 149f) + vec3<f32>(-1375f, -300f, 164f))))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1043f, -708f, 626f) * vec3<f32>(276f, -1149f, 1232f))))), vec3<bool>(true, any(!vec4<bool>(true, true, arg_0, arg_1.x)), all(arg_1)))), arg_0);
    let var_1 = Struct_3(abs(arg_2), var_0, Struct_1(4294967295u, true, vec4<bool>(all(!vec2<bool>(var_0.b, true)), !(true && var_0.b), !(!arg_0), true)), -abs(reverseBits(~1i)));
    var var_2 = var_1;
    let var_3 = var_0.b;
    var_2 = var_1;
    return var_0.b;
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: vec4<bool>, arg_3: vec2<bool>) -> Struct_4 {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b.a.x, arg_1.b.a.x, -771f, 832f)) - _wgslsmith_div_vec4_f32(vec4<f32>(463f, arg_1.b.a.x, 383f, arg_1.b.a.x), vec4<f32>(arg_1.b.a.x, arg_1.b.a.x, -339f, 1145f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b.a.x, -1733f, -1713f, _wgslsmith_f_op_f32(-arg_1.b.a.x)))), vec4<f32>(arg_1.b.a.x, -354f, -1146f, arg_1.b.a.x));
    let var_1 = arg_1.b;
    var var_2 = Struct_3(select(reverseBits(arg_1.a), vec3<u32>(58681u, 45996u, 97684u), !(arg_0.x && select(arg_3.x, true, arg_2.x))), Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_1.b.a.x, -1386f, var_1.a.x), vec3<f32>(-119f, arg_1.b.a.x, 1000f)))), (max(-2147483647i, u_input.d.x) != ~(-55527i)) & true), arg_1.c, -u_input.d.x);
    let var_3 = var_0;
    let var_4 = 2147483647i;
    return Struct_4(var_2.c, arg_1, 4294967295u);
}

fn func_1(arg_0: i32, arg_1: vec4<f32>) -> Struct_1 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-arg_1.wyx), 11643u != u_input.a.x);
    let var_1 = func_4(!vec4<bool>(func_3(func_2(vec3<bool>(var_0.b, true, false), Struct_4(Struct_1(u_input.a.x, true, vec4<bool>(var_0.b, var_0.b, var_0.b, false)), Struct_3(vec3<u32>(u_input.a.x, 4294967295u, 1430u), Struct_2(var_0.a, true), Struct_1(u_input.a.x, false, vec4<bool>(var_0.b, true, true, true)), u_input.c.x), u_input.e)), vec2<bool>(true, true), ~vec3<u32>(u_input.a.x, u_input.e, u_input.a.x)), var_0.b, false, any(vec2<bool>(false, var_0.b))), Struct_3(max(vec3<u32>(u_input.a.x, 15928u, ~4294967295u), ~(~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x))), Struct_2(vec3<f32>(var_0.a.x, _wgslsmith_f_op_f32(round(var_0.a.x)), -1152f), true), Struct_1(u_input.a.x, !var_0.b, !(!vec4<bool>(var_0.b, var_0.b, true, true))), arg_0), select(!vec4<bool>(!var_0.b, 1i < u_input.c.x, true, true), !select(select(vec4<bool>(false, false, false, var_0.b), vec4<bool>(true, true, var_0.b, var_0.b), vec4<bool>(true, true, var_0.b, var_0.b)), vec4<bool>(false, true, var_0.b, var_0.b), vec4<bool>(false, true, var_0.b, var_0.b)), any(!select(vec3<bool>(var_0.b, false, false), vec3<bool>(var_0.b, var_0.b, var_0.b), vec3<bool>(var_0.b, false, var_0.b)))), !vec2<bool>(false && var_0.b, true != !var_0.b));
    var_0 = var_1.b.b;
    let var_2 = func_4(vec4<bool>(true, !all(vec3<bool>(var_0.b, var_1.b.c.c.x, false)), var_0.b, !func_3(false, !var_1.a.c.yx, _wgslsmith_sub_vec3_u32(var_1.b.a, var_1.b.a))), var_1.b, !var_1.b.c.c, vec2<bool>(false, !(any(vec3<bool>(false, false, false)) | false)));
    var var_3 = arg_1;
    return Struct_1(firstTrailingBit(29398u), func_2(func_4(!select(var_1.a.c, var_1.b.c.c, var_1.b.c.c), var_2.b, !vec4<bool>(var_1.a.c.x, false, false, true), select(!var_2.a.c.ww, var_2.a.c.wy, var_0.b)).b.c.c.xyw, var_2), vec4<bool>(var_1.a.b, func_3(1u >= var_1.a.a, select(var_1.b.c.c.yz, vec2<bool>(var_1.a.b, var_2.a.c.x), true), var_1.b.a) != (var_0.b != var_1.b.b.b), func_4(vec4<bool>(true, true, var_1.a.a > var_1.b.a.x, var_2.a.c.x), func_4(vec4<bool>(var_2.b.c.c.x, var_1.b.b.b, var_0.b, var_2.a.b), Struct_3(var_1.b.a, var_2.b.b, var_2.a, arg_0), vec4<bool>(var_1.a.b, false, false, var_0.b), vec2<bool>(true, true)).b, vec4<bool>(func_3(false, vec2<bool>(var_1.b.c.c.x, var_0.b), var_1.b.a), true, true, func_3(false, vec2<bool>(true, true), vec3<u32>(var_2.c, 0u, var_2.b.c.a))), select(vec2<bool>(var_2.b.b.b, true), func_4(var_2.b.c.c, var_2.b, vec4<bool>(var_2.b.b.b, false, true, var_1.b.c.b), var_1.a.c.yx).a.c.ww, var_2.a.b)).a.c.x, _wgslsmith_mult_i32(u_input.b, u_input.c.x) >= _wgslsmith_mult_i32(reverseBits(u_input.c.x), 2147483647i)));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_4) -> Struct_1 {
    var var_0 = 1u;
    var var_1 = func_4(arg_0.c, arg_2.b, arg_0.c, !(!func_1(arg_2.b.d, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1104f, 1053f, 281f, -1611f))).c.zx));
    let var_2 = _wgslsmith_f_op_vec2_f32(trunc(var_1.b.b.a.xx));
    let var_3 = func_4(arg_0.c, func_4(arg_2.a.c, func_4(vec4<bool>(arg_0.c.x == false, func_2(arg_2.a.c.yyx, arg_2), all(arg_2.b.c.c.xzw), !var_1.b.c.c.x), Struct_3(countOneBits(vec3<u32>(u_input.a.x, 1u, 0u)), func_4(var_1.a.c, Struct_3(vec3<u32>(52497u, 4294967295u, 4294967295u), Struct_2(arg_1.a, arg_2.a.b), var_1.a, var_1.b.d), arg_0.c, vec2<bool>(arg_2.a.b, var_1.b.c.b)).b.b, func_4(var_1.a.c, Struct_3(vec3<u32>(arg_0.a, var_1.a.a, 64557u), arg_2.b.b, var_1.b.c, -39011i), arg_0.c, vec2<bool>(true, true)).a, 1i), vec4<bool>(true, true, arg_0.b, true | arg_1.b), arg_2.a.c.ww).b, var_1.a.c, select(func_1(-arg_2.b.d, vec4<f32>(-667f, -178f, arg_2.b.b.a.x, var_1.b.b.a.x)).c.zw, vec2<bool>(arg_0.a < 4294967295u, true), vec2<bool>(var_1.b.c.b, any(vec2<bool>(arg_2.a.b, var_1.a.b))))).b, arg_0.c, vec2<bool>(true, true)).b;
    var_0 = 4294967295u;
    return var_3.c;
}

fn func_6(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: vec2<i32>) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-770f, -659f, -1111f), _wgslsmith_f_op_vec3_f32(vec3<f32>(1018f, -583f, 1042f) - vec3<f32>(-2045f, 780f, -568f)), !vec3<bool>(false, arg_2.x, arg_2.x)))) * vec3<f32>(842f, _wgslsmith_f_op_f32(sign(-343f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(326f, 139f))))));
    var var_1 = _wgslsmith_f_op_vec2_f32(select(var_0.yx, _wgslsmith_f_op_vec2_f32(-var_0.zx), vec2<bool>(true, any(arg_1.c.yww))));
    var var_2 = Struct_1(0u, true, func_1(_wgslsmith_mod_i32(-_wgslsmith_mult_i32(arg_3.x, -1i), arg_3.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.x, var_1.x, var_0.x, -149f))), _wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, var_1.x, 476f, var_1.x), vec4<f32>(var_1.x, 1284f, var_0.x, -1718f)))))).c);
    let var_3 = arg_1;
    var_1 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, var_1.x))) * vec2<f32>(var_0.x, _wgslsmith_f_op_f32(-var_1.x)))))));
    return 17633u;
}

fn func_7(arg_0: vec2<u32>, arg_1: vec3<f32>, arg_2: vec4<u32>) -> Struct_1 {
    let var_0 = Struct_3(vec3<u32>(abs(~4294967295u), _wgslsmith_mod_u32(_wgslsmith_mod_u32(arg_2.x, 16760u) << (~0u % 32u), 1u), 0u), Struct_2(arg_1, func_5(Struct_1(20079u, all(vec3<bool>(true, false, false)), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true))), func_4(vec4<bool>(true, true, true, true), Struct_3(arg_2.ywx, Struct_2(arg_1, false), Struct_1(0u, true, vec4<bool>(false, false, true, false)), 22095i), vec4<bool>(true, true, true, true), vec2<bool>(true, false)).b.b, func_4(vec4<bool>(true, true, false, true), Struct_3(arg_2.xxx, Struct_2(arg_1, false), Struct_1(arg_2.x, false, vec4<bool>(false, false, false, true)), u_input.d.x), vec4<bool>(false, false, false, true), vec2<bool>(true, true))).b), Struct_1(_wgslsmith_dot_vec3_u32(func_4(vec4<bool>(true, true, true, true), Struct_3(arg_2.xzy, Struct_2(arg_1, true), Struct_1(0u, false, vec4<bool>(false, false, false, true)), u_input.c.x), func_4(vec4<bool>(true, false, true, false), Struct_3(arg_2.yww, Struct_2(arg_1, false), Struct_1(arg_2.x, true, vec4<bool>(false, true, false, true)), u_input.c.x), vec4<bool>(true, false, true, true), vec2<bool>(true, false)).b.c.c, func_5(Struct_1(arg_0.x, false, vec4<bool>(false, true, false, true)), Struct_2(vec3<f32>(arg_1.x, -1241f, arg_1.x), false), Struct_4(Struct_1(arg_0.x, true, vec4<bool>(false, false, false, true)), Struct_3(arg_2.zyy, Struct_2(vec3<f32>(arg_1.x, arg_1.x, arg_1.x), false), Struct_1(1u, false, vec4<bool>(true, false, false, false)), u_input.c.x), arg_0.x)).c.yx).b.a, arg_2.wzz), true, func_1(~reverseBits(u_input.d.x), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_1.x, 166f, -1177f, 978f)))).c), 24725i);
    return func_4(func_4(var_0.c.c, Struct_3(var_0.a, func_4(vec4<bool>(var_0.c.c.x, var_0.b.b, var_0.b.b, false), func_4(var_0.c.c, var_0, var_0.c.c, var_0.c.c.yz).b, select(vec4<bool>(var_0.c.c.x, var_0.c.c.x, true, var_0.c.c.x), var_0.c.c, true), vec2<bool>(true, var_0.b.b)).b.b, func_1(var_0.d, _wgslsmith_div_vec4_f32(vec4<f32>(arg_1.x, -1584f, -716f, var_0.b.a.x), vec4<f32>(-608f, -651f, var_0.b.a.x, var_0.b.a.x))), 0i), vec4<bool>(!all(var_0.c.c.yx), !var_0.b.b, all(func_5(var_0.c, Struct_2(vec3<f32>(var_0.b.a.x, arg_1.x, -110f), var_0.c.b), Struct_4(var_0.c, var_0, 129409u)).c.xwz), all(func_4(vec4<bool>(true, var_0.c.b, false, true), var_0, var_0.c.c, var_0.c.c.zz).a.c)), func_5(Struct_1(u_input.a.x, var_0.c.b, !vec4<bool>(var_0.c.c.x, var_0.c.b, false, true)), Struct_2(_wgslsmith_f_op_vec3_f32(min(arg_1, vec3<f32>(1000f, 448f, var_0.b.a.x))), func_2(vec3<bool>(true, var_0.b.b, true), Struct_4(Struct_1(u_input.a.x, false, var_0.c.c), Struct_3(vec3<u32>(u_input.e, arg_0.x, 28388u), var_0.b, var_0.c, var_0.d), arg_2.x))), Struct_4(var_0.c, var_0, arg_0.x)).c.zx).b.c.c, func_4(func_5(func_1(~49327i, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-501f, arg_1.x, arg_1.x, -925f))), var_0.b, Struct_4(var_0.c, func_4(vec4<bool>(var_0.c.b, var_0.b.b, var_0.b.b, true), Struct_3(vec3<u32>(25643u, arg_0.x, arg_0.x), var_0.b, Struct_1(11636u, var_0.c.c.x, var_0.c.c), u_input.c.x), vec4<bool>(true, false, true, false), vec2<bool>(var_0.c.b, true)).b, arg_0.x)).c, var_0, vec4<bool>(func_3(var_0.c.b, vec2<bool>(var_0.b.b, true), select(vec3<u32>(arg_0.x, 0u, arg_2.x), vec3<u32>(50591u, var_0.a.x, 17289u), vec3<bool>(var_0.b.b, var_0.c.b, false))), -u_input.b <= u_input.b, all(vec2<bool>(true, true)), false), var_0.c.c.zy).b, var_0.c.c, vec2<bool>(select(false, true, !var_0.c.b | false), true)).a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec2<bool>(false, false), vec2<bool>(all(vec4<bool>(false, true, true, true)), !(u_input.d.x >= _wgslsmith_dot_vec4_i32(vec4<i32>(15946i, -2147483647i, 2147483647i, 22989i), vec4<i32>(u_input.b, 0i, u_input.d.x, u_input.c.x)))), vec2<bool>(true, all(vec4<bool>(any(vec4<bool>(false, false, false, true)), true, true, false))));
    var var_1 = func_7(vec2<u32>(func_6(firstTrailingBit(vec3<u32>(u_input.e, 13206u, 28789u) | vec3<u32>(u_input.a.x, 1u, 43558u)), func_5(func_1(52154i, vec4<f32>(-575f, -1000f, -1147f, -853f)), func_4(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), Struct_3(vec3<u32>(u_input.a.x, 19285u, 62126u), Struct_2(vec3<f32>(714f, -461f, -1287f), var_0.x), Struct_1(u_input.a.x, false, vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)), u_input.b), vec4<bool>(false, false, true, var_0.x), vec2<bool>(var_0.x, false)).b.b, Struct_4(Struct_1(u_input.a.x, var_0.x, vec4<bool>(true, var_0.x, true, false)), Struct_3(vec3<u32>(20327u, 0u, 1u), Struct_2(vec3<f32>(-1387f, 303f, 881f), var_0.x), Struct_1(u_input.e, var_0.x, vec4<bool>(var_0.x, var_0.x, var_0.x, true)), -1i), u_input.a.x)), select(!vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(true, false, var_0.x), select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_0.x, var_0.x, true), var_0.x)), -u_input.c.xy >> (vec2<u32>(u_input.a.x, u_input.e) % vec2<u32>(32u))), 65812u), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(1497f)), -333f)), _wgslsmith_div_f32(-484f, _wgslsmith_f_op_f32(f32(-1f) * -398f)), -271f) + vec3<f32>(1f, 1f, 1f)), vec4<u32>(u_input.e, min(4294967295u, _wgslsmith_add_u32(u_input.a.x, 37316u)), ~1u, func_6(~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.e, 20994u, 16349u), vec3<u32>(u_input.a.x, 39128u, 24829u)), func_1(u_input.d.x, vec4<f32>(-1000f, 994f, -563f, -730f)), vec3<bool>(true, var_0.x, true | var_0.x), u_input.d)));
    var var_2 = func_4(var_1.c, Struct_3(max(min(vec3<u32>(1u, 4294967295u, 103529u), vec3<u32>(1u, 4294967295u, 0u)), ~vec3<u32>(var_1.a, 8372u, 0u)) ^ (~vec3<u32>(u_input.e, var_1.a, var_1.a) << (~vec3<u32>(var_1.a, 1174u, var_1.a) % vec3<u32>(32u))), Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2079f, -169f, -977f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(637f, -361f, -562f) * vec3<f32>(1441f, 228f, -1521f))), !var_1.c.x), Struct_1(u_input.e, func_4(func_7(vec2<u32>(u_input.a.x, u_input.e), vec3<f32>(220f, 1030f, -1843f), vec4<u32>(var_1.a, var_1.a, u_input.a.x, 25911u)).c, func_4(var_1.c, Struct_3(vec3<u32>(var_1.a, u_input.a.x, var_1.a), Struct_2(vec3<f32>(-958f, -116f, -299f), false), Struct_1(var_1.a, true, vec4<bool>(true, var_0.x, var_1.b, false)), u_input.c.x), vec4<bool>(false, true, var_0.x, false), var_1.c.zz).b, var_1.c, var_1.c.yx).a.c.x, vec4<bool>(false == var_0.x, true, var_1.b, u_input.b != u_input.d.x)), ~10035i), !vec4<bool>(var_1.b, var_1.c.x, false, all(!var_1.c.yyw)), !func_7(~u_input.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-694f, -322f, 277f)), ~_wgslsmith_mod_vec4_u32(vec4<u32>(9237u, u_input.e, 22655u, 25373u), vec4<u32>(4294967295u, u_input.e, 28240u, 1824u))).c.yw).a;
    let var_3 = vec2<u32>(abs(0u), var_1.a);
    var_2 = Struct_1(var_3.x, var_0.x, func_1(func_4(!var_1.c, func_4(vec4<bool>(true, var_2.c.x, var_2.b, var_2.b), Struct_3(vec3<u32>(1u, var_1.a, 6953u), Struct_2(vec3<f32>(1274f, 1319f, -1177f), var_0.x), Struct_1(var_1.a, true, var_1.c), 2147483647i), vec4<bool>(true, true, true, true), !var_1.c.wy).b, vec4<bool>(true, u_input.e >= 51433u, true, func_2(var_1.c.zxz, Struct_4(Struct_1(u_input.a.x, var_1.c.x, vec4<bool>(false, var_1.b, false, var_1.c.x)), Struct_3(vec3<u32>(var_3.x, 44760u, var_2.a), Struct_2(vec3<f32>(-836f, -496f, 934f), false), Struct_1(23788u, var_2.c.x, vec4<bool>(var_0.x, var_0.x, var_0.x, var_2.c.x)), u_input.b), u_input.e))), vec2<bool>(var_0.x, func_3(false, vec2<bool>(var_2.b, var_1.b), vec3<u32>(var_2.a, 56561u, var_2.a)))).b.d, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(478f, -1216f, 1412f, -339f)) - vec4<f32>(_wgslsmith_f_op_f32(sign(511f)), _wgslsmith_f_op_f32(608f + -1029f), _wgslsmith_f_op_f32(f32(-1f) * -696f), _wgslsmith_f_op_f32(1816f - -716f)))).c);
    var_1 = func_5(func_4(var_2.c, Struct_3(vec3<u32>(~u_input.e, firstLeadingBit(4294967295u), _wgslsmith_clamp_u32(1u, u_input.e, 1u)), Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1007f, 1510f, 1239f)), true), Struct_1(countOneBits(0u), any(var_2.c.xzy), vec4<bool>(var_0.x, var_0.x, true, false)), u_input.c.x), !vec4<bool>(true, false, !var_2.b, func_1(u_input.b, vec4<f32>(695f, -1408f, -934f, 945f)).c.x), vec2<bool>(!(!var_0.x), !all(vec4<bool>(var_1.b, var_1.b, false, var_2.b)))).b.c, Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-757f, 614f, -380f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(401f, 1622f, 1091f))), vec3<f32>(-1231f, _wgslsmith_f_op_f32(f32(-1f) * -1197f), _wgslsmith_f_op_f32(step(1000f, 3066f)))), func_4(select(var_2.c, !var_2.c, true), Struct_3(countOneBits(vec3<u32>(var_2.a, 15777u, u_input.e)), func_4(var_2.c, Struct_3(vec3<u32>(0u, var_1.a, u_input.a.x), Struct_2(vec3<f32>(-1048f, -832f, 1230f), var_1.b), Struct_1(15038u, var_0.x, var_1.c), u_input.c.x), vec4<bool>(var_1.b, var_0.x, var_2.c.x, true), var_1.c.yx).b.b, Struct_1(u_input.a.x, var_1.b, vec4<bool>(var_1.c.x, true, var_0.x, var_0.x)), abs(u_input.c.x)), var_2.c, func_5(func_4(vec4<bool>(var_1.b, true, false, true), Struct_3(vec3<u32>(var_1.a, 37150u, 1u), Struct_2(vec3<f32>(-456f, 1000f, -215f), true), Struct_1(0u, var_2.c.x, vec4<bool>(var_2.c.x, var_0.x, true, var_2.b)), 48338i), vec4<bool>(var_2.b, true, var_1.c.x, var_0.x), vec2<bool>(var_2.b, true)).a, Struct_2(vec3<f32>(828f, -950f, 203f), var_1.c.x), func_4(var_1.c, Struct_3(vec3<u32>(0u, 10115u, 59706u), Struct_2(vec3<f32>(1640f, -1579f, 431f), true), Struct_1(61402u, true, vec4<bool>(var_1.b, false, true, var_2.b)), 0i), vec4<bool>(false, false, true, false), var_1.c.ww)).c.yx).b.b.b), func_4(var_2.c, Struct_3(vec3<u32>(24865u, 43893u >> (u_input.a.x % 32u), func_7(vec2<u32>(1u, 0u), vec3<f32>(-296f, -1000f, -396f), vec4<u32>(var_2.a, 14251u, var_2.a, 30122u)).a), func_4(select(vec4<bool>(var_0.x, var_1.b, var_1.b, var_1.c.x), vec4<bool>(var_2.b, var_2.c.x, true, true), var_2.c), func_4(var_2.c, Struct_3(vec3<u32>(var_1.a, var_3.x, 21219u), Struct_2(vec3<f32>(105f, -1251f, -324f), var_1.c.x), Struct_1(var_2.a, true, var_1.c), u_input.d.x), vec4<bool>(true, true, false, var_0.x), vec2<bool>(var_2.b, var_2.c.x)).b, !var_2.c, vec2<bool>(true, var_1.c.x)).b.b, func_5(func_4(vec4<bool>(var_2.c.x, false, var_0.x, false), Struct_3(vec3<u32>(528u, 4294967295u, u_input.e), Struct_2(vec3<f32>(469f, -291f, 532f), true), Struct_1(19836u, true, var_2.c), 10513i), var_2.c, vec2<bool>(var_1.c.x, true)).b.c, Struct_2(vec3<f32>(658f, 421f, 1890f), var_1.c.x), func_4(var_1.c, Struct_3(vec3<u32>(20688u, var_3.x, var_2.a), Struct_2(vec3<f32>(-1941f, -426f, 821f), false), Struct_1(4294967295u, var_2.c.x, vec4<bool>(var_0.x, false, true, true)), -20340i), vec4<bool>(false, var_0.x, var_1.b, false), vec2<bool>(var_1.b, true))), func_4(select(var_2.c, var_2.c, var_2.c.x), Struct_3(vec3<u32>(var_1.a, var_2.a, u_input.e), Struct_2(vec3<f32>(1609f, 528f, 1066f), var_2.c.x), Struct_1(var_1.a, var_1.b, var_2.c), 16084i), var_2.c, vec2<bool>(false, true)).b.d), var_2.c, select(var_2.c.zz, vec2<bool>(any(vec4<bool>(var_1.c.x, true, var_0.x, false)), !var_0.x), var_1.c.xy)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(-1157f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(753f - 1523f) * _wgslsmith_f_op_f32(723f - -960f)))), 1i, _wgslsmith_f_op_f32(round(909f)), _wgslsmith_clamp_u32(4294967295u, var_3.x, _wgslsmith_sub_u32(~(~u_input.e), ~0u)), 0i);
}

