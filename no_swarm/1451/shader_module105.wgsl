struct Struct_1 {
    a: bool,
    b: u32,
    c: vec2<i32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: f32,
    c: vec2<i32>,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_1,
    c: i32,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: f32;

var<private> global2: vec2<f32> = vec2<f32>(-345f, 538f);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec2<f32> {
    var var_0 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x + _wgslsmith_f_op_f32(f32(-1f) * -1029f)) * _wgslsmith_f_op_f32(-621f + _wgslsmith_f_op_f32(trunc(global2.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1029f + -251f)) * _wgslsmith_f_op_f32(-1333f - _wgslsmith_f_op_f32(exp2(global2.x)))), global2.x, _wgslsmith_f_op_f32(-global2.x)), _wgslsmith_f_op_f32(global2.x * _wgslsmith_f_op_f32(max(242f, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(global2.x, -901f), global2.x))))), vec2<i32>(0i, _wgslsmith_add_i32(global0.c.x, -_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 8169i), global0.c))), true, Struct_1(select(any(select(vec4<bool>(global0.a, global0.a, true, global0.a), vec4<bool>(global0.a, global0.a, true, true), false)), !global0.a, !global0.a), global0.b, max(vec2<i32>(u_input.a.x, u_input.a.x) << (global0.d.zz % vec2<u32>(32u)), ~max(u_input.a, global0.c)), min(vec4<u32>(53830u, _wgslsmith_sub_u32(4294967295u, u_input.b.x), _wgslsmith_dot_vec4_u32(vec4<u32>(113574u, 48192u, 0u, global0.d.x), global0.d), ~4294967295u), _wgslsmith_mod_vec4_u32(global0.d, vec4<u32>(9534u, 1u, u_input.b.x, 58093u)))));
    let var_1 = Struct_3(var_0.a, Struct_1(all(!select(vec2<bool>(true, false), vec2<bool>(global0.a, var_0.d), vec2<bool>(false, false))), global0.b, vec2<i32>(_wgslsmith_mult_i32(u_input.a.x, 8127i), u_input.a.x), global0.d), -1i, abs(_wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, global0.c.x), vec3<i32>(u_input.a.x, 2147483647i, var_0.c.x)), vec3<i32>(40045i, -2147483647i, 12758i) >> (vec3<u32>(var_0.e.b, 1u, 4294967295u) % vec3<u32>(32u))), vec3<i32>(global0.c.x, ~(-20340i), var_0.e.c.x))));
    let var_2 = var_1.b;
    global2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-681f, global2.x)) - _wgslsmith_f_op_f32(1000f - var_0.b)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-870f, 343f))))));
    var var_3 = var_1.d;
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, var_0.b)) - _wgslsmith_f_op_vec2_f32(var_1.a.yx + vec2<f32>(global2.x, var_1.a.x)))), var_1.a.wx, !vec2<bool>(!var_1.b.a, global2.x > var_0.a.x))) - var_0.a.wy);
}

fn func_2(arg_0: vec3<u32>) -> Struct_2 {
    global2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(814f, -1147f))) - global2.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * global2.x))))));
    global2 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3()) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-506f, global2.x), vec2<f32>(1255f, 394f), global0.a)) * vec2<f32>(565f, -433f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global2.x, -112f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, global2.x)), 1u == arg_0.x))))));
    var var_0 = Struct_1(!all(vec4<bool>(true, true, all(vec4<bool>(false, global0.a, global0.a, global0.a)), true)), 1u | select(u_input.b.x, arg_0.x, true), u_input.a, ~global0.d);
    var_0 = Struct_1(!(var_0.a & all(select(vec2<bool>(global0.a, var_0.a), vec2<bool>(global0.a, true), false))), ~(~4294967295u), select(max(var_0.c, max(abs(vec2<i32>(30028i, var_0.c.x)), u_input.a)), abs(select(var_0.c, ~vec2<i32>(13691i, u_input.a.x), true)), !select(select(vec2<bool>(var_0.a, true), vec2<bool>(global0.a, false), vec2<bool>(global0.a, global0.a)), vec2<bool>(true, true), all(vec3<bool>(false, true, var_0.a)))), _wgslsmith_mod_vec4_u32(select(vec4<u32>(var_0.d.x, 0u, var_0.b, 2433u) >> (vec4<u32>(u_input.b.x, u_input.b.x, 34728u, 19275u) % vec4<u32>(32u)), ~vec4<u32>(21341u, u_input.b.x, var_0.d.x, 1u), false || global0.a), max(global0.d, vec4<u32>(4294967295u, var_0.d.x, u_input.b.x, 20036u))) >> (_wgslsmith_clamp_vec4_u32(~vec4<u32>(4294967295u, 0u, 0u, arg_0.x), firstLeadingBit(vec4<u32>(global0.b, var_0.b, global0.b, global0.d.x)), ~(~vec4<u32>(var_0.d.x, var_0.d.x, 51723u, 0u))) % vec4<u32>(32u)));
    global0 = Struct_1(all(select(select(!vec2<bool>(var_0.a, true), !vec2<bool>(var_0.a, false), select(true, var_0.a, global0.a)), !(!vec2<bool>(global0.a, true)), select(vec2<bool>(var_0.a, var_0.a), !vec2<bool>(true, global0.a), select(vec2<bool>(true, false), vec2<bool>(true, global0.a), var_0.a)))), ~((arg_0.x << (var_0.b % 32u)) >> (arg_0.x % 32u)), _wgslsmith_mult_vec2_i32(countOneBits(u_input.a), _wgslsmith_mod_vec2_i32(vec2<i32>(global0.c.x, global0.c.x), vec2<i32>(global0.c.x, u_input.a.x) & vec2<i32>(-2147483647i, var_0.c.x))) << ((~(~var_0.d.yy) << (reverseBits(_wgslsmith_add_vec2_u32(vec2<u32>(arg_0.x, 3464u), vec2<u32>(19795u, u_input.b.x))) % vec2<u32>(32u))) % vec2<u32>(32u)), reverseBits(((vec4<u32>(arg_0.x, 1988u, global0.b, u_input.b.x) | vec4<u32>(u_input.b.x, 83420u, 1u, global0.b)) << (_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 46261u, 1u), global0.d) % vec4<u32>(32u))) | (var_0.d & ~var_0.d)));
    return Struct_2(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -718f), 1050f, global2.x, global2.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(237f + global2.x)), 1339f)))), vec2<i32>(var_0.c.x, _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a.x, var_0.c.x, -7919i), vec3<i32>(-19934i, var_0.c.x, 17546i)), vec3<i32>(-56048i, 43262i, 2172i) << (global0.d.zzw % vec3<u32>(32u)))) ^ select(global0.c, ~(~u_input.a), !vec2<bool>(true, global0.a)), !var_0.a, Struct_1(var_0.a, arg_0.x, _wgslsmith_clamp_vec2_i32(var_0.c & vec2<i32>(2147483647i, u_input.a.x), var_0.c, -var_0.c) << (arg_0.xz % vec2<u32>(32u)), global0.d & (vec4<u32>(var_0.d.x, 70034u, u_input.b.x, 68199u) & min(var_0.d, vec4<u32>(u_input.b.x, var_0.b, arg_0.x, 16696u)))));
}

fn func_4(arg_0: Struct_2) -> Struct_3 {
    global1 = _wgslsmith_f_op_f32(-func_2(select(~(vec3<u32>(global0.d.x, 0u, 24080u) & global0.d.yyx), global0.d.wyw & vec3<u32>(52406u, 1u, u_input.b.x), all(vec2<bool>(true, true)))).a.x);
    global1 = _wgslsmith_f_op_f32(f32(-1f) * -974f);
    var var_0 = true;
    let var_1 = vec3<i32>(~(~1i), ~24365i, firstLeadingBit(1i) >> (firstLeadingBit(abs(global0.d.x)) % 32u));
    var var_2 = func_2(global0.d.yzx).e.d.x;
    return Struct_3(func_2(~vec3<u32>(0u, global0.b >> (1u % 32u), arg_0.e.b)).a, arg_0.e, ~abs(~var_1.x), var_1);
}

fn func_1() -> vec4<bool> {
    var var_0 = Struct_1(true, 0u, global0.c, _wgslsmith_mult_vec4_u32(global0.d, _wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(u_input.b.x, 25222u), 1u, _wgslsmith_div_u32(4294967295u, 8352u), 0u), vec4<u32>(global0.b, reverseBits(4294967295u), u_input.b.x, _wgslsmith_mod_u32(global0.d.x, 8152u)), _wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(global0.d, global0.d), vec4<u32>(88301u, u_input.b.x, 30616u, 41799u)))));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global2.x, global2.x, true)) * _wgslsmith_f_op_f32(-175f - global2.x))), global2.x));
    let var_1 = func_4(func_2(vec3<u32>(select(~u_input.b.x, reverseBits(global0.d.x), false), _wgslsmith_clamp_u32(min(u_input.b.x, global0.d.x), ~global0.b, ~var_0.b), var_0.b)));
    let var_2 = var_1;
    global1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -617f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1087f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.x * var_1.a.x) - _wgslsmith_f_op_f32(-var_2.a.x))))));
    return select(vec4<bool>(!(!var_2.b.a), any(select(select(vec3<bool>(false, true, var_0.a), vec3<bool>(false, false, var_1.b.a), false), !vec3<bool>(global0.a, true, true), !var_1.b.a)), true, var_2.b.a), select(!vec4<bool>(var_2.b.a, var_2.b.a, true, global0.a), vec4<bool>(false, all(select(vec3<bool>(var_2.b.a, var_0.a, false), vec3<bool>(false, var_0.a, global0.a), vec3<bool>(false, var_1.b.a, var_1.b.a))), global0.c.x <= abs(global0.c.x), var_0.a), select(vec4<bool>(!var_0.a, true, false, true), vec4<bool>(!var_1.b.a, all(vec4<bool>(false, global0.a, true, var_0.a)), var_2.b.c.x > var_2.d.x, 0i >= var_0.c.x), vec4<bool>(!var_0.a, !var_2.b.a, var_2.a.x >= 298f, false))), false);
}

fn func_5(arg_0: bool, arg_1: bool, arg_2: Struct_3) -> Struct_1 {
    global0 = func_2(global0.d.xwz).e;
    let var_0 = select(select(!select(select(vec2<bool>(arg_1, false), vec2<bool>(true, true), false), select(vec2<bool>(arg_0, global0.a), vec2<bool>(false, true), vec2<bool>(arg_2.b.a, arg_2.b.a)), func_1().x), select(select(vec2<bool>(global0.a, arg_0), !vec2<bool>(arg_0, arg_2.b.a), arg_2.b.a == arg_0), vec2<bool>(global0.a | false, all(vec3<bool>(false, global0.a, false))), true), vec2<bool>(arg_2.b.a, !any(vec3<bool>(global0.a, true, true)))), !(!(!func_1().wy)), !(!(!func_1().yx)));
    var var_1 = ~(_wgslsmith_dot_vec2_i32(select(arg_2.b.c, -global0.c, global0.d.x == 0u), select(func_2(vec3<u32>(arg_2.b.d.x, u_input.b.x, 1u)).e.c, _wgslsmith_clamp_vec2_i32(vec2<i32>(0i, global0.c.x), arg_2.b.c, vec2<i32>(-2147483647i, 5130i)), var_0)) | func_2(arg_2.b.d.wzy).e.c.x);
    var var_2 = vec4<i32>(max(firstTrailingBit(_wgslsmith_add_i32(0i, u_input.a.x)), -71235i), firstTrailingBit(_wgslsmith_mod_i32(u_input.a.x, 2147483647i) ^ select(u_input.a.x, arg_2.b.c.x, true)), 37625i, 24541i) ^ reverseBits(~(~_wgslsmith_mod_vec4_i32(vec4<i32>(arg_2.d.x, u_input.a.x, global0.c.x, u_input.a.x), vec4<i32>(45334i, -18418i, arg_2.b.c.x, global0.c.x))));
    var var_3 = func_2(_wgslsmith_sub_vec3_u32(~reverseBits(~global0.d.xzw), global0.d.yww)).e;
    return arg_2.b;
}

fn func_6(arg_0: Struct_1, arg_1: i32, arg_2: Struct_2, arg_3: vec2<bool>) -> Struct_3 {
    global2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(arg_2.a.yw)));
    var var_0 = !vec3<bool>(true || !arg_3.x, func_4(func_2(func_2(vec3<u32>(u_input.b.x, 11290u, 1u)).e.d.wzy)).b.a, global0.a);
    let var_1 = 2147483647i;
    let var_2 = ~reverseBits(vec3<i32>(-1i) * -abs(vec3<i32>(12639i, arg_2.c.x, global0.c.x)));
    let var_3 = ~_wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(u_input.a, _wgslsmith_sub_vec2_i32(u_input.a | global0.c, ~vec2<i32>(-1i, arg_0.c.x))), ~global0.c, ~(var_2.yy ^ var_2.xx));
    return func_4(arg_2);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec2<bool>(!(!any(vec4<bool>(global0.a, global0.a, true, true))), any(!(!vec2<bool>(global0.a, true))));
    global2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f));
    let var_1 = func_6(func_5(global0.a, all(func_1()), Struct_3(vec4<f32>(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(max(364f, 2148f)), global2.x, _wgslsmith_f_op_f32(select(global2.x, global2.x, true))), Struct_1(var_0.x, ~u_input.b.x, vec2<i32>(global0.c.x, -29128i), global0.d), 0i, _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a.x, global0.c.x, global0.c.x) | vec3<i32>(1i, global0.c.x, global0.c.x), vec3<i32>(global0.c.x, u_input.a.x, 1i)))), u_input.a.x, func_2(select(func_4(func_2(global0.d.xzx)).b.d.wyw, select(_wgslsmith_clamp_vec3_u32(global0.d.zzy, vec3<u32>(42416u, u_input.b.x, 4294967295u), global0.d.zzx), func_4(Struct_2(vec4<f32>(-101f, 912f, 354f, -1707f), 418f, vec2<i32>(41074i, global0.c.x), false, Struct_1(false, u_input.b.x, global0.c, global0.d))).b.d.yww, false), true)), select(var_0, select(var_0, !func_1().wx, var_0), vec2<bool>(true, true)));
    global0 = var_1.b;
    let var_2 = var_1.a.x;
    let var_3 = global2.x;
    let var_4 = var_1.b;
    let x = u_input.a;
    s_output = StorageBuffer(~(-6000i), var_4.c.x, ~_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, 18048i, var_1.b.c.x), vec3<i32>(var_1.c, var_1.d.x, global0.c.x)), _wgslsmith_clamp_vec3_i32(vec3<i32>(global0.c.x, var_4.c.x, -671i), firstTrailingBit(var_1.d), _wgslsmith_div_vec3_i32(vec3<i32>(-28906i, 0i, 44013i), vec3<i32>(u_input.a.x, 21727i, var_4.c.x)))), ~u_input.b.x, -_wgslsmith_add_i32(global0.c.x, 37552i));
}

