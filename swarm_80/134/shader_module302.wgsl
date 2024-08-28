struct Struct_1 {
    a: vec4<f32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec4<u32>,
    c: bool,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<i32>, arg_1: vec3<i32>) -> f32 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-842f, 2049f, -627f, -1811f))), vec4<f32>(942f, 474f, 1719f, -1000f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-582f, -735f, 1069f, 441f) + vec4<f32>(-322f, 648f, -1393f, 821f)))), arg_1.x), Struct_1(vec4<f32>(-486f, -1958f, 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-544f, -192f, false)) - -721f)), reverseBits(15585i)), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_f_op_f32(1390f + _wgslsmith_f_op_f32(step(-1766f, -1093f))), _wgslsmith_f_op_f32(min(357f, 499f)), -284f), -12592i));
    let var_1 = select((arg_0.yxz << (~_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 1u, 23179u), vec3<u32>(u_input.c, 11371u, 0u)) % vec3<u32>(32u))) >> ((((vec3<u32>(u_input.c, u_input.a, 1u) >> (vec3<u32>(1u, 1u, u_input.b) % vec3<u32>(32u))) >> (~vec3<u32>(13243u, u_input.a, 1u) % vec3<u32>(32u))) & countOneBits(countOneBits(vec3<u32>(68507u, u_input.b, u_input.c)))) % vec3<u32>(32u)), vec3<i32>(-20719i, 2973i, var_0.b.b), select(!vec3<bool>(true, any(vec3<bool>(false, true, true)), true), vec3<bool>(true, false, false), true || all(vec3<bool>(true, true, true))));
    var var_2 = firstTrailingBit(_wgslsmith_clamp_u32(~(~(~u_input.c)), _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(~vec2<u32>(18973u, u_input.c), ~vec2<u32>(73071u, u_input.c)), reverseBits(~vec2<u32>(u_input.b, 4294967295u))), firstLeadingBit(~_wgslsmith_sub_u32(u_input.c, 4840u))));
    var var_3 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-var_0.a.a), 2147483647i), var_0.c, Struct_1(var_0.a.a, firstLeadingBit(-_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, 2147483647i, -19358i, var_1.x), arg_0))));
    var_3 = Struct_2(var_0.a, var_0.b, Struct_1(vec4<f32>(2440f, 1000f, 1875f, _wgslsmith_f_op_f32(max(-398f, -428f))), _wgslsmith_mod_i32(-1i, ~_wgslsmith_add_i32(var_1.x, -8969i))));
    return var_0.b.a.x;
}

fn func_2() -> Struct_3 {
    var var_0 = 2147483647i;
    var_0 = 54648i;
    let var_1 = -1000f;
    let var_2 = _wgslsmith_mod_vec2_i32(vec2<i32>(~_wgslsmith_dot_vec2_i32(select(vec2<i32>(-56895i, 1i), vec2<i32>(-2147483647i, 2829i), vec2<bool>(true, false)), abs(vec2<i32>(-1i, 24112i))), i32(-1i) * -17702i), ~max(_wgslsmith_add_vec2_i32(vec2<i32>(-1i, -7908i), vec2<i32>(13764i, 1i)) << (max(vec2<u32>(1u, 60130u), vec2<u32>(0u, u_input.c)) % vec2<u32>(32u)), -firstTrailingBit(vec2<i32>(-44761i, 1i))));
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -618f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3(abs(vec4<i32>(-4372i, var_2.x, -31167i, 2147483647i)), ~vec3<i32>(-1i, -11327i, 1i))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_add_vec4_i32(vec4<i32>(var_2.x, var_2.x, var_2.x, -5818i), vec4<i32>(2147483647i, 0i, var_2.x, var_2.x)), vec3<i32>(-37557i, -50448i, var_2.x) & vec3<i32>(1i, var_2.x, var_2.x))) - -496f)));
    return Struct_3(1u, vec4<u32>(u_input.a, countOneBits(4294967295u), u_input.b, ~18823u), false, Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, -588f, -346f, var_1))), -min(22702i, -5335i)), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(exp2(var_1)), _wgslsmith_f_op_f32(-var_1), -804f, _wgslsmith_f_op_f32(-var_1)), ~abs(var_2.x)), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1, var_1, var_1, -2031f), vec4<f32>(-1000f, var_1, var_1, 363f)))), var_2.x)));
}

fn func_4(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: Struct_3, arg_3: vec2<u32>) -> Struct_2 {
    var var_0 = select(select(reverseBits(min(_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_2.d.b.b, 2147483647i, 15408i), vec3<i32>(arg_0.d.a.b, arg_2.d.a.b, arg_0.d.c.b), vec3<i32>(-8263i, -1i, 0i)), -vec3<i32>(2147483647i, arg_2.d.a.b, -72134i))), ~(vec3<i32>(arg_2.d.c.b, -14833i, 2147483647i) >> (arg_0.b.wwx % vec3<u32>(32u))) >> (abs(vec3<u32>(arg_0.b.x, 6514u, u_input.b)) % vec3<u32>(32u)), arg_0.c), -reverseBits(_wgslsmith_sub_vec3_i32(vec3<i32>(arg_2.d.b.b, 1i, -2147483647i), vec3<i32>(arg_0.d.b.b, 23343i, arg_0.d.b.b)) << (reverseBits(vec3<u32>(4294967295u, 4294967295u, 0u)) % vec3<u32>(32u))), arg_2.c);
    var var_1 = func_2().d;
    var var_2 = arg_0.c;
    var var_3 = _wgslsmith_f_op_f32(-var_1.c.a.x);
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.c.a.xwx * vec3<f32>(var_1.c.a.x, -170f, -189f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(377f, arg_2.d.c.a.x, -2239f), vec3<f32>(arg_0.d.b.a.x, var_1.a.a.x, arg_0.d.c.a.x)) * vec3<f32>(var_1.c.a.x, arg_0.d.c.a.x, 282f))))));
    return arg_2.d;
}

fn func_5(arg_0: Struct_2, arg_1: i32, arg_2: u32, arg_3: u32) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-1218f)), _wgslsmith_f_op_f32(min(arg_0.a.a.x, arg_0.b.a.x))))) * arg_0.a.a.x) * _wgslsmith_f_op_f32(func_3(min(-vec4<i32>(arg_0.b.b, arg_0.c.b, arg_0.c.b, -15532i), vec4<i32>(select(arg_1, 1i, true), 1i, -2147483647i, -arg_1)), vec3<i32>(~15222i, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.b.b, -11889i, arg_0.c.b), vec3<i32>(arg_0.a.b, arg_1, arg_0.c.b)), _wgslsmith_add_i32(arg_0.c.b, arg_1)) ^ _wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(arg_0.a.b, arg_0.b.b, arg_1), vec3<i32>(-1i, -2147483647i, -1i)), select(vec3<i32>(arg_1, arg_0.a.b, arg_1), vec3<i32>(1i, 2147483647i, 18876i), false)))));
    var var_1 = Struct_1(func_4(Struct_3(~select(1u, 0u, false), vec4<u32>(arg_2, 4294967295u, abs(14844u), ~arg_2), true, arg_0), select(~select(vec2<u32>(arg_2, 4294967295u), vec2<u32>(2777u, 86332u), false), min(_wgslsmith_clamp_vec2_u32(vec2<u32>(43876u, 4294967295u), vec2<u32>(4294967295u, arg_2), vec2<u32>(0u, arg_2)), vec2<u32>(arg_3, arg_3)), any(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), false))), func_2(), firstLeadingBit(firstTrailingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 13107u), vec2<u32>(arg_3, arg_2))))).c.a, (arg_0.b.b << (arg_3 % 32u)) >> (arg_2 % 32u));
    var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-arg_0.b.a), _wgslsmith_f_op_vec4_f32(var_1.a - arg_0.b.a), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), true))) + _wgslsmith_f_op_vec4_f32(round(var_1.a))))), _wgslsmith_sub_i32(-arg_1, arg_0.b.b));
    var var_2 = arg_3;
    var_1 = arg_0.c;
    return Struct_3(73623u, vec4<u32>(38961u, ~(~4294967295u), countOneBits(arg_3), arg_2) & ~vec4<u32>(20969u, 0u, ~arg_2, min(arg_2, 1u)), (func_2().b.x | ~39675u) == arg_3, arg_0);
}

fn func_6(arg_0: Struct_3) -> Struct_1 {
    var var_0 = arg_0.b.zwz;
    var_0 = ~(~(~(arg_0.b.yyx >> (arg_0.b.yzw % vec3<u32>(32u))))) << (vec3<u32>(~arg_0.a, abs(firstTrailingBit(1u)) ^ 0u, ~firstTrailingBit(2790u)) % vec3<u32>(32u));
    var_0 = _wgslsmith_mult_vec3_u32(arg_0.b.wyx, vec3<u32>(firstTrailingBit(~4294967295u) >> (_wgslsmith_div_u32(~0u, ~1u) % 32u), firstTrailingBit(~u_input.a), 0u));
    var var_1 = vec2<i32>(-(arg_0.d.a.b & -48362i), i32(-1i) * -1i);
    return arg_0.d.c;
}

fn func_1(arg_0: vec4<u32>) -> Struct_2 {
    global0 = 1u;
    let var_0 = func_6(func_5(func_4(Struct_3(38034u, arg_0, true, Struct_2(Struct_1(vec4<f32>(-897f, 268f, -1121f, -409f), 1i), Struct_1(vec4<f32>(-241f, 1460f, 760f, 1266f), 42168i), Struct_1(vec4<f32>(758f, -587f, 1219f, 218f), -17949i))), ~(~arg_0.yw), func_2(), arg_0.ww | vec2<u32>(arg_0.x, arg_0.x)), ~select(-2147483647i, -12954i, false) ^ 1i, min(u_input.a, _wgslsmith_dot_vec3_u32(abs(vec3<u32>(arg_0.x, 0u, 42331u)), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, arg_0.x, 0u), arg_0.wxy))), min(24322u, 4294967295u)));
    var var_1 = ~_wgslsmith_add_vec4_u32(~arg_0, _wgslsmith_mult_vec4_u32(abs(vec4<u32>(arg_0.x, 79445u, 24115u, arg_0.x)), func_5(Struct_2(Struct_1(vec4<f32>(516f, var_0.a.x, var_0.a.x, var_0.a.x), -1i), Struct_1(var_0.a, var_0.b), var_0), 7708i, 1u, 6959u).b) << ((abs(vec4<u32>(u_input.a, 4294967295u, 4294967295u, u_input.c)) >> (select(arg_0, vec4<u32>(u_input.a, arg_0.x, 1u, arg_0.x), false) % vec4<u32>(32u))) % vec4<u32>(32u)));
    var var_2 = all(vec2<bool>(true, !func_5(Struct_2(Struct_1(var_0.a, 16152i), var_0, Struct_1(var_0.a, var_0.b)), 0i, var_1.x, firstTrailingBit(28902u)).c));
    return func_5(Struct_2(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_div_f32(var_0.a.x, var_0.a.x), _wgslsmith_f_op_f32(max(542f, -303f)), -185f), -countOneBits(0i)), func_4(func_5(Struct_2(Struct_1(var_0.a, var_0.b), var_0, Struct_1(var_0.a, -10390i)), 1i, select(6273u, 7968u, false), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 4294967295u), var_1.yy)), _wgslsmith_mod_vec2_u32(arg_0.xw << (arg_0.xy % vec2<u32>(32u)), _wgslsmith_div_vec2_u32(arg_0.yw, var_1.zz)), func_5(func_4(Struct_3(arg_0.x, arg_0, false, Struct_2(var_0, var_0, Struct_1(vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x), var_0.b))), vec2<u32>(34688u, u_input.b), Struct_3(u_input.c, arg_0, false, Struct_2(var_0, Struct_1(var_0.a, var_0.b), Struct_1(var_0.a, -7963i))), arg_0.yy), -1i, var_1.x, reverseBits(var_1.x)), vec2<u32>(4294967295u, u_input.b)).a, var_0), var_0.b, 1u, abs(_wgslsmith_add_u32(0u, ~0u)) & _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, var_1.x, u_input.a), arg_0.zxz), ~_wgslsmith_mult_vec3_u32(var_1.xwx, arg_0.wwy))).d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_sub_vec4_u32(~vec4<u32>(~2636u, ~u_input.c, 51126u, 25778u), ~(~countOneBits(vec4<u32>(u_input.a, u_input.a, 4294967295u, 30386u)))));
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1672f, -496f, 675f, var_0.b.a.x), vec4<f32>(721f, var_0.a.a.x, var_0.b.a.x, -631f))), vec4<f32>(497f, _wgslsmith_f_op_f32(-var_0.a.a.x), -524f, var_0.a.a.x), any(vec2<bool>(false, false)) && true)), ~_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a.b, var_0.a.b, 0i), vec3<i32>(42380i, 2147483647i, 913i))), var_0.b, func_2().d.c);
    global0 = u_input.c;
    let var_2 = _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(select(vec4<i32>(var_1.b.b, var_0.b.b, var_1.c.b, -21483i) >> (~vec4<u32>(3202u, 33960u, 0u, 1u) % vec4<u32>(32u)), vec4<i32>(-var_1.b.b, _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.c.b, 0i, var_0.c.b), vec3<i32>(var_1.b.b, -2147483647i, var_0.b.b)), ~0i, ~1i), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true))), -firstTrailingBit(~vec4<i32>(1i, var_0.b.b, 51648i, var_0.c.b))), select(-vec4<i32>(1i, -2147483647i, var_0.a.b, var_0.b.b), vec4<i32>(select(-16179i, 13721i, true), var_0.a.b, _wgslsmith_div_i32(var_1.a.b, -2147483647i), -1i), !select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true))) | _wgslsmith_clamp_vec4_i32(reverseBits(vec4<i32>(var_0.a.b, var_1.c.b, var_1.a.b, -1i)), vec4<i32>(var_1.b.b, ~(-2147483647i), i32(-1i) * -45561i, 31499i), vec4<i32>(-1i) * -vec4<i32>(var_1.b.b, -11304i, var_0.b.b, var_0.a.b)));
    let var_3 = true;
    var var_4 = !(!select(!vec3<bool>(var_3, var_3, var_3), vec3<bool>(true, true, true), any(!vec4<bool>(true, true, var_3, false))));
    var_1 = Struct_2(Struct_1(var_1.a.a, _wgslsmith_mod_i32(_wgslsmith_add_i32(var_2, 1i), i32(-1i) * -2147483647i) ^ var_0.c.b), func_5(Struct_2(var_1.b, Struct_1(var_0.c.a, 20221i), var_0.b), var_2, u_input.a, _wgslsmith_mod_u32(~u_input.a ^ u_input.c, u_input.b)).d.c, Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-var_1.c.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.a.x)), -768f, func_2().d.a.a.x), var_0.a.b));
    var var_5 = vec3<i32>(~(i32(-1i) * -_wgslsmith_mod_i32(var_1.c.b, var_2)), var_1.b.b, var_1.a.b);
    let var_6 = var_0.a.b;
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, 31744u, _wgslsmith_f_op_f32(551f + var_1.a.a.x));
}

