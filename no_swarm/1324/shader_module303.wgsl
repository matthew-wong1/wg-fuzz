struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: i32,
    e: u32,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 5>;

var<private> global1: array<vec4<u32>, 1> = array<vec4<u32>, 1>(vec4<u32>(37798u, 0u, 4294967295u, 1092u));

var<private> global2: array<Struct_1, 31>;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> u32 {
    let var_0 = select(~(_wgslsmith_sub_i32(22845i >> (u_input.a % 32u), abs(-6056i)) & abs(max(8646i, -2147483647i))), 0i, false);
    global0 = array<Struct_3, 5>();
    var var_1 = global0[_wgslsmith_index_u32(1u, 5u)];
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-1288f))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-2183f)), _wgslsmith_f_op_f32(1f * -276f), true)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(1276f + 306f)))));
    let var_3 = vec4<u32>(var_1.a, _wgslsmith_mod_u32(~u_input.a & (var_1.a >> (9306u % 32u)), reverseBits(1u)), ~(~abs(var_1.a)), u_input.a & ~(var_1.a ^ var_1.a)) << (reverseBits(countOneBits(select(_wgslsmith_mult_vec4_u32(global1[_wgslsmith_index_u32(u_input.a, 1u)], global1[_wgslsmith_index_u32(var_1.a, 1u)]), _wgslsmith_mult_vec4_u32(global1[_wgslsmith_index_u32(8085u, 1u)], global1[_wgslsmith_index_u32(u_input.a, 1u)]), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true))))) % vec4<u32>(32u));
    return 4294967295u;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec2<u32>) -> Struct_2 {
    var var_0 = arg_0;
    var_0 = Struct_1(vec4<i32>(-13614i, ~(-12667i), 1i, 818i) & max(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.a.x, -4065i), var_0.a.wx), _wgslsmith_mult_i32(11456i, -38699i), 29441i, _wgslsmith_div_i32(-5642i, -11147i)), reverseBits(var_0.a)));
    let var_1 = _wgslsmith_sub_u32(_wgslsmith_mod_u32(_wgslsmith_mult_u32(firstTrailingBit(firstTrailingBit(u_input.a)), 5477u), max(7766u, (u_input.a & u_input.a) & ~arg_2.x)), max(~func_3() << (countOneBits(_wgslsmith_mod_u32(u_input.a, 1u)) % 32u), max(~(4294967295u << (arg_1.a % 32u)), 1u)));
    var var_2 = Struct_1(var_0.a);
    let var_3 = var_0.a.x;
    return Struct_2(u_input.a, -6939i, _wgslsmith_div_vec3_i32(~vec3<i32>(-1i, -45486i, 56985i), (arg_0.a.zyx ^ vec3<i32>(-28582i, -37912i, -2147483647i)) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, arg_2.x, u_input.a), vec3<u32>(u_input.a, var_1, 48614u)) % vec3<u32>(32u))) ^ (var_2.a.xwz ^ select(arg_0.a.yxx ^ arg_0.a.yzy, _wgslsmith_mod_vec3_i32(var_2.a.yxx, vec3<i32>(var_2.a.x, var_0.a.x, arg_0.a.x)), select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), true))), var_0.a.x >> ((_wgslsmith_div_u32(reverseBits(1459u), u_input.a) | u_input.a) % 32u), u_input.a << (31916u % 32u));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec3<f32>) -> vec4<i32> {
    let var_0 = Struct_3(max(~_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(u_input.a, 81651u)), ~u_input.a), func_3()));
    var var_1 = countOneBits(_wgslsmith_add_vec2_u32(vec2<u32>(9339u, arg_0.e), ~abs(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, var_0.a), vec2<u32>(u_input.a, 1u)))));
    var var_2 = Struct_3(max(0u, ~1u));
    var var_3 = 641f;
    let var_4 = -1323f;
    return reverseBits(vec4<i32>(-2147483647i, ~arg_0.c.x, arg_1.a.x, arg_1.a.x | ~arg_0.c.x) | (_wgslsmith_div_vec4_i32(arg_1.a ^ arg_1.a, vec4<i32>(3021i, arg_1.a.x, arg_0.c.x, arg_1.a.x)) << (vec4<u32>(var_0.a ^ 4294967295u, 4555u >> (var_2.a % 32u), 4294967295u, countOneBits(var_1.x)) % vec4<u32>(32u))));
}

fn func_1() -> vec4<i32> {
    var var_0 = 802f;
    let var_1 = true;
    global2 = array<Struct_1, 31>();
    var var_2 = 23745u;
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -1750f);
    return _wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(~vec2<i32>(0i, -25345i), max(vec2<i32>(2147483647i, 0i), vec2<i32>(1148i, -2147483647i))), min(~0i, 1i), -2147483647i, min(-31549i, select(-1i, -2147483647i, true))), ~vec4<i32>(-1i, ~24706i, reverseBits(15824i), min(-2147483647i, -1i)), func_4(func_2(Struct_1(vec4<i32>(-2147483647i, -9347i, 9190i, -13795i)), Struct_3(u_input.a), vec2<u32>(1u, u_input.a)), Struct_1(vec4<i32>(1i, 56782i, 0i, -28850i)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1059f, -688f, 134f)))) | -vec4<i32>(1i, 1i, 1i, 1i)), select(_wgslsmith_div_vec4_i32(~min(vec4<i32>(-15156i, -34686i, -2147483647i, -2147483647i), vec4<i32>(-2147483647i, -2147483647i, -5379i, 7936i)), -_wgslsmith_sub_vec4_i32(vec4<i32>(0i, -47872i, -46065i, -17399i), vec4<i32>(-43942i, -12843i, -3252i, -35544i))), -_wgslsmith_add_vec4_i32(vec4<i32>(-3176i, -45170i, -48984i, -22739i) << (vec4<u32>(u_input.a, u_input.a, u_input.a, 19806u) % vec4<u32>(32u)), -vec4<i32>(22i, 30682i, -1i, 35597i)), true | var_1));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<u32>, 1>();
    let var_0 = reverseBits(func_1());
    let var_1 = global2[_wgslsmith_index_u32(~firstLeadingBit(firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 13051u) >> (vec2<u32>(u_input.a, 61084u) % vec2<u32>(32u)), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, 99358u), vec2<u32>(34047u, u_input.a))))), 31u)];
    var var_2 = Struct_2(~_wgslsmith_mod_u32(60160u, func_2(global2[_wgslsmith_index_u32(1u, 31u)], Struct_3(90302u), select(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a), vec2<bool>(true, true))).a), -16037i, vec3<i32>(var_1.a.x, ~1i, _wgslsmith_mult_i32(var_1.a.x, _wgslsmith_mod_i32(i32(-1i) * -18939i, 13452i))), var_1.a.x, 24879u);
    let var_3 = Struct_1(abs(_wgslsmith_mult_vec4_i32(vec4<i32>(-37159i << (var_2.a % 32u), firstTrailingBit(var_0.x), -var_2.b, 10866i), firstTrailingBit(-var_0))));
    let var_4 = !vec3<bool>(true, true, all(vec4<bool>(true, any(vec3<bool>(true, true, false)), false, true)));
    var var_5 = Struct_1(firstLeadingBit(reverseBits(var_0)));
    let var_6 = vec3<u32>(1u, ~_wgslsmith_div_u32(reverseBits(337u << (var_2.e % 32u)), ~(var_2.e << (0u % 32u))), 1u);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, u_input.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1282f, 1149f)))))), _wgslsmith_div_i32(~max(~var_1.a.x, var_1.a.x), 1i));
}

