struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec2<f32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 26> = array<Struct_2, 26>(Struct_2(Struct_1(vec2<u32>(7554u, 4294967295u), 55752u, 31339u), Struct_1(vec2<u32>(59283u, 1u), 4294967295u, 4294967295u), Struct_1(vec2<u32>(34659u, 1u), 4294967295u, 24006u), vec4<i32>(14785i, 2147483647i, i32(-2147483648), i32(-2147483648))), Struct_2(Struct_1(vec2<u32>(18079u, 5657u), 48314u, 4294967295u), Struct_1(vec2<u32>(66982u, 1u), 41198u, 30592u), Struct_1(vec2<u32>(36152u, 1u), 32556u, 37301u), vec4<i32>(i32(-2147483648), -5901i, 82605i, 0i)), Struct_2(Struct_1(vec2<u32>(15713u, 40989u), 77494u, 49425u), Struct_1(vec2<u32>(52043u, 27485u), 4294967295u, 102783u), Struct_1(vec2<u32>(47515u, 98061u), 26842u, 12088u), vec4<i32>(0i, 1i, 3637i, -23223i)), Struct_2(Struct_1(vec2<u32>(4450u, 0u), 0u, 1u), Struct_1(vec2<u32>(4294967295u, 14275u), 0u, 47937u), Struct_1(vec2<u32>(0u, 738u), 75663u, 4294967295u), vec4<i32>(37279i, 2147483647i, -4929i, -22207i)), Struct_2(Struct_1(vec2<u32>(10154u, 4294967295u), 28358u, 75815u), Struct_1(vec2<u32>(36780u, 14847u), 1u, 97323u), Struct_1(vec2<u32>(4294967295u, 0u), 18296u, 13665u), vec4<i32>(2147483647i, -1i, i32(-2147483648), 1i)), Struct_2(Struct_1(vec2<u32>(76313u, 4294967295u), 21209u, 0u), Struct_1(vec2<u32>(20395u, 2150u), 0u, 0u), Struct_1(vec2<u32>(1u, 11067u), 88118u, 4294967295u), vec4<i32>(45959i, 0i, -11347i, i32(-2147483648))), Struct_2(Struct_1(vec2<u32>(1u, 41116u), 12708u, 4294967295u), Struct_1(vec2<u32>(35069u, 14429u), 42091u, 13615u), Struct_1(vec2<u32>(20313u, 0u), 16133u, 13341u), vec4<i32>(22955i, 22705i, 1i, 0i)), Struct_2(Struct_1(vec2<u32>(4128u, 23456u), 1u, 9804u), Struct_1(vec2<u32>(4294967295u, 65060u), 14252u, 99788u), Struct_1(vec2<u32>(0u, 4294967295u), 19562u, 30106u), vec4<i32>(-1i, -22643i, 44240i, -48457i)), Struct_2(Struct_1(vec2<u32>(0u, 1u), 4294967295u, 62695u), Struct_1(vec2<u32>(43179u, 1u), 1u, 4294967295u), Struct_1(vec2<u32>(4294967295u, 24141u), 1u, 0u), vec4<i32>(0i, 1i, -59020i, 1i)), Struct_2(Struct_1(vec2<u32>(0u, 4294967295u), 1u, 49855u), Struct_1(vec2<u32>(4294967295u, 4294967295u), 11560u, 43336u), Struct_1(vec2<u32>(62767u, 38704u), 29175u, 0u), vec4<i32>(1i, 1i, -1i, -1238i)), Struct_2(Struct_1(vec2<u32>(3531u, 0u), 0u, 0u), Struct_1(vec2<u32>(1u, 4294967295u), 10220u, 4294967295u), Struct_1(vec2<u32>(1u, 98653u), 4294967295u, 25171u), vec4<i32>(-8528i, 2147483647i, 12680i, -1i)), Struct_2(Struct_1(vec2<u32>(28997u, 10799u), 38523u, 1u), Struct_1(vec2<u32>(33887u, 12861u), 11607u, 4294967295u), Struct_1(vec2<u32>(1u, 1u), 61985u, 18534u), vec4<i32>(23998i, -1i, 2147483647i, 12773i)), Struct_2(Struct_1(vec2<u32>(39249u, 4294967295u), 65643u, 1u), Struct_1(vec2<u32>(1u, 0u), 4294967295u, 0u), Struct_1(vec2<u32>(45417u, 0u), 1u, 67204u), vec4<i32>(i32(-2147483648), -84996i, -1i, 13543i)), Struct_2(Struct_1(vec2<u32>(4294967295u, 0u), 34223u, 63821u), Struct_1(vec2<u32>(41396u, 4294967295u), 983u, 4294967295u), Struct_1(vec2<u32>(1u, 0u), 4294967295u, 26234u), vec4<i32>(12091i, -1i, -1i, -1i)), Struct_2(Struct_1(vec2<u32>(0u, 16572u), 20378u, 69101u), Struct_1(vec2<u32>(66965u, 1u), 91409u, 7500u), Struct_1(vec2<u32>(17894u, 1u), 1u, 50910u), vec4<i32>(-11861i, i32(-2147483648), i32(-2147483648), 40099i)), Struct_2(Struct_1(vec2<u32>(4294967295u, 1u), 38953u, 71560u), Struct_1(vec2<u32>(27786u, 25982u), 1u, 37051u), Struct_1(vec2<u32>(66497u, 19431u), 39436u, 91015u), vec4<i32>(0i, -55887i, 1i, 53839i)), Struct_2(Struct_1(vec2<u32>(0u, 19311u), 4294967295u, 69904u), Struct_1(vec2<u32>(30519u, 1u), 0u, 4294967295u), Struct_1(vec2<u32>(51420u, 0u), 4294967295u, 0u), vec4<i32>(1i, -26276i, 0i, -64931i)), Struct_2(Struct_1(vec2<u32>(9360u, 38123u), 35265u, 47716u), Struct_1(vec2<u32>(13745u, 4294967295u), 4294967295u, 0u), Struct_1(vec2<u32>(30209u, 1u), 0u, 0u), vec4<i32>(1i, i32(-2147483648), 12527i, -12560i)), Struct_2(Struct_1(vec2<u32>(4294967295u, 8071u), 4294967295u, 0u), Struct_1(vec2<u32>(54636u, 85639u), 77654u, 0u), Struct_1(vec2<u32>(4294967295u, 1u), 0u, 25771u), vec4<i32>(0i, 2147483647i, 64440i, 12273i)), Struct_2(Struct_1(vec2<u32>(57831u, 21642u), 45672u, 33800u), Struct_1(vec2<u32>(3786u, 86216u), 100372u, 5069u), Struct_1(vec2<u32>(4294967295u, 8645u), 4294967295u, 0u), vec4<i32>(-1i, 0i, 72444i, i32(-2147483648))), Struct_2(Struct_1(vec2<u32>(38030u, 4294967295u), 4294967295u, 48488u), Struct_1(vec2<u32>(88397u, 1u), 0u, 13111u), Struct_1(vec2<u32>(17230u, 0u), 0u, 4294967295u), vec4<i32>(2147483647i, 31379i, 16022i, 2147483647i)), Struct_2(Struct_1(vec2<u32>(4294967295u, 4294967295u), 4294967295u, 10242u), Struct_1(vec2<u32>(40249u, 0u), 1u, 0u), Struct_1(vec2<u32>(100644u, 37158u), 9958u, 0u), vec4<i32>(i32(-2147483648), 57361i, -1i, 11123i)), Struct_2(Struct_1(vec2<u32>(10071u, 48156u), 0u, 1u), Struct_1(vec2<u32>(43159u, 4294967295u), 2514u, 28760u), Struct_1(vec2<u32>(53525u, 0u), 12874u, 0u), vec4<i32>(-15445i, 3885i, 21402i, 36285i)), Struct_2(Struct_1(vec2<u32>(37080u, 15761u), 3993u, 1u), Struct_1(vec2<u32>(6352u, 1u), 56507u, 43918u), Struct_1(vec2<u32>(9938u, 4294967295u), 4294967295u, 4294967295u), vec4<i32>(35267i, 1i, 1i, -8108i)), Struct_2(Struct_1(vec2<u32>(1u, 29793u), 933u, 16471u), Struct_1(vec2<u32>(0u, 1u), 0u, 10148u), Struct_1(vec2<u32>(86661u, 1u), 82085u, 9228u), vec4<i32>(0i, 1i, 0i, 0i)), Struct_2(Struct_1(vec2<u32>(4294967295u, 1u), 4294967295u, 4294967295u), Struct_1(vec2<u32>(64693u, 0u), 22689u, 4294967295u), Struct_1(vec2<u32>(37164u, 26028u), 62578u, 4294967295u), vec4<i32>(0i, 1i, 5173i, i32(-2147483648))));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: vec3<i32>) -> Struct_2 {
    let var_0 = arg_1.a;
    global0 = array<Struct_2, 26>();
    let var_1 = arg_0;
    let var_2 = global0[_wgslsmith_index_u32(53989u, 26u)];
    global0 = array<Struct_2, 26>();
    return Struct_2(var_2.c, var_2.c, arg_1, firstLeadingBit(min(select(var_2.d, vec4<i32>(u_input.c.x, 1i, arg_2.x, u_input.c.x), true), vec4<i32>(-10198i, 2147483647i, 2147483647i, var_2.d.x)) << ((_wgslsmith_sub_vec4_u32(vec4<u32>(1u, var_1, var_0.x, var_0.x), vec4<u32>(1u, arg_0, arg_0, 21484u)) >> (~vec4<u32>(var_1, 1u, arg_1.c, 6668u) % vec4<u32>(32u))) % vec4<u32>(32u))));
}

fn func_2(arg_0: Struct_2) -> vec2<f32> {
    let var_0 = vec2<i32>(u_input.c.x, 71003i);
    global0 = array<Struct_2, 26>();
    global0 = array<Struct_2, 26>();
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-681f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-2699f - _wgslsmith_f_op_f32(trunc(577f)))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(trunc(2030f)), -1510f)))));
    global0 = array<Struct_2, 26>();
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-659f * _wgslsmith_f_op_f32(-var_1.x)), var_1.x)));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec2<f32>, arg_2: vec2<u32>, arg_3: i32) -> f32 {
    global0 = array<Struct_2, 26>();
    var var_0 = vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_div_u32(_wgslsmith_sub_u32(arg_2.x, arg_2.x), ~u_input.b.x), 1u), arg_2.x, u_input.d.x, abs(abs(_wgslsmith_add_u32(arg_2.x, 4294967295u)))) | countOneBits(~(~vec4<u32>(39989u, 15737u, 1u, arg_2.x)));
    var_0 = firstLeadingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(2540u, ~arg_2.x, var_0.x, 1u), ~(~vec4<u32>(17851u, 4294967295u, arg_2.x, var_0.x)))) | _wgslsmith_sub_vec4_u32(~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(7441u, arg_2.x, u_input.a, u_input.d.x), vec4<u32>(arg_2.x, 36890u, 2986u, var_0.x), vec4<u32>(u_input.b.x, arg_2.x, 1u, 23713u))), ~vec4<u32>(_wgslsmith_clamp_u32(6758u, u_input.a, 4294967295u), var_0.x, ~var_0.x, ~48619u));
    let var_1 = select(select(vec2<bool>(arg_0.x, arg_0.x), vec2<bool>(any(vec4<bool>(true, false, arg_0.x, arg_0.x)) || arg_0.x, arg_0.x && true), select(!arg_0.x, any(!vec4<bool>(true, arg_0.x, true, true)), true)), vec2<bool>(any(arg_0.zy), arg_0.x), !(arg_3 == firstLeadingBit(countOneBits(u_input.c.x))));
    var var_2 = vec3<bool>(all(vec4<bool>(true, !(arg_2.x > 116974u), all(select(vec4<bool>(var_1.x, var_1.x, true, false), vec4<bool>(false, false, true, arg_0.x), vec4<bool>(true, true, false, true))), any(select(vec2<bool>(false, var_1.x), vec2<bool>(false, var_1.x), arg_0.yz)))), false, any(vec2<bool>(all(select(vec4<bool>(arg_0.x, var_1.x, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x), arg_0.x)), true)));
    return -314f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(1942f * _wgslsmith_f_op_f32(func_3(vec3<bool>(true, true, false), _wgslsmith_f_op_vec2_f32(func_2(func_1(u_input.d.x, Struct_1(vec2<u32>(u_input.b.x, 54006u), u_input.b.x, u_input.d.x), vec3<i32>(-9264i, u_input.c.x, u_input.c.x)))), firstLeadingBit(abs(vec2<u32>(1u, u_input.a))), ~(-u_input.c.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1383f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(475f - _wgslsmith_f_op_f32(-304f + 164f)) * -1203f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -409f) * _wgslsmith_f_op_f32(f32(-1f) * -437f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-754f)) * _wgslsmith_f_op_f32(-771f + -1037f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-299f, -1000f)))))), -381f);
    var var_1 = _wgslsmith_add_i32(u_input.c.x, -60155i);
    global0 = array<Struct_2, 26>();
    let var_2 = var_0.x;
    let var_3 = func_1(_wgslsmith_clamp_u32(~(~u_input.a) >> (u_input.d.x % 32u), firstTrailingBit(1u), firstLeadingBit(_wgslsmith_mult_u32(~1u, ~u_input.d.x))), func_1(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, ~u_input.b.x, func_1(u_input.d.x, Struct_1(vec2<u32>(u_input.a, 38982u), u_input.d.x, u_input.d.x), vec3<i32>(62819i, u_input.c.x, 0i)).b.b), vec3<u32>(u_input.a, 1u, u_input.a)), func_1(1u, Struct_1(_wgslsmith_mod_vec2_u32(u_input.b, vec2<u32>(4294967295u, u_input.b.x)), abs(u_input.d.x), u_input.d.x), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.c.x, u_input.c.x, -3728i) << (vec3<u32>(32589u, 108u, 3648u) % vec3<u32>(32u)), u_input.c.xww)).c, -abs(u_input.c.wxy) | vec3<i32>(abs(u_input.c.x), _wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(-2147483647i, 2147483647i, u_input.c.x, u_input.c.x)), _wgslsmith_div_i32(u_input.c.x, u_input.c.x))).a, -u_input.c.xwz).a;
    var_1 = ~(~u_input.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(func_1(1u, func_1(_wgslsmith_dot_vec2_u32(var_3.a << (vec2<u32>(1u, var_3.b) % vec2<u32>(32u)), vec2<u32>(var_3.a.x, 0u) << (u_input.d % vec2<u32>(32u))), func_1(1u, var_3, _wgslsmith_div_vec3_i32(vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x), u_input.c.yyz)).b, vec3<i32>(u_input.c.x, 1i, -29462i)).a, u_input.c.yyz).c.a.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.x, 241f, var_0.x), _wgslsmith_f_op_vec3_f32(var_0.xyx * var_0.zyz), false)))), var_0.xx, (u_input.c & ~(-u_input.c)) | vec4<i32>(countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, u_input.c.x), vec2<i32>(-69600i, u_input.c.x))), _wgslsmith_mod_i32(1i, -7614i), _wgslsmith_dot_vec3_i32(vec3<i32>(4248i, -1i, u_input.c.x), u_input.c.zxz), ~2147483647i));
}

