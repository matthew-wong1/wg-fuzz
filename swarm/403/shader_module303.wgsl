struct Struct_1 {
    a: vec3<i32>,
    b: vec4<f32>,
    c: vec3<i32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec3<u32>,
    c: f32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
    c: Struct_2,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: vec3<u32>,
    b: u32,
    c: Struct_1,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<vec4<u32>, 32>;

var<private> global2: u32 = 0u;

var<private> global3: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(vec3<i32>(-1i, -1i, 0i), vec4<f32>(554f, -1757f, 338f, -693f), vec3<i32>(-11646i, -54551i, -43367i), vec2<u32>(4294967295u, 7305u)), Struct_1(vec3<i32>(2147483647i, 0i, 0i), vec4<f32>(-620f, 123f, 893f, -1274f), vec3<i32>(i32(-2147483648), 8021i, 2147483647i), vec2<u32>(22503u, 3477u)), Struct_1(vec3<i32>(-1i, 14650i, -20200i), vec4<f32>(-802f, -1429f, 276f, -205f), vec3<i32>(30243i, -9989i, 0i), vec2<u32>(0u, 4294967295u)), Struct_1(vec3<i32>(1i, -1i, -30545i), vec4<f32>(754f, -1221f, -532f, -294f), vec3<i32>(-37267i, -72547i, i32(-2147483648)), vec2<u32>(9288u, 20363u)), Struct_1(vec3<i32>(38924i, 1i, 0i), vec4<f32>(1238f, 1500f, 1120f, -1000f), vec3<i32>(-18862i, 41676i, -25048i), vec2<u32>(0u, 16197u)), Struct_1(vec3<i32>(i32(-2147483648), -18161i, -17237i), vec4<f32>(1000f, -1140f, 602f, 988f), vec3<i32>(58552i, 1i, i32(-2147483648)), vec2<u32>(38580u, 4294967295u)), Struct_1(vec3<i32>(-50706i, 20724i, 51343i), vec4<f32>(-521f, -1305f, -725f, 785f), vec3<i32>(-1i, -30754i, -6084i), vec2<u32>(67443u, 49316u)), Struct_1(vec3<i32>(37029i, -1i, -40057i), vec4<f32>(-305f, 1196f, 1587f, 657f), vec3<i32>(-5064i, 18700i, 1i), vec2<u32>(0u, 4294967295u)), Struct_1(vec3<i32>(10539i, i32(-2147483648), i32(-2147483648)), vec4<f32>(-856f, 1696f, -1108f, 368f), vec3<i32>(-39795i, 0i, 0i), vec2<u32>(0u, 9655u)), Struct_1(vec3<i32>(12753i, 6808i, 2147483647i), vec4<f32>(1695f, -1381f, -1368f, -456f), vec3<i32>(-730i, -20301i, 0i), vec2<u32>(65690u, 1u)), Struct_1(vec3<i32>(-1i, 2147483647i, -16225i), vec4<f32>(-440f, 796f, -341f, 767f), vec3<i32>(0i, 2147483647i, -63669i), vec2<u32>(0u, 1u)), Struct_1(vec3<i32>(18439i, -30161i, 45041i), vec4<f32>(1528f, 121f, 466f, -1196f), vec3<i32>(-20817i, 44437i, -20638i), vec2<u32>(90248u, 1u)), Struct_1(vec3<i32>(-1i, -10053i, -51174i), vec4<f32>(1000f, -166f, 631f, 2036f), vec3<i32>(i32(-2147483648), 16186i, -1i), vec2<u32>(3032u, 3882u)), Struct_1(vec3<i32>(125i, 6416i, -10489i), vec4<f32>(1063f, 1334f, -1000f, -767f), vec3<i32>(0i, 1i, -39410i), vec2<u32>(5442u, 24352u)), Struct_1(vec3<i32>(i32(-2147483648), 1i, 1i), vec4<f32>(943f, -1173f, 201f, -1756f), vec3<i32>(-9556i, i32(-2147483648), i32(-2147483648)), vec2<u32>(21929u, 0u)), Struct_1(vec3<i32>(7947i, 2147483647i, 43513i), vec4<f32>(-1485f, -2031f, 1475f, -403f), vec3<i32>(15198i, -13211i, -1i), vec2<u32>(1u, 0u)), Struct_1(vec3<i32>(-26923i, -19606i, -6881i), vec4<f32>(-1969f, 1583f, -344f, 346f), vec3<i32>(2147483647i, 0i, -42009i), vec2<u32>(4294967295u, 4294967295u)), Struct_1(vec3<i32>(i32(-2147483648), 2147483647i, 47593i), vec4<f32>(334f, 828f, 452f, -254f), vec3<i32>(0i, i32(-2147483648), 26935i), vec2<u32>(4294967295u, 1u)), Struct_1(vec3<i32>(32213i, -6075i, -27651i), vec4<f32>(1091f, -893f, 1655f, -1000f), vec3<i32>(0i, 30333i, i32(-2147483648)), vec2<u32>(58548u, 1u)), Struct_1(vec3<i32>(8833i, 2147483647i, 1i), vec4<f32>(105f, -251f, 1000f, 1000f), vec3<i32>(1i, -1i, 2147483647i), vec2<u32>(57481u, 50735u)), Struct_1(vec3<i32>(-36307i, 2147483647i, 1i), vec4<f32>(-633f, -137f, 1568f, -1000f), vec3<i32>(1i, -1i, -15468i), vec2<u32>(4294967295u, 13123u)), Struct_1(vec3<i32>(2147483647i, -23020i, -32787i), vec4<f32>(-399f, 980f, -958f, 1153f), vec3<i32>(53455i, 1i, -34408i), vec2<u32>(4294967295u, 0u)), Struct_1(vec3<i32>(-72630i, -58267i, -42427i), vec4<f32>(415f, -229f, 1227f, -863f), vec3<i32>(20274i, 14747i, -1i), vec2<u32>(86373u, 0u)), Struct_1(vec3<i32>(0i, 53704i, -6911i), vec4<f32>(384f, -538f, -296f, -149f), vec3<i32>(2147483647i, -1i, i32(-2147483648)), vec2<u32>(54045u, 0u)), Struct_1(vec3<i32>(i32(-2147483648), -20589i, 5790i), vec4<f32>(-793f, 872f, -668f, 1000f), vec3<i32>(-1i, -1i, 1i), vec2<u32>(1u, 67447u)), Struct_1(vec3<i32>(93995i, 0i, -79169i), vec4<f32>(-237f, 432f, 512f, 210f), vec3<i32>(-1i, 2147483647i, 0i), vec2<u32>(0u, 1u)), Struct_1(vec3<i32>(2147483647i, i32(-2147483648), 1i), vec4<f32>(1000f, 957f, -1153f, -1000f), vec3<i32>(10609i, 0i, 1i), vec2<u32>(1u, 1u)), Struct_1(vec3<i32>(1i, -8949i, 7995i), vec4<f32>(365f, 477f, 1129f, -1116f), vec3<i32>(31808i, -41723i, 8080i), vec2<u32>(25745u, 4294967295u)), Struct_1(vec3<i32>(-15838i, 0i, 0i), vec4<f32>(1443f, 203f, -883f, 1062f), vec3<i32>(16401i, -1i, -58882i), vec2<u32>(4294967295u, 7311u)), Struct_1(vec3<i32>(0i, -21771i, -14991i), vec4<f32>(679f, 1005f, -390f, -419f), vec3<i32>(-13984i, i32(-2147483648), -1i), vec2<u32>(48803u, 4294967295u)), Struct_1(vec3<i32>(23442i, 0i, 1i), vec4<f32>(356f, 563f, -893f, 1000f), vec3<i32>(-2689i, -40009i, 30151i), vec2<u32>(107635u, 4294967295u)));

var<private> global4: array<vec4<u32>, 29> = array<vec4<u32>, 29>(vec4<u32>(24219u, 86274u, 4294967295u, 78119u), vec4<u32>(4294967295u, 3271u, 4294967295u, 1u), vec4<u32>(34081u, 4294967295u, 4294967295u, 12733u), vec4<u32>(16059u, 14062u, 4294967295u, 4294967295u), vec4<u32>(19228u, 0u, 69766u, 1u), vec4<u32>(21324u, 33234u, 18434u, 40517u), vec4<u32>(325u, 0u, 74653u, 48028u), vec4<u32>(0u, 4294967295u, 29963u, 29515u), vec4<u32>(1u, 5431u, 1u, 12011u), vec4<u32>(84986u, 0u, 24691u, 43674u), vec4<u32>(81558u, 1u, 0u, 0u), vec4<u32>(4294967295u, 4294967295u, 12931u, 0u), vec4<u32>(63947u, 0u, 1u, 65976u), vec4<u32>(69108u, 6122u, 4294967295u, 1u), vec4<u32>(4294967295u, 53509u, 8311u, 17875u), vec4<u32>(17143u, 56165u, 38821u, 14560u), vec4<u32>(33563u, 36477u, 4944u, 4294967295u), vec4<u32>(59743u, 9366u, 1u, 4294967295u), vec4<u32>(42219u, 26074u, 0u, 1u), vec4<u32>(41288u, 4294967295u, 75571u, 1u), vec4<u32>(1u, 31025u, 13144u, 0u), vec4<u32>(4602u, 40366u, 1u, 1u), vec4<u32>(0u, 0u, 5556u, 4294967295u), vec4<u32>(25585u, 32893u, 31169u, 4294967295u), vec4<u32>(1u, 4294967295u, 4294967295u, 29640u), vec4<u32>(0u, 6531u, 4680u, 65262u), vec4<u32>(1u, 0u, 38920u, 1u), vec4<u32>(4294967295u, 1u, 6912u, 81136u), vec4<u32>(0u, 71753u, 1u, 0u));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: i32, arg_1: Struct_4, arg_2: u32) -> bool {
    global4 = array<vec4<u32>, 29>();
    global2 = global0.d.d.x;
    return true;
}

fn func_2(arg_0: vec4<u32>, arg_1: u32, arg_2: Struct_4) -> bool {
    let var_0 = Struct_2(select(!vec4<bool>(true, true, func_3(-2147483647i, Struct_4(true), arg_0.x), true & global0.a.x), select(global0.a, !vec4<bool>(false, arg_2.a, false, global0.a.x), select(global0.a, global0.a, true)), arg_2.a), vec3<u32>(arg_1, 1u, _wgslsmith_add_u32(u_input.a, global0.d.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(547f + _wgslsmith_f_op_f32(945f * -681f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c)))), global3[_wgslsmith_index_u32(arg_1, 31u)], global0.e);
    var var_1 = _wgslsmith_f_op_f32(max(-632f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c))))))));
    let var_2 = Struct_3(var_0, _wgslsmith_mod_vec2_u32(global0.b.xx, vec2<u32>(4294967295u, 0u) ^ global0.b.yy) << (_wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(arg_0.ww & vec2<u32>(arg_0.x, global0.e.d.x), abs(var_0.d.d)), ~vec2<u32>(48216u, var_0.d.d.x)) % vec2<u32>(32u)), Struct_2(!vec4<bool>(var_0.a.x, arg_2.a, !global0.a.x, arg_2.a), arg_0.xwz, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(global0.e.b.x)), 133f)), global3[_wgslsmith_index_u32(4294967295u, 31u)], global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(~u_input.a, abs(4294967295u) & select(u_input.c, var_0.e.d.x, arg_2.a)), 31u)]));
    let var_3 = arg_2;
    var var_4 = all(select(var_0.a, select(var_2.a.a, global0.a, false), var_2.c.a));
    return any(!select(vec3<bool>(global0.a.x, true, !var_2.a.a.x), var_0.a.xwx, select(true, any(var_0.a.xy), global0.a.x)));
}

fn func_1(arg_0: vec4<f32>, arg_1: f32, arg_2: i32) -> bool {
    let var_0 = vec2<bool>(!(true || (arg_0.x == _wgslsmith_f_op_f32(-arg_1))), func_2(~_wgslsmith_div_vec4_u32(vec4<u32>(17702u, 4294967295u, 1u, u_input.a), vec4<u32>(0u, 0u, 35058u, 116957u)), max(~10287u, ~0u), Struct_4(global0.a.x)) & (!global0.a.x != true));
    global2 = u_input.a;
    var var_1 = Struct_5(global0.b, firstLeadingBit(firstTrailingBit(1u) | ~global0.e.d.x) & ~global0.b.x, global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(global0.b.x, abs(_wgslsmith_dot_vec3_u32(select(vec3<u32>(68287u, 20928u, 16396u), global0.b, vec3<bool>(var_0.x, true, var_0.x)), vec3<u32>(global0.d.d.x, u_input.a, global0.e.d.x)))), 31u)], !select(select(vec3<bool>(var_0.x, true, global0.a.x), vec3<bool>(global0.a.x, true, false), true), !vec3<bool>(global0.a.x, global0.a.x, global0.a.x), any(global0.a)));
    var var_2 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(max(arg_0.wz, arg_0.yw))))));
    var var_3 = -select(vec4<i32>(global0.e.a.x, _wgslsmith_dot_vec3_i32(var_1.c.a, var_1.c.c), ~arg_2, var_1.c.c.x), (vec4<i32>(-5503i, global0.e.c.x, global0.e.c.x, u_input.b) >> (global4[_wgslsmith_index_u32(34543u, 29u)] % vec4<u32>(32u))) & reverseBits(vec4<i32>(global0.d.c.x, 2147483647i, 20586i, u_input.b)), global0.a) >> ((firstTrailingBit(vec4<u32>(min(var_1.a.x, global0.b.x), 22794u, u_input.a | 0u, 0u)) | global1[_wgslsmith_index_u32(~(~1u), 32u)]) % vec4<u32>(32u));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<vec4<u32>, 29>();
    var var_0 = vec4<bool>(any(select(!global0.a, vec4<bool>(false, all(global0.a.wzz), false, any(global0.a.xyx)), select(select(global0.a, vec4<bool>(global0.a.x, global0.a.x, global0.a.x, global0.a.x), global0.a), !vec4<bool>(true, global0.a.x, global0.a.x, global0.a.x), !global0.a))), true, true, !(!func_1(_wgslsmith_div_vec4_f32(global0.e.b, global0.d.b), _wgslsmith_f_op_f32(global0.e.b.x * 716f), 1i)));
    global0 = Struct_2(select(global0.a, select(select(!vec4<bool>(global0.a.x, true, false, true), vec4<bool>(var_0.x, global0.a.x, global0.a.x, global0.a.x), any(var_0.wwx)), vec4<bool>(var_0.x, true, all(vec3<bool>(global0.a.x, true, true)), var_0.x), var_0.x), any(vec4<bool>(false, false, u_input.b == global0.e.c.x, true))), ~global0.b, _wgslsmith_f_op_f32(min(global0.c, -642f)), global0.e, global0.e);
    global2 = ~(~u_input.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-global0.e.b.xwx));
}

