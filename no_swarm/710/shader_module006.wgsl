struct Struct_1 {
    a: u32,
    b: u32,
    c: i32,
    d: vec4<f32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
    c: bool,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec2<bool>,
    c: u32,
    d: Struct_3,
}

struct Struct_5 {
    a: vec4<i32>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, true, true, true);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec3<f32>, arg_2: bool, arg_3: Struct_5) -> vec4<bool> {
    var var_0 = -1000f;
    let var_1 = Struct_5(vec4<i32>(min(u_input.c << (53012u % 32u), -u_input.a), u_input.a, arg_3.a.x, ~(arg_3.a.x & -2147483647i)) ^ -vec4<i32>(-32983i, i32(-1i) * -1i, arg_3.a.x, -u_input.a), -1167f);
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-arg_1))) * arg_1);
    global0 = vec4<bool>(~(~u_input.c) > -2147483647i, true, false, any(vec3<bool>(true, any(vec2<bool>(false, false)), true)));
    global0 = !vec4<bool>(true, all(vec4<bool>(true, true, !global0.x, true | arg_2)), any(select(vec4<bool>(arg_2, global0.x, false, arg_2), vec4<bool>(true, global0.x, true, global0.x), select(vec4<bool>(false, true, arg_2, global0.x), vec4<bool>(arg_2, global0.x, false, arg_2), arg_2))), _wgslsmith_mod_u32(0u, 53171u ^ u_input.b.x) >= u_input.b.x);
    return !(!vec4<bool>(global0.x, any(global0.wy), arg_2, -var_1.a.x < var_1.a.x));
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: u32, arg_3: Struct_3) -> Struct_2 {
    let var_0 = Struct_5(arg_3.b, 645f);
    var var_1 = !select(select(!global0.xyw, !global0.wzx, arg_3.a.e), global0.xww, global0.x);
    var_1 = vec3<bool>(true, false, any(func_3(firstTrailingBit(max(vec2<u32>(65937u, u_input.b.x), u_input.b.xx)), arg_3.a.d.yyx, global0.x, Struct_5(vec4<i32>(18706i, var_0.a.x, arg_0, arg_0), -1180f))));
    let var_2 = _wgslsmith_dot_vec2_u32(~abs(countOneBits(vec2<u32>(u_input.b.x, arg_1))), max(_wgslsmith_clamp_vec2_u32(vec2<u32>(20422u, 85u), countOneBits(vec2<u32>(32676u, u_input.b.x)), u_input.b.zy), u_input.b.zz));
    var_1 = global0.xyy;
    return Struct_2(Struct_1(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(23031u, 57349u, 22243u), select(vec3<u32>(4294967295u, 52673u, arg_2), u_input.b, var_1.x), ~u_input.b), ~u_input.b), u_input.b.x ^ arg_3.a.b, _wgslsmith_clamp_i32(~arg_0, -84595i | ~var_0.a.x, u_input.a), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b, var_0.b, 499f, var_0.b))), _wgslsmith_f_op_vec4_f32(-arg_3.a.d))), arg_3.a.e), Struct_1(~4294967295u, max(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.b, vec3<u32>(var_2, 1u, 1u)), vec3<u32>(0u, 4294967295u, 251u)), 65795u), 15071i, _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, _wgslsmith_f_op_f32(-343f + arg_3.a.d.x), 1523f, 208f) - arg_3.a.d), all(!select(vec4<bool>(true, var_1.x, var_1.x, false), vec4<bool>(global0.x, arg_3.a.e, var_1.x, true), true))), arg_3.a, arg_3.a);
}

fn func_4(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: Struct_4, arg_3: vec4<f32>) -> Struct_5 {
    var var_0 = func_2(1i >> ((_wgslsmith_div_u32(arg_2.c >> (arg_0.a.b % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.a.b, 107705u, 1u), vec3<u32>(arg_2.d.a.b, arg_0.d.a, 5570u))) >> (~_wgslsmith_mult_u32(arg_0.b.b, 1u) % 32u)) % 32u), max(~(~0u), arg_0.d.b), arg_0.c.b, Struct_3(arg_2.d.a, vec4<i32>(arg_2.d.a.c, u_input.a, -arg_1.x, firstLeadingBit(arg_0.c.c) ^ 2147483647i), arg_0.c.e)).b;
    var var_1 = arg_0;
    let var_2 = arg_3.x <= arg_2.d.a.d.x;
    let var_3 = arg_0.c.e || any(global0.wxz);
    let var_4 = -974f;
    return Struct_5(vec4<i32>(var_1.b.c, _wgslsmith_add_i32(i32(-1i) * -arg_1.x, u_input.c), arg_1.x, _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.x, arg_1.x), max(vec2<i32>(0i, 0i), vec2<i32>(-49457i, u_input.a))), -1i)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-296f)))));
}

fn func_1() -> f32 {
    var var_0 = func_4(func_2(firstLeadingBit(_wgslsmith_sub_i32(_wgslsmith_sub_i32(u_input.c, -2147483647i), _wgslsmith_mult_i32(-8984i, -28949i))), 20174u, u_input.b.x, Struct_3(Struct_1(6025u, 42071u, u_input.c, _wgslsmith_div_vec4_f32(vec4<f32>(-1577f, 595f, -1801f, -1000f), vec4<f32>(-569f, -731f, 1218f, 1895f)), true), countOneBits(vec4<i32>(59525i, 62714i, 1i, u_input.a)) << (select(vec4<u32>(u_input.b.x, 10438u, 95813u, u_input.b.x), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 9247u), vec4<bool>(global0.x, false, global0.x, true)) % vec4<u32>(32u)), global0.x)), vec4<i32>(_wgslsmith_div_i32(2147483647i, _wgslsmith_sub_i32(func_2(u_input.c, u_input.b.x, 0u, Struct_3(Struct_1(u_input.b.x, 74210u, u_input.a, vec4<f32>(-1000f, -562f, -1066f, 673f), true), vec4<i32>(-37643i, u_input.a, 36564i, u_input.c), global0.x)).a.c, -10285i)), -u_input.c, abs(_wgslsmith_dot_vec4_i32(-vec4<i32>(2147483647i, 2147483647i, 3516i, u_input.c), ~vec4<i32>(u_input.a, u_input.c, u_input.c, 2147483647i))), u_input.c), Struct_4(vec3<bool>(!(u_input.c <= u_input.a), min(-26018i, u_input.c) >= -7321i, all(vec4<bool>(false, false, global0.x, true))), !vec2<bool>(any(vec4<bool>(true, global0.x, true, global0.x)), global0.x == true), ~(~1u), Struct_3(Struct_1(1u, u_input.b.x, 1i, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1442f, -572f, -256f, 661f)), false), firstTrailingBit(vec4<i32>(u_input.c, u_input.a, u_input.a, u_input.c) | vec4<i32>(-2147483647i, -1i, 0i, 0i)), false | all(vec4<bool>(global0.x, false, global0.x, true)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2(-1i << (u_input.b.x % 32u), _wgslsmith_mod_u32(7131u, u_input.b.x), abs(u_input.b.x), Struct_3(Struct_1(u_input.b.x, u_input.b.x, -1i, vec4<f32>(-1000f, 473f, -1045f, -1059f), true), vec4<i32>(u_input.a, u_input.a, u_input.c, u_input.a), global0.x)).c.d - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1246f, 1000f, -990f, 1343f)))) * vec4<f32>(1f, 1f, 1f, 1f)));
    let var_1 = vec4<u32>(_wgslsmith_dot_vec4_u32(abs(reverseBits(vec4<u32>(u_input.b.x, 0u, u_input.b.x, u_input.b.x) & vec4<u32>(u_input.b.x, 32641u, u_input.b.x, u_input.b.x))), ~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, 1u) & vec4<u32>(u_input.b.x, 34451u, 4294967295u, 43477u), vec4<u32>(u_input.b.x, u_input.b.x, 18534u, 1857u) | vec4<u32>(u_input.b.x, 0u, 4294967295u, 1u))), u_input.b.x, _wgslsmith_div_u32(u_input.b.x, firstLeadingBit(_wgslsmith_clamp_u32(reverseBits(28646u), u_input.b.x, select(u_input.b.x, 6836u, true)))), u_input.b.x);
    global0 = func_3(~countOneBits(vec2<u32>(var_1.x, var_1.x) ^ firstLeadingBit(var_1.xw)), vec3<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(459f - var_0.b))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(770f, var_0.b, global0.x))))))), true, func_4(func_2(min(i32(-1i) * -18764i, ~(-22816i)), ~u_input.b.x | ~80137u, _wgslsmith_clamp_u32(20263u, ~0u, ~0u), Struct_3(Struct_1(var_1.x, 47354u, var_0.a.x, vec4<f32>(var_0.b, var_0.b, 132f, var_0.b), true), select(var_0.a, var_0.a, true), any(global0.wy))), vec4<i32>(abs(1i), var_0.a.x ^ u_input.c, u_input.c, 13632i) ^ vec4<i32>(-2147483647i, _wgslsmith_mod_i32(var_0.a.x, var_0.a.x), func_2(var_0.a.x, 4294967295u, 0u, Struct_3(Struct_1(u_input.b.x, 33455u, -2147483647i, vec4<f32>(var_0.b, var_0.b, 402f, 1250f), global0.x), vec4<i32>(25300i, var_0.a.x, u_input.c, -1i), false)).b.c, 2147483647i), Struct_4(global0.xyx, global0.zw, _wgslsmith_dot_vec4_u32(~var_1, var_1 | vec4<u32>(1u, var_1.x, u_input.b.x, 22648u)), Struct_3(Struct_1(0u, u_input.b.x, u_input.c, vec4<f32>(-1828f, 375f, var_0.b, -426f), global0.x), -vec4<i32>(var_0.a.x, var_0.a.x, -12854i, -7633i), false)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(var_0.b - 122f), var_0.b, _wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(f32(-1f) * -418f))))));
    var var_2 = 4294967295u;
    let var_3 = vec3<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(-28601i, u_input.c, -2147483647i, u_input.c), _wgslsmith_div_vec4_i32(abs(vec4<i32>(var_0.a.x, var_0.a.x, u_input.c, u_input.c)), vec4<i32>(2147483647i, 0i, 2147483647i, -75473i))) << (~1u % 32u), 12818i, 9759i);
    return var_0.b;
}

fn func_5(arg_0: bool, arg_1: vec4<bool>, arg_2: f32) -> StorageBuffer {
    var var_0 = Struct_4(!global0.xxz, global0.yy, _wgslsmith_mod_u32(~_wgslsmith_mult_u32(~4294967295u, _wgslsmith_mult_u32(19292u, 0u)), u_input.b.x), Struct_3(Struct_1(max(~u_input.b.x, 1u), func_2(u_input.c, abs(32234u), _wgslsmith_add_u32(u_input.b.x, 35747u), Struct_3(Struct_1(15647u, u_input.b.x, u_input.c, vec4<f32>(-625f, arg_2, -811f, arg_2), arg_0), vec4<i32>(-52882i, u_input.a, u_input.c, u_input.c), arg_0)).d.b, -1087i, _wgslsmith_f_op_vec4_f32(vec4<f32>(-189f, arg_2, -169f, 1000f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, 171f, -102f, -827f))), (true != arg_1.x) == !arg_1.x), reverseBits(-vec4<i32>(u_input.c, -1i, 1i, u_input.c)), global0.x | true));
    var_0 = Struct_4(select(var_0.a, !select(global0.yxz, select(arg_1.yzx, var_0.a, var_0.b.x), var_0.a), !func_3(~vec2<u32>(u_input.b.x, u_input.b.x), var_0.d.a.d.xww, 469f <= arg_2, Struct_5(var_0.d.b, 523f)).yxz), !var_0.b, countOneBits(~4294967295u), var_0.d);
    let var_1 = var_0.d;
    let var_2 = func_2(16799i, var_1.a.b, _wgslsmith_clamp_u32(~(~u_input.b.x), _wgslsmith_add_u32(u_input.b.x, ~12709u), abs(var_1.a.b)) >> (32975u % 32u), Struct_3(func_2(~(~39359i), u_input.b.x, 11440u, var_0.d).a, -(~(~vec4<i32>(u_input.c, -19266i, 1i, -2147483647i))), all(select(global0.xz, select(vec2<bool>(false, true), global0.xz, global0.x), var_0.a.x))));
    let var_3 = Struct_5(max(firstLeadingBit(_wgslsmith_add_vec4_i32(vec4<i32>(var_1.a.c, 15517i, var_0.d.b.x, -1i), vec4<i32>(var_0.d.b.x, u_input.a, -2147483647i, var_2.a.c))), -_wgslsmith_clamp_vec4_i32(var_1.b, vec4<i32>(-1i, var_1.a.c, var_1.a.c, 11843i), var_0.d.b)) | var_0.d.b, var_1.a.d.x);
    return StorageBuffer(_wgslsmith_f_op_f32(-arg_2), -var_3.a | (firstTrailingBit(select(var_1.b, vec4<i32>(-2147483647i, -30994i, 1i, u_input.a), arg_1)) & -max(vec4<i32>(u_input.c, 0i, var_2.a.c, u_input.c), var_0.d.b)), -765f, i32(-1i) * -_wgslsmith_sub_i32(-26381i ^ var_0.d.a.c, _wgslsmith_add_i32(-26419i, 16972i)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(global0.x, vec4<bool>(!any(select(vec4<bool>(global0.x, true, false, true), vec4<bool>(global0.x, global0.x, global0.x, global0.x), false)), !global0.x, !(_wgslsmith_add_u32(u_input.b.x, u_input.b.x) > firstTrailingBit(u_input.b.x)), all(!select(vec4<bool>(true, true, true, global0.x), vec4<bool>(global0.x, global0.x, false, true), vec4<bool>(global0.x, true, global0.x, false)))), _wgslsmith_f_op_f32(step(-439f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())))));
}

