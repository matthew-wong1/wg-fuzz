struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec2<f32>,
    c: vec3<f32>,
    d: Struct_2,
    e: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: vec4<u32>,
    d: Struct_2,
    e: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_2, 3>;

var<private> global2: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(false, vec3<u32>(12098u, 7042u, 30698u), 21148i, -197i), Struct_1(false, vec3<u32>(44637u, 41222u, 1u), -33829i, i32(-2147483648)), Struct_1(false, vec3<u32>(1u, 10454u, 1u), 2147483647i, 2147483647i), Struct_1(false, vec3<u32>(0u, 0u, 1u), -30895i, -47253i));

var<private> global3: i32;

var<private> global4: array<Struct_2, 4>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> bool {
    global2 = array<Struct_1, 4>();
    var var_0 = -1047f;
    global4 = array<Struct_2, 4>();
    var var_1 = true;
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1038f, -1647f, -590f, -1045f), vec4<f32>(2430f, 697f, -349f, 321f))), vec4<f32>(_wgslsmith_f_op_f32(step(-333f, -663f)), _wgslsmith_f_op_f32(step(-1734f, -942f)), _wgslsmith_f_op_f32(1000f - 604f), _wgslsmith_f_op_f32(169f * 1063f))))));
    return all(select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), true)), vec4<bool>(true, true, true, true), all(vec2<bool>(true, true))), !(!select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true))), !vec4<bool>(true, true, all(vec2<bool>(false, true)), false)));
}

fn func_2(arg_0: i32, arg_1: bool, arg_2: Struct_4) -> vec2<bool> {
    global4 = array<Struct_2, 4>();
    var var_0 = select(select(vec2<bool>(true, arg_1), vec2<bool>(any(select(vec4<bool>(false, arg_2.e, false, arg_1), vec4<bool>(false, true, arg_2.a.b.a, arg_1), arg_2.d.b.a)), !arg_2.a.b.a), true | !func_3()), vec2<bool>(true, arg_1), false);
    let var_1 = select(vec2<bool>(arg_2.a.b.a, var_0.x), vec2<bool>(false, false), !(!all(!vec2<bool>(false, arg_1))));
    var var_2 = arg_2.c;
    global0 = arg_0 & arg_2.b;
    return vec2<bool>(true, all(select(select(!vec3<bool>(true, true, arg_1), select(vec3<bool>(true, arg_2.e, var_0.x), vec3<bool>(var_1.x, var_0.x, var_1.x), vec3<bool>(true, var_0.x, var_0.x)), arg_2.d.b.a), select(vec3<bool>(var_0.x, true, false), select(vec3<bool>(true, false, arg_2.e), vec3<bool>(arg_2.d.b.a, false, arg_1), false), vec3<bool>(true, var_1.x, var_0.x)), select(select(vec3<bool>(true, arg_1, false), vec3<bool>(false, arg_2.a.b.a, true), false), select(vec3<bool>(false, var_1.x, var_1.x), vec3<bool>(var_1.x, false, arg_2.d.b.a), vec3<bool>(true, var_1.x, true)), vec3<bool>(arg_2.e, var_0.x, arg_2.e)))));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec3<bool>) -> u32 {
    global4 = array<Struct_2, 4>();
    var var_0 = func_2(u_input.a.x ^ _wgslsmith_sub_i32(1i & -u_input.a.x, -1i), arg_1.x, Struct_4(Struct_2(~(~100123u), global2[_wgslsmith_index_u32(select(_wgslsmith_sub_u32(81518u, 21339u), select(31017u, 4294967295u, false), true), 4u)]), reverseBits(max(u_input.a.x, 2616i)) | u_input.a.x, firstLeadingBit(vec4<u32>(1u, 1u, 1u, 1u)), Struct_2(40082u, Struct_1(true, vec3<u32>(0u, 37131u, 53481u), _wgslsmith_dot_vec3_i32(u_input.a, u_input.a), max(u_input.a.x, -2147483647i))), arg_0.x));
    let var_1 = Struct_1(!arg_0.x, ~_wgslsmith_mult_vec3_u32(~countOneBits(vec3<u32>(0u, 0u, 84335u)), vec3<u32>(~4294967295u, _wgslsmith_clamp_u32(75538u, 13946u, 54595u), ~16608u)), 0i, 1i);
    let var_2 = min(_wgslsmith_div_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.b.x, 24090u) | vec2<u32>(var_1.b.x, 15332u), var_1.b.zy), ~_wgslsmith_mod_u32(var_1.b.x, 108313u)), 1u);
    let var_3 = global1[_wgslsmith_index_u32(firstTrailingBit(4294967295u >> (var_2 % 32u)), 3u)];
    return 56425u;
}

fn func_1() -> Struct_3 {
    let var_0 = func_4(select(select(select(vec2<bool>(false, true), vec2<bool>(false, false), any(vec3<bool>(false, true, true))), select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true)), func_2(u_input.a.x, false, Struct_4(global4[_wgslsmith_index_u32(104576u, 4u)], 1i, vec4<u32>(0u, 2647u, 19083u, 50289u), global4[_wgslsmith_index_u32(1u, 4u)], false)), true), !func_2(u_input.a.x, true, Struct_4(global4[_wgslsmith_index_u32(0u, 4u)], 3292i, vec4<u32>(28887u, 1u, 1u, 4294967295u), global4[_wgslsmith_index_u32(1u, 4u)], true)).x), !select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true)), select(vec2<bool>(false, true), vec2<bool>(true, false), true), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false))), true), vec3<bool>(true, true, true));
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~(~abs(49585u)) ^ (1u << (countOneBits(var_0) % 32u)), func_4(!select(vec2<bool>(true, false), func_2(3605i, true, Struct_4(Struct_2(var_0, global2[_wgslsmith_index_u32(470u, 4u)]), u_input.a.x, vec4<u32>(var_0, var_0, 45116u, var_0), global1[_wgslsmith_index_u32(33321u, 3u)], false)), true), vec3<bool>(u_input.a.x <= max(u_input.a.x, u_input.a.x), false, all(vec2<bool>(false, false))))), 3u)];
    let var_2 = -var_1.b.d;
    let var_3 = ~reverseBits(firstTrailingBit(_wgslsmith_div_vec4_u32(~vec4<u32>(var_0, var_0, var_1.b.b.x, 35526u), ~vec4<u32>(var_1.b.b.x, var_1.a, 0u, var_1.b.b.x))));
    let var_4 = vec2<u32>(var_1.a, 14425u >> (min(~firstLeadingBit(var_3.x), var_1.b.b.x) % 32u));
    return Struct_3(_wgslsmith_sub_i32(-(~var_2), 1i) ^ ((var_2 | _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), u_input.a.xx)) & countOneBits(1i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(401f, -1549f))))), vec3<f32>(1f, 1f, 1f), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(~abs(var_0), _wgslsmith_dot_vec3_u32(var_3.xww, select(vec3<u32>(43881u, var_3.x, var_1.a), vec3<u32>(1u, var_1.a, var_4.x), vec3<bool>(var_1.b.a, var_1.b.a, var_1.b.a)))) | 57366u, 3u)], var_3.x);
}

fn func_5(arg_0: Struct_3, arg_1: Struct_3) -> bool {
    var var_0 = ~(~(~_wgslsmith_div_u32(arg_1.e, 4294967295u))) | (firstTrailingBit(countOneBits(31129u)) >> (_wgslsmith_mod_u32(~countOneBits(4294967295u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(33266u, arg_0.d.a, arg_0.e, arg_0.d.a), vec4<u32>(1u, 49780u, 43813u, arg_0.e))) % 32u));
    let var_1 = ~vec4<i32>(-1i ^ _wgslsmith_div_i32(-u_input.a.x, arg_1.a), select(_wgslsmith_sub_i32(58874i, ~arg_0.a), -1i, func_2(_wgslsmith_dot_vec2_i32(u_input.a.zx, vec2<i32>(arg_1.d.b.d, -13583i)), !arg_1.d.b.a, Struct_4(arg_0.d, 7645i, vec4<u32>(arg_0.d.b.b.x, arg_0.e, arg_0.d.a, 4294967295u), arg_0.d, false)).x), -20182i, u_input.a.x);
    let var_2 = -_wgslsmith_add_vec2_i32(u_input.a.zz, vec2<i32>(arg_1.a, var_1.x) >> (firstLeadingBit(_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_0.e, 1u), arg_0.d.b.b.xz, vec2<u32>(arg_0.e, arg_1.d.b.b.x))) % vec2<u32>(32u)));
    global3 = 1i;
    global4 = array<Struct_2, 4>();
    return func_2(2147483647i, false, Struct_4(func_1().d, countOneBits(110004i), _wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_1.e, arg_0.d.a, arg_1.d.b.b.x, 0u) ^ vec4<u32>(11780u, arg_1.e, 21008u, 55206u), vec4<u32>(0u, 85892u, arg_0.e, arg_0.d.a), vec4<u32>(40337u, 4294967295u, arg_0.d.a, 93082u)), ~vec4<u32>(1u, arg_1.e, 7950u, 64504u) & vec4<u32>(1u, 1u, 0u, 0u)), func_1().d, func_2(var_1.x, false, Struct_4(Struct_2(34767u, Struct_1(false, vec3<u32>(0u, 1u, 45864u), -2048i, -29452i)), i32(-1i) * -30527i, vec4<u32>(arg_1.e, arg_0.d.b.b.x, arg_1.e, 4294967295u), func_1().d, true)).x)).x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-210f, _wgslsmith_div_f32(760f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1344f))))));
    let var_1 = vec2<bool>(false, func_5(func_1(), func_1()));
    global0 = u_input.a.x;
    global2 = array<Struct_1, 4>();
    let var_2 = 332u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(83097u & _wgslsmith_dot_vec4_u32(vec4<u32>(22784u, var_2, 58316u, 77598u), ~vec4<u32>(var_2, 4294967295u, 30385u, 30776u)), _wgslsmith_mult_u32(var_2, ~1u >> (~var_2 % 32u))), vec4<u32>(71703u, ~46384u, _wgslsmith_sub_u32(var_2, ~(~4294967295u)), 31615u));
}

