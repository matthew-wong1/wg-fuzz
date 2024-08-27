struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
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

var<private> global0: i32 = 0i;

var<private> global1: array<vec3<u32>, 28> = array<vec3<u32>, 28>(vec3<u32>(29129u, 28182u, 99147u), vec3<u32>(17507u, 4294967295u, 0u), vec3<u32>(1u, 0u, 0u), vec3<u32>(27080u, 15010u, 0u), vec3<u32>(9171u, 1u, 4294967295u), vec3<u32>(1u, 24013u, 0u), vec3<u32>(37122u, 37956u, 1u), vec3<u32>(0u, 1u, 16383u), vec3<u32>(4294967295u, 0u, 70054u), vec3<u32>(20934u, 30436u, 1187u), vec3<u32>(15524u, 1u, 1212u), vec3<u32>(0u, 4294967295u, 0u), vec3<u32>(0u, 0u, 69058u), vec3<u32>(36213u, 29629u, 32110u), vec3<u32>(4294967295u, 4294967295u, 41048u), vec3<u32>(4294967295u, 1418u, 4294967295u), vec3<u32>(4294967295u, 0u, 1u), vec3<u32>(3305u, 2194u, 1u), vec3<u32>(75416u, 18406u, 27824u), vec3<u32>(12263u, 46032u, 22096u), vec3<u32>(4294967295u, 4294967295u, 20409u), vec3<u32>(52943u, 0u, 4294967295u), vec3<u32>(1u, 12256u, 0u), vec3<u32>(4294967295u, 5739u, 0u), vec3<u32>(11293u, 25641u, 0u), vec3<u32>(0u, 1915u, 26363u), vec3<u32>(9484u, 24698u, 4294967295u), vec3<u32>(4294967295u, 4294967295u, 4294967295u));

var<private> global2: array<vec2<u32>, 21> = array<vec2<u32>, 21>(vec2<u32>(0u, 39007u), vec2<u32>(13969u, 19140u), vec2<u32>(3585u, 30320u), vec2<u32>(0u, 26423u), vec2<u32>(12786u, 4294967295u), vec2<u32>(95008u, 0u), vec2<u32>(2532u, 21335u), vec2<u32>(36921u, 1u), vec2<u32>(1074u, 24486u), vec2<u32>(41573u, 11797u), vec2<u32>(0u, 114582u), vec2<u32>(1u, 47952u), vec2<u32>(28306u, 1u), vec2<u32>(0u, 4294967295u), vec2<u32>(1u, 20060u), vec2<u32>(1u, 74725u), vec2<u32>(64704u, 14085u), vec2<u32>(22868u, 21364u), vec2<u32>(1u, 67570u), vec2<u32>(0u, 1u), vec2<u32>(4294967295u, 4294967295u));

var<private> global3: Struct_1;

var<private> global4: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(511f, vec2<u32>(20883u, 32705u), vec2<i32>(-35547i, -1i)), Struct_1(-796f, vec2<u32>(87423u, 38009u), vec2<i32>(0i, -1i)), Struct_1(-779f, vec2<u32>(10581u, 10532u), vec2<i32>(1i, -1i)), Struct_1(-712f, vec2<u32>(39551u, 26667u), vec2<i32>(i32(-2147483648), 0i)), Struct_1(-224f, vec2<u32>(0u, 3658u), vec2<i32>(0i, 58514i)), Struct_1(1079f, vec2<u32>(39719u, 85u), vec2<i32>(-36043i, 1i)), Struct_1(887f, vec2<u32>(66272u, 0u), vec2<i32>(3126i, -43868i)), Struct_1(980f, vec2<u32>(1u, 57957u), vec2<i32>(-74457i, i32(-2147483648))), Struct_1(-1002f, vec2<u32>(1u, 1u), vec2<i32>(i32(-2147483648), 0i)), Struct_1(-548f, vec2<u32>(0u, 0u), vec2<i32>(1i, 0i)), Struct_1(-1367f, vec2<u32>(103606u, 0u), vec2<i32>(27223i, i32(-2147483648))), Struct_1(1528f, vec2<u32>(2467u, 4294967295u), vec2<i32>(-1i, -30147i)), Struct_1(-630f, vec2<u32>(1u, 4294967295u), vec2<i32>(-1i, -21453i)), Struct_1(-1000f, vec2<u32>(1u, 4294967295u), vec2<i32>(16448i, 1i)), Struct_1(1323f, vec2<u32>(41584u, 4294967295u), vec2<i32>(0i, -12270i)));

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    let var_0 = vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(31825i, firstTrailingBit(-1i)), max(vec2<i32>(-2147483647i, arg_1.c.x) << (u_input.a.zx % vec2<u32>(32u)), ~min(vec2<i32>(-2147483647i, 2147483647i), vec2<i32>(0i, global3.c.x)))), arg_1.c.x, countOneBits(~_wgslsmith_dot_vec4_i32(max(vec4<i32>(-1i, -2147483647i, -2147483647i, arg_1.c.x), vec4<i32>(global3.c.x, arg_0.c.x, 2147483647i, 1i)), vec4<i32>(global3.c.x, global3.c.x, global3.c.x, 54790i))), _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(abs(_wgslsmith_clamp_vec3_i32(vec3<i32>(1i, -20355i, 21634i), vec3<i32>(arg_0.c.x, -2147483647i, 25132i), vec3<i32>(arg_0.c.x, 7708i, arg_1.c.x))), max(reverseBits(vec3<i32>(2147483647i, 1i, global3.c.x)), _wgslsmith_mult_vec3_i32(vec3<i32>(1i, -1i, 2147483647i), vec3<i32>(arg_1.c.x, 1i, arg_0.c.x)))), reverseBits(reverseBits(~vec3<i32>(arg_1.c.x, global3.c.x, -2147483647i)))));
    let var_1 = 0i;
    var var_2 = arg_0;
    let var_3 = arg_1;
    var var_4 = max(_wgslsmith_clamp_vec3_u32(abs(vec3<u32>(_wgslsmith_mod_u32(0u, 22357u), var_3.b.x, _wgslsmith_mult_u32(17405u, arg_0.b.x))), (vec3<u32>(arg_0.b.x, 4294967295u, 32636u) >> (firstLeadingBit(u_input.a.wwz) % vec3<u32>(32u))) | countOneBits(~vec3<u32>(var_3.b.x, global3.b.x, 33556u)), min(~u_input.b, _wgslsmith_div_vec3_u32(select(vec3<u32>(0u, 243u, 0u), vec3<u32>(0u, 4294967295u, 1u), vec3<bool>(false, true, true)), firstTrailingBit(vec3<u32>(4294967295u, arg_0.b.x, u_input.b.x))))), vec3<u32>(~29637u, var_3.b.x, 0u));
    return arg_1.c.x << (~4590u % 32u);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    global0 = firstLeadingBit(~_wgslsmith_clamp_i32(-12943i, _wgslsmith_add_i32(0i, select(arg_2.c.x, arg_1.c.x, true)), firstTrailingBit(2147483647i)));
    let var_0 = ~func_3(arg_2, Struct_1(743f, ~vec2<u32>(arg_0.b.x, 4294967295u), countOneBits(arg_1.c << (arg_1.b % vec2<u32>(32u)))));
    var var_1 = vec4<u32>(~arg_2.b.x, (reverseBits(~global3.b.x) ^ (_wgslsmith_mult_u32(u_input.a.x, 27587u) >> (_wgslsmith_sub_u32(53672u, 14340u) % 32u))) >> (4294967295u % 32u), _wgslsmith_sub_u32(4294967295u, arg_2.b.x), abs(u_input.b.x));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(max(-2541f, -347f)), _wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, var_1.x), vec2<u32>(var_1.x, 4294967295u)), 43948u ^ global3.b.x), ~arg_3.b & ~(~global2[_wgslsmith_index_u32(u_input.b.x, 21u)])), arg_2.c);
    let var_3 = _wgslsmith_mult_vec4_i32(min(~(vec4<i32>(arg_2.c.x, -37576i, arg_3.c.x, var_2.c.x) >> (u_input.a % vec4<u32>(32u))), _wgslsmith_sub_vec4_i32(vec4<i32>(var_0, global3.c.x, 10678i, -13512i), vec4<i32>(arg_2.c.x, -2121i, global3.c.x, 10408i))), _wgslsmith_add_vec4_i32(reverseBits(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_1.c.x, var_0, 4120i, -26767i), vec4<i32>(arg_1.c.x, 211i, 1i, 2147483647i))), countOneBits(min(vec4<i32>(var_2.c.x, 1i, 23565i, arg_1.c.x), vec4<i32>(arg_1.c.x, -1i, arg_3.c.x, global3.c.x))))) >> (vec4<u32>(~_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(62809u, 4294967295u), global2[_wgslsmith_index_u32(114981u, 21u)]), ~arg_2.b), ~4294967295u, ~arg_2.b.x, ~min(18733u, arg_0.b.x & arg_3.b.x)) % vec4<u32>(32u));
    return any(!select(!select(vec2<bool>(true, true), vec2<bool>(true, true), false), vec2<bool>(true, true), any(vec3<bool>(false, false, false))));
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    let var_0 = arg_1.a;
    global3 = Struct_1(_wgslsmith_f_op_f32(arg_1.a * _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.a + 718f), _wgslsmith_f_op_f32(-205f + -1000f))))), ~firstTrailingBit(select(arg_2.b, arg_2.b, arg_1.b.x != 1u)), countOneBits((vec2<i32>(-1i) * -vec2<i32>(arg_2.c.x, 0i)) | global3.c));
    let var_1 = global1[_wgslsmith_index_u32(arg_2.b.x, 28u)];
    global2 = array<vec2<u32>, 21>();
    let var_2 = !vec3<bool>(true, select(false & all(vec2<bool>(true, true)), !func_2(Struct_1(var_0, vec2<u32>(var_1.x, u_input.a.x), vec2<i32>(0i, global3.c.x)), Struct_1(383f, arg_2.b, vec2<i32>(arg_2.c.x, -3482i)), global4[_wgslsmith_index_u32(14408u, 15u)], arg_1), false), arg_0);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 * 745f) + -1000f) + arg_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_1(false, global4[_wgslsmith_index_u32(u_input.b.x, 15u)], global4[_wgslsmith_index_u32(31055u, 15u)])))), _wgslsmith_f_op_f32(-global3.a)))), vec2<u32>(global3.b.x >> (4294967295u % 32u), abs(_wgslsmith_mod_u32(~5268u, global3.b.x))), global3.c);
    var var_1 = _wgslsmith_f_op_f32(step(global3.a, var_0.a));
    var var_2 = ~(-_wgslsmith_div_i32(-58655i, ~(-25966i >> (global3.b.x % 32u))));
    var var_3 = true;
    var var_4 = global4[_wgslsmith_index_u32(~27549u, 15u)];
    global4 = array<Struct_1, 15>();
    var_2 = countOneBits(var_0.c.x);
    var_2 = var_0.c.x | -2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(507f + -150f), var_4.a, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global3.a, global3.a)) + _wgslsmith_f_op_f32(1478f - var_0.a))))));
}

