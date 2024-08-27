struct Struct_1 {
    a: bool,
    b: f32,
    c: vec3<i32>,
    d: bool,
    e: vec2<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec3<f32>,
    c: vec4<u32>,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
    c: Struct_3,
    d: f32,
}

struct Struct_5 {
    a: vec4<i32>,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 11> = array<Struct_5, 11>(Struct_5(vec4<i32>(i32(-2147483648), -1i, i32(-2147483648), -1i), false), Struct_5(vec4<i32>(-18205i, -1i, 0i, 1i), false), Struct_5(vec4<i32>(-22684i, 0i, 0i, -10758i), true), Struct_5(vec4<i32>(7869i, 2147483647i, 11827i, -1i), true), Struct_5(vec4<i32>(i32(-2147483648), 11344i, -20769i, -1i), true), Struct_5(vec4<i32>(-38963i, 10071i, -2943i, i32(-2147483648)), true), Struct_5(vec4<i32>(i32(-2147483648), 2147483647i, 2147483647i, 39033i), false), Struct_5(vec4<i32>(i32(-2147483648), 2147483647i, -21786i, -38777i), false), Struct_5(vec4<i32>(-4723i, 18882i, -51906i, i32(-2147483648)), false), Struct_5(vec4<i32>(-495i, i32(-2147483648), i32(-2147483648), -3189i), false), Struct_5(vec4<i32>(12958i, 1i, -1i, 50738i), true));

var<private> global1: array<vec3<i32>, 20> = array<vec3<i32>, 20>(vec3<i32>(-4238i, 1i, -44561i), vec3<i32>(17984i, -1i, -20878i), vec3<i32>(1i, -1i, i32(-2147483648)), vec3<i32>(i32(-2147483648), i32(-2147483648), -18303i), vec3<i32>(-24792i, -9192i, i32(-2147483648)), vec3<i32>(1i, -43142i, i32(-2147483648)), vec3<i32>(2147483647i, 1i, 1i), vec3<i32>(22844i, 1i, 1i), vec3<i32>(-1i, -33685i, -30166i), vec3<i32>(-2110i, 0i, 1i), vec3<i32>(i32(-2147483648), 2147483647i, -1i), vec3<i32>(1i, i32(-2147483648), 95705i), vec3<i32>(2147483647i, 0i, 59644i), vec3<i32>(-59013i, 0i, 48329i), vec3<i32>(i32(-2147483648), 3346i, -1i), vec3<i32>(-35277i, 24629i, -1i), vec3<i32>(2147483647i, 11297i, i32(-2147483648)), vec3<i32>(7212i, i32(-2147483648), 2147483647i), vec3<i32>(2147483647i, 1i, -47740i), vec3<i32>(-9346i, 2147483647i, -39384i));

var<private> global2: array<vec3<f32>, 9> = array<vec3<f32>, 9>(vec3<f32>(-543f, 1324f, 503f), vec3<f32>(1305f, -2676f, 909f), vec3<f32>(-548f, -626f, 179f), vec3<f32>(1000f, 965f, -175f), vec3<f32>(-138f, 1000f, 1000f), vec3<f32>(1505f, 690f, -454f), vec3<f32>(683f, -502f, 1307f), vec3<f32>(-769f, -796f, -285f), vec3<f32>(-1435f, 1884f, 119f));

var<private> global3: array<Struct_1, 22>;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_1(arg_0: i32, arg_1: Struct_5, arg_2: i32) -> Struct_3 {
    var var_0 = vec3<u32>(_wgslsmith_clamp_u32(31183u, 1u, abs(39754u)), ~(0u | _wgslsmith_dot_vec3_u32(~vec3<u32>(1138u, 0u, 0u), firstTrailingBit(vec3<u32>(4294967295u, 95137u, 0u)))), 0u);
    global0 = array<Struct_5, 11>();
    let var_1 = var_0.x;
    let var_2 = var_0.x >> (var_0.x % 32u);
    global2 = array<vec3<f32>, 9>();
    return Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(395f, -746f)))));
}

fn func_3() -> bool {
    var var_0 = true;
    let var_1 = max(u_input.b, _wgslsmith_div_vec4_i32(abs(-vec4<i32>(u_input.a, u_input.b.x, u_input.a, 32317i)), abs(vec4<i32>(u_input.a, 15067i, u_input.a, u_input.b.x) ^ vec4<i32>(0i, 2147483647i, 24459i, u_input.a))) << (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)));
    global1 = array<vec3<i32>, 20>();
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1247f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(-1427f)), _wgslsmith_f_op_f32(1786f + 1000f))) + 856f)));
    global1 = array<vec3<i32>, 20>();
    return false;
}

fn func_2(arg_0: Struct_3, arg_1: u32, arg_2: Struct_1) -> Struct_4 {
    let var_0 = 25486i;
    var var_1 = arg_2;
    global3 = array<Struct_1, 22>();
    var var_2 = 1000f;
    let var_3 = Struct_4(arg_0.a.x, arg_2, arg_0, arg_0.a.x);
    return Struct_4(_wgslsmith_f_op_f32(1817f + -1340f), Struct_1(((arg_1 >> (34638u % 32u)) == (0u >> (1u % 32u))) | (0i != (u_input.b.x << (arg_1 % 32u))), _wgslsmith_f_op_f32(f32(-1f) * -667f), var_1.c, var_1.d, select(vec2<bool>(arg_2.d, func_3()), var_3.b.e, arg_2.e.x)), arg_0, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1023f))));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_4) -> Struct_1 {
    global1 = array<vec3<i32>, 20>();
    let var_0 = Struct_1(arg_1.b.a, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -462f))), arg_1.a) - -620f), abs(u_input.b.wyz >> ((arg_0.www ^ arg_0.yyz) % vec3<u32>(32u))) << (_wgslsmith_mult_vec3_u32(vec3<u32>(abs(28862u), min(arg_0.x, 0u), abs(15918u)), vec3<u32>(1u, arg_0.x, ~11824u)) % vec3<u32>(32u)), _wgslsmith_f_op_f32(floor(func_2(arg_1.c, arg_0.x >> (arg_0.x % 32u), func_2(Struct_3(vec2<f32>(arg_1.a, 562f)), 4294967295u, Struct_1(arg_1.b.e.x, arg_1.a, vec3<i32>(u_input.b.x, 0i, 2147483647i), false, arg_1.b.e)).b).d)) >= 604f, select(select(select(arg_1.b.e, vec2<bool>(arg_1.b.a, true), any(vec4<bool>(true, arg_1.b.d, arg_1.b.a, true))), arg_1.b.e, vec2<bool>(false, true)), select(vec2<bool>(true, arg_1.b.a), arg_1.b.e, arg_1.b.e), !(!arg_1.b.a)));
    var var_1 = 1i;
    var var_2 = func_2(func_2(func_1(-var_0.c.x, global0[_wgslsmith_index_u32(arg_0.x, 11u)], _wgslsmith_clamp_i32(arg_1.b.c.x, 22713i, 1i)), ~arg_0.x << (min(~21407u, countOneBits(arg_0.x)) % 32u), func_2(Struct_3(vec2<f32>(arg_1.d, var_0.b)), arg_0.x, func_2(func_1(var_0.c.x, global0[_wgslsmith_index_u32(arg_0.x, 11u)], -19655i), 4294967295u, var_0).b).b).c, arg_0.x, Struct_1(true, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_1.a)) - 1306f))), ~arg_1.b.c & u_input.b.zxz, !arg_1.b.e.x, select(select(arg_1.b.e, vec2<bool>(var_0.a, var_0.e.x), func_2(Struct_3(arg_1.c.a), arg_0.x, Struct_1(arg_1.b.a, var_0.b, var_0.c, true, arg_1.b.e)).b.e), !func_2(arg_1.c, arg_0.x, Struct_1(true, 918f, global1[_wgslsmith_index_u32(11913u, 20u)], arg_1.b.e.x, arg_1.b.e)).b.e, true))).a;
    let var_3 = func_2(Struct_3(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1558f, 898f)) - _wgslsmith_f_op_f32(arg_1.a * var_0.b)), _wgslsmith_f_op_f32(-1171f - _wgslsmith_f_op_f32(-511f + arg_1.b.b)))), arg_0.x, func_2(func_2(Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1742f, 823f))), abs(arg_0.x) << (1u % 32u), func_2(arg_1.c, arg_0.x, arg_1.b).b).c, 15575u, Struct_1(func_3(), _wgslsmith_f_op_f32(f32(-1f) * -132f), firstLeadingBit(firstLeadingBit(vec3<i32>(u_input.a, 2147483647i, arg_1.b.c.x))), _wgslsmith_f_op_f32(192f + arg_1.c.a.x) <= _wgslsmith_f_op_f32(floor(-2379f)), arg_1.b.e)).b).b;
    return Struct_1(u_input.a <= firstTrailingBit(~_wgslsmith_dot_vec3_i32(arg_1.b.c, var_0.c)), _wgslsmith_f_op_f32(max(var_0.b, -918f)), vec3<i32>(min(_wgslsmith_dot_vec2_i32(var_3.c.xz, u_input.b.wy), 4048i), firstLeadingBit(~(-39723i)), u_input.b.x) | ~(-(arg_1.b.c >> (vec3<u32>(1u, 417u, arg_0.x) % vec3<u32>(32u)))), _wgslsmith_mult_u32(arg_0.x, firstLeadingBit(2702u & arg_0.x)) <= 1u, select(arg_1.b.e, vec2<bool>(true, true), true));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_5, 11>();
    global3 = array<Struct_1, 22>();
    var var_0 = func_4(~(~(~vec4<u32>(4294967295u, 0u, 1u, 33421u))), func_2(func_1(2147483647i, Struct_5(vec4<i32>(-8120i, u_input.b.x, -1i, 10354i), all(vec3<bool>(true, false, false))), -1i), _wgslsmith_mult_u32(4294967295u, 1u), Struct_1(true, _wgslsmith_div_f32(_wgslsmith_f_op_f32(1065f + -352f), _wgslsmith_f_op_f32(min(1150f, -287f))), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, -12115i, u_input.a) | vec3<i32>(19996i, u_input.b.x, 0i), _wgslsmith_mod_vec3_i32(vec3<i32>(0i, u_input.a, u_input.a), vec3<i32>(22011i, -20215i, u_input.a))), !(u_input.b.x != u_input.b.x), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)))));
    let var_1 = var_0.c.zz;
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(1203f, _wgslsmith_f_op_f32(max(var_0.b, var_0.b))));
    var var_3 = !(!var_0.e);
    let x = u_input.a;
    s_output = StorageBuffer(630f, ~select(1u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(2454u, 45121u, 0u, 16864u), vec4<u32>(0u, 4294967295u, 24189u, 68533u)), var_3.x));
}

