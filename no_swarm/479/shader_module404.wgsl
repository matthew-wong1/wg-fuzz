struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: vec4<bool>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: i32) -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-1670f))));
    let var_1 = vec2<bool>(any(select(!vec4<bool>(arg_1, true, false, true), select(vec4<bool>(true, arg_1, arg_1, arg_1), vec4<bool>(arg_1, arg_1, false, arg_1), vec4<bool>(false, arg_1, arg_1, arg_1)), select(vec4<bool>(arg_1, true, arg_1, arg_1), vec4<bool>(true, arg_1, true, arg_1), false))) | arg_1, arg_1);
    return _wgslsmith_mod_vec3_i32(max(_wgslsmith_sub_vec3_i32(min(~vec3<i32>(1i, -52317i, -2147483647i), -vec3<i32>(-56274i, arg_2, -1i)), countOneBits(vec3<i32>(-23968i, arg_2, u_input.a.x) & vec3<i32>(-14705i, -1i, u_input.a.x))), vec3<i32>(17191i, select(u_input.a.x, _wgslsmith_clamp_i32(u_input.b, arg_2, arg_2), true), abs(-2147483647i))), vec3<i32>(abs(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_2, 0i, -2147483647i, arg_2), min(vec4<i32>(arg_2, u_input.b, u_input.b, arg_2), vec4<i32>(u_input.a.x, arg_2, arg_2, arg_2)))), arg_2, _wgslsmith_clamp_i32(-_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, arg_2, -40773i, arg_2), vec4<i32>(arg_2, u_input.a.x, -12160i, arg_2)), -arg_2, reverseBits(1i))));
}

fn func_2(arg_0: vec2<bool>) -> vec4<u32> {
    var var_0 = Struct_1(select(vec3<i32>(abs(-33486i), -u_input.b, 16208i), ~(~func_3(-1211f, arg_0.x, 0i)), arg_0.x && arg_0.x), _wgslsmith_f_op_f32(step(527f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1296f - -1066f) - -499f))), select(vec4<bool>(!arg_0.x, true, true, false), select(!(!vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x)), select(vec4<bool>(true, true, true, true), !vec4<bool>(false, arg_0.x, true, arg_0.x), !vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)), select(!vec4<bool>(true, arg_0.x, true, arg_0.x), !vec4<bool>(arg_0.x, true, true, arg_0.x), true)), false), vec4<bool>(any(!vec3<bool>(arg_0.x, true, arg_0.x)), false, !any(vec2<bool>(false, arg_0.x)), arg_0.x));
    var var_1 = func_3(_wgslsmith_div_f32(1554f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.b, -1105f))), var_0.b, true || !var_0.d.x))), var_0.c.x & true, u_input.a.x).x;
    let var_2 = vec3<bool>(var_0.d.x, true, ((u_input.b ^ var_0.a.x) ^ u_input.a.x) > 31832i);
    var var_3 = Struct_1(vec3<i32>(-var_0.a.x >> (u_input.c.x % 32u), i32(-1i) * -countOneBits(u_input.b), u_input.a.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(271f * var_0.b) * _wgslsmith_f_op_f32(round(-2359f)))), _wgslsmith_div_f32(var_0.b, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-213f - var_0.b)))))), !vec4<bool>(!(!arg_0.x), all(vec3<bool>(false, true, true)), true, all(select(vec4<bool>(var_2.x, true, false, arg_0.x), vec4<bool>(true, false, arg_0.x, true), vec4<bool>(true, false, true, true)))), !select(!select(var_0.d, vec4<bool>(true, var_0.d.x, false, arg_0.x), vec4<bool>(false, arg_0.x, var_2.x, var_0.c.x)), select(!var_0.d, select(var_0.d, var_0.d, vec4<bool>(var_2.x, false, var_0.d.x, false)), select(vec4<bool>(var_2.x, arg_0.x, var_0.d.x, true), vec4<bool>(false, true, var_2.x, arg_0.x), arg_0.x)), select(select(var_0.c, vec4<bool>(arg_0.x, var_2.x, var_2.x, false), false), select(vec4<bool>(false, false, var_0.c.x, false), vec4<bool>(var_2.x, arg_0.x, arg_0.x, var_2.x), false), true)));
    var_1 = -41985i;
    return ~_wgslsmith_div_vec4_u32(u_input.c, vec4<u32>(reverseBits(firstTrailingBit(u_input.c.x)), u_input.c.x, _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, 13301u, 102568u), vec4<u32>(u_input.c.x, 0u, u_input.c.x, 34344u)), u_input.c), u_input.c.x));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    let var_0 = abs(arg_2.a.x);
    var var_1 = arg_1;
    var_1 = arg_1;
    var var_2 = (_wgslsmith_dot_vec2_i32(var_1.a.zy, ~max(vec2<i32>(-72882i, -2147483647i), vec2<i32>(-1i, arg_1.a.x))) >> (func_2(select(select(vec2<bool>(false, arg_1.d.x), vec2<bool>(arg_1.c.x, arg_2.d.x), true), select(arg_2.c.yz, vec2<bool>(arg_2.c.x, arg_2.c.x), false), select(vec2<bool>(false, false), var_1.d.wz, arg_1.c.ww))).x % 32u)) != _wgslsmith_dot_vec2_i32(abs(max(arg_1.a.zx ^ u_input.a, vec2<i32>(u_input.b, arg_2.a.x))), reverseBits(vec2<i32>(arg_2.a.x, min(arg_2.a.x, -17229i))));
    var var_3 = -(min(abs(vec2<i32>(var_1.a.x, 36215i) ^ u_input.a), vec2<i32>(-1i) * -vec2<i32>(var_1.a.x, arg_1.a.x)) & ~(~vec2<i32>(2147483647i, 22876i)));
    return arg_2;
}

fn func_5(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: u32) -> Struct_1 {
    let var_0 = ~vec4<u32>(countOneBits(_wgslsmith_dot_vec2_u32(~u_input.c.yx, select(vec2<u32>(0u, u_input.c.x), u_input.c.zy, arg_1.x))), _wgslsmith_dot_vec4_u32(firstTrailingBit(u_input.c) ^ vec4<u32>(arg_2, 4294967295u, arg_2, u_input.c.x), vec4<u32>(~1u, _wgslsmith_mult_u32(u_input.c.x, 4294967295u), 1u & arg_2, 1u)), 1u, ~(~(~75844u)));
    let var_1 = true;
    let var_2 = !(u_input.b == ~u_input.a.x);
    var var_3 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(2648f, arg_0.b, arg_0.b))) + vec3<f32>(_wgslsmith_div_f32(arg_0.b, 650f), _wgslsmith_f_op_f32(-arg_0.b), _wgslsmith_f_op_f32(306f - arg_0.b))) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_0.b, arg_0.b, 1267f))))))))));
    var var_4 = true;
    return Struct_1(_wgslsmith_div_vec3_i32(arg_0.a >> ((u_input.c.ywx & max(vec3<u32>(arg_2, var_0.x, arg_2), vec3<u32>(0u, var_0.x, 0u))) % vec3<u32>(32u)), -(vec3<i32>(arg_0.a.x, -5992i, -367i) | select(arg_0.a, arg_0.a, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.b, var_3.x) * _wgslsmith_f_op_f32(-var_3.x)), -165f))), func_4(vec4<u32>(func_2(vec2<bool>(true, var_1)).x, 32561u, ~u_input.c.x, abs(~4294967295u)), arg_0, Struct_1(~arg_0.a, 910f, vec4<bool>(true, var_0.x >= 1u, func_4(u_input.c, arg_0, arg_0).d.x, any(vec3<bool>(false, arg_1.x, var_2))), select(!arg_0.d, arg_0.c, vec4<bool>(true, true, var_2, arg_1.x)))).d, arg_0.d);
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    let var_0 = func_4(~abs(~u_input.c), func_4((vec4<u32>(4294967295u, 3334u, 1u, u_input.c.x) << (~vec4<u32>(0u, u_input.c.x, 4294967295u, u_input.c.x) % vec4<u32>(32u))) >> (vec4<u32>(u_input.c.x, ~47570u, reverseBits(4294967295u), _wgslsmith_add_u32(23940u, u_input.c.x)) % vec4<u32>(32u)), Struct_1(vec3<i32>(firstTrailingBit(-26701i), -17872i, ~14721i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(sign(-1170f))), vec4<bool>(any(arg_0.d), arg_0.d.x, false, all(vec2<bool>(arg_1.c.x, true))), func_4(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 0u), Struct_1(vec3<i32>(4361i, 0i, 200i), -699f, vec4<bool>(true, arg_0.d.x, arg_1.d.x, arg_1.d.x), arg_1.c), arg_0).d), func_5(arg_1, vec2<bool>(all(vec3<bool>(true, false, true)), arg_1.c.x), 4294967295u)), Struct_1(func_3(1511f, true, _wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.b, 15647i, 1i), arg_0.a << (vec3<u32>(14505u, 0u, 0u) % vec3<u32>(32u)))), func_4(vec4<u32>(22733u, firstLeadingBit(72426u), 17200u, u_input.c.x & u_input.c.x), arg_1, func_4(u_input.c, arg_0, func_4(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 0u), Struct_1(vec3<i32>(-63217i, u_input.a.x, -1i), arg_1.b, arg_0.d, arg_0.d), Struct_1(vec3<i32>(arg_1.a.x, arg_0.a.x, -17314i), 477f, arg_0.c, vec4<bool>(true, arg_0.d.x, arg_1.c.x, true))))).b, !vec4<bool>(false, all(arg_0.d.xz), all(arg_1.c.yx), arg_0.d.x), func_5(Struct_1(_wgslsmith_clamp_vec3_i32(arg_1.a, arg_1.a, vec3<i32>(-1i, -33015i, -77052i)), arg_1.b, vec4<bool>(true, true, true, true), !vec4<bool>(arg_1.c.x, true, arg_1.d.x, false)), arg_1.d.zz, u_input.c.x).c)).a.x;
    var var_1 = arg_0.d.x & true;
    var var_2 = _wgslsmith_f_op_f32(sign(-553f));
    var var_3 = func_4(func_2(!(!func_4(vec4<u32>(53352u, u_input.c.x, 4294967295u, u_input.c.x), Struct_1(arg_0.a, 324f, vec4<bool>(false, false, false, true), vec4<bool>(arg_1.d.x, arg_1.d.x, arg_0.c.x, false)), arg_1).d.xw)), arg_0, arg_1);
    let var_4 = func_5(Struct_1(vec3<i32>(u_input.b, var_3.a.x, arg_1.a.x), _wgslsmith_f_op_f32(round(454f)), select(!func_4(vec4<u32>(34674u, 41925u, 88715u, u_input.c.x), Struct_1(var_3.a, var_3.b, arg_1.d, vec4<bool>(arg_1.c.x, true, arg_0.d.x, var_3.c.x)), Struct_1(vec3<i32>(var_0, -45151i, 64256i), var_3.b, vec4<bool>(false, false, arg_1.c.x, false), var_3.d)).d, !(!vec4<bool>(false, false, false, arg_1.d.x)), arg_1.d), select(var_3.c, !select(vec4<bool>(true, arg_0.c.x, arg_1.c.x, false), var_3.d, false), arg_0.c.x)), func_5(arg_1, !vec2<bool>(var_3.d.x || true, var_3.c.x), ~(~abs(u_input.c.x))).c.yw, ~countOneBits(1u));
    return ~4294967295u;
}

fn func_1(arg_0: vec3<u32>, arg_1: vec2<u32>, arg_2: i32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(135f, 470f)) * -1739f), _wgslsmith_f_op_f32(f32(-1f) * -1327f), all(vec3<bool>(true, true, true))))));
    let var_1 = func_6(Struct_1(-vec3<i32>(_wgslsmith_clamp_i32(u_input.b, 8506i, arg_2), abs(-1i), 29480i), _wgslsmith_f_op_f32(-801f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0, var_0))), !vec4<bool>(false, any(vec4<bool>(true, false, false, true)), true, select(false, false, true)), !select(vec4<bool>(false, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false)), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false)))), func_5(func_4((u_input.c ^ u_input.c) | func_2(vec2<bool>(true, true)), Struct_1(max(vec3<i32>(u_input.b, 2147483647i, arg_2), vec3<i32>(u_input.a.x, 2147483647i, u_input.a.x)), _wgslsmith_f_op_f32(abs(var_0)), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false)), Struct_1(~vec3<i32>(u_input.a.x, 5033i, 1i), -1000f, select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false)), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), true))), !(!func_4(vec4<u32>(u_input.c.x, 4294967295u, 1u, 39835u), Struct_1(vec3<i32>(arg_2, -10136i, 2147483647i), var_0, vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true)), Struct_1(vec3<i32>(54906i, arg_2, u_input.a.x), 838f, vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true))).c.zy), 4294967295u));
    var var_2 = Struct_1(abs(_wgslsmith_div_vec3_i32(firstLeadingBit(vec3<i32>(u_input.b, arg_2, 7592i) >> (vec3<u32>(0u, u_input.c.x, arg_1.x) % vec3<u32>(32u))), vec3<i32>(~u_input.a.x, func_3(947f, false, 0i).x, 2744i))), _wgslsmith_f_op_f32(-var_0), select(!vec4<bool>(true, arg_0.x != var_1, false, true), vec4<bool>(false, true, all(vec2<bool>(false, false)) != true, true), vec4<bool>(all(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), false)), any(func_4(vec4<u32>(var_1, var_1, 1u, arg_0.x), Struct_1(vec3<i32>(arg_2, 0i, 0i), var_0, vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false)), Struct_1(vec3<i32>(arg_2, u_input.b, 2147483647i), 274f, vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true))).d.xwy), _wgslsmith_mod_i32(u_input.a.x, u_input.b) <= ~0i, true)), !vec4<bool>(all(vec4<bool>(false, false, true, true)), true, false, false));
    let var_3 = _wgslsmith_mod_i32(~arg_2, _wgslsmith_mult_i32(~min(arg_2, var_2.a.x), var_2.a.x));
    return Struct_1(vec3<i32>(min(_wgslsmith_mod_i32(-2147483647i, -2147483647i) >> (1u % 32u), 12677i), -2147483647i, var_3), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-773f, -850f)), _wgslsmith_f_op_f32(698f + 196f))))), func_5(Struct_1(func_3(var_2.b, !var_2.d.x, func_3(var_2.b, var_2.c.x, -1i).x), 255f, select(!var_2.c, var_2.c, vec4<bool>(false, var_2.d.x, true, true)), !vec4<bool>(var_2.c.x, var_2.c.x, true, false)), !var_2.c.zz, 58063u).d, var_2.d);
}

fn func_7(arg_0: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(min(vec3<i32>(u_input.a.x, 1i, arg_0.a.x), ~_wgslsmith_clamp_vec3_i32(func_3(-1082f, arg_0.d.x, -2147483647i), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b, 37898i, 50107i), vec3<i32>(-47401i, u_input.b, arg_0.a.x)), abs(arg_0.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(363f, arg_0.b)) + _wgslsmith_f_op_f32(ceil(793f))), func_4(vec4<u32>(u_input.c.x, u_input.c.x, countOneBits(20366u), 1u), func_4(vec4<u32>(_wgslsmith_sub_u32(u_input.c.x, 19235u), min(u_input.c.x, u_input.c.x), u_input.c.x >> (u_input.c.x % 32u), u_input.c.x), Struct_1(vec3<i32>(-2147483647i, arg_0.a.x, u_input.b), 2042f, arg_0.d, func_4(vec4<u32>(u_input.c.x, 1u, u_input.c.x, 4294967295u), Struct_1(vec3<i32>(arg_0.a.x, u_input.b, 37673i), -485f, arg_0.c, arg_0.d), Struct_1(arg_0.a, 2002f, arg_0.d, vec4<bool>(true, arg_0.c.x, arg_0.d.x, arg_0.d.x))).c), arg_0), arg_0).c, arg_0.d);
    let var_1 = ~(-vec3<i32>(max(reverseBits(-40659i), var_0.a.x << (u_input.c.x % 32u)), var_0.a.x, -(~(-20250i))));
    var var_2 = func_5(var_0, !func_1(firstTrailingBit(select(vec3<u32>(u_input.c.x, 63268u, 4546u), vec3<u32>(7146u, 0u, u_input.c.x), vec3<bool>(true, false, true))), ~vec2<u32>(u_input.c.x, u_input.c.x), -arg_0.a.x & 1i).d.zy, ~(u_input.c.x & u_input.c.x));
    let var_3 = !vec3<bool>(any(vec3<bool>(true, true & arg_0.d.x, var_0.d.x)), var_2.d.x, arg_0.c.x);
    var var_4 = func_5(Struct_1(_wgslsmith_mod_vec3_i32(func_4(vec4<u32>(69701u, u_input.c.x, u_input.c.x, 31488u), Struct_1(vec3<i32>(-21730i, u_input.b, 45534i), var_0.b, var_0.d, vec4<bool>(var_2.d.x, var_0.c.x, true, var_0.c.x)), arg_0).a & _wgslsmith_sub_vec3_i32(var_2.a, var_0.a), vec3<i32>(_wgslsmith_sub_i32(u_input.a.x, var_0.a.x), 1i, var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0.b, -146f))), func_1(reverseBits(vec3<u32>(u_input.c.x, 24197u, 34810u)), vec2<u32>(u_input.c.x, u_input.c.x), ~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, 30485i, -2147483647i), vec3<i32>(2147483647i, -16261i, var_0.a.x))).c, arg_0.c), arg_0.d.wx, 49053u).b;
    return func_5(Struct_1(var_2.a, 1285f, func_1(~_wgslsmith_div_vec3_u32(vec3<u32>(17510u, 13112u, u_input.c.x), vec3<u32>(4294967295u, u_input.c.x, 37839u)), _wgslsmith_add_vec2_u32(min(u_input.c.wy, vec2<u32>(18219u, 48800u)), ~u_input.c.xx), var_1.x).c, !func_5(func_4(vec4<u32>(4294967295u, 4294967295u, 4294967295u, u_input.c.x), var_0, Struct_1(vec3<i32>(29692i, var_2.a.x, u_input.b), -1000f, vec4<bool>(true, true, var_0.c.x, var_3.x), vec4<bool>(var_2.d.x, arg_0.c.x, false, var_3.x))), !vec2<bool>(false, arg_0.c.x), u_input.c.x).c), !var_0.c.wy, _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(27401u, u_input.c.x, u_input.c.x) >> (firstTrailingBit(vec3<u32>(1u, u_input.c.x, 4294967295u)) % vec3<u32>(32u)), firstTrailingBit(_wgslsmith_mult_vec3_u32(u_input.c.zxw, vec3<u32>(0u, 0u, u_input.c.x)))), ~u_input.c.zxw));
}

fn func_8(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<bool>) -> StorageBuffer {
    let var_0 = func_5(func_5(Struct_1(_wgslsmith_clamp_vec3_i32(func_4(vec4<u32>(68829u, u_input.c.x, u_input.c.x, 103550u), arg_1, arg_1).a, min(vec3<i32>(1134i, 0i, -9213i), vec3<i32>(-2147483647i, arg_1.a.x, -1i)), arg_2.a), -429f, !vec4<bool>(true, true, arg_3.x, true), arg_2.d), arg_1.c.zy, min(func_6(Struct_1(arg_2.a, arg_1.b, arg_2.c, vec4<bool>(arg_1.d.x, false, arg_2.c.x, true)), arg_2), ~_wgslsmith_add_u32(u_input.c.x, u_input.c.x))), arg_2.c.yx, 1u).d.wzz;
    let var_1 = _wgslsmith_sub_u32(_wgslsmith_div_u32(~17326u, ~0u | (~60201u >> (~u_input.c.x % 32u))), _wgslsmith_mult_u32(_wgslsmith_div_u32(func_6(Struct_1(arg_2.a, arg_2.b, arg_1.c, arg_2.d), Struct_1(arg_2.a, 342f, arg_1.d, vec4<bool>(false, arg_1.d.x, arg_1.d.x, true))), ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 1u, u_input.c.x, u_input.c.x), vec4<u32>(u_input.c.x, u_input.c.x, 26773u, 4294967295u))), u_input.c.x));
    let var_2 = true | !func_7(arg_1).d.x;
    let var_3 = Struct_1(arg_1.a, _wgslsmith_f_op_f32(-arg_2.b), vec4<bool>(true, u_input.b > -(15079i >> (1u % 32u)), !(!func_4(u_input.c, arg_2, arg_2).d.x), -1012f > arg_0.x), vec4<bool>(true, _wgslsmith_sub_u32(var_1, abs(var_1)) <= ~u_input.c.x, ~_wgslsmith_dot_vec2_u32(vec2<u32>(32818u, 102723u), u_input.c.zx) < 2140u, !var_0.x));
    let var_4 = var_1;
    return StorageBuffer(func_4(countOneBits(vec4<u32>(~4294967295u, _wgslsmith_mult_u32(0u, 45963u), u_input.c.x >> (4294967295u % 32u), _wgslsmith_mod_u32(var_4, var_1))), arg_1, func_5(Struct_1(select(arg_2.a, vec3<i32>(45103i, -2604i, u_input.a.x), var_3.d.x), -197f, arg_1.d, !vec4<bool>(true, false, arg_1.d.x, arg_3.x)), !arg_3.xx, max(var_4, 66881u))).b, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(166f * _wgslsmith_f_op_f32(ceil(-841f))), _wgslsmith_f_op_f32(min(arg_1.b, -830f))))), func_5(arg_2, arg_3.xy, firstTrailingBit(~(~6319u))).a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_8(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(824f)) * 722f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1133f - 118f) - -230f) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(183f, 449f) + -1046f)), 1524f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(363f)) * _wgslsmith_div_f32(-621f, 366f)))), func_7(func_1(~(u_input.c.yyy >> (vec3<u32>(u_input.c.x, u_input.c.x, 4294967295u) % vec3<u32>(32u))), _wgslsmith_mod_vec2_u32(u_input.c.xy, ~vec2<u32>(1u, 59081u)), _wgslsmith_sub_i32(-1818i, u_input.a.x))), Struct_1(func_1(u_input.c.yyx, vec2<u32>(_wgslsmith_sub_u32(u_input.c.x, u_input.c.x), u_input.c.x ^ u_input.c.x), countOneBits(firstLeadingBit(u_input.b))).a, _wgslsmith_div_f32(-527f, -1122f), select(func_4(~vec4<u32>(1u, 3983u, u_input.c.x, u_input.c.x), func_5(Struct_1(vec3<i32>(u_input.b, 2147483647i, 2147483647i), -463f, vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false)), vec2<bool>(false, true), u_input.c.x), func_7(Struct_1(vec3<i32>(u_input.b, u_input.b, 46450i), 1328f, vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false)))).d, func_4(vec4<u32>(1u, 49551u, 0u, 63458u) << (u_input.c % vec4<u32>(32u)), func_4(u_input.c, Struct_1(vec3<i32>(1i, u_input.b, -94266i), 559f, vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false)), Struct_1(vec3<i32>(u_input.b, 27423i, u_input.a.x), -396f, vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true))), Struct_1(vec3<i32>(-1i, 5437i, -1i), 114f, vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false))).d, vec4<bool>(true, true, true, true)), vec4<bool>(any(vec4<bool>(true, true, false, true)), func_5(Struct_1(vec3<i32>(-37522i, -36076i, 16112i), 892f, vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true)), vec2<bool>(true, true), u_input.c.x).c.x, true, u_input.c.x != u_input.c.x)), !func_4(select(u_input.c, vec4<u32>(4294967295u, u_input.c.x, u_input.c.x, 0u), vec4<bool>(false, true, false, false)) ^ ~vec4<u32>(u_input.c.x, u_input.c.x, 6614u, 0u), Struct_1(vec3<i32>(-17967i, u_input.b, -54748i), 468f, select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true)), vec4<bool>(true, true, true, true)), Struct_1(firstTrailingBit(vec3<i32>(-21193i, -48327i, 26308i)), _wgslsmith_f_op_f32(round(-1439f)), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false))).c.wyw);
}

