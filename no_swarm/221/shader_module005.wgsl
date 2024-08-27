struct Struct_1 {
    a: u32,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: bool,
    b: vec4<f32>,
    c: i32,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(i32(-2147483648), i32(-2147483648));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> i32 {
    var var_0 = Struct_1(u_input.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(617f))), ~global0.x | 26398i);
    var_0 = Struct_1(_wgslsmith_sub_u32(max(max(u_input.c, 16245u), var_0.a), 0u) >> (_wgslsmith_clamp_u32(_wgslsmith_mod_u32(_wgslsmith_div_u32(u_input.c, u_input.c), 8257u), ~max(0u, u_input.c), ~(u_input.c & 1u)) % 32u), _wgslsmith_f_op_f32(-475f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -631f))), _wgslsmith_dot_vec2_i32(u_input.b.zz, -_wgslsmith_sub_vec2_i32(u_input.b.yz, vec2<i32>(u_input.b.x, var_0.c))) & (~_wgslsmith_dot_vec2_i32(u_input.b.zz, u_input.b.xx) | -32030i));
    global0 = vec2<i32>(0i, -67585i) >> (vec2<u32>(firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, var_0.a) | vec2<u32>(var_0.a, var_0.a), ~vec2<u32>(var_0.a, 12322u))), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_0.a, 28878u), vec3<u32>(4294967295u, u_input.c, 1u)), u_input.c, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 35006u, var_0.a), vec3<u32>(u_input.c, var_0.a, var_0.a))), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(8741u, var_0.a), vec2<u32>(1u, var_0.a)), var_0.a, ~u_input.c, 48827u))) % vec2<u32>(32u));
    let var_1 = u_input.b.wyx | u_input.b.wzw;
    let var_2 = Struct_2(firstTrailingBit(1i) < -var_1.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.b, -861f, -1000f, -580f), vec4<f32>(var_0.b, var_0.b, -656f, var_0.b))))))), u_input.a, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b, var_0.b))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_0.b, var_0.b), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.b, -1000f), vec2<f32>(788f, 437f), true)))))));
    return -18108i;
}

fn func_2(arg_0: bool) -> vec4<f32> {
    var var_0 = Struct_1(~(~56242u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(958f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-356f))))), _wgslsmith_clamp_i32(func_3(), i32(-1i) * -26568i, 1i ^ _wgslsmith_sub_i32(_wgslsmith_sub_i32(global0.x, 1i), 0i)));
    var_0 = Struct_1(4294967295u, var_0.b, u_input.a);
    var var_1 = _wgslsmith_f_op_f32(sign(var_0.b));
    var_0 = Struct_1(var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b + 1588f) - var_0.b)))), -global0.x);
    let var_2 = Struct_1(var_0.a, var_0.b, -select(38737i, min(var_0.c, -1i), u_input.c == var_0.a) >> (abs(0u) % 32u));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-156f, var_0.b, true)), _wgslsmith_f_op_f32(-var_0.b))), 617f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.b, var_2.b)), var_2.b)) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_2.b), _wgslsmith_f_op_f32(f32(-1f) * -392f), _wgslsmith_f_op_f32(round(-845f)), _wgslsmith_f_op_f32(abs(var_2.b)))))));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_2) -> f32 {
    let var_0 = vec2<i32>(_wgslsmith_add_i32(-1i, -_wgslsmith_sub_i32(-1i, select(u_input.a, arg_1.c, false))), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(u_input.b, min(firstLeadingBit(u_input.b), u_input.b >> (vec4<u32>(4294967295u, 1u, arg_0.x, 66784u) % vec4<u32>(32u)))), ~reverseBits(u_input.b)));
    global0 = var_0;
    var var_1 = arg_1;
    var var_2 = -_wgslsmith_add_vec3_i32(-u_input.b.wwy, vec3<i32>(-25272i, 2147483647i, ~_wgslsmith_add_i32(20175i, 26738i)));
    let var_3 = -(-_wgslsmith_dot_vec4_i32(u_input.b, -vec4<i32>(-22087i, var_2.x, 0i, 3280i)) & -1i);
    return arg_1.d.x;
}

fn func_1(arg_0: f32, arg_1: f32) -> Struct_1 {
    var var_0 = Struct_1(u_input.c, _wgslsmith_f_op_f32(func_4(~select(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c, 0u, 41921u, 64521u), vec4<u32>(u_input.c, u_input.c, 49989u, 1u)), abs(vec4<u32>(4294967295u, 0u, u_input.c, u_input.c)), true), Struct_2(any(vec2<bool>(true, true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 1575f, -920f, -582f)) - _wgslsmith_f_op_vec4_f32(func_2(false))), _wgslsmith_dot_vec2_i32(min(u_input.b.wx, u_input.b.zy), vec2<i32>(-1i, 1i)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(113f, arg_1)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, -1138f) - vec2<f32>(-1107f, arg_1))))))), -1i);
    global0 = abs(-u_input.b.wz);
    var var_1 = global0.x >> (var_0.a % 32u);
    var var_2 = vec2<i32>(u_input.a, -(reverseBits(i32(-1i) * -2147483647i) | _wgslsmith_mod_i32(-var_0.c, _wgslsmith_add_i32(-2147483647i, var_0.c))));
    var var_3 = Struct_2(all(!(!select(vec2<bool>(true, false), vec2<bool>(false, true), true))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -537f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1340f * 101f) + _wgslsmith_f_op_f32(floor(-513f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(arg_0)), 538f, all(vec4<bool>(true, true, false, true)))) + 1610f), _wgslsmith_f_op_f32(max(var_0.b, -330f))), countOneBits(max(global0.x, var_2.x)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(arg_0 * arg_0), 1f), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_vec4_f32(func_2(true)).x, _wgslsmith_f_op_f32(arg_0 + var_0.b)), vec2<f32>(var_0.b, _wgslsmith_f_op_vec4_f32(func_2(false)).x)))));
    return Struct_1(~u_input.c, _wgslsmith_f_op_f32(var_3.b.x - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(831f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1 - var_3.b.x), 1582f)))), u_input.a | global0.x);
}

fn func_5(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: bool, arg_3: f32) -> Struct_2 {
    let var_0 = arg_0;
    let var_1 = ~_wgslsmith_clamp_u32(firstTrailingBit(~(~0u)), ~countOneBits(func_1(arg_0.b, -1433f).a), 41317u);
    global0 = _wgslsmith_add_vec2_i32(~_wgslsmith_clamp_vec2_i32(vec2<i32>(global0.x, -32883i), min(u_input.b.wy, u_input.b.zx), _wgslsmith_div_vec2_i32(vec2<i32>(arg_0.c, -1i), u_input.b.zw)) ^ countOneBits(u_input.b.zy), vec2<i32>(-1i) * -u_input.b.zw);
    var var_2 = _wgslsmith_mod_vec2_u32(~(~vec2<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.c, 4294967295u, 1u), vec4<u32>(var_1, 20760u, 0u, 59629u)))), select(vec2<u32>(select(~var_1, 1u, true), u_input.c), abs(reverseBits(_wgslsmith_add_vec2_u32(vec2<u32>(61348u, arg_0.a), vec2<u32>(var_0.a, 1u)))), arg_1.x));
    global0 = u_input.b.xy;
    return Struct_2(any(!select(!arg_1, !vec3<bool>(arg_2, arg_1.x, arg_2), select(arg_1, arg_1, arg_1))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.b), _wgslsmith_f_op_f32(-arg_3), arg_0.b, -1219f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b, -807f, 716f, 1000f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -1510f, -506f, _wgslsmith_f_op_f32(1989f - arg_3))))), 36031i, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0.b, var_0.b))), vec2<f32>(-414f, arg_3), true)))))));
}

fn func_6(arg_0: Struct_2, arg_1: bool, arg_2: vec4<u32>) -> i32 {
    var var_0 = ~arg_2.xy;
    var_0 = vec2<u32>(u_input.c, u_input.c);
    var var_1 = ~abs(var_0.x);
    let var_2 = countOneBits((u_input.b.yw << (~vec2<u32>(4294967295u, 4294967295u) % vec2<u32>(32u))) & _wgslsmith_mod_vec2_i32(reverseBits(vec2<i32>(u_input.b.x, u_input.a)), _wgslsmith_mult_vec2_i32(u_input.b.ww << (arg_2.yz % vec2<u32>(32u)), abs(vec2<i32>(u_input.b.x, arg_0.c)))));
    var var_3 = Struct_2(arg_1, vec4<f32>(_wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_f_op_f32(exp2(func_5(Struct_1(1u, 571f, u_input.a), !vec3<bool>(arg_0.a, false, true), arg_0.a, _wgslsmith_f_op_f32(f32(-1f) * -363f)).d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + arg_0.d.x)), 171f), _wgslsmith_div_i32(_wgslsmith_div_i32(_wgslsmith_mod_i32(-1i, arg_0.c), arg_0.c), _wgslsmith_dot_vec3_i32(reverseBits(abs(vec3<i32>(u_input.a, u_input.b.x, arg_0.c))), vec3<i32>(-1i) * -u_input.b.yzy)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.d))))));
    return min(_wgslsmith_mult_i32(-2147483647i, firstTrailingBit(var_2.x)), firstTrailingBit(var_3.c));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b.x;
    global0 = vec2<i32>(_wgslsmith_sub_i32(-countOneBits(0i), reverseBits(~reverseBits(-14211i))), ~func_6(func_5(func_1(-1329f, 267f), vec3<bool>(true, true, true), any(vec3<bool>(false, true, true)), _wgslsmith_f_op_f32(round(-334f))), !select(true, true, false), vec4<u32>(abs(1u), max(6899u, 23573u), u_input.c << (u_input.c % 32u), 63683u)));
    var var_1 = Struct_1(41389u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(331f * _wgslsmith_f_op_f32(-161f - 533f)))), firstTrailingBit(~(-1i)));
    var_1 = func_1(_wgslsmith_f_op_f32(-func_1(var_1.b, _wgslsmith_f_op_f32(floor(var_1.b))).b), 1020f);
    var var_2 = ~func_1(var_1.b, var_1.b).a;
    let var_3 = Struct_1(~u_input.c, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.b), -332f)), -(i32(-1i) * -2147483647i));
    let x = u_input.a;
    s_output = StorageBuffer(721f, u_input.c, 40911u, 701f);
}

