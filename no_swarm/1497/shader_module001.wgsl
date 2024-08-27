struct Struct_1 {
    a: vec3<u32>,
    b: i32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec3<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
    c: Struct_2,
    d: vec3<i32>,
    e: i32,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_3,
    c: u32,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: f32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<Struct_5, 29> = array<Struct_5, 29>(Struct_5(Struct_2(-384f), Struct_3(vec3<i32>(0i, 0i, 1i), vec3<u32>(0u, 17982u, 87696u)), 19892u, Struct_2(-931f)), Struct_5(Struct_2(666f), Struct_3(vec3<i32>(2147483647i, 19155i, 0i), vec3<u32>(4294967295u, 31322u, 7668u)), 1u, Struct_2(1027f)), Struct_5(Struct_2(861f), Struct_3(vec3<i32>(30605i, 9264i, 0i), vec3<u32>(1u, 1u, 16669u)), 91140u, Struct_2(-788f)), Struct_5(Struct_2(669f), Struct_3(vec3<i32>(55510i, 1i, 90248i), vec3<u32>(1u, 1690u, 1u)), 23088u, Struct_2(498f)), Struct_5(Struct_2(-372f), Struct_3(vec3<i32>(i32(-2147483648), i32(-2147483648), 19937i), vec3<u32>(0u, 13226u, 63137u)), 42195u, Struct_2(-1000f)), Struct_5(Struct_2(643f), Struct_3(vec3<i32>(-1i, 11480i, i32(-2147483648)), vec3<u32>(14139u, 4294967295u, 4294967295u)), 1u, Struct_2(1224f)), Struct_5(Struct_2(-765f), Struct_3(vec3<i32>(-1i, i32(-2147483648), 1i), vec3<u32>(30088u, 1u, 67917u)), 0u, Struct_2(869f)), Struct_5(Struct_2(-491f), Struct_3(vec3<i32>(-19815i, -22495i, 36588i), vec3<u32>(80083u, 0u, 27133u)), 507u, Struct_2(-309f)), Struct_5(Struct_2(896f), Struct_3(vec3<i32>(-11212i, -7766i, 23242i), vec3<u32>(1u, 73937u, 2893u)), 48289u, Struct_2(-640f)), Struct_5(Struct_2(-823f), Struct_3(vec3<i32>(2147483647i, 2147483647i, -5963i), vec3<u32>(5464u, 1229u, 28259u)), 4294967295u, Struct_2(1008f)), Struct_5(Struct_2(-270f), Struct_3(vec3<i32>(0i, i32(-2147483648), 19544i), vec3<u32>(4294967295u, 17041u, 4826u)), 4294967295u, Struct_2(1397f)), Struct_5(Struct_2(-317f), Struct_3(vec3<i32>(-1i, -72666i, i32(-2147483648)), vec3<u32>(1u, 4294967295u, 0u)), 29907u, Struct_2(-637f)), Struct_5(Struct_2(446f), Struct_3(vec3<i32>(2147483647i, -29740i, -3263i), vec3<u32>(1u, 33142u, 1u)), 4294967295u, Struct_2(194f)), Struct_5(Struct_2(-682f), Struct_3(vec3<i32>(-1i, 19678i, 0i), vec3<u32>(50247u, 1u, 17103u)), 4294967295u, Struct_2(1117f)), Struct_5(Struct_2(-614f), Struct_3(vec3<i32>(2147483647i, 0i, 38072i), vec3<u32>(1u, 0u, 0u)), 44979u, Struct_2(-625f)), Struct_5(Struct_2(-548f), Struct_3(vec3<i32>(1i, -1i, 10364i), vec3<u32>(1u, 0u, 0u)), 12185u, Struct_2(811f)), Struct_5(Struct_2(-2125f), Struct_3(vec3<i32>(-1i, 2147483647i, 0i), vec3<u32>(14049u, 0u, 1u)), 30190u, Struct_2(-538f)), Struct_5(Struct_2(-824f), Struct_3(vec3<i32>(2147483647i, 55825i, 2147483647i), vec3<u32>(51427u, 28541u, 4294967295u)), 85962u, Struct_2(1282f)), Struct_5(Struct_2(745f), Struct_3(vec3<i32>(52234i, -1i, 25160i), vec3<u32>(4294967295u, 30781u, 49477u)), 0u, Struct_2(1000f)), Struct_5(Struct_2(905f), Struct_3(vec3<i32>(2147483647i, -25699i, i32(-2147483648)), vec3<u32>(87548u, 4294967295u, 12508u)), 1u, Struct_2(1067f)), Struct_5(Struct_2(-1005f), Struct_3(vec3<i32>(-10524i, -1i, 19405i), vec3<u32>(0u, 0u, 48120u)), 4294967295u, Struct_2(745f)), Struct_5(Struct_2(-215f), Struct_3(vec3<i32>(0i, 1i, 37897i), vec3<u32>(53410u, 4294967295u, 8787u)), 78061u, Struct_2(-344f)), Struct_5(Struct_2(-399f), Struct_3(vec3<i32>(-61767i, -58738i, i32(-2147483648)), vec3<u32>(4294967295u, 1u, 1u)), 36516u, Struct_2(101f)), Struct_5(Struct_2(1000f), Struct_3(vec3<i32>(29555i, -248i, 31415i), vec3<u32>(0u, 100938u, 0u)), 0u, Struct_2(1289f)), Struct_5(Struct_2(-848f), Struct_3(vec3<i32>(1i, 1i, 0i), vec3<u32>(1u, 1u, 28573u)), 4294967295u, Struct_2(727f)), Struct_5(Struct_2(-1697f), Struct_3(vec3<i32>(1i, 15570i, 10337i), vec3<u32>(4294967295u, 82927u, 12467u)), 52344u, Struct_2(-757f)), Struct_5(Struct_2(-650f), Struct_3(vec3<i32>(1i, 39964i, 52074i), vec3<u32>(4294967295u, 112924u, 1u)), 1u, Struct_2(523f)), Struct_5(Struct_2(-375f), Struct_3(vec3<i32>(-592i, 37432i, 2147483647i), vec3<u32>(28227u, 0u, 1u)), 11189u, Struct_2(265f)), Struct_5(Struct_2(217f), Struct_3(vec3<i32>(-28361i, -85100i, 1i), vec3<u32>(4294967295u, 10453u, 23204u)), 22068u, Struct_2(2230f)));

var<private> global2: bool = true;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: Struct_3) -> vec2<bool> {
    var var_0 = -vec3<i32>(global0.x, global0.x, -_wgslsmith_add_i32(arg_0.a.x, -15026i));
    global1 = array<Struct_5, 29>();
    global2 = true;
    var var_1 = Struct_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-433f, 1950f))));
    global0 = abs(_wgslsmith_add_vec4_i32(~(reverseBits(vec4<i32>(global0.x, arg_0.a.x, arg_0.a.x, -42234i)) | abs(vec4<i32>(var_0.x, arg_0.a.x, var_0.x, var_0.x))), ~_wgslsmith_div_vec4_i32(vec4<i32>(arg_0.a.x, -2147483647i, 13599i, global0.x) | vec4<i32>(arg_0.a.x, arg_0.a.x, -2147483647i, -27374i), vec4<i32>(global0.x, 2147483647i, var_0.x, 16086i) >> (vec4<u32>(arg_0.b.x, arg_0.b.x, 0u, 9648u) % vec4<u32>(32u)))));
    return !(!vec2<bool>(false, select(true, false, var_0.x >= 0i)));
}

fn func_2(arg_0: vec2<i32>) -> bool {
    var var_0 = ~vec2<i32>(-1i, ~global0.x);
    var var_1 = true | select(true, all(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), true)), any(func_3(Struct_3(vec3<i32>(9010i, global0.x, 0i), vec3<u32>(4294967295u, 1u, u_input.a.x)))));
    let var_2 = i32(-1i) * -1i;
    let var_3 = true;
    var_0 = vec2<i32>(-2147483647i, 2147483647i);
    return func_3(Struct_3(firstLeadingBit(global0.wxw), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, 4294967295u, 36680u), ~(vec3<u32>(57814u, 44460u, u_input.a.x) | vec3<u32>(0u, u_input.a.x, 0u))))).x;
}

fn func_1(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: vec4<bool>) -> f32 {
    global2 = arg_2.x;
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-1000f, 1000f), _wgslsmith_f_op_f32(sign(arg_0.a))));
    let var_1 = Struct_1(~(~vec3<u32>(~0u, select(u_input.a.x, u_input.a.x, arg_2.x), u_input.a.x)), ~_wgslsmith_mod_i32(~global0.x << (0u % 32u), _wgslsmith_mult_i32(arg_1.x, ~global0.x)));
    let var_2 = all(!vec4<bool>(!any(vec4<bool>(arg_2.x, true, arg_2.x, arg_2.x)), func_2(-vec2<i32>(var_1.b, var_1.b)), arg_2.x, arg_2.x));
    let var_3 = !(!select(select(func_3(Struct_3(vec3<i32>(var_1.b, global0.x, 2147483647i), vec3<u32>(var_1.a.x, 40451u, 34097u))), select(arg_2.xx, arg_2.xy, arg_2.xw), var_2), vec2<bool>(arg_2.x & true, true), arg_2.x | func_2(vec2<i32>(global0.x, -2951i))));
    return var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(545f, -739f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1000f * 111f), _wgslsmith_f_op_f32(func_1(Struct_2(614f), vec4<i32>(1i, global0.x, global0.x, global0.x), vec4<bool>(true, true, false, false))), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1046f * 254f))) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-476f, 419f, -791f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(459f, -850f, 276f)))))));
    var var_1 = any(vec2<bool>(global0.x != ((1i & global0.x) ^ global0.x), func_2(global0.wz)));
    global2 = false;
    let var_2 = !(!select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), true), select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true)), vec4<bool>(true, true, true, false), false), vec4<bool>(true, true, false, all(vec2<bool>(false, false)))));
    let var_3 = _wgslsmith_sub_vec2_u32(~min(u_input.a, u_input.a & ~vec2<u32>(25342u, u_input.a.x)), ~_wgslsmith_mod_vec2_u32(u_input.a, u_input.a) & (_wgslsmith_clamp_vec2_u32(countOneBits(u_input.a), u_input.a, u_input.a) & (~vec2<u32>(u_input.a.x, u_input.a.x) << (firstLeadingBit(u_input.a) % vec2<u32>(32u)))));
    let var_4 = reverseBits(vec3<i32>(0i, reverseBits(~min(-1i, -9971i)), 0i | max(global0.x, -26464i)));
    let var_5 = Struct_3(_wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(~vec3<i32>(2147483647i, 9758i, global0.x), reverseBits(vec3<i32>(global0.x, -1i, 0i))), ~firstLeadingBit(global0.xyz)), abs(vec3<u32>(~_wgslsmith_sub_u32(u_input.a.x, 1u), ~1u, select(1u, reverseBits(var_3.x), true))));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.xx, -20411i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.x, _wgslsmith_f_op_f32(-var_0.x))) * -228f), vec2<u32>(50026u, countOneBits(~(~u_input.a.x))));
}

