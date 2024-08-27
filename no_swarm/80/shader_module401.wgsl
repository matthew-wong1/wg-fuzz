struct Struct_1 {
    a: vec2<u32>,
    b: vec4<bool>,
    c: i32,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec3<bool>,
    d: vec4<i32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec4<f32>,
    d: vec2<u32>,
    e: f32,
}

struct Struct_4 {
    a: i32,
    b: vec3<u32>,
    c: vec4<f32>,
    d: i32,
    e: vec2<i32>,
}

struct Struct_5 {
    a: Struct_3,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<f32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
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

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_5, arg_1: bool, arg_2: vec4<bool>) -> vec3<f32> {
    global0 = ~vec2<u32>(~4294967295u, 40564u);
    global0 = ~vec2<u32>(~arg_0.a.d.x, firstLeadingBit(_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 1u, 8255u, 4294967295u), ~vec4<u32>(global0.x, global0.x, arg_0.a.d.x, 1u))));
    global0 = arg_0.a.d;
    global0 = u_input.d.xy;
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(arg_0.a.c.x)))) * arg_0.a.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0.a.c.x))))));
    return vec3<f32>(_wgslsmith_f_op_f32(-var_0), var_0, _wgslsmith_f_op_f32(trunc(113f)));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec4<i32>, arg_2: i32, arg_3: Struct_3) -> vec2<u32> {
    var var_0 = Struct_2(arg_3.b, _wgslsmith_clamp_vec3_u32(u_input.a, ~(u_input.a ^ ~vec3<u32>(4294967295u, 38859u, 0u)), ~countOneBits(_wgslsmith_sub_vec3_u32(vec3<u32>(11415u, 4294967295u, global0.x), vec3<u32>(global0.x, global0.x, 33743u)))), vec3<bool>(true, false, select(arg_3.b.e, false, false)), abs(firstTrailingBit(min(arg_1, arg_1))));
    global0 = vec2<u32>(4294967295u, global0.x);
    var_0 = Struct_2(Struct_1(countOneBits(_wgslsmith_clamp_vec2_u32(abs(vec2<u32>(u_input.c.x, 16257u)), ~vec2<u32>(18574u, 4294967295u), ~var_0.b.zz)), select(vec4<bool>(var_0.c.x && arg_3.b.b.x, any(vec2<bool>(var_0.c.x, var_0.c.x)), any(vec4<bool>(var_0.c.x, true, true, false)), !arg_3.b.b.x), select(vec4<bool>(true, false, false, false), select(var_0.a.b, vec4<bool>(true, var_0.c.x, var_0.c.x, var_0.c.x), var_0.a.b), arg_3.b.b), vec4<bool>(false, var_0.a.b.x, !var_0.a.e, !var_0.a.e)), -select(46461i, _wgslsmith_add_i32(arg_2, u_input.b), select(false, true, var_0.c.x)), _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(abs(arg_1), -arg_1, arg_1), max(arg_1, vec4<i32>(1i, -35281i, arg_2, -1i)) << (firstTrailingBit(vec4<u32>(global0.x, 54131u, arg_3.b.a.x, var_0.b.x)) % vec4<u32>(32u))), var_0.c.x), u_input.a, !vec3<bool>(true, false, any(arg_3.b.b.xx)), _wgslsmith_clamp_vec4_i32(arg_1, var_0.d, min(-vec4<i32>(arg_1.x, -20078i, 0i, var_0.a.d), abs(_wgslsmith_mod_vec4_i32(arg_1, arg_1)))));
    var_0 = Struct_2(var_0.a, var_0.b, !(!select(select(var_0.a.b.zzx, var_0.a.b.xzy, false), arg_3.b.b.yyx, arg_3.b.b.zyx)), var_0.d);
    let var_1 = Struct_5(arg_3, select(arg_3.b.b, select(!select(vec4<bool>(var_0.a.e, var_0.c.x, true, arg_3.b.e), vec4<bool>(false, true, false, arg_3.b.e), var_0.a.b), vec4<bool>(var_0.c.x, arg_3.e >= 426f, var_0.a.b.x, all(arg_3.b.b.xxx)), !(!vec4<bool>(true, var_0.a.b.x, false, arg_3.b.e))), arg_3.b.b));
    return select(~_wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(arg_3.d, vec2<u32>(105327u, arg_3.b.a.x)), _wgslsmith_div_vec2_u32(u_input.d.zx, vec2<u32>(var_0.b.x, 0u))), vec2<u32>(firstTrailingBit(4294967295u), var_0.b.x)), _wgslsmith_clamp_vec2_u32(vec2<u32>(~global0.x, var_1.a.b.a.x | 80666u), vec2<u32>(select(global0.x, arg_3.d.x, var_1.a.b.e), var_0.b.x), var_0.a.a ^ vec2<u32>(var_1.a.b.a.x, 4294967295u)) << (max(var_0.b.yy, var_0.b.xz) % vec2<u32>(32u)), select(var_1.b.wy, vec2<bool>(any(vec3<bool>(var_1.b.x, arg_3.b.b.x, true)), arg_3.b.b.x), vec2<bool>(!var_0.c.x, true)));
}

fn func_2(arg_0: vec3<f32>, arg_1: bool) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -586f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1000f)), -253f))), _wgslsmith_f_op_f32(-arg_0.x)));
    global0 = ~firstLeadingBit(vec2<u32>(58197u, firstLeadingBit(1u))) << (u_input.c % vec2<u32>(32u));
    return Struct_1(func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, var_0)), _wgslsmith_f_op_vec2_f32(select(arg_0.yz, arg_0.zz, vec2<bool>(arg_1, true)))))), vec4<i32>((i32(-1i) * -79269i) & u_input.b, u_input.b, reverseBits(~u_input.b), -29939i), u_input.b, Struct_3(_wgslsmith_f_op_vec3_f32(func_3(Struct_5(Struct_3(vec3<f32>(var_0, var_0, 389f), Struct_1(vec2<u32>(global0.x, 46562u), vec4<bool>(arg_1, false, true, arg_1), u_input.b, -14246i, false), vec4<f32>(1589f, -400f, arg_0.x, var_0), vec2<u32>(u_input.a.x, 0u), 625f), vec4<bool>(arg_1, arg_1, false, true)), arg_1, vec4<bool>(arg_1, true, false, arg_1))), Struct_1(vec2<u32>(0u, u_input.d.x), vec4<bool>(false, arg_1, false, true), u_input.b, u_input.b, arg_1 && arg_1), vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(var_0 - var_0), _wgslsmith_f_op_f32(var_0 - 1630f), _wgslsmith_f_op_f32(f32(-1f) * -2216f)), u_input.a.zy, var_0)), select(vec4<bool>(any(vec4<bool>(arg_1, true, true, arg_1)), arg_1, arg_1, u_input.c.x != ~18392u), !(!select(vec4<bool>(arg_1, arg_1, true, false), vec4<bool>(arg_1, false, false, arg_1), vec4<bool>(arg_1, arg_1, true, arg_1))), true), 1i, -1i, all(!vec3<bool>(!arg_1, u_input.d.x > global0.x, true)));
}

fn func_5(arg_0: u32, arg_1: i32, arg_2: Struct_5, arg_3: vec4<bool>) -> Struct_3 {
    var var_0 = -vec3<i32>(_wgslsmith_div_i32(-1i, 1i) ^ u_input.b, ~reverseBits(31561i), arg_2.a.b.d);
    var var_1 = ~(u_input.a.x | (~_wgslsmith_sub_u32(38476u, 30895u) & _wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, arg_0, 21578u, 0u) >> (vec4<u32>(27835u, 0u, 4294967295u, 10641u) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(vec4<u32>(42183u, 4048u, global0.x, u_input.c.x), vec4<u32>(19660u, 18574u, u_input.d.x, 0u)))));
    var var_2 = global0.x;
    var_2 = 121928u;
    var var_3 = firstLeadingBit(~(~vec4<u32>(4294967295u, 4294967295u, arg_0, arg_2.a.d.x) | (~vec4<u32>(63044u, u_input.d.x, arg_0, u_input.a.x) << (vec4<u32>(1u, global0.x, 42658u, global0.x) % vec4<u32>(32u)))));
    return Struct_3(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.a.a.x + arg_2.a.a.x))), _wgslsmith_f_op_f32(max(-488f, -179f)), -1403f), func_2(_wgslsmith_div_vec3_f32(arg_2.a.a, _wgslsmith_f_op_vec3_f32(func_3(Struct_5(Struct_3(arg_2.a.c.zww, arg_2.a.b, arg_2.a.c, arg_2.a.b.a, arg_2.a.c.x), arg_2.b), arg_2.a.b.e | false, !arg_3))), ~0u > ~arg_0), _wgslsmith_f_op_vec4_f32(arg_2.a.c + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(arg_2.a.c, arg_2.a.c))) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.a.c.x, arg_2.a.e, arg_2.a.e, -1209f)))))), vec2<u32>(~_wgslsmith_sub_u32(7036u, arg_0), var_3.x), _wgslsmith_f_op_vec3_f32(func_3(Struct_5(Struct_3(_wgslsmith_f_op_vec3_f32(-arg_2.a.c.zxz), func_2(vec3<f32>(-839f, 105f, arg_2.a.a.x), arg_2.a.b.b.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(265f, 733f, arg_2.a.c.x, arg_2.a.a.x)), max(vec2<u32>(arg_0, arg_2.a.d.x), vec2<u32>(var_3.x, arg_0)), _wgslsmith_f_op_f32(-arg_2.a.a.x)), select(vec4<bool>(arg_2.b.x, false, true, arg_2.b.x), select(vec4<bool>(arg_3.x, arg_2.b.x, false, false), vec4<bool>(false, true, false, false), vec4<bool>(arg_2.a.b.e, true, arg_2.b.x, arg_2.a.b.b.x)), arg_3.x)), _wgslsmith_f_op_f32(arg_2.a.e * _wgslsmith_f_op_f32(arg_2.a.a.x - arg_2.a.a.x)) > _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_2.a.a.x - 527f), _wgslsmith_f_op_f32(845f * 325f))), !vec4<bool>(u_input.b == arg_2.a.b.c, true, 38415u >= arg_2.a.d.x, false))).x);
}

fn func_1(arg_0: u32, arg_1: i32) -> Struct_5 {
    global0 = select(~u_input.a.yy, max(vec2<u32>(35635u, u_input.c.x), vec2<u32>(20378u, arg_0)), true);
    let var_0 = Struct_5(func_5(global0.x, -2147483647i, Struct_5(Struct_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(1073f, -182f, -1147f) + vec3<f32>(-1258f, -168f, -615f)), func_2(vec3<f32>(-1000f, 791f, -338f), false), _wgslsmith_f_op_vec4_f32(-vec4<f32>(843f, 1000f, -596f, 516f)), _wgslsmith_sub_vec2_u32(u_input.a.xy, u_input.d.zx), -1130f), vec4<bool>(all(vec2<bool>(true, true)), true, true, true)), vec4<bool>(false, false, all(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false))), true)), !vec4<bool>(select(any(vec2<bool>(false, true)), false, true), true, true, func_2(vec3<f32>(-1000f, -403f, 639f), all(vec4<bool>(false, false, false, false))).b.x));
    var var_1 = select(var_0.b.xz, !func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.c.x, 1000f, -525f))), true).b.xw, var_0.a.b.b.zw);
    global0 = u_input.c;
    var var_2 = var_0;
    return Struct_5(Struct_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.a.x, _wgslsmith_f_op_f32(f32(-1f) * -790f), var_2.a.e) + func_5(select(global0.x, global0.x, false), max(var_0.a.b.c, arg_1), Struct_5(Struct_3(vec3<f32>(2073f, var_2.a.c.x, var_2.a.a.x), var_2.a.b, var_0.a.c, var_2.a.d, 1000f), var_0.a.b.b), !var_0.b).c.zxz), Struct_1(~var_2.a.b.a, !var_0.a.b.b, 1i, -(~arg_1), var_2.a.e > 176f), vec4<f32>(_wgslsmith_f_op_f32(-var_0.a.c.x), var_2.a.c.x, _wgslsmith_f_op_f32(-var_2.a.e), var_2.a.c.x), ~(~(~vec2<u32>(4294967295u, 1299u))), var_0.a.e), var_2.a.b.b);
}

fn func_6(arg_0: u32, arg_1: Struct_5, arg_2: f32) -> Struct_2 {
    var var_0 = arg_1.a.b;
    var_0 = func_2(_wgslsmith_f_op_vec3_f32(arg_1.a.c.xww + arg_1.a.c.zyx), arg_1.b.x);
    var var_1 = _wgslsmith_mod_vec4_u32(firstTrailingBit(firstLeadingBit(vec4<u32>(_wgslsmith_clamp_u32(1587u, 27075u, 25563u), global0.x, 1u, global0.x))), ~(_wgslsmith_sub_vec4_u32(firstLeadingBit(vec4<u32>(1u, 27131u, 10623u, 40823u)), ~vec4<u32>(u_input.d.x, var_0.a.x, global0.x, 1u)) | max(~vec4<u32>(u_input.c.x, 1960u, 4294967295u, u_input.a.x), vec4<u32>(arg_1.a.d.x, arg_0, var_0.a.x, 69041u))));
    return Struct_2(func_2(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(arg_1.a.a, vec3<f32>(948f, arg_2, -2705f)))))), all(var_0.b)), ~(~(~(~vec3<u32>(global0.x, arg_0, global0.x)))), !vec3<bool>(true, arg_1.b.x || false, true), vec4<i32>(firstTrailingBit(1374i), _wgslsmith_dot_vec2_i32(vec2<i32>(reverseBits(arg_1.a.b.d), u_input.b), (vec2<i32>(u_input.b, arg_1.a.b.d) << (u_input.a.yx % vec2<u32>(32u))) << (_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.d.x, arg_1.a.d.x), u_input.a.zx) % vec2<u32>(32u))), _wgslsmith_div_i32(1i, ~(-2147483647i)), var_0.c));
}

fn func_7(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: Struct_5) -> Struct_3 {
    let var_0 = arg_0;
    let var_1 = arg_2.a;
    global0 = ~vec2<u32>(func_4(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-2403f, var_1.a.x), var_1.a.zy)), _wgslsmith_f_op_vec2_f32(-var_1.c.zz)), vec4<i32>(~var_0.d.x, ~var_0.d.x, _wgslsmith_div_i32(var_1.b.c, var_0.d.x), max(2147483647i, arg_0.d.x)), ~(-46836i >> (var_1.b.a.x % 32u)), Struct_3(_wgslsmith_div_vec3_f32(vec3<f32>(var_1.a.x, var_1.e, 1773f), arg_2.a.c.yyy), var_0.a, _wgslsmith_f_op_vec4_f32(floor(var_1.c)), var_1.d, var_1.c.x)).x, 4898u);
    var var_2 = -169f;
    var var_3 = -28064i;
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = firstLeadingBit(~u_input.a.zx);
    let var_0 = Struct_5(func_7(func_6(u_input.a.x, func_1(~global0.x, select(u_input.b, -1i, false)), -1847f), !func_2(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-809f, 443f, 614f), vec3<f32>(227f, 620f, 282f))), true).b.xw, func_1(_wgslsmith_clamp_u32(~1u, _wgslsmith_mult_u32(global0.x, 0u), u_input.d.x), u_input.b)), func_6(u_input.c.x, func_1(firstLeadingBit(u_input.c.x), 13093i), _wgslsmith_f_op_f32(-489f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(812f, -1547f)))).a.b);
    global0 = u_input.c;
    let var_1 = func_6(1u, Struct_5(var_0.a, vec4<bool>(!(global0.x <= global0.x), any(vec4<bool>(true, var_0.b.x, false, var_0.b.x)), u_input.a.x != global0.x, true)), var_0.a.c.x);
    let var_2 = ~24243u;
    let var_3 = func_7(var_1, vec2<bool>(~u_input.a.x < ~func_2(var_0.a.c.yxx, false).a.x, true), func_1(global0.x, var_0.a.b.c)).b;
    let var_4 = func_6(u_input.a.x, var_0, var_0.a.e);
    global0 = ~firstTrailingBit(vec2<u32>(firstLeadingBit(var_1.b.x), _wgslsmith_mod_u32(55879u, 11582u))) ^ ~(~(~countOneBits(u_input.d.yz)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(var_4.a.a.x, 26862u), var_0.a.e, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-func_5(30156u, var_4.d.x, Struct_5(var_0.a, var_4.a.b), func_7(var_1, var_4.a.b.xy, Struct_5(Struct_3(var_0.a.c.xwz, var_1.a, vec4<f32>(var_0.a.a.x, var_0.a.e, 670f, var_0.a.c.x), var_4.a.a, var_0.a.a.x), vec4<bool>(true, true, var_1.a.b.x, var_3.e))).b.b).c) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(var_0.a.a.x)), var_0.a.c.x, _wgslsmith_f_op_f32(-var_0.a.e), _wgslsmith_f_op_f32(-434f * -790f)))), max(vec4<u32>(1575u & min(var_3.a.x, var_3.a.x), ~func_5(var_4.b.x, u_input.b, var_0, var_4.a.b).d.x, 9776u, 53180u), _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(var_1.b.x, u_input.a.x), _wgslsmith_dot_vec3_u32(vec3<u32>(43259u, 4294967295u, 0u), vec3<u32>(4294967295u, u_input.c.x, var_2)), abs(4294967295u), var_0.a.d.x), ~abs(vec4<u32>(21786u, 987u, 35630u, 1u)))));
}

