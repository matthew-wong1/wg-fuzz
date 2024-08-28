struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: vec2<u32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec3<f32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_2,
    c: Struct_2,
    d: u32,
}

struct Struct_4 {
    a: i32,
    b: vec4<u32>,
    c: u32,
}

struct Struct_5 {
    a: i32,
    b: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: f32,
    d: f32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 23>;

var<private> global1: array<Struct_2, 7> = array<Struct_2, 7>(Struct_2(vec4<i32>(-50353i, 31521i, -43729i, i32(-2147483648)), Struct_1(vec4<f32>(993f, -1112f, 2388f, 456f), true, vec2<u32>(19570u, 0u), vec4<u32>(26157u, 4294967295u, 4294967295u, 11904u)), vec3<f32>(1212f, -1497f, 1374f)), Struct_2(vec4<i32>(-1i, 2147483647i, -10971i, 20044i), Struct_1(vec4<f32>(-689f, 430f, 577f, -1408f), true, vec2<u32>(64295u, 4294967295u), vec4<u32>(4294967295u, 0u, 4294967295u, 1u)), vec3<f32>(1611f, 471f, -1805f)), Struct_2(vec4<i32>(-19471i, -1i, -1i, i32(-2147483648)), Struct_1(vec4<f32>(-416f, -254f, -701f, 466f), true, vec2<u32>(4294967295u, 0u), vec4<u32>(28417u, 0u, 4294967295u, 4294967295u)), vec3<f32>(894f, -464f, 211f)), Struct_2(vec4<i32>(-1i, 45024i, 13296i, 42956i), Struct_1(vec4<f32>(923f, -1814f, 1356f, 102f), false, vec2<u32>(1u, 1u), vec4<u32>(34349u, 0u, 0u, 1u)), vec3<f32>(-587f, 307f, 580f)), Struct_2(vec4<i32>(-10318i, -1i, 3860i, 2147483647i), Struct_1(vec4<f32>(-1047f, 326f, 346f, 1000f), false, vec2<u32>(38703u, 43009u), vec4<u32>(45617u, 4294967295u, 34537u, 48002u)), vec3<f32>(1370f, -639f, 598f)), Struct_2(vec4<i32>(1i, -42275i, i32(-2147483648), 10761i), Struct_1(vec4<f32>(-1455f, 134f, -316f, 242f), false, vec2<u32>(0u, 17182u), vec4<u32>(61079u, 46152u, 50402u, 0u)), vec3<f32>(572f, 1165f, -341f)), Struct_2(vec4<i32>(-1i, 13021i, -14741i, 4300i), Struct_1(vec4<f32>(533f, 1979f, 1121f, -661f), false, vec2<u32>(4294967295u, 3136u), vec4<u32>(1u, 4294967295u, 1u, 1u)), vec3<f32>(805f, -1288f, 1588f)));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec3<bool>) -> i32 {
    global0 = array<vec3<bool>, 23>();
    var var_0 = Struct_4(_wgslsmith_div_i32(~(-18241i), min(_wgslsmith_clamp_i32(u_input.a.x, u_input.d, -u_input.a.x), u_input.d)), vec4<u32>(firstTrailingBit(select(1u, ~8657u, false)), u_input.c.x, u_input.b.x, u_input.c.x & ~u_input.b.x), u_input.b.x);
    global0 = array<vec3<bool>, 23>();
    var var_1 = Struct_2(firstTrailingBit(vec4<i32>(select(u_input.a.x, _wgslsmith_mult_i32(0i, var_0.a), arg_0.x), _wgslsmith_div_i32(-13799i, -60154i), var_0.a, var_0.a)), Struct_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1742f, 1619f, 612f, -2295f))))), all(select(vec4<bool>(true, true, arg_0.x, true), select(vec4<bool>(false, arg_0.x, true, true), vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, true, false)), vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x))), ~u_input.b.xy, vec4<u32>(var_0.b.x, 48570u, _wgslsmith_dot_vec2_u32(u_input.c.xz, vec2<u32>(var_0.b.x, u_input.c.x) ^ u_input.c.yz), var_0.b.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1f, 1f, 1f)))));
    var var_2 = all(select(vec3<bool>(true, true, true), global0[_wgslsmith_index_u32(1u, 23u)], !arg_0));
    return _wgslsmith_dot_vec4_i32(vec4<i32>(~reverseBits(max(u_input.d, 39871i)), -2147483647i, (-var_1.a.x | u_input.d) & _wgslsmith_add_i32(var_1.a.x, var_1.a.x), 18001i), var_1.a);
}

fn func_2(arg_0: i32) -> vec4<f32> {
    global1 = array<Struct_2, 7>();
    var var_0 = _wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.a.x, 37858i | func_3(select(global0[_wgslsmith_index_u32(12089u, 23u)], vec3<bool>(false, false, false), global0[_wgslsmith_index_u32(u_input.c.x, 23u)])), arg_0), vec4<i32>(~_wgslsmith_mod_i32(-1i, u_input.a.x), 0i, arg_0, -18485i) | _wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(abs(vec4<i32>(80486i, u_input.a.x, u_input.a.x, u_input.d)), ~vec4<i32>(-18887i, arg_0, arg_0, -70994i)), abs(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, 20419i, arg_0, -3404i), vec4<i32>(-20521i, 1i, arg_0, -30230i)))));
    var var_1 = countOneBits(firstLeadingBit(max(max(vec4<i32>(u_input.a.x, -2147483647i, -1i, -1i), -vec4<i32>(2147483647i, -1i, -36120i, arg_0)), vec4<i32>(-43319i, -14353i, arg_0, ~0i))));
    let var_2 = var_1.zyy;
    global0 = array<vec3<bool>, 23>();
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2182f - 450f)), _wgslsmith_f_op_f32(-281f - -757f)), 1000f, _wgslsmith_f_op_f32(f32(-1f) * -1391f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(1054f)))))));
}

fn func_1() -> StorageBuffer {
    let var_0 = Struct_5(u_input.a.x, u_input.b.x | (u_input.c.x ^ (select(u_input.c.x, u_input.c.x, true) ^ reverseBits(u_input.c.x))));
    var var_1 = true;
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_mult_i32(_wgslsmith_add_i32(u_input.d, u_input.d), var_0.a))), true, vec2<u32>(~min(var_0.b, u_input.b.x), var_0.b ^ ~u_input.c.x) & ~vec2<u32>(u_input.b.x, firstLeadingBit(18027u)), select(vec4<u32>(var_0.b, 0u, _wgslsmith_mult_u32(max(1u, u_input.c.x), ~var_0.b), var_0.b), ~(~max(vec4<u32>(var_0.b, 2683u, u_input.b.x, u_input.b.x), vec4<u32>(u_input.b.x, 38082u, 1u, 23667u))), vec4<bool>(true, true, true, true)));
    var_2 = Struct_1(vec4<f32>(1269f, 457f, _wgslsmith_f_op_f32(-var_2.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -857f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_2.a.x)) * -965f))), false && !all(vec2<bool>(var_2.b, var_2.b)), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.b, 93402u, 53697u), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_2.d.x, var_0.b, 19360u), vec4<u32>(var_0.b, var_0.b, var_2.d.x, 10704u)), 0u >> (0u % 32u), _wgslsmith_sub_u32(0u, u_input.c.x))), ~(~1u)), vec4<u32>(min(70123u, u_input.b.x >> (select(85406u, 1u, var_2.b) % 32u)), ~(4294967295u ^ _wgslsmith_sub_u32(u_input.c.x, 1u)), _wgslsmith_mod_u32(u_input.c.x, _wgslsmith_sub_u32(var_0.b, 4294967295u)) << (abs(var_0.b) % 32u), 20120u));
    var var_3 = _wgslsmith_f_op_f32(-var_2.a.x);
    return StorageBuffer(-1845f, vec2<i32>(func_3(global0[_wgslsmith_index_u32(8231u, 23u)]), -_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(var_0.a, u_input.d, var_0.a), vec3<i32>(-9204i, var_0.a, var_0.a)), _wgslsmith_div_vec3_i32(vec3<i32>(-69770i, 16169i, 0i), vec3<i32>(var_0.a, u_input.a.x, 1i)))), 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -460f)), _wgslsmith_div_vec3_f32(vec3<f32>(-1700f, _wgslsmith_div_f32(var_2.a.x, _wgslsmith_div_f32(-177f, 300f)), _wgslsmith_f_op_f32(var_2.a.x - 726f)), _wgslsmith_f_op_vec4_f32(func_2(~_wgslsmith_add_i32(u_input.d, 36588i))).xwz));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 7>();
    global1 = array<Struct_2, 7>();
    global1 = array<Struct_2, 7>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -155f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -970f))));
    let var_1 = u_input.a;
    let x = u_input.a;
    s_output = func_1();
}

