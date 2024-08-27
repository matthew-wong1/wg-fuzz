struct Struct_1 {
    a: vec2<i32>,
    b: vec2<f32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec2<i32> {
    let var_0 = vec4<i32>(2147483647i >> (_wgslsmith_mult_u32(7508u, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.b.xx, vec2<u32>(u_input.b.x, u_input.b.x)), ~u_input.b.wz)) % 32u), _wgslsmith_add_i32(2147483647i, ~0i), _wgslsmith_dot_vec3_i32(-vec3<i32>(~(-2147483647i), -1i >> (u_input.a.x % 32u), 0i), countOneBits(vec3<i32>(i32(-1i) * -1i, ~2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(-12628i, -2147483647i, -15217i), vec3<i32>(29212i, -6005i, -2147483647i))))), max((1i >> (u_input.b.x % 32u)) | 52914i, ~abs(i32(-1i) * -2147483647i)));
    let var_1 = Struct_1(var_0.xx, vec2<f32>(_wgslsmith_div_f32(1398f, 1190f), _wgslsmith_f_op_f32(step(427f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(177f))))))), 504f);
    let var_2 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(var_1.b)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.b + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-160f, var_1.b.x)) + var_1.b)))));
    var var_3 = Struct_3(Struct_1(-(vec2<i32>(-13716i, var_1.a.x) << (u_input.b.ww % vec2<u32>(32u))), _wgslsmith_f_op_vec2_f32(-var_2), var_2.x));
    var_3 = Struct_3(var_1);
    return vec2<i32>(var_1.a.x, var_1.a.x);
}

fn func_2() -> Struct_3 {
    var var_0 = Struct_3(Struct_1(firstLeadingBit(_wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, 1i), func_3())), vec2<f32>(947f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -416f) - 1f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    var var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.a.c + var_0.a.c), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.a.b.x, -317f) - _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    var var_2 = vec3<i32>(_wgslsmith_mod_i32(65249i, ~(-11243i)), 16383i, var_0.a.a.x);
    var_1 = 1000f;
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.a.c, var_0.a.b.x, -303f, 643f))))))) * vec4<f32>(_wgslsmith_f_op_f32(-var_0.a.c), _wgslsmith_f_op_f32(-686f + var_0.a.c), var_0.a.b.x, -1732f));
    return Struct_3(var_0.a);
}

fn func_4(arg_0: f32, arg_1: vec3<i32>, arg_2: Struct_3) -> Struct_3 {
    var var_0 = -abs(vec4<i32>((i32(-1i) * -66172i) & arg_1.x, -2147483647i, -1i, _wgslsmith_sub_i32(-2147483647i, arg_2.a.a.x) | firstTrailingBit(-37400i)));
    var var_1 = func_2().a;
    var_1 = arg_2.a;
    let var_2 = ~vec3<u32>(~1u, ~(~0u), u_input.b.x);
    var var_3 = Struct_2(func_2().a, arg_2.a);
    return arg_2;
}

fn func_5(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec4<f32>) -> Struct_2 {
    let var_0 = min(max(_wgslsmith_mult_vec2_i32(arg_0.a.a, select(firstTrailingBit(vec2<i32>(-39424i, arg_2.a.a.x)), ~vec2<i32>(arg_1.a.x, 34243i), vec2<bool>(true, true))), -arg_2.b.a), max(_wgslsmith_mod_vec2_i32(select(vec2<i32>(-32070i, 14706i), vec2<i32>(arg_0.a.a.x, arg_2.b.a.x), true) & arg_0.a.a, func_3()), arg_0.a.a));
    var var_1 = func_4(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(260f)))), (vec3<i32>(-1i) * -select(vec3<i32>(3580i, var_0.x, arg_1.a.x), vec3<i32>(-1i, 2312i, var_0.x), vec3<bool>(true, true, true))) << (u_input.b.xxw % vec3<u32>(32u)), Struct_3(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-144f, arg_2.a.b.x))), -(~vec3<i32>(1i, 466i, -1i)), func_4(func_2().a.b.x, _wgslsmith_sub_vec3_i32(vec3<i32>(7343i, arg_0.a.a.x, arg_1.a.x), vec3<i32>(2147483647i, arg_1.a.x, 2147483647i)), Struct_3(Struct_1(vec2<i32>(-1i, arg_1.a.x), arg_3.zz, 676f)))).a));
    var var_2 = Struct_3(arg_0.a);
    let var_3 = func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -776f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.b.c * _wgslsmith_f_op_f32(trunc(arg_2.b.c))) * _wgslsmith_f_op_f32(exp2(arg_0.a.c)))), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(~54251i, _wgslsmith_mod_i32(-19668i, -73i), _wgslsmith_mod_i32(14781i, arg_2.a.a.x)), vec3<i32>(~arg_1.a.x, 1i, arg_0.a.a.x)), -2147483647i >> (abs(min(4294967295u, u_input.a.x)) % 32u), ~var_1.a.a.x), Struct_3(Struct_1(vec2<i32>(arg_0.a.a.x, arg_0.a.a.x), var_1.a.b, var_2.a.c))).a;
    let var_4 = select(select(!select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true)), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true), vec3<bool>(true, true, true)), !select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), any(select(vec2<bool>(true, true), vec2<bool>(true, true), true))), select(select(vec3<bool>(-1000f <= arg_3.x, true, 18770i <= arg_0.a.a.x), vec3<bool>(true, true, true), vec3<bool>(any(vec4<bool>(false, false, false, false)), all(vec3<bool>(false, true, false)), arg_3.x >= -390f)), !select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), true), !vec3<bool>(all(vec3<bool>(true, false, true)), true, all(vec2<bool>(false, false)))), true);
    return Struct_2(Struct_1(firstTrailingBit(vec2<i32>(abs(253i), arg_1.a.x)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1830f, var_3.b.x))), _wgslsmith_f_op_f32(-var_3.c)), arg_1);
}

fn func_6(arg_0: Struct_2, arg_1: u32, arg_2: vec3<bool>) -> Struct_3 {
    var var_0 = select(vec3<bool>(u_input.a.x <= _wgslsmith_dot_vec4_u32(u_input.b & u_input.b, ~u_input.a), _wgslsmith_clamp_u32(arg_1, _wgslsmith_mod_u32(arg_1, arg_1), ~1u) != _wgslsmith_clamp_u32(0u, 4294967295u, abs(0u)), -(~arg_0.b.a.x) < -firstLeadingBit(-50177i)), !(!vec3<bool>(all(arg_2.xx), arg_2.x, true)), select(!arg_2.x, arg_2.x, arg_2.x));
    let var_1 = !select(any(!(!vec2<bool>(arg_2.x, var_0.x))), all(arg_2.xz), var_0.x);
    var_0 = !(!vec3<bool>(false, !arg_2.x, var_1));
    let var_2 = arg_0.a;
    var var_3 = func_5(func_4(_wgslsmith_f_op_f32(arg_0.b.c * arg_0.b.b.x), vec3<i32>(arg_0.b.a.x | select(2147483647i, -37962i, var_0.x), 0i, -2147483647i), Struct_3(func_4(_wgslsmith_f_op_f32(sign(-392f)), vec3<i32>(var_2.a.x, arg_0.b.a.x, 0i), func_2()).a)), func_2().a, func_5(Struct_3(Struct_1(-var_2.a, func_2().a.b, func_4(619f, vec3<i32>(-49352i, 21586i, arg_0.a.a.x), Struct_3(Struct_1(arg_0.b.a, vec2<f32>(arg_0.b.c, 168f), arg_0.b.c))).a.b.x)), arg_0.b, func_5(func_4(var_2.b.x, vec3<i32>(-30611i, -34179i, 2147483647i), func_4(arg_0.b.b.x, vec3<i32>(arg_0.b.a.x, arg_0.b.a.x, arg_0.b.a.x), Struct_3(Struct_1(vec2<i32>(-1i, -27852i), var_2.b, arg_0.b.b.x)))), Struct_1(select(var_2.a, vec2<i32>(var_2.a.x, var_2.a.x), var_0.xy), _wgslsmith_f_op_vec2_f32(trunc(var_2.b)), 1476f), func_5(Struct_3(var_2), var_2, func_5(Struct_3(Struct_1(var_2.a, vec2<f32>(-1689f, 808f), -1614f)), Struct_1(vec2<i32>(2147483647i, -2147483647i), var_2.b, arg_0.a.b.x), arg_0, vec4<f32>(1854f, -558f, 260f, arg_0.b.b.x)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_2.b.x, arg_0.b.c, 1155f, 1230f)))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0.a.c, -189f, 1000f, 387f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-760f, 1024f, arg_0.a.c, 1152f), vec4<f32>(arg_0.a.c, arg_0.a.b.x, 1541f, var_2.c))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0.a.c, arg_0.a.c, arg_0.b.b.x, var_2.b.x), vec4<f32>(-1444f, 1287f, arg_0.b.b.x, 333f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.c, 1444f, var_2.c, arg_0.b.b.x) - vec4<f32>(1363f, -2204f, -2616f, -2528f)) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1250f, -594f, var_2.b.x, 730f)))))));
    return func_2();
}

fn func_1(arg_0: u32, arg_1: vec2<i32>) -> Struct_1 {
    var var_0 = func_6(func_5(func_4(_wgslsmith_f_op_f32(f32(-1f) * -1782f), _wgslsmith_sub_vec3_i32(vec3<i32>(arg_1.x, arg_1.x, arg_1.x), vec3<i32>(-2147483647i, -32181i, 18000i)) ^ _wgslsmith_mult_vec3_i32(vec3<i32>(arg_1.x, -73359i, arg_1.x), vec3<i32>(arg_1.x, arg_1.x, arg_1.x)), func_2()), func_2().a, Struct_2(Struct_1(arg_1, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1848f, -568f)), _wgslsmith_f_op_f32(-147f + 1000f)), Struct_1(~arg_1, vec2<f32>(1267f, 134f), _wgslsmith_f_op_f32(-473f - 217f))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(floor(856f)), _wgslsmith_div_f32(-1350f, -1137f), -644f, -744f), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2458f, -221f, 400f, -2082f)))), !all(vec2<bool>(false, false))))), u_input.a.x, vec3<bool>(true, true, true));
    return func_5(Struct_3(var_0.a), Struct_1(select(arg_1, -var_0.a.a, (u_input.b.x << (21801u % 32u)) >= _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 100051u, u_input.a.x), vec3<u32>(arg_0, arg_0, 4294967295u))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-389f, var_0.a.b.x) * var_0.a.b), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.a.c)))), Struct_2(var_0.a, Struct_1(~(~arg_1), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.a.b.x, var_0.a.c), vec2<f32>(var_0.a.b.x, var_0.a.c)), vec2<f32>(1480f, -276f))), var_0.a.c)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.a.c, -487f, var_0.a.c, var_0.a.b.x)))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_0.a.b.x - var_0.a.b.x), _wgslsmith_div_f32(var_0.a.c, -326f), -1188f, 1515f)))).b;
}

fn func_7(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: bool, arg_3: vec4<i32>) -> f32 {
    var var_0 = func_5(Struct_3(arg_1), Struct_1(vec2<i32>(49421i, 1870i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-func_5(Struct_3(Struct_1(vec2<i32>(0i, -8554i), vec2<f32>(-750f, arg_1.b.x), -645f)), Struct_1(arg_1.a, vec2<f32>(-111f, arg_1.c), -268f), Struct_2(arg_1, Struct_1(arg_1.a, vec2<f32>(737f, 1167f), arg_1.c)), vec4<f32>(arg_1.b.x, -654f, -1363f, arg_1.b.x)).a.b)), arg_1.b.x), Struct_2(func_6(Struct_2(func_4(-1000f, vec3<i32>(arg_3.x, arg_3.x, 1i), Struct_3(Struct_1(arg_1.a, vec2<f32>(-2119f, arg_1.b.x), -1976f))).a, func_5(Struct_3(arg_1), arg_1, Struct_2(arg_1, Struct_1(vec2<i32>(arg_1.a.x, 2147483647i), vec2<f32>(arg_1.b.x, -176f), arg_1.c)), vec4<f32>(arg_1.b.x, 522f, 1523f, 509f)).b), 1u << (~u_input.b.x % 32u), !vec3<bool>(false, false, arg_2)).a, arg_1), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b.x, arg_1.b.x, -593f, arg_1.c)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.c, arg_1.c, arg_1.b.x, -256f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_1.c, 151f, arg_1.c, arg_1.c))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-683f, arg_1.c, arg_1.c, arg_1.b.x))), _wgslsmith_f_op_f32(252f + arg_1.c) >= _wgslsmith_div_f32(-670f, 1000f))) * vec4<f32>(_wgslsmith_f_op_f32(select(arg_1.c, _wgslsmith_f_op_f32(1680f - -1231f), all(vec4<bool>(arg_0.x, arg_2, true, arg_2)))), arg_1.b.x, _wgslsmith_f_op_f32(116f - _wgslsmith_f_op_f32(max(1232f, arg_1.c))), 853f))).a.a;
    var_0 = vec2<i32>(-arg_1.a.x, 1i);
    var var_1 = _wgslsmith_f_op_f32(-arg_1.c);
    let var_2 = vec2<u32>(u_input.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(min(max(u_input.a.x, u_input.a.x), ~11344u), ~u_input.a.x, u_input.a.x, 42172u), _wgslsmith_mult_vec4_u32(select(reverseBits(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.a.x)), ~vec4<u32>(u_input.a.x, 1u, 49178u, 37161u), false), u_input.a)));
    let var_3 = func_2();
    return _wgslsmith_f_op_f32(abs(-448f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(firstLeadingBit(~vec2<i32>(abs(2147483647i), max(-22507i, 4867i))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1102f, 1526f), _wgslsmith_f_op_f32(-473f + -502f))), _wgslsmith_f_op_f32(f32(-1f) * -1049f)), vec2<f32>(-379f, -1349f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(444f, 976f)))))));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(647f - var_0.c) + _wgslsmith_f_op_f32(max(522f, 212f))))), _wgslsmith_f_op_f32(func_7(vec3<bool>(true, true, true), func_1(29710u, var_0.a), var_0.b.x > _wgslsmith_f_op_f32(-1758f * -1816f), ~vec4<i32>(-1i, 1i, var_0.a.x, -2147483647i) ^ vec4<i32>(18067i, var_0.a.x, 32959i, -2147483647i))))), _wgslsmith_f_op_f32(-var_0.c));
    let var_2 = abs(firstTrailingBit(67066u));
    var var_3 = true;
    var_3 = -4194i <= var_0.a.x;
    let var_4 = var_1.x;
    var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(~firstLeadingBit(~u_input.a.x) << (~u_input.a.x % 32u), vec4<i32>(-22021i, func_6(func_5(func_2(), Struct_1(vec2<i32>(var_0.a.x, var_0.a.x), var_1, var_0.c), Struct_2(var_0, var_0), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_4, var_0.c, var_4, var_0.b.x) - vec4<f32>(-633f, var_1.x, var_0.b.x, 1471f))), var_2, select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), true), vec3<bool>(true, false, true))).a.a.x, -firstTrailingBit(i32(-1i) * -21506i), func_1(~u_input.b.x & u_input.b.x, _wgslsmith_mult_vec2_i32(var_0.a, -var_0.a)).a.x), 2147483647i, ~_wgslsmith_mod_vec4_u32(~min(u_input.a, vec4<u32>(var_2, var_2, 0u, var_2)), _wgslsmith_add_vec4_u32(~u_input.a, vec4<u32>(1u, 2926u, 0u, 71933u))));
}

