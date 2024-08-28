struct Struct_1 {
    a: i32,
    b: u32,
    c: bool,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec2<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_1,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 32>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec4<f32>) -> vec2<bool> {
    global0 = array<Struct_2, 32>();
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(873f, arg_0.x)))));
    let var_1 = vec4<bool>(false, !all(vec3<bool>(true, true, true)), u_input.a.x <= ~u_input.a.x, !(~firstLeadingBit(u_input.a.x) >= ~u_input.a.x));
    var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - -271f))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-arg_0.zw);
    return !(!var_1.yx);
}

fn func_2(arg_0: bool) -> u32 {
    global0 = array<Struct_2, 32>();
    global0 = array<Struct_2, 32>();
    let var_0 = vec2<bool>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-1590f)))) < 1564f, any(func_3(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(152f, -556f, -489f, 706f)))))));
    var var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -829f) * -225f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1084f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-2011f, -816f, arg_0)) - _wgslsmith_f_op_f32(f32(-1f) * -454f)) + 1000f)), true & var_0.x));
    var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-133f - 1769f), _wgslsmith_div_f32(368f, -604f)));
    return _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a.x | u_input.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(66433u, u_input.a.x), u_input.a.zy)), ~(firstLeadingBit(u_input.a.yz) | vec2<u32>(18415u, 0u))), u_input.a.x | ~(~reverseBits(4294967295u)));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-942f, -640f))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(611f, 2515f)), vec2<f32>(-1213f, 440f), all(vec3<bool>(arg_1.a.c, arg_1.a.d, arg_1.c.d)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1000f, -1107f), vec2<f32>(-420f, 184f))))))));
    var_0 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-203f + -2799f)) * -849f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(566f, var_0.x)))))), !vec2<bool>(all(!vec2<bool>(arg_1.b.d, arg_0.b.c.d)), func_3(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.x, var_0.x, 474f, -706f)))).x)));
    let var_1 = func_2(arg_1.a.d);
    var var_2 = arg_0.d;
    let var_3 = ~countOneBits(~arg_1.d.x) < _wgslsmith_div_u32(countOneBits(52069u << ((arg_0.b.d.x & 4294967295u) % 32u)), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(31287u, 0u, 0u, 1u), arg_0.d), vec4<u32>(u_input.a.x, countOneBits(var_1), 18982u, _wgslsmith_mod_u32(1u, arg_0.a.b.b))));
    return arg_0;
}

fn func_5(arg_0: Struct_3, arg_1: Struct_3) -> Struct_2 {
    var var_0 = vec4<bool>(!(true && any(select(vec4<bool>(arg_0.b.c.d, arg_1.a.b.d, true, arg_0.b.a.d), vec4<bool>(arg_0.a.c.d, arg_0.c.c, arg_1.b.a.c, arg_1.a.c.c), vec4<bool>(arg_1.a.b.c, arg_1.b.b.d, arg_1.a.a.d, true)))), any(!vec4<bool>(true, any(vec2<bool>(arg_0.b.a.c, false)), true, true)), -31216i != _wgslsmith_add_i32(_wgslsmith_mod_i32(1i, u_input.b), min(abs(arg_0.b.c.a), _wgslsmith_mod_i32(arg_1.a.c.a, u_input.b))), _wgslsmith_mod_i32(~(~21110i), ~u_input.b) == _wgslsmith_clamp_i32(_wgslsmith_add_i32(_wgslsmith_add_i32(6342i, arg_0.a.c.a), 2147483647i), -u_input.b, arg_1.c.a));
    var_0 = select(!(!vec4<bool>(select(true, arg_1.c.c, var_0.x), all(var_0.zz), -2147483647i <= u_input.b, var_0.x)), select(vec4<bool>(!arg_0.c.c & true, var_0.x, !any(var_0.xw), var_0.x), !vec4<bool>(!arg_1.b.a.d, arg_0.a.c.a <= u_input.b, true != arg_0.c.d, true), arg_0.b.b.c | arg_1.a.a.d), any(!var_0.wwy));
    let var_1 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1560f, -1742f, -1174f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-135f, -146f, 1001f)))))));
    var_0 = !(!(!vec4<bool>(false, !var_0.x, var_0.x, true)));
    let var_2 = !select(var_0.xy, select(vec2<bool>(true, true), func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, var_1.x, var_1.x, 1323f))), select(select(var_0.yy, vec2<bool>(false, var_0.x), var_0.yx), select(var_0.zy, var_0.zy, var_0.xw), !arg_1.b.b.c)), true | (!arg_1.a.a.d | (1227f >= var_1.x)));
    return Struct_2(arg_0.a.a, Struct_1(arg_1.a.b.a, ~(~abs(arg_1.c.b)), all(var_2), any(!(!vec4<bool>(arg_0.b.a.d, true, var_0.x, false))), u_input.a.x), func_4(func_4(arg_0, Struct_2(func_4(arg_0, arg_0.b).c, func_4(arg_0, Struct_2(arg_1.c, arg_1.b.a, arg_0.a.a, vec2<u32>(u_input.a.x, 4294967295u))).a.b, arg_0.b.a, _wgslsmith_sub_vec2_u32(vec2<u32>(0u, u_input.a.x), arg_0.b.d))), global0[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_sub_u32(u_input.a.x >> (11695u % 32u), ~31402u)), 32u)]).c, abs(vec2<u32>(abs(0u), arg_0.a.c.e)));
}

fn func_6(arg_0: Struct_3, arg_1: vec2<u32>) -> Struct_1 {
    global0 = array<Struct_2, 32>();
    var var_0 = func_4(func_4(func_4(Struct_3(arg_0.b, func_4(Struct_3(Struct_2(arg_0.c, Struct_1(-60115i, u_input.a.x, false, arg_0.a.a.c, 65980u), Struct_1(-51644i, 72272u, arg_0.a.b.c, arg_0.c.d, 65130u), vec2<u32>(u_input.a.x, 12913u)), Struct_2(Struct_1(-51337i, arg_1.x, true, arg_0.a.b.d, 1u), arg_0.c, Struct_1(-16385i, 63040u, true, arg_0.c.d, arg_1.x), arg_0.d.yz), arg_0.a.b, vec4<u32>(u_input.a.x, 4294967295u, 38145u, arg_1.x)), global0[_wgslsmith_index_u32(1u, 32u)]).b, func_4(arg_0, arg_0.a).b.b, ~vec4<u32>(arg_1.x, u_input.a.x, 5643u, arg_0.d.x)), global0[_wgslsmith_index_u32(~arg_0.b.c.b, 32u)]), global0[_wgslsmith_index_u32(u_input.a.x, 32u)]), Struct_2(Struct_1(-arg_0.c.a, _wgslsmith_sub_u32(1017u, arg_0.b.c.b) | abs(1u), any(vec4<bool>(arg_0.b.a.c, false, true, arg_0.b.a.d)), false, ~(~arg_1.x)), func_4(func_4(Struct_3(arg_0.a, global0[_wgslsmith_index_u32(4294967295u, 32u)], Struct_1(arg_0.c.a, 1u, arg_0.c.d, false, u_input.a.x), vec4<u32>(arg_1.x, arg_0.c.e, 4294967295u, 1u)), Struct_2(arg_0.b.a, arg_0.b.a, arg_0.c, vec2<u32>(1u, 1u))), func_4(Struct_3(arg_0.b, global0[_wgslsmith_index_u32(arg_0.d.x, 32u)], Struct_1(u_input.b, 52967u, true, arg_0.c.c, u_input.a.x), vec4<u32>(u_input.a.x, arg_0.d.x, arg_0.b.a.e, 4294967295u)), Struct_2(Struct_1(-37183i, 65233u, true, true, 0u), arg_0.c, arg_0.a.c, vec2<u32>(4294967295u, 34009u))).a).a.a, func_5(Struct_3(Struct_2(arg_0.c, Struct_1(0i, 4294967295u, true, false, 63141u), Struct_1(u_input.b, arg_0.d.x, arg_0.b.a.c, true, 11248u), arg_0.d.wx), Struct_2(arg_0.c, Struct_1(arg_0.b.c.a, 4294967295u, true, arg_0.c.d, 1u), arg_0.b.a, u_input.a.zy), arg_0.b.b, min(vec4<u32>(arg_1.x, u_input.a.x, 94129u, arg_0.c.e), arg_0.d)), Struct_3(arg_0.a, global0[_wgslsmith_index_u32(90467u, 32u)], Struct_1(u_input.b, 1u, false, arg_0.a.b.c, 7232u), vec4<u32>(1581u, 4294967295u, 1u, 0u))).b, arg_1)).c;
    var var_1 = !(!select(!func_3(vec4<f32>(-547f, 1021f, 1357f, -282f)), vec2<bool>(var_0.c, false), vec2<bool>(true, true)));
    let var_2 = abs(~vec2<i32>(max(arg_0.a.b.a, countOneBits(u_input.b)), _wgslsmith_sub_i32(u_input.b, u_input.b)));
    let var_3 = _wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(~(-2147483647i), _wgslsmith_dot_vec2_i32(var_2, var_2)), reverseBits(arg_0.a.c.a)), var_2);
    return arg_0.b.a;
}

fn func_1(arg_0: vec4<i32>) -> u32 {
    global0 = array<Struct_2, 32>();
    global0 = array<Struct_2, 32>();
    global0 = array<Struct_2, 32>();
    var var_0 = func_6(Struct_3(func_5(func_4(Struct_3(global0[_wgslsmith_index_u32(23142u, 32u)], Struct_2(Struct_1(-52027i, u_input.a.x, false, false, u_input.a.x), Struct_1(0i, u_input.a.x, true, false, 1u), Struct_1(arg_0.x, 47997u, true, false, u_input.a.x), vec2<u32>(u_input.a.x, 4294967295u)), Struct_1(arg_0.x, u_input.a.x, false, false, 46489u), vec4<u32>(73776u, 4294967295u, u_input.a.x, 29442u)), global0[_wgslsmith_index_u32(func_2(false), 32u)]), func_4(func_4(Struct_3(global0[_wgslsmith_index_u32(u_input.a.x, 32u)], global0[_wgslsmith_index_u32(0u, 32u)], Struct_1(arg_0.x, u_input.a.x, false, false, 1806u), vec4<u32>(u_input.a.x, u_input.a.x, 35576u, 55329u)), global0[_wgslsmith_index_u32(1u, 32u)]), global0[_wgslsmith_index_u32(1u, 32u)])), func_4(Struct_3(func_4(Struct_3(global0[_wgslsmith_index_u32(u_input.a.x, 32u)], global0[_wgslsmith_index_u32(4294967295u, 32u)], Struct_1(-1i, 1u, false, false, u_input.a.x), vec4<u32>(0u, u_input.a.x, u_input.a.x, 4239u)), global0[_wgslsmith_index_u32(1u, 32u)]).b, Struct_2(Struct_1(u_input.b, 4294967295u, true, false, 1u), Struct_1(10632i, 17799u, true, false, u_input.a.x), Struct_1(arg_0.x, 57230u, false, false, u_input.a.x), u_input.a.yz), func_5(Struct_3(Struct_2(Struct_1(-6842i, u_input.a.x, false, true, 99802u), Struct_1(arg_0.x, 101534u, false, false, u_input.a.x), Struct_1(arg_0.x, u_input.a.x, false, false, 0u), u_input.a.xx), Struct_2(Struct_1(u_input.b, u_input.a.x, true, true, 4294967295u), Struct_1(11777i, 0u, false, false, u_input.a.x), Struct_1(0i, u_input.a.x, true, true, u_input.a.x), vec2<u32>(u_input.a.x, 10167u)), Struct_1(u_input.b, u_input.a.x, true, false, 85796u), vec4<u32>(u_input.a.x, 134615u, u_input.a.x, 4294967295u)), Struct_3(global0[_wgslsmith_index_u32(u_input.a.x, 32u)], global0[_wgslsmith_index_u32(u_input.a.x, 32u)], Struct_1(47505i, 83451u, false, true, u_input.a.x), vec4<u32>(121489u, u_input.a.x, u_input.a.x, 19921u))).b, select(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, 0u, 4294967295u), vec4<bool>(true, true, true, false))), Struct_2(Struct_1(arg_0.x, u_input.a.x, true, false, 1u), Struct_1(u_input.b, 4294967295u, false, true, u_input.a.x), Struct_1(-21309i, 9414u, true, false, u_input.a.x), u_input.a.xx)).a, func_5(Struct_3(func_5(Struct_3(global0[_wgslsmith_index_u32(70247u, 32u)], Struct_2(Struct_1(-1i, 4294967295u, true, true, 4294967295u), Struct_1(arg_0.x, 0u, false, false, u_input.a.x), Struct_1(arg_0.x, u_input.a.x, true, true, 4294967295u), vec2<u32>(u_input.a.x, u_input.a.x)), Struct_1(arg_0.x, u_input.a.x, false, false, u_input.a.x), vec4<u32>(u_input.a.x, 41798u, 17151u, u_input.a.x)), Struct_3(Struct_2(Struct_1(arg_0.x, u_input.a.x, false, true, 1u), Struct_1(u_input.b, u_input.a.x, false, true, 20799u), Struct_1(53121i, 4294967295u, true, true, 24110u), vec2<u32>(u_input.a.x, u_input.a.x)), Struct_2(Struct_1(u_input.b, 4294967295u, true, true, u_input.a.x), Struct_1(60507i, 1u, true, false, u_input.a.x), Struct_1(u_input.b, u_input.a.x, true, false, 6357u), u_input.a.zy), Struct_1(u_input.b, 4294967295u, false, false, 17395u), vec4<u32>(13428u, 4294967295u, u_input.a.x, u_input.a.x))), func_5(Struct_3(global0[_wgslsmith_index_u32(u_input.a.x, 32u)], Struct_2(Struct_1(1i, u_input.a.x, true, true, u_input.a.x), Struct_1(-1i, u_input.a.x, false, true, u_input.a.x), Struct_1(4205i, u_input.a.x, false, false, u_input.a.x), u_input.a.zy), Struct_1(u_input.b, 4294967295u, false, false, 42432u), vec4<u32>(u_input.a.x, u_input.a.x, 68303u, 0u)), Struct_3(global0[_wgslsmith_index_u32(26005u, 32u)], Struct_2(Struct_1(-3675i, 28501u, false, true, 4294967295u), Struct_1(arg_0.x, u_input.a.x, false, false, 4294967295u), Struct_1(arg_0.x, u_input.a.x, false, false, u_input.a.x), vec2<u32>(0u, u_input.a.x)), Struct_1(u_input.b, u_input.a.x, false, false, u_input.a.x), vec4<u32>(u_input.a.x, 0u, u_input.a.x, 0u))), Struct_1(u_input.b, u_input.a.x, true, false, 0u), vec4<u32>(u_input.a.x, 1u, u_input.a.x, 3919u) | vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), Struct_3(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a.x, 29387u), 32u)], Struct_2(Struct_1(arg_0.x, u_input.a.x, false, true, u_input.a.x), Struct_1(u_input.b, 222u, false, false, 1u), Struct_1(2147483647i, u_input.a.x, false, false, 1u), vec2<u32>(38102u, 4294967295u)), func_5(Struct_3(Struct_2(Struct_1(arg_0.x, u_input.a.x, true, true, u_input.a.x), Struct_1(-2147483647i, u_input.a.x, true, false, 0u), Struct_1(arg_0.x, u_input.a.x, false, true, 4294967295u), u_input.a.yz), Struct_2(Struct_1(-1i, 0u, false, false, 4294967295u), Struct_1(-2147483647i, 0u, false, true, u_input.a.x), Struct_1(arg_0.x, 8088u, true, true, u_input.a.x), u_input.a.zy), Struct_1(u_input.b, 5616u, true, false, u_input.a.x), vec4<u32>(52712u, u_input.a.x, u_input.a.x, 1u)), Struct_3(global0[_wgslsmith_index_u32(u_input.a.x, 32u)], Struct_2(Struct_1(79463i, u_input.a.x, false, true, u_input.a.x), Struct_1(arg_0.x, u_input.a.x, true, true, 1u), Struct_1(arg_0.x, u_input.a.x, false, false, 15982u), vec2<u32>(u_input.a.x, u_input.a.x)), Struct_1(u_input.b, 0u, true, true, 4294967295u), vec4<u32>(0u, 4294967295u, u_input.a.x, u_input.a.x))).a, ~vec4<u32>(29923u, 4872u, u_input.a.x, 1u))).c, vec4<u32>(firstTrailingBit(select(u_input.a.x, 4294967295u, true)), 0u, 1u, _wgslsmith_div_u32(_wgslsmith_mod_u32(u_input.a.x, 0u), select(29325u, 26547u, true)))), abs(firstTrailingBit(u_input.a.yy)));
    let var_1 = Struct_3(global0[_wgslsmith_index_u32(var_0.e, 32u)], func_4(func_4(Struct_3(func_5(Struct_3(Struct_2(Struct_1(var_0.a, 0u, true, true, 43127u), Struct_1(var_0.a, u_input.a.x, false, var_0.d, var_0.e), Struct_1(var_0.a, 0u, true, var_0.c, 315u), vec2<u32>(var_0.b, var_0.b)), Struct_2(Struct_1(17786i, u_input.a.x, var_0.d, true, 4294967295u), Struct_1(arg_0.x, 0u, true, var_0.c, u_input.a.x), Struct_1(u_input.b, u_input.a.x, var_0.c, true, 14512u), vec2<u32>(var_0.b, 17470u)), Struct_1(-1i, u_input.a.x, var_0.c, var_0.c, 60791u), vec4<u32>(var_0.b, var_0.b, 18384u, var_0.b)), Struct_3(global0[_wgslsmith_index_u32(4294967295u, 32u)], global0[_wgslsmith_index_u32(var_0.b, 32u)], Struct_1(0i, var_0.e, var_0.c, var_0.d, u_input.a.x), vec4<u32>(var_0.b, 4294967295u, 19294u, 42665u))), Struct_2(Struct_1(-1i, 21473u, var_0.d, true, var_0.b), Struct_1(-35700i, var_0.e, var_0.c, var_0.d, var_0.b), Struct_1(var_0.a, u_input.a.x, false, true, 0u), u_input.a.yz), Struct_1(u_input.b, u_input.a.x, true, var_0.d, 1u), ~vec4<u32>(u_input.a.x, var_0.e, var_0.e, u_input.a.x)), global0[_wgslsmith_index_u32(~(~4294967295u), 32u)]), Struct_2(func_5(func_4(Struct_3(Struct_2(Struct_1(arg_0.x, 0u, var_0.d, false, 0u), Struct_1(u_input.b, u_input.a.x, var_0.d, var_0.d, u_input.a.x), Struct_1(2147483647i, 0u, var_0.c, false, 47773u), vec2<u32>(4294967295u, 85002u)), global0[_wgslsmith_index_u32(u_input.a.x, 32u)], Struct_1(46727i, u_input.a.x, var_0.c, false, var_0.e), vec4<u32>(var_0.b, u_input.a.x, var_0.b, var_0.e)), global0[_wgslsmith_index_u32(0u, 32u)]), Struct_3(Struct_2(Struct_1(u_input.b, var_0.b, var_0.c, var_0.c, 0u), Struct_1(var_0.a, 24191u, false, var_0.d, u_input.a.x), Struct_1(u_input.b, 55451u, true, false, u_input.a.x), vec2<u32>(1u, var_0.e)), Struct_2(Struct_1(-18183i, 4294967295u, var_0.d, var_0.d, u_input.a.x), Struct_1(arg_0.x, var_0.b, false, var_0.d, 0u), Struct_1(var_0.a, u_input.a.x, var_0.d, true, u_input.a.x), vec2<u32>(u_input.a.x, u_input.a.x)), Struct_1(var_0.a, u_input.a.x, var_0.d, var_0.d, var_0.b), vec4<u32>(20846u, var_0.e, 6776u, 0u))).a, Struct_1(_wgslsmith_clamp_i32(var_0.a, 47847i, arg_0.x), _wgslsmith_sub_u32(u_input.a.x, 4294967295u), !var_0.c, any(vec3<bool>(true, false, var_0.c)), var_0.e ^ var_0.e), Struct_1(-2147483647i, 5453u, var_0.c, !var_0.c, var_0.e), abs(select(u_input.a.zz, vec2<u32>(4294967295u, 0u), vec2<bool>(var_0.d, var_0.c))))).a, Struct_1(u_input.b, firstTrailingBit(4294967295u), false, !(!var_0.c && false), var_0.e), abs(firstTrailingBit(reverseBits(abs(vec4<u32>(101191u, 4294967295u, var_0.b, 4294967295u))))));
    return func_5(func_4(func_4(func_4(var_1, Struct_2(var_1.b.c, Struct_1(2147483647i, 4294967295u, var_1.b.c.d, true, 55566u), Struct_1(-21636i, u_input.a.x, false, var_1.b.c.d, var_1.b.c.b), vec2<u32>(3357u, u_input.a.x))), var_1.b), global0[_wgslsmith_index_u32(0u, 32u)]), var_1).b.b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 32>();
    var var_0 = abs(~(-2147483647i));
    var var_1 = vec3<u32>(25692u, _wgslsmith_clamp_u32(func_1(vec4<i32>(u_input.b, u_input.b, u_input.b, -26969i) | abs(vec4<i32>(u_input.b, -1i, 1i, -10i))), 1u, ~(~u_input.a.x)), _wgslsmith_add_u32(91709u | reverseBits(~u_input.a.x), min(func_6(Struct_3(Struct_2(Struct_1(1254i, u_input.a.x, true, true, 0u), Struct_1(u_input.b, 1u, true, true, u_input.a.x), Struct_1(0i, u_input.a.x, false, true, 4294967295u), u_input.a.yx), global0[_wgslsmith_index_u32(18086u, 32u)], Struct_1(u_input.b, 39216u, false, false, 40606u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 1u)), u_input.a.zy | vec2<u32>(u_input.a.x, u_input.a.x)).b, 4294967295u)));
    var_0 = countOneBits(-5425i);
    var_0 = -1016i;
    var var_2 = global0[_wgslsmith_index_u32(abs(_wgslsmith_mod_u32(_wgslsmith_div_u32(1u, u_input.a.x), _wgslsmith_sub_u32(~u_input.a.x, var_1.x) >> (108758u % 32u))), 32u)];
    let var_3 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_div_u32(countOneBits(~var_2.a.b), 8738u), firstLeadingBit(~firstTrailingBit(u_input.a.x))) >> (_wgslsmith_mult_u32(7884u, _wgslsmith_mod_u32(0u, ~var_1.x << (var_1.x % 32u))) % 32u), 32u)];
    let var_4 = select(!vec4<bool>(true != (u_input.b > 2147483647i), true, select(true, true, true), func_4(Struct_3(Struct_2(Struct_1(var_3.c.a, 35730u, false, var_3.c.d, var_2.c.b), Struct_1(1i, 4294967295u, false, true, 0u), Struct_1(-1588i, 49320u, var_3.b.d, var_3.b.d, u_input.a.x), vec2<u32>(var_1.x, u_input.a.x)), global0[_wgslsmith_index_u32(var_1.x, 32u)], Struct_1(u_input.b, 38577u, var_2.c.c, var_2.a.c, var_1.x), vec4<u32>(var_2.c.e, var_1.x, var_1.x, u_input.a.x)), Struct_2(var_3.a, var_2.a, Struct_1(var_3.c.a, 13066u, var_2.c.d, var_3.b.c, u_input.a.x), vec2<u32>(var_1.x, var_2.c.b))).b.c.c), !(!(!vec4<bool>(true, false, var_3.c.d, true))), _wgslsmith_clamp_i32(-_wgslsmith_mod_i32(u_input.b, -16126i), abs(-7830i), 33144i) != -1i);
    var var_5 = vec3<i32>(-abs(-_wgslsmith_mult_i32(var_2.b.a, -1i)), var_2.a.a, ~(-_wgslsmith_div_i32(~(-13151i), var_2.c.a)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -906f) - _wgslsmith_f_op_f32(-103f - -1000f)), _wgslsmith_f_op_f32(-1508f + _wgslsmith_f_op_f32(round(1064f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(250f)) * -688f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f))))), max(select(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 63878u, 4294967295u, 1u), vec4<u32>(var_2.a.b, 56882u, 0u, var_1.x)), ~vec4<u32>(4294967295u, u_input.a.x, 7026u, 1u), vec4<bool>(false, true, false, var_4.x)) & ~_wgslsmith_add_vec4_u32(vec4<u32>(var_1.x, 13483u, 4294967295u, var_1.x), vec4<u32>(var_1.x, 4294967295u, 65586u, 0u)), vec4<u32>(var_1.x & _wgslsmith_add_u32(var_3.d.x, 36865u), 4294967295u, 42071u, _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_3.a.b, var_1.x, 0u, var_1.x), vec4<u32>(var_1.x, 1254u, 33973u, u_input.a.x), vec4<u32>(var_3.d.x, 0u, 1u, u_input.a.x)), max(vec4<u32>(var_3.a.e, 4294967295u, 4294967295u, var_3.b.b), vec4<u32>(1u, var_1.x, 4294967295u, 365u))))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(107f)), _wgslsmith_f_op_f32(min(1000f, -1505f)), _wgslsmith_f_op_f32(1413f - 1056f))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-760f, 1395f, -1163f))))));
}

