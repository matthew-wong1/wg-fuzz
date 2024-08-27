struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec3<i32>,
    c: Struct_1,
    d: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: f32,
    d: vec2<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec3<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(Struct_2(vec3<u32>(1u, 13797u, 4294967295u), true, Struct_1(18994u, vec4<i32>(14154i, 28637i, 1533i, 1i), vec2<bool>(true, true))), Struct_2(vec3<u32>(1u, 99081u, 16221u), true, Struct_1(1u, vec4<i32>(0i, 1i, 10170i, -4757i), vec2<bool>(true, true))), 566f, vec2<i32>(51034i, 32160i), Struct_1(71114u, vec4<i32>(i32(-2147483648), -8221i, 33236i, -1561i), vec2<bool>(false, true)));

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec2<f32>, arg_2: vec2<i32>, arg_3: Struct_2) -> vec3<u32> {
    global0 = Struct_4(Struct_2(~vec3<u32>(_wgslsmith_mult_u32(u_input.b.x, 97155u), max(u_input.b.x, 10393u), u_input.b.x), arg_3.c.c.x, arg_3.c), Struct_2(firstTrailingBit(abs(vec3<u32>(83826u, 0u, global0.b.c.a))), global0.c <= 1120f, global0.e), 537f, min(select(min(vec2<i32>(arg_3.c.b.x, global0.e.b.x), vec2<i32>(global0.e.b.x, arg_3.c.b.x)), reverseBits(vec2<i32>(arg_3.c.b.x, u_input.a.x)), false), ~u_input.a & min(vec2<i32>(global0.a.c.b.x, arg_3.c.b.x), vec2<i32>(arg_2.x, -1i))) & min(~u_input.a, ~vec2<i32>(arg_3.c.b.x, u_input.a.x)), Struct_1(42065u, select(countOneBits(global0.a.c.b) | _wgslsmith_div_vec4_i32(global0.e.b, vec4<i32>(-1i, -1i, -45082i, 28566i)), vec4<i32>(_wgslsmith_dot_vec4_i32(arg_3.c.b, vec4<i32>(global0.d.x, arg_2.x, -1i, arg_2.x)), 1i, 16091i, arg_2.x | 0i), global0.b.c.c.x), select(!select(vec2<bool>(arg_3.c.c.x, false), vec2<bool>(false, global0.a.c.c.x), vec2<bool>(true, true)), select(!arg_3.c.c, !vec2<bool>(arg_3.b, arg_3.c.c.x), vec2<bool>(global0.e.c.x, global0.a.c.c.x)), all(vec2<bool>(true, global0.e.c.x)))));
    var var_0 = ~106396u;
    let var_1 = Struct_3(arg_2.x, (abs(vec3<i32>(u_input.a.x, global0.a.c.b.x, arg_3.c.b.x)) & _wgslsmith_mult_vec3_i32(countOneBits(vec3<i32>(u_input.a.x, arg_3.c.b.x, 1i)), arg_3.c.b.www)) << (~arg_3.a % vec3<u32>(32u)), Struct_1(72709u, vec4<i32>(~(~u_input.a.x), firstTrailingBit(-1i ^ global0.e.b.x), ~global0.e.b.x >> (global0.e.a % 32u), 0i & _wgslsmith_dot_vec4_i32(arg_3.c.b, vec4<i32>(-2147483647i, u_input.a.x, -15300i, 16971i))), vec2<bool>(all(!arg_3.c.c), all(!vec4<bool>(arg_3.b, arg_3.c.c.x, global0.e.c.x, arg_3.b)))), true);
    var_0 = u_input.b.x;
    let var_2 = abs(select(vec4<i32>(_wgslsmith_mod_i32(countOneBits(23226i), max(arg_2.x, 18058i)), u_input.a.x, arg_2.x, arg_3.c.b.x), vec4<i32>(var_1.c.b.x, ~(-13589i) ^ arg_2.x, _wgslsmith_dot_vec2_i32(global0.a.c.b.xx, vec2<i32>(-58800i, 8618i) | arg_2), i32(-1i) * -39465i), !(!any(vec3<bool>(global0.b.c.c.x, false, true)))));
    return ~_wgslsmith_mult_vec3_u32(u_input.b, abs(~u_input.b));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_2(func_3(vec4<f32>(_wgslsmith_f_op_f32(min(global0.c, _wgslsmith_f_op_f32(abs(191f)))), 1002f, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1000f, 1264f), _wgslsmith_div_f32(global0.c, -161f))), _wgslsmith_f_op_f32(floor(-1000f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1226f, 1958f) + vec2<f32>(global0.c, global0.c)))), u_input.a, global0.b), true | any(select(select(vec3<bool>(false, true, global0.e.c.x), vec3<bool>(global0.b.c.c.x, true, global0.a.b), vec3<bool>(true, true, global0.a.c.c.x)), select(vec3<bool>(global0.b.c.c.x, false, global0.b.b), vec3<bool>(true, global0.b.b, global0.b.c.c.x), vec3<bool>(global0.a.b, global0.a.c.c.x, true)), !vec3<bool>(global0.b.c.c.x, global0.a.b, global0.b.b))), Struct_1(reverseBits(91428u), abs(firstLeadingBit(global0.e.b)) << (vec4<u32>(min(71826u, global0.b.a.x), 1u, 44118u & global0.b.a.x, ~global0.a.c.a) % vec4<u32>(32u)), !select(vec2<bool>(true, true), global0.a.c.c, global0.a.b)));
    let var_1 = Struct_4(Struct_2(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 45336u & global0.e.a, 8536u), vec3<u32>(abs(22743u), 0u << (var_0.a.x % 32u), 32013u)), true, Struct_1(_wgslsmith_clamp_u32(var_0.a.x, u_input.b.x, 35884u) ^ 37127u, _wgslsmith_mult_vec4_i32(var_0.c.b << (vec4<u32>(var_0.a.x, 1u, var_0.c.a, var_0.a.x) % vec4<u32>(32u)), global0.b.c.b), !select(var_0.c.c, vec2<bool>(false, var_0.c.c.x), vec2<bool>(var_0.b, var_0.b)))), global0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2323f) * -2071f), vec2<i32>(-1i) * -firstLeadingBit(~var_0.c.b.zy), var_0.c);
    global0 = Struct_4(var_0, Struct_2(vec3<u32>(firstTrailingBit(u_input.b.x) ^ reverseBits(global0.e.a), 1u >> (1u % 32u), global0.e.a), var_1.a.c.c.x, var_0.c), global0.c, countOneBits(-abs(firstTrailingBit(vec2<i32>(2147483647i, global0.a.c.b.x)))), Struct_1(max(global0.a.a.x, _wgslsmith_mod_u32(countOneBits(var_1.b.a.x), 4294967295u)), -var_0.c.b, !vec2<bool>(!var_1.e.c.x, true)));
    global0 = var_1;
    var var_2 = Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(62311u, _wgslsmith_add_u32(58703u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, var_0.a.x, 0u, 1u), vec4<u32>(var_0.a.x, u_input.b.x, 4294967295u, var_1.e.a))), abs(var_1.e.a), _wgslsmith_sub_u32(~37155u, var_1.e.a)), select(~(vec4<u32>(4294967295u, u_input.b.x, 1u, 0u) | vec4<u32>(u_input.b.x, var_1.a.a.x, 51952u, 0u)), ~(~vec4<u32>(51539u, 1u, 1u, global0.a.c.a)), select(vec4<bool>(true, true, true, true), vec4<bool>(global0.b.b, var_1.a.c.c.x, false, var_0.b), false))), countOneBits(abs(global0.a.c.b)), !vec2<bool>(var_0.c.c.x, false));
    return Struct_1(var_1.a.a.x, abs(~_wgslsmith_add_vec4_i32(var_1.e.b | vec4<i32>(var_1.d.x, -2926i, -15183i, 36631i), ~vec4<i32>(u_input.a.x, -26828i, var_0.c.b.x, 21716i))), vec2<bool>(select(_wgslsmith_f_op_f32(-var_1.c) > _wgslsmith_f_op_f32(max(-1000f, 284f)), true, var_0.b), var_2.c.x));
}

fn func_1() -> Struct_1 {
    let var_0 = func_2();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0.c, global0.c)) - -1605f))) + global0.c);
    let var_2 = Struct_4(Struct_2(reverseBits(~vec3<u32>(var_0.a, u_input.b.x, 1u) << (~vec3<u32>(6809u, global0.a.a.x, 4294967295u) % vec3<u32>(32u))), !(true || !global0.a.c.c.x), func_2()), global0.b, _wgslsmith_f_op_f32(var_1 * -222f), (func_2().b.zx << (func_3(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(620f, global0.c, var_1, global0.c))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_1, -1308f))), u_input.a, Struct_2(u_input.b, global0.a.c.c.x, Struct_1(47330u, global0.e.b, vec2<bool>(var_0.c.x, global0.e.c.x)))).xx % vec2<u32>(32u))) | (max(global0.a.c.b.wz, vec2<i32>(-29837i, 22621i)) ^ var_0.b.wx), var_0);
    let var_3 = _wgslsmith_div_i32(_wgslsmith_mod_i32(2147483647i, 1i), abs(-reverseBits(select(u_input.a.x, u_input.a.x, var_2.a.b))));
    var var_4 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_2.c, var_1))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.c, var_1) - vec2<f32>(global0.c, 1854f)), var_0.c)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-566f, var_1), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.c, -2522f) - vec2<f32>(var_1, var_2.c)), global0.b.c.c)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-170f, -1498f))))));
    return var_0;
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: f32, arg_3: Struct_4) -> Struct_3 {
    let var_0 = global0.a.c.c.x;
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, -736f)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_3.c, -1864f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, arg_3.c)), any(vec3<bool>(global0.a.b, false, true))))))));
    let var_2 = abs(func_1().b.yw);
    global0 = Struct_4(Struct_2(~(func_3(vec4<f32>(arg_2, global0.c, -869f, -208f), vec2<f32>(global0.c, -1124f), global0.d, Struct_2(arg_3.b.a, false, global0.e)) << (select(global0.a.a, vec3<u32>(u_input.b.x, global0.e.a, 21819u), false) % vec3<u32>(32u))), true, Struct_1(4294967295u, arg_3.e.b, !func_2().c)), Struct_2(countOneBits(vec3<u32>(0u << (u_input.b.x % 32u), arg_3.b.c.a ^ 0u, ~arg_3.e.a)), arg_3.e.c.x, func_1()), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(344f, _wgslsmith_f_op_f32(trunc(-1248f)))))), ~vec2<i32>(-_wgslsmith_mod_i32(arg_3.b.c.b.x, arg_1), func_1().b.x), Struct_1(global0.a.c.a, ~global0.a.c.b, vec2<bool>(arg_0, true)));
    var var_3 = select(max(_wgslsmith_div_vec2_u32(abs(global0.a.a.yx), _wgslsmith_add_vec2_u32(~arg_3.b.a.yy, vec2<u32>(107242u, 1u))), ~arg_3.b.a.xz >> (~(~vec2<u32>(71250u, arg_3.a.a.x)) % vec2<u32>(32u))), arg_3.a.a.yx, func_1().c.x);
    return Struct_3(-43687i, firstLeadingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a.x, _wgslsmith_sub_i32(-1i, global0.d.x), ~36685i), -_wgslsmith_add_vec3_i32(arg_3.e.b.zzw, vec3<i32>(arg_1, arg_1, arg_1)), vec3<i32>(~u_input.a.x, arg_3.e.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, arg_3.b.c.b.x, global0.a.c.b.x, 1018i), arg_3.a.c.b)))), Struct_1(1u, ~(~_wgslsmith_sub_vec4_i32(vec4<i32>(-21502i, -15877i, -16894i, -2147483647i), arg_3.a.c.b)), !vec2<bool>(!global0.e.c.x, arg_3.a.b)), all(!arg_3.e.c));
}

fn func_5(arg_0: Struct_3) -> Struct_4 {
    var var_0 = Struct_3(_wgslsmith_mult_i32(-2147483647i, ~_wgslsmith_mod_i32(u_input.a.x, -1i) >> (arg_0.c.a % 32u)), -global0.e.b.zyz, Struct_1(_wgslsmith_dot_vec3_u32((global0.b.a >> (global0.b.a % vec3<u32>(32u))) ^ u_input.b, u_input.b), vec4<i32>(select(arg_0.a, _wgslsmith_dot_vec3_i32(vec3<i32>(global0.b.c.b.x, u_input.a.x, 2147483647i), vec3<i32>(2147483647i, arg_0.a, 2147483647i)), any(vec4<bool>(arg_0.d, true, arg_0.c.c.x, arg_0.c.c.x))), 18944i, ~27108i, arg_0.b.x), !global0.b.c.c), global0.c >= _wgslsmith_f_op_f32(-626f + _wgslsmith_f_op_f32(select(1000f, global0.c, all(vec3<bool>(true, false, arg_0.c.c.x))))));
    var var_1 = _wgslsmith_mult_i32(-(~(firstTrailingBit(global0.e.b.x) << (4294967295u % 32u))), ~_wgslsmith_add_i32(20923i, global0.e.b.x) & 1i);
    var_0 = Struct_3(arg_0.b.x, select(-vec3<i32>(~arg_0.a, 6692i, -1i), global0.b.c.b.xwz, true), Struct_1(var_0.c.a, _wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(4718i, u_input.a.x, -1i, 17531i), arg_0.c.b), ~(-vec4<i32>(u_input.a.x, 0i, -1i, -30408i))), !(!arg_0.c.c)), !(global0.b.c.b.x >= (var_0.b.x & -19601i)));
    var_1 = _wgslsmith_mult_i32(2147483647i, firstTrailingBit(var_0.a));
    let var_2 = ~vec4<u32>(~_wgslsmith_add_u32(39458u, arg_0.c.a), func_2().a, u_input.b.x, abs(func_1().a)) & (~(~firstLeadingBit(vec4<u32>(u_input.b.x, 49239u, global0.e.a, u_input.b.x))) | ((vec4<u32>(u_input.b.x, u_input.b.x, var_0.c.a, u_input.b.x) & firstTrailingBit(vec4<u32>(var_0.c.a, 35953u, 1u, 4294967295u))) & select(~vec4<u32>(global0.e.a, arg_0.c.a, 1u, 4294967295u), vec4<u32>(global0.a.c.a, u_input.b.x, arg_0.c.a, u_input.b.x), !vec4<bool>(arg_0.d, false, global0.a.b, true))));
    return Struct_4(Struct_2(~(~vec3<u32>(28637u, 41937u, u_input.b.x)), func_1().c.x, func_1()), Struct_2(vec3<u32>(u_input.b.x | 4294967295u, func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1539f, -1196f, -910f, -523f)), vec2<f32>(global0.c, global0.c), ~vec2<i32>(arg_0.b.x, -2312i), Struct_2(vec3<u32>(u_input.b.x, arg_0.c.a, 50849u), true, Struct_1(var_2.x, vec4<i32>(-1i, 0i, -32508i, arg_0.a), var_0.c.c))).x, 4294967295u), false, func_4(all(!vec2<bool>(arg_0.c.c.x, global0.a.c.c.x)), firstLeadingBit(min(var_0.b.x, -2147483647i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c * global0.c)), Struct_4(global0.a, Struct_2(vec3<u32>(4294967295u, u_input.b.x, 1u), false, var_0.c), global0.c, vec2<i32>(35458i, global0.d.x) >> (u_input.b.xz % vec2<u32>(32u)), func_4(global0.b.b, 0i, global0.c, Struct_4(Struct_2(vec3<u32>(63315u, var_2.x, var_2.x), global0.a.c.c.x, Struct_1(0u, arg_0.c.b, vec2<bool>(true, var_0.c.c.x))), Struct_2(vec3<u32>(arg_0.c.a, global0.b.c.a, 4294967295u), true, arg_0.c), global0.c, u_input.a, var_0.c)).c)).c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(global0.c, 719f)), global0.c) + global0.c) + global0.c), vec2<i32>(~reverseBits(2147483647i), arg_0.a), arg_0.c);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(func_4(global0.a.b, -_wgslsmith_div_i32(-global0.e.b.x, i32(-1i) * -2147483647i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0.c), _wgslsmith_f_op_f32(f32(-1f) * -1000f))) - 295f), Struct_4(Struct_2(_wgslsmith_div_vec3_u32(global0.a.a, u_input.b), true, global0.e), Struct_2(vec3<u32>(11317u, u_input.b.x, 4294967295u), global0.b.b && global0.a.b, func_1()), _wgslsmith_f_op_f32(-103f + _wgslsmith_f_op_f32(-global0.c)), vec2<i32>(_wgslsmith_dot_vec4_i32(global0.b.c.b, global0.a.c.b), 46274i), func_2())));
    global0 = Struct_4(global0.b, Struct_2(u_input.b, global0.b.c.c.x | !(!global0.a.b), Struct_1(abs(firstTrailingBit(1u)), -(global0.b.c.b | global0.a.c.b), !global0.a.c.c)), -145f, vec2<i32>(func_4(false, abs(0i), 837f, Struct_4(Struct_2(vec3<u32>(4294967295u, u_input.b.x, u_input.b.x), true, Struct_1(81465u, global0.e.b, vec2<bool>(true, global0.a.b))), func_5(Struct_3(global0.e.b.x, global0.e.b.xzy, Struct_1(15986u, vec4<i32>(-7072i, u_input.a.x, global0.b.c.b.x, -5247i), global0.b.c.c), true)).a, _wgslsmith_f_op_f32(max(260f, -244f)), vec2<i32>(-381i, global0.b.c.b.x), global0.b.c)).a, min(~func_4(global0.e.c.x, u_input.a.x, 201f, Struct_4(Struct_2(vec3<u32>(u_input.b.x, 20623u, 24018u), false, global0.a.c), Struct_2(vec3<u32>(4294967295u, 1u, 57356u), global0.a.b, global0.e), 476f, u_input.a, Struct_1(1u, global0.e.b, vec2<bool>(false, true)))).b.x, -13850i)), Struct_1(~59948u, global0.b.c.b, select(global0.b.c.c, global0.a.c.c, !vec2<bool>(false, global0.a.b))));
    let var_0 = func_5(func_4(func_1().c.x, u_input.a.x, -368f, Struct_4(global0.b, func_5(func_4(false, u_input.a.x, -737f, Struct_4(Struct_2(vec3<u32>(0u, 60163u, 29304u), global0.b.c.c.x, Struct_1(u_input.b.x, global0.b.c.b, global0.b.c.c)), global0.b, -848f, vec2<i32>(global0.e.b.x, -17179i), global0.a.c))).a, 1217f, _wgslsmith_mod_vec2_i32(~global0.e.b.xy, vec2<i32>(11039i, global0.b.c.b.x) & u_input.a), Struct_1(4294967295u, abs(global0.b.c.b), vec2<bool>(global0.a.c.c.x, global0.a.c.c.x))))).a;
    global0 = Struct_4(func_5(Struct_3(_wgslsmith_mult_i32(min(31224i, 2147483647i), var_0.c.b.x), _wgslsmith_add_vec3_i32(func_4(global0.e.c.x, 0i, global0.c, Struct_4(Struct_2(var_0.a, true, Struct_1(16107u, var_0.c.b, vec2<bool>(true, false))), var_0, global0.c, global0.a.c.b.xy, global0.e)).b, var_0.c.b.zyx), var_0.c, select(global0.e.c.x, global0.e.a == global0.a.a.x, !var_0.b))).b, Struct_2(func_5(func_4(global0.e.c.x, func_2().b.x, _wgslsmith_f_op_f32(global0.c + 1504f), func_5(Struct_3(-29764i, vec3<i32>(1i, u_input.a.x, global0.a.c.b.x), global0.e, false)))).a.a, true, global0.a.c), _wgslsmith_f_op_f32(step(global0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(446f))))), -_wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(-var_0.c.b.zx, var_0.c.b.wy), -firstLeadingBit(var_0.c.b.zz)), Struct_1(~global0.a.c.a, -vec4<i32>(~2873i, func_2().b.x, var_0.c.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.c.b.x, u_input.a.x, u_input.a.x), var_0.c.b.wxw)), func_2().c));
    let var_1 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(2083f, global0.c, global0.c) * vec3<f32>(global0.c, global0.c, 1102f)) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(705f, 257f, -1000f))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.c, 1000f, -1000f) * vec3<f32>(-426f, -718f, global0.c)))))));
    global0 = func_5(Struct_3(_wgslsmith_dot_vec3_i32(var_0.c.b.yyx, abs(vec3<i32>(-51036i, var_0.c.b.x, 2147483647i))) >> (func_3(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_1.x, global0.c, 1139f, var_1.x), vec4<f32>(var_1.x, 1048f, -284f, global0.c))), _wgslsmith_f_op_vec2_f32(var_1.zz - var_1.xz), -global0.e.b.yy, global0.a).x % 32u), vec3<i32>(~var_0.c.b.x >> (var_0.c.a % 32u), -2147483647i, firstLeadingBit(u_input.a.x)), Struct_1(u_input.b.x, var_0.c.b, var_0.c.c), any(!select(vec3<bool>(global0.e.c.x, true, true), vec3<bool>(global0.e.c.x, var_0.c.c.x, global0.e.c.x), var_0.c.c.x))));
    let var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.yz), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-164f * 1381f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(793f)))), 524f));
    var var_3 = u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(abs(firstTrailingBit(-(~37119i))), var_0.c.b.zww, _wgslsmith_sub_vec4_i32(func_2().b, vec4<i32>(-1i, var_0.c.b.x, ~global0.b.c.b.x & _wgslsmith_div_i32(48493i, global0.a.c.b.x), 1i << (global0.a.a.x % 32u))), ~select(u_input.b, ~select(vec3<u32>(4294967295u, 26645u, 0u), u_input.b, vec3<bool>(true, false, false)), vec3<bool>(true, func_2().c.x, u_input.a.x >= u_input.a.x)), u_input.b.x);
}

