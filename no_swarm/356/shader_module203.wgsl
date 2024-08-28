struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<i32>,
    c: Struct_1,
    d: f32,
    e: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
    c: Struct_1,
    d: vec2<f32>,
    e: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 28> = array<vec2<u32>, 28>(vec2<u32>(4294967295u, 8998u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(73062u, 0u), vec2<u32>(12349u, 0u), vec2<u32>(0u, 0u), vec2<u32>(70140u, 0u), vec2<u32>(4294967295u, 118u), vec2<u32>(43021u, 8602u), vec2<u32>(1u, 4294967295u), vec2<u32>(0u, 12433u), vec2<u32>(16565u, 101477u), vec2<u32>(1u, 4294967295u), vec2<u32>(1u, 1u), vec2<u32>(21430u, 56403u), vec2<u32>(1u, 1u), vec2<u32>(44614u, 0u), vec2<u32>(84178u, 27919u), vec2<u32>(67359u, 50048u), vec2<u32>(4294967295u, 6590u), vec2<u32>(0u, 8260u), vec2<u32>(16544u, 1u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(0u, 0u), vec2<u32>(100499u, 34434u), vec2<u32>(67571u, 3538u), vec2<u32>(0u, 50377u), vec2<u32>(4294967295u, 0u), vec2<u32>(4294967295u, 4294967295u));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_1, arg_2: u32, arg_3: bool) -> vec4<i32> {
    let var_0 = !(!arg_1.a || arg_0.b);
    let var_1 = arg_0;
    var var_2 = Struct_3(arg_0.a, -_wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(var_1.a.b, var_1.a.b), firstTrailingBit(var_1.a.b)), arg_0.c, _wgslsmith_f_op_f32(f32(-1f) * -201f), -50835i);
    let var_3 = Struct_3(var_1.a, var_1.a.b, var_2.c, -1000f, arg_0.a.b.x);
    global0 = array<vec2<u32>, 28>();
    return var_3.b;
}

fn func_2(arg_0: vec3<u32>, arg_1: vec4<f32>) -> bool {
    var var_0 = vec3<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(-46360i, u_input.a, -16220i, abs(43390i)), func_3(Struct_4(Struct_2(Struct_1(false), vec4<i32>(0i, u_input.a, u_input.a, u_input.a)), false, Struct_1(true), arg_1.xy, arg_1.x), Struct_1(true), 0u, true) >> (~_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 1u, arg_0.x, arg_0.x), vec4<u32>(arg_0.x, arg_0.x, 1u, 4011u)) % vec4<u32>(32u))), _wgslsmith_sub_i32(-abs(_wgslsmith_mod_i32(-52951i, u_input.a)), -_wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(1i, 2147483647i, u_input.a)), vec3<i32>(-1i, u_input.a, 1i))), ~countOneBits(-2147483647i));
    let var_1 = Struct_1(true);
    let var_2 = min(25075u, _wgslsmith_clamp_u32(arg_0.x, arg_0.x & ~37673u, _wgslsmith_sub_u32(~_wgslsmith_mod_u32(arg_0.x, arg_0.x), 5611u)));
    var var_3 = Struct_3(Struct_2(var_1, -vec4<i32>(2147483647i, u_input.a, -31110i, u_input.a) & ~(-vec4<i32>(var_0.x, 6354i, -2147483647i, var_0.x))), _wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_div_i32(~(-1i), var_0.x), _wgslsmith_add_i32(i32(-1i) * -2147483647i, u_input.a), var_0.x, func_3(Struct_4(Struct_2(var_1, vec4<i32>(var_0.x, var_0.x, u_input.a, -22918i)), true, var_1, arg_1.yy, 789f), Struct_1(var_1.a), _wgslsmith_dot_vec3_u32(arg_0, vec3<u32>(52207u, 4294967295u, 4294967295u)), true).x), vec4<i32>(u_input.a, var_0.x, _wgslsmith_dot_vec2_i32(select(var_0.xz, var_0.yy, var_1.a), vec2<i32>(var_0.x, -41768i)), _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(81310i, -2147483647i, u_input.a), vec3<i32>(-1i, -2147483647i, 2147483647i)), ~u_input.a))), Struct_1(var_1.a), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(arg_1.x, arg_1.x))), ~20935i);
    return var_1.a;
}

fn func_1() -> Struct_2 {
    var var_0 = 36416u;
    let var_1 = all(!select(vec2<bool>(select(true, false, true), func_2(vec3<u32>(8424u, 42636u, 40599u), vec4<f32>(560f, -138f, -833f, -1342f))), select(vec2<bool>(false, false), vec2<bool>(true, true), select(false, true, true)), true));
    let var_2 = _wgslsmith_div_u32(~0u, _wgslsmith_dot_vec4_u32(vec4<u32>(~4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(79931u, 4294967295u, 0u), vec3<u32>(28692u, 13587u, 4294967295u)), 1u, ~45500u), vec4<u32>(1u, 1u, 1u, 1u)) >> ((85991u << (1u % 32u)) % 32u));
    var var_3 = global0[_wgslsmith_index_u32(abs(~_wgslsmith_clamp_u32(var_2, select(_wgslsmith_dot_vec3_u32(vec3<u32>(27408u, 36425u, 22717u), vec3<u32>(106004u, var_2, var_2)), _wgslsmith_sub_u32(1240u, var_2), -17079i > u_input.a), _wgslsmith_clamp_u32(~1u, firstLeadingBit(0u), 40323u))), 28u)];
    global0 = array<vec2<u32>, 28>();
    return Struct_2(Struct_1(any(select(select(vec2<bool>(false, false), vec2<bool>(var_1, var_1), vec2<bool>(false, true)), vec2<bool>(false, true), !vec2<bool>(var_1, var_1)))), vec4<i32>(-(~abs(12887i)), 1i & u_input.a, u_input.a, -_wgslsmith_sub_i32(reverseBits(u_input.a), 2147483647i)));
}

fn func_4(arg_0: Struct_3) -> Struct_4 {
    global0 = array<vec2<u32>, 28>();
    var var_0 = _wgslsmith_dot_vec3_u32(~abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(1u, 1u, 44718u), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, 0u, 0u), vec3<u32>(54567u, 1u, 4294967295u)))), vec3<u32>(~1u, 1u, 44354u));
    var_0 = reverseBits(~20175u);
    let var_1 = _wgslsmith_mult_vec2_u32(firstLeadingBit(firstTrailingBit(~global0[_wgslsmith_index_u32(~40389u, 28u)])), _wgslsmith_sub_vec2_u32(min(_wgslsmith_mult_vec2_u32(global0[_wgslsmith_index_u32(countOneBits(7914u), 28u)], ~vec2<u32>(58066u, 59731u)), ~global0[_wgslsmith_index_u32(4294967295u, 28u)] ^ (vec2<u32>(89665u, 53430u) & global0[_wgslsmith_index_u32(1u, 28u)])), global0[_wgslsmith_index_u32(1u, 28u)]));
    let var_2 = min(var_1.x, ~var_1.x);
    return Struct_4(arg_0.a, false, arg_0.a.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-890f, -791f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(959f, arg_0.d))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(303f, arg_0.d), vec2<f32>(arg_0.d, arg_0.d), vec2<bool>(true, false))), vec2<f32>(arg_0.d, 1019f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(660f - 1586f) + -250f) * arg_0.d));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_3(func_1(), -func_1().b, Struct_1(true), -364f, u_input.a));
    global0 = array<vec2<u32>, 28>();
    var var_1 = abs(-_wgslsmith_sub_vec2_i32(var_0.a.b.wy << (vec2<u32>(14055u, 4294967295u) % vec2<u32>(32u)), var_0.a.b.yw));
    global0 = array<vec2<u32>, 28>();
    let var_2 = var_0;
    var var_3 = _wgslsmith_add_u32(~4294967295u, 0u);
    var var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.d.x, var_0.e, var_0.e, var_2.e) - vec4<f32>(var_2.e, -2690f, 1505f, 183f)) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1206f, -154f, 208f, -118f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1610f, 423f, var_0.d.x, var_2.e))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d.x, _wgslsmith_f_op_f32(var_0.d.x + _wgslsmith_f_op_f32(f32(-1f) * -810f)), -909f, _wgslsmith_f_op_f32(floor(361f)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.d, 4294967295u, _wgslsmith_div_f32(477f, _wgslsmith_f_op_f32(step(1000f, var_4.x))), 2147483647i);
}

