struct Struct_1 {
    a: f32,
    b: f32,
    c: f32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec4<i32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec4<i32>,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
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

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec2<f32>) -> vec4<i32> {
    global0 = Struct_1(_wgslsmith_f_op_f32(arg_1.x * arg_1.x), _wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(-arg_1.x)), global0.c, global0.d);
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_1.x))), 1017f)), 2336f))));
    var var_1 = -1i;
    var var_2 = ~(_wgslsmith_mod_u32(~u_input.a, _wgslsmith_clamp_u32(u_input.b.x, 4294967295u, u_input.d.x)) | firstTrailingBit(u_input.d.x)) > 48554u;
    global0 = Struct_1(var_0, -450f, 876f, countOneBits(global0.d));
    return ~(-global0.d);
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: bool, arg_3: u32) -> Struct_3 {
    var var_0 = -974f;
    var var_1 = arg_0.xyw;
    var var_2 = Struct_3(~select(arg_1.d.yw, u_input.c.yz, select(vec2<bool>(true, true), select(vec2<bool>(arg_2, arg_2), vec2<bool>(arg_2, arg_2), vec2<bool>(arg_2, arg_2)), vec2<bool>(true, true))), -func_3(vec2<i32>(60279i, u_input.c.x) >> (_wgslsmith_add_vec2_u32(arg_0.zw, u_input.d.xx) % vec2<u32>(32u)), vec2<f32>(arg_1.c, _wgslsmith_f_op_f32(-arg_1.a))), u_input.c.x);
    let var_3 = Struct_3((firstTrailingBit(vec2<i32>(-2147483647i, -40983i)) | ~(var_2.a | global0.d.zz)) ^ firstLeadingBit(-vec2<i32>(global0.d.x, 1i)), select(vec4<i32>(~(-26560i ^ global0.d.x), _wgslsmith_add_i32(30996i, -19982i), -_wgslsmith_div_i32(-1i, global0.d.x), 2216i), _wgslsmith_div_vec4_i32(arg_1.d, _wgslsmith_sub_vec4_i32(vec4<i32>(2243i, 1i, u_input.c.x, 1i), max(vec4<i32>(u_input.c.x, 1i, global0.d.x, u_input.c.x), vec4<i32>(11996i, u_input.c.x, -14669i, u_input.c.x)))), !vec4<bool>(arg_2, !arg_2, true, arg_2)), ~56368i);
    var var_4 = -1000f;
    return Struct_3(vec2<i32>(var_2.b.x, ~max(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.d.x, -2147483647i), global0.d.xx), arg_1.d.x)), var_2.b, firstTrailingBit(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(-var_3.c, _wgslsmith_dot_vec3_i32(arg_1.d.zxz, vec3<i32>(-1i, 2147483647i, 0i)), func_3(vec2<i32>(30892i, 1i), vec2<f32>(global0.a, arg_1.a)).x), var_2.c)));
}

fn func_4(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: u32, arg_3: vec2<i32>) -> Struct_1 {
    global0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0.c + -1289f))) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1340f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.c + 366f) + global0.b) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(1892f)))))), global0.c, -936f, vec4<i32>(arg_3.x, func_3(vec2<i32>(u_input.c.x, global0.d.x), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global0.c, global0.c)))))).x, func_2(~vec4<u32>(u_input.d.x, u_input.a, 7069u, arg_1.x), Struct_1(_wgslsmith_f_op_f32(global0.a * global0.b), 853f, global0.a, global0.d), any(vec2<bool>(true, false)), u_input.b.x).b.x, firstLeadingBit(-12410i)));
    global0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-535f + global0.b) * _wgslsmith_f_op_f32(-257f * -1113f))), 821f, global0.c, vec4<i32>(2147483647i, ~(-1i), 0i, _wgslsmith_clamp_i32(global0.d.x, 2147483647i, _wgslsmith_dot_vec2_i32(-vec2<i32>(1i, u_input.c.x), abs(arg_3)))));
    global0 = Struct_1(global0.a, _wgslsmith_f_op_f32(-1f), -1000f, _wgslsmith_div_vec4_i32(vec4<i32>(-arg_0.a.x, i32(-1i) * -6046i, ~(-u_input.c.x), 1i), global0.d));
    let var_0 = vec3<bool>(false, all(vec3<bool>(any(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true))), global0.d.x == ~arg_3.x, all(vec2<bool>(true, true)))), true);
    let var_1 = min(arg_0.b.x, _wgslsmith_mod_i32(~(-49479i), 1i) ^ ~(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, u_input.c.x), vec2<i32>(global0.d.x, u_input.c.x)) >> (u_input.b.x % 32u)));
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a + _wgslsmith_f_op_f32(614f + _wgslsmith_f_op_f32(f32(-1f) * -402f))) - global0.b), _wgslsmith_f_op_f32(global0.b * 1206f), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(global0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.a, -1000f, true)))))), global0.d);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: Struct_2) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1227f)));
    global0 = func_4(func_2(~(~u_input.b), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1281f))), 2480f, _wgslsmith_f_op_f32(sign(1263f)), _wgslsmith_sub_vec4_i32(vec4<i32>(arg_0.d.x, 3017i, 0i, global0.d.x), vec4<i32>(global0.d.x, global0.d.x, 26318i, global0.d.x) ^ vec4<i32>(2147483647i, 0i, -18078i, arg_0.d.x))), any(!select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), false)), 90582u), reverseBits(max(u_input.d.wx | u_input.b.xw, select(u_input.d.xx, vec2<u32>(u_input.a, u_input.a), vec2<bool>(false, true))) | (u_input.d.yx >> (u_input.d.zy % vec2<u32>(32u)))), u_input.a, ~(~arg_0.d.zx));
    global0 = func_4(func_2(_wgslsmith_div_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(1u, u_input.a, 57576u, 1u), u_input.d), vec4<u32>(min(99731u, u_input.b.x), u_input.b.x, firstLeadingBit(u_input.a), ~15112u)), arg_1, true, 4294967295u), u_input.d.xw, reverseBits(_wgslsmith_dot_vec4_u32(~(vec4<u32>(u_input.d.x, u_input.d.x, 74062u, u_input.b.x) ^ u_input.d), u_input.d)), vec2<i32>(_wgslsmith_sub_i32(-2416i, ~_wgslsmith_add_i32(arg_3.c.x, 0i)), -36142i >> (max(82218u ^ u_input.b.x, 11338u) % 32u)));
    global0 = Struct_1(arg_2.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(655f - global0.b))), _wgslsmith_f_op_f32(global0.b * _wgslsmith_f_op_f32(-var_0)), -(~(func_4(Struct_3(vec2<i32>(-1i, arg_1.d.x), vec4<i32>(-1i, 0i, 37367i, 1i), 2147483647i), vec2<u32>(27889u, u_input.d.x), 1u, arg_1.d.ww).d >> (vec4<u32>(u_input.a, 36342u, u_input.b.x, 0u) % vec4<u32>(32u)))));
    global0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -357f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0.a)) + arg_0.a), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -335f))), reverseBits(global0.d));
    return min(~u_input.b, u_input.d);
}

fn func_6(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: vec4<u32>) -> Struct_1 {
    global0 = func_4(Struct_3(func_3(vec2<i32>(34865i, -1i), vec2<f32>(_wgslsmith_f_op_f32(min(global0.a, arg_1.b)), -1222f)).xx, global0.d, u_input.c.x), arg_0.yy, abs(arg_0.x), u_input.c.yz >> (select(~(arg_3.yx << (vec2<u32>(arg_0.x, arg_3.x) % vec2<u32>(32u))), max(arg_3.wz | arg_2.xw, ~vec2<u32>(arg_2.x, arg_3.x)), vec2<bool>(u_input.d.x >= arg_0.x, u_input.d.x <= u_input.d.x)) % vec2<u32>(32u)));
    var var_0 = ~abs(~arg_0.x) | ~arg_2.x;
    global0 = func_4(Struct_3(_wgslsmith_mult_vec2_i32(func_2(~vec4<u32>(1u, 45740u, 1u, 19826u), arg_1, false, 4294967295u).b.xx, global0.d.yz), _wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(global0.d | vec4<i32>(u_input.c.x, global0.d.x, u_input.c.x, global0.d.x), func_4(Struct_3(vec2<i32>(u_input.c.x, 56847i), global0.d, arg_1.d.x), arg_3.xy, u_input.b.x, global0.d.xx).d), vec4<i32>(4909i, reverseBits(global0.d.x), -15562i, _wgslsmith_sub_i32(-2930i, 32201i))), abs(u_input.c.x)), arg_0.yy, 17631u, vec2<i32>(-arg_1.d.x, -arg_1.d.x));
    var var_1 = max(u_input.a, 34647u);
    var_1 = arg_2.x;
    return Struct_1(-1378f, _wgslsmith_f_op_f32(f32(-1f) * -540f), arg_1.a, _wgslsmith_mult_vec4_i32(firstLeadingBit(vec4<i32>(-11299i | u_input.c.x, _wgslsmith_sub_i32(u_input.c.x, global0.d.x), global0.d.x, ~global0.d.x)), vec4<i32>(_wgslsmith_mod_i32(19110i, 10877i), ~0i, arg_1.d.x, arg_1.d.x) & (vec4<i32>(-1i) * -vec4<i32>(-16756i, 2034i, u_input.c.x, 1i))));
}

fn func_1(arg_0: Struct_3, arg_1: vec2<u32>) -> u32 {
    var var_0 = arg_0;
    let var_1 = Struct_2(func_6(~(~_wgslsmith_mod_vec3_u32(vec3<u32>(48623u, arg_1.x, 4294967295u), u_input.b.zxz)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.b, global0.c)), _wgslsmith_div_f32(global0.c, global0.a), global0.c, -_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c.x, var_0.b.x, -1i, -61734i), vec4<i32>(global0.d.x, var_0.a.x, 45628i, -23088i))), func_5(func_4(func_2(u_input.d, Struct_1(global0.c, 162f, 1302f, arg_0.b), true, 2186u), vec2<u32>(arg_1.x, 0u), ~u_input.d.x, ~vec2<i32>(105820i, var_0.c)), func_4(arg_0, ~vec2<u32>(u_input.d.x, u_input.a), firstTrailingBit(1u), var_0.b.zz & vec2<i32>(u_input.c.x, global0.d.x)), vec2<f32>(_wgslsmith_f_op_f32(-global0.b), _wgslsmith_f_op_f32(-1000f * global0.b)), Struct_2(Struct_1(global0.c, -153f, global0.a, vec4<i32>(u_input.c.x, u_input.c.x, arg_0.c, arg_0.c)), vec3<f32>(global0.a, -878f, 1452f), vec4<i32>(var_0.a.x, u_input.c.x, -2147483647i, global0.d.x))), ~(~_wgslsmith_div_vec4_u32(vec4<u32>(21817u, 0u, 4294967295u, 740u), u_input.d))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(141f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c + global0.a)), global0.b)), select(vec4<i32>(-1i) * -global0.d, vec4<i32>(1i, 1i & -u_input.c.x, global0.d.x, _wgslsmith_sub_i32(arg_0.b.x, -global0.d.x)), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false)));
    var var_2 = 1u;
    let var_3 = any(!select(select(vec2<bool>(true, true), vec2<bool>(false, false), any(vec2<bool>(false, false))), vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), true), vec2<bool>(true, true))));
    return ~abs(_wgslsmith_clamp_u32(21085u, u_input.b.x, u_input.b.x)) ^ ~13077u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(u_input.d.x, _wgslsmith_dot_vec4_u32(vec4<u32>(func_1(Struct_3(vec2<i32>(global0.d.x, global0.d.x), global0.d, u_input.c.x), vec2<u32>(26296u, u_input.d.x)), u_input.d.x, u_input.b.x, 0u), vec4<u32>(~1u, u_input.a ^ u_input.d.x, min(u_input.d.x, u_input.a), u_input.b.x)) << (countOneBits(~78986u) % 32u), u_input.b.x, 61630u);
    global0 = func_4(func_2(vec4<u32>(_wgslsmith_mod_u32(~u_input.d.x, max(0u, 4294967295u)), u_input.b.x, var_0.x, var_0.x), func_6(u_input.b.xyy, func_6(vec3<u32>(0u, var_0.x, 38287u), func_6(vec3<u32>(48065u, u_input.b.x, u_input.d.x), Struct_1(-309f, -677f, 1000f, global0.d), vec4<u32>(1u, 74120u, var_0.x, var_0.x), var_0), firstTrailingBit(var_0), vec4<u32>(51338u, 63218u, u_input.a, 55267u)), vec4<u32>(firstTrailingBit(var_0.x), _wgslsmith_dot_vec3_u32(u_input.b.zzy, vec3<u32>(46169u, 92636u, 4294967295u)), ~u_input.d.x, u_input.b.x), countOneBits(vec4<u32>(var_0.x, 1u, 48303u, var_0.x))), true, 0u), var_0.xw, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 0u, var_0.x) >> (u_input.b.ywx % vec3<u32>(32u)), var_0.wwz)), vec2<u32>(_wgslsmith_sub_u32(51733u, var_0.x) & 1639u, _wgslsmith_div_u32(4294967295u, 20196u & u_input.d.x))), vec2<i32>(_wgslsmith_div_i32(u_input.c.x >> (1u % 32u), 5155i), u_input.c.x) << (vec2<u32>(var_0.x, var_0.x) % vec2<u32>(32u)));
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(global0.b)), _wgslsmith_f_op_f32(-global0.a))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0.b - global0.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-324f, 891f))))), _wgslsmith_f_op_f32(global0.c + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(global0.b))))), global0.d), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.b, global0.b, global0.a) * vec3<f32>(global0.b, -1350f, 334f)) * vec3<f32>(global0.a, global0.c, 321f)))) * vec3<f32>(global0.b, 768f, 2191f)), vec4<i32>(_wgslsmith_dot_vec2_i32(func_2(max(vec4<u32>(1u, var_0.x, var_0.x, u_input.a), var_0), func_4(Struct_3(vec2<i32>(u_input.c.x, global0.d.x), global0.d, 0i), vec2<u32>(37936u, var_0.x), 81410u, vec2<i32>(u_input.c.x, global0.d.x)), true, 69172u).a, _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.c.x, u_input.c.x), -vec2<i32>(global0.d.x, global0.d.x))), _wgslsmith_mult_i32(-(i32(-1i) * -54329i), u_input.c.x), reverseBits(u_input.c.x), _wgslsmith_mult_i32(u_input.c.x, u_input.c.x >> (u_input.a % 32u))));
    global0 = Struct_1(global0.a, func_4(Struct_3(u_input.c.zz, var_1.c, select(abs(-1i), -u_input.c.x, true)), ~abs(var_0.xy << (vec2<u32>(var_0.x, 21694u) % vec2<u32>(32u))), select(u_input.b.x, ~_wgslsmith_clamp_u32(u_input.d.x, 15960u, u_input.b.x), !any(vec4<bool>(false, false, false, false))), func_4(Struct_3(~vec2<i32>(global0.d.x, 2147483647i), -vec4<i32>(-13210i, global0.d.x, 2147483647i, -37408i), -1i), select(var_0.xw, _wgslsmith_mod_vec2_u32(u_input.b.xx, var_0.yx), 1u >= var_0.x), max(32451u & u_input.b.x, var_0.x), ~vec2<i32>(global0.d.x, -30052i)).d.yw).b, var_1.a.c, ~global0.d);
    var var_2 = ~var_0.x;
    let var_3 = ~u_input.d.x;
    let var_4 = !(!vec2<bool>(!(u_input.c.x >= global0.d.x), false));
    let var_5 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a, 217f, global0.b))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.b * vec3<f32>(global0.c, var_1.b.x, -1558f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(func_6(firstTrailingBit(_wgslsmith_div_vec3_u32(vec3<u32>(var_0.x, var_0.x, var_3), var_0.zxy) ^ func_5(var_1.a, Struct_1(global0.c, var_5.x, -1963f, vec4<i32>(3950i, var_1.a.d.x, 1i, var_1.a.d.x)), var_5.zy, Struct_2(Struct_1(-131f, var_5.x, 673f, global0.d), var_5, vec4<i32>(-68547i, global0.d.x, global0.d.x, 23460i))).ywz), func_6(u_input.d.yxy, func_6(u_input.d.yyx, Struct_1(var_1.a.a, 473f, -914f, var_1.c), vec4<u32>(4294967295u, var_0.x, var_3, 86014u), vec4<u32>(66274u, u_input.b.x, var_3, 0u) >> (u_input.d % vec4<u32>(32u))), var_0, var_0), func_5(Struct_1(_wgslsmith_f_op_f32(select(-917f, var_1.a.a, false)), _wgslsmith_f_op_f32(ceil(global0.c)), global0.a, -var_1.a.d), func_4(func_2(vec4<u32>(u_input.d.x, var_0.x, var_0.x, var_0.x), var_1.a, var_4.x, 1u), vec2<u32>(var_3, 71698u), max(var_3, u_input.a), global0.d.wz), var_5.zx, Struct_2(func_4(Struct_3(vec2<i32>(0i, -1i), vec4<i32>(39154i, -2147483647i, 1i, var_1.c.x), global0.d.x), vec2<u32>(15088u, u_input.a), 4294967295u, vec2<i32>(global0.d.x, 1i)), var_1.b, -var_1.a.d)), vec4<u32>(var_0.x, 4294967295u, ~2574u, var_3)).b, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-1509f, var_5.x, all(vec4<bool>(var_4.x, var_4.x, var_4.x, var_4.x)) != !var_4.x)))));
}

