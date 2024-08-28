struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: bool,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec2<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1358f;

var<private> global1: array<vec4<i32>, 27> = array<vec4<i32>, 27>(vec4<i32>(i32(-2147483648), -1i, -1i, 1i), vec4<i32>(-4394i, -10940i, 2147483647i, i32(-2147483648)), vec4<i32>(-31251i, 1i, 22604i, i32(-2147483648)), vec4<i32>(-56968i, 28523i, -58086i, -1i), vec4<i32>(79721i, 2214i, -19600i, 2147483647i), vec4<i32>(44534i, -403i, 0i, 2147483647i), vec4<i32>(1i, 1i, 2147483647i, -1i), vec4<i32>(-515i, 0i, 66055i, 1i), vec4<i32>(-21633i, 2147483647i, 12502i, -6996i), vec4<i32>(21586i, -30961i, 2147483647i, -1i), vec4<i32>(64896i, -1i, -17792i, 2147483647i), vec4<i32>(-1i, 0i, i32(-2147483648), 26590i), vec4<i32>(0i, i32(-2147483648), -1i, 1i), vec4<i32>(i32(-2147483648), 1i, -14442i, -26016i), vec4<i32>(-29553i, 0i, -1i, -23471i), vec4<i32>(-6613i, 1i, 2147483647i, 2702i), vec4<i32>(1i, i32(-2147483648), -15181i, i32(-2147483648)), vec4<i32>(-1i, 1i, 4364i, 0i), vec4<i32>(-1i, -55492i, -33553i, -1i), vec4<i32>(0i, i32(-2147483648), 0i, -1i), vec4<i32>(-1i, -1i, 4155i, -13755i), vec4<i32>(0i, -70964i, -32143i, -1i), vec4<i32>(i32(-2147483648), i32(-2147483648), 0i, -1i), vec4<i32>(-1i, 0i, 28882i, -23287i), vec4<i32>(-20398i, -1i, 2945i, 1i), vec4<i32>(2147483647i, 2147483647i, 1i, -1i), vec4<i32>(2255i, -15364i, 0i, -50038i));

var<private> global2: i32 = 1i;

var<private> global3: array<i32, 3>;

var<private> global4: array<vec3<i32>, 14> = array<vec3<i32>, 14>(vec3<i32>(0i, 2147483647i, -8676i), vec3<i32>(i32(-2147483648), -1i, -41213i), vec3<i32>(-4745i, 0i, 43204i), vec3<i32>(-1i, -20910i, -17714i), vec3<i32>(-32645i, -40350i, 1i), vec3<i32>(i32(-2147483648), -8795i, -57742i), vec3<i32>(-40513i, -5400i, i32(-2147483648)), vec3<i32>(0i, i32(-2147483648), 2147483647i), vec3<i32>(41709i, 1i, 2147483647i), vec3<i32>(-1286i, i32(-2147483648), -19744i), vec3<i32>(-16132i, -10621i, 1i), vec3<i32>(1i, -33529i, 0i), vec3<i32>(-1i, 1i, -1i), vec3<i32>(2147483647i, -21186i, 39098i));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2() -> bool {
    let var_0 = _wgslsmith_mult_vec4_i32(reverseBits(_wgslsmith_mod_vec4_i32(abs(vec4<i32>(u_input.e.x, u_input.e.x, 242i, -35588i)), ~global1[_wgslsmith_index_u32(4294967295u, 27u)])) | vec4<i32>(-13024i, -2147483647i, -39838i & ~global3[_wgslsmith_index_u32(1u, 3u)], _wgslsmith_sub_i32(-6752i, reverseBits(-2147483647i))), -vec4<i32>(-28692i, u_input.a.x, 7453i, -global3[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.c.x, 0u), 3u)]));
    global2 = 51203i;
    var var_1 = Struct_2(1u, Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(-1905f, 689f)), -762f, -548f) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, 984f, 2326f), vec3<f32>(1f, 1f, 1f), false)))), 618f <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(165f * 1249f))) * 162f), vec3<bool>(true, true, true));
    let var_2 = Struct_2(0u, Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.a.x) * -1000f), var_1.b.a.x, _wgslsmith_f_op_f32(trunc(-1018f)))), var_1.d.x, select(!vec3<bool>(true, var_1.d.x, true), var_1.d, !(_wgslsmith_f_op_f32(exp2(var_1.b.a.x)) == _wgslsmith_f_op_f32(-724f - -2178f))));
    let var_3 = var_2.b;
    return var_1.d.x;
}

fn func_3(arg_0: bool, arg_1: vec2<i32>, arg_2: Struct_2, arg_3: i32) -> Struct_1 {
    let var_0 = true;
    var var_1 = arg_2;
    global4 = array<vec3<i32>, 14>();
    global1 = array<vec4<i32>, 27>();
    global4 = array<vec3<i32>, 14>();
    return Struct_1(var_1.b.a);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_1, arg_3: f32) -> Struct_1 {
    let var_0 = !vec2<bool>(arg_1.c, false);
    var var_1 = -(vec3<i32>(-1i) * -global4[_wgslsmith_index_u32(abs(4294967295u), 14u)]);
    var var_2 = reverseBits(vec4<i32>(min(-38524i, (var_1.x & -1i) ^ (u_input.e.x >> (0u % 32u))), _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(~u_input.a.wwy, select(vec3<i32>(var_1.x, var_1.x, global3[_wgslsmith_index_u32(arg_1.a, 3u)]), vec3<i32>(29342i, -1i, u_input.a.x), arg_1.d)), -(~global4[_wgslsmith_index_u32(0u, 14u)])), 72870i, ~(-u_input.a.x)));
    return arg_1.b;
}

fn func_1(arg_0: bool, arg_1: vec3<bool>) -> Struct_1 {
    let var_0 = Struct_2(0u, func_4(func_3(select(true, false, func_2()), vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(global3[_wgslsmith_index_u32(u_input.d.x, 3u)], -6343i, 3946i), vec3<i32>(u_input.a.x, 2147483647i, u_input.a.x)), 0i), Struct_2(u_input.b.x, Struct_1(vec3<f32>(372f, 2041f, -237f)), all(vec3<bool>(true, false, arg_1.x)), vec3<bool>(arg_1.x, arg_0, arg_1.x)), ~(~u_input.e.x)), Struct_2(9252u | u_input.d.x, func_3(true, -u_input.e.zy, Struct_2(4294967295u, Struct_1(vec3<f32>(1000f, -1000f, -925f)), arg_0, arg_1), min(global3[_wgslsmith_index_u32(u_input.c.x, 3u)], u_input.e.x)), arg_1.x, arg_1), func_3(any(vec2<bool>(arg_0, arg_0)), vec2<i32>(_wgslsmith_clamp_i32(u_input.a.x, -1i, u_input.a.x), ~27986i), Struct_2(countOneBits(12116u), func_3(arg_0, u_input.e.zz, Struct_2(77372u, Struct_1(vec3<f32>(-254f, 348f, -1563f)), false, arg_1), 17411i), true, !arg_1), firstLeadingBit(32784i)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-1000f)))), -1838f)), arg_0 | (((14312i ^ global3[_wgslsmith_index_u32(4294967295u, 3u)]) > -global3[_wgslsmith_index_u32(0u, 3u)]) && !(u_input.c.x == u_input.d.x)), select(arg_1, arg_1, arg_1));
    global4 = array<vec3<i32>, 14>();
    var var_1 = select(!(!(!var_0.d)), arg_1, var_0.c);
    let var_2 = var_0;
    let var_3 = vec4<i32>(global3[_wgslsmith_index_u32(select(4294967295u, ~_wgslsmith_mult_u32(1u, u_input.d.x), true), 3u)] | -2147483647i, _wgslsmith_clamp_i32(u_input.e.x, _wgslsmith_add_i32(global3[_wgslsmith_index_u32(var_0.a, 3u)], firstLeadingBit(u_input.a.x)), -abs(i32(-1i) * -36729i)), ~global3[_wgslsmith_index_u32(~select(reverseBits(u_input.c.x), 1u, arg_1.x), 3u)], _wgslsmith_sub_i32(~firstLeadingBit(u_input.e.x), 0i));
    return Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_2.b.a + _wgslsmith_f_op_vec3_f32(ceil(var_0.b.a)))), _wgslsmith_f_op_vec3_f32(select(var_0.b.a, vec3<f32>(_wgslsmith_f_op_f32(ceil(1000f)), _wgslsmith_f_op_f32(ceil(var_2.b.a.x)), _wgslsmith_f_op_f32(ceil(var_2.b.a.x))), select(vec3<bool>(arg_1.x, var_0.c, false), !vec3<bool>(arg_1.x, false, false), !arg_1.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(!((55432u & (u_input.b.x >> (u_input.d.x % 32u))) <= 4294967295u), vec3<bool>(false, all(vec3<bool>(true, true, true)), any(vec4<bool>(true, 3217u > u_input.b.x, true, true))));
    global2 = _wgslsmith_mod_i32(-global3[_wgslsmith_index_u32(~(~u_input.c.x), 3u)], 21518i) << ((_wgslsmith_clamp_u32(reverseBits(61148u), 40126u, ~_wgslsmith_mult_u32(4294967295u, u_input.b.x)) & u_input.b.x) % 32u);
    let var_1 = _wgslsmith_f_op_f32(var_0.a.x - _wgslsmith_div_f32(856f, var_0.a.x));
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(var_0.a - _wgslsmith_f_op_vec3_f32(min(func_4(var_0, Struct_2(4294967295u, var_0, true, vec3<bool>(true, true, false)), var_0, _wgslsmith_f_op_f32(-var_0.a.x)).a, _wgslsmith_f_op_vec3_f32(-var_0.a)))));
    let var_3 = _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 0i, -33763i, -51781i) << (reverseBits(vec4<u32>(21438u, 4294967295u, u_input.d.x, 11471u)) % vec4<u32>(32u)), reverseBits(vec4<i32>(-40037i, 1i, u_input.e.x, u_input.e.x))), firstLeadingBit(_wgslsmith_mod_i32(u_input.a.x, abs(global3[_wgslsmith_index_u32(1u, 3u)])))) >= _wgslsmith_div_i32(-1i, _wgslsmith_mult_i32(_wgslsmith_clamp_i32(u_input.e.x ^ u_input.e.x, u_input.a.x, firstLeadingBit(28463i)), 32066i));
    global4 = array<vec3<i32>, 14>();
    global1 = array<vec4<i32>, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(func_1(true, vec3<bool>(false, false, var_3)).a.x))), select(u_input.a, vec4<i32>(global3[_wgslsmith_index_u32(select(21531u, ~0u, any(vec4<bool>(false, var_3, var_3, true))), 3u)], ~87548i, -10390i, global3[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.b.x, u_input.c.x), 3u)] & _wgslsmith_clamp_i32(2147483647i, global3[_wgslsmith_index_u32(0u, 3u)], 2147483647i)), vec4<bool>(true, any(vec2<bool>(true, true)), var_3, true)), _wgslsmith_add_vec4_u32(reverseBits(vec4<u32>(0u, u_input.b.x, u_input.b.x, u_input.b.x) ^ _wgslsmith_mod_vec4_u32(u_input.c, u_input.c)), u_input.c), 1u, countOneBits(global3[_wgslsmith_index_u32(~0u, 3u)]));
}

