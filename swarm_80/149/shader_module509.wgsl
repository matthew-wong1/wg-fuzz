struct Struct_1 {
    a: bool,
    b: f32,
    c: vec4<bool>,
    d: vec4<bool>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: u32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: i32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 27> = array<u32, 27>(4294967295u, 1u, 0u, 1887u, 66669u, 4294967295u, 1u, 0u, 106369u, 38742u, 7082u, 4294967295u, 0u, 68318u, 1u, 1u, 24238u, 4294967295u, 0u, 112206u, 132378u, 0u, 41858u, 4294967295u, 4294967295u, 64549u, 1u);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> vec3<bool> {
    var var_0 = Struct_2(0u, Struct_1(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-695f, 732f) - _wgslsmith_f_op_f32(sign(-550f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-914f, 963f)) - 1f)), !select(vec4<bool>(false, false, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false)), select(false, true, true)), vec4<bool>(true, any(vec2<bool>(false, false)), true, select(true, true, select(false, false, true))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(483f, 1656f, -433f)))))));
    var var_1 = vec4<i32>(1i, u_input.c.x, _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(-vec2<i32>(u_input.c.x, 6323i), -u_input.c.yz, u_input.c.zz), select(min(vec2<i32>(0i, u_input.a), vec2<i32>(-1i, u_input.a)), u_input.c.zz << (vec2<u32>(2616u, 0u) % vec2<u32>(32u)), var_0.b.a)), firstLeadingBit(u_input.c.x)) ^ (-reverseBits(select(vec4<i32>(3575i, 29895i, 1i, 1i), vec4<i32>(u_input.c.x, u_input.c.x, -2147483647i, u_input.a), false)) | vec4<i32>(~u_input.c.x ^ u_input.c.x, ~_wgslsmith_dot_vec2_i32(u_input.c.xy, vec2<i32>(u_input.c.x, 167i)), _wgslsmith_sub_i32(-48491i, ~9290i), -1i));
    global0 = array<u32, 27>();
    var var_2 = true;
    var_0 = Struct_2(~(~u_input.d.x), var_0.b);
    return vec3<bool>(var_0.b.d.x, !((false != var_0.b.c.x) | true) & true, true);
}

fn func_2(arg_0: bool) -> Struct_1 {
    global0 = array<u32, 27>();
    global0 = array<u32, 27>();
    var var_0 = func_3();
    var_0 = select(vec3<bool>(!var_0.x, true, func_3().x), !(!vec3<bool>(all(vec4<bool>(true, arg_0, false, false)), true, all(vec2<bool>(true, false)))), true);
    global0 = array<u32, 27>();
    return Struct_1(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(1047f, 1838f)))) * -1267f)), vec4<bool>(!arg_0, select(var_0.x, var_0.x, true), arg_0, var_0.x), !vec4<bool>(true, true, func_3().x, any(vec2<bool>(false, arg_0))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -863f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1000f))), -1448f), vec3<f32>(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(644f * 1000f)), 1f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-401f)), _wgslsmith_f_op_f32(-1733f * -1228f), var_0.x))))));
}

fn func_4(arg_0: Struct_4, arg_1: u32, arg_2: Struct_1, arg_3: vec3<f32>) -> Struct_2 {
    var var_0 = Struct_3(u_input.a, ~(~max(~1u, _wgslsmith_add_u32(arg_1, u_input.d.x))));
    let var_1 = Struct_3(~46054i, select(select(global0[_wgslsmith_index_u32(var_0.b << (61440u % 32u), 27u)], _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, 0u), arg_0.a), arg_0.b.d.x) >> ((arg_1 & select(global0[_wgslsmith_index_u32(arg_1, 27u)], 4294967295u, arg_2.d.x)) % 32u), max(_wgslsmith_mult_u32(u_input.b.x, arg_0.a.x), ~firstLeadingBit(1u)), !arg_0.b.d.x));
    var var_2 = arg_0.b;
    var_2 = func_2(-(~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, u_input.c.x), u_input.c.yz)) != _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(80905i, 2147483647i, 20961i, u_input.a), vec4<i32>(u_input.c.x, var_1.a, 1i, u_input.a), vec4<i32>(var_1.a, var_0.a, u_input.a, 1i)), ~vec4<i32>(-2147483647i, var_1.a, var_1.a, var_0.a)), _wgslsmith_add_i32(firstLeadingBit(var_1.a), max(var_0.a, var_1.a))));
    let var_3 = ~(~vec4<u32>(5322u, 4294967295u ^ var_1.b, max(~var_1.b, ~0u), 2609u));
    return Struct_2(arg_0.a.x, Struct_1(select(true, false, any(!vec4<bool>(false, false, false, var_2.a))), -597f, func_2(false && var_2.d.x).c, arg_0.b.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_3 - _wgslsmith_f_op_vec3_f32(-arg_0.b.e)))));
}

fn func_1(arg_0: u32, arg_1: Struct_2, arg_2: Struct_3) -> Struct_2 {
    global0 = array<u32, 27>();
    var var_0 = min(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, 42268u, 0u << (~global0[_wgslsmith_index_u32(arg_2.b, 27u)] % 32u), arg_0), u_input.b), _wgslsmith_add_vec4_u32(vec4<u32>(2809u, abs(0u), min(arg_1.a, 44932u), 22865u), u_input.b));
    let var_1 = arg_1.b.a;
    global0 = array<u32, 27>();
    var_0 = u_input.b;
    return func_4(Struct_4(vec3<u32>(1u >> ((84870u >> (global0[_wgslsmith_index_u32(var_0.x, 27u)] % 32u)) % 32u), arg_0, ~var_0.x), func_2(!arg_1.b.a)), ~max(u_input.d.x, 66183u), arg_1.b, vec3<f32>(-1087f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b.e.x * 1000f) * 353f)), arg_1.b.b));
}

fn func_5(arg_0: Struct_2, arg_1: u32, arg_2: u32, arg_3: vec2<u32>) -> Struct_3 {
    let var_0 = arg_0.b;
    global0 = array<u32, 27>();
    global0 = array<u32, 27>();
    global0 = array<u32, 27>();
    global0 = array<u32, 27>();
    return Struct_3(_wgslsmith_sub_i32(~min(9983i, _wgslsmith_dot_vec2_i32(u_input.c.zy, u_input.c.yy)), u_input.a), arg_3.x);
}

fn func_6(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec3<bool>) -> Struct_1 {
    global0 = array<u32, 27>();
    return Struct_1(false, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1486f))), vec4<bool>(1u == arg_1.b, arg_2.x, arg_2.x, !(!arg_2.x)), select(!func_2(true).c, vec4<bool>(!(!arg_2.x), all(func_4(Struct_4(u_input.d, Struct_1(arg_2.x, -1085f, vec4<bool>(arg_2.x, false, arg_2.x, true), vec4<bool>(false, false, false, true), vec3<f32>(-1104f, -632f, 172f))), 42947u, Struct_1(false, -840f, vec4<bool>(arg_2.x, true, arg_2.x, true), vec4<bool>(true, arg_2.x, arg_2.x, true), vec3<f32>(-212f, 1611f, 829f)), vec3<f32>(-1332f, 749f, -839f)).b.d.xwy), func_1(u_input.d.x, Struct_2(35477u, Struct_1(arg_2.x, -1000f, vec4<bool>(arg_2.x, arg_2.x, true, arg_2.x), vec4<bool>(arg_2.x, arg_2.x, arg_2.x, arg_2.x), vec3<f32>(437f, 1077f, -341f))), arg_1).b.a && true, true), false), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -534f), 108f, -784f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 27>();
    var var_0 = Struct_2(~global0[_wgslsmith_index_u32(u_input.d.x, 27u)], func_6(Struct_3(firstTrailingBit(-2147483647i), _wgslsmith_sub_u32(u_input.b.x, global0[_wgslsmith_index_u32(35075u, 27u)])), func_5(func_1(~1u, Struct_2(global0[_wgslsmith_index_u32(4294967295u, 27u)], Struct_1(true, 1000f, vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), vec3<f32>(543f, 172f, -1505f))), Struct_3(-1113i, 43951u)), global0[_wgslsmith_index_u32(u_input.d.x, 27u)], ~(~global0[_wgslsmith_index_u32(u_input.b.x, 27u)]), firstLeadingBit(u_input.d.xy)), vec3<bool>(any(vec4<bool>(true, true, true, true)), false, true)));
    var var_1 = 4294967295u;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(585f - _wgslsmith_f_op_f32(select(-846f, var_0.b.b, true))), var_0.b.e.x, var_0.b.a))));
    var_2 = _wgslsmith_f_op_f32(-var_0.b.b);
    var var_3 = -(~vec2<i32>(~(-1i), u_input.c.x));
    var var_4 = func_4(Struct_4(u_input.d | ~(~u_input.b.wwz), func_4(Struct_4(firstLeadingBit(u_input.b.xyz), var_0.b), _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(0u, u_input.b.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 27u)], 27u)]), vec3<u32>(92859u, 0u, 1u)), u_input.d), Struct_1(true | var_0.b.a, _wgslsmith_f_op_f32(-var_0.b.e.x), func_6(Struct_3(-31380i, u_input.d.x), Struct_3(-2147483647i, var_0.a), vec3<bool>(true, var_0.b.a, true)).d, func_4(Struct_4(vec3<u32>(3906u, 68134u, u_input.d.x), var_0.b), 6299u, Struct_1(var_0.b.d.x, var_0.b.b, var_0.b.d, vec4<bool>(var_0.b.d.x, var_0.b.a, true, false), vec3<f32>(var_0.b.b, -191f, 502f)), vec3<f32>(1351f, 2538f, var_0.b.e.x)).b.c, vec3<f32>(-1000f, 159f, var_0.b.e.x)), _wgslsmith_f_op_vec3_f32(round(var_0.b.e))).b), 14740u, var_0.b, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(171f, var_0.b.e.x, 543f))))))).b.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32(1u, 27u)], vec2<i32>(-2147483647i >> ((57983u ^ global0[_wgslsmith_index_u32(u_input.b.x, 27u)]) % 32u), var_3.x) ^ u_input.c.xx, ~_wgslsmith_add_vec3_u32(countOneBits(abs(vec3<u32>(22338u, var_0.a, 1u))), ~reverseBits(vec3<u32>(0u, u_input.b.x, u_input.b.x))), u_input.c.x, func_1(u_input.d.x, func_1(0u | global0[_wgslsmith_index_u32(var_0.a | u_input.d.x, 27u)], func_1(~global0[_wgslsmith_index_u32(9953u, 27u)], Struct_2(var_0.a, var_0.b), Struct_3(2147483647i, 14403u)), Struct_3(u_input.c.x | 1i, 153816u)), Struct_3(_wgslsmith_add_i32(~u_input.a, firstLeadingBit(u_input.c.x)), _wgslsmith_mult_u32(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.d.x, 27u)], 27u)]))).b.e.yy);
}

