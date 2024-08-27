struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: vec2<i32>,
    d: bool,
    e: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: f32,
    d: u32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 20> = array<bool, 20>(false, true, true, true, false, false, false, true, true, false, false, false, true, true, false, false, false, true, false, false);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<f32>) -> u32 {
    let var_0 = Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(arg_0.yx, _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, arg_0.x) * arg_0.yy), select(vec2<bool>(false, global0[_wgslsmith_index_u32(0u, 20u)]), vec2<bool>(global0[_wgslsmith_index_u32(u_input.b, 20u)], global0[_wgslsmith_index_u32(u_input.a.x, 20u)]), global0[_wgslsmith_index_u32(60385u, 20u)])))), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2093f * arg_0.x) * arg_0.x)), ~vec2<i32>(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 698i, 3209i, -1i), vec4<i32>(1i, 2147483647i, -2147483647i, 1i))), false, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(arg_0.yy + arg_0.zz), _wgslsmith_f_op_vec2_f32(sign(arg_0.yx)))) - vec2<f32>(_wgslsmith_f_op_f32(exp2(arg_0.x)), _wgslsmith_f_op_f32(min(1155f, arg_0.x))))));
    let var_1 = Struct_1(vec2<f32>(-1227f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.a.x)) + _wgslsmith_f_op_f32(trunc(arg_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1025f, var_0.a.e.x)), max(var_0.a.c, -vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a.c.x, var_0.a.c.x, 1i), vec3<i32>(var_0.a.c.x, var_0.a.c.x, var_0.a.c.x)), ~2147483647i)), global0[_wgslsmith_index_u32(~u_input.b, 20u)], arg_0.zx);
    global0 = array<bool, 20>();
    let var_2 = vec4<u32>(u_input.a.x, _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(firstTrailingBit(u_input.a.zwy ^ u_input.a.yyw), min(_wgslsmith_mod_vec3_u32(u_input.a.yww, vec3<u32>(0u, 66219u, u_input.a.x)), max(vec3<u32>(u_input.b, u_input.a.x, 4294967295u), vec3<u32>(u_input.b, u_input.b, 24432u)))), max(_wgslsmith_add_vec3_u32(firstLeadingBit(u_input.a.zyw), ~vec3<u32>(u_input.a.x, u_input.b, u_input.a.x)), _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, u_input.b, 15040u), u_input.a.wyy, vec3<u32>(u_input.b, 15006u, u_input.b)) ^ u_input.a.ywx)), 106580u, abs(47378u));
    global0 = array<bool, 20>();
    return _wgslsmith_mult_u32(1u, u_input.a.x);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: u32, arg_3: Struct_3) -> i32 {
    var var_0 = global0[_wgslsmith_index_u32(abs(abs(arg_2)), 20u)];
    var var_1 = Struct_2(arg_0, vec2<bool>((true && global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(9900u, u_input.a.x), 20u)]) || global0[_wgslsmith_index_u32(~arg_2, 20u)], !global0[_wgslsmith_index_u32(~1u, 20u)]), max(_wgslsmith_add_vec3_u32(vec3<u32>(0u, 1u, arg_2), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, arg_2, arg_2), vec3<u32>(arg_2, 25147u, 1u), vec3<u32>(0u, 88737u, u_input.b))), ~(~u_input.a.zxw)) & u_input.a.wxx);
    let var_2 = arg_3;
    var var_3 = firstLeadingBit(var_1.c.x);
    var_3 = _wgslsmith_clamp_u32(var_1.c.x, abs(u_input.a.x), firstLeadingBit(func_3(vec3<f32>(var_2.a.a.x, -189f, -693f))) ^ 22335u) | 4761u;
    return arg_3.a.c.x | (-var_1.a.c.x << (max(~firstLeadingBit(u_input.b), ~43871u >> (~var_1.c.x % 32u)) % 32u));
}

fn func_2() -> vec2<f32> {
    global0 = array<bool, 20>();
    let var_0 = ~vec4<i32>(-func_4(Struct_1(vec2<f32>(865f, -1162f), -671f, vec2<i32>(2147483647i, 1686i), false, vec2<f32>(2906f, 327f)), -vec3<i32>(-2147483647i, -1i, 22208i), func_3(vec3<f32>(-574f, 960f, -1870f)), Struct_3(Struct_1(vec2<f32>(-149f, 675f), -748f, vec2<i32>(0i, 0i), true, vec2<f32>(539f, 733f)))), -4071i, reverseBits(_wgslsmith_div_i32(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, -1i), vec2<i32>(-10021i, 2147483647i)))), _wgslsmith_mult_i32(abs(i32(-1i) * -2147483647i), select(i32(-1i) * -2147483647i, _wgslsmith_add_i32(2147483647i, -5559i), true)));
    let var_1 = u_input.a.x;
    global0 = array<bool, 20>();
    let var_2 = ~(~(~(u_input.a.x | var_1) | 1u));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(563f, -129f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(293f, -178f) * vec2<f32>(-551f, -485f)), !vec2<bool>(false, global0[_wgslsmith_index_u32(1u, 20u)]))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-123f, -300f) * vec2<f32>(-504f, -612f)) + vec2<f32>(1f, 1f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1000f, 919f), vec2<f32>(-395f, 649f)))))));
}

fn func_5(arg_0: Struct_2, arg_1: vec3<u32>) -> Struct_1 {
    var var_0 = arg_0.c.x;
    return Struct_1(arg_0.a.a, -787f, vec2<i32>(~arg_0.a.c.x << (_wgslsmith_dot_vec3_u32(~arg_1, arg_1) % 32u), _wgslsmith_mult_i32(-16178i, 1i)), 1u > firstTrailingBit(_wgslsmith_dot_vec3_u32(select(u_input.a.zxy, arg_0.c, arg_0.a.d), abs(vec3<u32>(49255u, 1u, 0u)))), arg_0.a.e);
}

fn func_1() -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(-702f, -304f), _wgslsmith_f_op_vec2_f32(vec2<f32>(2263f, 517f) + vec2<f32>(-431f, -1067f))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1421f, 1097f), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(884f, 892f)))) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(866f, -2280f))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1106f, 1604f), vec2<f32>(315f, -1000f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(622f, -244f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-432f, -831f)))))));
    var var_1 = _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -2374f));
    var var_2 = func_5(Struct_2(Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-600f, 396f), vec2<f32>(var_0.x, var_0.x)), _wgslsmith_f_op_vec2_f32(func_2())), _wgslsmith_f_op_f32(f32(-1f) * -798f), vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 0i, -8969i), vec3<i32>(-45913i, 0i, -2147483647i)), i32(-1i) * -57657i), global0[_wgslsmith_index_u32(0u, 20u)], vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(round(-1519f)))), vec2<bool>(!select(global0[_wgslsmith_index_u32(u_input.a.x, 20u)], true, false), global0[_wgslsmith_index_u32(~(~1533u), 20u)]), u_input.a.xzx), u_input.a.zww | ~u_input.a.wxy);
    var var_3 = func_5(Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_2.e + vec2<f32>(var_0.x, -1010f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * -140f) - 441f), -var_2.c, var_2.d | false, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(var_2.a, vec2<f32>(var_0.x, var_2.a.x))), var_2.a)), select(vec2<bool>(!global0[_wgslsmith_index_u32(u_input.b, 20u)], all(vec3<bool>(true, global0[_wgslsmith_index_u32(28900u, 20u)], global0[_wgslsmith_index_u32(u_input.a.x, 20u)]))), vec2<bool>(0u >= u_input.b, var_2.d == global0[_wgslsmith_index_u32(4294967295u, 20u)]), vec2<bool>(true, true)), ~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, u_input.b, u_input.b) << (vec3<u32>(1u, u_input.a.x, 9144u) % vec3<u32>(32u)), ~vec3<u32>(40395u, u_input.b, 1u))), u_input.a.xww);
    let var_4 = Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_3.a.x))))), _wgslsmith_f_op_f32(max(var_0.x, 796f)), select(max(_wgslsmith_mod_vec2_i32(var_2.c, vec2<i32>(-1i, -1i)), vec2<i32>(62582i, 1i)), vec2<i32>(~var_3.c.x, _wgslsmith_mult_i32(-2147483647i, var_2.c.x)), all(select(vec2<bool>(false, true), vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 20u)], false), vec2<bool>(var_2.d, true)))), var_2.d, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * var_0.x) - _wgslsmith_f_op_vec2_f32(func_2()).x), var_2.b)));
    return ~_wgslsmith_clamp_u32(4294967295u, 0u, u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec2<bool>(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_mod_u32(_wgslsmith_mult_u32(u_input.b, 0u), u_input.b), max(func_1(), ~1u)), 20u)], !all(vec4<bool>(global0[_wgslsmith_index_u32(82888u, 20u)], global0[_wgslsmith_index_u32(u_input.b, 20u)], false, false))), select(select(!(!vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 20u)])), !vec2<bool>(global0[_wgslsmith_index_u32(u_input.b, 20u)], global0[_wgslsmith_index_u32(0u, 20u)]), !(!vec2<bool>(true, global0[_wgslsmith_index_u32(41064u, 20u)]))), select(!(!vec2<bool>(global0[_wgslsmith_index_u32(71180u, 20u)], global0[_wgslsmith_index_u32(1u, 20u)])), select(select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.b, 20u)], true), vec2<bool>(global0[_wgslsmith_index_u32(58843u, 20u)], false), vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 20u)], global0[_wgslsmith_index_u32(u_input.a.x, 20u)])), !vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.b, 20u)]), vec2<bool>(true, true)), select(select(vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 20u)], global0[_wgslsmith_index_u32(584u, 20u)]), vec2<bool>(global0[_wgslsmith_index_u32(48320u, 20u)], global0[_wgslsmith_index_u32(31930u, 20u)]), vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 20u)], true)), vec2<bool>(true, true), vec2<bool>(true, false))), false), select(!vec2<bool>(true, 27998u == u_input.a.x), !vec2<bool>(global0[_wgslsmith_index_u32(u_input.b, 20u)], false), any(vec2<bool>(true, true))));
    let var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1517f, -2481f, -924f, -574f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-320f, -895f, 1362f, -425f))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-2399f, -235f, -1000f, _wgslsmith_f_op_f32(-1529f + -852f)) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -166f), _wgslsmith_f_op_f32(step(-122f, _wgslsmith_f_op_f32(f32(-1f) * -199f))), 2436f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -170f), func_5(Struct_2(Struct_1(vec2<f32>(-141f, -109f), -624f, vec2<i32>(1i, -3722i), true, vec2<f32>(-258f, 149f)), vec2<bool>(var_0.x, false), vec3<u32>(1u, 1397u, u_input.b)), vec3<u32>(20427u, u_input.a.x, 0u)).a.x))), func_5(Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-314f, 1648f) * vec2<f32>(647f, 247f)), _wgslsmith_f_op_f32(218f - -496f), _wgslsmith_mod_vec2_i32(vec2<i32>(1i, -1i), vec2<i32>(33448i, 1i)), false, _wgslsmith_f_op_vec2_f32(-vec2<f32>(615f, 187f))), !(!vec2<bool>(true, global0[_wgslsmith_index_u32(0u, 20u)])), ~(~vec3<u32>(u_input.b, u_input.a.x, u_input.b))), vec3<u32>(0u, min(66192u, 9536u >> (u_input.a.x % 32u)), ~50932u)).d));
    let var_2 = _wgslsmith_f_op_vec4_f32(-var_1);
    var_0 = vec2<bool>(u_input.b >= ~select(~50819u, 1u, global0[_wgslsmith_index_u32(12649u, 20u)]), var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, -firstLeadingBit(firstLeadingBit(firstTrailingBit(vec2<i32>(2147483647i, 2147483647i)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x))), abs(~u_input.a.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -328f), var_2.x, 1818f, _wgslsmith_f_op_f32(f32(-1f) * -464f))));
}

