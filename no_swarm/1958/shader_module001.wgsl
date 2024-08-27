struct Struct_1 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: vec4<u32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 27> = array<Struct_3, 27>(Struct_3(Struct_2(vec2<i32>(1i, -69337i), Struct_1(vec2<u32>(16523u, 81191u), vec2<bool>(false, false), vec4<u32>(0u, 4294967295u, 36789u, 44002u), vec3<bool>(true, true, true)), vec2<i32>(-23756i, -7859i))), Struct_3(Struct_2(vec2<i32>(i32(-2147483648), 2147483647i), Struct_1(vec2<u32>(55275u, 4294967295u), vec2<bool>(true, true), vec4<u32>(0u, 40138u, 5565u, 0u), vec3<bool>(false, false, true)), vec2<i32>(i32(-2147483648), -28269i))), Struct_3(Struct_2(vec2<i32>(34605i, -41735i), Struct_1(vec2<u32>(1u, 4294967295u), vec2<bool>(false, true), vec4<u32>(15044u, 1u, 1u, 1116u), vec3<bool>(false, false, true)), vec2<i32>(22617i, -6808i))), Struct_3(Struct_2(vec2<i32>(-30549i, 0i), Struct_1(vec2<u32>(25225u, 0u), vec2<bool>(false, false), vec4<u32>(1u, 57796u, 4294967295u, 42634u), vec3<bool>(false, false, false)), vec2<i32>(-1i, 0i))), Struct_3(Struct_2(vec2<i32>(50832i, i32(-2147483648)), Struct_1(vec2<u32>(1u, 38901u), vec2<bool>(true, false), vec4<u32>(0u, 1u, 0u, 69487u), vec3<bool>(true, false, true)), vec2<i32>(i32(-2147483648), 1i))), Struct_3(Struct_2(vec2<i32>(0i, 1i), Struct_1(vec2<u32>(0u, 90441u), vec2<bool>(true, false), vec4<u32>(4294967295u, 4294967295u, 83135u, 0u), vec3<bool>(true, false, false)), vec2<i32>(-42356i, 0i))), Struct_3(Struct_2(vec2<i32>(15094i, -11819i), Struct_1(vec2<u32>(51927u, 0u), vec2<bool>(false, false), vec4<u32>(0u, 1674u, 4294967295u, 4294967295u), vec3<bool>(false, false, false)), vec2<i32>(-1i, -31123i))), Struct_3(Struct_2(vec2<i32>(i32(-2147483648), 27561i), Struct_1(vec2<u32>(3977u, 4294967295u), vec2<bool>(false, true), vec4<u32>(1u, 75914u, 17904u, 150810u), vec3<bool>(false, false, true)), vec2<i32>(1i, 263i))), Struct_3(Struct_2(vec2<i32>(-7806i, -1i), Struct_1(vec2<u32>(73355u, 1u), vec2<bool>(false, false), vec4<u32>(16604u, 0u, 1u, 36266u), vec3<bool>(true, true, true)), vec2<i32>(-7319i, -37552i))), Struct_3(Struct_2(vec2<i32>(-907i, 0i), Struct_1(vec2<u32>(29163u, 79007u), vec2<bool>(true, false), vec4<u32>(0u, 1u, 38003u, 3442u), vec3<bool>(true, true, true)), vec2<i32>(9745i, 60654i))), Struct_3(Struct_2(vec2<i32>(0i, -82236i), Struct_1(vec2<u32>(26233u, 44172u), vec2<bool>(true, false), vec4<u32>(1u, 4294967295u, 4294967295u, 1u), vec3<bool>(false, true, true)), vec2<i32>(-1i, i32(-2147483648)))), Struct_3(Struct_2(vec2<i32>(i32(-2147483648), i32(-2147483648)), Struct_1(vec2<u32>(4294967295u, 20865u), vec2<bool>(true, false), vec4<u32>(0u, 0u, 1u, 40810u), vec3<bool>(false, false, false)), vec2<i32>(2147483647i, 2147483647i))), Struct_3(Struct_2(vec2<i32>(-36356i, i32(-2147483648)), Struct_1(vec2<u32>(118470u, 30906u), vec2<bool>(true, true), vec4<u32>(1u, 158740u, 1u, 4294967295u), vec3<bool>(true, false, false)), vec2<i32>(0i, 1i))), Struct_3(Struct_2(vec2<i32>(16524i, -25928i), Struct_1(vec2<u32>(0u, 4294967295u), vec2<bool>(true, false), vec4<u32>(4294967295u, 1u, 65151u, 39855u), vec3<bool>(false, true, false)), vec2<i32>(-49004i, -40319i))), Struct_3(Struct_2(vec2<i32>(48924i, 4067i), Struct_1(vec2<u32>(1u, 8383u), vec2<bool>(false, false), vec4<u32>(0u, 0u, 0u, 35625u), vec3<bool>(false, true, true)), vec2<i32>(0i, -13378i))), Struct_3(Struct_2(vec2<i32>(22458i, 0i), Struct_1(vec2<u32>(0u, 4294967295u), vec2<bool>(false, false), vec4<u32>(10563u, 1u, 1u, 14899u), vec3<bool>(false, true, false)), vec2<i32>(1i, -7170i))), Struct_3(Struct_2(vec2<i32>(-7110i, -22719i), Struct_1(vec2<u32>(14447u, 1u), vec2<bool>(false, false), vec4<u32>(0u, 4294967295u, 2762u, 4294967295u), vec3<bool>(false, true, false)), vec2<i32>(0i, i32(-2147483648)))), Struct_3(Struct_2(vec2<i32>(i32(-2147483648), -1i), Struct_1(vec2<u32>(3116u, 0u), vec2<bool>(true, false), vec4<u32>(74307u, 4875u, 1u, 4294967295u), vec3<bool>(true, false, false)), vec2<i32>(2147483647i, -2713i))), Struct_3(Struct_2(vec2<i32>(34981i, 0i), Struct_1(vec2<u32>(14576u, 4294967295u), vec2<bool>(false, true), vec4<u32>(4294967295u, 19113u, 4294967295u, 49056u), vec3<bool>(false, true, true)), vec2<i32>(8979i, i32(-2147483648)))), Struct_3(Struct_2(vec2<i32>(-49717i, 0i), Struct_1(vec2<u32>(42052u, 1u), vec2<bool>(true, false), vec4<u32>(4294967295u, 17453u, 13803u, 0u), vec3<bool>(true, false, false)), vec2<i32>(45836i, -16801i))), Struct_3(Struct_2(vec2<i32>(18500i, 7665i), Struct_1(vec2<u32>(115038u, 34120u), vec2<bool>(false, true), vec4<u32>(1u, 4294967295u, 59268u, 4294967295u), vec3<bool>(true, false, true)), vec2<i32>(2147483647i, -12738i))), Struct_3(Struct_2(vec2<i32>(-18031i, -24266i), Struct_1(vec2<u32>(67582u, 19651u), vec2<bool>(false, false), vec4<u32>(6090u, 5719u, 0u, 1u), vec3<bool>(true, true, true)), vec2<i32>(28065i, -1i))), Struct_3(Struct_2(vec2<i32>(2147483647i, 1i), Struct_1(vec2<u32>(37556u, 394u), vec2<bool>(true, true), vec4<u32>(70942u, 50035u, 41393u, 30591u), vec3<bool>(false, false, false)), vec2<i32>(0i, -60275i))), Struct_3(Struct_2(vec2<i32>(55022i, 31010i), Struct_1(vec2<u32>(4294967295u, 21591u), vec2<bool>(false, true), vec4<u32>(0u, 1u, 4294967295u, 4294967295u), vec3<bool>(true, false, true)), vec2<i32>(-1i, -44981i))), Struct_3(Struct_2(vec2<i32>(1i, -20334i), Struct_1(vec2<u32>(70295u, 4294967295u), vec2<bool>(false, true), vec4<u32>(97740u, 4294967295u, 114766u, 49589u), vec3<bool>(false, false, false)), vec2<i32>(0i, -1i))), Struct_3(Struct_2(vec2<i32>(1i, 14516i), Struct_1(vec2<u32>(30555u, 4294967295u), vec2<bool>(true, true), vec4<u32>(54803u, 35786u, 53041u, 1u), vec3<bool>(true, false, true)), vec2<i32>(17165i, 35630i))), Struct_3(Struct_2(vec2<i32>(2147483647i, -1i), Struct_1(vec2<u32>(31665u, 0u), vec2<bool>(false, false), vec4<u32>(68574u, 6260u, 8249u, 0u), vec3<bool>(true, true, true)), vec2<i32>(1i, 1i))));

var<private> global1: array<Struct_3, 30> = array<Struct_3, 30>(Struct_3(Struct_2(vec2<i32>(-13217i, 1004i), Struct_1(vec2<u32>(0u, 4294967295u), vec2<bool>(false, true), vec4<u32>(1u, 4294967295u, 30428u, 0u), vec3<bool>(false, false, false)), vec2<i32>(-5645i, i32(-2147483648)))), Struct_3(Struct_2(vec2<i32>(2147483647i, 0i), Struct_1(vec2<u32>(23658u, 0u), vec2<bool>(true, true), vec4<u32>(47378u, 4294967295u, 50172u, 37931u), vec3<bool>(false, false, true)), vec2<i32>(-1i, i32(-2147483648)))), Struct_3(Struct_2(vec2<i32>(16014i, i32(-2147483648)), Struct_1(vec2<u32>(1u, 19420u), vec2<bool>(false, false), vec4<u32>(1u, 42815u, 48828u, 4294967295u), vec3<bool>(false, true, true)), vec2<i32>(-24342i, 0i))), Struct_3(Struct_2(vec2<i32>(2147483647i, -25731i), Struct_1(vec2<u32>(0u, 1u), vec2<bool>(true, true), vec4<u32>(4294967295u, 4294967295u, 86571u, 41603u), vec3<bool>(false, false, true)), vec2<i32>(35125i, 0i))), Struct_3(Struct_2(vec2<i32>(i32(-2147483648), 12395i), Struct_1(vec2<u32>(57045u, 26013u), vec2<bool>(true, false), vec4<u32>(4294967295u, 73194u, 50995u, 27959u), vec3<bool>(true, false, false)), vec2<i32>(23940i, 14182i))), Struct_3(Struct_2(vec2<i32>(-43325i, -3681i), Struct_1(vec2<u32>(83935u, 15766u), vec2<bool>(false, true), vec4<u32>(0u, 14738u, 770u, 0u), vec3<bool>(false, true, true)), vec2<i32>(2147483647i, -3329i))), Struct_3(Struct_2(vec2<i32>(-7293i, -1i), Struct_1(vec2<u32>(19230u, 8336u), vec2<bool>(true, true), vec4<u32>(43335u, 37825u, 1u, 4294967295u), vec3<bool>(true, true, true)), vec2<i32>(0i, -1i))), Struct_3(Struct_2(vec2<i32>(0i, 12000i), Struct_1(vec2<u32>(11652u, 4294967295u), vec2<bool>(true, false), vec4<u32>(0u, 4294967295u, 4294967295u, 31878u), vec3<bool>(true, true, false)), vec2<i32>(-7598i, i32(-2147483648)))), Struct_3(Struct_2(vec2<i32>(1i, 16623i), Struct_1(vec2<u32>(1u, 4294967295u), vec2<bool>(false, false), vec4<u32>(4294967295u, 28176u, 4294967295u, 15949u), vec3<bool>(false, true, false)), vec2<i32>(-1i, 22878i))), Struct_3(Struct_2(vec2<i32>(18660i, i32(-2147483648)), Struct_1(vec2<u32>(47438u, 75081u), vec2<bool>(true, false), vec4<u32>(11762u, 49675u, 0u, 0u), vec3<bool>(false, false, false)), vec2<i32>(-1i, 1366i))), Struct_3(Struct_2(vec2<i32>(24056i, -57714i), Struct_1(vec2<u32>(55918u, 34737u), vec2<bool>(false, true), vec4<u32>(1u, 35229u, 11520u, 3383u), vec3<bool>(true, true, true)), vec2<i32>(0i, 1i))), Struct_3(Struct_2(vec2<i32>(-33000i, 27583i), Struct_1(vec2<u32>(4294967295u, 0u), vec2<bool>(true, false), vec4<u32>(0u, 4757u, 6815u, 1u), vec3<bool>(true, true, false)), vec2<i32>(i32(-2147483648), 2147483647i))), Struct_3(Struct_2(vec2<i32>(32648i, 7603i), Struct_1(vec2<u32>(97221u, 100301u), vec2<bool>(false, false), vec4<u32>(30331u, 4294967295u, 1u, 66184u), vec3<bool>(true, false, true)), vec2<i32>(23069i, 11497i))), Struct_3(Struct_2(vec2<i32>(3506i, -19507i), Struct_1(vec2<u32>(4294967295u, 100337u), vec2<bool>(false, false), vec4<u32>(0u, 4294967295u, 4294967295u, 67249u), vec3<bool>(false, true, true)), vec2<i32>(1i, i32(-2147483648)))), Struct_3(Struct_2(vec2<i32>(1i, 1i), Struct_1(vec2<u32>(1u, 0u), vec2<bool>(false, false), vec4<u32>(31724u, 0u, 57148u, 1017u), vec3<bool>(true, false, false)), vec2<i32>(0i, 3691i))), Struct_3(Struct_2(vec2<i32>(i32(-2147483648), 2147483647i), Struct_1(vec2<u32>(4294967295u, 48236u), vec2<bool>(false, true), vec4<u32>(0u, 9320u, 13189u, 78446u), vec3<bool>(false, false, false)), vec2<i32>(-1i, -27885i))), Struct_3(Struct_2(vec2<i32>(0i, 25109i), Struct_1(vec2<u32>(0u, 0u), vec2<bool>(false, false), vec4<u32>(0u, 0u, 64254u, 24109u), vec3<bool>(true, false, false)), vec2<i32>(-9907i, -15937i))), Struct_3(Struct_2(vec2<i32>(3833i, 1i), Struct_1(vec2<u32>(8293u, 131347u), vec2<bool>(true, false), vec4<u32>(34384u, 1u, 0u, 0u), vec3<bool>(false, true, false)), vec2<i32>(-813i, -9i))), Struct_3(Struct_2(vec2<i32>(2147483647i, i32(-2147483648)), Struct_1(vec2<u32>(4294967295u, 0u), vec2<bool>(false, false), vec4<u32>(83680u, 13339u, 80827u, 29806u), vec3<bool>(true, true, false)), vec2<i32>(0i, 1i))), Struct_3(Struct_2(vec2<i32>(-57249i, -17031i), Struct_1(vec2<u32>(98732u, 89887u), vec2<bool>(false, false), vec4<u32>(0u, 1u, 4294967295u, 22187u), vec3<bool>(false, true, true)), vec2<i32>(1i, 0i))), Struct_3(Struct_2(vec2<i32>(i32(-2147483648), 1i), Struct_1(vec2<u32>(1u, 1u), vec2<bool>(false, true), vec4<u32>(4294967295u, 14082u, 1u, 45123u), vec3<bool>(false, false, true)), vec2<i32>(-25482i, 9902i))), Struct_3(Struct_2(vec2<i32>(i32(-2147483648), 21867i), Struct_1(vec2<u32>(0u, 105822u), vec2<bool>(true, true), vec4<u32>(48124u, 4294967295u, 4294967295u, 4294967295u), vec3<bool>(true, false, false)), vec2<i32>(-1i, -26544i))), Struct_3(Struct_2(vec2<i32>(-1i, 0i), Struct_1(vec2<u32>(17396u, 0u), vec2<bool>(false, false), vec4<u32>(15205u, 19348u, 1u, 1u), vec3<bool>(true, false, false)), vec2<i32>(-15523i, 9986i))), Struct_3(Struct_2(vec2<i32>(2147483647i, 47047i), Struct_1(vec2<u32>(18681u, 4294967295u), vec2<bool>(true, false), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 4294967295u), vec3<bool>(false, true, false)), vec2<i32>(-50725i, -11828i))), Struct_3(Struct_2(vec2<i32>(-2605i, -13905i), Struct_1(vec2<u32>(0u, 57u), vec2<bool>(true, false), vec4<u32>(4294967295u, 1u, 4294967295u, 4294967295u), vec3<bool>(false, false, true)), vec2<i32>(5644i, -7337i))), Struct_3(Struct_2(vec2<i32>(-1i, -1i), Struct_1(vec2<u32>(75305u, 1u), vec2<bool>(true, false), vec4<u32>(3799u, 41165u, 1u, 1u), vec3<bool>(true, false, false)), vec2<i32>(2147483647i, -29395i))), Struct_3(Struct_2(vec2<i32>(32615i, i32(-2147483648)), Struct_1(vec2<u32>(1u, 0u), vec2<bool>(true, true), vec4<u32>(4294967295u, 4294967295u, 1u, 47115u), vec3<bool>(false, false, true)), vec2<i32>(-1i, 27914i))), Struct_3(Struct_2(vec2<i32>(i32(-2147483648), 0i), Struct_1(vec2<u32>(39648u, 15868u), vec2<bool>(false, true), vec4<u32>(13722u, 0u, 40950u, 4294967295u), vec3<bool>(true, true, true)), vec2<i32>(-10435i, 4645i))), Struct_3(Struct_2(vec2<i32>(-1i, -3670i), Struct_1(vec2<u32>(38986u, 1u), vec2<bool>(true, true), vec4<u32>(0u, 1u, 36995u, 45345u), vec3<bool>(false, true, false)), vec2<i32>(1i, 1i))), Struct_3(Struct_2(vec2<i32>(-904i, 0i), Struct_1(vec2<u32>(18134u, 73883u), vec2<bool>(false, true), vec4<u32>(13845u, 1u, 4294967295u, 47234u), vec3<bool>(true, false, true)), vec2<i32>(2147483647i, -53866i))));

var<private> global2: array<vec4<i32>, 1>;

var<private> global3: bool;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: f32, arg_1: vec3<f32>) -> vec2<bool> {
    let var_0 = vec2<bool>(any(!vec4<bool>(true, all(vec3<bool>(false, false, false)), arg_0 > arg_1.x, true)), arg_1.x < arg_0);
    let var_1 = Struct_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(135f, 291f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0)) + arg_1.x)));
    let var_2 = !(true && any(vec4<bool>(var_0.x, true, true, false)));
    let var_3 = ~reverseBits(vec4<u32>(_wgslsmith_add_u32(1u, ~99324u), 4294967295u, _wgslsmith_mod_u32(reverseBits(55046u), _wgslsmith_sub_u32(26679u, 1030u)), _wgslsmith_mod_u32(1u, 10837u)));
    global0 = array<Struct_3, 27>();
    return select(vec2<bool>(var_0.x, !(!var_0.x)), vec2<bool>(true, false), true);
}

fn func_3(arg_0: Struct_1) -> u32 {
    let var_0 = _wgslsmith_mult_i32(u_input.b.x, u_input.a.x | reverseBits(~(u_input.b.x | -45184i)));
    global3 = false;
    var var_1 = 16844i;
    let var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-613f + 492f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-660f)) - -740f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-155f * -914f) + -442f)), 1f)), true));
    let var_3 = arg_0.c;
    return var_3.x;
}

fn func_2() -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(680f)), -221f, _wgslsmith_f_op_f32(trunc(124f))) + vec3<f32>(_wgslsmith_f_op_f32(abs(-127f)), -383f, _wgslsmith_f_op_f32(f32(-1f) * -657f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(435f, -1000f, 334f), vec3<f32>(739f, 649f, 741f)))))));
    var var_1 = ~(~vec3<u32>(1u, func_3(Struct_1(vec2<u32>(0u, 1u), vec2<bool>(true, false), vec4<u32>(80494u, 156972u, 2886u, 64493u), vec3<bool>(false, false, false))), select(~70901u, 1u, false)));
    let var_2 = select(select(vec3<bool>(true, any(vec4<bool>(true, true, true, true)), true), !select(vec3<bool>(true, false, false), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), false), all(vec4<bool>(true, true, true, true))), false), !vec3<bool>(all(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false))), all(vec4<bool>(false, true, false, false)) & (u_input.a.x < u_input.a.x), select(any(vec3<bool>(false, false, false)), true, true)), true);
    let var_3 = !vec3<bool>(var_2.x, any(vec2<bool>(true, var_2.x)), true);
    var var_4 = u_input.a.yz;
    return vec2<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(-_wgslsmith_mult_vec2_i32(u_input.a.zz, vec2<i32>(u_input.b.x, 0i)), vec2<i32>(-u_input.a.x, var_4.x)), (var_4.x | var_4.x) | _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, 1i, u_input.b.x), u_input.a.zyz), 16983i)), u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = select(firstTrailingBit(~_wgslsmith_clamp_vec2_i32(u_input.a.ww << (vec2<u32>(37030u, 1u) % vec2<u32>(32u)), u_input.a.xx, u_input.a.wy)), u_input.b.xy, !(!vec2<bool>(all(vec2<bool>(true, true)), all(vec4<bool>(false, true, true, false)))));
    global1 = array<Struct_3, 30>();
    var_1 = select(u_input.a.yz, select(vec2<i32>(-44063i, u_input.b.x) << (vec2<u32>(19200u, 4294967295u) % vec2<u32>(32u)), select(u_input.a.wy, vec2<i32>(u_input.b.x, var_1.x), vec2<bool>(false, false)), func_1(-1126f, vec3<f32>(1000f, -795f, 658f))) | func_2(), !func_1(_wgslsmith_f_op_f32(f32(-1f) * -1258f), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-2279f, 238f, 440f))))) & u_input.a.zz;
    var var_2 = Struct_2(-u_input.a.zx, Struct_1(vec2<u32>(~23009u, 0u) ^ ~select(vec2<u32>(61594u, 28780u), vec2<u32>(63116u, 4294967295u), vec2<bool>(true, false)), vec2<bool>(true, true), vec4<u32>(1u, 7661u, reverseBits(1u), reverseBits(26095u)), vec3<bool>(true, any(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true))), ~var_1.x == _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, -33086i), u_input.a.yy))), vec2<i32>(_wgslsmith_dot_vec2_i32(abs(u_input.a.wy) >> (vec2<u32>(1u, 44073u) % vec2<u32>(32u)), vec2<i32>(-1i) * -u_input.b.zx), -50849i));
    var_0 = false;
    global1 = array<Struct_3, 30>();
    let var_3 = Struct_2(vec2<i32>(u_input.b.x | _wgslsmith_mod_i32(_wgslsmith_div_i32(16945i, var_1.x), var_2.a.x | u_input.b.x), max(_wgslsmith_sub_i32(-29060i, var_2.a.x), -1i) << (~5154u % 32u)), var_2.b, countOneBits(-var_2.c));
    let x = u_input.a;
    s_output = StorageBuffer(-260f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-873f))));
}

