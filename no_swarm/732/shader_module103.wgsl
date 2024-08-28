struct Struct_1 {
    a: vec2<i32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_2,
    c: u32,
    d: u32,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(1000f, 1000f);

var<private> global1: i32 = 29251i;

var<private> global2: vec2<i32> = vec2<i32>(-21575i, 33398i);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3() -> i32 {
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global0.x, global0.x))))))))) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global0.x, global0.x), vec2<f32>(153f, 545f))) + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global0.x, -489f))))))));
    return _wgslsmith_dot_vec3_i32(vec3<i32>(-_wgslsmith_add_i32(~global2.x, global2.x), 1i, _wgslsmith_mod_i32(2147483647i, i32(-1i) * -1509i) | u_input.a), abs(vec3<i32>(1i, 1i, 1i)));
}

fn func_2() -> bool {
    global1 = -_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(u_input.b, u_input.a, u_input.a) & vec3<i32>(5915i, u_input.b, -2147483647i)), vec3<i32>(-58936i, ~global2.x, max(global2.x, -2518i))), u_input.b);
    global1 = 40775i;
    var var_0 = vec3<i32>(~func_3(), select(u_input.a, ~77753i, true) & global2.x, u_input.a);
    global0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(global0.x + -1000f), 853f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, _wgslsmith_f_op_f32(-1035f * _wgslsmith_f_op_f32(-global0.x))))));
    var var_1 = Struct_2(vec2<u32>(_wgslsmith_clamp_u32(_wgslsmith_add_u32(~53631u, 6793u), ~select(84550u, 1u, true), 1u), ~_wgslsmith_clamp_u32(4294967295u, 1u, max(1u, 1u))), Struct_1(vec2<i32>(-(~(-10187i)), _wgslsmith_dot_vec3_i32(vec3<i32>(global2.x, 1i, global2.x), vec3<i32>(25225i, 1i, global2.x)) | 2147483647i), _wgslsmith_div_vec4_u32(select(vec4<u32>(16946u, 34223u, 8125u, 1u), vec4<u32>(1u, 1u, 1u, 1u), global0.x < global0.x), vec4<u32>(select(4294967295u, 4294967295u, false), firstTrailingBit(0u), 1u >> (1u % 32u), abs(25408u)))));
    return all(!select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false)), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), true));
}

fn func_4(arg_0: vec3<bool>, arg_1: vec3<f32>, arg_2: vec4<i32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(arg_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1.x)))));
    global1 = 5750i;
    let var_1 = u_input.b;
    var var_2 = Struct_1(vec2<i32>(28281i, ~select(global2.x >> (72768u % 32u), -u_input.a, arg_0.x)), vec4<u32>(12709u, _wgslsmith_dot_vec4_u32(~(~vec4<u32>(8919u, 4294967295u, 4294967295u, 36231u)), vec4<u32>(1u, 1u, 1u, 1u)), ~firstLeadingBit(31177u) << (_wgslsmith_dot_vec2_u32(vec2<u32>(27533u, 62010u), reverseBits(vec2<u32>(1u, 24038u))) % 32u), _wgslsmith_dot_vec4_u32(~vec4<u32>(29471u, 4294967295u, 5436u, 1u), max(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 39021u, 46110u, 4294967295u), vec4<u32>(45386u, 28139u, 0u, 4294967295u), vec4<u32>(0u, 1u, 0u, 50800u)), vec4<u32>(17827u, 4294967295u, 1u, 41917u)))));
    global0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-186f, -1841f))))))), _wgslsmith_f_op_vec2_f32(-arg_1.zy), _wgslsmith_f_op_f32(abs(355f)) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(global0.x, arg_1.x))))));
    return Struct_1(vec2<i32>(abs(firstTrailingBit(-30561i)), arg_2.x), var_2.b);
}

fn func_5(arg_0: vec3<f32>, arg_1: vec3<u32>, arg_2: Struct_1) -> Struct_2 {
    let var_0 = global0.x;
    global0 = arg_0.zy;
    let var_1 = func_4(!vec3<bool>(any(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true))), true, true | (arg_2.a.x > 1i)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(arg_0 - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0))))), vec4<i32>(-arg_2.a.x, arg_2.a.x, arg_2.a.x, firstLeadingBit(func_4(vec3<bool>(true, true, true), arg_0, abs(vec4<i32>(-2147483647i, -62643i, u_input.b, global2.x))).a.x)));
    var var_2 = Struct_2(_wgslsmith_div_vec2_u32(reverseBits(~arg_2.b.zw), abs(~vec2<u32>(11750u, 4294967295u))) << (~vec2<u32>(arg_1.x | arg_2.b.x, ~46263u) % vec2<u32>(32u)), var_1);
    global2 = min(var_2.b.a, vec2<i32>(var_1.a.x, ~(-1i)));
    return Struct_2(func_4(vec3<bool>(true, true, true), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(arg_0 - vec3<f32>(global0.x, arg_0.x, -507f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, 360f, global0.x) * arg_0))), ~_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, arg_2.a.x, 2141i, -2147483647i), vec4<i32>(global2.x, var_1.a.x, -48403i, arg_2.a.x))).b.yw >> (var_1.b.zz % vec2<u32>(32u)), var_1);
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(global0.x, _wgslsmith_f_op_f32(global0.x + -954f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1405f + 504f) - global0.x), _wgslsmith_f_op_f32(2408f + 267f)) + vec3<f32>(global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1246f)) - _wgslsmith_f_op_f32(sign(global0.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0.x * global0.x))))));
    let var_1 = _wgslsmith_sub_u32(0u | firstTrailingBit(max(1u, 0u)), abs(58908u));
    var var_2 = Struct_3(~countOneBits(vec3<i32>(0i, 0i, i32(-1i) * -3106i)), func_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 577f, -194f)), _wgslsmith_mod_vec3_u32(~select(vec3<u32>(var_1, var_1, 4294967295u), vec3<u32>(4294967295u, 1u, var_1), false), ~vec3<u32>(0u, var_1, var_1)), func_4(vec3<bool>(func_2(), true, false), var_0, min(~vec4<i32>(u_input.a, 35893i, u_input.a, -23520i), min(vec4<i32>(global2.x, u_input.b, u_input.b, -836i), vec4<i32>(global2.x, global2.x, -27100i, global2.x))))), var_1, var_1, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(292f, var_0.x, _wgslsmith_f_op_f32(trunc(-616f)), _wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(297f, var_0.x, -378f, _wgslsmith_f_op_f32(global0.x - var_0.x))), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), false), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), !any(vec2<bool>(true, false))))));
    global2 = func_5(var_0, var_2.b.b.b.wxz, func_4(vec3<bool>(all(vec2<bool>(false, false)), (0i < global2.x) && true, any(vec4<bool>(true, false, true, false))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global0.x - var_0.x), _wgslsmith_f_op_f32(var_2.e.x * var_2.e.x), global0.x)), min(abs(~vec4<i32>(var_2.a.x, global2.x, 51912i, -6911i)), ~vec4<i32>(u_input.a, global2.x, 29444i, 2147483647i) >> ((vec4<u32>(1u, 51173u, var_1, 83680u) ^ var_2.b.b.b) % vec4<u32>(32u))))).b.a;
    var_2 = Struct_3(vec3<i32>(~(-1i), _wgslsmith_mod_i32(-2147483647i, firstTrailingBit(-2147483647i)) & abs(min(-20559i, 20460i)), u_input.b), func_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, var_2.e.x, var_0.x), vec3<f32>(376f, global0.x, 637f)))), firstLeadingBit(var_2.b.b.b.yzy), var_2.b.b), (168247u | var_1) >> (~7046u % 32u), _wgslsmith_dot_vec3_u32(min(var_2.b.b.b.wxz, firstLeadingBit(vec3<u32>(53488u, var_2.d, var_2.b.a.x))), reverseBits(vec3<u32>(var_1, var_2.d, var_1))) & ~_wgslsmith_dot_vec2_u32(min(var_2.b.a, vec2<u32>(var_2.d, var_2.c)), var_2.b.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -219f), _wgslsmith_div_f32(global0.x, -868f), _wgslsmith_f_op_f32(f32(-1f) * -1580f), -1720f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, -265f, var_0.x, 1094f) + var_2.e) - vec4<f32>(var_0.x, var_2.e.x, -778f, -378f)))));
    return func_4(select(select(vec3<bool>(true, true, true), vec3<bool>(func_2(), any(vec3<bool>(true, false, true)), true), vec3<bool>(true, all(vec2<bool>(true, false)), func_2())), select(select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true)), !vec3<bool>(true, true, select(false, false, false))), var_0, firstTrailingBit(~vec4<i32>(-1i, var_2.b.b.a.x, u_input.b, var_2.a.x) ^ _wgslsmith_add_vec4_i32(vec4<i32>(1i, 43138i, 3882i, -26683i), vec4<i32>(var_2.b.b.a.x, var_2.b.b.a.x, 10883i, 1i))) << ((func_4(vec3<bool>(true, false, false), var_0, -vec4<i32>(var_2.a.x, 2147483647i, u_input.b, var_2.a.x)).b | ((var_2.b.b.b >> (vec4<u32>(4294967295u, 4294967295u, 4294967295u, var_2.c) % vec4<u32>(32u))) ^ (var_2.b.b.b >> (vec4<u32>(var_2.c, 74469u, var_1, var_2.d) % vec4<u32>(32u))))) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(-1i);
    var var_1 = Struct_2(vec2<u32>(_wgslsmith_add_u32(_wgslsmith_clamp_u32(85571u, 4294967295u, 31395u), 4294967295u), ~1u) | ~select(vec2<u32>(1u, 1u), firstTrailingBit(vec2<u32>(4294967295u, 45886u)), true), func_1());
    let var_2 = ~(-1i);
    let var_3 = select(!select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(false, true, true), true), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), !(var_1.a.x >= var_1.b.b.x)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(false, true, false)), !vec3<bool>(!all(vec3<bool>(true, true, false)), any(vec4<bool>(true, true, true, true)), select(func_2(), 1i <= global2.x, true)));
    let var_4 = var_1.b.b.zx;
    global2 = -(~abs(~reverseBits(var_1.b.a)));
    var var_5 = func_5(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1000f - global0.x), global0.x, -1079f)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(global0.x, global0.x, -685f))), var_3)), vec3<u32>(firstLeadingBit(var_1.a.x), 71656u, ~var_1.a.x), Struct_1((vec2<i32>(2147483647i, var_2) & ~vec2<i32>(var_2, u_input.b)) ^ func_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, global0.x)), ~var_1.b.b.wyx, var_1.b).b.a, func_4(vec3<bool>(var_1.a.x < var_4.x, var_3.x, all(vec2<bool>(false, false))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, global0.x)), ~vec4<i32>(var_1.b.a.x, u_input.b, -48168i, u_input.a)).b)).b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(140f, global0.x, 327f) - vec3<f32>(global0.x, -1001f, -361f)), vec3<f32>(1000f, 1816f, 2036f)) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1049f, -1068f, -2216f))))), var_1.b.b >> (~(vec4<u32>(var_1.b.b.x, var_4.x, var_4.x, 77796u) & ~vec4<u32>(64886u, var_5.b.x, var_5.b.x, var_4.x)) % vec4<u32>(32u)), _wgslsmith_add_vec2_u32(var_5.b.wz, vec2<u32>(var_1.b.b.x, 21547u)), _wgslsmith_sub_u32(func_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-289f, -1000f, global0.x)), max(var_5.b.zxy, var_5.b.wyw), var_1.b).a.x, abs(var_1.a.x)) >> (var_1.a.x % 32u));
}

