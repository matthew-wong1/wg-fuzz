struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: vec2<i32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 19> = array<Struct_3, 19>(Struct_3(Struct_2(vec3<u32>(4294967295u, 0u, 4294967295u), Struct_1(false, vec3<u32>(95537u, 5498u, 26075u), false), vec2<i32>(1i, -44127i), Struct_1(false, vec3<u32>(4294967295u, 40719u, 38236u), true), Struct_1(false, vec3<u32>(73161u, 20998u, 4294967295u), true)), Struct_2(vec3<u32>(27633u, 20546u, 29455u), Struct_1(true, vec3<u32>(10432u, 36267u, 41107u), true), vec2<i32>(-39320i, -13632i), Struct_1(false, vec3<u32>(0u, 69814u, 0u), false), Struct_1(false, vec3<u32>(29624u, 0u, 4294967295u), true)), 55365u), Struct_3(Struct_2(vec3<u32>(13247u, 29162u, 0u), Struct_1(false, vec3<u32>(0u, 7279u, 0u), false), vec2<i32>(i32(-2147483648), 31609i), Struct_1(true, vec3<u32>(88044u, 17215u, 1u), false), Struct_1(true, vec3<u32>(34780u, 0u, 1u), false)), Struct_2(vec3<u32>(4294967295u, 4294967295u, 4294967295u), Struct_1(true, vec3<u32>(0u, 28910u, 22320u), false), vec2<i32>(0i, 2147483647i), Struct_1(true, vec3<u32>(9583u, 34568u, 23412u), true), Struct_1(false, vec3<u32>(14845u, 4294967295u, 36494u), false)), 8053u), Struct_3(Struct_2(vec3<u32>(0u, 4294967295u, 44084u), Struct_1(false, vec3<u32>(1u, 1u, 0u), false), vec2<i32>(-3104i, -1i), Struct_1(false, vec3<u32>(44284u, 4948u, 4294967295u), true), Struct_1(false, vec3<u32>(1u, 43729u, 4294967295u), true)), Struct_2(vec3<u32>(1u, 1u, 69199u), Struct_1(false, vec3<u32>(0u, 0u, 75503u), false), vec2<i32>(22026i, 1i), Struct_1(true, vec3<u32>(45958u, 21584u, 27969u), false), Struct_1(false, vec3<u32>(19694u, 4294967295u, 4294967295u), false)), 0u), Struct_3(Struct_2(vec3<u32>(4294967295u, 20731u, 0u), Struct_1(true, vec3<u32>(4294967295u, 30577u, 3333u), true), vec2<i32>(1i, -27326i), Struct_1(true, vec3<u32>(39527u, 1u, 658u), true), Struct_1(true, vec3<u32>(1u, 0u, 1u), true)), Struct_2(vec3<u32>(17298u, 4294967295u, 1u), Struct_1(false, vec3<u32>(37521u, 0u, 1u), false), vec2<i32>(16829i, 2147483647i), Struct_1(false, vec3<u32>(31183u, 4294967295u, 4294967295u), true), Struct_1(false, vec3<u32>(22643u, 0u, 15160u), false)), 0u), Struct_3(Struct_2(vec3<u32>(74775u, 62792u, 117729u), Struct_1(false, vec3<u32>(44320u, 74125u, 0u), false), vec2<i32>(i32(-2147483648), 2147483647i), Struct_1(true, vec3<u32>(4294967295u, 1457u, 16088u), false), Struct_1(true, vec3<u32>(0u, 1442u, 6783u), false)), Struct_2(vec3<u32>(0u, 46840u, 38611u), Struct_1(true, vec3<u32>(0u, 1u, 4294967295u), false), vec2<i32>(15397i, -89742i), Struct_1(false, vec3<u32>(7801u, 0u, 74278u), true), Struct_1(true, vec3<u32>(89100u, 1u, 1u), false)), 0u), Struct_3(Struct_2(vec3<u32>(164693u, 1u, 4294967295u), Struct_1(false, vec3<u32>(1u, 4294967295u, 22210u), false), vec2<i32>(-1i, -1i), Struct_1(true, vec3<u32>(1u, 16831u, 40274u), true), Struct_1(false, vec3<u32>(4294967295u, 32200u, 10892u), true)), Struct_2(vec3<u32>(4294967295u, 10186u, 1u), Struct_1(false, vec3<u32>(0u, 1u, 1u), true), vec2<i32>(i32(-2147483648), -1i), Struct_1(false, vec3<u32>(11296u, 13640u, 0u), false), Struct_1(true, vec3<u32>(0u, 20333u, 7528u), false)), 0u), Struct_3(Struct_2(vec3<u32>(31167u, 4294967295u, 7990u), Struct_1(true, vec3<u32>(0u, 0u, 28306u), true), vec2<i32>(43681i, 0i), Struct_1(false, vec3<u32>(0u, 56727u, 1u), false), Struct_1(true, vec3<u32>(0u, 0u, 95449u), true)), Struct_2(vec3<u32>(11340u, 7345u, 65091u), Struct_1(false, vec3<u32>(1u, 4294967295u, 20403u), false), vec2<i32>(i32(-2147483648), 8920i), Struct_1(false, vec3<u32>(22726u, 1u, 0u), true), Struct_1(true, vec3<u32>(81629u, 1u, 33290u), true)), 4294967295u), Struct_3(Struct_2(vec3<u32>(0u, 4294967295u, 59487u), Struct_1(true, vec3<u32>(1u, 12282u, 0u), true), vec2<i32>(0i, -8416i), Struct_1(false, vec3<u32>(6379u, 9486u, 19926u), true), Struct_1(false, vec3<u32>(0u, 0u, 1u), true)), Struct_2(vec3<u32>(37913u, 1u, 4294967295u), Struct_1(false, vec3<u32>(94554u, 1u, 356u), true), vec2<i32>(10498i, 23551i), Struct_1(true, vec3<u32>(1u, 0u, 45154u), true), Struct_1(false, vec3<u32>(4294967295u, 7052u, 34721u), true)), 20129u), Struct_3(Struct_2(vec3<u32>(0u, 26713u, 4294967295u), Struct_1(false, vec3<u32>(1u, 91569u, 1u), true), vec2<i32>(30501i, -35663i), Struct_1(true, vec3<u32>(0u, 49211u, 5460u), false), Struct_1(false, vec3<u32>(24034u, 49893u, 1u), true)), Struct_2(vec3<u32>(4294967295u, 4294967295u, 4294967295u), Struct_1(true, vec3<u32>(8721u, 0u, 3256u), false), vec2<i32>(0i, -2131i), Struct_1(false, vec3<u32>(28729u, 4294967295u, 1u), true), Struct_1(true, vec3<u32>(4294967295u, 4294967295u, 47928u), false)), 4294967295u), Struct_3(Struct_2(vec3<u32>(16394u, 37519u, 4294967295u), Struct_1(false, vec3<u32>(1u, 0u, 24642u), true), vec2<i32>(0i, -64253i), Struct_1(false, vec3<u32>(4294967295u, 5805u, 1u), true), Struct_1(true, vec3<u32>(22757u, 25552u, 11404u), false)), Struct_2(vec3<u32>(50485u, 60935u, 0u), Struct_1(true, vec3<u32>(4294967295u, 27189u, 92725u), false), vec2<i32>(-21875i, 12641i), Struct_1(true, vec3<u32>(31519u, 34436u, 1u), true), Struct_1(true, vec3<u32>(1u, 54254u, 0u), false)), 1u), Struct_3(Struct_2(vec3<u32>(38438u, 4294967295u, 4294967295u), Struct_1(false, vec3<u32>(23852u, 31079u, 39614u), false), vec2<i32>(-384i, -49662i), Struct_1(false, vec3<u32>(1u, 0u, 0u), false), Struct_1(false, vec3<u32>(44767u, 1u, 4294967295u), false)), Struct_2(vec3<u32>(60028u, 71865u, 55044u), Struct_1(true, vec3<u32>(104343u, 3920u, 44798u), false), vec2<i32>(2147483647i, -1i), Struct_1(false, vec3<u32>(0u, 24353u, 1463u), true), Struct_1(true, vec3<u32>(0u, 1u, 0u), false)), 17051u), Struct_3(Struct_2(vec3<u32>(33859u, 4294967295u, 56713u), Struct_1(true, vec3<u32>(76743u, 38724u, 4294967295u), true), vec2<i32>(0i, -31306i), Struct_1(false, vec3<u32>(34864u, 4294967295u, 18304u), true), Struct_1(true, vec3<u32>(11147u, 0u, 1u), true)), Struct_2(vec3<u32>(40620u, 86672u, 17402u), Struct_1(false, vec3<u32>(7863u, 57312u, 0u), true), vec2<i32>(32025i, -1i), Struct_1(false, vec3<u32>(26408u, 4294967295u, 3943u), true), Struct_1(false, vec3<u32>(12700u, 4294967295u, 1u), true)), 0u), Struct_3(Struct_2(vec3<u32>(4294967295u, 0u, 1u), Struct_1(true, vec3<u32>(0u, 39533u, 0u), false), vec2<i32>(1122i, -14853i), Struct_1(true, vec3<u32>(79198u, 21506u, 25574u), false), Struct_1(false, vec3<u32>(0u, 4294967295u, 1u), false)), Struct_2(vec3<u32>(1367u, 0u, 1u), Struct_1(false, vec3<u32>(0u, 42282u, 0u), false), vec2<i32>(-4637i, 2147483647i), Struct_1(false, vec3<u32>(1u, 9319u, 33254u), false), Struct_1(false, vec3<u32>(4294967295u, 4294967295u, 1u), false)), 89225u), Struct_3(Struct_2(vec3<u32>(34650u, 39981u, 1u), Struct_1(false, vec3<u32>(4294967295u, 44846u, 18332u), false), vec2<i32>(41490i, -15506i), Struct_1(true, vec3<u32>(33157u, 1u, 49133u), false), Struct_1(true, vec3<u32>(15643u, 4294967295u, 1u), false)), Struct_2(vec3<u32>(4294967295u, 60937u, 0u), Struct_1(false, vec3<u32>(4294967295u, 77327u, 2078u), false), vec2<i32>(0i, -5081i), Struct_1(true, vec3<u32>(25458u, 1u, 4294967295u), false), Struct_1(true, vec3<u32>(77930u, 26324u, 1u), false)), 6706u), Struct_3(Struct_2(vec3<u32>(4730u, 127248u, 2670u), Struct_1(true, vec3<u32>(7064u, 18846u, 1u), true), vec2<i32>(-3071i, -6149i), Struct_1(false, vec3<u32>(31774u, 4294967295u, 553u), true), Struct_1(false, vec3<u32>(42140u, 992u, 0u), false)), Struct_2(vec3<u32>(53663u, 67058u, 0u), Struct_1(true, vec3<u32>(51499u, 6080u, 1u), true), vec2<i32>(-41536i, 49409i), Struct_1(false, vec3<u32>(4294967295u, 6198u, 0u), false), Struct_1(false, vec3<u32>(1u, 41852u, 4294967295u), false)), 7422u), Struct_3(Struct_2(vec3<u32>(1u, 4294967295u, 7637u), Struct_1(true, vec3<u32>(1u, 38586u, 6090u), false), vec2<i32>(22114i, i32(-2147483648)), Struct_1(true, vec3<u32>(0u, 22306u, 0u), false), Struct_1(false, vec3<u32>(0u, 3766u, 1u), true)), Struct_2(vec3<u32>(15509u, 0u, 50983u), Struct_1(true, vec3<u32>(4294967295u, 27164u, 0u), false), vec2<i32>(1i, 1i), Struct_1(false, vec3<u32>(25426u, 1u, 10435u), true), Struct_1(false, vec3<u32>(1u, 57554u, 1u), false)), 1u), Struct_3(Struct_2(vec3<u32>(38502u, 1u, 4294967295u), Struct_1(true, vec3<u32>(1u, 81415u, 10335u), false), vec2<i32>(-46176i, -18120i), Struct_1(false, vec3<u32>(1u, 81135u, 4294967295u), false), Struct_1(false, vec3<u32>(0u, 46064u, 146085u), false)), Struct_2(vec3<u32>(1u, 4294967295u, 0u), Struct_1(true, vec3<u32>(4065u, 1u, 0u), false), vec2<i32>(-13913i, 7814i), Struct_1(true, vec3<u32>(0u, 2885u, 1u), false), Struct_1(false, vec3<u32>(14080u, 79341u, 47964u), true)), 0u), Struct_3(Struct_2(vec3<u32>(0u, 0u, 28469u), Struct_1(true, vec3<u32>(15133u, 90532u, 22113u), false), vec2<i32>(4641i, 59968i), Struct_1(true, vec3<u32>(1u, 16195u, 4050u), true), Struct_1(false, vec3<u32>(117359u, 41091u, 0u), false)), Struct_2(vec3<u32>(5605u, 0u, 1u), Struct_1(true, vec3<u32>(1u, 32596u, 6914u), false), vec2<i32>(-1i, -1i), Struct_1(true, vec3<u32>(1u, 87223u, 1u), true), Struct_1(true, vec3<u32>(37458u, 27644u, 52599u), false)), 0u), Struct_3(Struct_2(vec3<u32>(1u, 18826u, 29965u), Struct_1(true, vec3<u32>(4294967295u, 132938u, 1460u), false), vec2<i32>(i32(-2147483648), -9635i), Struct_1(true, vec3<u32>(4294967295u, 4829u, 0u), false), Struct_1(false, vec3<u32>(31807u, 61095u, 0u), false)), Struct_2(vec3<u32>(4294967295u, 1u, 4294967295u), Struct_1(false, vec3<u32>(4681u, 51363u, 1u), true), vec2<i32>(21703i, 26471i), Struct_1(true, vec3<u32>(123291u, 22122u, 0u), false), Struct_1(false, vec3<u32>(0u, 14281u, 0u), false)), 33146u));

var<private> global1: Struct_1;

var<private> global2: vec2<bool> = vec2<bool>(true, false);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> bool {
    global2 = vec2<bool>(any(!vec4<bool>(global1.c, all(vec3<bool>(true, global1.a, true)), true, false)), true);
    global2 = vec2<bool>(!(!all(select(vec4<bool>(global1.c, global1.a, global2.x, false), vec4<bool>(false, global2.x, global2.x, global2.x), vec4<bool>(false, true, false, global1.c)))), true & (~abs(global1.b.x) != ~17668u));
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1859f + 1380f));
    return false;
}

fn func_2() -> f32 {
    global0 = array<Struct_3, 19>();
    global1 = Struct_1(!any(select(vec2<bool>(false, global2.x), vec2<bool>(global2.x, global1.c), global2.x)) | true, global1.b, func_3());
    global1 = Struct_1((_wgslsmith_mod_u32(~global1.b.x, ~293u) < abs(3536u)) && global1.a, vec3<u32>(global1.b.x, abs(global1.b.x), global1.b.x), true);
    let var_0 = -(max(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.b, 17445i) << (vec2<u32>(78799u, 1u) % vec2<u32>(32u)), -vec2<i32>(u_input.b, -24969i)), abs(vec2<i32>(-16948i, u_input.b)) >> (min(vec2<u32>(global1.b.x, global1.b.x), global1.b.xz) % vec2<u32>(32u))) ^ -(vec2<i32>(31295i, u_input.b) & -vec2<i32>(u_input.b, -2147483647i)));
    var var_1 = Struct_2(_wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(firstLeadingBit(0u), ~0u, ~global1.b.x), firstLeadingBit(firstTrailingBit(global1.b))), global1.b), Struct_1(all(select(select(vec4<bool>(global1.a, true, false, global2.x), vec4<bool>(true, true, global1.a, global2.x), global1.a), vec4<bool>(true, global2.x, true, true), global2.x)), global1.b, all(vec3<bool>(!global2.x, global2.x, true))), _wgslsmith_mult_vec2_i32(var_0, var_0), Struct_1(~_wgslsmith_sub_u32(0u, global1.b.x) == ~(global1.b.x << (83040u % 32u)), ~(global1.b ^ ~global1.b), true), Struct_1(false, vec3<u32>(~global1.b.x, ~_wgslsmith_add_u32(global1.b.x, 30404u), _wgslsmith_div_u32(_wgslsmith_mod_u32(global1.b.x, 0u), _wgslsmith_dot_vec2_u32(vec2<u32>(6009u, 104438u), global1.b.yx))), global1.a));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1656f, 150f)) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-891f, -2879f, true)), -135f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-331f, -1592f, false)), _wgslsmith_f_op_f32(159f - -688f)))));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: vec4<i32>, arg_3: i32) -> vec3<u32> {
    global2 = select(select(!(!vec2<bool>(global1.a, arg_1.e.c)), !vec2<bool>(arg_2.x != u_input.a, !global1.c), !vec2<bool>(arg_1.d.a, arg_1.a.x != global1.b.x)), vec2<bool>(~(~global1.b.x) == ~40183u, _wgslsmith_dot_vec2_i32(~vec2<i32>(arg_3, arg_1.c.x), vec2<i32>(arg_3, arg_3)) >= _wgslsmith_mult_i32(~arg_3, _wgslsmith_dot_vec4_i32(vec4<i32>(-38752i, -2147483647i, u_input.a, arg_2.x), arg_2))), all(select(!vec4<bool>(global2.x, arg_1.d.c, global2.x, global1.c), vec4<bool>(2232f > arg_0.x, any(vec4<bool>(true, arg_1.d.a, global1.c, global1.a)), global1.a, false), !vec4<bool>(arg_1.b.c, false, global2.x, arg_1.b.a))));
    let var_0 = _wgslsmith_f_op_vec2_f32(arg_0.yz + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -630f))), 373f) * arg_0.xz));
    return ~_wgslsmith_clamp_vec3_u32(arg_1.b.b, select(_wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(0u, 1u, arg_1.d.b.x), arg_1.e.b), global1.b), min(countOneBits(vec3<u32>(33044u, global1.b.x, arg_1.d.b.x)), _wgslsmith_mod_vec3_u32(vec3<u32>(arg_1.d.b.x, 14580u, 16481u), vec3<u32>(arg_1.d.b.x, arg_1.e.b.x, arg_1.d.b.x))), true), ~arg_1.e.b);
}

fn func_1(arg_0: i32) -> Struct_2 {
    global0 = array<Struct_3, 19>();
    var var_0 = Struct_1(global2.x, func_4(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-118f))), _wgslsmith_div_f32(-1558f, _wgslsmith_f_op_f32(abs(820f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2()))), Struct_2(vec3<u32>(_wgslsmith_add_u32(global1.b.x, global1.b.x), _wgslsmith_mod_u32(4294967295u, global1.b.x), ~36623u), Struct_1(any(vec3<bool>(global2.x, global2.x, true)), vec3<u32>(1475u, global1.b.x, global1.b.x), true), firstTrailingBit(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, -13576i), vec2<i32>(u_input.b, -2147483647i))), Struct_1(true, firstLeadingBit(global1.b), u_input.a != arg_0), Struct_1(any(vec2<bool>(global2.x, false)), select(vec3<u32>(global1.b.x, global1.b.x, global1.b.x), vec3<u32>(16831u, 9953u, global1.b.x), vec3<bool>(global2.x, global2.x, global1.a)), global2.x)), vec4<i32>(reverseBits(u_input.c), -35574i, _wgslsmith_sub_i32(arg_0, 1i), _wgslsmith_div_i32(u_input.c, ~arg_0)), ~firstLeadingBit(~arg_0)), true);
    global1 = Struct_1(true, ~vec3<u32>(_wgslsmith_div_u32(0u, 11375u), 63650u, ~4294967295u), true);
    global1 = Struct_1((max(var_0.b.x, ~global1.b.x) | ~3676u) <= ~_wgslsmith_sub_u32(~global1.b.x, 37320u), ~(vec3<u32>(84780u, global1.b.x, var_0.b.x) | abs(vec3<u32>(4294967295u, 4294967295u, global1.b.x))) & var_0.b, true);
    let var_1 = select(reverseBits(_wgslsmith_add_vec4_u32(~max(vec4<u32>(0u, 92927u, var_0.b.x, var_0.b.x), vec4<u32>(4294967295u, 25573u, 1u, 1u)), firstTrailingBit(min(vec4<u32>(0u, global1.b.x, global1.b.x, 17264u), vec4<u32>(0u, 24046u, global1.b.x, 16926u))))), ~vec4<u32>(1u, firstLeadingBit(var_0.b.x), firstLeadingBit(1u), global1.b.x), vec4<bool>(!all(select(vec3<bool>(var_0.c, false, true), vec3<bool>(true, global1.c, global1.c), vec3<bool>(global1.a, global2.x, false))), all(vec3<bool>(var_0.a, false, true)), true, !global2.x));
    return Struct_2(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(abs(34507u), var_1.x), vec2<u32>(global1.b.x, 1u)), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(min(vec3<u32>(var_1.x, 4294967295u, 8169u), var_0.b), ~vec3<u32>(4294967295u, 35173u, 0u)), _wgslsmith_clamp_u32(~0u, _wgslsmith_div_u32(global1.b.x, var_0.b.x), _wgslsmith_mult_u32(var_0.b.x, 57929u))), ~min(0u, var_1.x)), Struct_1(true, _wgslsmith_div_vec3_u32(~var_0.b ^ min(vec3<u32>(var_0.b.x, var_0.b.x, var_1.x), vec3<u32>(var_0.b.x, 1u, 82264u)), var_0.b), false), max(select(vec2<i32>(-1i) * -vec2<i32>(arg_0, arg_0), -vec2<i32>(6681i, -22303i), !vec2<bool>(global2.x, global2.x)), vec2<i32>(~(arg_0 ^ -2147483647i), -28998i)), Struct_1(!func_3(), var_0.b, false), Struct_1(!any(vec2<bool>(true, true)), reverseBits(~(~vec3<u32>(1u, 45778u, 97579u))), true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(0i, -43865i);
    let var_1 = 0i;
    var var_2 = _wgslsmith_f_op_f32(max(-575f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1860f + 619f))));
    global2 = vec2<bool>(any(select(select(vec3<bool>(global2.x, global1.c, global1.a), !vec3<bool>(global2.x, global1.c, global2.x), vec3<bool>(true, true, false)), !select(vec3<bool>(false, global2.x, true), vec3<bool>(global1.c, global2.x, global1.c), vec3<bool>(global2.x, global1.a, false)), global2.x)), false);
    let var_3 = ~reverseBits(~_wgslsmith_mod_vec3_i32(vec3<i32>(1i, var_0.x, -2147483647i), -vec3<i32>(49821i, -32549i, var_0.x)));
    var var_4 = func_1(_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_div_i32(min(var_0.x, 38336i), ~2147483647i), var_1), var_3.xz));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(504f - -405f), -1160f) - -498f), -1133f, -879f), var_3, vec2<u32>(_wgslsmith_mod_u32(~(1u << (var_4.e.b.x % 32u)), var_4.d.b.x), _wgslsmith_sub_u32(var_4.d.b.x, ~1u)));
}

