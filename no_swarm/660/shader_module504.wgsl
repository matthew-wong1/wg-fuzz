struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 13>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: u32, arg_3: Struct_2) -> Struct_1 {
    global0 = array<i32, 13>();
    global0 = array<i32, 13>();
    var var_0 = Struct_2(u_input.c >> (1u % 32u), all(vec2<bool>(true, true)), Struct_1(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(~1u, countOneBits(1u)), ~u_input.d, ~abs(arg_0.a.c.a))), arg_0.a.d);
    let var_1 = Struct_3(arg_3, arg_3.c.a << (u_input.d % 32u), arg_0.c);
    let var_2 = _wgslsmith_f_op_f32(step(-706f, -495f));
    return arg_3.c;
}

fn func_3(arg_0: Struct_1) -> Struct_2 {
    global0 = array<i32, 13>();
    let var_0 = ~vec2<u32>(_wgslsmith_mod_u32(abs(~0u), 38949u), 25792u);
    let var_1 = Struct_3(Struct_2(64i, !all(select(vec2<bool>(false, false), vec2<bool>(true, true), false)), Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, 51133u, 0u, 23109u), vec4<u32>(arg_0.a, 1u, var_0.x, arg_0.a) & vec4<u32>(1u, 18452u, u_input.d, 27661u))), Struct_1(firstLeadingBit(_wgslsmith_add_u32(var_0.x, 1u)))), 30121u, -1171f);
    let var_2 = arg_0;
    let var_3 = true;
    return var_1.a;
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = Struct_3(func_3(func_2(Struct_3(Struct_2(u_input.e, false, arg_1, Struct_1(u_input.d)), ~7612u, _wgslsmith_f_op_f32(arg_0.x + arg_0.x)), vec3<i32>(-1i, -global0[_wgslsmith_index_u32(arg_1.a, 13u)], 10966i), _wgslsmith_add_u32(0u, select(u_input.d, u_input.d, false)), Struct_2(abs(2149i), true, arg_1, Struct_1(arg_1.a)))), firstLeadingBit(firstLeadingBit(4753u >> (~arg_1.a % 32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1366f * 1841f)))) + arg_0.x));
    global0 = array<i32, 13>();
    let var_1 = ~func_2(Struct_3(func_3(var_0.a.d), ~(~var_0.a.c.a), 2754f), ~(u_input.a ^ _wgslsmith_sub_vec3_i32(u_input.a, vec3<i32>(591i, 29836i, global0[_wgslsmith_index_u32(1u, 13u)]))), ~(abs(1u) & var_0.a.d.a), Struct_2(u_input.e, any(vec3<bool>(true, true, true)), var_0.a.c, func_2(Struct_3(var_0.a, arg_1.a, arg_0.x), u_input.a, 108914u ^ arg_1.a, Struct_2(global0[_wgslsmith_index_u32(var_0.a.d.a, 13u)], var_0.a.b, Struct_1(24827u), Struct_1(arg_1.a))))).a;
    var var_2 = func_3(arg_1).a;
    var_2 = _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.a, vec3<i32>(_wgslsmith_sub_i32(var_0.a.a, global0[_wgslsmith_index_u32(var_0.b, 13u)]), -13586i, _wgslsmith_add_i32(u_input.a.x, global0[_wgslsmith_index_u32(14147u, 13u)])) >> (select(~vec3<u32>(58752u, 1u, u_input.d), vec3<u32>(45354u, 4294967295u, u_input.d), vec3<bool>(var_0.a.b, false, true)) % vec3<u32>(32u))), _wgslsmith_div_vec3_i32(firstTrailingBit(~(-u_input.a)), u_input.a));
    return var_0.a.c;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3) -> u32 {
    let var_0 = func_3(arg_0);
    global0 = array<i32, 13>();
    let var_1 = Struct_2(global0[_wgslsmith_index_u32(countOneBits(_wgslsmith_div_u32(firstTrailingBit(50012u), max(arg_0.a, arg_1.b))) << (arg_1.a.c.a % 32u), 13u)], arg_1.a.b, Struct_1(arg_1.b), arg_0);
    let var_2 = arg_1;
    var var_3 = ~_wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.a | (vec3<i32>(var_1.a, arg_1.a.a, u_input.e) | u_input.a), ~select(u_input.a, u_input.a, vec3<bool>(true, var_0.b, false))), -u_input.a);
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1094f, -817f, 1510f, -398f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1553f, 606f, 203f, 1169f) * vec4<f32>(1333f, -422f, -377f, -2665f))))), Struct_1(872u)), Struct_3(func_3(func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1127f, -583f, -360f, 486f)), Struct_1(1u))), ~1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1f)))));
    let var_1 = Struct_3(Struct_2(-u_input.b, true, func_2(Struct_3(Struct_2(global0[_wgslsmith_index_u32(var_0, 13u)], false, Struct_1(u_input.d), Struct_1(10420u)), var_0, 353f), firstTrailingBit(vec3<i32>(u_input.c, u_input.a.x, 0i)), reverseBits(func_1(vec4<f32>(-170f, -432f, 308f, -938f), Struct_1(u_input.d)).a), Struct_2(global0[_wgslsmith_index_u32(abs(u_input.d), 13u)], false, Struct_1(u_input.d), func_2(Struct_3(Struct_2(-3589i, false, Struct_1(13030u), Struct_1(u_input.d)), u_input.d, -539f), vec3<i32>(2147483647i, u_input.a.x, 0i), var_0, Struct_2(u_input.c, true, Struct_1(7343u), Struct_1(u_input.d))))), Struct_1(18499u)), _wgslsmith_sub_u32(func_3(func_3(Struct_1(54980u)).c).d.a, ~(~var_0)), -1224f);
    let var_2 = Struct_2(u_input.a.x, !(!var_1.a.b || var_1.a.b), Struct_1(1u), var_1.a.d);
    global0 = array<i32, 13>();
    var var_3 = func_3(Struct_1(u_input.d)).d;
    global0 = array<i32, 13>();
    let var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.c, var_1.c, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(214f, -340f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1f, _wgslsmith_f_op_f32(select(-1000f, var_1.c, var_2.b)), _wgslsmith_div_f32(var_1.c, var_1.c))))));
    var_3 = var_2.d;
    global0 = array<i32, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.x + _wgslsmith_f_op_f32(207f - _wgslsmith_f_op_f32(ceil(var_1.c))))));
}

