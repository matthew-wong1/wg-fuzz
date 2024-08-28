struct Struct_1 {
    a: vec4<i32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 32>;

var<private> global1: array<Struct_2, 30> = array<Struct_2, 30>(Struct_2(vec3<u32>(4294967295u, 34285u, 51320u), Struct_1(vec4<i32>(i32(-2147483648), 18564i, 1i, -16045i), vec4<f32>(278f, -1251f, 485f, -165f))), Struct_2(vec3<u32>(44062u, 25573u, 4294967295u), Struct_1(vec4<i32>(2147483647i, 59032i, 0i, 0i), vec4<f32>(-572f, -432f, 851f, 1912f))), Struct_2(vec3<u32>(27113u, 54317u, 128718u), Struct_1(vec4<i32>(14107i, 30072i, 20063i, 9035i), vec4<f32>(1193f, 206f, -1138f, -340f))), Struct_2(vec3<u32>(0u, 13596u, 74855u), Struct_1(vec4<i32>(3782i, i32(-2147483648), 1i, i32(-2147483648)), vec4<f32>(1299f, -1686f, 1674f, -803f))), Struct_2(vec3<u32>(65825u, 0u, 1u), Struct_1(vec4<i32>(-14148i, -1i, 0i, i32(-2147483648)), vec4<f32>(-1000f, 629f, -128f, -214f))), Struct_2(vec3<u32>(103691u, 38702u, 59720u), Struct_1(vec4<i32>(1i, 0i, 0i, 2147483647i), vec4<f32>(510f, -109f, 828f, 228f))), Struct_2(vec3<u32>(199u, 1u, 4294967295u), Struct_1(vec4<i32>(1i, -90126i, -30792i, 0i), vec4<f32>(-1339f, 201f, 529f, 445f))), Struct_2(vec3<u32>(18569u, 36424u, 35250u), Struct_1(vec4<i32>(1883i, i32(-2147483648), -10172i, i32(-2147483648)), vec4<f32>(410f, 109f, -1000f, 509f))), Struct_2(vec3<u32>(72763u, 4294967295u, 0u), Struct_1(vec4<i32>(1i, 0i, i32(-2147483648), 7854i), vec4<f32>(-125f, 2193f, -101f, 1000f))), Struct_2(vec3<u32>(1u, 0u, 62472u), Struct_1(vec4<i32>(-1i, -54231i, i32(-2147483648), 26107i), vec4<f32>(748f, 722f, 597f, 1079f))), Struct_2(vec3<u32>(1u, 4294967295u, 1u), Struct_1(vec4<i32>(-1i, 1i, i32(-2147483648), -1i), vec4<f32>(-1248f, 1000f, 1029f, -1670f))), Struct_2(vec3<u32>(29255u, 23995u, 13248u), Struct_1(vec4<i32>(3150i, i32(-2147483648), i32(-2147483648), -58864i), vec4<f32>(1000f, -360f, 742f, -1720f))), Struct_2(vec3<u32>(59113u, 12118u, 0u), Struct_1(vec4<i32>(-48999i, i32(-2147483648), 1i, -25693i), vec4<f32>(924f, -398f, -1348f, -307f))), Struct_2(vec3<u32>(0u, 26806u, 21056u), Struct_1(vec4<i32>(0i, 29501i, 0i, 1i), vec4<f32>(-1859f, -1000f, 1190f, 212f))), Struct_2(vec3<u32>(4294967295u, 0u, 20152u), Struct_1(vec4<i32>(22666i, i32(-2147483648), 0i, 9342i), vec4<f32>(-1757f, 1349f, 707f, -2100f))), Struct_2(vec3<u32>(1u, 26264u, 52209u), Struct_1(vec4<i32>(i32(-2147483648), -69781i, 0i, -28951i), vec4<f32>(-192f, -228f, 936f, 816f))), Struct_2(vec3<u32>(17679u, 1u, 26371u), Struct_1(vec4<i32>(0i, 19876i, 47677i, i32(-2147483648)), vec4<f32>(788f, -556f, 832f, 852f))), Struct_2(vec3<u32>(40752u, 7676u, 0u), Struct_1(vec4<i32>(-3989i, 47872i, -43153i, 2147483647i), vec4<f32>(318f, 683f, -1423f, -1366f))), Struct_2(vec3<u32>(52u, 0u, 4023u), Struct_1(vec4<i32>(2147483647i, 2147483647i, -594i, 2147483647i), vec4<f32>(-903f, -340f, -1176f, -525f))), Struct_2(vec3<u32>(1u, 4294967295u, 1u), Struct_1(vec4<i32>(33070i, 39118i, 2501i, 2147483647i), vec4<f32>(297f, -723f, -1453f, 1316f))), Struct_2(vec3<u32>(17277u, 18055u, 1u), Struct_1(vec4<i32>(i32(-2147483648), 63777i, -40065i, 2147483647i), vec4<f32>(282f, 341f, 745f, 621f))), Struct_2(vec3<u32>(69373u, 1338u, 4294967295u), Struct_1(vec4<i32>(52862i, 2147483647i, -1i, -4424i), vec4<f32>(-1773f, 148f, 723f, 480f))), Struct_2(vec3<u32>(4294967295u, 76958u, 19422u), Struct_1(vec4<i32>(13447i, 1i, 2147483647i, i32(-2147483648)), vec4<f32>(-675f, -500f, 1389f, -187f))), Struct_2(vec3<u32>(0u, 77723u, 4294967295u), Struct_1(vec4<i32>(37241i, 1i, -40465i, -11847i), vec4<f32>(1204f, -731f, -471f, 538f))), Struct_2(vec3<u32>(0u, 0u, 671u), Struct_1(vec4<i32>(-644i, -25481i, 2147483647i, -1i), vec4<f32>(-621f, 460f, -663f, -924f))), Struct_2(vec3<u32>(0u, 0u, 4294967295u), Struct_1(vec4<i32>(0i, 20039i, 2147483647i, 7687i), vec4<f32>(174f, 390f, -2452f, 1362f))), Struct_2(vec3<u32>(0u, 16369u, 0u), Struct_1(vec4<i32>(-1i, 10980i, i32(-2147483648), 7945i), vec4<f32>(-1352f, 1000f, -177f, -959f))), Struct_2(vec3<u32>(0u, 102956u, 57139u), Struct_1(vec4<i32>(-36328i, -3447i, 43821i, 21513i), vec4<f32>(-613f, -166f, 240f, 493f))), Struct_2(vec3<u32>(33901u, 75350u, 3900u), Struct_1(vec4<i32>(0i, -1i, 0i, -51476i), vec4<f32>(-153f, -1435f, 103f, -281f))), Struct_2(vec3<u32>(54885u, 35643u, 18916u), Struct_1(vec4<i32>(2147483647i, -1i, i32(-2147483648), 2147483647i), vec4<f32>(-133f, -1000f, -532f, -819f))));

var<private> global2: array<vec3<f32>, 26>;

var<private> global3: vec3<f32>;

var<private> global4: Struct_2 = Struct_2(vec3<u32>(4294967295u, 22493u, 1u), Struct_1(vec4<i32>(-71477i, 0i, i32(-2147483648), 1i), vec4<f32>(-1324f, -1425f, -1634f, -424f)));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<u32>) -> bool {
    let var_0 = global4.b;
    var var_1 = global1[_wgslsmith_index_u32(36154u, 30u)];
    let var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1000f, 212f), _wgslsmith_f_op_f32(-497f + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(var_1.b.b.x, _wgslsmith_f_op_f32(var_0.b.x + global3.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-769f + -548f), _wgslsmith_f_op_f32(select(-1641f, -289f, false))))))));
    let var_3 = u_input.b & -_wgslsmith_sub_vec4_i32((vec4<i32>(var_1.b.a.x, 2147483647i, -2147483647i, 2147483647i) << (arg_0 % vec4<u32>(32u))) << (_wgslsmith_add_vec4_u32(vec4<u32>(global4.a.x, arg_0.x, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, 6804u, var_1.a.x, 0u)) % vec4<u32>(32u)), reverseBits(u_input.b));
    var var_4 = vec3<i32>(select(_wgslsmith_mod_i32(i32(-1i) * -35151i, global4.b.a.x), var_0.a.x, all(vec2<bool>(true, true))), global4.b.a.x, _wgslsmith_add_i32(firstTrailingBit(-var_0.a.x), ~(-2147483647i)));
    return all(select(vec2<bool>(true, true), vec2<bool>(_wgslsmith_f_op_f32(-global4.b.b.x) > var_1.b.b.x, true), vec2<bool>(true, _wgslsmith_mult_u32(global4.a.x, 4294967295u) < 34274u)));
}

fn func_2(arg_0: u32) -> f32 {
    let var_0 = all(!select(vec3<bool>(false, true, func_3(vec4<u32>(arg_0, arg_0, global4.a.x, global4.a.x))), vec3<bool>(true, true, func_3(vec4<u32>(u_input.a.x, global4.a.x, u_input.a.x, arg_0))), vec3<bool>(true, select(true, false, false), true)));
    var var_1 = vec3<bool>(!(!(!var_0)), !(true | any(vec3<bool>(var_0, var_0, true))) && var_0, var_0 & true);
    var_1 = select(!vec3<bool>(var_1.x, true, all(select(var_1.xz, var_1.zy, true))), !(!select(select(vec3<bool>(var_1.x, true, false), vec3<bool>(var_1.x, true, var_0), var_0), !vec3<bool>(false, var_0, var_0), arg_0 > 4294967295u)), select(1i != u_input.b.x, all(select(vec4<bool>(false, var_0, true, var_0), vec4<bool>(false, var_0, var_0, var_0), false)), (false & var_1.x) & var_0) && true);
    let var_2 = vec2<i32>(abs(max(-45113i, ~0i)), u_input.b.x);
    var var_3 = select(var_1.zz, vec2<bool>(var_0, firstTrailingBit(abs(arg_0)) == global4.a.x), var_1.x);
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.x), 452f));
}

fn func_1(arg_0: vec2<f32>, arg_1: u32) -> bool {
    var var_0 = 1850f;
    let var_1 = Struct_1(u_input.b, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -229f), global4.b.b.x, _wgslsmith_f_op_f32(773f * global3.x), global4.b.b.x) + vec4<f32>(-1707f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0.x)) - global4.b.b.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(2395f)), -2059f, true)), _wgslsmith_f_op_f32(func_2(arg_1)))));
    let var_2 = func_3(vec4<u32>(arg_1, u_input.a.x, _wgslsmith_div_u32(1u, abs(3833u)), u_input.a.x));
    global0 = array<vec4<f32>, 32>();
    let var_3 = ~((global4.b.a.yy & -vec2<i32>(var_1.a.x, u_input.b.x)) << (~reverseBits(global4.a.yx) % vec2<u32>(32u)));
    return !func_3(select(~vec4<u32>(1u, u_input.a.x, global4.a.x, 50346u), select(vec4<u32>(4294967295u, 17910u, 35453u, 1617u), vec4<u32>(80269u, arg_1, 4294967295u, 25582u), true), select(vec4<bool>(var_2, var_2, var_2, var_2), vec4<bool>(var_2, true, true, var_2), false)) << (select(vec4<u32>(global4.a.x, 4294967295u, 71514u, 85760u) << (vec4<u32>(45501u, global4.a.x, u_input.a.x, 42537u) % vec4<u32>(32u)), select(vec4<u32>(arg_1, 4294967295u, 45296u, u_input.a.x), vec4<u32>(1u, u_input.a.x, global4.a.x, arg_1), var_2), false) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(u_input.a.x, 30u)];
    var var_1 = 47670u;
    let var_2 = _wgslsmith_f_op_f32(-global4.b.b.x);
    let var_3 = all(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(var_0.b.b.x < -219f, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false)))), select(vec3<bool>(any(vec2<bool>(false, true)), false, true), vec3<bool>(func_1(global3.yy, var_0.a.x), any(vec3<bool>(false, false, false)), true), false)));
    let var_4 = global4.b.a;
    let var_5 = ~(~firstLeadingBit(u_input.a.x)) == 0u;
    var var_6 = vec3<bool>(var_3, false, var_3);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(0u, u_input.a.x << (1u % 32u)), ~_wgslsmith_sub_vec4_u32(vec4<u32>(63569u, global4.a.x, 19616u, 37465u), firstLeadingBit(select(vec4<u32>(u_input.a.x, var_0.a.x, global4.a.x, u_input.a.x), vec4<u32>(u_input.a.x, global4.a.x, 47625u, var_0.a.x), vec4<bool>(var_5, false, false, var_5)))), global4.a, vec3<i32>(reverseBits(var_0.b.a.x), 2147483647i | -global4.b.a.x, ~(min(u_input.b.x, 0i) & reverseBits(u_input.b.x))));
}

