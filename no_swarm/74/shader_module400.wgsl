struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: vec3<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 27> = array<Struct_4, 27>(Struct_4(60627u, Struct_1(vec3<u32>(32112u, 66223u, 19155u), false, vec3<bool>(false, true, false)), Struct_1(vec3<u32>(4294967295u, 0u, 0u), false, vec3<bool>(true, false, true)), Struct_1(vec3<u32>(4294967295u, 64951u, 49462u), true, vec3<bool>(true, true, true)), vec4<bool>(false, false, true, true)), Struct_4(46382u, Struct_1(vec3<u32>(4294967295u, 29672u, 4294967295u), true, vec3<bool>(false, true, true)), Struct_1(vec3<u32>(4294967295u, 4294967295u, 1u), true, vec3<bool>(true, false, false)), Struct_1(vec3<u32>(4294967295u, 0u, 14872u), true, vec3<bool>(false, true, false)), vec4<bool>(false, true, false, false)), Struct_4(7922u, Struct_1(vec3<u32>(2201u, 33184u, 1u), true, vec3<bool>(true, true, false)), Struct_1(vec3<u32>(374u, 1u, 0u), true, vec3<bool>(true, false, true)), Struct_1(vec3<u32>(4294967295u, 42239u, 5704u), true, vec3<bool>(false, false, true)), vec4<bool>(true, false, false, true)), Struct_4(4294967295u, Struct_1(vec3<u32>(85546u, 1u, 38432u), false, vec3<bool>(false, false, true)), Struct_1(vec3<u32>(60391u, 37531u, 53703u), false, vec3<bool>(false, true, false)), Struct_1(vec3<u32>(26289u, 66915u, 33572u), true, vec3<bool>(false, false, false)), vec4<bool>(false, false, true, false)), Struct_4(1u, Struct_1(vec3<u32>(7430u, 2906u, 5961u), false, vec3<bool>(true, false, true)), Struct_1(vec3<u32>(0u, 37686u, 0u), true, vec3<bool>(false, false, true)), Struct_1(vec3<u32>(74785u, 4294967295u, 0u), false, vec3<bool>(false, true, false)), vec4<bool>(false, true, true, false)), Struct_4(4294967295u, Struct_1(vec3<u32>(12808u, 0u, 1271u), false, vec3<bool>(false, false, true)), Struct_1(vec3<u32>(7216u, 4294967295u, 23008u), true, vec3<bool>(false, true, true)), Struct_1(vec3<u32>(0u, 90873u, 27351u), true, vec3<bool>(true, true, false)), vec4<bool>(true, true, false, false)), Struct_4(11660u, Struct_1(vec3<u32>(4294967295u, 4294967295u, 1u), true, vec3<bool>(true, false, true)), Struct_1(vec3<u32>(1u, 56710u, 4294967295u), true, vec3<bool>(true, true, false)), Struct_1(vec3<u32>(1601u, 30879u, 0u), true, vec3<bool>(false, false, true)), vec4<bool>(false, false, true, false)), Struct_4(10347u, Struct_1(vec3<u32>(3379u, 2271u, 1u), false, vec3<bool>(false, true, false)), Struct_1(vec3<u32>(0u, 27055u, 55488u), false, vec3<bool>(false, true, false)), Struct_1(vec3<u32>(78428u, 11941u, 55411u), true, vec3<bool>(false, false, true)), vec4<bool>(false, false, false, true)), Struct_4(1u, Struct_1(vec3<u32>(26499u, 26178u, 21031u), true, vec3<bool>(false, true, true)), Struct_1(vec3<u32>(65642u, 3571u, 10009u), false, vec3<bool>(false, true, true)), Struct_1(vec3<u32>(19854u, 0u, 42197u), false, vec3<bool>(true, true, true)), vec4<bool>(false, true, true, false)), Struct_4(1u, Struct_1(vec3<u32>(1u, 0u, 4294967295u), false, vec3<bool>(true, true, true)), Struct_1(vec3<u32>(1u, 1u, 0u), true, vec3<bool>(true, true, true)), Struct_1(vec3<u32>(1u, 1u, 1u), false, vec3<bool>(false, true, true)), vec4<bool>(true, false, true, true)), Struct_4(12611u, Struct_1(vec3<u32>(4294967295u, 62447u, 69284u), true, vec3<bool>(false, true, false)), Struct_1(vec3<u32>(22196u, 53021u, 77518u), true, vec3<bool>(false, false, true)), Struct_1(vec3<u32>(4294967295u, 61488u, 44779u), true, vec3<bool>(true, true, false)), vec4<bool>(false, false, true, true)), Struct_4(69208u, Struct_1(vec3<u32>(2041u, 4294967295u, 4131u), false, vec3<bool>(true, true, false)), Struct_1(vec3<u32>(19855u, 106436u, 36352u), true, vec3<bool>(true, true, false)), Struct_1(vec3<u32>(1u, 4294967295u, 0u), true, vec3<bool>(true, false, false)), vec4<bool>(true, true, true, true)), Struct_4(47837u, Struct_1(vec3<u32>(4294967295u, 63378u, 40296u), true, vec3<bool>(true, false, false)), Struct_1(vec3<u32>(22950u, 97054u, 0u), false, vec3<bool>(true, false, false)), Struct_1(vec3<u32>(39861u, 212u, 4294967295u), false, vec3<bool>(true, false, true)), vec4<bool>(true, true, false, true)), Struct_4(1u, Struct_1(vec3<u32>(1u, 0u, 22609u), false, vec3<bool>(false, false, false)), Struct_1(vec3<u32>(57680u, 1u, 13762u), false, vec3<bool>(true, false, false)), Struct_1(vec3<u32>(90220u, 1u, 38065u), true, vec3<bool>(false, false, true)), vec4<bool>(true, false, true, false)), Struct_4(1u, Struct_1(vec3<u32>(30656u, 0u, 0u), false, vec3<bool>(false, true, false)), Struct_1(vec3<u32>(63749u, 0u, 7737u), false, vec3<bool>(true, false, false)), Struct_1(vec3<u32>(4294967295u, 48511u, 30014u), true, vec3<bool>(true, false, true)), vec4<bool>(false, false, false, true)), Struct_4(0u, Struct_1(vec3<u32>(0u, 45357u, 1u), false, vec3<bool>(false, false, true)), Struct_1(vec3<u32>(4294967295u, 10167u, 7432u), false, vec3<bool>(true, false, false)), Struct_1(vec3<u32>(37716u, 30964u, 1u), true, vec3<bool>(true, true, false)), vec4<bool>(true, false, true, false)), Struct_4(95316u, Struct_1(vec3<u32>(41669u, 35067u, 0u), false, vec3<bool>(true, false, true)), Struct_1(vec3<u32>(55055u, 19049u, 24540u), false, vec3<bool>(false, false, true)), Struct_1(vec3<u32>(4294967295u, 0u, 9768u), true, vec3<bool>(true, false, true)), vec4<bool>(false, true, false, true)), Struct_4(1u, Struct_1(vec3<u32>(1u, 0u, 4294967295u), false, vec3<bool>(false, false, false)), Struct_1(vec3<u32>(56499u, 3879u, 0u), true, vec3<bool>(false, true, true)), Struct_1(vec3<u32>(0u, 0u, 42694u), true, vec3<bool>(true, false, true)), vec4<bool>(true, false, false, true)), Struct_4(41523u, Struct_1(vec3<u32>(0u, 54801u, 0u), true, vec3<bool>(false, false, true)), Struct_1(vec3<u32>(40947u, 82183u, 1u), false, vec3<bool>(true, false, false)), Struct_1(vec3<u32>(31643u, 5828u, 4294967295u), false, vec3<bool>(false, false, false)), vec4<bool>(true, true, true, false)), Struct_4(1u, Struct_1(vec3<u32>(4294967295u, 58198u, 1u), true, vec3<bool>(true, false, true)), Struct_1(vec3<u32>(5746u, 4294967295u, 0u), true, vec3<bool>(true, false, true)), Struct_1(vec3<u32>(13914u, 4294967295u, 9107u), false, vec3<bool>(false, false, true)), vec4<bool>(true, false, true, true)), Struct_4(57832u, Struct_1(vec3<u32>(0u, 1u, 65239u), false, vec3<bool>(false, true, true)), Struct_1(vec3<u32>(0u, 0u, 2447u), false, vec3<bool>(true, false, true)), Struct_1(vec3<u32>(14582u, 51064u, 0u), true, vec3<bool>(true, false, false)), vec4<bool>(false, false, true, true)), Struct_4(0u, Struct_1(vec3<u32>(0u, 31454u, 40593u), false, vec3<bool>(true, true, true)), Struct_1(vec3<u32>(4294967295u, 4294967295u, 4294967295u), false, vec3<bool>(false, false, true)), Struct_1(vec3<u32>(0u, 0u, 0u), false, vec3<bool>(false, false, false)), vec4<bool>(true, false, false, true)), Struct_4(4294967295u, Struct_1(vec3<u32>(0u, 4294967295u, 4294967295u), false, vec3<bool>(true, true, true)), Struct_1(vec3<u32>(1u, 10143u, 25962u), false, vec3<bool>(false, true, false)), Struct_1(vec3<u32>(1u, 10898u, 20602u), false, vec3<bool>(true, true, true)), vec4<bool>(true, true, true, false)), Struct_4(0u, Struct_1(vec3<u32>(44685u, 1u, 4294967295u), true, vec3<bool>(false, true, true)), Struct_1(vec3<u32>(5142u, 1u, 1u), true, vec3<bool>(true, false, false)), Struct_1(vec3<u32>(0u, 16443u, 4294967295u), false, vec3<bool>(true, true, false)), vec4<bool>(false, true, true, true)), Struct_4(0u, Struct_1(vec3<u32>(44040u, 1u, 4294967295u), false, vec3<bool>(true, true, false)), Struct_1(vec3<u32>(1u, 74694u, 13196u), false, vec3<bool>(false, false, true)), Struct_1(vec3<u32>(51088u, 24574u, 1u), true, vec3<bool>(false, true, true)), vec4<bool>(true, true, true, true)), Struct_4(0u, Struct_1(vec3<u32>(26775u, 0u, 32134u), true, vec3<bool>(true, true, true)), Struct_1(vec3<u32>(12942u, 1u, 14317u), true, vec3<bool>(true, false, true)), Struct_1(vec3<u32>(0u, 4294967295u, 4294967295u), true, vec3<bool>(true, false, true)), vec4<bool>(false, true, true, true)), Struct_4(5722u, Struct_1(vec3<u32>(24527u, 1u, 4294967295u), false, vec3<bool>(false, false, true)), Struct_1(vec3<u32>(4294967295u, 4925u, 4294967295u), true, vec3<bool>(false, true, true)), Struct_1(vec3<u32>(0u, 4294967295u, 0u), false, vec3<bool>(false, true, false)), vec4<bool>(true, true, true, true)));

var<private> global1: u32 = 1u;

var<private> global2: array<vec3<f32>, 6>;

var<private> global3: bool = true;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: u32, arg_1: vec3<i32>, arg_2: vec2<i32>) -> vec2<bool> {
    global0 = array<Struct_4, 27>();
    global0 = array<Struct_4, 27>();
    var var_0 = _wgslsmith_mod_i32(-max(arg_2.x, ~5358i >> (reverseBits(arg_0) % 32u)), _wgslsmith_div_i32(4186i, arg_1.x));
    var_0 = ~(~2147483647i);
    var var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-463f, -1018f))))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-704f, -1007f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(522f, -337f), vec2<f32>(-1438f, -255f), vec2<bool>(true, true))))))));
    return !select(select(vec2<bool>(select(false, false, false), false), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true)), select(select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, false), vec2<bool>(true, true)), false);
}

fn func_2(arg_0: f32, arg_1: vec2<i32>) -> vec2<bool> {
    global0 = array<Struct_4, 27>();
    global1 = 1u;
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + _wgslsmith_f_op_f32(427f * -358f));
    let var_1 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-475f + _wgslsmith_f_op_f32(-arg_0)), -109f, _wgslsmith_div_f32(arg_0, -458f), -1020f), Struct_1(u_input.c, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0), arg_0)) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + arg_0)), vec3<bool>(any(func_3(1u, vec3<i32>(u_input.d.x, arg_1.x, 2147483647i), vec2<i32>(arg_1.x, 2147483647i))), true, true)), Struct_1(u_input.c, all(select(vec2<bool>(true, false), func_3(34155u, vec3<i32>(-1i, arg_1.x, -1i), vec2<i32>(67521i, arg_1.x)), u_input.c.x < u_input.a)), !(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), false))), Struct_1(u_input.c, any(select(vec2<bool>(true, true), vec2<bool>(true, true), true)), vec3<bool>(true, arg_0 >= _wgslsmith_f_op_f32(-1115f + 1278f), false || (arg_1.x > u_input.e.x))));
    let var_2 = vec4<bool>(var_1.d.b, var_1.d.c.x, var_1.c.b, false);
    return select(var_1.c.c.zx, vec2<bool>(!var_2.x, false), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.a.x))) - _wgslsmith_f_op_f32(arg_0 + var_1.a.x)) == 132f);
}

fn func_4(arg_0: u32, arg_1: vec3<i32>, arg_2: vec2<bool>, arg_3: vec4<f32>) -> Struct_1 {
    let var_0 = arg_2.x;
    var var_1 = arg_1.xx;
    let var_2 = _wgslsmith_f_op_vec3_f32(trunc(global2[_wgslsmith_index_u32(1u, 6u)]));
    global3 = true;
    let var_3 = Struct_1(min(vec3<u32>(38952u, ~u_input.a, 1u), abs(u_input.c)), true, !vec3<bool>(any(vec3<bool>(false, false, arg_2.x)) || !var_0, true, any(select(vec2<bool>(arg_2.x, arg_2.x), arg_2, vec2<bool>(true, arg_2.x)))));
    return Struct_1(~vec3<u32>(~_wgslsmith_add_u32(u_input.c.x, 18865u), firstLeadingBit(u_input.a), 1u), !(_wgslsmith_dot_vec4_i32(u_input.e, vec4<i32>(arg_1.x, 42338i, -70784i, 35987i)) <= arg_1.x), select(var_3.c, select(var_3.c, vec3<bool>(true && arg_2.x, !arg_2.x, arg_2.x), var_3.c), true));
}

fn func_1(arg_0: i32, arg_1: f32) -> bool {
    let var_0 = ~((-vec3<i32>(1i, arg_0, u_input.d.x) ^ u_input.d.zwx) << (_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, 31875u) ^ ~vec3<u32>(23744u, 14916u, u_input.c.x), vec3<u32>(0u << (u_input.b % 32u), 23984u, 1u)) % vec3<u32>(32u)));
    var var_1 = -1000f;
    var var_2 = Struct_4(1u, func_4(firstTrailingBit(firstLeadingBit(2729u)), -(u_input.d.wxx >> ((u_input.c ^ vec3<u32>(u_input.b, 20374u, u_input.a)) % vec3<u32>(32u))), !(!func_2(arg_1, vec2<i32>(arg_0, -2147483647i))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, -1746f, arg_1, arg_1)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(560f, -1048f, arg_1, arg_1)))))), func_4(1u, abs(vec3<i32>(0i, var_0.x, -var_0.x)), vec2<bool>(true, true), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -877f), _wgslsmith_f_op_f32(f32(-1f) * -842f), -541f, _wgslsmith_div_f32(-1000f, -557f)) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(750f, -681f, -994f, 531f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(402f, -359f, arg_1, 1621f)))))), Struct_1(vec3<u32>(_wgslsmith_add_u32(8017u, u_input.a), u_input.b, 1u) << (vec3<u32>(0u, 1u, _wgslsmith_div_u32(3681u, 1u)) % vec3<u32>(32u)), false, vec3<bool>(true, any(vec4<bool>(true, true, true, true)), true)), select(vec4<bool>(true, all(vec4<bool>(true, true, true, true)), !all(vec4<bool>(true, false, false, false)), true), !(!select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false))), select(vec4<bool>(false, all(vec2<bool>(true, true)), -764f > arg_1, true), vec4<bool>(false, true, false, true), select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false)), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true)))));
    global0 = array<Struct_4, 27>();
    var var_3 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~(~91469u), u_input.a) | ~u_input.c.x, 27u)];
    return (var_3.e.x & all(vec2<bool>(true, var_2.b.c.x))) & var_2.d.c.x;
}

fn func_5(arg_0: u32, arg_1: bool, arg_2: vec3<bool>, arg_3: u32) -> Struct_2 {
    let var_0 = u_input.c | vec3<u32>(16505u, arg_0, max(arg_3, arg_3));
    var var_1 = false;
    let var_2 = select(vec4<bool>(arg_1, func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -375f), _wgslsmith_f_op_f32(trunc(212f))), _wgslsmith_add_vec2_i32(u_input.e.xx, vec2<i32>(-10647i, u_input.e.x) << (vec2<u32>(1u, 132444u) % vec2<u32>(32u)))).x, arg_2.x, any(vec2<bool>(arg_1, true))), select(select(select(vec4<bool>(false, false, arg_2.x, true), vec4<bool>(false, false, true, false), arg_1), vec4<bool>(true, arg_2.x | true, func_4(arg_3, vec3<i32>(-37773i, u_input.d.x, u_input.e.x), arg_2.zz, vec4<f32>(133f, -859f, -735f, -755f)).b, arg_1), arg_1), select(!select(vec4<bool>(false, true, true, false), vec4<bool>(false, arg_2.x, arg_2.x, true), vec4<bool>(true, false, false, false)), select(vec4<bool>(arg_2.x, arg_1, false, arg_1), select(vec4<bool>(true, true, arg_1, false), vec4<bool>(true, arg_2.x, true, true), vec4<bool>(arg_2.x, arg_1, true, arg_1)), true), select(select(vec4<bool>(true, arg_2.x, false, arg_1), vec4<bool>(false, arg_2.x, arg_2.x, true), vec4<bool>(false, arg_1, false, false)), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, arg_1, arg_1), arg_2.x), vec4<bool>(true, true, true, true))), vec4<bool>(any(func_2(1000f, u_input.e.zy)), any(!vec2<bool>(arg_1, false)), arg_1, true || select(arg_2.x, arg_1, true))), vec4<bool>(arg_2.x, func_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(786f, -1330f)), u_input.e.yx).x, all(!select(vec4<bool>(false, true, arg_2.x, arg_2.x), vec4<bool>(false, arg_1, arg_2.x, arg_2.x), arg_1)), arg_2.x));
    var var_3 = true;
    let var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-680f, -1000f, -464f, 1315f))))));
    return Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(var_4, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_4.x, -1254f, var_4.x, var_4.x)))))) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(841f, 1831f, 1035f, -367f) + var_4), _wgslsmith_f_op_vec4_f32(vec4<f32>(218f, var_4.x, var_4.x, var_4.x) + vec4<f32>(3089f, 301f, -1000f, -2661f))))))), Struct_1((var_0 >> ((var_0 >> (vec3<u32>(arg_3, 0u, arg_3) % vec3<u32>(32u))) % vec3<u32>(32u))) & func_4(arg_3, vec3<i32>(1i, u_input.d.x, u_input.e.x), !arg_2.zy, vec4<f32>(792f, var_4.x, -2658f, var_4.x)).a, !(!(var_4.x == 208f)), vec3<bool>(var_2.x, false, true)), func_4(4294967295u, ~firstLeadingBit(u_input.e.zyw) << (vec3<u32>(_wgslsmith_mod_u32(44877u, 8534u), arg_3, ~26375u) % vec3<u32>(32u)), !func_2(var_4.x, ~vec2<i32>(-12357i, 21023i)), vec4<f32>(_wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(sign(var_4.x)), arg_2.x)), _wgslsmith_f_op_f32(1f + var_4.x), -298f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(583f - var_4.x))))), func_4(~4294967295u, abs(vec3<i32>(-1i, 13489i, u_input.d.x << (23623u % 32u))), !(!vec2<bool>(arg_1, var_2.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(2145f, 1210f, -1697f, 191f), vec4<f32>(461f, var_4.x, var_4.x, var_4.x)))) * vec4<f32>(_wgslsmith_f_op_f32(var_4.x + var_4.x), _wgslsmith_f_op_f32(f32(-1f) * -1203f), var_4.x, _wgslsmith_f_op_f32(select(-2112f, var_4.x, arg_2.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(3011u, true && !func_1(_wgslsmith_sub_i32(35877i, 0i), -607f), !vec3<bool>(true, u_input.a != 0u, countOneBits(2147483647i) >= _wgslsmith_div_i32(u_input.e.x, 0i)), reverseBits(~_wgslsmith_sub_u32(46975u, u_input.b)));
    global0 = array<Struct_4, 27>();
    global2 = array<vec3<f32>, 6>();
    global0 = array<Struct_4, 27>();
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.a.x)))))), var_0.a.x);
    var var_2 = func_5(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b.a.x, firstLeadingBit(4294967295u), func_5(56905u, var_0.b.b, var_0.c.c, u_input.a).b.a.x, max(var_0.d.a.x, u_input.a)) | select(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, u_input.b, u_input.a, 2504u), vec4<u32>(u_input.b, var_0.b.a.x, 16491u, 0u)), vec4<u32>(var_0.c.a.x, 43154u, 4294967295u, u_input.a), !vec4<bool>(var_0.c.c.x, false, var_0.d.b, true)), ~max(reverseBits(vec4<u32>(0u, u_input.b, 1u, 4294967295u)), vec4<u32>(0u, var_0.d.a.x, 0u, u_input.b))), !(_wgslsmith_f_op_f32(-var_0.a.x) >= _wgslsmith_f_op_f32(534f - _wgslsmith_f_op_f32(f32(-1f) * -749f))), func_5(max(23754u, ~var_0.d.a.x), func_1(~1i, 392f), var_0.d.c, var_0.b.a.x & 0u).d.c, select(~u_input.b, ~(~(~u_input.a)), true));
    var var_3 = global0[_wgslsmith_index_u32(min(_wgslsmith_div_u32(abs(var_2.d.a.x), max(~1u, var_0.c.a.x)), var_0.b.a.x) | 0u, 27u)];
    let x = u_input.a;
    s_output = StorageBuffer(min(max(4294967295u, 6286u), 0u));
}

