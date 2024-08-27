struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: bool,
    d: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
    c: bool,
    d: vec3<f32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec4<u32>,
    c: Struct_2,
    d: vec4<i32>,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: u32,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: f32,
    d: i32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(-1484f, 497f, Struct_1(vec2<f32>(-400f, 2617f), 4294967295u, false, vec4<u32>(18380u, 81882u, 67440u, 4294967295u)));

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> f32 {
    global0 = Struct_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.a, _wgslsmith_f_op_f32(f32(-1f) * -264f))))), _wgslsmith_f_op_f32(-global0.a), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(sign(267f)), _wgslsmith_f_op_f32(select(295f, _wgslsmith_f_op_f32(-global0.b), true))), global0.c.d.x, global0.c.b > 18774u, _wgslsmith_mult_vec4_u32(global0.c.d, vec4<u32>(_wgslsmith_mult_u32(38887u, u_input.b.x), _wgslsmith_sub_u32(global0.c.b, global0.c.d.x), ~global0.c.d.x, 34926u))));
    let var_0 = Struct_2(1f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b)))), global0.c);
    var var_1 = var_0;
    global0 = Struct_2(_wgslsmith_f_op_f32(var_0.b + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-510f)) - _wgslsmith_f_op_f32(ceil(var_1.b))))), 1433f, var_1.c);
    let var_2 = Struct_3(Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-222f - global0.b) + _wgslsmith_f_op_f32(step(-1601f, _wgslsmith_f_op_f32(-1155f + -1440f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-510f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -921f))), var_1.c), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1551f) * _wgslsmith_f_op_f32(-1365f - var_1.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c.a.x) - var_0.a)), var_1.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1449f), _wgslsmith_f_op_f32(step(var_0.a, 367f)))), -1846f), all(!(!vec4<bool>(var_1.c.c, global0.c.c, false, var_1.c.c))), vec3<f32>(476f, _wgslsmith_div_f32(var_1.c.a.x, -165f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a * 1000f))));
    return -1981f;
}

fn func_4(arg_0: vec2<f32>, arg_1: vec3<bool>) -> u32 {
    global0 = Struct_2(-594f, 396f, Struct_1(global0.c.a, reverseBits((20586u & global0.c.d.x) & min(4294967295u, 2377u)), !(!(false & arg_1.x)), firstLeadingBit(u_input.d)));
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.c.a.x))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-arg_0.x), global0.a <= arg_0.x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1549f) * _wgslsmith_f_op_f32(-global0.b)))), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-341f)), _wgslsmith_f_op_f32(global0.b + global0.b)))), global0.b) + vec4<f32>(_wgslsmith_f_op_f32(floor(299f)), _wgslsmith_f_op_f32(min(arg_0.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3()), global0.b)))), _wgslsmith_f_op_f32(abs(global0.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b + arg_0.x)))));
    let var_1 = Struct_4(arg_1, vec4<u32>(max(countOneBits(68649u), ~4294967295u) >> ((_wgslsmith_sub_u32(175648u, u_input.c) >> ((global0.c.d.x ^ u_input.c) % 32u)) % 32u), ~(~(~4294967295u)), select(global0.c.b, global0.c.b, true) | u_input.b.x, 81482u ^ ~abs(global0.c.b)), Struct_2(arg_0.x, arg_0.x, Struct_1(_wgslsmith_f_op_vec2_f32(-var_0.yy), ~(~27608u), arg_1.x, ~vec4<u32>(104023u, u_input.c, 4294967295u, 1u))), vec4<i32>(u_input.a.x, -abs(select(2147483647i, u_input.a.x, global0.c.c)), u_input.e, u_input.e), Struct_3(Struct_2(_wgslsmith_f_op_f32(-global0.c.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.x, 1260f))), Struct_1(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-3268f, 481f), global0.c.a)), _wgslsmith_add_u32(u_input.b.x, global0.c.d.x), true, select(u_input.d, u_input.d, vec4<bool>(true, true, arg_1.x, global0.c.c)))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1275f, 586f, _wgslsmith_f_op_f32(869f - var_0.x), _wgslsmith_f_op_f32(arg_0.x + var_0.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b, var_0.x, 1120f, -1034f)) * vec4<f32>(-1000f, 285f, -1000f, arg_0.x)), true)), false, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1254f, 1303f, arg_0.x))) - _wgslsmith_f_op_vec3_f32(trunc(var_0.yzz))))));
    let var_2 = -38178i;
    global0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) + _wgslsmith_f_op_f32(ceil(1306f))), arg_0.x, global0.c);
    return _wgslsmith_dot_vec4_u32(firstLeadingBit(~vec4<u32>(countOneBits(31323u), firstTrailingBit(u_input.d.x), global0.c.b, ~global0.c.d.x)), countOneBits(vec4<u32>(min(var_1.b.x & u_input.d.x, global0.c.d.x), ~global0.c.b, select(u_input.c, _wgslsmith_add_u32(global0.c.d.x, global0.c.d.x), true), u_input.b.x)));
}

fn func_2() -> Struct_4 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(sign(global0.c.a)), func_4(vec2<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(select(global0.c.a.x, _wgslsmith_f_op_f32(max(global0.c.a.x, global0.a)), any(vec4<bool>(true, true, true, global0.c.c))))), select(!(!vec3<bool>(false, true, global0.c.c)), !vec3<bool>(true, global0.c.c, global0.c.c), true)), any(select(vec3<bool>(true, true, true), !(!vec3<bool>(true, global0.c.c, true)), !vec3<bool>(false, global0.c.c, global0.c.c))), global0.c.d);
    var var_1 = countOneBits(vec4<i32>(reverseBits(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, u_input.e, -21101i, u_input.e), vec4<i32>(-1i, u_input.a.x, -2147483647i, -18980i)), vec4<i32>(u_input.a.x, 1i, u_input.a.x, u_input.a.x))), min(u_input.e & 1i, -firstLeadingBit(u_input.e)), u_input.e, _wgslsmith_div_i32(i32(-1i) * -865i, -2147483647i & u_input.a.x)));
    let var_2 = ~(~(abs(global0.c.b ^ u_input.b.x) ^ ~_wgslsmith_sub_u32(global0.c.b, 44462u)));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(f32(-1f) * -883f))));
    let var_4 = !(!var_0.c);
    return Struct_4(!(!vec3<bool>(!var_4, all(vec4<bool>(var_0.c, global0.c.c, var_0.c, var_0.c)), false)), vec4<u32>(1u | ~min(global0.c.d.x, 0u), 21476u, 4294967295u, (~4294967295u << (~var_2 % 32u)) | func_4(vec2<f32>(global0.a, var_0.a.x), vec3<bool>(var_4, global0.c.c, var_0.c))), Struct_2(_wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -448f)), var_0), vec4<i32>(_wgslsmith_mult_i32(-28335i, var_1.x) ^ countOneBits(-15453i), u_input.a.x, u_input.a.x | firstTrailingBit(u_input.a.x), -5890i) << (vec4<u32>(u_input.d.x, 41290u, abs(u_input.b.x), abs(select(var_2, global0.c.b, false))) % vec4<u32>(32u)), Struct_3(Struct_2(var_0.a.x, _wgslsmith_f_op_f32(step(var_0.a.x, _wgslsmith_f_op_f32(var_0.a.x - global0.c.a.x))), var_0), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.a.x, -245f, -510f, 423f)))), false, vec3<f32>(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1803f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.a.x), global0.c.a.x)))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_4, arg_2: Struct_3) -> bool {
    var var_0 = select(!(!vec4<bool>(any(vec4<bool>(true, false, false, arg_1.c.c.c)), arg_0.c, arg_2.a.c.c, true == global0.c.c)), select(!vec4<bool>(arg_1.c.c.c, any(arg_1.a), !arg_1.a.x, all(vec2<bool>(arg_1.c.c.c, arg_0.c))), vec4<bool>(true, !(arg_1.a.x && false), all(vec4<bool>(arg_0.c, arg_1.c.c.c, true, arg_2.c)) && arg_0.c, any(arg_1.a.zy)), select(!vec4<bool>(true, global0.c.c, arg_0.c, arg_1.a.x), select(select(vec4<bool>(arg_1.a.x, true, true, true), vec4<bool>(arg_1.c.c.c, true, true, true), arg_1.c.c.c), !vec4<bool>(arg_0.c, false, global0.c.c, true), select(vec4<bool>(true, arg_0.c, false, global0.c.c), vec4<bool>(true, false, true, true), true)), !select(vec4<bool>(true, global0.c.c, true, arg_1.e.a.c.c), vec4<bool>(false, true, arg_0.c, arg_1.c.c.c), arg_1.e.a.c.c))), vec4<bool>(false, arg_1.a.x, true & ((arg_1.c.c.b << (11497u % 32u)) == arg_0.d.x), !arg_1.a.x & (arg_1.a.x | true)));
    global0 = func_2().c;
    global0 = Struct_2(_wgslsmith_div_f32(229f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(arg_1.c.b, _wgslsmith_f_op_f32(trunc(812f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(-1194f)), _wgslsmith_f_op_f32(500f * -1230f))), var_0.x))), _wgslsmith_f_op_f32(-857f - 462f), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.e.b.yw)), _wgslsmith_mult_u32(_wgslsmith_sub_u32(select(arg_1.e.a.c.d.x, arg_2.a.c.b, true), 1u), arg_2.a.c.d.x), global0.c.c, _wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(0u, 58405u, 4294967295u, u_input.d.x), arg_2.a.c.d) | ~vec4<u32>(global0.c.b, 1u, u_input.c, 52877u), _wgslsmith_mult_vec4_u32(~vec4<u32>(arg_0.b, arg_0.d.x, arg_0.b, arg_2.a.c.b), select(u_input.d, arg_1.e.a.c.d, true)), vec4<u32>(1u, func_2().e.a.c.b, arg_2.a.c.b, ~arg_0.b))));
    var var_1 = vec2<i32>(-68433i, ~(-28451i));
    let var_2 = vec3<bool>(!(_wgslsmith_f_op_f32(func_3()) >= arg_1.e.b.x), !select(func_2().c.c.c, var_0.x, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-393f, global0.c.a.x))) - _wgslsmith_f_op_f32(-arg_1.c.b)) > _wgslsmith_f_op_f32(step(1482f, _wgslsmith_f_op_f32(step(arg_1.c.a, _wgslsmith_div_f32(-1445f, global0.b))))));
    return arg_1.d.x > _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(u_input.e, arg_1.d.x), u_input.e, u_input.e, var_1.x), ~arg_1.d >> (arg_2.a.c.d % vec4<u32>(32u))), max(arg_1.d, _wgslsmith_mod_vec4_i32(arg_1.d, _wgslsmith_mod_vec4_i32(arg_1.d, vec4<i32>(var_1.x, var_1.x, 1i, 0i)))));
}

fn func_6(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    let var_0 = func_2().e.a.c;
    let var_1 = Struct_2(_wgslsmith_f_op_f32(trunc(var_0.a.x)), global0.a, global0.c);
    var var_2 = vec2<u32>(countOneBits(_wgslsmith_mod_u32(var_0.d.x, ~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.d.x, 44989u), vec2<u32>(var_0.b, arg_2.d.x)))), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(firstTrailingBit(abs(vec4<u32>(64612u, var_0.d.x, 1u, var_1.c.d.x))), _wgslsmith_mod_vec4_u32(u_input.d, vec4<u32>(0u, 0u, arg_2.d.x, var_0.d.x)) << (global0.c.d % vec4<u32>(32u))), vec4<u32>(1649u, ~_wgslsmith_dot_vec3_u32(arg_1.d.zwx, vec3<u32>(arg_1.b, var_1.c.d.x, u_input.d.x)), 81173u, func_4(arg_2.a, arg_0.xxx))));
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-func_2().e.a.c.a))), 42108u, any(select(arg_0.yx, arg_0.yw, func_2().a.yx)), vec4<u32>(abs(~min(2407u, 71687u)), ~4294967295u, countOneBits(20188u) & min(firstLeadingBit(0u), ~u_input.c), _wgslsmith_mod_u32(25066u, ~100090u) << (var_1.c.b % 32u)));
    var_2 = _wgslsmith_div_vec2_u32(var_0.d.xz, vec2<u32>(u_input.b.x, reverseBits(var_3.d.x)));
    return 1i;
}

fn func_7(arg_0: i32, arg_1: vec4<bool>, arg_2: bool, arg_3: vec2<i32>) -> Struct_2 {
    var var_0 = _wgslsmith_div_vec3_i32(vec3<i32>(u_input.e, 2147483647i, -85966i) >> (u_input.d.wwx % vec3<u32>(32u)), func_2().d.zzw);
    var_0 = vec3<i32>(arg_0, -29220i, -func_6(!select(vec4<bool>(false, true, global0.c.c, false), arg_1, vec4<bool>(true, false, true, arg_1.x)), func_2().c.c, global0.c));
    var_0 = _wgslsmith_clamp_vec3_i32(countOneBits(vec3<i32>(_wgslsmith_mod_i32(firstTrailingBit(-24792i), _wgslsmith_dot_vec2_i32(var_0.xy, vec2<i32>(u_input.a.x, u_input.e))), _wgslsmith_div_i32(reverseBits(u_input.e), ~u_input.e), var_0.x)), _wgslsmith_div_vec3_i32(vec3<i32>(i32(-1i) * -arg_3.x, _wgslsmith_mod_i32(1i, u_input.e) ^ ~u_input.e, ~var_0.x >> (4294967295u % 32u)), vec3<i32>(var_0.x, -14998i, u_input.a.x)), ~countOneBits(select(max(vec3<i32>(arg_0, 0i, u_input.a.x), vec3<i32>(arg_0, arg_0, 2147483647i)), -vec3<i32>(u_input.a.x, var_0.x, arg_3.x), !vec3<bool>(global0.c.c, global0.c.c, false))));
    let var_1 = -310f;
    return func_2().e.a;
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: Struct_2) -> Struct_2 {
    let var_0 = func_7(func_6(vec4<bool>(u_input.a.x == 1i, !(global0.c.a.x <= -555f), func_5(Struct_1(global0.c.a, 1u, arg_0, global0.c.d), func_2(), Struct_3(Struct_2(global0.b, 2120f, global0.c), vec4<f32>(-233f, global0.a, 1696f, 841f), arg_2.c.c, vec3<f32>(arg_2.b, arg_2.c.a.x, global0.b))), any(func_2().a.zy)), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(floor(999f)), 2762f), 4774u, true, u_input.d), global0.c), select(select(select(!vec4<bool>(false, false, global0.c.c, true), !vec4<bool>(arg_0, true, false, arg_0), false), !vec4<bool>(arg_0, global0.c.c, true, global0.c.c), select(select(vec4<bool>(true, arg_0, true, false), vec4<bool>(true, global0.c.c, true, global0.c.c), vec4<bool>(true, false, arg_2.c.c, arg_0)), vec4<bool>(global0.c.c, arg_2.c.c, false, arg_0), select(vec4<bool>(true, false, true, global0.c.c), vec4<bool>(arg_2.c.c, false, true, true), true))), select(select(!vec4<bool>(true, arg_2.c.c, true, global0.c.c), !vec4<bool>(arg_0, arg_0, global0.c.c, false), !vec4<bool>(false, false, arg_2.c.c, false)), !vec4<bool>(arg_0, false, arg_0, arg_2.c.c), select(vec4<bool>(arg_2.c.c, true, arg_0, global0.c.c), !vec4<bool>(arg_0, arg_0, false, false), all(vec3<bool>(arg_2.c.c, false, global0.c.c)))), select(select(!vec4<bool>(arg_2.c.c, true, true, false), !vec4<bool>(global0.c.c, true, arg_0, arg_2.c.c), true), select(select(vec4<bool>(true, arg_2.c.c, true, false), vec4<bool>(arg_2.c.c, false, global0.c.c, arg_2.c.c), global0.c.c), vec4<bool>(global0.c.c, arg_0, global0.c.c, true), arg_0 && false), arg_2.c.c)), false, firstTrailingBit(vec2<i32>(2147483647i, max(1i, -8748i))));
    global0 = arg_2;
    let var_1 = 68592u >> (_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(arg_2.c.d, arg_2.c.d), arg_2.c.d) % 32u);
    var var_2 = func_7(func_2().d.x | select(abs(i32(-1i) * -1i), -_wgslsmith_mod_i32(24781i, u_input.e), func_7(u_input.e, vec4<bool>(global0.c.c, false, true, var_0.c.c), var_0.c.c, _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.e, u_input.a.x), u_input.a)).c.c), select(select(vec4<bool>(func_7(u_input.e, vec4<bool>(true, true, global0.c.c, false), true, vec2<i32>(u_input.a.x, u_input.a.x)).c.c, true, true, arg_2.c.c), vec4<bool>(all(vec4<bool>(true, true, false, arg_0)), true, global0.c.c, arg_0), !arg_2.c.c), vec4<bool>(true && arg_0, var_0.c.c != all(vec3<bool>(arg_0, global0.c.c, true)), !var_0.c.c, false), !select(vec4<bool>(true, arg_2.c.c, true, arg_2.c.c), !vec4<bool>(var_0.c.c, false, global0.c.c, var_0.c.c), vec4<bool>(arg_2.c.c, false, false, true))), false, select(_wgslsmith_sub_vec2_i32(u_input.a, u_input.a), select(min(_wgslsmith_mult_vec2_i32(vec2<i32>(-16327i, u_input.a.x), vec2<i32>(2147483647i, u_input.a.x)), _wgslsmith_mult_vec2_i32(u_input.a, vec2<i32>(1i, -8005i))), ~u_input.a, func_2().a.yy), !select(vec2<bool>(global0.c.c, true), !vec2<bool>(arg_0, false), select(vec2<bool>(false, true), vec2<bool>(var_0.c.c, global0.c.c), vec2<bool>(false, true))))).c;
    var var_3 = !(abs(func_4(_wgslsmith_div_vec2_f32(vec2<f32>(-802f, 318f), arg_2.c.a), func_2().a)) >= _wgslsmith_mod_u32(4294967295u, ~u_input.b.x));
    return Struct_2(190f, -267f, Struct_1(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(399f, global0.c.a.x)))), _wgslsmith_add_u32(u_input.b.x, global0.c.d.x), any(vec3<bool>(var_2.a.x < -1263f, false, u_input.e <= 0i)), ~firstLeadingBit(var_2.d) << (var_2.d % vec4<u32>(32u))));
}

fn func_8(arg_0: Struct_2, arg_1: i32, arg_2: Struct_2) -> i32 {
    global0 = func_7(u_input.e, select(select(!vec4<bool>(true, false, false, arg_2.c.c), vec4<bool>(global0.c.c == false, true != global0.c.c, u_input.e != 5041i, arg_2.c.d.x == u_input.b.x), arg_2.c.c), vec4<bool>(true, true & arg_0.c.c, func_1(true, _wgslsmith_div_f32(arg_2.a, -1300f), Struct_2(-190f, 250f, arg_0.c)).c.c, false), false), any(select(select(func_2().a, vec3<bool>(true, true, true), !vec3<bool>(global0.c.c, arg_2.c.c, arg_0.c.c)), select(func_2().a, !vec3<bool>(global0.c.c, false, global0.c.c), select(vec3<bool>(arg_2.c.c, true, true), vec3<bool>(false, true, arg_2.c.c), global0.c.c)), !(!vec3<bool>(true, arg_0.c.c, arg_2.c.c)))), vec2<i32>(max(2147483647i, _wgslsmith_add_i32(~arg_1, u_input.e & u_input.a.x)), ~u_input.a.x));
    global0 = arg_2;
    var var_0 = vec2<i32>(u_input.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1, _wgslsmith_dot_vec4_i32(min(vec4<i32>(2147483647i, arg_1, u_input.e, -45818i), vec4<i32>(31531i, -50953i, -2147483647i, u_input.e)), countOneBits(vec4<i32>(arg_1, -1i, -16429i, arg_1)))), u_input.a));
    var var_1 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-arg_0.c.a)))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a, global0.a) - vec2<f32>(arg_2.c.a.x, arg_2.c.a.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1491f, arg_2.b) + global0.c.a)))))), 1u, func_7(_wgslsmith_div_i32(i32(-1i) * -33823i, arg_1), select(!(!vec4<bool>(global0.c.c, global0.c.c, global0.c.c, arg_2.c.c)), !(!vec4<bool>(global0.c.c, false, false, global0.c.c)), !(var_0.x > 40634i)), false, abs(abs(u_input.a) | u_input.a)).c.c, arg_2.c.d);
    var var_2 = vec4<i32>(-1i, countOneBits(2147483647i), _wgslsmith_dot_vec2_i32(u_input.a, ~_wgslsmith_mult_vec2_i32(~u_input.a, -vec2<i32>(var_0.x, 1i))), 51619i);
    return -_wgslsmith_add_i32(firstTrailingBit(~var_2.x & _wgslsmith_mod_i32(196i, -2147483647i)), var_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(~max(func_8(Struct_2(-939f, 589f, Struct_1(global0.c.a, 0u, true, global0.c.d)), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 2147483647i, u_input.a.x, -2147483647i), vec4<i32>(-43086i, 2147483647i, 2147483647i, u_input.a.x)), func_1(false, global0.a, Struct_2(global0.c.a.x, global0.c.a.x, Struct_1(vec2<f32>(744f, global0.b), global0.c.b, global0.c.c, global0.c.d)))), -1i), ~(select(max(u_input.a.x, u_input.e), u_input.a.x & 55395i, all(vec2<bool>(global0.c.c, global0.c.c))) ^ min(-12216i, _wgslsmith_add_i32(2147483647i, u_input.a.x))));
    let var_1 = func_2().e;
    let var_2 = func_2();
    let var_3 = Struct_4(!vec3<bool>(false, true | func_2().e.c, false), _wgslsmith_sub_vec4_u32(~((vec4<u32>(6605u, global0.c.b, global0.c.b, u_input.d.x) & global0.c.d) | (global0.c.d & u_input.d)), ~func_2().b), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_2.c.b - var_1.b.x)))), 839f, func_7(var_2.d.x, vec4<bool>(!var_1.c, func_7(-9626i, vec4<bool>(false, global0.c.c, global0.c.c, var_2.c.c.c), var_1.c, var_2.d.zw).c.c, func_1(var_1.c, var_2.e.d.x, Struct_2(1449f, global0.b, var_1.a.c)).c.c, func_2().a.x), var_1.c, _wgslsmith_clamp_vec2_i32(firstLeadingBit(var_0), var_0, var_0)).c), var_2.d, var_2.e);
    let var_4 = 4294967295u;
    let var_5 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -282f) * 282f);
    global0 = var_2.c;
    let x = u_input.a;
    s_output = StorageBuffer(~var_2.e.a.c.b, vec3<u32>(func_7(var_0.x, !vec4<bool>(false, global0.c.c, var_1.a.c.c, true), var_3.e.c, min(_wgslsmith_add_vec2_i32(vec2<i32>(1i, var_3.d.x), vec2<i32>(var_0.x, 26494i)), -var_3.d.zy)).c.d.x, global0.c.d.x, min(~(~4294967295u), global0.c.b)), -853f, -6807i, firstTrailingBit(abs(var_2.d)));
}

