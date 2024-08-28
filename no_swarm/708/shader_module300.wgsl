struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: i32,
    b: vec2<u32>,
    c: Struct_2,
}

struct Struct_4 {
    a: vec2<i32>,
    b: bool,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
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

var<private> global0: Struct_3 = Struct_3(0i, vec2<u32>(0u, 1u), Struct_2(vec4<f32>(-230f, 901f, 192f, 661f), Struct_1(10112u, vec4<u32>(12798u, 1u, 4294967295u, 4950u), vec4<u32>(4294967295u, 4294967295u, 45615u, 4294967295u)), true));

var<private> global1: Struct_3;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec3<f32>, arg_1: bool) -> i32 {
    global0 = Struct_3(0i, _wgslsmith_sub_vec2_u32(vec2<u32>(1u, global0.b.x), select(global0.c.b.b.wz, vec2<u32>(_wgslsmith_dot_vec2_u32(global0.c.b.c.xx, global1.b), _wgslsmith_clamp_u32(1u, u_input.a, 4294967295u)), vec2<bool>(true, global0.a <= global1.a))), global0.c);
    var var_0 = vec2<i32>(-2147483647i, _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(min(_wgslsmith_sub_vec4_i32(vec4<i32>(491i, 0i, -50112i, 0i), vec4<i32>(-1i, global0.a, u_input.c.x, 2147483647i)), firstTrailingBit(vec4<i32>(global0.a, -1i, -8070i, 0i))), firstLeadingBit(vec4<i32>(global0.a, global0.a, 46253i, -72301i) << (global0.c.b.c % vec4<u32>(32u)))), global0.a));
    var var_1 = 1i;
    global1 = Struct_3(_wgslsmith_clamp_i32(global0.a, global1.a, -global0.a), vec2<u32>(25185u, _wgslsmith_mod_u32(1u, ~1u) << (_wgslsmith_clamp_u32(_wgslsmith_sub_u32(79232u, u_input.a), reverseBits(u_input.a), max(73854u, 29956u)) % 32u)), global0.c);
    let var_2 = global0.c.c;
    return global1.a;
}

fn func_2() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(exp2(global0.c.a.x));
    let var_1 = Struct_4(u_input.c, false, abs(func_3(global0.c.a.xyw, 1618f > _wgslsmith_f_op_f32(select(405f, 457f, global0.c.c)))));
    let var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1784f - -524f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(830f + 1128f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0.c.a.x * -575f), 1f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-673f)) + _wgslsmith_f_op_f32(-global1.c.a.x)), 246f, false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c.a.x) + _wgslsmith_f_op_f32(sign(global1.c.a.x))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.c.a.x) + _wgslsmith_f_op_f32(global0.c.a.x - -1000f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(global0.c.a + vec4<f32>(global0.c.a.x, global0.c.a.x, 959f, global1.c.a.x)))) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c.a.x, global0.c.a.x, global0.c.a.x, 327f)))))));
    var_0 = 194f;
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -781f), _wgslsmith_f_op_f32(abs(-212f)), _wgslsmith_f_op_f32(ceil(global0.c.a.x)), _wgslsmith_f_op_f32(floor(-419f)))))) * _wgslsmith_f_op_vec4_f32(floor(global0.c.a)));
    return Struct_2(var_3, global0.c.b, u_input.a > (global0.b.x >> (_wgslsmith_sub_u32(4294967295u, global1.c.b.c.x ^ global1.c.b.b.x) % 32u)));
}

fn func_4(arg_0: vec3<bool>, arg_1: u32, arg_2: vec4<i32>, arg_3: Struct_2) -> Struct_3 {
    global0 = Struct_3(_wgslsmith_mod_i32(global0.a, 47327i), _wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(arg_3.b.c.x, 1u), ~func_2().b.c.yx), _wgslsmith_add_vec2_u32(min(vec2<u32>(arg_3.b.a, global1.c.b.c.x), ~vec2<u32>(61603u, arg_1)), global1.b)), Struct_2(global0.c.a, Struct_1(~_wgslsmith_add_u32(4294967295u, global1.b.x), arg_3.b.c, ~vec4<u32>(global0.b.x, 0u, 23600u, arg_3.b.b.x)), !global0.c.c));
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_3.a.zyw + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.c.a.yxy - vec3<f32>(global1.c.a.x, -2814f, arg_3.a.x))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.c.a.yzx) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(global1.c.a.x, 2253f, -162f)))))) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), arg_3.a.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c.a.x - -1590f))))));
    global1 = Struct_3(global0.a, global1.b, func_2());
    let var_1 = Struct_3(31115i << (countOneBits(reverseBits(0u)) % 32u), vec2<u32>(~select(arg_1, ~60414u, global0.c.c), _wgslsmith_dot_vec3_u32(abs(~vec3<u32>(0u, 81056u, arg_3.b.a)), vec3<u32>(4294967295u, 4294967295u, 1u))), func_2());
    var var_2 = 4294967295u;
    return var_1;
}

fn func_5(arg_0: Struct_3) -> Struct_2 {
    let var_0 = ~(vec2<i32>(20006i << (_wgslsmith_dot_vec3_u32(vec3<u32>(32133u, 4294967295u, global0.c.b.c.x), global1.c.b.b.zwz) % 32u), (u_input.c.x ^ u_input.c.x) >> (abs(9627u) % 32u)) ^ vec2<i32>(i32(-1i) * -global0.a, abs(0i)));
    let var_1 = arg_0;
    global1 = Struct_3(i32(-1i) * -(~1i), vec2<u32>(~1u, _wgslsmith_div_u32(~_wgslsmith_dot_vec4_u32(global0.c.b.c, vec4<u32>(global1.b.x, var_1.c.b.b.x, 1u, global1.c.b.a)), arg_0.b.x)), Struct_2(_wgslsmith_f_op_vec4_f32(ceil(func_4(vec3<bool>(global0.c.c, arg_0.c.c, global1.c.c), global0.b.x, vec4<i32>(-54851i, var_1.a, -1i, global1.a) | vec4<i32>(-36828i, global1.a, 2147483647i, global1.a), Struct_2(vec4<f32>(global0.c.a.x, global0.c.a.x, -337f, var_1.c.a.x), Struct_1(40953u, vec4<u32>(4294967295u, 4294967295u, 4557u, arg_0.c.b.b.x), vec4<u32>(32355u, global0.c.b.b.x, global1.c.b.a, var_1.b.x)), true)).c.a)), arg_0.c.b, !select(true, true, arg_0.c.c)));
    return arg_0.c;
}

fn func_1(arg_0: Struct_1) -> Struct_2 {
    global0 = Struct_3(abs(-2147483647i), ~(~vec2<u32>(_wgslsmith_dot_vec3_u32(arg_0.c.www, global0.c.b.b.wzz), 10016u)), func_5(func_4(vec3<bool>(select(true, global1.c.c, global0.c.c), global1.c.c, global0.c.c || global1.c.c), ~(~global0.c.b.b.x), _wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(global1.a, u_input.c.x, global1.a, 14187i), vec4<i32>(-2147483647i, global0.a, global1.a, u_input.c.x)), vec4<i32>(u_input.c.x, global0.a, u_input.c.x, global1.a)), func_2())));
    global1 = Struct_3(0i, _wgslsmith_mod_vec2_u32(~vec2<u32>(~50366u, 1u), ~vec2<u32>(0u, 49428u) << (countOneBits(vec2<u32>(u_input.b, global0.b.x)) % vec2<u32>(32u))), func_2());
    return func_5(func_4(select(select(select(vec3<bool>(false, true, false), vec3<bool>(global1.c.c, global1.c.c, global1.c.c), vec3<bool>(global0.c.c, global1.c.c, false)), vec3<bool>(true, false, true), !vec3<bool>(global0.c.c, true, global1.c.c)), vec3<bool>(true, true, true), global0.c.c), u_input.a, countOneBits(vec4<i32>(1i, global1.a, global0.a, global1.a) << ((global0.c.b.c & vec4<u32>(49219u, arg_0.c.x, 4294967295u, arg_0.c.x)) % vec4<u32>(32u))), Struct_2(global1.c.a, Struct_1(~0u, ~vec4<u32>(1u, 26169u, 1u, global1.b.x), global1.c.b.c), false)));
}

fn func_6(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec2<bool>) -> Struct_2 {
    var var_0 = _wgslsmith_div_i32(global0.a, global0.a);
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.c.a.x) - func_2().a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.x) - -1319f), _wgslsmith_f_op_f32(step(-1366f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-822f)) + global1.c.a.x)))), 576f);
    var var_2 = func_4(!(!vec3<bool>(true, arg_1.c, !global1.c.c)), ~_wgslsmith_dot_vec4_u32(arg_0.b.b, global1.c.b.c), min(~abs(vec4<i32>(global0.a, -1i, -1i, -17735i)), abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(-27187i, 1i, 29587i, -9730i), vec4<i32>(1i, 517i, -2147483647i, 1i), vec4<i32>(global1.a, global0.a, 55787i, u_input.c.x)))) >> (~arg_1.b.c % vec4<u32>(32u)), func_1(global0.c.b));
    var_2 = Struct_3(-max(global0.a, ~global1.a & (global1.a >> (0u % 32u))), _wgslsmith_clamp_vec2_u32(vec2<u32>(~arg_1.b.c.x, min(arg_0.b.a, 1u) ^ global0.c.b.b.x), firstTrailingBit(abs(vec2<u32>(var_2.b.x, arg_0.b.b.x))), firstLeadingBit(vec2<u32>(~0u, ~global1.c.b.c.x))), func_2());
    var_0 = _wgslsmith_mod_i32(reverseBits(~_wgslsmith_dot_vec4_i32(~vec4<i32>(global0.a, 2147483647i, -1i, u_input.c.x), -vec4<i32>(global0.a, var_2.a, global0.a, global0.a))), _wgslsmith_dot_vec3_i32(vec3<i32>(~(-1i), 1i, i32(-1i) * -77689i) ^ -vec3<i32>(var_2.a, u_input.c.x, 2147483647i), (vec3<i32>(-1i) * -vec3<i32>(1i, u_input.c.x, -1i)) & -_wgslsmith_clamp_vec3_i32(vec3<i32>(global0.a, u_input.c.x, 44652i), vec3<i32>(global0.a, -1i, global0.a), vec3<i32>(var_2.a, -1i, 43541i))));
    return func_4(!select(select(select(vec3<bool>(global0.c.c, true, var_2.c.c), vec3<bool>(true, true, var_2.c.c), false), vec3<bool>(arg_2.x, global1.c.c, true), true), !(!vec3<bool>(true, false, arg_2.x)), vec3<bool>(global1.c.c, select(true, true, true), any(vec4<bool>(var_2.c.c, var_2.c.c, arg_2.x, false)))), ~_wgslsmith_sub_u32(4294967295u, u_input.b), _wgslsmith_sub_vec4_i32(vec4<i32>(abs(func_4(vec3<bool>(false, true, false), arg_1.b.b.x, vec4<i32>(-1443i, var_2.a, global1.a, global0.a), var_2.c).a), 3582i, _wgslsmith_sub_i32(_wgslsmith_mod_i32(global0.a, var_2.a), var_2.a << (arg_1.b.c.x % 32u)), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.c.x, var_2.a, global1.a), vec4<i32>(534i, 2147483647i, var_2.a, 19997i))), vec4<i32>(_wgslsmith_sub_i32(~global1.a, u_input.c.x), u_input.c.x, u_input.c.x, -1939i)), arg_1).c;
}

fn func_7(arg_0: Struct_3, arg_1: f32, arg_2: Struct_3, arg_3: vec4<i32>) -> Struct_4 {
    global1 = Struct_3(_wgslsmith_add_i32(-20011i, ~(-1861i)), arg_2.b | func_5(arg_0).b.c.zx, func_5(arg_0));
    let var_0 = Struct_4(arg_3.ww, !arg_2.c.c, 39729i);
    global0 = Struct_3(global0.a, firstLeadingBit(~(~vec2<u32>(arg_0.c.b.b.x, 0u))) ^ vec2<u32>(global0.b.x, arg_0.c.b.b.x), Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(arg_0.c.a)) - _wgslsmith_f_op_vec4_f32(-arg_2.c.a))), arg_2.c.b, (~1386i != firstTrailingBit(11386i)) | global0.c.c));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.c.a.x) + 1f) * _wgslsmith_f_op_f32(f32(-1f) * -338f))), func_5(Struct_3(10360i, vec2<u32>(arg_2.b.x, arg_0.c.b.c.x) >> (_wgslsmith_mod_vec2_u32(vec2<u32>(global0.b.x, u_input.a), arg_2.c.b.b.wx) % vec2<u32>(32u)), Struct_2(vec4<f32>(1381f, 749f, -796f, arg_1), func_4(vec3<bool>(false, global1.c.c, false), global0.c.b.c.x, vec4<i32>(0i, 25452i, global0.a, arg_0.a), global0.c).c.b, arg_0.c.a.x == arg_2.c.a.x))).a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1069f - 1199f)), -948f);
    global1 = Struct_3(firstLeadingBit(i32(-1i) * -u_input.c.x), ~(~(~global1.b)) & ~(_wgslsmith_div_vec2_u32(vec2<u32>(arg_0.c.b.b.x, 4294967295u), vec2<u32>(arg_2.b.x, arg_2.c.b.b.x)) >> (vec2<u32>(global1.c.b.b.x, arg_2.b.x) % vec2<u32>(32u))), arg_0.c);
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(Struct_3(min(~global1.a, -2147483647i), ~firstTrailingBit(global0.b) | (vec2<u32>(global1.b.x, 0u) | global0.c.b.c.wx), global1.c), global1.c.a.x, Struct_3(2147483647i, vec2<u32>(_wgslsmith_mod_u32(max(global0.b.x, global0.c.b.b.x), 1u), _wgslsmith_sub_u32(global0.c.b.a, 0u)), func_6(func_1(global0.c.b), Struct_2(func_1(Struct_1(u_input.b, vec4<u32>(global0.c.b.a, 88840u, u_input.b, u_input.b), vec4<u32>(global1.b.x, u_input.b, global0.b.x, global0.b.x))).a, global0.c.b, global1.c.c), vec2<bool>(!global1.c.c, func_2().c))), ~abs(firstLeadingBit(~vec4<i32>(u_input.c.x, 1i, -1880i, -22895i))));
    global0 = Struct_3(1i, vec2<u32>(11022u, 1u), global1.c);
    global1 = func_4(!vec3<bool>(!var_0.b | true, !global1.c.c || true, _wgslsmith_f_op_f32(-global0.c.a.x) != -1996f), global1.c.b.c.x, select(vec4<i32>(~u_input.c.x, ~global0.a, _wgslsmith_add_i32(-39028i, -37012i), -8781i), vec4<i32>(i32(-1i) * -6287i, 0i, -2147483647i, _wgslsmith_sub_i32(u_input.c.x, 1i)), true) ^ ~vec4<i32>(1i, u_input.c.x, global0.a & 0i, 21517i), func_5(Struct_3(global0.a, _wgslsmith_mod_vec2_u32(func_1(Struct_1(u_input.b, vec4<u32>(global0.c.b.b.x, u_input.b, 4294967295u, 11744u), global0.c.b.c)).b.b.xy, ~global0.c.b.c.wz), func_2())));
    global0 = Struct_3(var_0.c, global1.b, func_5(func_4(select(select(vec3<bool>(global1.c.c, true, var_0.b), vec3<bool>(global1.c.c, var_0.b, global1.c.c), vec3<bool>(var_0.b, var_0.b, false)), vec3<bool>(true, var_0.b, global0.c.c), true), ~0u, vec4<i32>(global1.a, 1i, -1i, var_0.a.x), Struct_2(global0.c.a, global0.c.b, true))));
    var var_1 = global0.c.b.c;
    global1 = Struct_3(1i, select(global0.c.b.c.zw, var_1.wz, vec2<bool>(var_0.b == (-207f > global1.c.a.x), global0.c.c)), global0.c);
    let x = u_input.a;
    s_output = StorageBuffer(-func_7(Struct_3(-2147483647i, vec2<u32>(1u, u_input.b), func_4(vec3<bool>(global1.c.c, false, var_0.b), global1.b.x, vec4<i32>(var_0.c, var_0.c, 1i, -2987i), global1.c).c), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.c.a.x, 578f)), Struct_3(-1i, global1.b >> (global0.c.b.b.wz % vec2<u32>(32u)), func_6(global1.c, global1.c, vec2<bool>(var_0.b, true))), vec4<i32>(global1.a, 0i, _wgslsmith_add_i32(u_input.c.x, -2147483647i), u_input.c.x | 1i)).a.x);
}

