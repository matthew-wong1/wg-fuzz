struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: vec4<i32>,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: vec4<i32>,
    c: vec2<bool>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 19> = array<i32, 19>(-3125i, 31713i, -30670i, 1818i, 1i, -61379i, 7349i, -30127i, 8240i, -1i, -7091i, i32(-2147483648), 9640i, -27104i, 9201i, -121362i, 14891i, 1i, -1i);

var<private> global1: array<Struct_4, 3>;

var<private> global2: i32;

var<private> global3: array<Struct_3, 28> = array<Struct_3, 28>(Struct_3(2147483647i, Struct_1(-752f, vec4<bool>(false, true, true, false), vec4<i32>(0i, 0i, 1i, 2147483647i), -44770i, 1045f)), Struct_3(0i, Struct_1(1450f, vec4<bool>(false, false, false, false), vec4<i32>(-1i, 1i, -8616i, i32(-2147483648)), -1i, -1080f)), Struct_3(2147483647i, Struct_1(987f, vec4<bool>(true, true, false, true), vec4<i32>(-10919i, 0i, 2147483647i, -42047i), i32(-2147483648), 834f)), Struct_3(9198i, Struct_1(-184f, vec4<bool>(true, true, true, true), vec4<i32>(0i, i32(-2147483648), 1i, -61971i), 0i, -1304f)), Struct_3(1i, Struct_1(1824f, vec4<bool>(true, false, true, true), vec4<i32>(1i, i32(-2147483648), -43854i, -19594i), -1i, 1129f)), Struct_3(1i, Struct_1(312f, vec4<bool>(false, false, true, true), vec4<i32>(0i, 2147483647i, -8957i, 1i), 20882i, 366f)), Struct_3(-12964i, Struct_1(230f, vec4<bool>(true, false, false, false), vec4<i32>(466i, 69402i, 7506i, -1i), -25181i, -451f)), Struct_3(19155i, Struct_1(-122f, vec4<bool>(true, false, true, true), vec4<i32>(-9304i, -20792i, i32(-2147483648), 11052i), 2147483647i, 531f)), Struct_3(-6359i, Struct_1(1185f, vec4<bool>(true, false, true, true), vec4<i32>(43001i, 28142i, -59662i, 0i), 0i, -182f)), Struct_3(-1i, Struct_1(-698f, vec4<bool>(false, true, true, false), vec4<i32>(29318i, 1i, 15584i, -1i), 9323i, -1087f)), Struct_3(i32(-2147483648), Struct_1(-1325f, vec4<bool>(false, false, false, false), vec4<i32>(-15417i, i32(-2147483648), 20575i, 47568i), i32(-2147483648), -1773f)), Struct_3(i32(-2147483648), Struct_1(1576f, vec4<bool>(true, true, true, true), vec4<i32>(5167i, 0i, 8256i, i32(-2147483648)), 20278i, -783f)), Struct_3(2692i, Struct_1(1973f, vec4<bool>(false, true, true, true), vec4<i32>(-62469i, 0i, -20633i, 1i), -1i, -375f)), Struct_3(24213i, Struct_1(-524f, vec4<bool>(true, true, true, false), vec4<i32>(i32(-2147483648), -48438i, -1i, -1i), 0i, -381f)), Struct_3(2237i, Struct_1(1073f, vec4<bool>(true, false, false, false), vec4<i32>(i32(-2147483648), -7031i, 0i, -11953i), -48637i, 550f)), Struct_3(12710i, Struct_1(1316f, vec4<bool>(false, false, true, false), vec4<i32>(29822i, 1i, 22275i, 0i), -18060i, 1454f)), Struct_3(2147483647i, Struct_1(1283f, vec4<bool>(false, false, false, false), vec4<i32>(15900i, 1i, -20121i, 662i), -11264i, 976f)), Struct_3(-48660i, Struct_1(-400f, vec4<bool>(true, false, true, true), vec4<i32>(2147483647i, -7181i, -1i, i32(-2147483648)), i32(-2147483648), 943f)), Struct_3(-13057i, Struct_1(-1678f, vec4<bool>(true, true, false, true), vec4<i32>(1730i, 0i, 44715i, 940i), 2147483647i, -3177f)), Struct_3(2147483647i, Struct_1(580f, vec4<bool>(true, true, false, true), vec4<i32>(-50588i, 2147483647i, 575i, i32(-2147483648)), 37732i, -769f)), Struct_3(24486i, Struct_1(949f, vec4<bool>(true, false, true, false), vec4<i32>(2147483647i, -9591i, 62382i, 1i), i32(-2147483648), 1000f)), Struct_3(-15384i, Struct_1(1000f, vec4<bool>(false, false, false, true), vec4<i32>(-20641i, -21152i, 0i, -29436i), -19630i, 1980f)), Struct_3(-13925i, Struct_1(-589f, vec4<bool>(true, true, false, true), vec4<i32>(0i, -26983i, 46261i, -4632i), -13796i, -615f)), Struct_3(72209i, Struct_1(-300f, vec4<bool>(false, false, true, false), vec4<i32>(2147483647i, 7665i, -1i, 8442i), 0i, -627f)), Struct_3(-53581i, Struct_1(-1277f, vec4<bool>(false, false, false, true), vec4<i32>(-10654i, 1098i, 25250i, i32(-2147483648)), 5643i, -121f)), Struct_3(7566i, Struct_1(429f, vec4<bool>(false, true, true, false), vec4<i32>(-16484i, 2147483647i, 2124i, 40351i), 1i, -1609f)), Struct_3(1i, Struct_1(-387f, vec4<bool>(false, true, true, true), vec4<i32>(60303i, 13488i, i32(-2147483648), -33873i), -10480i, 320f)), Struct_3(-12837i, Struct_1(130f, vec4<bool>(true, true, false, true), vec4<i32>(34280i, -21710i, 24413i, 1i), -1i, 943f)));

var<private> global4: vec3<i32>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec4<u32>, arg_1: bool, arg_2: Struct_2, arg_3: vec3<bool>) -> i32 {
    global4 = vec3<i32>(-52724i, _wgslsmith_mod_i32(-12542i, global4.x) ^ global4.x, -58515i);
    var var_0 = arg_2;
    global3 = array<Struct_3, 28>();
    let var_1 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(-1000f, -609f, arg_2.a.e == arg_2.b.e)), _wgslsmith_f_op_f32(floor(arg_2.a.a)), -347f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.a.a + -577f), _wgslsmith_f_op_f32(-1000f - 1463f), arg_3.x))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -688f), _wgslsmith_f_op_f32(round(var_0.b.e)), _wgslsmith_div_f32(var_0.b.e, arg_2.b.a), _wgslsmith_f_op_f32(-var_0.a.e))))));
    return global4.x;
}

fn func_2(arg_0: u32, arg_1: f32) -> f32 {
    let var_0 = -(~_wgslsmith_sub_i32(18837i, func_3(_wgslsmith_div_vec4_u32(vec4<u32>(66475u, 547u, 4294967295u, u_input.b.x), vec4<u32>(6401u, 1u, arg_0, u_input.b.x)), false, Struct_2(Struct_1(arg_1, vec4<bool>(false, false, true, false), vec4<i32>(1i, 2147483647i, u_input.a.x, -2147483647i), -51976i, -1380f), Struct_1(-843f, vec4<bool>(true, false, false, false), vec4<i32>(u_input.a.x, -2147483647i, global0[_wgslsmith_index_u32(arg_0, 19u)], -2147483647i), global0[_wgslsmith_index_u32(u_input.b.x, 19u)], -940f)), vec3<bool>(false, true, true))));
    global2 = -(~global4.x);
    global1 = array<Struct_4, 3>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(arg_1 - -151f)) - arg_1)));
    var var_2 = all(select(vec4<bool>(all(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), false)), firstLeadingBit(u_input.b.x) >= 4294967295u, true, false), vec4<bool>(false, !any(vec4<bool>(false, false, false, true)), true, false), vec4<bool>(true, false, all(vec3<bool>(true, true, true)), true)));
    return 360f;
}

fn func_1(arg_0: vec2<f32>, arg_1: f32) -> vec4<i32> {
    let var_0 = u_input.b.x;
    var var_1 = -20400i & ~(~(abs(-1i) << (~var_0 % 32u)));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(trunc(arg_0.x)), select(select(vec4<bool>(true, true, false, true), select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), false), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, false, true, true)), select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true))), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), true), false), vec4<bool>(all(vec3<bool>(true, true, true)), any(vec3<bool>(false, true, false)) | any(vec3<bool>(true, false, true)), true, true)), abs(vec4<i32>(u_input.a.x | -global0[_wgslsmith_index_u32(1u, 19u)], global0[_wgslsmith_index_u32(1u, 19u)], i32(-1i) * -21237i, ~(-2147483647i))), -1i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(250f))) + _wgslsmith_f_op_f32(func_2(u_input.b.x, _wgslsmith_f_op_f32(sign(arg_1)))))));
    global0 = array<i32, 19>();
    let var_3 = Struct_1(1558f, select(vec4<bool>(select(false, true, var_2.b.x) != var_2.b.x, (var_2.d >= global0[_wgslsmith_index_u32(var_0, 19u)]) && select(var_2.b.x, var_2.b.x, false), any(vec2<bool>(true, true)), !all(var_2.b.xx)), !(!select(var_2.b, vec4<bool>(true, var_2.b.x, true, true), var_2.b)), !(!(!var_2.b))), vec4<i32>(_wgslsmith_div_i32(1i, min(var_2.c.x, global4.x)) & u_input.a.x, 1i, ~7718i, ~var_2.d), _wgslsmith_div_i32(-32282i, 1i), 1094f);
    return var_2.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-847f)))))), -817f);
    var var_1 = ~(-func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, 293f))), var_0.x));
    var_0 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, var_0.x) + vec2<f32>(591f, 800f)) - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-855f, var_0.x)))))))));
    global0 = array<i32, 19>();
    global3 = array<Struct_3, 28>();
    global0 = array<i32, 19>();
    var var_2 = select(vec3<bool>(!((u_input.b.x <= u_input.b.x) == select(true, false, true)), true, any(vec3<bool>(false, false, true))), select(vec3<bool>(true, true, true), select(!select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), false), select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), false), vec3<bool>(false, true, false), true), all(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false)))), vec3<bool>(all(vec4<bool>(false, true, true, false)) && true, false, false)), true);
    let x = u_input.a;
    s_output = StorageBuffer(~(~(firstTrailingBit(global4.zy) >> (_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, 17633u), u_input.b.zy) % vec2<u32>(32u)))), -vec3<i32>(_wgslsmith_clamp_i32(u_input.a.x, 0i, abs(global0[_wgslsmith_index_u32(u_input.b.x, 19u)])), global0[_wgslsmith_index_u32(u_input.b.x, 19u)], u_input.a.x), _wgslsmith_f_op_f32(-var_0.x));
}

