struct Struct_1 {
    a: f32,
    b: bool,
    c: vec2<i32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: u32,
    b: vec4<bool>,
    c: f32,
    d: vec2<u32>,
    e: bool,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: bool,
    b: Struct_2,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: array<Struct_3, 9> = array<Struct_3, 9>(Struct_3(56557u, vec4<bool>(true, false, false, false), 1700f, vec2<u32>(0u, 2245u), false), Struct_3(4294967295u, vec4<bool>(false, true, true, true), 2167f, vec2<u32>(1u, 34320u), false), Struct_3(29778u, vec4<bool>(false, true, false, true), -170f, vec2<u32>(44651u, 32980u), true), Struct_3(46085u, vec4<bool>(true, false, false, true), 1057f, vec2<u32>(0u, 23862u), false), Struct_3(1u, vec4<bool>(true, true, false, false), -1056f, vec2<u32>(4294967295u, 35274u), false), Struct_3(1u, vec4<bool>(false, false, false, false), 1000f, vec2<u32>(38974u, 20182u), false), Struct_3(36664u, vec4<bool>(false, true, false, true), 502f, vec2<u32>(4294967295u, 52493u), true), Struct_3(4294967295u, vec4<bool>(false, true, true, false), -341f, vec2<u32>(0u, 1u), false), Struct_3(28570u, vec4<bool>(false, false, false, false), 104f, vec2<u32>(96700u, 1u), false));

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3() -> bool {
    global1 = array<Struct_3, 9>();
    global0 = ~abs(vec3<u32>(u_input.a >> (25572u % 32u), global0.x, min(22101u, 12588u)) << (_wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(global0.x, 0u, 43066u), vec3<u32>(u_input.a, 1u, 41885u), vec3<u32>(u_input.a, 4294967295u, u_input.a)), select(vec3<u32>(1u, 49165u, global0.x), vec3<u32>(27005u, 4294967295u, u_input.a), vec3<bool>(true, false, true))) % vec3<u32>(32u)));
    global0 = ~_wgslsmith_sub_vec3_u32(~vec3<u32>(_wgslsmith_mult_u32(39762u, u_input.a), 36283u, global0.x), ((vec3<u32>(global0.x, 30881u, u_input.a) << (vec3<u32>(0u, u_input.a, u_input.a) % vec3<u32>(32u))) ^ vec3<u32>(7649u, u_input.a, u_input.a)) & vec3<u32>(u_input.a, 4294967295u, min(global0.x, global0.x)));
    global1 = array<Struct_3, 9>();
    global0 = _wgslsmith_add_vec3_u32(firstLeadingBit(~(~vec3<u32>(0u, 0u, u_input.a))), min(vec3<u32>(_wgslsmith_add_u32(0u, 28590u), _wgslsmith_mod_u32(u_input.a, 15717u), firstTrailingBit(4294967295u)), ~_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 17388u, u_input.a), vec3<u32>(0u, u_input.a, global0.x)))) | _wgslsmith_add_vec3_u32(~vec3<u32>(abs(4294967295u), ~u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, global0.x, u_input.a, global0.x), vec4<u32>(45646u, global0.x, 0u, 0u))), _wgslsmith_mod_vec3_u32(vec3<u32>(firstLeadingBit(global0.x), min(1u, 20793u), max(u_input.a, global0.x)), ~vec3<u32>(u_input.a, u_input.a, global0.x)));
    return !(!(true | !select(false, true, false)));
}

fn func_2() -> u32 {
    var var_0 = func_3();
    var var_1 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(824f + -1000f)), _wgslsmith_f_op_f32(f32(-1f) * -1852f)))));
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-579f, var_1.x, 863f, _wgslsmith_f_op_f32(-var_1.x)));
    global1 = array<Struct_3, 9>();
    var var_3 = 1947i;
    return ~_wgslsmith_dot_vec4_u32(~_wgslsmith_div_vec4_u32(countOneBits(vec4<u32>(global0.x, global0.x, 39624u, 3953u)), vec4<u32>(1u, 30041u, u_input.a, global0.x)), ~vec4<u32>(firstTrailingBit(global0.x), u_input.a, _wgslsmith_clamp_u32(59199u, 0u, 4294967295u), _wgslsmith_mult_u32(u_input.a, 33086u)));
}

fn func_4(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: Struct_5) -> Struct_4 {
    var var_0 = vec2<i32>(14623i, 1i);
    let var_1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1903f, arg_0.c, arg_0.c, arg_0.c)), _wgslsmith_div_vec4_f32(vec4<f32>(arg_2.b.a.x, 157f, -307f, arg_2.b.a.x), vec4<f32>(arg_2.b.a.x, arg_2.c.a.x, -1075f, -443f))))))));
    var var_2 = arg_2.b.a.zz;
    var_2 = _wgslsmith_f_op_vec2_f32(trunc(var_1.xw));
    let var_3 = _wgslsmith_sub_u32(abs(72029u), func_2());
    return Struct_4(Struct_3(max(1u, (42816u & global0.x) >> (~4567u % 32u)), select(vec4<bool>(arg_2.a, true, arg_2.a | true, true), arg_0.b, arg_2.a), -845f, _wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(global0.xx, ~arg_0.d), firstLeadingBit(max(vec2<u32>(4294967295u, 4294967295u), global0.zx)), ~(arg_0.d ^ vec2<u32>(u_input.a, arg_1.x))), all(vec2<bool>(all(arg_0.b), arg_0.e))));
}

fn func_1(arg_0: bool) -> vec3<u32> {
    let var_0 = func_4(Struct_3(countOneBits(u_input.a) >> (~func_2() % 32u), select(select(select(vec4<bool>(true, true, arg_0, false), vec4<bool>(false, arg_0, arg_0, true), arg_0), select(vec4<bool>(false, false, arg_0, false), vec4<bool>(false, true, arg_0, arg_0), vec4<bool>(false, arg_0, arg_0, arg_0)), false || arg_0), !(!vec4<bool>(arg_0, false, arg_0, false)), select(true, false == arg_0, !arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -660f) * -1537f)), global0.xz & firstTrailingBit(vec2<u32>(global0.x, 33125u) >> (vec2<u32>(u_input.a, 4294967295u) % vec2<u32>(32u))), ~13467i > u_input.d), global0.zx, Struct_5(arg_0, Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(481f, 820f, -544f)))), Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(257f, 1181f, -211f) * vec3<f32>(-970f, -1000f, -1137f))))));
    var var_1 = Struct_5(true || !var_0.a.e, Struct_2(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1450f, var_0.a.c, 2200f), vec3<f32>(-1320f, var_0.a.c, var_0.a.c)))))))), Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(387f, var_0.a.c, var_0.a.c)), vec3<f32>(var_0.a.c, var_0.a.c, -355f)))));
    var var_2 = ~(~0i);
    var var_3 = vec3<i32>(~(-u_input.b.x), -1i, u_input.c);
    var_1 = Struct_5(!(!(func_4(var_0.a, vec2<u32>(17612u, 0u), Struct_5(false, Struct_2(vec3<f32>(-2117f, -406f, 1000f)), Struct_2(vec3<f32>(-1073f, var_0.a.c, -1000f)))).a.a < ~4294967295u)), Struct_2(_wgslsmith_f_op_vec3_f32(-var_1.b.a)), Struct_2(vec3<f32>(var_0.a.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -436f)), -1226f)));
    return countOneBits(~(~(~vec3<u32>(u_input.a, u_input.a, global0.x)) | ~(vec3<u32>(var_0.a.d.x, u_input.a, 54875u) & vec3<u32>(global0.x, 106018u, u_input.a))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(Struct_3(~(~0u), !(!select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(722f, 646f, false)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(453f, -126f))), vec2<u32>(~(~u_input.a), 4294967295u), false));
    global0 = ~select(~func_1(var_0.a.e), ~vec3<u32>(81056u, ~62417u, 10623u), vec3<bool>(func_4(var_0.a, ~global0.yy, Struct_5(var_0.a.e, Struct_2(vec3<f32>(1926f, var_0.a.c, 2033f)), Struct_2(vec3<f32>(var_0.a.c, var_0.a.c, 226f)))).a.b.x, false, _wgslsmith_f_op_f32(f32(-1f) * -339f) == _wgslsmith_f_op_f32(-var_0.a.c)));
    global1 = array<Struct_3, 9>();
    global0 = ~(~(firstLeadingBit(abs(vec3<u32>(39843u, u_input.a, 11744u))) & select(vec3<u32>(4609u, 14972u, var_0.a.a), abs(vec3<u32>(var_0.a.a, global0.x, 1u)), 443f <= var_0.a.c)));
    let var_1 = Struct_1(1f, _wgslsmith_f_op_f32(f32(-1f) * -1000f) > _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.a.c)) * 751f))), _wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(u_input.b.xx, u_input.e), _wgslsmith_add_vec2_i32(u_input.e, _wgslsmith_clamp_vec2_i32(u_input.b.yw ^ vec2<i32>(u_input.b.x, -67979i), vec2<i32>(u_input.d, 0i), abs(vec2<i32>(u_input.e.x, u_input.b.x))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1717f, var_0.a.c)), var_0.a.c));
    global0 = _wgslsmith_add_vec3_u32(vec3<u32>(~52975u, 4294967295u, _wgslsmith_dot_vec3_u32(~(vec3<u32>(4294967295u, 1u, 26220u) ^ vec3<u32>(u_input.a, global0.x, u_input.a)), ~vec3<u32>(38713u, 12087u, 0u) | func_1(var_0.a.e))), ~countOneBits(select(~vec3<u32>(var_0.a.a, 75761u, u_input.a), abs(vec3<u32>(u_input.a, 1u, 1u)), var_0.a.b.ywx)));
    var var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.c, 474f, 142f))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.a, var_1.a, var_1.d.x), vec3<f32>(-228f, var_1.a, -1457f), var_0.a.b.zzw)))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.c, var_1.a, _wgslsmith_f_op_f32(ceil(276f))))));
    global0 = vec3<u32>(17583u, global0.x, ~global0.x);
    let x = u_input.a;
    s_output = StorageBuffer(abs(global0.x | 33041u), -1i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.a.c)) + var_0.a.c) + var_1.d.x));
}

