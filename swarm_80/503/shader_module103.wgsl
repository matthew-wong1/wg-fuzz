struct Struct_1 {
    a: vec2<u32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<bool>,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(0i, 82332i, Struct_1(vec2<u32>(36912u, 3841u), vec4<bool>(true, false, false, false)));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3, arg_1: bool, arg_2: bool) -> vec4<u32> {
    let var_0 = countOneBits(~_wgslsmith_add_vec3_u32(vec3<u32>(~0u, reverseBits(arg_0.c.a.x), reverseBits(15235u)), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(global0.c.a.x, arg_0.c.a.x, 4294967295u), vec3<u32>(5985u, global0.c.a.x, 12476u), vec3<u32>(global0.c.a.x, global0.c.a.x, u_input.b.x))));
    var var_1 = arg_2;
    global0 = Struct_3(reverseBits(arg_0.b), u_input.c.x, arg_0.c);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(_wgslsmith_div_f32(1664f, _wgslsmith_f_op_f32(floor(-245f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(863f + -308f)))) + _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -101f)))));
    let var_3 = false;
    return _wgslsmith_div_vec4_u32(~(~(~vec4<u32>(global0.c.a.x, 4294967295u, var_0.x, 62813u))), ~(~vec4<u32>(4294967295u, 1u, firstTrailingBit(37863u), min(global0.c.a.x, var_0.x))));
}

fn func_4(arg_0: vec3<bool>, arg_1: vec4<u32>, arg_2: u32) -> vec4<f32> {
    var var_0 = Struct_3(-(~select(global0.a, 2147483647i, any(vec3<bool>(false, arg_0.x, false)))), countOneBits(min(-_wgslsmith_mult_i32(2912i, -54373i), _wgslsmith_mult_i32(global0.a, abs(u_input.c.x)))), global0.c);
    let var_1 = _wgslsmith_add_vec3_i32(vec3<i32>(max(firstLeadingBit(_wgslsmith_mult_i32(-26852i, 0i)), select(global0.b, firstTrailingBit(global0.b), true)), _wgslsmith_div_i32(i32(-1i) * -29610i, _wgslsmith_mult_i32(2147483647i, u_input.a)) >> (func_3(Struct_3(1i, u_input.a, var_0.c), global0.c.b.x, !var_0.c.b.x).x % 32u), -var_0.b), vec3<i32>(_wgslsmith_dot_vec2_i32(u_input.c.xw << (~global0.c.a % vec2<u32>(32u)), abs(u_input.c.ww)), var_0.a, u_input.a));
    var_0 = Struct_3(_wgslsmith_sub_i32(-7609i, u_input.c.x), min(var_0.a, _wgslsmith_clamp_i32(_wgslsmith_div_i32(_wgslsmith_clamp_i32(var_1.x, -1i, u_input.c.x), global0.a), ~23749i, var_1.x)), Struct_1(firstTrailingBit(~_wgslsmith_clamp_vec2_u32(arg_1.xw, vec2<u32>(var_0.c.a.x, arg_2), u_input.b)), !(!select(var_0.c.b, vec4<bool>(false, var_0.c.b.x, global0.c.b.x, arg_0.x), vec4<bool>(true, var_0.c.b.x, false, global0.c.b.x)))));
    var var_2 = var_0.c.b.x;
    var var_3 = vec2<u32>(abs(~1u), ~func_3(Struct_3(global0.a, -var_1.x, global0.c), false, true).x);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(987f, 842f, 1111f, -1198f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1146f, 408f, -1590f, 1000f)))))));
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(func_4(global0.c.b.xwz, ~func_3(Struct_3(-10932i, abs(1i), global0.c), any(!global0.c.b.yy), all(vec4<bool>(global0.c.b.x, true, false, false))), global0.c.a.x));
    global0 = Struct_3(11265i, -29508i, global0.c);
    let var_1 = reverseBits(countOneBits(~select(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 44479u, global0.c.a.x, u_input.b.x), vec4<u32>(0u, 45280u, 0u, 0u)), ~vec4<u32>(58923u, u_input.b.x, 1u, 7831u), vec4<bool>(global0.c.b.x, false, global0.c.b.x, false))));
    var var_2 = Struct_2(Struct_1(firstLeadingBit(u_input.b), select(global0.c.b, select(global0.c.b, select(global0.c.b, vec4<bool>(false, global0.c.b.x, global0.c.b.x, global0.c.b.x), global0.c.b), global0.c.b.x && global0.c.b.x), global0.c.b)), Struct_1(_wgslsmith_sub_vec2_u32(vec2<u32>(max(u_input.b.x, 1u), _wgslsmith_dot_vec3_u32(var_1.xwy, var_1.wxz)), var_1.ww), global0.c.b), vec2<bool>(!all(vec3<bool>(false, global0.c.b.x, global0.c.b.x)), -2022i == ~u_input.c.x));
    let var_3 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1392f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))), var_0.zw)), var_0.yw, global0.c.b.yy));
    return global0.c;
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: Struct_2) -> vec2<bool> {
    return vec2<bool>(arg_2.c.x, true);
}

fn func_6(arg_0: vec2<bool>, arg_1: u32) -> Struct_1 {
    global0 = Struct_3(1i, _wgslsmith_mod_i32(u_input.a, u_input.c.x), global0.c);
    let var_0 = 4294967295u & firstTrailingBit(_wgslsmith_sub_u32(~arg_1, ~(~u_input.b.x)));
    var var_1 = abs(min(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(-2147483647i, -6719i, _wgslsmith_mult_i32(2147483647i, global0.a)), firstLeadingBit(1i)), 5712i));
    global0 = Struct_3(~(~global0.a), -30311i, func_2());
    let var_2 = vec2<bool>(all(vec4<bool>(false, false, all(func_2().b.zxz), true)), arg_0.x);
    return global0.c;
}

fn func_7(arg_0: f32, arg_1: Struct_2, arg_2: Struct_2, arg_3: u32) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0, arg_0))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - arg_0))), -785f)) <= _wgslsmith_div_f32(-208f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0))));
    global0 = Struct_3(-_wgslsmith_div_i32(global0.b, _wgslsmith_clamp_i32(global0.b ^ global0.b, i32(-1i) * -1i, 27736i)), reverseBits(abs(-40155i)), func_2());
    var var_1 = 0i;
    global0 = Struct_3(_wgslsmith_div_i32(-1i, ((i32(-1i) * -2147483647i) ^ global0.a) ^ _wgslsmith_mult_i32(_wgslsmith_div_i32(77236i, u_input.c.x), -70809i)), firstTrailingBit(global0.a), func_6(func_5(-126f, func_2(), arg_2), _wgslsmith_mod_u32(func_2().a.x, arg_3)));
    let var_2 = arg_1.a;
    return Struct_3(~(-4273i), _wgslsmith_div_i32(global0.b, -24319i) << (16269u % 32u), arg_2.b);
}

fn func_1(arg_0: i32, arg_1: i32) -> Struct_3 {
    global0 = func_7(1000f, Struct_2(global0.c, func_6(func_5(_wgslsmith_f_op_f32(select(817f, -192f, global0.c.b.x)), func_2(), Struct_2(Struct_1(vec2<u32>(4294967295u, global0.c.a.x), global0.c.b), Struct_1(global0.c.a, global0.c.b), vec2<bool>(false, global0.c.b.x))), _wgslsmith_div_u32(0u, 40868u)), global0.c.b.yw), Struct_2(func_6(global0.c.b.yz, global0.c.a.x), func_6(!global0.c.b.wx, 0u), select(select(global0.c.b.yx, func_2().b.zx, global0.c.b.zz), func_2().b.wy, global0.c.b.zz)), _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.b.x, 16044u << (global0.c.a.x % 32u), _wgslsmith_sub_u32(106002u, 8205u)), vec4<u32>(firstLeadingBit(71784u), u_input.b.x ^ u_input.b.x, ~u_input.b.x, global0.c.a.x)), _wgslsmith_add_u32(u_input.b.x, global0.c.a.x & func_2().a.x)));
    let var_0 = vec2<bool>(global0.c.b.x, true);
    var var_1 = countOneBits(vec2<i32>(abs(firstLeadingBit(i32(-1i) * -24613i)), -u_input.a));
    let var_2 = func_7(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1057f)) - _wgslsmith_f_op_f32(min(-1046f, -1000f))) * 127f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1232f - -421f)) + _wgslsmith_f_op_f32(-1062f - _wgslsmith_f_op_f32(trunc(-943f))))), Struct_2(Struct_1(vec2<u32>(~u_input.b.x, ~0u), vec4<bool>(true, func_2().b.x, !var_0.x, true)), Struct_1(~(~global0.c.a), !vec4<bool>(global0.c.b.x, var_0.x, false, false)), select(!(!global0.c.b.wz), func_6(global0.c.b.zy, abs(global0.c.a.x)).b.zx, vec2<bool>(true, true))), Struct_2(func_7(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(245f))), Struct_2(global0.c, func_7(145f, Struct_2(global0.c, global0.c, vec2<bool>(false, true)), Struct_2(Struct_1(u_input.b, global0.c.b), global0.c, var_0), 45683u).c, var_0), Struct_2(global0.c, func_6(vec2<bool>(false, global0.c.b.x), global0.c.a.x), func_7(1000f, Struct_2(global0.c, global0.c, vec2<bool>(true, global0.c.b.x)), Struct_2(global0.c, global0.c, vec2<bool>(true, true)), 1u).c.b.zx), ~(global0.c.a.x << (45270u % 32u))).c, func_7(_wgslsmith_f_op_f32(801f - _wgslsmith_f_op_f32(step(1163f, 945f))), Struct_2(global0.c, global0.c, vec2<bool>(global0.c.b.x, global0.c.b.x)), Struct_2(global0.c, global0.c, select(global0.c.b.yx, vec2<bool>(false, var_0.x), var_0.x)), max(~global0.c.a.x, global0.c.a.x)).c, var_0), u_input.b.x);
    var_1 = u_input.c.zw;
    return func_7(_wgslsmith_f_op_f32(select(-288f, _wgslsmith_f_op_f32(-508f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -350f), global0.c.b.x))), _wgslsmith_mod_u32(var_2.c.a.x, ~u_input.b.x) <= u_input.b.x)), Struct_2(Struct_1(~(~global0.c.a), select(func_7(819f, Struct_2(var_2.c, var_2.c, vec2<bool>(var_0.x, true)), Struct_2(Struct_1(vec2<u32>(11584u, 1u), global0.c.b), Struct_1(u_input.b, global0.c.b), var_0), u_input.b.x).c.b, vec4<bool>(true, var_0.x, var_0.x, false), !var_2.c.b)), var_2.c, var_2.c.b.yz), Struct_2(func_7(-806f, Struct_2(Struct_1(vec2<u32>(45049u, 1u), global0.c.b), global0.c, vec2<bool>(var_2.c.b.x, false)), Struct_2(Struct_1(vec2<u32>(global0.c.a.x, 16447u), vec4<bool>(false, var_0.x, global0.c.b.x, false)), Struct_1(var_2.c.a, vec4<bool>(false, true, true, false)), vec2<bool>(var_0.x, false)), _wgslsmith_sub_u32(select(1u, u_input.b.x, false), _wgslsmith_mod_u32(1u, u_input.b.x))).c, Struct_1(vec2<u32>(30668u, u_input.b.x), global0.c.b), func_2().b.yw), abs(~(global0.c.a.x << (57320u % 32u)) ^ 1u));
}

fn func_8(arg_0: Struct_1, arg_1: Struct_3, arg_2: u32) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(2058f, -1391f)))) + 670f), -1000f))));
    var var_1 = Struct_2(Struct_1(vec2<u32>(arg_1.c.a.x, ~func_1(47980i, 71415i).c.a.x), arg_0.b), func_7(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(380f - -225f)) * -128f), Struct_2(func_6(global0.c.b.wy, global0.c.a.x), Struct_1(vec2<u32>(arg_2, arg_2) << (vec2<u32>(arg_1.c.a.x, arg_1.c.a.x) % vec2<u32>(32u)), select(arg_0.b, arg_0.b, global0.c.b.x)), arg_1.c.b.wx), Struct_2(func_7(_wgslsmith_f_op_f32(f32(-1f) * -575f), Struct_2(Struct_1(arg_1.c.a, arg_1.c.b), global0.c, arg_1.c.b.wz), Struct_2(arg_1.c, arg_0, arg_1.c.b.zz), firstLeadingBit(arg_0.a.x)).c, func_6(vec2<bool>(true, arg_1.c.b.x), _wgslsmith_dot_vec2_u32(global0.c.a, vec2<u32>(16113u, arg_1.c.a.x))), arg_1.c.b.xw), select(_wgslsmith_div_u32(global0.c.a.x, 4294967295u) | 4294967295u, ~arg_2, arg_1.c.b.x)).c, arg_0.b.wy);
    global0 = Struct_3(u_input.c.x, max(_wgslsmith_mult_i32(arg_1.b, u_input.a), 2147483647i), Struct_1(_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 72537u), firstLeadingBit(select(vec2<u32>(arg_1.c.a.x, arg_2), vec2<u32>(arg_0.a.x, 38076u), var_1.a.b.x)), func_2().a), !var_1.b.b));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-390f, -1510f, -256f, -324f) + vec4<f32>(1254f, 1881f, -387f, -170f)))))));
    var var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_vec4_f32(func_4(arg_0.b.zyz, vec4<u32>(4294967295u, ~arg_1.c.a.x, ~1u, ~9134u), global0.c.a.x)).x, _wgslsmith_f_op_vec4_f32(func_4(!vec3<bool>(arg_0.b.x, arg_1.c.b.x, arg_0.b.x), vec4<u32>(1u, ~arg_1.c.a.x, ~var_1.a.a.x, 1u), ~arg_1.c.a.x)).x, var_2.x));
    return min(countOneBits(_wgslsmith_sub_i32(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(2147483647i, u_input.c.x, arg_1.b), firstLeadingBit(-9198i)), ~4816i)), _wgslsmith_sub_i32(~reverseBits(global0.a), u_input.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(417f * _wgslsmith_f_op_f32(sign(1014f))), 1422f));
    global0 = Struct_3(-func_8(global0.c, func_1(~global0.a, 29033i), _wgslsmith_dot_vec4_u32(func_3(Struct_3(global0.b, 27972i, Struct_1(u_input.b, vec4<bool>(true, global0.c.b.x, global0.c.b.x, true))), global0.c.b.x, false), func_3(Struct_3(global0.b, u_input.c.x, Struct_1(vec2<u32>(u_input.b.x, 22924u), vec4<bool>(global0.c.b.x, true, global0.c.b.x, global0.c.b.x))), global0.c.b.x, global0.c.b.x))), min(select(func_7(_wgslsmith_f_op_f32(f32(-1f) * -289f), Struct_2(global0.c, Struct_1(vec2<u32>(u_input.b.x, 4294967295u), vec4<bool>(true, global0.c.b.x, global0.c.b.x, global0.c.b.x)), global0.c.b.yz), Struct_2(Struct_1(vec2<u32>(global0.c.a.x, u_input.b.x), global0.c.b), global0.c, global0.c.b.xw), ~6652u).b, 2147483647i, global0.c.b.x), -(u_input.c.x << (56260u % 32u))), global0.c);
    global0 = func_1(-10904i, u_input.a);
    var var_1 = ~u_input.a;
    var_1 = -_wgslsmith_mod_i32(global0.a, func_8(global0.c, func_1(0i, 2147483647i), ~13123u)) << (u_input.b.x % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(global0.c.a.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(304f, 836f, 2188f, var_0) * vec4<f32>(643f, var_0, -1335f, -446f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_4(vec3<bool>(false, false, global0.c.b.x), vec4<u32>(38637u, u_input.b.x, global0.c.a.x, 33140u), _wgslsmith_dot_vec2_u32(global0.c.a, u_input.b))))), u_input.c);
}

