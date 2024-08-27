struct Struct_1 {
    a: vec4<f32>,
    b: vec2<bool>,
    c: u32,
    d: bool,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: u32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_2,
    d: vec4<u32>,
    e: vec3<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
    c: i32,
    d: vec4<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec3<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<f32>(1000f, 3257f, -817f, 1479f), vec2<bool>(true, true), 54141u, true, vec3<bool>(true, true, false));

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
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

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_3) -> u32 {
    global0 = arg_0.e;
    var var_0 = global0.b.x;
    var var_1 = arg_0.e;
    global0 = Struct_1(global0.a, vec2<bool>(any(select(arg_1.c.b, vec2<bool>(true, false), true)), !all(select(vec3<bool>(false, false, true), global0.e, arg_1.b.b.x))), ~4294967295u, true, select(select(!vec3<bool>(global0.d, global0.e.x, var_1.e.x), arg_0.e.e, select(!var_1.e, vec3<bool>(arg_0.b, global0.d, var_1.b.x), global0.e)), global0.e, !arg_1.b.e));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.a.yww - var_1.a.zyx)), vec3<f32>(_wgslsmith_f_op_f32(980f * var_1.a.x), _wgslsmith_f_op_f32(abs(global0.a.x)), arg_1.c.a.a.x))), global0.a.xwx, true)));
    return _wgslsmith_div_u32(countOneBits(~1u), var_1.c);
}

fn func_2(arg_0: vec3<f32>, arg_1: vec2<u32>, arg_2: bool) -> vec2<u32> {
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.x, 2520f, arg_0.x, 621f) + vec4<f32>(arg_0.x, global0.a.x, -597f, 572f)) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(747f, arg_0.x, global0.a.x, arg_0.x)))), vec4<f32>(_wgslsmith_f_op_f32(round(189f)), _wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(min(global0.a.x, global0.a.x)), _wgslsmith_f_op_f32(-arg_0.x)))), global0.e.zz, global0.c, !(u_input.d < u_input.c.x), global0.e);
    let var_0 = _wgslsmith_f_op_f32(global0.a.x * arg_0.x);
    var var_1 = any(vec2<bool>(false | !arg_2, _wgslsmith_mod_i32(u_input.c.x, 125i) <= -1i));
    var var_2 = vec3<i32>(select(select(-10590i, -u_input.d, true), _wgslsmith_mult_i32(u_input.c.x, u_input.c.x) ^ u_input.c.x, func_3(Struct_4(Struct_2(Struct_1(vec4<f32>(-612f, var_0, -1105f, global0.a.x), vec2<bool>(false, false), u_input.a.x, false, global0.e), global0.b, 1u), true, u_input.c.x, vec4<f32>(arg_0.x, global0.a.x, var_0, global0.a.x), Struct_1(vec4<f32>(arg_0.x, global0.a.x, 184f, -685f), global0.b, 1u, true, vec3<bool>(false, true, false))), Struct_3(vec4<i32>(u_input.c.x, u_input.d, -15984i, 42698i), Struct_1(vec4<f32>(604f, arg_0.x, global0.a.x, 155f), global0.e.zx, u_input.b.x, global0.b.x, global0.e), Struct_2(Struct_1(global0.a, global0.e.zx, 24523u, false, global0.e), global0.b, 21692u), vec4<u32>(15544u, 1u, u_input.b.x, u_input.a.x), vec3<f32>(arg_0.x, 422f, arg_0.x))) < ~arg_1.x), 0i, _wgslsmith_clamp_i32(21861i, _wgslsmith_sub_i32(0i, u_input.c.x) ^ (u_input.c.x >> (4294967295u % 32u)), 58063i)) | vec3<i32>(22869i, u_input.c.x, abs(_wgslsmith_sub_i32(0i, u_input.c.x) & min(-2147483647i, 16581i)));
    var var_3 = vec3<f32>(-1347f, -956f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1f))));
    return ~(_wgslsmith_clamp_vec2_u32(u_input.a.zx, vec2<u32>(select(1495u, global0.c, global0.d), ~u_input.a.x), ~vec2<u32>(arg_1.x, 0u)) | arg_1);
}

fn func_1(arg_0: vec4<i32>) -> Struct_4 {
    let var_0 = _wgslsmith_mod_vec3_u32(u_input.a, vec3<u32>(u_input.b.x, ~(~global0.c), _wgslsmith_div_u32(1u, firstLeadingBit(abs(12488u)))));
    let var_1 = func_2(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(911f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.a.x))), -199f), global0.a.yww), _wgslsmith_mod_vec2_u32(vec2<u32>(var_0.x, 137864u), u_input.a.xy), all(vec2<bool>(true, global0.d)));
    global0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(abs(global0.a.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0.a.x)) - _wgslsmith_f_op_f32(-1315f * global0.a.x)))), global0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0.a.x)) - 975f))), !select(select(select(vec2<bool>(global0.b.x, false), global0.e.zx, vec2<bool>(global0.d, false)), vec2<bool>(global0.e.x, false), global0.e.xx), select(vec2<bool>(true, global0.b.x), select(global0.b, global0.e.zz, global0.d), global0.e.zy), vec2<bool>(select(true, false, false), !global0.d)), _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, 65523u, 23310u, _wgslsmith_add_u32(1u, abs(10137u))), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.x, global0.c, global0.c), var_0), 0u, abs(var_1.x), 3345u) << (reverseBits(vec4<u32>(global0.c, global0.c, var_0.x, 1u)) % vec4<u32>(32u))), all(select(vec4<bool>(true, true, global0.b.x, false), vec4<bool>(true, global0.d, true, global0.b.x), true || all(global0.e))), vec3<bool>(true && all(vec3<bool>(global0.e.x, global0.e.x, global0.d)), global0.d, any(global0.b)));
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(min(global0.a, _wgslsmith_f_op_vec4_f32(trunc(global0.a)))), !global0.b, 0u, false, !select(vec3<bool>(global0.d || false, !global0.e.x, true), global0.e, global0.d));
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(step(global0.a, vec4<f32>(_wgslsmith_f_op_f32(global0.a.x - _wgslsmith_f_op_f32(exp2(global0.a.x))), -816f, 420f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.x * global0.a.x))))), !global0.e.zx, u_input.a.x, any(global0.e) || !global0.b.x, select(vec3<bool>(all(!vec4<bool>(global0.e.x, global0.e.x, false, false)), true, false), vec3<bool>(all(vec4<bool>(true, false, global0.b.x, true)), global0.a.x == -903f, any(vec4<bool>(false, true, false, true)) | all(global0.e.xz)), global0.e));
    return Struct_4(Struct_2(Struct_1(_wgslsmith_div_vec4_f32(global0.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1096f, global0.a.x, 158f, -1859f))), global0.e.zx, _wgslsmith_div_u32(~u_input.b.x, var_0.x), select(global0.d, !global0.d, all(global0.b)), global0.e), select(!global0.b, global0.e.zz, global0.b.x), firstLeadingBit(~countOneBits(28196u))), global0.b.x, 43860i, _wgslsmith_f_op_vec4_f32(-global0.a), Struct_1(global0.a, global0.e.zz, max(abs(var_0.x), var_0.x) ^ u_input.b.x, any(!global0.b), select(!global0.e, global0.e, !global0.e.x)));
}

fn func_4(arg_0: f32, arg_1: Struct_4, arg_2: f32) -> Struct_3 {
    let var_0 = 4294967295u >> (u_input.a.x % 32u);
    global0 = arg_1.a.a;
    let var_1 = select(vec4<bool>(false | !select(arg_1.e.b.x, true, false), false, arg_1.e.e.x, func_1(vec4<i32>(59341i, u_input.d, u_input.d, 66169i)).e.c == _wgslsmith_div_u32(var_0 << (u_input.a.x % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(21431u, 59109u), u_input.a.yz))), vec4<bool>(select(all(select(vec4<bool>(false, arg_1.a.a.d, arg_1.b, false), vec4<bool>(arg_1.b, arg_1.e.b.x, false, true), vec4<bool>(true, arg_1.a.b.x, true, arg_1.e.e.x))), global0.d, global0.d), func_1(_wgslsmith_sub_vec4_i32(~vec4<i32>(u_input.c.x, u_input.d, u_input.d, 1i), ~vec4<i32>(arg_1.c, arg_1.c, arg_1.c, arg_1.c))).e.d, arg_1.b, global0.b.x), select(!select(select(vec4<bool>(false, arg_1.a.a.e.x, true, false), vec4<bool>(global0.b.x, true, false, true), vec4<bool>(arg_1.e.b.x, arg_1.b, global0.d, global0.d)), vec4<bool>(arg_1.b, arg_1.e.e.x, true, false), !vec4<bool>(arg_1.b, true, false, false)), select(!(!vec4<bool>(arg_1.a.a.d, arg_1.b, false, global0.d)), vec4<bool>(!global0.d, select(true, arg_1.b, global0.d), arg_1.c != 2147483647i, true), select(select(vec4<bool>(global0.d, arg_1.b, true, global0.e.x), vec4<bool>(false, arg_1.b, global0.e.x, arg_1.e.e.x), vec4<bool>(arg_1.a.a.e.x, global0.b.x, arg_1.b, arg_1.e.e.x)), vec4<bool>(arg_1.a.b.x, false, arg_1.b, arg_1.e.e.x), global0.a.x > 1369f)), !vec4<bool>(select(global0.b.x, arg_1.b, global0.e.x), arg_2 >= -985f, false, all(vec4<bool>(global0.e.x, false, global0.e.x, arg_1.b)))));
    var var_2 = arg_1.a.a;
    global0 = Struct_1(vec4<f32>(-1000f, -719f, _wgslsmith_f_op_f32(820f + -2596f), 1007f), !(!vec2<bool>(var_1.x, false)), _wgslsmith_mult_u32(0u, _wgslsmith_add_u32(~1u, var_0)), true, vec3<bool>(var_1.x, global0.e.x, any(vec3<bool>(!arg_1.e.d, !global0.e.x, false))));
    return Struct_3(vec4<i32>(_wgslsmith_clamp_i32(-2147483647i, arg_1.c, reverseBits(_wgslsmith_clamp_i32(2147483647i, 54i, 1090i))), min(-4150i >> (var_2.c % 32u), arg_1.c), abs(-_wgslsmith_sub_i32(arg_1.c, arg_1.c)), 19688i), arg_1.a.a, Struct_2(arg_1.e, !(!select(global0.b, vec2<bool>(false, false), arg_1.e.e.zy)), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, global0.c, 1u), ~vec3<u32>(var_2.c, 30797u, arg_1.e.c)) & _wgslsmith_dot_vec3_u32(abs(vec3<u32>(1u, var_2.c, 20316u)), min(vec3<u32>(arg_1.a.a.c, arg_1.e.c, var_0), vec3<u32>(var_0, var_0, 2157u)))), vec4<u32>(func_2(vec3<f32>(global0.a.x, 258f, 853f), _wgslsmith_clamp_vec2_u32(vec2<u32>(arg_1.a.a.c, 9246u), vec2<u32>(arg_1.e.c, 63308u), vec2<u32>(3815u, 4294967295u)), true).x & var_0, _wgslsmith_add_u32(~(~arg_1.e.c), func_2(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(677f, arg_0, var_2.a.x))), abs(vec2<u32>(u_input.b.x, 30740u)), select(true, true, true)).x), 28408u, 42211u), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.a.x, -737f, var_2.a.x), arg_1.d.ywz, var_1.ywz))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.a.xyz)))), var_2.a.wxx)));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec3<i32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-371f, arg_1.a.a.x)) * global0.a.x);
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.b.a)), select(!vec2<bool>(global0.d, func_1(vec4<i32>(-26804i, 1i, arg_2.x, 26949i)).b), !(!arg_0.b.e.xz), arg_0.b.b.x || arg_0.c.b.x), 11001u, false, arg_0.c.a.e);
    global0 = Struct_1(arg_1.a.a, select(select(vec2<bool>(!arg_0.b.e.x, !arg_1.b.x), global0.e.zx, all(!vec3<bool>(arg_1.a.b.x, true, true))), arg_1.b, !arg_0.c.b), 0u, arg_0.c.a.e.x, !arg_1.a.e);
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(arg_0.c.a.a + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(arg_0.c.a.a))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a.a.x, global0.a.x, 489f, 487f) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1296f, -1000f, global0.a.x, arg_1.a.a.x), vec4<f32>(arg_0.e.x, var_0, 328f, arg_1.a.a.x), vec4<bool>(arg_1.a.e.x, global0.d, arg_0.b.d, arg_1.b.x))))))), arg_0.c.a.e.zx, u_input.a.x, func_1(select(vec4<i32>(-27817i, 2147483647i, 10557i, u_input.c.x) ^ arg_0.a, arg_0.a, vec4<bool>(global0.d, false, false, arg_0.b.d)) >> (arg_0.d % vec4<u32>(32u))).e.d, global0.e);
    global0 = Struct_1(vec4<f32>(-1043f, _wgslsmith_f_op_f32(-1644f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0.b.a.x), _wgslsmith_f_op_f32(floor(var_0))))), global0.a.x, _wgslsmith_f_op_f32(arg_1.a.a.x + global0.a.x)), !(!arg_1.a.b), ~max(1u, (43566u >> (arg_1.a.c % 32u)) >> (u_input.a.x % 32u)), 16113u > reverseBits(u_input.b.x), !select(func_4(arg_1.a.a.x, Struct_4(arg_0.c, arg_0.c.b.x, u_input.d, arg_1.a.a, Struct_1(vec4<f32>(1025f, -799f, var_0, -701f), arg_1.b, u_input.a.x, arg_0.c.a.e.x, global0.e)), 1421f).b.e, vec3<bool>(arg_1.a.e.x, arg_2.x <= u_input.d, !arg_0.b.d), func_1(~vec4<i32>(arg_0.a.x, arg_0.a.x, arg_0.a.x, 5270i)).a.a.e));
    return Struct_1(_wgslsmith_f_op_vec4_f32(arg_0.c.a.a + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(796f, var_0, 1607f, -1517f)))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, global0.a.x, 1431f, 880f) * vec4<f32>(-1000f, arg_0.c.a.a.x, -1018f, arg_1.a.a.x)), arg_1.a.a))), select(global0.b, arg_0.c.b, vec2<bool>(false, arg_1.a.d)), ~5223u, !(arg_0.d.x <= arg_1.c) && ((~arg_0.c.c >> (~1u % 32u)) == abs(59907u >> (u_input.a.x % 32u))), !arg_1.a.e);
}

fn func_6(arg_0: Struct_2) -> Struct_1 {
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(-arg_0.a.a), vec2<bool>(arg_0.a.b.x, -568f > _wgslsmith_f_op_f32(356f * _wgslsmith_f_op_f32(-arg_0.a.a.x))), ~(~_wgslsmith_dot_vec3_u32(u_input.a, ~u_input.a)), true, !func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -279f)), func_1(countOneBits(vec4<i32>(2257i, u_input.c.x, u_input.d, -15050i))), 1541f).c.a.e);
    global0 = func_4(-2839f, Struct_4(func_4(_wgslsmith_f_op_f32(select(func_4(-406f, Struct_4(arg_0, arg_0.b.x, u_input.d, vec4<f32>(arg_0.a.a.x, global0.a.x, arg_0.a.a.x, -1174f), arg_0.a), 1285f).c.a.a.x, _wgslsmith_f_op_f32(634f - 388f), true)), func_1(-vec4<i32>(u_input.c.x, u_input.c.x, u_input.d, 6732i)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1809f + global0.a.x)))).c, func_5(Struct_3(vec4<i32>(2147483647i, u_input.d, u_input.c.x, 28663i), Struct_1(arg_0.a.a, vec2<bool>(arg_0.b.x, arg_0.b.x), 29136u, global0.e.x, vec3<bool>(true, true, false)), arg_0, max(vec4<u32>(u_input.a.x, 29988u, 4294967295u, 106625u), vec4<u32>(arg_0.a.c, arg_0.a.c, 4780u, 32656u)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_0.a.a.x, arg_0.a.a.x, global0.a.x), vec3<f32>(arg_0.a.a.x, -244f, -686f)))), arg_0, (vec3<i32>(u_input.d, -422i, u_input.c.x) | vec3<i32>(2147483647i, 1i, u_input.c.x)) & -vec3<i32>(u_input.c.x, 0i, 0i)).e.x, _wgslsmith_mod_i32(_wgslsmith_add_i32(u_input.c.x, u_input.d) >> ((4294967295u | u_input.b.x) % 32u), ~u_input.d), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -303f), func_4(global0.a.x, Struct_4(arg_0, arg_0.a.d, -1i, arg_0.a.a, Struct_1(global0.a, vec2<bool>(arg_0.a.d, true), u_input.a.x, arg_0.b.x, vec3<bool>(arg_0.b.x, arg_0.b.x, false))), -516f).b.a.x, global0.a.x, _wgslsmith_f_op_f32(abs(arg_0.a.a.x))) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.a.x, global0.a.x, arg_0.a.a.x, -116f)), _wgslsmith_div_vec4_f32(arg_0.a.a, global0.a)))), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-438f, global0.a.x, 1493f, -169f)), global0.e.yz, _wgslsmith_sub_u32(arg_0.a.c, ~61203u), !func_4(256f, Struct_4(arg_0, arg_0.b.x, u_input.c.x, vec4<f32>(-380f, arg_0.a.a.x, -721f, global0.a.x), arg_0.a), arg_0.a.a.x).c.b.x, arg_0.a.e)), global0.a.x).b;
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(global0.a))))), !arg_0.a.e.zx, func_4(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0.a.a.x + -578f))), Struct_4(func_1(vec4<i32>(u_input.d, u_input.c.x, u_input.c.x, 0i) >> (vec4<u32>(19799u, 1u, global0.c, arg_0.a.c) % vec4<u32>(32u))).a, ~global0.c >= 37228u, countOneBits(reverseBits(u_input.c.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.x, 1733f, global0.a.x, 917f) - vec4<f32>(1643f, -476f, 936f, -1000f))), arg_0.a), _wgslsmith_f_op_f32(-arg_0.a.a.x)).d.x, any(!(!(!vec4<bool>(true, global0.b.x, global0.b.x, arg_0.a.e.x)))), arg_0.a.e);
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.a.x, 1154f, arg_0.a.a.x))), _wgslsmith_div_vec3_f32(func_1(-vec4<i32>(2147483647i, u_input.d, u_input.c.x, -21510i)).a.a.a.wxy, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.a.x, arg_0.a.a.x, -537f)))), _wgslsmith_div_vec3_f32(vec3<f32>(1856f, global0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-344f * -1131f) + global0.a.x)), arg_0.a.a.wzw));
    var var_1 = Struct_3(reverseBits(vec4<i32>(u_input.d, u_input.c.x, ~_wgslsmith_mod_i32(-1i, -1i), -45915i)), arg_0.a, arg_0, vec4<u32>(_wgslsmith_mult_u32(u_input.a.x, 7847u), abs(4294967295u), func_1(vec4<i32>(2147483647i, -35186i, u_input.c.x, u_input.d)).a.c, func_1(_wgslsmith_mod_vec4_i32(-vec4<i32>(46220i, u_input.d, u_input.d, -1i), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c.x, 2147483647i, 1i, -2147483647i), vec4<i32>(u_input.d, u_input.c.x, 1574i, u_input.d)))).e.c), _wgslsmith_f_op_vec3_f32(global0.a.yzx * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(func_4(arg_0.a.a.x, Struct_4(Struct_2(arg_0.a, vec2<bool>(true, global0.e.x), u_input.b.x), true, u_input.c.x, vec4<f32>(arg_0.a.a.x, 557f, -644f, global0.a.x), arg_0.a), var_0.x).e, func_5(Struct_3(vec4<i32>(5946i, u_input.d, -2147483647i, -12256i), Struct_1(global0.a, global0.e.yy, u_input.a.x, global0.d, vec3<bool>(global0.d, global0.e.x, false)), arg_0, vec4<u32>(33253u, 26523u, 4294967295u, 67031u), global0.a.xxw), Struct_2(arg_0.a, vec2<bool>(global0.b.x, true), global0.c), vec3<i32>(15880i, u_input.c.x, u_input.d)).a.wwz)))));
    return var_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_6(Struct_2(func_5(func_4(_wgslsmith_div_f32(867f, 2843f), func_1(vec4<i32>(u_input.d, u_input.d, 23458i, u_input.d)), _wgslsmith_f_op_f32(ceil(-214f))), Struct_2(func_4(-1784f, Struct_4(Struct_2(Struct_1(global0.a, global0.b, 37580u, global0.d, vec3<bool>(global0.d, global0.b.x, true)), global0.b, 4294967295u), global0.d, 0i, vec4<f32>(global0.a.x, 440f, global0.a.x, 276f), Struct_1(global0.a, global0.e.zy, u_input.a.x, global0.b.x, vec3<bool>(false, global0.d, false))), global0.a.x).c.a, vec2<bool>(global0.d, true), ~global0.c), vec3<i32>(0i, _wgslsmith_sub_i32(22182i, 34388i), _wgslsmith_add_i32(u_input.c.x, u_input.c.x))), !func_4(1f, func_1(vec4<i32>(4114i, 12599i, u_input.c.x, u_input.d)), _wgslsmith_f_op_f32(-global0.a.x)).c.a.b, u_input.b.x << (u_input.a.x % 32u)));
    global0 = func_5(func_4(_wgslsmith_f_op_f32(744f - 737f), func_1(-firstLeadingBit(vec4<i32>(-1i, u_input.c.x, u_input.c.x, 2147483647i))), global0.a.x), func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(round(1300f)))), Struct_4(Struct_2(Struct_1(vec4<f32>(global0.a.x, global0.a.x, 574f, global0.a.x), vec2<bool>(global0.d, global0.d), global0.c, global0.d, global0.e), global0.e.yx, u_input.a.x), true, max(1i, -u_input.c.x), _wgslsmith_div_vec4_f32(global0.a, func_5(Struct_3(vec4<i32>(u_input.c.x, -2147483647i, u_input.d, u_input.d), Struct_1(vec4<f32>(global0.a.x, -1234f, global0.a.x, 679f), vec2<bool>(global0.e.x, global0.b.x), 1u, false, vec3<bool>(global0.d, false, true)), Struct_2(Struct_1(vec4<f32>(-1018f, global0.a.x, 885f, -128f), global0.b, 0u, global0.d, vec3<bool>(global0.b.x, global0.b.x, true)), global0.e.yz, u_input.a.x), vec4<u32>(global0.c, 123299u, global0.c, u_input.a.x), vec3<f32>(global0.a.x, 1373f, global0.a.x)), Struct_2(Struct_1(global0.a, vec2<bool>(false, true), 32374u, true, vec3<bool>(true, false, global0.b.x)), global0.b, 12441u), vec3<i32>(u_input.d, u_input.d, u_input.c.x)).a), Struct_1(global0.a, vec2<bool>(true, global0.b.x), ~global0.c, any(vec4<bool>(false, global0.b.x, global0.d, false)), vec3<bool>(true, global0.b.x, global0.b.x))), func_4(_wgslsmith_f_op_f32(-func_1(vec4<i32>(-16125i, u_input.d, u_input.c.x, 12928i)).e.a.x), Struct_4(func_1(vec4<i32>(u_input.c.x, -1i, -23183i, 2147483647i)).a, all(vec4<bool>(true, false, global0.d, global0.b.x)), reverseBits(0i), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0.a.x, -1108f, 1530f, global0.a.x))), Struct_1(global0.a, vec2<bool>(true, false), global0.c, global0.e.x, vec3<bool>(false, false, true))), global0.a.x).e.x).c, vec3<i32>(-1i) * -vec3<i32>(firstLeadingBit(u_input.d), ~u_input.c.x, ~(-2147483647i)));
    let var_0 = -2147483647i;
    global0 = func_1(vec4<i32>(max(1i, var_0), -2147483647i, u_input.d, i32(-1i) * -90934i)).a.a;
    let var_1 = vec2<i32>(abs(var_0), _wgslsmith_add_i32(1i, ~u_input.d));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(~u_input.c.x & (58311i >> (~global0.c % 32u)), u_input.d, 0i, 19235i), -940f, _wgslsmith_f_op_vec3_f32(round(func_1(-(vec4<i32>(-2147483647i, var_1.x, var_0, u_input.d) << (vec4<u32>(global0.c, u_input.a.x, u_input.a.x, 1u) % vec4<u32>(32u)))).d.ywy)), ~1i);
}

