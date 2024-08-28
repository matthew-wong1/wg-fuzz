struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: u32,
    d: vec2<i32>,
    e: f32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec2<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<i32>,
    c: u32,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -913f;

var<private> global1: Struct_4 = Struct_4(Struct_1(2337f), vec4<i32>(-64632i, 583i, 37697i, -1i), 48281u, vec4<f32>(394f, -593f, 736f, 974f));

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_4, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_3) -> f32 {
    global0 = -1270f;
    var var_0 = Struct_4(arg_1.b, _wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(arg_0.b, ~vec4<i32>(1i, 1i, arg_0.b.x, 2147483647i)), vec4<i32>(global1.b.x, _wgslsmith_mult_i32(-arg_3.b.x, _wgslsmith_clamp_i32(2147483647i, 2147483647i, 0i)), ~(~arg_0.b.x), arg_3.b.x)), abs(abs(4294967295u)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.a, arg_0.d.x, 1189f, -583f) + global1.d)) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(exp2(arg_0.d))))))));
    global0 = 1f;
    global1 = Struct_4(arg_1.b, firstLeadingBit(-max(~global1.b, _wgslsmith_mod_vec4_i32(global1.b, arg_0.b))), arg_3.a.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.d.x, 114f, arg_2.a, -854f) * _wgslsmith_f_op_vec4_f32(var_0.d - arg_0.d)), vec4<f32>(_wgslsmith_f_op_f32(-arg_1.e), 379f, _wgslsmith_f_op_f32(arg_1.b.a + var_0.d.x), 876f))) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(global1.a.a * arg_1.a), _wgslsmith_f_op_f32(561f + -568f), _wgslsmith_f_op_f32(var_0.a.a + arg_2.a), _wgslsmith_f_op_f32(-1152f - 1839f))))));
    var_0 = Struct_4(Struct_1(var_0.d.x), vec4<i32>((i32(-1i) * -1i) >> (arg_3.a.x % 32u), 0i, var_0.b.x, -60901i), ~(~86363u >> (_wgslsmith_mult_u32(1u, arg_3.a.x) % 32u)) ^ 1u, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -255f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-369f)), 1000f), arg_1.e, -1380f))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.d.x + _wgslsmith_f_op_f32(-1493f * global1.d.x)));
}

fn func_2(arg_0: vec4<f32>) -> f32 {
    global1 = Struct_4(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_4(Struct_1(-201f), vec4<i32>(-30174i, -29690i, u_input.d.x, global1.b.x), 3885u, vec4<f32>(global1.a.a, arg_0.x, -1000f, global1.a.a)), Struct_2(431f, global1.a, u_input.a, u_input.d, -1547f), Struct_1(arg_0.x), Struct_3(vec3<u32>(4294967295u, u_input.a, 4294967295u), u_input.d))))), vec4<i32>(~(~(~42559i)), min(1i, 19601i), global1.b.x, -_wgslsmith_dot_vec3_i32(~global1.b.xwz, global1.b.zxw)), ~(~(abs(global1.c) & global1.c)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(arg_0, _wgslsmith_f_op_vec4_f32(-global1.d), select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true)))))));
    var var_0 = select(~vec3<u32>(176730u, select(56194u, 16546u, all(vec4<bool>(true, false, true, true))), u_input.e.x), u_input.e, all(vec4<bool>(any(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false))), any(vec3<bool>(true, true, true)), true, any(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false))))));
    var var_1 = !(38704i < (-2147483647i ^ -u_input.b)) & false;
    var var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-123f, -645f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.a - arg_0.x))))), global1.a, global1.c, _wgslsmith_mult_vec2_i32(abs(abs(vec2<i32>(29456i, -20675i))) >> (select(vec2<u32>(var_0.x, var_0.x), ~u_input.e.zy, vec2<bool>(true, true)) % vec2<u32>(32u)), select(vec2<i32>(-1i) * -global1.b.yy, vec2<i32>(2147483647i, global1.b.x & 7813i), vec2<bool>(true, true))), _wgslsmith_f_op_f32(628f + global1.d.x));
    var_1 = true;
    return -1342f;
}

fn func_1() -> u32 {
    let var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(global1.d)) - global1.d.x)))), -628f, reverseBits(4294967295u) >= global1.c));
    let var_1 = Struct_3(abs(vec3<u32>(global1.c, global1.c, 56340u)), ~vec2<i32>(u_input.d.x, i32(-1i) * -30504i));
    let var_2 = var_1;
    var var_3 = Struct_2(_wgslsmith_f_op_f32(304f * global1.a.a), Struct_1(var_0), _wgslsmith_dot_vec2_u32(~select(abs(vec2<u32>(100288u, var_1.a.x)), var_1.a.yx, select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false))), var_2.a.zy), u_input.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0, var_0)) - 1000f))));
    let var_4 = Struct_4(var_3.b, global1.b, ~var_3.c, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(floor(-106f)), var_3.a, _wgslsmith_f_op_f32(1f - 588f))));
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!(!select(select(vec2<bool>(true, false), vec2<bool>(true, false), false), vec2<bool>(true, true), vec2<bool>(true, true))));
    let var_1 = Struct_3(max(vec3<u32>(func_1(), ~4294967295u, ~14024u), countOneBits(vec3<u32>(0u, global1.c, 1u))) << (_wgslsmith_mult_vec3_u32(~_wgslsmith_div_vec3_u32(u_input.e, vec3<u32>(28991u, u_input.c, 0u)), ~vec3<u32>(global1.c, global1.c, global1.c)) % vec3<u32>(32u)), firstLeadingBit(~select(abs(vec2<i32>(u_input.b, 0i)), vec2<i32>(37574i, u_input.d.x), !var_0)));
    global1 = Struct_4(global1.a, global1.b, _wgslsmith_clamp_u32(~(_wgslsmith_div_u32(44972u, var_1.a.x) | reverseBits(2045u)), min(_wgslsmith_div_u32(0u, ~8281u), 0u), select(u_input.a, u_input.c, any(vec4<bool>(true, true, false, false))) >> (_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(var_1.a.xy, u_input.e.yy), countOneBits(u_input.e.yz)) % 32u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(global1.d, _wgslsmith_f_op_vec4_f32(round(global1.d))) + _wgslsmith_f_op_vec4_f32(floor(global1.d))));
    global1 = Struct_4(Struct_1(_wgslsmith_f_op_f32(func_3(Struct_4(global1.a, global1.b, _wgslsmith_mult_u32(global1.c, u_input.a), _wgslsmith_f_op_vec4_f32(global1.d * vec4<f32>(839f, 135f, global1.a.a, global1.a.a))), Struct_2(-437f, global1.a, _wgslsmith_dot_vec2_u32(u_input.e.xy, var_1.a.yx), ~global1.b.zz, _wgslsmith_f_op_f32(global1.d.x - 2654f)), Struct_1(_wgslsmith_f_op_f32(global1.d.x + global1.a.a)), var_1))), abs(vec4<i32>(~global1.b.x, reverseBits(_wgslsmith_div_i32(var_1.b.x, global1.b.x)), ~_wgslsmith_mult_i32(1i, 0i), ~_wgslsmith_clamp_i32(1i, -2147483647i, global1.b.x))), 49590u, global1.d);
    var var_2 = false;
    let var_3 = global1.a.a;
    var_2 = true;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a, select(vec4<i32>(~25326i, max(-1i, var_1.b.x), -1i, -2147483647i & u_input.b) >> (~abs(vec4<u32>(var_1.a.x, 1u, u_input.c, 4345u)) % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(-(vec4<i32>(-1i, var_1.b.x, u_input.d.x, -1392i) | global1.b), global1.b), !vec4<bool>(true, var_0.x && var_0.x, all(var_0), true)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(1152f)), _wgslsmith_f_op_f32(global1.d.x - 715f))))));
}

