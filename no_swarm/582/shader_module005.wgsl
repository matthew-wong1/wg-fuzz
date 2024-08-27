struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: vec3<u32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: vec3<f32>,
    c: i32,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: Struct_2;

var<private> global2: i32 = i32(-2147483648);

var<private> global3: i32;

var<private> global4: bool = true;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: vec4<u32>, arg_3: Struct_1) -> vec4<f32> {
    let var_0 = arg_3.d.x;
    global1 = Struct_2(all(vec3<bool>(any(vec4<bool>(arg_3.d.x, arg_3.d.x, var_0, false)), true, !var_0)) | false, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0, arg_0, global1.b.x), global1.b), _wgslsmith_f_op_vec3_f32(min(arg_3.b.wyx, arg_3.b.wyy)), !global1.a)))), arg_3.b.yww), -2147483647i, -_wgslsmith_sub_vec2_i32(select(-vec2<i32>(global1.d.x, 2147483647i), vec2<i32>(u_input.c.x, 0i), global1.a), global1.d));
    var var_1 = _wgslsmith_f_op_f32(-341f + arg_0);
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(arg_3.b)))) * vec4<f32>(-1000f, _wgslsmith_f_op_f32(-arg_3.b.x), global1.b.x, _wgslsmith_f_op_f32(trunc(arg_0)))))));
    let var_3 = var_2.x;
    return vec4<f32>(460f, _wgslsmith_f_op_f32(296f - arg_3.b.x), arg_3.b.x, _wgslsmith_f_op_f32(-1841f + _wgslsmith_f_op_f32(step(-234f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1.b.x)))))));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec2<f32>, arg_2: Struct_1) -> i32 {
    global2 = u_input.e.x;
    var var_0 = false;
    global0 = false;
    var var_1 = Struct_1(-(global1.c & 2147483647i), _wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_f32(max(772f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_1.x))))), _wgslsmith_dot_vec4_i32(vec4<i32>(~u_input.a.x, _wgslsmith_mod_i32(1i, -2147483647i), arg_2.a, _wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(global1.d.x, global1.c, u_input.a.x))), max(u_input.c << (arg_0 % vec4<u32>(32u)), firstTrailingBit(vec4<i32>(u_input.c.x, 12776i, global1.d.x, arg_2.a)))), abs(abs(arg_0)), arg_2)), ~vec3<u32>(~5619u, arg_2.c.x, 118404u ^ arg_2.c.x) | ~vec3<u32>(_wgslsmith_add_u32(u_input.b.x, u_input.d), 1u, ~arg_0.x), select(!vec4<bool>(arg_2.d.x || arg_2.d.x, select(arg_2.d.x, true, arg_2.d.x), all(vec4<bool>(arg_2.d.x, global1.a, false, arg_2.d.x)), false), select(vec4<bool>(arg_2.d.x, any(vec2<bool>(false, true)), global1.a, false), !arg_2.d, arg_2.d.x), true));
    let var_2 = arg_2;
    return -2147483647i << (_wgslsmith_clamp_u32(min(var_2.c.x, arg_0.x), firstLeadingBit(~u_input.b.x | 85729u), _wgslsmith_clamp_u32(1u, ~41814u << (_wgslsmith_mult_u32(14492u, var_2.c.x) % 32u), _wgslsmith_sub_u32(_wgslsmith_add_u32(61572u, 1u), u_input.b.x))) % 32u);
}

fn func_4(arg_0: i32, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: Struct_2) -> vec3<u32> {
    let var_0 = abs(_wgslsmith_sub_u32(u_input.b.x | arg_2.c.x, _wgslsmith_div_u32(94u | _wgslsmith_dot_vec2_u32(u_input.b, arg_2.c.zy), ~_wgslsmith_add_u32(52699u, u_input.b.x))));
    global4 = false;
    let var_1 = Struct_1(~(-arg_1.x), arg_2.b, ~arg_2.c, vec4<bool>(true, arg_3.a, global1.a, any(vec4<bool>(global1.a, true, !arg_3.a, 58861u >= var_0))));
    var var_2 = _wgslsmith_div_vec4_i32(u_input.c, ~(~(~_wgslsmith_clamp_vec4_i32(u_input.c, u_input.c, vec4<i32>(9626i, arg_2.a, -37759i, 22419i)))));
    global1 = Struct_2(arg_3.a, _wgslsmith_f_op_vec3_f32(floor(arg_3.b)), arg_1.x, -vec2<i32>(-15089i, ~(~2147483647i)));
    return vec3<u32>(~u_input.d, 1u, _wgslsmith_clamp_u32(~(~87507u), 28861u, var_1.c.x >> (var_0 % 32u)));
}

fn func_5(arg_0: u32, arg_1: vec2<f32>, arg_2: bool, arg_3: vec3<u32>) -> Struct_2 {
    var var_0 = ~(~(firstLeadingBit(arg_0) << (~(~arg_3.x) % 32u)));
    var_0 = arg_0;
    var var_1 = Struct_1(~u_input.e.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.b.x), arg_1.x), _wgslsmith_f_op_f32(abs(arg_1.x)), global1.b.x)), func_4(-(~(-14218i)), u_input.a.zy, Struct_1(~global1.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.b.x, global1.b.x, 173f, global1.b.x) + vec4<f32>(global1.b.x, global1.b.x, global1.b.x, global1.b.x))), ~(vec3<u32>(47791u, arg_3.x, arg_3.x) << (vec3<u32>(arg_0, 47332u, 0u) % vec3<u32>(32u))), !select(vec4<bool>(global1.a, false, false, false), vec4<bool>(global1.a, arg_2, arg_2, true), false)), Struct_2(false, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global1.b.x, arg_1.x, arg_1.x)))), -global1.c, u_input.a.yx)), vec4<bool>(_wgslsmith_f_op_f32(f32(-1f) * -1000f) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b.x) - _wgslsmith_f_op_f32(-349f + 1959f)), true, select(true, global1.a, all(vec4<bool>(true, true, global1.a, global1.a))), true));
    global2 = _wgslsmith_clamp_i32(~4979i, global1.d.x >> ((countOneBits(arg_0 & 842u) & arg_3.x) % 32u), -1i);
    var var_2 = _wgslsmith_mult_vec3_i32(u_input.c.zzy, _wgslsmith_clamp_vec3_i32(u_input.a, u_input.e, _wgslsmith_sub_vec3_i32(u_input.a, -u_input.e) ^ reverseBits(firstLeadingBit(vec3<i32>(525i, -9596i, 2147483647i)))));
    return Struct_2(arg_2, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(var_1.b.x)))), 1000f, _wgslsmith_f_op_f32(f32(-1f) * -585f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.b.x, var_1.b.x, -1733f) * _wgslsmith_f_op_vec3_f32(ceil(global1.b))))), abs(~reverseBits(~var_2.x)), _wgslsmith_add_vec2_i32(u_input.e.yz >> (_wgslsmith_clamp_vec2_u32(u_input.b, vec2<u32>(u_input.b.x, 60861u), ~u_input.b) % vec2<u32>(32u)), vec2<i32>(~(-1i), global1.d.x)));
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: f32) -> i32 {
    var var_0 = u_input.a.yy;
    var var_1 = func_5(4294967295u, vec2<f32>(global1.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1109f, _wgslsmith_f_op_f32(abs(global1.b.x)))))), all(vec2<bool>(!global1.a, true)) && any(vec4<bool>(true, 86391u == u_input.d, any(vec4<bool>(true, arg_1.a, true, true)), global1.a)), countOneBits(func_4(func_2(vec4<u32>(u_input.d, 49085u, u_input.b.x, u_input.b.x), vec2<f32>(arg_1.b.x, -856f), Struct_1(32601i, vec4<f32>(arg_2, arg_0.x, global1.b.x, -1375f), vec3<u32>(u_input.d, u_input.d, 24016u), vec4<bool>(arg_1.a, true, arg_1.a, global1.a))), global1.d, Struct_1(u_input.c.x, arg_0, vec3<u32>(u_input.b.x, u_input.b.x, 1u), vec4<bool>(arg_1.a, false, arg_1.a, global1.a)), Struct_2(false, vec3<f32>(816f, arg_0.x, 921f), var_0.x, vec2<i32>(u_input.e.x, 2147483647i)))) >> (countOneBits(~(~vec3<u32>(u_input.b.x, u_input.d, u_input.d))) % vec3<u32>(32u)));
    global1 = Struct_2(true, vec3<f32>(arg_2, arg_1.b.x, 208f), _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(~arg_1.d.x, var_1.c >> (u_input.d % 32u)), global1.d), min(var_1.d.x, -18865i)), ~(~u_input.c.wy));
    var_1 = func_5(firstTrailingBit(_wgslsmith_div_u32(1u, 27677u) ^ u_input.d), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1959f - var_1.b.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-2603f + arg_2))) + 211f)), true, ~vec3<u32>(~u_input.d, u_input.d, func_4(2147483647i, -vec2<i32>(var_1.c, u_input.a.x), Struct_1(u_input.c.x, vec4<f32>(-1346f, arg_1.b.x, 452f, arg_2), vec3<u32>(u_input.b.x, 53352u, 4294967295u), vec4<bool>(arg_1.a, true, arg_1.a, var_1.a)), func_5(0u, vec2<f32>(arg_0.x, global1.b.x), true, vec3<u32>(4294967295u, 0u, 0u))).x));
    var var_2 = Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(u_input.c ^ u_input.c, _wgslsmith_mod_vec4_i32(vec4<i32>(global1.d.x, 0i, var_1.c, u_input.e.x), u_input.c)), min(1i, _wgslsmith_sub_i32(var_1.d.x, var_1.c))), -vec2<i32>(func_5(4294967295u, arg_1.b.xy, global1.a, vec3<u32>(u_input.b.x, u_input.b.x, u_input.d)).c, firstTrailingBit(0i))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-942f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b.x) + _wgslsmith_f_op_f32(max(global1.b.x, global1.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1614f + 462f)), var_1.b.x)), ~countOneBits(~(~vec3<u32>(5251u, 1u, 0u))), !vec4<bool>(true, false, global1.a, (u_input.b.x << (4294967295u % 32u)) == 8967u));
    return _wgslsmith_clamp_i32(arg_1.d.x, _wgslsmith_mult_i32(var_2.a << (~_wgslsmith_mult_u32(u_input.d, var_2.c.x) % 32u), abs(arg_1.c)), -35654i);
}

fn func_6(arg_0: i32, arg_1: vec2<i32>, arg_2: Struct_1) -> Struct_2 {
    global0 = true;
    let var_0 = _wgslsmith_mult_i32(global1.d.x, ~_wgslsmith_mod_i32(0i, _wgslsmith_dot_vec2_i32(global1.d, vec2<i32>(arg_0, arg_1.x)) << (~arg_2.c.x % 32u)));
    return func_5(0u, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(934f + 188f) - 1766f), _wgslsmith_f_op_f32(abs(-332f))), false, (arg_2.c << ((vec3<u32>(16074u, 17043u, 45709u) << (~arg_2.c % vec3<u32>(32u))) % vec3<u32>(32u))) ^ ~(~arg_2.c));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(!(any(select(vec4<bool>(global1.a, global1.a, false, true), vec4<bool>(true, false, false, true), false)) || !global1.a), _wgslsmith_f_op_vec3_f32(sign(global1.b)), -2147483647i, vec2<i32>(~_wgslsmith_dot_vec4_i32(u_input.c, u_input.c), 6302i) & global1.d);
    let var_1 = func_6(-(i32(-1i) * -(~(-2147483647i))), _wgslsmith_add_vec2_i32(-(~u_input.e.xx), vec2<i32>(-2147483647i, i32(-1i) * -1i)), Struct_1(_wgslsmith_dot_vec2_i32(~vec2<i32>(2147483647i, u_input.a.x) << (vec2<u32>(0u, 1u) % vec2<u32>(32u)), vec2<i32>(-1i, func_1(vec4<f32>(global1.b.x, var_0.b.x, global1.b.x, 163f), Struct_2(false, vec3<f32>(global1.b.x, -1000f, -360f), global1.d.x, vec2<i32>(64231i, 22911i)), -314f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(210f, global1.b.x, var_0.b.x, 486f) * vec4<f32>(global1.b.x, var_0.b.x, var_0.b.x, -1256f)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(265f, -2738f, global1.b.x, global1.b.x), vec4<f32>(var_0.b.x, var_0.b.x, global1.b.x, global1.b.x), vec4<bool>(var_0.a, global1.a, var_0.a, true))))), _wgslsmith_mult_vec3_u32(vec3<u32>(6631u, _wgslsmith_clamp_u32(4294967295u, 0u, 4294967295u), abs(4294967295u)), vec3<u32>(64941u, ~u_input.d, u_input.b.x)), !vec4<bool>(1068f >= var_0.b.x, true, var_0.a, true)));
    global3 = var_1.c;
    global2 = _wgslsmith_div_i32(_wgslsmith_mod_i32(1i, global1.c), -1i);
    var var_2 = !select(select(!select(vec3<bool>(false, var_0.a, true), vec3<bool>(true, var_0.a, false), var_0.a), select(select(vec3<bool>(false, var_1.a, true), vec3<bool>(false, true, var_1.a), vec3<bool>(true, false, false)), !vec3<bool>(var_0.a, var_0.a, var_1.a), !vec3<bool>(var_0.a, true, var_1.a)), true), !(!select(vec3<bool>(var_1.a, var_1.a, global1.a), vec3<bool>(false, true, false), vec3<bool>(true, false, global1.a))), !(!select(vec3<bool>(var_0.a, var_0.a, false), vec3<bool>(true, var_0.a, global1.a), vec3<bool>(false, false, false))));
    let var_3 = reverseBits(u_input.c);
    var var_4 = Struct_1(var_3.x ^ (0i ^ abs(var_0.c)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(923f)), _wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_div_f32(var_1.b.x, var_1.b.x), 1058f), vec4<f32>(270f, 906f, 1955f, global1.b.x))), _wgslsmith_clamp_vec3_u32(reverseBits(_wgslsmith_mult_vec3_u32(~vec3<u32>(34864u, u_input.d, 25402u), ~vec3<u32>(u_input.b.x, u_input.d, u_input.d))), func_4(-8586i, ~u_input.c.yx >> (~u_input.b % vec2<u32>(32u)), Struct_1(var_3.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.x, -164f, var_0.b.x, 343f)), ~vec3<u32>(u_input.d, u_input.b.x, u_input.b.x), !vec4<bool>(true, var_0.a, var_2.x, false)), Struct_2(true, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1716f, 1014f, 758f)), reverseBits(10637i), u_input.a.zz)), reverseBits(vec3<u32>(~u_input.b.x, 38506u, u_input.d))), vec4<bool>(true, !(!(!var_1.a)), any(!vec4<bool>(true, true, var_1.a, var_2.x)), var_2.x));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, var_4.c);
}

