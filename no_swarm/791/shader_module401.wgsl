struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: bool,
    c: u32,
    d: i32,
    e: vec4<f32>,
}

struct Struct_3 {
    a: i32,
    b: vec2<i32>,
    c: Struct_1,
    d: vec2<f32>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: Struct_2) -> vec2<f32> {
    let var_0 = !((61735i > countOneBits(global0.b)) | true) && !(arg_2.b || false);
    var var_1 = Struct_2(abs(vec4<i32>(arg_1 << (1u % 32u), -2147483647i, 6484i, arg_0)), !all(select(vec2<bool>(true, false), vec2<bool>(var_0, true), true)) | any(vec4<bool>(u_input.a.x == u_input.a.x, select(var_0, true, var_0), true, true)), countOneBits(50679u), ~min(arg_1, u_input.a.x), _wgslsmith_f_op_vec4_f32(floor(arg_2.e)));
    var var_2 = Struct_3(abs(-arg_1), ~firstLeadingBit(vec2<i32>(30655i, -9071i) ^ vec2<i32>(arg_1, 11067i)), Struct_1(global0.a, -2147483647i, global0.c), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-150f, var_1.e.x), _wgslsmith_f_op_f32(-1296f + 903f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(arg_2.e.zw, vec2<f32>(global0.a.x, global0.a.x))))), arg_2.e.wy), -_wgslsmith_sub_vec4_i32(arg_2.a, firstTrailingBit(vec4<i32>(arg_0, 25633i, arg_1, u_input.a.x))));
    let var_3 = true | arg_2.b;
    var var_4 = Struct_3(abs(-33867i), ~var_2.e.ww, var_2.c, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-820f, arg_2.e.x), _wgslsmith_f_op_f32(floor(var_1.e.x)))))), ~(-countOneBits(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, -4509i, u_input.a.x, 11039i), u_input.a))));
    return var_2.d;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1) -> f32 {
    let var_0 = Struct_3(arg_0.d, ~u_input.a.xx, arg_1, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(func_3(u_input.a.x, u_input.a.x, arg_0)), global0.a)), vec4<i32>(~reverseBits(arg_1.b), -(~arg_1.b ^ -1i), firstLeadingBit(-1i), global0.b));
    global0 = var_0.c;
    let var_1 = arg_1.a.x;
    global0 = var_0.c;
    global0 = arg_1;
    return -978f;
}

fn func_4(arg_0: vec2<bool>, arg_1: f32, arg_2: Struct_3) -> Struct_1 {
    let var_0 = Struct_2(-select(max(vec4<i32>(42239i, -80946i, 10809i, u_input.a.x), vec4<i32>(7535i, -2147483647i, arg_2.c.b, u_input.a.x)), vec4<i32>(29041i, -2147483647i, -31706i, u_input.a.x), select(vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(false, arg_0.x, true, arg_0.x))) ^ -_wgslsmith_add_vec4_i32(vec4<i32>(global0.b, 1616i, global0.b, -57576i), vec4<i32>(global0.b, 14115i, u_input.a.x, -2147483647i)), all(arg_0), _wgslsmith_mod_u32(select(arg_2.c.c, min(global0.c, _wgslsmith_dot_vec2_u32(vec2<u32>(113072u, 4294967295u), vec2<u32>(arg_2.c.c, 47993u))), true), ~global0.c), reverseBits(firstTrailingBit(-2147483647i)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-259f)), arg_2.d.x), 306f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1092f - global0.a.x))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1694f, 1031f, arg_1, arg_2.c.a.x)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1079f, 1509f, -798f, arg_1), vec4<f32>(-748f, arg_2.c.a.x, global0.a.x, 1238f), true))))));
    global0 = arg_2.c;
    global0 = arg_2.c;
    let var_1 = _wgslsmith_f_op_vec4_f32(min(var_0.e, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(var_0.e * _wgslsmith_f_op_vec4_f32(var_0.e - vec4<f32>(-1000f, -248f, 109f, -2012f)))))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-792f * -168f));
    return Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1587f * -405f), arg_2.d.x) - _wgslsmith_f_op_vec2_f32(round(var_0.e.wx))), 1157i << (~_wgslsmith_clamp_u32(~global0.c, 0u, var_0.c) % 32u), ~var_0.c);
}

fn func_5(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: vec4<i32>) -> Struct_2 {
    let var_0 = -47482i;
    var var_1 = !(!select(vec2<bool>(true, true), vec2<bool>(true, true), select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(false, false), false)));
    global0 = func_4(!vec2<bool>(false, var_1.x), 501f, Struct_3(global0.b, ~select(reverseBits(arg_1.yz), vec2<i32>(arg_1.x, global0.b), var_1.x), func_4(vec2<bool>(true, true), global0.a.x, Struct_3(i32(-1i) * -15263i, arg_1.zw << (vec2<u32>(arg_0.c, arg_0.c) % vec2<u32>(32u)), arg_0, vec2<f32>(2059f, global0.a.x), vec4<i32>(2147483647i, global0.b, arg_1.x, u_input.a.x))), _wgslsmith_f_op_vec2_f32(arg_0.a * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.x, -1000f))), _wgslsmith_sub_vec4_i32(-(arg_2 ^ arg_1), countOneBits(vec4<i32>(-2147483647i, global0.b, -58921i, var_0)) ^ arg_1)));
    global0 = arg_0;
    let var_2 = _wgslsmith_clamp_vec2_u32(vec2<u32>(50152u, countOneBits(global0.c)), firstTrailingBit(reverseBits(reverseBits(vec2<u32>(1u, global0.c)))), ~(~vec2<u32>(4294967295u, 1u)) >> (min(vec2<u32>(1u, 0u) >> (vec2<u32>(0u, global0.c) % vec2<u32>(32u)), ~vec2<u32>(41453u, arg_0.c)) % vec2<u32>(32u))) >> (reverseBits(~vec2<u32>(_wgslsmith_mod_u32(global0.c, arg_0.c), 4294967295u)) % vec2<u32>(32u));
    return Struct_2(~u_input.a, all(select(select(vec4<bool>(var_1.x, false, false, var_1.x), select(vec4<bool>(true, var_1.x, var_1.x, false), vec4<bool>(false, false, var_1.x, true), vec4<bool>(var_1.x, var_1.x, false, var_1.x)), -77845i != var_0), select(vec4<bool>(var_1.x, var_1.x, false, var_1.x), select(vec4<bool>(var_1.x, var_1.x, false, false), vec4<bool>(var_1.x, var_1.x, var_1.x, false), true), !var_1.x), select(!vec4<bool>(false, true, var_1.x, var_1.x), !vec4<bool>(var_1.x, var_1.x, true, false), true))), 48762u, -2147483647i, vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.a.x, global0.a.x) + global0.a.x), _wgslsmith_f_op_f32(global0.a.x * arg_0.a.x), var_1.x)), _wgslsmith_f_op_f32(f32(-1f) * -522f), _wgslsmith_f_op_f32(284f + _wgslsmith_f_op_f32(-1000f * 199f)), _wgslsmith_f_op_f32(-global0.a.x)));
}

fn func_1(arg_0: vec4<i32>, arg_1: f32, arg_2: f32, arg_3: vec3<i32>) -> u32 {
    var var_0 = ~32252u;
    let var_1 = vec3<i32>(-50610i, 21202i, 5803i);
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(global0.a, global0.a))))), select(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, arg_0.x), (vec2<i32>(0i, -40720i) ^ vec2<i32>(var_1.x, arg_3.x)) << (vec2<u32>(1u, 0u) % vec2<u32>(32u))), -461i & (u_input.a.x >> (_wgslsmith_clamp_u32(global0.c, 113944u, 0u) % 32u)), true), 4294967295u);
    let var_2 = func_5(func_4(vec2<bool>(true, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_1, 643f)) - _wgslsmith_f_op_f32(func_2(Struct_2(vec4<i32>(2129i, 42768i, 14970i, 35350i), false, 20627u, -32288i, vec4<f32>(-573f, global0.a.x, arg_1, -688f)), Struct_1(global0.a, var_1.x, global0.c)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_2)))), Struct_3(var_1.x, arg_3.zy, Struct_1(_wgslsmith_f_op_vec2_f32(global0.a - vec2<f32>(121f, 421f)), firstLeadingBit(-12221i), 0u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.a) + _wgslsmith_f_op_vec2_f32(-global0.a)), select(abs(arg_0), arg_0, true))), vec4<i32>(_wgslsmith_add_i32(global0.b, firstTrailingBit(-u_input.a.x)), select(13322i, max(_wgslsmith_dot_vec2_i32(u_input.a.xx, vec2<i32>(var_1.x, -45430i)), arg_0.x ^ 2147483647i), all(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true)))), -2147483647i, select(max(~arg_0.x, -50800i), -1i, false)), vec4<i32>(-countOneBits(0i << (global0.c % 32u)), u_input.a.x, 0i, 25041i | u_input.a.x));
    var var_3 = vec2<bool>(var_2.b, var_2.b | var_2.b);
    return 17250u;
}

fn func_6(arg_0: u32) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -957f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global0.a.x, -463f)), _wgslsmith_f_op_f32(abs(-838f))), global0.a.x) * vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global0.a.x - -532f))), _wgslsmith_div_f32(_wgslsmith_f_op_vec2_f32(func_3(u_input.a.x, u_input.a.x, Struct_2(u_input.a, true, global0.c, 0i, vec4<f32>(global0.a.x, 211f, global0.a.x, -1460f)))).x, 1674f), -213f)) - _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -528f), 1f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(global0.a.x)), global0.a.x))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global0.a.x, 1802f, global0.a.x))) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-900f, 434f, 2030f))))))));
    global0 = func_4(!(!vec2<bool>(true, any(vec3<bool>(true, true, true)))), _wgslsmith_f_op_f32(global0.a.x * global0.a.x), Struct_3(u_input.a.x, -abs(min(vec2<i32>(u_input.a.x, u_input.a.x), u_input.a.xx)), Struct_1(global0.a, _wgslsmith_dot_vec2_i32(u_input.a.xx & vec2<i32>(-1i, global0.b), ~u_input.a.wx), ~_wgslsmith_div_u32(10772u, arg_0)), _wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, _wgslsmith_f_op_f32(max(var_0.x, global0.a.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.a - var_0.xy))), -u_input.a));
    let var_1 = global0.c;
    let var_2 = arg_0;
    global0 = func_4(!select(select(select(vec2<bool>(false, true), vec2<bool>(true, true), false), vec2<bool>(true, true), global0.c > arg_0), vec2<bool>(true, true), true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -506f))) + _wgslsmith_f_op_f32(round(713f))), Struct_3(23754i ^ ~(u_input.a.x | u_input.a.x), u_input.a.zy, func_4(!select(vec2<bool>(false, false), vec2<bool>(false, false), true), -1288f, Struct_3(2147483647i, min(vec2<i32>(u_input.a.x, 7752i), vec2<i32>(50844i, u_input.a.x)), func_4(vec2<bool>(true, false), var_0.x, Struct_3(u_input.a.x, vec2<i32>(-1i, -26507i), Struct_1(var_0.yx, 1i, var_2), var_0.yy, vec4<i32>(global0.b, -1i, global0.b, u_input.a.x))), vec2<f32>(global0.a.x, -1941f), u_input.a)), vec2<f32>(-1196f, _wgslsmith_f_op_f32(-1776f + global0.a.x)), u_input.a));
    return Struct_3(global0.b, vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(u_input.a.x, u_input.a.x)), u_input.a.ww), _wgslsmith_mod_i32(-global0.b, global0.b)), 6741i), Struct_1(var_0.zy, u_input.a.x, global0.c << (~8652u % 32u)), _wgslsmith_f_op_vec2_f32(-global0.a), max(_wgslsmith_clamp_vec4_i32(~_wgslsmith_div_vec4_i32(vec4<i32>(1i, global0.b, -2147483647i, u_input.a.x), vec4<i32>(36765i, global0.b, global0.b, 17663i)), ~(-vec4<i32>(-27509i, global0.b, -34855i, global0.b)), -u_input.a >> (~vec4<u32>(arg_0, global0.c, arg_0, global0.c) % vec4<u32>(32u))), firstTrailingBit(_wgslsmith_add_vec4_i32(u_input.a, u_input.a) & vec4<i32>(0i, global0.b, global0.b, 3456i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(_wgslsmith_mult_u32(func_1(vec4<i32>(-34131i, ~(-2147483647i), select(21642i, u_input.a.x, false), global0.b), global0.a.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0.a.x))), vec3<i32>(_wgslsmith_dot_vec3_i32(u_input.a.wzz, vec3<i32>(0i, -44014i, global0.b)), _wgslsmith_clamp_i32(u_input.a.x, global0.b, u_input.a.x), u_input.a.x)), global0.c));
    let var_1 = vec3<bool>(true, (_wgslsmith_f_op_f32(func_2(func_5(var_0.c, u_input.a, vec4<i32>(23694i, 2147483647i, 0i, -1i)), var_0.c)) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.d.x - var_0.c.a.x) - _wgslsmith_f_op_f32(ceil(global0.a.x)))) & true, false);
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.x, 366f, 1534f, -449f) - vec4<f32>(-597f, 1459f, -1140f, var_0.d.x))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d.x, var_0.c.a.x, -380f, -1910f))))));
    var_0 = func_6(countOneBits(min(var_0.c.c, 4294967295u)));
    let var_3 = Struct_3(13556i, _wgslsmith_sub_vec2_i32(-min(var_0.e.yw, u_input.a.zx) | vec2<i32>(global0.b, global0.b), vec2<i32>(~global0.b, u_input.a.x)), func_6(68845u >> (((47773u | var_0.c.c) ^ 4294967295u) % 32u)).c, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.c.a) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c.a.x, var_2.x) * global0.a)))), vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_2.x - 1503f), var_2.x)), _wgslsmith_f_op_vec2_f32(func_3(36722i, 21644i | u_input.a.x, func_5(var_0.c, vec4<i32>(global0.b, -23401i, u_input.a.x, 43708i), var_0.e))).x))), ~abs(abs(vec4<i32>(-27898i, global0.b, -1i, -1i))));
    var var_4 = -323f;
    var_0 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, min((select(vec4<u32>(77060u, var_0.c.c, var_3.c.c, var_0.c.c), vec4<u32>(0u, 1u, 67342u, 78526u), true) & vec4<u32>(global0.c, global0.c, 0u, var_3.c.c)) & ~vec4<u32>(16660u, 4294967295u, 1u, var_0.c.c), min(vec4<u32>(~0u, func_6(45639u).c.c, _wgslsmith_mod_u32(global0.c, 1u), ~global0.c), ~(~vec4<u32>(1u, var_0.c.c, var_3.c.c, global0.c)))));
}

