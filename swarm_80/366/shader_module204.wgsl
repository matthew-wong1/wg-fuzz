struct Struct_1 {
    a: vec2<bool>,
    b: vec3<f32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec4<f32>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec2<bool>,
    c: vec3<f32>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 5>;

var<private> global1: vec2<f32>;

var<private> global2: array<vec3<f32>, 22>;

var<private> global3: array<vec2<i32>, 24> = array<vec2<i32>, 24>(vec2<i32>(-18673i, 1i), vec2<i32>(2147483647i, 10714i), vec2<i32>(7972i, 3192i), vec2<i32>(2625i, -27711i), vec2<i32>(25266i, 2147483647i), vec2<i32>(2147483647i, 6109i), vec2<i32>(0i, -41760i), vec2<i32>(75549i, 62274i), vec2<i32>(60889i, i32(-2147483648)), vec2<i32>(-1i, 0i), vec2<i32>(1i, 2147483647i), vec2<i32>(-61379i, i32(-2147483648)), vec2<i32>(-184i, 0i), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(-14419i, i32(-2147483648)), vec2<i32>(88642i, 1i), vec2<i32>(-19345i, -6768i), vec2<i32>(-9777i, 0i), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(10781i, 1i), vec2<i32>(-28286i, -1i), vec2<i32>(1i, 0i), vec2<i32>(-1i, 40525i), vec2<i32>(-1i, 1i));

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: vec4<f32>, arg_1: bool, arg_2: Struct_2, arg_3: Struct_1) -> f32 {
    let var_0 = Struct_4(abs(vec2<i32>(_wgslsmith_add_i32(arg_2.b.c >> (59442u % 32u), max(-64427i, 2761i)), u_input.b & firstTrailingBit(u_input.b))), arg_3.a, arg_3.b, _wgslsmith_sub_vec4_i32(-vec4<i32>(u_input.b, 19968i, arg_3.c, arg_2.a.c), vec4<i32>(_wgslsmith_clamp_i32(-u_input.a, -arg_3.c, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.b.c, 1i, -25371i, 25581i), vec4<i32>(u_input.b, arg_3.c, arg_3.c, arg_2.b.c))), abs(arg_2.b.c), select(_wgslsmith_sub_i32(-2147483647i, u_input.b), ~(-7885i), arg_2.b.a.x), 65275i)));
    global2 = array<vec3<f32>, 22>();
    global0 = array<Struct_1, 5>();
    global2 = array<vec3<f32>, 22>();
    global0 = array<Struct_1, 5>();
    return var_0.c.x;
}

fn func_3() -> u32 {
    global1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x))) - global1.x), _wgslsmith_f_op_f32(global1.x - -1165f));
    global2 = array<vec3<f32>, 22>();
    let var_0 = vec2<i32>(-2147483647i, _wgslsmith_dot_vec3_i32(-(~vec3<i32>(38864i, u_input.a, -1i)), ~(vec3<i32>(-2147483647i, u_input.a, u_input.a) & vec3<i32>(-29081i, 1i, -30691i))) ^ ~_wgslsmith_mod_i32(1i, ~(-2147483647i)));
    var var_1 = _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x << (1u % 32u), u_input.b, firstLeadingBit(-1i), -var_0.x), _wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(var_0.x | -50243i, var_0.x, var_0.x, -10090i), max(firstLeadingBit(vec4<i32>(var_0.x, 1i, var_0.x, -32554i)), countOneBits(vec4<i32>(u_input.a, -37364i, 14149i, var_0.x)))), -(vec4<i32>(var_0.x, 65069i, 0i, u_input.b) | vec4<i32>(-51170i, 10285i, 1i, var_0.x))));
    var_1 = ~(~(-1i));
    return abs(_wgslsmith_dot_vec4_u32(~max(abs(vec4<u32>(4294967295u, 4294967295u, 13786u, 16321u)), ~vec4<u32>(3931u, 6827u, 1368u, 69372u)), abs(vec4<u32>(_wgslsmith_add_u32(28800u, 53512u), 10955u, ~4294967295u, ~4294967295u))));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1) -> Struct_3 {
    global0 = array<Struct_1, 5>();
    let var_0 = ~(_wgslsmith_mult_vec3_u32(firstLeadingBit(vec3<u32>(59395u, arg_0.c, arg_0.c)) >> (vec3<u32>(arg_0.c, 17780u, arg_0.c) % vec3<u32>(32u)), vec3<u32>(29988u, abs(4294967295u), reverseBits(arg_0.c))) >> (~vec3<u32>(func_3(), arg_0.c ^ arg_0.c, 0u) % vec3<u32>(32u)));
    global3 = array<vec2<i32>, 24>();
    global2 = array<vec3<f32>, 22>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-667f + arg_1.b.x));
    return Struct_3(vec3<i32>(-1i) * -firstLeadingBit(firstTrailingBit(vec3<i32>(arg_0.b.c, 50486i, 0i))), vec4<f32>(433f, 303f, _wgslsmith_f_op_f32(trunc(227f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_3) -> f32 {
    var var_0 = !vec4<bool>(arg_0.a.x, any(vec4<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x | arg_0.a.x, true)), !any(!vec3<bool>(arg_0.a.x, false, arg_0.a.x)), any(vec2<bool>(arg_0.a.x, arg_0.a.x)));
    global0 = array<Struct_1, 5>();
    let var_1 = Struct_2(Struct_1(!vec2<bool>(var_0.x, true), arg_0.b, abs(-arg_2.a.x)), Struct_1(vec2<bool>(all(vec4<bool>(arg_0.a.x, arg_0.a.x, false, false)), arg_0.a.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(-793f, _wgslsmith_f_op_f32(exp2(arg_1.b.x)), _wgslsmith_f_op_f32(-arg_0.b.x)) + vec3<f32>(_wgslsmith_f_op_f32(step(427f, 465f)), _wgslsmith_f_op_f32(411f * 405f), _wgslsmith_div_f32(arg_1.b.x, arg_0.b.x))), _wgslsmith_add_i32(u_input.a, _wgslsmith_div_i32(1i, arg_2.a.x ^ arg_0.c))), ~4294967295u, Struct_1(vec2<bool>(all(vec2<bool>(arg_0.a.x, false)), var_0.x), _wgslsmith_f_op_vec3_f32(-global2[_wgslsmith_index_u32(1u, 22u)]), 1i));
    var var_2 = Struct_4(arg_2.a.zx, select(arg_0.a, var_0.xy, arg_0.a), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global2[_wgslsmith_index_u32(62676u, 22u)])) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.b) + _wgslsmith_f_op_vec3_f32(step(arg_0.b, vec3<f32>(arg_2.b.x, -944f, arg_0.b.x))))) - global2[_wgslsmith_index_u32(var_1.c, 22u)]), max(-_wgslsmith_add_vec4_i32(-vec4<i32>(var_1.b.c, -8220i, 2147483647i, arg_0.c), -vec4<i32>(arg_0.c, -33841i, arg_0.c, 66405i)), _wgslsmith_mult_vec4_i32(firstLeadingBit(vec4<i32>(arg_2.a.x, -5179i, 2147483647i, -53829i)), _wgslsmith_clamp_vec4_i32(select(vec4<i32>(-33632i, arg_1.a.x, u_input.a, arg_2.a.x), vec4<i32>(u_input.a, var_1.d.c, u_input.b, 14659i), vec4<bool>(false, true, var_0.x, arg_0.a.x)), ~vec4<i32>(2147483647i, var_1.b.c, u_input.b, -2147483647i), vec4<i32>(arg_1.a.x, -2147483647i, var_1.b.c, arg_2.a.x)))));
    let var_3 = vec3<u32>(~func_3(), ~var_1.c << (~52019u % 32u), ~(~_wgslsmith_clamp_u32(~4294967295u, var_1.c >> (var_1.c % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(20579u, var_1.c, var_1.c), vec3<u32>(var_1.c, 1u, 44175u)))));
    return _wgslsmith_f_op_f32(-arg_2.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec2<f32>(global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec4<f32>(global1.x, 1627f, 1889f, global1.x), true, Struct_2(Struct_1(vec2<bool>(false, true), vec3<f32>(314f, global1.x, global1.x), 0i), Struct_1(vec2<bool>(true, false), global2[_wgslsmith_index_u32(58639u, 22u)], u_input.a), 14059u, global0[_wgslsmith_index_u32(4294967295u, 5u)]), Struct_1(vec2<bool>(true, true), vec3<f32>(global1.x, 856f, -937f), 2147483647i))) - global1.x)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-637f, -656f)) + _wgslsmith_f_op_f32(f32(-1f) * -1316f)), _wgslsmith_f_op_f32(select(-961f, _wgslsmith_f_op_f32(-664f + -210f), select(false, true, true))))));
    var var_0 = true;
    var var_1 = vec4<f32>(_wgslsmith_div_f32(-575f, -213f), _wgslsmith_f_op_f32(step(global1.x, -236f)), _wgslsmith_f_op_f32(global1.x - 252f), _wgslsmith_f_op_f32(f32(-1f) * -315f));
    global1 = _wgslsmith_div_vec2_f32(var_1.zw, var_1.yx);
    let var_2 = select(!(!all(vec2<bool>(false, true))), u_input.b < countOneBits(_wgslsmith_mult_i32(min(u_input.a, -1i), u_input.a)), _wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.x))))) > _wgslsmith_f_op_f32(func_4(global0[_wgslsmith_index_u32(36966u, 5u)], Struct_3(reverseBits(vec3<i32>(25242i, -1i, u_input.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, 1024f, global1.x, global1.x))), func_2(Struct_2(Struct_1(vec2<bool>(true, true), vec3<f32>(var_1.x, 812f, 1221f), -1i), Struct_1(vec2<bool>(false, true), vec3<f32>(-429f, 715f, 1701f), u_input.b), 31565u, Struct_1(vec2<bool>(true, true), vec3<f32>(var_1.x, global1.x, global1.x), u_input.a)), global0[_wgslsmith_index_u32(1u, 5u)]))));
    let var_3 = Struct_4(firstTrailingBit(vec2<i32>(_wgslsmith_add_i32(1i, u_input.a), max(u_input.b, u_input.b))) >> (~max(vec2<u32>(45748u, 60155u), ~vec2<u32>(35428u, 12461u)) % vec2<u32>(32u)), select(vec2<bool>(all(select(vec4<bool>(var_2, false, var_2, var_2), vec4<bool>(false, var_2, true, true), vec4<bool>(var_2, false, false, true))), true), !vec2<bool>(true && var_2, any(vec3<bool>(var_2, var_2, false))), !vec2<bool>(var_2, var_2)), var_1.wxw, vec4<i32>(-1i) * -_wgslsmith_mult_vec4_i32(~vec4<i32>(u_input.b, -21664i, u_input.a, -16036i), vec4<i32>(u_input.a, 41944i, -2147483647i, -1i)));
    global1 = _wgslsmith_f_op_vec2_f32(var_1.zx - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.xz) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(exp2(var_3.c.yz)), var_3.c.yz)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(var_3.c.xy, vec2<f32>(-523f, 1651f))) * vec2<f32>(-463f, var_1.x)))));
    var var_4 = func_2(Struct_2(Struct_1(!select(var_3.b, vec2<bool>(true, false), true), vec3<f32>(_wgslsmith_f_op_f32(global1.x * var_3.c.x), -2464f, -569f), u_input.a), global0[_wgslsmith_index_u32(35328u, 5u)], 4294967295u, global0[_wgslsmith_index_u32(func_3() >> (4294967295u % 32u), 5u)]), Struct_1(!vec2<bool>(!var_3.b.x, true), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -856f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(237f - global1.x) - -2256f), _wgslsmith_f_op_f32(f32(-1f) * -634f)), ~(-1i)));
    var var_5 = 0i;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.d.x);
}

