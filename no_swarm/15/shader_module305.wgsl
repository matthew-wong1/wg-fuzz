struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec3<u32>,
    e: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<Struct_2, 13> = array<Struct_2, 13>(Struct_2(vec2<u32>(0u, 27884u), Struct_1(1028f, vec2<i32>(-25152i, 1i), vec4<u32>(0u, 1u, 6949u, 1u), vec3<u32>(31853u, 1u, 1u), false), vec3<bool>(false, true, true)), Struct_2(vec2<u32>(4294967295u, 17043u), Struct_1(1127f, vec2<i32>(2147483647i, 10277i), vec4<u32>(32181u, 26524u, 118757u, 47623u), vec3<u32>(0u, 42652u, 0u), false), vec3<bool>(true, false, false)), Struct_2(vec2<u32>(1u, 11655u), Struct_1(1000f, vec2<i32>(1i, 2147483647i), vec4<u32>(41288u, 97169u, 1u, 33917u), vec3<u32>(4294967295u, 0u, 119966u), true), vec3<bool>(false, false, true)), Struct_2(vec2<u32>(84997u, 13387u), Struct_1(-1000f, vec2<i32>(-17396i, 11134i), vec4<u32>(44101u, 5311u, 4294967295u, 56986u), vec3<u32>(0u, 36798u, 0u), true), vec3<bool>(true, true, false)), Struct_2(vec2<u32>(26494u, 4294967295u), Struct_1(1515f, vec2<i32>(1i, i32(-2147483648)), vec4<u32>(1u, 0u, 4294967295u, 11125u), vec3<u32>(4690u, 25613u, 0u), false), vec3<bool>(true, false, false)), Struct_2(vec2<u32>(4294967295u, 1u), Struct_1(-766f, vec2<i32>(0i, 0i), vec4<u32>(0u, 57021u, 1u, 1u), vec3<u32>(0u, 0u, 103795u), true), vec3<bool>(false, false, false)), Struct_2(vec2<u32>(0u, 4294967295u), Struct_1(-1217f, vec2<i32>(18149i, -11144i), vec4<u32>(0u, 42220u, 4294967295u, 1u), vec3<u32>(4294967295u, 4294967295u, 67926u), true), vec3<bool>(false, false, true)), Struct_2(vec2<u32>(1612u, 11353u), Struct_1(541f, vec2<i32>(1i, i32(-2147483648)), vec4<u32>(58960u, 41672u, 48679u, 89009u), vec3<u32>(26564u, 1u, 0u), false), vec3<bool>(true, false, true)), Struct_2(vec2<u32>(0u, 4294967295u), Struct_1(-567f, vec2<i32>(7779i, i32(-2147483648)), vec4<u32>(0u, 0u, 0u, 84055u), vec3<u32>(9720u, 4294967295u, 4294967295u), true), vec3<bool>(true, false, false)), Struct_2(vec2<u32>(0u, 1u), Struct_1(1090f, vec2<i32>(i32(-2147483648), i32(-2147483648)), vec4<u32>(0u, 4294967295u, 4294967295u, 1u), vec3<u32>(14325u, 3274u, 4294967295u), true), vec3<bool>(false, true, true)), Struct_2(vec2<u32>(31997u, 4294967295u), Struct_1(1130f, vec2<i32>(14200i, i32(-2147483648)), vec4<u32>(61199u, 0u, 14560u, 24775u), vec3<u32>(0u, 22268u, 1u), false), vec3<bool>(false, false, true)), Struct_2(vec2<u32>(0u, 31924u), Struct_1(-1047f, vec2<i32>(2147483647i, 0i), vec4<u32>(0u, 4294967295u, 73576u, 30346u), vec3<u32>(79199u, 72990u, 4294967295u), false), vec3<bool>(true, true, false)), Struct_2(vec2<u32>(1966u, 42129u), Struct_1(-1000f, vec2<i32>(-1i, -10442i), vec4<u32>(39633u, 52350u, 36774u, 4294967295u), vec3<u32>(28716u, 4294967295u, 0u), true), vec3<bool>(false, true, true)));

var<private> global2: array<Struct_2, 21>;

var<private> global3: array<Struct_2, 23>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<f32>) -> u32 {
    let var_0 = select(~_wgslsmith_mod_vec3_i32(countOneBits(select(vec3<i32>(26365i, u_input.b.x, 0i), vec3<i32>(u_input.b.x, u_input.b.x, 4662i), true)), -vec3<i32>(-1i, 0i, 0i)), firstTrailingBit(-(~vec3<i32>(27154i, u_input.b.x, -2147483647i))), vec3<bool>(true, true, false));
    let var_1 = 2147483647i;
    let var_2 = Struct_1(319f, ~u_input.b ^ _wgslsmith_mult_vec2_i32(~u_input.b, _wgslsmith_div_vec2_i32(min(vec2<i32>(u_input.b.x, var_0.x), u_input.b), u_input.b | vec2<i32>(-29264i, 2147483647i))), _wgslsmith_clamp_vec4_u32(~firstLeadingBit(reverseBits(vec4<u32>(u_input.a, u_input.a, 7497u, 13417u))), abs(vec4<u32>(1u, 44254u, u_input.a, 38974u) >> (_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 0u), vec4<u32>(50540u, 1u, 25902u, 0u)) % vec4<u32>(32u))), vec4<u32>(reverseBits(firstLeadingBit(29461u)), ~17443u, 459u, ~0u)), ~(~(vec3<u32>(u_input.a, u_input.a, u_input.a) & (vec3<u32>(u_input.a, u_input.a, u_input.a) ^ vec3<u32>(u_input.a, 25526u, u_input.a)))), false);
    global1 = array<Struct_2, 13>();
    global2 = array<Struct_2, 21>();
    return _wgslsmith_dot_vec2_u32(~max(var_2.c.yy, _wgslsmith_add_vec2_u32(vec2<u32>(1u, var_2.d.x), ~vec2<u32>(var_2.d.x, 0u))), reverseBits(vec2<u32>(max(~0u, u_input.a >> (var_2.d.x % 32u)), _wgslsmith_mult_u32(u_input.a, ~u_input.a))));
}

fn func_2(arg_0: u32) -> vec2<u32> {
    global3 = array<Struct_2, 23>();
    global3 = array<Struct_2, 23>();
    var var_0 = global1[_wgslsmith_index_u32(countOneBits(1u), 13u)];
    let var_1 = _wgslsmith_add_u32(45909u, 49074u);
    global0 = ~(25607u | func_3(vec4<f32>(_wgslsmith_f_op_f32(sign(var_0.b.a)), _wgslsmith_f_op_f32(f32(-1f) * -1984f), var_0.b.a, _wgslsmith_f_op_f32(-260f - 162f))));
    return _wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(select(var_0.b.c.yw, _wgslsmith_mod_vec2_u32(~var_0.a, ~vec2<u32>(arg_0, 1u)), !(!vec2<bool>(var_0.c.x, var_0.c.x))), ~(vec2<u32>(0u, arg_0) >> (max(vec2<u32>(var_0.b.d.x, var_1), vec2<u32>(var_0.a.x, 0u)) % vec2<u32>(32u)))), _wgslsmith_mod_vec2_u32(vec2<u32>(var_1, u_input.a), vec2<u32>(var_0.b.c.x, ~var_1)));
}

fn func_1() -> Struct_1 {
    var var_0 = vec4<bool>(true, select(false, all(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true))), true), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1250f, -428f) * -1023f))) >= 1026f, all(vec3<bool>(true, true, true)));
    let var_1 = Struct_2(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a))), ~vec2<u32>(1u, 1u)) | (vec2<u32>(min(u_input.a, u_input.a), u_input.a) & select(max(vec2<u32>(u_input.a, 1u), vec2<u32>(1u, u_input.a)), func_2(u_input.a), false)), Struct_1(1337f, -(~vec2<i32>(u_input.b.x, 2147483647i)), ~min(countOneBits(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)), ~vec4<u32>(u_input.a, u_input.a, 105803u, 0u)), max(~vec3<u32>(0u, u_input.a, 1u), max(~vec3<u32>(37615u, 15538u, 72816u), min(vec3<u32>(0u, 4294967295u, 7582u), vec3<u32>(u_input.a, 0u, 33213u)))), true), vec3<bool>(true, all(var_0.xw), (u_input.a | _wgslsmith_clamp_u32(u_input.a, u_input.a, 4294967295u)) == ~20286u));
    var_0 = vec4<bool>(any(var_0.wxy), var_1.b.e, abs(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(47597i, 23561i, u_input.b.x), vec3<i32>(0i, u_input.b.x, var_1.b.b.x)), ~vec3<i32>(u_input.b.x, var_1.b.b.x, u_input.b.x))) > (var_1.b.b.x << (4294967295u % 32u)), false);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1346f, -242f) + -281f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.b.a), var_1.b.a))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.b.a), 400f)), var_1.b.a))));
    var_2 = _wgslsmith_f_op_f32(-1f);
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(var_1.b.a)))))), select(~(-vec2<i32>(var_1.b.b.x, 2147483647i)) << (_wgslsmith_sub_vec2_u32(select(vec2<u32>(0u, u_input.a), vec2<u32>(0u, u_input.a), false), abs(vec2<u32>(u_input.a, var_1.b.d.x))) % vec2<u32>(32u)), ~firstTrailingBit(vec2<i32>(2147483647i, u_input.b.x) & vec2<i32>(-62117i, 2147483647i)), var_1.b.b.x != _wgslsmith_div_i32(var_1.b.b.x, ~2147483647i)), max(~vec4<u32>(0u & var_1.a.x, var_1.b.c.x, func_3(vec4<f32>(var_1.b.a, -968f, -591f, -178f)), _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a.x, u_input.a, u_input.a, u_input.a), var_1.b.c)), reverseBits(firstLeadingBit(select(var_1.b.c, var_1.b.c, true)))), var_1.b.d, true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global3 = array<Struct_2, 23>();
    let var_1 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)), -456f), u_input.b, vec4<u32>(func_1().d.x, _wgslsmith_dot_vec3_u32(var_0.d, ~(~vec3<u32>(u_input.a, var_0.d.x, u_input.a))), ~(~(~u_input.a)), _wgslsmith_mod_u32(~(~4294967295u), func_2(_wgslsmith_mod_u32(30402u, var_0.d.x)).x)), _wgslsmith_mod_vec3_u32(~(~firstLeadingBit(vec3<u32>(u_input.a, u_input.a, u_input.a))), var_0.d), any(vec2<bool>((var_0.e || var_0.e) && !var_0.e, true)));
    let var_2 = true && var_0.e;
    let var_3 = true;
    let var_4 = func_1();
    let var_5 = select(vec2<bool>(!(_wgslsmith_dot_vec3_u32(vec3<u32>(83276u, 18720u, 12463u), var_1.d) > abs(4294967295u)), true), !vec2<bool>(true, func_1().e), select(vec2<bool>(false, var_0.e), select(vec2<bool>(any(vec4<bool>(var_2, var_0.e, false, false)), any(vec2<bool>(true, false))), vec2<bool>(true, true), select(vec2<bool>(false, false), select(vec2<bool>(var_2, var_1.e), vec2<bool>(var_4.e, false), vec2<bool>(true, var_3)), select(vec2<bool>(false, false), vec2<bool>(var_3, false), false))), vec2<bool>(true, false)));
    let var_6 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-2213f, _wgslsmith_f_op_f32(-var_4.a), false))), var_4.a), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-905f, _wgslsmith_f_op_f32(var_1.a * var_0.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(var_4.a)), -561f, _wgslsmith_f_op_f32(-160f + -250f), _wgslsmith_f_op_f32(sign(833f))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1.a, var_6.x, var_4.a, var_4.a))))))), vec4<u32>(4294967295u, _wgslsmith_div_u32(var_1.c.x, 0u), func_1().c.x, _wgslsmith_mult_u32(~1u, ~(~var_0.d.x))), ~vec2<i32>(~2147483647i | _wgslsmith_div_i32(var_1.b.x, var_4.b.x), _wgslsmith_mult_i32(-74429i, _wgslsmith_mult_i32(var_1.b.x, 0i))), ~(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_4.d.x, 33415u, 4294967295u), vec3<u32>(1u, var_4.c.x, var_4.d.x)), firstLeadingBit(var_1.d.x), _wgslsmith_mult_u32(var_0.c.x, var_4.d.x), var_0.d.x & var_4.c.x) | var_4.c));
}

