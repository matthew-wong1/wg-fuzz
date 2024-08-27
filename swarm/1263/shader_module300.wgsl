struct Struct_1 {
    a: u32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<u32>,
    d: f32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 32>;

var<private> global1: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(0u, vec2<f32>(540f, -685f)), Struct_1(29374u, vec2<f32>(-106f, 1372f)), Struct_1(4294967295u, vec2<f32>(-179f, 428f)), Struct_1(4294967295u, vec2<f32>(872f, -1000f)), Struct_1(2855u, vec2<f32>(-1684f, -2696f)), Struct_1(3557u, vec2<f32>(-2371f, -236f)), Struct_1(1u, vec2<f32>(206f, -401f)));

var<private> global2: bool;

var<private> global3: array<vec2<i32>, 18> = array<vec2<i32>, 18>(vec2<i32>(-1657i, 0i), vec2<i32>(4393i, 0i), vec2<i32>(-31208i, 2147483647i), vec2<i32>(20834i, -30722i), vec2<i32>(0i, -1i), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(-30131i, 56141i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(2147483647i, -1i), vec2<i32>(1i, 44293i), vec2<i32>(91424i, -15235i), vec2<i32>(17242i, 0i), vec2<i32>(-645i, 1i), vec2<i32>(522i, 0i), vec2<i32>(51941i, 1i), vec2<i32>(34142i, 2147483647i), vec2<i32>(-1i, -21384i), vec2<i32>(0i, -1i));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    let var_0 = -6708i;
    var var_1 = Struct_2(Struct_1(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, 29816u), ~u_input.a.ww), arg_0.b), _wgslsmith_div_vec4_i32(firstLeadingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(-48821i, var_0, 0i, var_0) << (u_input.c % vec4<u32>(32u)), max(vec4<i32>(var_0, var_0, var_0, var_0), vec4<i32>(1i, 35098i, var_0, 1i)))), vec4<i32>(_wgslsmith_clamp_i32(-41791i, var_0, var_0) ^ _wgslsmith_sub_i32(3009i, -60487i), -_wgslsmith_div_i32(var_0, var_0), 6877i, var_0)), u_input.c.xxy);
    let var_2 = ~vec4<i32>(-2147483647i, var_0, ~32948i, var_0);
    global1 = array<Struct_1, 7>();
    let var_3 = global0[_wgslsmith_index_u32(~(~arg_0.a), 32u)];
    return _wgslsmith_f_op_f32(max(arg_0.b.x, -915f));
}

fn func_2(arg_0: u32, arg_1: f32) -> Struct_1 {
    let var_0 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_3(global0[_wgslsmith_index_u32(~u_input.a.x, 32u)], global0[_wgslsmith_index_u32(abs(arg_0 | arg_0), 32u)])), -218f), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(1657f, 1353f) - _wgslsmith_div_vec2_f32(vec2<f32>(arg_1, 169f), vec2<f32>(arg_1, arg_1))))))));
    var var_1 = -firstLeadingBit(~1i);
    var var_2 = Struct_2(global1[_wgslsmith_index_u32(0u, 7u)], vec4<i32>(_wgslsmith_sub_i32(66201i, select(2147483647i, -27198i, false)), -_wgslsmith_add_i32(-2147483647i, -1i), 3308i >> (arg_0 % 32u), -61649i) & -firstLeadingBit(-vec4<i32>(-15693i, -1i, 1i, -3259i)), abs(vec3<u32>(u_input.b, 0u, ~arg_0)));
    var var_3 = vec2<i32>(var_2.b.x, 1i);
    global2 = !(arg_0 > 1u);
    return global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.c, u_input.a | abs(vec4<u32>(24515u, 38992u, arg_0, var_2.c.x) >> ((u_input.c & u_input.a) % vec4<u32>(32u)))), 32u)];
}

fn func_1(arg_0: f32, arg_1: vec3<i32>, arg_2: Struct_2) -> vec3<f32> {
    var var_0 = func_2(abs(u_input.c.x), arg_0);
    var_0 = global1[_wgslsmith_index_u32(~(~arg_2.c.x), 7u)];
    let var_1 = true;
    global2 = var_1;
    var_0 = arg_2.a;
    return vec3<f32>(535f, -1377f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(520f)) - arg_0))));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1) -> vec3<u32> {
    var var_0 = func_2(u_input.c.x, _wgslsmith_f_op_f32(f32(-1f) * -178f));
    global2 = true;
    let var_1 = Struct_2(arg_1, firstLeadingBit(~(~(-vec4<i32>(-2147483647i, 2458i, 2147483647i, 59834i)))), vec3<u32>(4294967295u, ~1u, _wgslsmith_clamp_u32(~u_input.c.x, countOneBits(27765u), u_input.b)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b.x + 125f) + -617f))));
    var var_3 = vec2<bool>(!any(vec2<bool>(arg_1.a <= var_0.a, true)), ((var_1.a.a >= func_2(arg_1.a, arg_0.x).a) || (func_2(0u, 170f).a > ~arg_1.a)) || false);
    return _wgslsmith_div_vec3_u32(var_1.c, select(vec3<u32>(firstTrailingBit(49105u) << (~var_1.c.x % 32u), _wgslsmith_clamp_u32(var_0.a, arg_1.a | 1u, ~var_1.a.a), func_2(~arg_1.a, var_1.a.b.x).a), ~(~(~var_1.c)), vec3<bool>(true && !var_3.x, var_3.x, var_3.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = !all(vec2<bool>(true, !any(vec3<bool>(true, false, true))));
    let var_0 = -7848i;
    var var_1 = u_input.c.x;
    let var_2 = vec2<u32>(max(~abs(u_input.c.x) << (u_input.b % 32u), 0u), 40818u);
    let var_3 = u_input.a.wyx;
    var_1 = max(1u, max(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_3.x, u_input.a.x), reverseBits(var_3.xz)), var_2.x), ~_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 34625u, u_input.b), ~var_3)));
    let var_4 = ~(-(var_0 >> (4294967295u % 32u))) & (i32(-1i) * -21465i);
    var_1 = ~(~firstTrailingBit((43710u >> (0u % 32u)) << (1u % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(209f, vec3<i32>(var_0, var_0, 0i), Struct_2(global0[_wgslsmith_index_u32(u_input.b, 32u)], vec4<i32>(-1i, -18981i, 1i, var_0), vec3<u32>(23216u, 0u, 4294967295u))))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -437f, -569f) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-408f, 314f, -204f), vec3<f32>(297f, 1552f, 1134f))))), Struct_1(max(countOneBits(var_3.x), 4294967295u >> (var_3.x % 32u)), func_2(max(var_2.x, var_3.x), _wgslsmith_f_op_f32(f32(-1f) * -745f)).b)), var_2.x, _wgslsmith_sub_vec2_u32(vec2<u32>(46291u, select(10721u, func_4(vec3<f32>(1263f, -555f, 1394f), global1[_wgslsmith_index_u32(4294967295u, 7u)]).x, all(vec2<bool>(false, false)))), firstTrailingBit(_wgslsmith_div_vec2_u32(~vec2<u32>(52418u, var_3.x), vec2<u32>(var_2.x, var_2.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-608f, _wgslsmith_f_op_f32(func_3(Struct_1(var_2.x, vec2<f32>(1608f, 455f)), func_2(41915u, -804f)))))), firstTrailingBit(_wgslsmith_mult_vec4_i32(min(_wgslsmith_mod_vec4_i32(vec4<i32>(-24358i, 1i, 1i, -17212i), vec4<i32>(var_4, -30338i, -36031i, var_4)), _wgslsmith_mult_vec4_i32(vec4<i32>(-47040i, var_0, 16313i, var_0), vec4<i32>(44738i, var_0, var_0, -2147483647i))), _wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, 10410i, 1i, -12341i), select(vec4<i32>(var_0, 42484i, var_0, var_0), vec4<i32>(var_4, -8049i, -79664i, -2147483647i), true), abs(vec4<i32>(var_0, var_0, var_0, 0i))))));
}

