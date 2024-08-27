struct Struct_1 {
    a: vec2<i32>,
    b: vec3<u32>,
    c: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, false, false, false);

var<private> global1: array<vec3<i32>, 14>;

var<private> global2: Struct_1;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: i32) -> vec4<bool> {
    var var_0 = vec3<i32>(0i, abs(2147483647i), -global2.c);
    global2 = Struct_1(vec2<i32>(6134i, global2.c) | -global2.a, vec3<u32>(~abs(_wgslsmith_clamp_u32(0u, 4294967295u, u_input.a.x)), 1u, 0u), 0i);
    let var_1 = u_input.a.zy;
    global2 = Struct_1(select(_wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(max(var_0.yz, var_0.yz), ~var_0.xy), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.b, -2147483647i), _wgslsmith_div_vec2_i32(vec2<i32>(global2.c, 1i), vec2<i32>(-46792i, -21232i)))), var_0.yy, !(all(global0.zyz) | any(vec4<bool>(global0.x, false, global0.x, false)))), ~u_input.a.wzx, _wgslsmith_dot_vec4_i32(min(min(~vec4<i32>(27456i, u_input.b, -32184i, var_0.x), min(vec4<i32>(0i, var_0.x, u_input.b, u_input.b), vec4<i32>(global2.c, u_input.b, arg_0, global2.a.x))), vec4<i32>(global2.c, 21579i, select(15633i, arg_0, global0.x), var_0.x)), ~vec4<i32>(u_input.b, firstLeadingBit(1i), 1i, -u_input.b)));
    let var_2 = select(!(!select(select(global0.wz, global0.zz, vec2<bool>(global0.x, false)), !vec2<bool>(global0.x, true), vec2<bool>(true, true))), !select(vec2<bool>(false, true), vec2<bool>(!global0.x, global0.x), vec2<bool>(false, !global0.x)), global0.x);
    return select(select(select(select(vec4<bool>(var_2.x, true, true, var_2.x), vec4<bool>(var_2.x, false, var_2.x, var_2.x), !vec4<bool>(var_2.x, false, global0.x, global0.x)), vec4<bool>(all(vec4<bool>(false, true, true, true)), true, var_2.x, var_0.x == 0i), all(select(vec4<bool>(true, true, true, global0.x), vec4<bool>(false, var_2.x, var_2.x, global0.x), vec4<bool>(false, false, true, true)))), select(select(!vec4<bool>(var_2.x, false, true, false), select(vec4<bool>(false, false, var_2.x, var_2.x), vec4<bool>(var_2.x, false, global0.x, var_2.x), vec4<bool>(global0.x, var_2.x, true, var_2.x)), vec4<bool>(var_2.x, var_2.x, global0.x, var_2.x)), !(!vec4<bool>(false, false, global0.x, false)), !vec4<bool>(true, global0.x, var_2.x, false)), select(vec4<bool>(true, var_2.x, global2.a.x <= 13375i, global0.x), !vec4<bool>(global0.x, true, false, var_2.x), any(select(vec2<bool>(var_2.x, global0.x), vec2<bool>(var_2.x, true), vec2<bool>(false, true))))), vec4<bool>(global0.x, any(vec4<bool>(global0.x, false, all(vec3<bool>(true, true, var_2.x)), any(vec2<bool>(true, false)))), var_2.x, true), select(false, global0.x, all(vec3<bool>(!var_2.x, any(vec2<bool>(var_2.x, false)), all(vec3<bool>(true, true, true))))));
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: i32, arg_3: vec2<f32>) -> Struct_1 {
    global0 = func_3(-(~417i));
    global0 = func_3(~abs(_wgslsmith_sub_i32(~u_input.b, global2.c | 23890i)));
    let var_0 = Struct_1(max(~_wgslsmith_div_vec2_i32(global2.a, vec2<i32>(-1i, global2.c)), reverseBits(global2.a)) >> (_wgslsmith_div_vec2_u32(vec2<u32>(select(0u, global2.b.x, false), _wgslsmith_add_u32(11428u, u_input.a.x)), ~select(vec2<u32>(global2.b.x, 0u), vec2<u32>(u_input.a.x, u_input.a.x), global0.x)) % vec2<u32>(32u)), abs(~(~u_input.a.yzw)), _wgslsmith_clamp_i32(arg_2, reverseBits(countOneBits(-arg_2)), -_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(global2.a.x, global2.a.x), vec2<i32>(global2.c, 28476i), vec2<i32>(29788i, 1i)), vec2<i32>(-2147483647i, 1i))));
    var var_1 = vec2<f32>(-1392f, arg_3.x);
    global1 = array<vec3<i32>, 14>();
    return var_0;
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    var var_0 = vec3<i32>(u_input.b, ~_wgslsmith_sub_i32(-8559i, u_input.b), 1i);
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-840f, -640f, -1647f, 684f))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, 434f, 2128f, -623f), vec4<f32>(719f, -689f, -1042f, -911f), true))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1501f, 1234f, -570f, -500f))))) - vec4<f32>(_wgslsmith_f_op_f32(1000f + 265f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1101f * -1000f) + 470f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -207f)), -645f));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(max(var_1.x, var_1.x)))), 301f);
    return arg_1;
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    global1 = array<vec3<i32>, 14>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-604f, _wgslsmith_div_f32(-320f, -791f), true)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -309f), _wgslsmith_f_op_f32(max(359f, 430f))) + 1000f))) - _wgslsmith_f_op_f32(max(-1229f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(213f)))))));
    global2 = arg_0;
    global2 = Struct_1(~(~(max(global2.a, vec2<i32>(1997i, 2147483647i)) | vec2<i32>(global2.a.x, 0i))), global2.b, abs(_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(u_input.b, global2.c), -u_input.b), reverseBits(global2.a))));
    let var_1 = ~firstLeadingBit(countOneBits(~arg_0.b.yz));
    return Struct_1(~(~abs(arg_0.a)), _wgslsmith_clamp_vec3_u32(vec3<u32>(firstTrailingBit(~u_input.a.x), ~_wgslsmith_mod_u32(87845u, 50010u), ~_wgslsmith_add_u32(var_1.x, global2.b.x)), global2.b >> (~(~vec3<u32>(34907u, 4294967295u, var_1.x)) % vec3<u32>(32u)), ~arg_0.b), 2147483647i);
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<bool>) -> Struct_1 {
    let var_0 = func_2(all(!(!vec3<bool>(false, true, arg_3.x))), u_input.a.x, reverseBits(~(~global2.a.x)) ^ global2.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-275f, 1177f) - vec2<f32>(611f, -2194f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(358f, -101f))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-273f, 1689f)))))));
    var var_1 = Struct_1(vec2<i32>(-2147483647i, _wgslsmith_add_i32(-9546i, _wgslsmith_div_i32(arg_0.a.x, u_input.b) >> (64672u % 32u))), min(firstLeadingBit(u_input.a.wxz), var_0.b), arg_1.a.x);
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(599f + -1000f))), -512f))));
    global1 = array<vec3<i32>, 14>();
    let var_3 = Struct_1(~arg_0.a, _wgslsmith_mod_vec3_u32(func_4(arg_2.a, Struct_1(vec2<i32>(-1i, arg_1.a.x), var_1.b, var_1.a.x), 1u).b << (~global2.b % vec3<u32>(32u)), vec3<u32>(1u, _wgslsmith_clamp_u32(8899u, 12890u, 1u), ~arg_2.b.x)) | _wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(var_1.b, _wgslsmith_sub_vec3_u32(global2.b, arg_2.b)), vec3<u32>(_wgslsmith_mult_u32(78537u, var_1.b.x), 67545u, 37019u ^ var_1.b.x), ~arg_1.b | ~var_1.b), i32(-1i) * -u_input.b);
    return func_5(arg_1);
}

fn func_1(arg_0: vec2<i32>) -> Struct_1 {
    global2 = func_6(func_5(func_4(_wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, 1i), vec2<i32>(-1i, -22456i)), func_2(false, u_input.a.x, -4919i, _wgslsmith_div_vec2_f32(vec2<f32>(-1402f, -1807f), vec2<f32>(2064f, 485f))), u_input.a.x | countOneBits(u_input.a.x))), Struct_1(countOneBits(-vec2<i32>(u_input.b, 23126i)) ^ (-global2.a | arg_0), countOneBits(select(~vec3<u32>(global2.b.x, 0u, global2.b.x), global2.b, global0.x & global0.x)), _wgslsmith_mod_i32(arg_0.x, -20463i) & func_4(global2.a, Struct_1(global2.a, vec3<u32>(u_input.a.x, global2.b.x, 1u), u_input.b), ~24519u).c), Struct_1(arg_0 ^ (vec2<i32>(arg_0.x, 7132i) >> ((vec2<u32>(26962u, 4294967295u) | u_input.a.zy) % vec2<u32>(32u))), ~u_input.a.xzz, _wgslsmith_clamp_i32(func_5(Struct_1(vec2<i32>(12799i, u_input.b), vec3<u32>(global2.b.x, 1u, u_input.a.x), global2.c)).c, _wgslsmith_mult_i32(reverseBits(-21602i), global2.a.x), 2428i)), vec3<bool>(true, global2.b.x == _wgslsmith_mult_u32(max(23136u, global2.b.x), ~19976u), false));
    let var_0 = all(!vec2<bool>(any(!global0.yw), any(vec4<bool>(false, global0.x, global0.x, true))));
    var var_1 = abs(func_2(all(!(!vec4<bool>(true, false, true, global0.x))), _wgslsmith_mult_u32(_wgslsmith_div_u32(1u, ~u_input.a.x), 10586u), _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(arg_0.x, 2725i, -2147483647i, global2.c)), _wgslsmith_div_vec4_i32(vec4<i32>(0i, global2.a.x, 2147483647i, -2300i), vec4<i32>(u_input.b, 1i, arg_0.x, arg_0.x))) ^ ~(~arg_0.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(398f, -455f), -104f))).a.x);
    return Struct_1(vec2<i32>(u_input.b, -_wgslsmith_sub_i32(~14206i, global2.c)), vec3<u32>(~6332u, 1u, reverseBits(func_4(arg_0, Struct_1(arg_0, vec3<u32>(u_input.a.x, 1u, u_input.a.x), 27794i), ~global2.b.x).b.x)), arg_0.x);
}

fn func_7(arg_0: Struct_1, arg_1: u32) -> Struct_1 {
    var var_0 = Struct_1(select(vec2<i32>(~2147483647i, global2.c) << (~_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, u_input.a.x), vec2<u32>(0u, global2.b.x)) % vec2<u32>(32u)), -_wgslsmith_div_vec2_i32(~vec2<i32>(u_input.b, -2147483647i), vec2<i32>(u_input.b, u_input.b) >> (u_input.a.xx % vec2<u32>(32u))), true), global2.b, global2.c);
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(1060f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - -887f)), -155f, _wgslsmith_f_op_f32(935f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-726f)))), 100f));
    var_0 = func_4(vec2<i32>(~(~(u_input.b | 0i)), arg_0.c), Struct_1(_wgslsmith_mult_vec2_i32(select(firstTrailingBit(vec2<i32>(0i, 1i)), vec2<i32>(var_0.c, u_input.b), global0.yw), global2.a), var_0.b, reverseBits(func_2(global0.x, u_input.a.x >> (4294967295u % 32u), -u_input.b, _wgslsmith_f_op_vec2_f32(var_1.wx + vec2<f32>(var_1.x, var_1.x))).a.x)), var_0.b.x << (func_2(all(!vec4<bool>(false, global0.x, true, false)), arg_0.b.x, u_input.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.wx))).b.x % 32u));
    let var_2 = ~arg_0.b;
    let var_3 = ~(vec2<i32>(16203i, _wgslsmith_mult_i32(-51123i, _wgslsmith_sub_i32(var_0.c, -3483i))) | var_0.a);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(func_1(vec2<i32>(2147483647i, global2.c)), 39221u);
    global2 = Struct_1(~abs(vec2<i32>(_wgslsmith_mult_i32(-35511i, -3198i), global2.a.x)), _wgslsmith_div_vec3_u32(u_input.a.xwx, vec3<u32>(~47330u, 45674u, 4294967295u)) ^ (global2.b >> (u_input.a.zwz % vec3<u32>(32u))), 39982i);
    let var_1 = Struct_1(func_5(func_1(vec2<i32>(32260i, i32(-1i) * -9253i))).a, func_6(var_0, var_0, var_0, vec3<bool>(_wgslsmith_mult_i32(u_input.b, var_0.c) >= u_input.b, !func_3(global2.c).x, all(vec2<bool>(global0.x, global0.x)))).b, min(abs(abs(global2.c)), ~(-global2.a.x)));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1000f, -1231f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(1120f))))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-773f - -479f))));
    let var_3 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-206f, -641f), vec2<f32>(-691f, -1514f)))))))));
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1211f)));
    let var_4 = Struct_1(_wgslsmith_mod_vec2_i32(var_1.a << (select(var_0.b.xz, u_input.a.zy, vec2<bool>(global0.x, global0.x)) % vec2<u32>(32u)), vec2<i32>(_wgslsmith_mult_i32(31419i & global2.c, var_0.c), ~firstLeadingBit(-43035i))), ~reverseBits(vec3<u32>(u_input.a.x, 1u, 0u) << (var_0.b % vec3<u32>(32u))), i32(-1i) * -16653i);
    global2 = Struct_1(vec2<i32>(1i, global2.c), _wgslsmith_sub_vec3_u32(func_6(func_4(firstTrailingBit(var_1.a), func_1(vec2<i32>(-4837i, var_1.a.x)), var_4.b.x), var_4, var_0, vec3<bool>(true, global0.x, global0.x | false)).b, vec3<u32>(45305u, ~1u, 25881u)), var_0.a.x);
    var var_5 = reverseBits(select(vec4<u32>(global2.b.x, var_1.b.x, var_0.b.x, 1u) ^ max(u_input.a, u_input.a), firstTrailingBit(select(u_input.a, u_input.a, true)), !(!global0.x)) & countOneBits(~_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, global2.b.x, global2.b.x, global2.b.x), u_input.a)));
    let x = u_input.a;
    s_output = StorageBuffer(-var_4.c);
}

