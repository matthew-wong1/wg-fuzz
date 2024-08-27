struct Struct_1 {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: vec4<u32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: i32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(-1i, i32(-2147483648), -22227i, -1i);

var<private> global1: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(vec3<u32>(4294967295u, 4294967295u, 6916u), vec4<u32>(4294967295u, 4294967295u, 132318u, 0u), vec4<i32>(-51512i, 0i, 41788i, 0i), vec4<u32>(13091u, 1u, 14483u, 4294967295u), vec2<f32>(-302f, 1111f)), Struct_1(vec3<u32>(4294967295u, 34016u, 4294967295u), vec4<u32>(46901u, 12224u, 0u, 1u), vec4<i32>(0i, 2147483647i, 1i, -1i), vec4<u32>(335u, 4294967295u, 0u, 0u), vec2<f32>(1000f, -1728f)), Struct_1(vec3<u32>(4294967295u, 0u, 96395u), vec4<u32>(0u, 74129u, 33686u, 53917u), vec4<i32>(4943i, 0i, 28274i, -195i), vec4<u32>(4294967295u, 85512u, 10318u, 1u), vec2<f32>(894f, -506f)), Struct_1(vec3<u32>(1u, 4294967295u, 41210u), vec4<u32>(0u, 1u, 4294967295u, 56319u), vec4<i32>(1i, 2147483647i, -10135i, 22800i), vec4<u32>(14126u, 9365u, 9857u, 4294967295u), vec2<f32>(1000f, -239f)), Struct_1(vec3<u32>(18774u, 23190u, 32562u), vec4<u32>(31984u, 54639u, 0u, 4294967295u), vec4<i32>(-1i, 0i, 40004i, 0i), vec4<u32>(11609u, 72490u, 0u, 49516u), vec2<f32>(-834f, 210f)), Struct_1(vec3<u32>(96585u, 4294967295u, 4294967295u), vec4<u32>(1u, 0u, 7844u, 73012u), vec4<i32>(-1i, -17238i, 8260i, -40861i), vec4<u32>(4294967295u, 4294967295u, 80796u, 4294967295u), vec2<f32>(-518f, -759f)), Struct_1(vec3<u32>(2701u, 48981u, 1u), vec4<u32>(1u, 9853u, 22751u, 28343u), vec4<i32>(2147483647i, -922i, -36628i, 11454i), vec4<u32>(2059u, 16571u, 83699u, 22914u), vec2<f32>(-529f, 962f)), Struct_1(vec3<u32>(4294967295u, 1u, 40583u), vec4<u32>(4294967295u, 4294967295u, 1u, 1u), vec4<i32>(i32(-2147483648), 2147483647i, 1156i, 0i), vec4<u32>(0u, 49415u, 4294967295u, 3708u), vec2<f32>(574f, 297f)), Struct_1(vec3<u32>(4294967295u, 4294967295u, 0u), vec4<u32>(4294967295u, 0u, 70709u, 37295u), vec4<i32>(2147483647i, i32(-2147483648), 154i, 63290i), vec4<u32>(1u, 1u, 1u, 17802u), vec2<f32>(-1342f, -557f)), Struct_1(vec3<u32>(18635u, 1u, 4294967295u), vec4<u32>(1u, 1u, 76070u, 17008u), vec4<i32>(i32(-2147483648), 8174i, i32(-2147483648), 44160i), vec4<u32>(4294967295u, 1u, 1u, 6991u), vec2<f32>(-544f, -234f)), Struct_1(vec3<u32>(12850u, 1u, 1u), vec4<u32>(18743u, 0u, 2919u, 32104u), vec4<i32>(-1i, 2147483647i, i32(-2147483648), -8062i), vec4<u32>(84438u, 81493u, 11783u, 4294967295u), vec2<f32>(736f, -1328f)), Struct_1(vec3<u32>(0u, 4294967295u, 1u), vec4<u32>(4294967295u, 36721u, 1u, 0u), vec4<i32>(-10076i, 23288i, i32(-2147483648), 1i), vec4<u32>(0u, 16351u, 29591u, 4294967295u), vec2<f32>(-950f, 1000f)), Struct_1(vec3<u32>(25042u, 51372u, 0u), vec4<u32>(0u, 634u, 4294967295u, 1u), vec4<i32>(2147483647i, i32(-2147483648), -27629i, -11041i), vec4<u32>(67752u, 0u, 1u, 1u), vec2<f32>(208f, 1309f)), Struct_1(vec3<u32>(0u, 1u, 1u), vec4<u32>(11450u, 0u, 1u, 47317u), vec4<i32>(-35042i, 2147483647i, -1i, 2147483647i), vec4<u32>(1u, 0u, 1096u, 11515u), vec2<f32>(-1142f, -191f)), Struct_1(vec3<u32>(8537u, 1u, 618u), vec4<u32>(55401u, 4294967295u, 44223u, 2524u), vec4<i32>(7874i, i32(-2147483648), 37583i, 0i), vec4<u32>(5750u, 18928u, 0u, 48502u), vec2<f32>(1597f, -455f)), Struct_1(vec3<u32>(1u, 4294967295u, 52979u), vec4<u32>(0u, 4294967295u, 4294967295u, 40859u), vec4<i32>(0i, 58432i, 57202i, 0i), vec4<u32>(4294967295u, 120861u, 26819u, 0u), vec2<f32>(773f, -145f)), Struct_1(vec3<u32>(1u, 44482u, 17530u), vec4<u32>(1u, 0u, 55825u, 1u), vec4<i32>(64899i, -49803i, 2147483647i, i32(-2147483648)), vec4<u32>(0u, 0u, 0u, 28300u), vec2<f32>(1234f, -342f)), Struct_1(vec3<u32>(1u, 0u, 4328u), vec4<u32>(44218u, 0u, 45648u, 27061u), vec4<i32>(-1i, -33667i, 61672i, 1i), vec4<u32>(1u, 42395u, 4294967295u, 4294967295u), vec2<f32>(-649f, -402f)), Struct_1(vec3<u32>(24306u, 93261u, 4294967295u), vec4<u32>(1u, 4294967295u, 29499u, 67660u), vec4<i32>(2147483647i, -1i, i32(-2147483648), 0i), vec4<u32>(1u, 11675u, 35637u, 4327u), vec2<f32>(-2132f, -1644f)), Struct_1(vec3<u32>(25823u, 4294967295u, 0u), vec4<u32>(7528u, 1u, 54487u, 28084u), vec4<i32>(19411i, -17539i, 0i, 1i), vec4<u32>(58434u, 0u, 82439u, 23246u), vec2<f32>(753f, 840f)), Struct_1(vec3<u32>(4294967295u, 28281u, 1u), vec4<u32>(0u, 12787u, 36553u, 4294967295u), vec4<i32>(i32(-2147483648), -19922i, 1i, 0i), vec4<u32>(4294967295u, 13353u, 19636u, 36232u), vec2<f32>(-181f, -306f)), Struct_1(vec3<u32>(24360u, 29720u, 4294967295u), vec4<u32>(1u, 4153u, 1u, 1u), vec4<i32>(52564i, 0i, -4244i, 26189i), vec4<u32>(16044u, 3624u, 4294967295u, 47668u), vec2<f32>(-175f, -522f)), Struct_1(vec3<u32>(10055u, 0u, 1u), vec4<u32>(8179u, 4294967295u, 0u, 1u), vec4<i32>(1i, i32(-2147483648), -40817i, 0i), vec4<u32>(28415u, 4294967295u, 36341u, 24570u), vec2<f32>(2072f, -1046f)), Struct_1(vec3<u32>(31325u, 24288u, 0u), vec4<u32>(0u, 4294967295u, 40435u, 58657u), vec4<i32>(2147483647i, -18948i, -1391i, 20206i), vec4<u32>(42558u, 10607u, 0u, 4294967295u), vec2<f32>(697f, -1901f)), Struct_1(vec3<u32>(5611u, 4294967295u, 31531u), vec4<u32>(1u, 7349u, 0u, 16253u), vec4<i32>(-63983i, -29890i, -16749i, 27434i), vec4<u32>(18268u, 1u, 4294967295u, 27090u), vec2<f32>(614f, 1346f)), Struct_1(vec3<u32>(0u, 10527u, 1u), vec4<u32>(0u, 4294967295u, 0u, 30352u), vec4<i32>(36423i, 37308i, 40392i, -1i), vec4<u32>(46818u, 25713u, 0u, 15543u), vec2<f32>(-151f, -1000f)));

var<private> global2: i32;

var<private> global3: bool;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: vec4<i32>) -> i32 {
    global2 = select(u_input.b, ~(-firstLeadingBit(u_input.b) | global0.x), true);
    var var_0 = Struct_2(select(_wgslsmith_clamp_vec2_i32(arg_2.yw >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, arg_0), vec2<u32>(u_input.a, arg_0), vec2<u32>(arg_0, u_input.a)) % vec2<u32>(32u)), min(global0.xy & vec2<i32>(global0.x, u_input.b), _wgslsmith_mod_vec2_i32(vec2<i32>(arg_2.x, global0.x), global0.wy)), vec2<i32>(_wgslsmith_add_i32(global0.x, global0.x), _wgslsmith_add_i32(arg_2.x, -47246i))), _wgslsmith_mult_vec2_i32(vec2<i32>(-1i, u_input.b) ^ firstTrailingBit(vec2<i32>(-1i, 83096i)), ~select(vec2<i32>(2147483647i, -62492i), global0.yw, vec2<bool>(true, false))), _wgslsmith_f_op_f32(f32(-1f) * -1588f) >= _wgslsmith_div_f32(arg_1, -1133f)), global1[_wgslsmith_index_u32(countOneBits(~_wgslsmith_sub_u32(min(u_input.a, arg_0), _wgslsmith_mod_u32(u_input.a, u_input.a))), 26u)]);
    global0 = arg_2;
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -765f), _wgslsmith_f_op_f32(floor(229f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-1000f)))) + var_0.b.e.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1129f))));
    global0 = ~firstLeadingBit(vec4<i32>(0i, -59108i, u_input.b, arg_2.x));
    return max(arg_2.x >> (select(4294967295u, 120108u, all(vec4<bool>(true, false, true, true)) | any(vec2<bool>(true, false))) % 32u), ~arg_2.x);
}

fn func_2(arg_0: Struct_4) -> u32 {
    let var_0 = vec4<i32>(u_input.b, 2147483647i, ~_wgslsmith_mult_i32(_wgslsmith_div_i32(_wgslsmith_sub_i32(u_input.b, -6072i), 1i), ~(~(-11080i))), ~_wgslsmith_add_i32(44402i, func_3(u_input.a, arg_0.a.b.e.x, arg_0.a.b.c) & -23891i));
    global2 = firstLeadingBit(0i);
    let var_1 = vec2<f32>(arg_0.a.b.e.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1238f, _wgslsmith_f_op_f32(abs(arg_0.a.b.e.x)))));
    let var_2 = -821f;
    var var_3 = ~(~1u);
    return u_input.a;
}

fn func_1(arg_0: vec2<f32>) -> Struct_1 {
    let var_0 = max(0u, 1u);
    var var_1 = Struct_2(vec2<i32>(-1i) * -select(vec2<i32>(global0.x, u_input.b), min(global0.xz, vec2<i32>(1i, 50798i)), vec2<bool>(true, true)), global1[_wgslsmith_index_u32(~func_2(Struct_4(Struct_2(global0.xx, global1[_wgslsmith_index_u32(u_input.a, 26u)]), 7413u)) << (_wgslsmith_sub_u32(_wgslsmith_add_u32(select(4294967295u, 4294967295u, true), 1u), 31635u) % 32u), 26u)]);
    global2 = 1i;
    var_1 = Struct_2(countOneBits(var_1.a), Struct_1(vec3<u32>(~var_1.b.a.x, _wgslsmith_div_u32(var_1.b.d.x, 42439u) | ~var_0, reverseBits(~49582u)), max(vec4<u32>(firstLeadingBit(4294967295u), ~31907u, 4294967295u, 1782u), var_1.b.d), -var_1.b.c, ~vec4<u32>(34878u, var_0, 33795u, countOneBits(u_input.a)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b.e.x, var_1.b.e.x))))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -975f) - _wgslsmith_f_op_f32(-1f)) + _wgslsmith_f_op_f32(-arg_0.x));
    return global1[_wgslsmith_index_u32(func_2(Struct_4(Struct_2(global0.xz, var_1.b), u_input.a)), 26u)];
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec4<i32>(1i, 1i, global0.x, u_input.b);
    let var_0 = vec2<i32>(global0.x, -2147483647i);
    let var_1 = vec3<i32>(~max(u_input.b, -2147483647i), global0.x, ~47485i);
    var var_2 = true;
    let var_3 = Struct_2(vec2<i32>(_wgslsmith_clamp_i32(min(_wgslsmith_sub_i32(2147483647i, var_1.x), 0i), abs(4547i), var_1.x), _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(var_1, global0.wxz), vec3<i32>(-2147483647i, u_input.b, var_1.x) << (vec3<u32>(44186u, 60270u, 10421u) % vec3<u32>(32u))), ~var_1.x | global0.x)), func_1(vec2<f32>(-200f, 591f)));
    var var_4 = _wgslsmith_f_op_f32(floor(var_3.b.e.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_u32(vec3<u32>(~var_3.b.d.x, 1u, ~4294967295u), ~vec3<u32>(u_input.a, 284u, 8524u)) | vec3<u32>(abs(u_input.a), 1u, 0u), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -502f), var_3.b.e.x, -268f))), ~(~(-11546i)), _wgslsmith_add_u32(4294967295u, ~(func_2(Struct_4(Struct_2(vec2<i32>(-2147483647i, 62402i), Struct_1(var_3.b.b.yzy, var_3.b.d, vec4<i32>(21725i, var_1.x, var_1.x, var_0.x), vec4<u32>(var_3.b.a.x, 4294967295u, var_3.b.a.x, var_3.b.b.x), vec2<f32>(var_3.b.e.x, var_3.b.e.x))), var_3.b.b.x)) >> (var_3.b.b.x % 32u))));
}

