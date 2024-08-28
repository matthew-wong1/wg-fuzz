struct Struct_1 {
    a: vec4<u32>,
    b: vec2<bool>,
    c: bool,
    d: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<f32>,
}

struct Struct_4 {
    a: i32,
    b: i32,
    c: vec3<bool>,
    d: vec2<u32>,
}

struct Struct_5 {
    a: i32,
    b: vec3<f32>,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<u32>,
    d: vec3<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 13> = array<Struct_2, 13>(Struct_2(Struct_1(vec4<u32>(83297u, 1u, 39776u, 11297u), vec2<bool>(true, true), true, vec3<u32>(1u, 4294967295u, 70991u)), vec2<f32>(-340f, 506f), Struct_1(vec4<u32>(0u, 4294967295u, 42274u, 81285u), vec2<bool>(true, false), true, vec3<u32>(4294967295u, 4294967295u, 1u)), Struct_1(vec4<u32>(11469u, 4294967295u, 144004u, 4294967295u), vec2<bool>(true, false), true, vec3<u32>(4294967295u, 5356u, 10493u))), Struct_2(Struct_1(vec4<u32>(43328u, 6074u, 8902u, 1u), vec2<bool>(true, true), true, vec3<u32>(18090u, 50473u, 4961u)), vec2<f32>(516f, -850f), Struct_1(vec4<u32>(4294967295u, 1u, 22206u, 9772u), vec2<bool>(true, false), false, vec3<u32>(4294967295u, 4294967295u, 30190u)), Struct_1(vec4<u32>(13580u, 1u, 1u, 4294967295u), vec2<bool>(false, true), false, vec3<u32>(48392u, 32204u, 4294967295u))), Struct_2(Struct_1(vec4<u32>(1u, 0u, 0u, 57450u), vec2<bool>(true, true), false, vec3<u32>(4294967295u, 4294967295u, 62831u)), vec2<f32>(486f, 857f), Struct_1(vec4<u32>(52245u, 76735u, 1u, 34637u), vec2<bool>(false, true), false, vec3<u32>(1u, 49566u, 0u)), Struct_1(vec4<u32>(0u, 61464u, 4294967295u, 16157u), vec2<bool>(false, false), false, vec3<u32>(4294967295u, 42447u, 27859u))), Struct_2(Struct_1(vec4<u32>(4294967295u, 0u, 64317u, 49640u), vec2<bool>(true, false), false, vec3<u32>(523u, 15701u, 43885u)), vec2<f32>(1000f, 1000f), Struct_1(vec4<u32>(18133u, 73481u, 4294967295u, 30995u), vec2<bool>(true, true), true, vec3<u32>(56607u, 11117u, 59405u)), Struct_1(vec4<u32>(162927u, 0u, 0u, 37430u), vec2<bool>(true, true), true, vec3<u32>(17066u, 10172u, 63458u))), Struct_2(Struct_1(vec4<u32>(0u, 111944u, 4294967295u, 35963u), vec2<bool>(false, false), true, vec3<u32>(1u, 0u, 41270u)), vec2<f32>(-415f, 1244f), Struct_1(vec4<u32>(48981u, 21683u, 4294967295u, 0u), vec2<bool>(true, true), false, vec3<u32>(30916u, 4294967295u, 15072u)), Struct_1(vec4<u32>(4294967295u, 1u, 94525u, 0u), vec2<bool>(false, false), true, vec3<u32>(0u, 37469u, 1575u))), Struct_2(Struct_1(vec4<u32>(49485u, 62644u, 19537u, 0u), vec2<bool>(false, true), false, vec3<u32>(0u, 59199u, 6704u)), vec2<f32>(834f, -1099f), Struct_1(vec4<u32>(4294967295u, 0u, 24206u, 1u), vec2<bool>(true, false), true, vec3<u32>(3106u, 1u, 50422u)), Struct_1(vec4<u32>(4294967295u, 52255u, 25518u, 0u), vec2<bool>(true, false), false, vec3<u32>(0u, 1u, 86051u))), Struct_2(Struct_1(vec4<u32>(11480u, 4294967295u, 1u, 1u), vec2<bool>(false, false), false, vec3<u32>(29941u, 22399u, 31948u)), vec2<f32>(-865f, 2037f), Struct_1(vec4<u32>(4294967295u, 15437u, 4245u, 61021u), vec2<bool>(false, true), true, vec3<u32>(0u, 0u, 0u)), Struct_1(vec4<u32>(1u, 5074u, 0u, 4294967295u), vec2<bool>(true, false), false, vec3<u32>(0u, 53160u, 44607u))), Struct_2(Struct_1(vec4<u32>(1u, 44263u, 4294967295u, 1u), vec2<bool>(true, false), true, vec3<u32>(0u, 52968u, 27126u)), vec2<f32>(1623f, -562f), Struct_1(vec4<u32>(1u, 452u, 17055u, 0u), vec2<bool>(false, false), true, vec3<u32>(121662u, 22326u, 0u)), Struct_1(vec4<u32>(41001u, 1062u, 22917u, 4294967295u), vec2<bool>(false, false), true, vec3<u32>(0u, 4294967295u, 15610u))), Struct_2(Struct_1(vec4<u32>(123623u, 1u, 0u, 68533u), vec2<bool>(false, true), true, vec3<u32>(0u, 0u, 4294967295u)), vec2<f32>(1370f, 1572f), Struct_1(vec4<u32>(29903u, 4294967295u, 25220u, 29653u), vec2<bool>(true, true), true, vec3<u32>(8891u, 0u, 0u)), Struct_1(vec4<u32>(4294967295u, 12218u, 81824u, 4294967295u), vec2<bool>(false, true), false, vec3<u32>(0u, 45887u, 1u))), Struct_2(Struct_1(vec4<u32>(0u, 4294967295u, 45436u, 43657u), vec2<bool>(false, false), false, vec3<u32>(0u, 6447u, 50906u)), vec2<f32>(202f, -1258f), Struct_1(vec4<u32>(1u, 3886u, 3447u, 18504u), vec2<bool>(true, false), true, vec3<u32>(29654u, 1u, 4294967295u)), Struct_1(vec4<u32>(0u, 0u, 0u, 4294967295u), vec2<bool>(true, false), true, vec3<u32>(0u, 60678u, 50676u))), Struct_2(Struct_1(vec4<u32>(6239u, 4294967295u, 29529u, 0u), vec2<bool>(true, true), false, vec3<u32>(77393u, 41094u, 95582u)), vec2<f32>(466f, 949f), Struct_1(vec4<u32>(28527u, 68832u, 4294967295u, 4294967295u), vec2<bool>(true, false), true, vec3<u32>(29409u, 0u, 4294967295u)), Struct_1(vec4<u32>(4294967295u, 1u, 4294967295u, 2550u), vec2<bool>(true, true), true, vec3<u32>(154675u, 4294967295u, 75154u))), Struct_2(Struct_1(vec4<u32>(73745u, 0u, 1u, 1u), vec2<bool>(true, false), true, vec3<u32>(54309u, 52539u, 51273u)), vec2<f32>(-491f, -2635f), Struct_1(vec4<u32>(4294967295u, 0u, 1916u, 1u), vec2<bool>(true, true), false, vec3<u32>(25762u, 4294967295u, 1603u)), Struct_1(vec4<u32>(28042u, 5097u, 23442u, 29024u), vec2<bool>(false, false), false, vec3<u32>(19426u, 10287u, 8343u))), Struct_2(Struct_1(vec4<u32>(36769u, 1u, 1u, 0u), vec2<bool>(true, false), true, vec3<u32>(4294967295u, 47985u, 19988u)), vec2<f32>(-1188f, -315f), Struct_1(vec4<u32>(27366u, 0u, 50146u, 23493u), vec2<bool>(false, false), true, vec3<u32>(55971u, 7090u, 4294967295u)), Struct_1(vec4<u32>(38143u, 1u, 4294967295u, 0u), vec2<bool>(true, false), true, vec3<u32>(103539u, 80012u, 4294967295u))));

var<private> global1: array<vec2<u32>, 14>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1) -> vec4<f32> {
    let var_0 = u_input.b;
    global1 = array<vec2<u32>, 14>();
    global0 = array<Struct_2, 13>();
    var var_1 = -(~_wgslsmith_add_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(u_input.e.x, -2147483647i)));
    global0 = array<Struct_2, 13>();
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(968f, 1810f, 1015f, -176f) - _wgslsmith_div_vec4_f32(vec4<f32>(1000f, -1452f, -625f, -509f), vec4<f32>(499f, -574f, 596f, -1654f)))))));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec4<f32>, arg_2: vec3<u32>, arg_3: Struct_2) -> i32 {
    var var_0 = Struct_4(32176i, 1i, select(!vec3<bool>(arg_3.d.b.x || arg_3.c.b.x, all(vec4<bool>(false, true, arg_3.d.b.x, arg_3.d.c)), false && arg_3.a.c), !select(!vec3<bool>(false, arg_3.a.c, arg_3.a.b.x), !vec3<bool>(true, false, arg_3.c.c), vec3<bool>(false, false, arg_3.a.c)), !(!all(vec2<bool>(true, arg_3.d.b.x)))), vec2<u32>(36087u & reverseBits(~u_input.b), arg_0.x));
    return _wgslsmith_dot_vec2_i32(u_input.a, ~vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 2059i, var_0.b, -2147483647i), vec4<i32>(194i, var_0.b, 2147483647i, 24807i)), 1i)) | reverseBits(var_0.b);
}

fn func_2() -> Struct_3 {
    global0 = array<Struct_2, 13>();
    let var_0 = Struct_4(-_wgslsmith_add_i32(-20779i, func_4(vec4<u32>(6919u, 1u, u_input.b, 4294967295u) & vec4<u32>(16866u, 38478u, 7726u, u_input.b), _wgslsmith_f_op_vec4_f32(func_3(Struct_1(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), vec2<bool>(true, false), false, vec3<u32>(u_input.b, 1u, u_input.b)))), vec3<u32>(0u, u_input.b, u_input.b), global0[_wgslsmith_index_u32(0u << (u_input.b % 32u), 13u)])), u_input.a.x, vec3<bool>(false, -380f >= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-213f)))), any(select(vec4<bool>(true, true, false, true), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), true), true))), _wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(global1[_wgslsmith_index_u32(abs(u_input.b), 14u)], global1[_wgslsmith_index_u32(u_input.b, 14u)]), ~vec2<u32>(25180u, u_input.b)));
    global1 = array<vec2<u32>, 14>();
    let var_1 = select(-vec4<i32>(-32384i, firstLeadingBit(u_input.c), ~var_0.b, -19379i), countOneBits(_wgslsmith_add_vec4_i32(~vec4<i32>(var_0.a, -24792i, 2147483647i, -33441i), vec4<i32>(-1i) * -vec4<i32>(var_0.a, u_input.a.x, -39320i, var_0.b))), all(select(!var_0.c.xy, var_0.c.zz, !var_0.c.xz)));
    global1 = array<vec2<u32>, 14>();
    return Struct_3(Struct_1(firstTrailingBit(~vec4<u32>(var_0.d.x, 0u, u_input.b, 6420u)) & ~(~vec4<u32>(var_0.d.x, 567u, var_0.d.x, u_input.b)), !(!select(vec2<bool>(var_0.c.x, true), var_0.c.xy, true)), true, min(vec3<u32>(u_input.b, var_0.d.x, min(1u, 45460u)), ~(~vec3<u32>(u_input.b, u_input.b, u_input.b)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(244f, 1000f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(309f, -803f))))))));
}

fn func_5(arg_0: bool, arg_1: Struct_3, arg_2: Struct_1) -> i32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(func_3(arg_1.a)).x;
    let var_1 = ~_wgslsmith_div_i32(u_input.c, reverseBits(26778i));
    var var_2 = select(vec3<bool>((true | arg_1.a.c) || true, true, 59720u == reverseBits(_wgslsmith_sub_u32(48250u, u_input.b))), select(!vec3<bool>(arg_1.b.x < arg_1.b.x, true, false), !(!select(vec3<bool>(arg_2.b.x, arg_0, true), vec3<bool>(arg_0, false, false), arg_0)), vec3<bool>(all(!vec3<bool>(arg_0, arg_0, true)), any(vec3<bool>(false, false, arg_2.c)), arg_0 & true)), u_input.b < ~31211u);
    let var_3 = abs(vec4<i32>(-abs(min(-53695i, u_input.a.x)), 0i, abs((u_input.d ^ -39824i) << (~arg_2.d.x % 32u)), -(~(-1i))));
    global1 = array<vec2<u32>, 14>();
    return -(-2147483647i >> (_wgslsmith_mod_u32(arg_1.a.d.x & arg_1.a.a.x, max(1u, arg_2.a.x)) % 32u));
}

fn func_1(arg_0: f32, arg_1: Struct_4, arg_2: Struct_4, arg_3: Struct_4) -> vec3<f32> {
    let var_0 = _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_3.a, u_input.d ^ arg_3.b, -13575i, -1i), _wgslsmith_mult_vec4_i32(vec4<i32>(-arg_2.b, abs(-77223i), -arg_1.a, _wgslsmith_mult_i32(arg_3.b, 2147483647i)), vec4<i32>(u_input.e.x, -1i, arg_2.b | arg_3.b, arg_2.a << (20602u % 32u))) << (_wgslsmith_mult_vec4_u32(~(vec4<u32>(29307u, arg_1.d.x, 0u, arg_1.d.x) >> (vec4<u32>(arg_1.d.x, arg_3.d.x, 13410u, arg_2.d.x) % vec4<u32>(32u))), _wgslsmith_mod_vec4_u32(reverseBits(vec4<u32>(arg_1.d.x, u_input.b, 4294967295u, arg_1.d.x)), vec4<u32>(42717u, arg_1.d.x, arg_2.d.x, u_input.b))) % vec4<u32>(32u)), vec4<i32>(-2147483647i, func_5(true, func_2(), Struct_1(vec4<u32>(u_input.b, 63695u, 1u, arg_1.d.x), arg_2.c.xz, true, vec3<u32>(arg_2.d.x, arg_3.d.x, u_input.b))) << (arg_3.d.x % 32u), arg_2.a, u_input.e.x));
    global1 = array<vec2<u32>, 14>();
    var var_1 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-641f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))))));
    let var_2 = vec2<u32>(_wgslsmith_sub_u32(4294967295u, arg_1.d.x), _wgslsmith_div_u32(_wgslsmith_add_u32(max(26813u, 28686u), arg_3.d.x), countOneBits(_wgslsmith_dot_vec2_u32(arg_2.d, vec2<u32>(arg_1.d.x, 1u))) ^ _wgslsmith_dot_vec2_u32(arg_2.d, arg_2.d)));
    let var_3 = 150f != arg_0;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_0, var_1.x, arg_0)))))))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, 1535f, arg_0) * vec3<f32>(261f, 1043f, arg_0)) * _wgslsmith_div_vec3_f32(vec3<f32>(arg_0, arg_0, -1015f), vec3<f32>(arg_0, arg_0, -413f))) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -614f), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(var_1.x + 1430f))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1045f, arg_0, arg_0)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_0, var_1.x, arg_0), vec3<f32>(1000f, var_1.x, arg_0)))))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<u32>, 14>();
    global1 = array<vec2<u32>, 14>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(269f, 1447f, -1127f)))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(func_1(2411f, Struct_4(u_input.c, u_input.a.x, vec3<bool>(true, false, false), vec2<u32>(u_input.b, 11438u)), Struct_4(-1i, 1i, vec3<bool>(false, true, false), vec2<u32>(u_input.b, 44623u)), Struct_4(-2147483647i, -1i, vec3<bool>(true, false, false), global1[_wgslsmith_index_u32(u_input.b, 14u)]))))), true)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -509f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), 142f))));
    let var_1 = vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(~0i, ~(-2147483647i), u_input.e.x), 32476i), 25096i) ^ ~(vec2<i32>(func_5(false, Struct_3(Struct_1(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), vec2<bool>(true, true), false, vec3<u32>(23264u, u_input.b, 88017u)), var_0.zx), Struct_1(vec4<u32>(4294967295u, 7624u, 1u, 4294967295u), vec2<bool>(false, true), false, vec3<u32>(1u, 32997u, 4294967295u))), 0i) ^ vec2<i32>(max(u_input.a.x, -2428i), _wgslsmith_dot_vec2_i32(u_input.a, u_input.e)));
    var var_2 = !(18112i <= ~_wgslsmith_div_i32(14299i >> (0u % 32u), var_1.x ^ var_1.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_dot_vec3_i32(~select(vec3<i32>(var_1.x, -2147483647i, u_input.c), vec3<i32>(u_input.a.x, 1i, 0i), vec3<bool>(true, false, true)), vec3<i32>(firstLeadingBit(u_input.c), -2147483647i, _wgslsmith_mult_i32(u_input.c, -2147483647i))), _wgslsmith_div_i32(reverseBits(0i >> (u_input.b % 32u)), _wgslsmith_mod_i32(var_1.x ^ var_1.x, _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, 2147483647i, u_input.e.x, u_input.a.x), vec4<i32>(u_input.c, 0i, -2147483647i, var_1.x)))), -1i << (u_input.b % 32u)), 43398u, global1[_wgslsmith_index_u32(u_input.b, 14u)], _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x * var_0.x), _wgslsmith_div_f32(842f, var_0.x)), var_0.x, 561f)), _wgslsmith_mult_i32(_wgslsmith_sub_i32(~var_1.x, firstTrailingBit(~(-2147483647i))), ~(-71470i)));
}

