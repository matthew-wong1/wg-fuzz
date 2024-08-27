struct Struct_1 {
    a: bool,
    b: bool,
    c: vec2<i32>,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: Struct_1,
    d: vec2<bool>,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: vec3<u32>,
    d: vec4<i32>,
    e: vec4<f32>,
}

struct Struct_5 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 29> = array<Struct_3, 29>(Struct_3(85715i, 1u, vec3<u32>(29525u, 1u, 89079u), Struct_1(true, true, vec2<i32>(0i, 16402i)), Struct_2(false, 0i, Struct_1(true, true, vec2<i32>(-1i, -15175i)), vec2<bool>(true, true))), Struct_3(0i, 10877u, vec3<u32>(4294967295u, 4294967295u, 1u), Struct_1(true, true, vec2<i32>(22461i, 2147483647i)), Struct_2(false, 1i, Struct_1(false, true, vec2<i32>(2147483647i, -1i)), vec2<bool>(true, false))), Struct_3(-26290i, 44797u, vec3<u32>(61862u, 24717u, 55271u), Struct_1(true, false, vec2<i32>(i32(-2147483648), i32(-2147483648))), Struct_2(true, -14202i, Struct_1(false, false, vec2<i32>(0i, 33694i)), vec2<bool>(true, false))), Struct_3(1i, 60834u, vec3<u32>(18216u, 1u, 1u), Struct_1(true, true, vec2<i32>(-10021i, i32(-2147483648))), Struct_2(false, -20156i, Struct_1(true, false, vec2<i32>(-11866i, -25401i)), vec2<bool>(true, false))), Struct_3(1i, 4294967295u, vec3<u32>(0u, 1u, 4294967295u), Struct_1(false, true, vec2<i32>(44326i, 1i)), Struct_2(true, 1596i, Struct_1(false, true, vec2<i32>(0i, -32693i)), vec2<bool>(false, false))), Struct_3(32330i, 23470u, vec3<u32>(14816u, 9739u, 39097u), Struct_1(true, false, vec2<i32>(1i, -25759i)), Struct_2(true, -1i, Struct_1(true, true, vec2<i32>(11271i, -1i)), vec2<bool>(true, true))), Struct_3(2147483647i, 0u, vec3<u32>(4294967295u, 1u, 1u), Struct_1(true, true, vec2<i32>(-20397i, i32(-2147483648))), Struct_2(false, i32(-2147483648), Struct_1(false, false, vec2<i32>(-2442i, -1i)), vec2<bool>(false, false))), Struct_3(-16539i, 50683u, vec3<u32>(36887u, 1u, 0u), Struct_1(true, true, vec2<i32>(1i, 36796i)), Struct_2(true, -912i, Struct_1(false, true, vec2<i32>(-16715i, -39388i)), vec2<bool>(true, false))), Struct_3(1i, 35285u, vec3<u32>(0u, 1u, 71763u), Struct_1(true, false, vec2<i32>(23560i, -35393i)), Struct_2(true, 0i, Struct_1(true, true, vec2<i32>(i32(-2147483648), 12067i)), vec2<bool>(false, false))), Struct_3(2147483647i, 44472u, vec3<u32>(92807u, 4294967295u, 62435u), Struct_1(false, false, vec2<i32>(-47067i, -1i)), Struct_2(true, 2147483647i, Struct_1(true, false, vec2<i32>(-57454i, -1i)), vec2<bool>(true, true))), Struct_3(i32(-2147483648), 0u, vec3<u32>(0u, 30322u, 29015u), Struct_1(true, true, vec2<i32>(1i, 2147483647i)), Struct_2(true, 23708i, Struct_1(true, false, vec2<i32>(8484i, -27352i)), vec2<bool>(true, true))), Struct_3(-44280i, 4294967295u, vec3<u32>(4294967295u, 0u, 27567u), Struct_1(true, true, vec2<i32>(i32(-2147483648), 0i)), Struct_2(true, -4970i, Struct_1(false, true, vec2<i32>(46579i, -5572i)), vec2<bool>(true, false))), Struct_3(-1i, 46499u, vec3<u32>(0u, 14576u, 0u), Struct_1(false, false, vec2<i32>(-9864i, i32(-2147483648))), Struct_2(false, i32(-2147483648), Struct_1(false, true, vec2<i32>(-89i, i32(-2147483648))), vec2<bool>(true, false))), Struct_3(i32(-2147483648), 56560u, vec3<u32>(4294967295u, 23888u, 4294967295u), Struct_1(true, false, vec2<i32>(i32(-2147483648), 2147483647i)), Struct_2(true, 28973i, Struct_1(false, false, vec2<i32>(i32(-2147483648), 42613i)), vec2<bool>(true, false))), Struct_3(20080i, 62822u, vec3<u32>(0u, 0u, 1u), Struct_1(false, false, vec2<i32>(16099i, 1i)), Struct_2(false, -1i, Struct_1(true, false, vec2<i32>(i32(-2147483648), 2147483647i)), vec2<bool>(true, true))), Struct_3(1i, 1u, vec3<u32>(26535u, 60269u, 0u), Struct_1(true, true, vec2<i32>(-71670i, -1i)), Struct_2(true, 1i, Struct_1(false, false, vec2<i32>(1i, -19853i)), vec2<bool>(false, true))), Struct_3(-17627i, 1u, vec3<u32>(4294967295u, 17917u, 28318u), Struct_1(false, true, vec2<i32>(29979i, 1i)), Struct_2(false, i32(-2147483648), Struct_1(false, false, vec2<i32>(2147483647i, -8955i)), vec2<bool>(true, true))), Struct_3(i32(-2147483648), 22943u, vec3<u32>(22135u, 1u, 4294967295u), Struct_1(false, false, vec2<i32>(0i, 17068i)), Struct_2(true, 2147483647i, Struct_1(true, false, vec2<i32>(-1i, -22674i)), vec2<bool>(true, false))), Struct_3(-46350i, 10035u, vec3<u32>(4294967295u, 32696u, 1u), Struct_1(false, true, vec2<i32>(0i, 47138i)), Struct_2(true, 0i, Struct_1(true, true, vec2<i32>(1i, 3952i)), vec2<bool>(false, true))), Struct_3(0i, 42867u, vec3<u32>(1u, 70088u, 15496u), Struct_1(false, false, vec2<i32>(-1i, 1i)), Struct_2(false, 31786i, Struct_1(true, false, vec2<i32>(45001i, 1i)), vec2<bool>(true, true))), Struct_3(11949i, 51549u, vec3<u32>(96352u, 0u, 49218u), Struct_1(false, false, vec2<i32>(-33097i, 54906i)), Struct_2(false, 0i, Struct_1(true, true, vec2<i32>(-707i, 2147483647i)), vec2<bool>(true, false))), Struct_3(2147483647i, 41253u, vec3<u32>(0u, 21883u, 0u), Struct_1(true, true, vec2<i32>(39973i, 34469i)), Struct_2(false, -48391i, Struct_1(true, true, vec2<i32>(-1i, 25243i)), vec2<bool>(true, true))), Struct_3(1i, 1u, vec3<u32>(12162u, 1u, 1u), Struct_1(false, true, vec2<i32>(-1i, -970i)), Struct_2(true, 2147483647i, Struct_1(false, true, vec2<i32>(-53968i, 2147483647i)), vec2<bool>(false, true))), Struct_3(2147483647i, 20941u, vec3<u32>(4294967295u, 0u, 74864u), Struct_1(true, false, vec2<i32>(7857i, 47312i)), Struct_2(false, 24447i, Struct_1(false, false, vec2<i32>(-1i, 33702i)), vec2<bool>(false, false))), Struct_3(-31721i, 1300u, vec3<u32>(19094u, 20499u, 1u), Struct_1(true, true, vec2<i32>(1i, -24401i)), Struct_2(true, i32(-2147483648), Struct_1(false, false, vec2<i32>(i32(-2147483648), -15448i)), vec2<bool>(false, false))), Struct_3(-2561i, 4294967295u, vec3<u32>(4294967295u, 1u, 4294967295u), Struct_1(false, false, vec2<i32>(12650i, 2147483647i)), Struct_2(true, 1i, Struct_1(true, true, vec2<i32>(-1i, 2147483647i)), vec2<bool>(true, true))), Struct_3(i32(-2147483648), 9393u, vec3<u32>(60503u, 4294967295u, 4294967295u), Struct_1(false, false, vec2<i32>(0i, 25037i)), Struct_2(true, 0i, Struct_1(false, true, vec2<i32>(-1i, 1i)), vec2<bool>(true, false))), Struct_3(-1i, 0u, vec3<u32>(4294967295u, 22923u, 4294967295u), Struct_1(true, true, vec2<i32>(-34819i, 12335i)), Struct_2(false, 0i, Struct_1(false, true, vec2<i32>(-7104i, i32(-2147483648))), vec2<bool>(false, true))), Struct_3(-23963i, 1u, vec3<u32>(13301u, 7382u, 0u), Struct_1(true, true, vec2<i32>(-23117i, 1i)), Struct_2(true, 0i, Struct_1(false, true, vec2<i32>(2147483647i, 22420i)), vec2<bool>(true, true))));

var<private> global1: array<Struct_2, 25> = array<Struct_2, 25>(Struct_2(true, 0i, Struct_1(true, true, vec2<i32>(0i, -1i)), vec2<bool>(true, true)), Struct_2(false, -19193i, Struct_1(true, true, vec2<i32>(64418i, 26153i)), vec2<bool>(false, false)), Struct_2(true, 2147483647i, Struct_1(false, false, vec2<i32>(1i, -13604i)), vec2<bool>(true, true)), Struct_2(true, 16050i, Struct_1(true, true, vec2<i32>(1i, i32(-2147483648))), vec2<bool>(true, false)), Struct_2(true, -28351i, Struct_1(false, true, vec2<i32>(2147483647i, 22094i)), vec2<bool>(true, false)), Struct_2(false, 10831i, Struct_1(false, true, vec2<i32>(0i, -5027i)), vec2<bool>(false, false)), Struct_2(false, 0i, Struct_1(true, false, vec2<i32>(2147483647i, -16820i)), vec2<bool>(true, true)), Struct_2(false, 2147483647i, Struct_1(false, false, vec2<i32>(35375i, -39943i)), vec2<bool>(true, true)), Struct_2(true, 0i, Struct_1(false, false, vec2<i32>(1i, -49402i)), vec2<bool>(true, true)), Struct_2(false, 1i, Struct_1(false, false, vec2<i32>(0i, 21833i)), vec2<bool>(true, false)), Struct_2(false, -1i, Struct_1(true, true, vec2<i32>(1i, i32(-2147483648))), vec2<bool>(false, true)), Struct_2(false, 2147483647i, Struct_1(true, true, vec2<i32>(2710i, -46809i)), vec2<bool>(false, false)), Struct_2(true, -1i, Struct_1(true, false, vec2<i32>(-25346i, -1i)), vec2<bool>(false, false)), Struct_2(true, 47007i, Struct_1(false, false, vec2<i32>(0i, 0i)), vec2<bool>(false, true)), Struct_2(false, 2147483647i, Struct_1(true, false, vec2<i32>(i32(-2147483648), 0i)), vec2<bool>(false, false)), Struct_2(false, -22146i, Struct_1(false, false, vec2<i32>(2147483647i, -26896i)), vec2<bool>(true, false)), Struct_2(true, 0i, Struct_1(true, false, vec2<i32>(2147483647i, 38758i)), vec2<bool>(false, true)), Struct_2(true, 1i, Struct_1(false, false, vec2<i32>(2147483647i, 25156i)), vec2<bool>(true, true)), Struct_2(true, i32(-2147483648), Struct_1(false, false, vec2<i32>(-9933i, 7711i)), vec2<bool>(false, false)), Struct_2(true, 1i, Struct_1(false, false, vec2<i32>(-33207i, -35475i)), vec2<bool>(false, false)), Struct_2(true, -53099i, Struct_1(true, true, vec2<i32>(2147483647i, 0i)), vec2<bool>(false, true)), Struct_2(false, -16799i, Struct_1(true, true, vec2<i32>(i32(-2147483648), -17695i)), vec2<bool>(true, false)), Struct_2(true, -25419i, Struct_1(true, false, vec2<i32>(-110i, -1i)), vec2<bool>(true, false)), Struct_2(false, -41550i, Struct_1(true, true, vec2<i32>(-50440i, i32(-2147483648))), vec2<bool>(false, true)), Struct_2(false, -1i, Struct_1(false, true, vec2<i32>(12870i, 27697i)), vec2<bool>(true, false)));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<bool>, arg_1: f32) -> vec4<bool> {
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.b, abs(u_input.d), ~(~u_input.b)), 25u)];
    let var_1 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1207f, -576f), vec2<f32>(132f, arg_1))), vec2<f32>(_wgslsmith_f_op_f32(-arg_1), -1491f)))))));
    var var_2 = Struct_1(any(vec4<bool>(!var_0.d.x, var_0.a, select(any(vec3<bool>(var_0.c.b, var_0.c.b, var_0.c.a)), false, false), !select(true, arg_0.x, arg_0.x))), all(!(!vec2<bool>(arg_0.x, false))), ~(vec2<i32>(var_0.c.c.x, u_input.a.x >> (1u % 32u)) ^ ~_wgslsmith_sub_vec2_i32(vec2<i32>(19535i, var_0.b), vec2<i32>(0i, var_0.b))));
    var var_3 = ~_wgslsmith_mult_vec2_i32(select(select(_wgslsmith_sub_vec2_i32(var_0.c.c, vec2<i32>(u_input.a.x, -33410i)), vec2<i32>(var_0.b, 60971i), select(var_2.b, true, var_0.d.x)), u_input.a.yy, false), -_wgslsmith_sub_vec2_i32(vec2<i32>(var_0.c.c.x, 2147483647i), vec2<i32>(-545i, 52343i)) ^ ~vec2<i32>(var_0.c.c.x, -2147483647i));
    var var_4 = _wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(min(-1378f, _wgslsmith_f_op_f32(-var_1.x))));
    return select(select(vec4<bool>(arg_0.x, (var_0.c.c.x <= 1i) == true, var_2.a, all(!vec4<bool>(var_2.b, false, true, var_0.d.x))), vec4<bool>(firstLeadingBit(-6899i) < var_3.x, arg_0.x, true, var_2.a), true), !(!select(!vec4<bool>(true, var_0.a, true, false), !vec4<bool>(true, true, var_0.c.b, var_2.b), var_3.x != var_2.c.x)), true);
}

fn func_2() -> f32 {
    let var_0 = -reverseBits(-_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, 0i), vec3<i32>(2147483647i, 0i, u_input.a.x)) << ((~vec3<u32>(u_input.d, u_input.b, u_input.c.x) >> (~vec3<u32>(u_input.d, u_input.c.x, 0u) % vec3<u32>(32u))) % vec3<u32>(32u)));
    var var_1 = ~vec2<i32>(-(~40967i), abs(-1i ^ var_0.x) ^ abs(var_0.x));
    let var_2 = true;
    let var_3 = Struct_2(false, min(firstLeadingBit(-1i), _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_add_i32(var_0.x, 17813i), 1i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 46021i, -48563i, var_1.x), vec4<i32>(u_input.a.x, -1i, var_1.x, 1i))), ~vec3<i32>(var_1.x, 37323i, var_0.x))), Struct_1(var_2, select(!(!var_2), all(func_3(vec2<bool>(false, var_2), -1053f)), true), vec2<i32>(-1i, countOneBits(-1i))), select(vec2<bool>(any(func_3(vec2<bool>(true, false), -1486f).ww), var_2), vec2<bool>(var_2, false), !(!(!vec2<bool>(var_2, var_2)))));
    let var_4 = var_3.c;
    return _wgslsmith_f_op_f32(-596f + _wgslsmith_f_op_f32(sign(-833f)));
}

fn func_1(arg_0: Struct_3) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-295f, -122f, 1322f)))) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(447f, -451f, -237f), vec3<f32>(570f, -250f, -871f))))) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(753f, _wgslsmith_f_op_f32(-808f - 507f), -383f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(935f, -1332f, -733f))), !all(vec2<bool>(true, arg_0.d.a))))) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_2())))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(485f, _wgslsmith_f_op_f32(floor(1000f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-891f, -1179f))) - _wgslsmith_f_op_f32(select(433f, _wgslsmith_f_op_f32(f32(-1f) * -1575f), !arg_0.e.a)))));
    var var_1 = !arg_0.e.d;
    var var_2 = max(4294967295u, 4294967295u | u_input.d) << (_wgslsmith_div_u32(arg_0.c.x, 0u) % 32u);
    let var_3 = u_input.c;
    var var_4 = Struct_3(-98i, 73035u, arg_0.c, arg_0.e.c, Struct_2(any(select(vec4<bool>(arg_0.d.b, arg_0.e.c.a, arg_0.e.a, arg_0.d.b), !vec4<bool>(var_1.x, var_1.x, var_1.x, true), var_1.x)), u_input.a.x, arg_0.e.c, !func_3(select(vec2<bool>(var_1.x, false), vec2<bool>(var_1.x, var_1.x), vec2<bool>(true, false)), 998f).yw));
    return var_4.e.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(global0[_wgslsmith_index_u32(u_input.d, 29u)]);
    var var_1 = Struct_4(u_input.a.x, Struct_2(func_1(Struct_3(-1i, 1876u, vec3<u32>(56160u, u_input.c.x, 4294967295u), Struct_1(var_0.a, false, vec2<i32>(u_input.a.x, -41556i)), Struct_2(var_0.a, u_input.a.x, Struct_1(false, var_0.b, u_input.a.zz), vec2<bool>(var_0.b, var_0.b)))).a | true, ~2147483647i, Struct_1(any(select(vec4<bool>(true, var_0.b, var_0.a, var_0.a), vec4<bool>(var_0.a, var_0.a, var_0.b, var_0.b), var_0.a)), func_3(!vec2<bool>(false, var_0.b), _wgslsmith_div_f32(468f, -1313f)).x, vec2<i32>(u_input.a.x ^ -2147483647i, firstLeadingBit(1i))), vec2<bool>(var_0.a, true)), select(~firstLeadingBit(vec3<u32>(u_input.d, 22369u, 25089u)), vec3<u32>(~53129u, 1u, ~1u), select(select(vec3<bool>(var_0.b, false, var_0.b), vec3<bool>(var_0.a, true, true), var_0.a), select(vec3<bool>(var_0.b, var_0.b, false), vec3<bool>(true, var_0.b, var_0.b), false), false)) ^ vec3<u32>(abs(1u), ~(113642u ^ u_input.c.x), 0u), ~(~firstTrailingBit(vec4<i32>(u_input.a.x, u_input.a.x, var_0.c.x, -38485i))) | (vec4<i32>(52871i, _wgslsmith_mod_i32(-5628i, var_0.c.x), u_input.a.x, u_input.a.x) & vec4<i32>(-2147483647i, 28941i, _wgslsmith_clamp_i32(var_0.c.x, u_input.a.x, var_0.c.x), -u_input.a.x)), vec4<f32>(-537f, _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(floor(-493f))), 1092f, 1000f));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(0i, select(_wgslsmith_clamp_i32(max(31700i, u_input.a.x), abs(var_0.c.x), -2147483647i ^ u_input.a.x), max(1i, 1i), func_1(Struct_3(var_0.c.x, 49390u, vec3<u32>(var_1.c.x, u_input.d, u_input.c.x), var_1.b.c, Struct_2(var_0.b, var_1.a, Struct_1(var_0.b, var_1.b.d.x, var_1.b.c.c), vec2<bool>(false, true)))).a), _wgslsmith_clamp_i32(firstTrailingBit(var_0.c.x), u_input.a.x, ~u_input.a.x) | 1i));
}

