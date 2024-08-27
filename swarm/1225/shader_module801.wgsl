struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec3<i32>,
    c: vec4<f32>,
    d: vec2<f32>,
    e: f32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec2<u32>,
    c: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec3<i32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<bool>(false, false, false));

var<private> global1: Struct_4 = Struct_4(Struct_1(vec3<bool>(true, true, true)), vec3<i32>(22210i, 1i, 0i));

var<private> global2: array<Struct_2, 10> = array<Struct_2, 10>(Struct_2(vec4<bool>(true, false, false, true), vec3<i32>(-13093i, 0i, i32(-2147483648)), vec4<f32>(-806f, -781f, 207f, 2214f), vec2<f32>(-718f, -881f), -526f), Struct_2(vec4<bool>(false, false, true, true), vec3<i32>(i32(-2147483648), 2147483647i, i32(-2147483648)), vec4<f32>(1496f, -1632f, -211f, 1942f), vec2<f32>(-1093f, -1531f), -2219f), Struct_2(vec4<bool>(false, true, false, false), vec3<i32>(67491i, -46593i, 43847i), vec4<f32>(851f, -207f, -1529f, -1000f), vec2<f32>(-524f, -1698f), 643f), Struct_2(vec4<bool>(true, false, false, false), vec3<i32>(-26299i, 1i, -74981i), vec4<f32>(-739f, -388f, -269f, 340f), vec2<f32>(-1411f, -841f), 1857f), Struct_2(vec4<bool>(true, true, true, true), vec3<i32>(58i, 18699i, 2147483647i), vec4<f32>(-1000f, 615f, 239f, -431f), vec2<f32>(257f, 1000f), -129f), Struct_2(vec4<bool>(true, true, false, true), vec3<i32>(-40990i, 1i, -57301i), vec4<f32>(690f, 1000f, 768f, -156f), vec2<f32>(-892f, 937f), -573f), Struct_2(vec4<bool>(false, true, true, false), vec3<i32>(20999i, -992i, 1i), vec4<f32>(-931f, -323f, -182f, -1000f), vec2<f32>(174f, 1000f), -785f), Struct_2(vec4<bool>(false, false, true, false), vec3<i32>(2147483647i, i32(-2147483648), 2147483647i), vec4<f32>(-1374f, -130f, -1572f, -2241f), vec2<f32>(-1000f, 141f), 2190f), Struct_2(vec4<bool>(true, true, true, false), vec3<i32>(1i, 1i, 54940i), vec4<f32>(1707f, 970f, -1055f, -1548f), vec2<f32>(527f, -671f), -1238f), Struct_2(vec4<bool>(false, true, false, false), vec3<i32>(-3925i, 5956i, -40534i), vec4<f32>(1592f, 401f, -943f, -138f), vec2<f32>(-868f, 1076f), -717f));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: Struct_3) -> Struct_4 {
    global1 = Struct_4(global1.a, vec3<i32>(-reverseBits(~global1.b.x), abs(~u_input.b << (max(arg_0.c, u_input.a) % 32u)), global1.b.x));
    global2 = array<Struct_2, 10>();
    let var_0 = -2983f;
    var var_1 = i32(-1i) * -46166i;
    var var_2 = Struct_3(vec4<i32>(-33542i, _wgslsmith_add_i32(u_input.b << (0u % 32u), ~u_input.b) << (0u % 32u), firstTrailingBit(-1i), _wgslsmith_div_i32(-1i, firstTrailingBit(5664i << (arg_0.c % 32u)))), _wgslsmith_mult_vec2_u32(arg_0.b, arg_0.b), arg_0.b.x);
    return Struct_4(Struct_1(global1.a.a), _wgslsmith_mult_vec3_i32(global1.b, -var_2.a.xyx));
}

fn func_3(arg_0: u32) -> bool {
    var var_0 = func_2(Struct_3(-abs(-vec4<i32>(u_input.b, 32223i, 1i, -23100i)), vec2<u32>(arg_0, reverseBits(firstLeadingBit(63280u))), ~arg_0 << (abs(32385u) % 32u)));
    global2 = array<Struct_2, 10>();
    let var_1 = reverseBits(select(_wgslsmith_dot_vec2_i32(min(var_0.b.zz, vec2<i32>(6598i, u_input.b)), _wgslsmith_div_vec2_i32(var_0.b.yx, global1.b.yx)) >> ((u_input.c & _wgslsmith_mult_u32(arg_0, 4294967295u)) % 32u), 2147483647i, !global1.a.a.x));
    let var_2 = Struct_3(vec4<i32>(-29477i, -35777i, ~0i, u_input.b), min(firstLeadingBit(~vec2<u32>(arg_0, 4294967295u)) | firstTrailingBit(firstLeadingBit(vec2<u32>(arg_0, 67847u))), ~vec2<u32>(max(0u, 4294967295u), arg_0)), 4294967295u);
    let var_3 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_div_u32(_wgslsmith_mod_u32(1u, u_input.c), ~abs(0u)), var_2.b.x), firstTrailingBit(_wgslsmith_sub_vec2_u32(select(countOneBits(var_2.b), var_2.b, !global1.a.a.x), var_2.b))), 10u)];
    return global1.a.a.x;
}

fn func_4(arg_0: Struct_4, arg_1: bool, arg_2: Struct_4) -> Struct_1 {
    var var_0 = vec4<f32>(2006f, 483f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -335f))), -410f);
    var var_1 = _wgslsmith_f_op_f32(trunc(-372f));
    var var_2 = arg_2;
    let var_3 = -494f;
    global2 = array<Struct_2, 10>();
    return func_2(Struct_3(reverseBits(min(firstLeadingBit(vec4<i32>(1i, 0i, arg_0.b.x, global1.b.x)), firstTrailingBit(vec4<i32>(arg_2.b.x, arg_0.b.x, var_2.b.x, 37851i)))), _wgslsmith_mod_vec2_u32(~(vec2<u32>(12351u, 4294967295u) >> (vec2<u32>(4302u, u_input.c) % vec2<u32>(32u))), vec2<u32>(u_input.a, u_input.c)), _wgslsmith_mult_u32(abs(~97789u), firstLeadingBit(u_input.c)))).a;
}

fn func_1(arg_0: vec2<bool>) -> Struct_4 {
    let var_0 = select(2147483647i, _wgslsmith_add_i32(-(~(~1i)), u_input.b), false);
    global0 = func_4(func_2(Struct_3(vec4<i32>(firstTrailingBit(var_0), -11074i, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, global1.b.x), vec2<i32>(global1.b.x, global1.b.x)), 0i), min(~vec2<u32>(26786u, 1u), abs(vec2<u32>(36557u, 1u))), u_input.c)), func_3(0u), func_2(Struct_3(_wgslsmith_sub_vec4_i32(~vec4<i32>(-43669i, 0i, 1i, u_input.b), firstLeadingBit(vec4<i32>(36594i, 10261i, 231i, 3829i))), ~_wgslsmith_sub_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(0u, u_input.c)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 49524u, 1u), vec3<u32>(u_input.c, 83u, 26252u)))));
    global1 = Struct_4(func_4(Struct_4(Struct_1(!global1.a.a), reverseBits(global1.b)), any(vec3<bool>(true, true, arg_0.x)), Struct_4(Struct_1(vec3<bool>(true, global1.a.a.x, false)), -(~global1.b))), ~global1.b);
    let var_1 = true;
    global2 = array<Struct_2, 10>();
    return func_2(Struct_3(vec4<i32>(2147483647i, min(_wgslsmith_mod_i32(0i, 21147i), _wgslsmith_sub_i32(u_input.b, u_input.b)), u_input.b, var_0), ~(~firstLeadingBit(vec2<u32>(u_input.a, u_input.c))), 58599u));
}

fn func_5(arg_0: u32, arg_1: Struct_4) -> vec3<u32> {
    let var_0 = Struct_3(vec4<i32>(_wgslsmith_mult_i32(50289i, ~arg_1.b.x) & u_input.b, 0i, _wgslsmith_dot_vec2_i32(global1.b.xy, vec2<i32>(func_2(Struct_3(vec4<i32>(0i, arg_1.b.x, 1i, 50138i), vec2<u32>(0u, arg_0), arg_0)).b.x, arg_1.b.x | 0i)), max(~(~26031i), -_wgslsmith_dot_vec2_i32(global1.b.xy, vec2<i32>(3605i, global1.b.x)))), select(select(vec2<u32>(_wgslsmith_sub_u32(70803u, 42190u), _wgslsmith_add_u32(1u, 1u)), ~vec2<u32>(24372u, arg_0), false), vec2<u32>(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(74289u, u_input.c), vec2<u32>(34609u, 40433u) >> (vec2<u32>(arg_0, 58533u) % vec2<u32>(32u)))), vec2<bool>(arg_1.a.a.x, true)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(firstLeadingBit(arg_0), max(arg_0, 22244u), _wgslsmith_mod_u32(4294967295u, u_input.c), _wgslsmith_dot_vec4_u32(vec4<u32>(83002u, 7055u, 4294967295u, u_input.a), vec4<u32>(27902u, 1u, 14767u, 15197u))), vec4<u32>(~u_input.a, _wgslsmith_mult_u32(u_input.c, 42235u), max(4294967295u, 87183u), ~1u)));
    var var_1 = _wgslsmith_f_op_f32(-1f);
    let var_2 = Struct_2(select(vec4<bool>(any(vec3<bool>(global0.a.x, true, false)), -global1.b.x < arg_1.b.x, global1.a.a.x, global0.a.x), vec4<bool>(true, false, !func_2(var_0).a.a.x, any(vec2<bool>(false, true)) & arg_1.a.a.x), vec4<bool>(func_1(vec2<bool>(false, global0.a.x)).a.a.x, global0.a.x, true, true & !global1.a.a.x)), firstTrailingBit(vec3<i32>(0i, arg_1.b.x, global1.b.x) >> (~vec3<u32>(var_0.c, 33031u, u_input.a) % vec3<u32>(32u))) ^ vec3<i32>(global1.b.x, _wgslsmith_dot_vec3_i32(select(vec3<i32>(27709i, -2147483647i, -28469i), global1.b, true), func_1(arg_1.a.a.zx).b), global1.b.x), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, 1000f, -1000f, -1985f), vec4<f32>(487f, -507f, 1000f, -1008f), arg_1.a.a.x)) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1639f, 1778f, 1000f, 457f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1199f, -240f, 1145f, -889f)), vec4<f32>(-1340f, 1000f, 1127f, -285f), true))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1277f, -1176f, -1927f, 1410f)), vec4<f32>(1332f, -679f, 1000f, -587f))))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -954f), 925f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1054f) + _wgslsmith_f_op_f32(trunc(158f)))))));
    let var_3 = _wgslsmith_div_u32(~42811u, arg_0);
    global1 = arg_1;
    return ~select(~vec3<u32>(~arg_0, _wgslsmith_mod_u32(1u, var_3), firstLeadingBit(u_input.a)), ~firstTrailingBit(min(vec3<u32>(1u, arg_0, var_0.b.x), vec3<u32>(var_3, var_3, var_0.b.x))), vec3<bool>(select(global1.a.a.x, global1.a.a.x, !global1.a.a.x), any(!vec3<bool>(global1.a.a.x, true, arg_1.a.a.x)), var_2.a.x));
}

fn func_6(arg_0: Struct_4, arg_1: vec3<bool>, arg_2: vec3<u32>, arg_3: vec4<bool>) -> Struct_2 {
    global2 = array<Struct_2, 10>();
    global1 = func_1(func_4(func_1(!func_2(Struct_3(vec4<i32>(arg_0.b.x, arg_0.b.x, arg_0.b.x, 38282i), arg_2.yy, 4294967295u)).a.a.yx), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f))) <= _wgslsmith_f_op_f32(round(-440f)), arg_0).a.zz);
    global1 = func_2(Struct_3(vec4<i32>(_wgslsmith_div_i32(_wgslsmith_sub_i32(-28203i, -1i), func_2(Struct_3(vec4<i32>(u_input.b, 1i, 77845i, 2286i), arg_2.yz, u_input.c)).b.x), -func_1(global1.a.a.zy).b.x, u_input.b << (15321u % 32u), -2147483647i), ~(~arg_2.zx) & reverseBits(abs(arg_2.xz)), firstLeadingBit(~10278u)));
    let var_0 = vec3<bool>(func_1(func_2(Struct_3(firstLeadingBit(vec4<i32>(global1.b.x, arg_0.b.x, 1i, global1.b.x)), vec2<u32>(arg_2.x, 4294967295u), 1u)).a.a.zz).a.a.x, global1.a.a.x, arg_1.x);
    let var_1 = Struct_3(vec4<i32>(countOneBits(10718i), _wgslsmith_mod_i32(1i, ~1i), -global1.b.x, -26560i), vec2<u32>((0u & (117811u | u_input.a)) >> (0u % 32u), 0u), firstTrailingBit(_wgslsmith_dot_vec4_u32(~vec4<u32>(14544u, u_input.a, 0u, arg_2.x), select(vec4<u32>(4294967295u, 59891u, 32732u, 0u) >> (vec4<u32>(arg_2.x, arg_2.x, arg_2.x, 36927u) % vec4<u32>(32u)), vec4<u32>(u_input.a, arg_2.x, 70905u, 1u), vec4<bool>(arg_0.a.a.x, false, false, true)))));
    return global2[_wgslsmith_index_u32(u_input.a, 10u)];
}

@compute
@workgroup_size(1)
fn main() {
    global0 = global1.a;
    var var_0 = func_6(Struct_4(global1.a, global1.b), global1.a.a, _wgslsmith_sub_vec3_u32(func_5(4294967295u, func_1(global0.a.xy)), vec3<u32>(u_input.c, 218u, 0u)), select(!(!vec4<bool>(global1.a.a.x, global1.a.a.x, true, global0.a.x)), select(!select(vec4<bool>(global0.a.x, false, global0.a.x, global1.a.a.x), vec4<bool>(global0.a.x, global1.a.a.x, false, true), false), select(vec4<bool>(false, global1.a.a.x, true, true), vec4<bool>(global0.a.x, global0.a.x, global1.a.a.x, false), vec4<bool>(false, false, global1.a.a.x, global0.a.x)), global0.a.x), select(select(select(vec4<bool>(global0.a.x, true, false, false), vec4<bool>(false, global0.a.x, true, global1.a.a.x), vec4<bool>(global0.a.x, global1.a.a.x, global0.a.x, false)), vec4<bool>(global0.a.x, true, global1.a.a.x, false), !vec4<bool>(false, global1.a.a.x, false, global0.a.x)), select(!vec4<bool>(global1.a.a.x, true, false, global1.a.a.x), vec4<bool>(false, false, global0.a.x, false), true), vec4<bool>(all(global0.a), global1.a.a.x, false, true))));
    global0 = func_1(!vec2<bool>(var_0.a.x, global0.a.x)).a;
    let var_1 = func_6(Struct_4(Struct_1(vec3<bool>(false, false & global0.a.x, var_0.a.x)), _wgslsmith_sub_vec3_i32(vec3<i32>(global1.b.x, -2147483647i, 0i), vec3<i32>(-1i, 45847i, 22250i)) & var_0.b), func_2(Struct_3(~_wgslsmith_add_vec4_i32(vec4<i32>(46195i, -1i, 2147483647i, -1i), vec4<i32>(var_0.b.x, 1i, u_input.b, u_input.b)), ~(~vec2<u32>(u_input.a, 9929u)), func_5(u_input.a, Struct_4(global1.a, global1.b)).x)).a.a, _wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(firstTrailingBit(select(vec3<u32>(u_input.c, 95012u, 9638u), vec3<u32>(u_input.a, 29321u, u_input.a), true)), vec3<u32>(1u, u_input.a, select(u_input.a, u_input.a, true)), _wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.c, 33635u, 40483u), vec3<u32>(u_input.a, u_input.a, u_input.c)), vec3<u32>(55529u, u_input.a, u_input.c))), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 9000u), ~vec2<u32>(45874u, 0u)), _wgslsmith_mult_u32(_wgslsmith_sub_u32(u_input.c, 18961u), u_input.c), ~u_input.c)), !var_0.a).a;
    var var_2 = func_6(Struct_4(func_4(func_1(!vec2<bool>(global1.a.a.x, false)), global1.a.a.x, func_2(Struct_3(vec4<i32>(global1.b.x, 1i, u_input.b, var_0.b.x), vec2<u32>(u_input.a, u_input.a), u_input.a))), var_0.b), !global1.a.a, ~(~_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, u_input.c, u_input.c), vec3<u32>(1u, 4294967295u, 13803u))), vec4<bool>(true, false, !func_1(var_1.xw).a.a.x, var_0.e <= _wgslsmith_f_op_f32(step(var_0.e, func_6(Struct_4(Struct_1(vec3<bool>(global0.a.x, global0.a.x, var_1.x)), vec3<i32>(u_input.b, u_input.b, -1127i)), vec3<bool>(global1.a.a.x, var_1.x, global0.a.x), vec3<u32>(15902u, u_input.a, 43987u), var_1).c.x)))).b.x;
    var var_3 = select(global0.a, func_6(func_2(Struct_3(min(vec4<i32>(u_input.b, 9705i, 0i, global1.b.x), vec4<i32>(global1.b.x, global1.b.x, 2147483647i, var_0.b.x)), vec2<u32>(27773u, 57528u) & vec2<u32>(u_input.a, u_input.c), 69618u)), global1.a.a, min(_wgslsmith_sub_vec3_u32(vec3<u32>(53544u, 24709u, 37811u), vec3<u32>(u_input.c, 13571u, 19211u) << (vec3<u32>(u_input.a, 31258u, 0u) % vec3<u32>(32u))), vec3<u32>(24680u, u_input.c & u_input.a, 4294967295u)), var_0.a).a.zwx, select(func_4(Struct_4(func_1(vec2<bool>(var_0.a.x, true)).a, vec3<i32>(-2147483647i, u_input.b, 0i)), true, Struct_4(func_1(var_1.ww).a, vec3<i32>(0i, 51048i, -780i))).a, vec3<bool>((var_0.b.x ^ 0i) >= 0i, false, global0.a.x), var_1.zyz));
    var var_4 = func_6(func_2(Struct_3((vec4<i32>(var_0.b.x, u_input.b, 578i, var_0.b.x) & vec4<i32>(var_0.b.x, u_input.b, var_0.b.x, -2147483647i)) | ~vec4<i32>(var_0.b.x, u_input.b, 1i, global1.b.x), ~(~vec2<u32>(u_input.c, 1u)), u_input.a)), select(func_6(func_1(!var_1.yx), !select(var_0.a.zzz, global1.a.a, var_0.a.wzx), _wgslsmith_add_vec3_u32(~vec3<u32>(12076u, u_input.a, 25330u), firstTrailingBit(vec3<u32>(u_input.c, 1u, u_input.a))), !var_1).a.zxx, vec3<bool>(true, true, true), var_1.x), vec3<u32>(firstTrailingBit(_wgslsmith_mod_u32(106274u, ~0u)), ~((26278u >> (u_input.c % 32u)) >> (u_input.a % 32u)), _wgslsmith_mod_u32(u_input.c, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a, 1u, 61744u), max(vec4<u32>(u_input.a, u_input.a, 0u, 23484u), vec4<u32>(19361u, u_input.c, 13665u, u_input.c))))), vec4<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1100f, 551f)) - -718f) <= var_0.d.x, true, global0.a.x | func_4(func_2(Struct_3(vec4<i32>(u_input.b, -1i, 2147483647i, -2147483647i), vec2<u32>(u_input.c, 32402u), 8076u)), var_0.a.x || true, Struct_4(Struct_1(var_1.zzz), vec3<i32>(0i, 39123i, -6170i))).a.x, var_0.a.x == true));
    let var_5 = Struct_1(vec3<bool>(true, true, any(select(func_6(Struct_4(Struct_1(var_0.a.xyy), global1.b), vec3<bool>(var_0.a.x, global0.a.x, true), vec3<u32>(u_input.c, u_input.a, u_input.c), var_1).a, select(vec4<bool>(var_0.a.x, global1.a.a.x, false, var_3.x), var_1, vec4<bool>(true, var_0.a.x, false, true)), var_4.a))));
    var var_6 = true;
    let x = u_input.a;
    s_output = StorageBuffer(select(min(_wgslsmith_add_vec4_u32(vec4<u32>(43354u, u_input.c, u_input.a, 17529u) << (vec4<u32>(u_input.a, 12219u, u_input.a, 4294967295u) % vec4<u32>(32u)), vec4<u32>(u_input.a, 19161u, u_input.a, u_input.c) >> (vec4<u32>(4909u, u_input.c, 4294967295u, 0u) % vec4<u32>(32u))), _wgslsmith_div_vec4_u32(vec4<u32>(1u, 0u, 1u, u_input.a), reverseBits(vec4<u32>(4294967295u, u_input.a, u_input.c, 0u)))), ~(~(~vec4<u32>(u_input.c, u_input.c, 4294967295u, 15177u))), var_4.a), ~(-(min(vec4<i32>(global1.b.x, var_4.b.x, -49221i, global1.b.x), vec4<i32>(-2147483647i, 3989i, -17073i, global1.b.x)) & -vec4<i32>(-2147483647i, global1.b.x, 1i, 2147483647i))), vec2<u32>(u_input.a, 18671u), ~var_4.b, ~(vec3<u32>(4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(17783u, 1u)), _wgslsmith_mult_u32(0u, 1u)) << (abs(~vec3<u32>(u_input.a, 4294967295u, 4294967295u)) % vec3<u32>(32u))));
}

