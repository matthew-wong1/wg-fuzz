struct Struct_1 {
    a: u32,
    b: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

var<private> global1: i32;

var<private> global2: vec3<i32>;

var<private> global3: vec2<i32>;

var<private> global4: array<vec2<i32>, 11> = array<vec2<i32>, 11>(vec2<i32>(1i, 44100i), vec2<i32>(56453i, 1i), vec2<i32>(-11710i, -16255i), vec2<i32>(0i, 1i), vec2<i32>(10785i, i32(-2147483648)), vec2<i32>(-60660i, -1i), vec2<i32>(2147483647i, -66662i), vec2<i32>(-1i, 2147483647i), vec2<i32>(i32(-2147483648), 34181i), vec2<i32>(1i, 1i), vec2<i32>(20603i, 6408i));

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1270f)) + _wgslsmith_f_op_f32(f32(-1f) * -871f));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(u_input.a.x, _wgslsmith_mult_i32(-30605i, -1i));
    var_0 = Struct_1(var_0.a, -max(_wgslsmith_add_i32(global3.x, -2147483647i) >> (u_input.a.x % 32u), ~global3.x));
    let var_1 = abs(u_input.a.x);
    var var_2 = u_input.a.yz;
    global4 = array<vec2<i32>, 11>();
    return Struct_1(abs(0u), _wgslsmith_mult_i32(-17737i, -global2.x));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    let var_0 = Struct_1(56890u, 46356i);
    let var_1 = u_input.a.zy;
    var var_2 = countOneBits(vec3<i32>(6610i, 1i, -7188i));
    global0 = 1u;
    let var_3 = Struct_1(~4294967295u, -_wgslsmith_add_i32(~var_2.x, firstTrailingBit(~var_2.x)));
    return abs(u_input.a.x >> (_wgslsmith_sub_u32(~(~11131u), arg_2.a) % 32u));
}

fn func_4(arg_0: u32, arg_1: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(-vec4<i32>(-1i, _wgslsmith_div_i32(-2147483647i, global3.x), reverseBits(global3.x), global2.x), vec4<i32>(-2147483647i, 0i, -29763i, -2147483647i)), reverseBits(vec4<i32>(global2.x, global3.x, global2.x, ~(~global3.x))));
    global3 = vec2<i32>(_wgslsmith_div_i32(0i, arg_1.b) ^ _wgslsmith_div_i32(arg_1.b, _wgslsmith_mod_i32(abs(0i), -24596i)), _wgslsmith_div_i32(global2.x, _wgslsmith_div_i32(global3.x, -1i)));
    let var_1 = arg_1;
    global3 = vec2<i32>(max(select((i32(-1i) * -2147483647i) ^ _wgslsmith_clamp_i32(-2147483647i, 3117i, arg_1.b), ~2147483647i, all(vec4<bool>(true, true, true, true))), var_0.x), -var_0.x & var_1.b);
    global4 = array<vec2<i32>, 11>();
    return func_2();
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: i32) -> vec3<i32> {
    let var_0 = ~global2.zy;
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(283f, 260f, 2616f), vec3<f32>(1000f, -386f, -236f)) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-383f, -128f, -1928f), vec3<f32>(-2616f, -382f, -1000f), vec3<bool>(true, arg_1, arg_1)))))));
    var var_2 = func_2();
    global2 = _wgslsmith_clamp_vec3_i32(vec3<i32>(func_4(_wgslsmith_clamp_u32(var_2.a, u_input.a.x, u_input.a.x ^ 4294967295u), Struct_1(~70227u, arg_2.b)).b, var_0.x, i32(-1i) * -firstLeadingBit(2147483647i)), abs(vec3<i32>(reverseBits(max(-1i, -2147483647i)), (global2.x << (arg_2.a % 32u)) | arg_0.b, min(25145i, 2147483647i))), ~(firstLeadingBit(~vec3<i32>(1i, arg_2.b, 0i)) >> (u_input.a.wyy % vec3<u32>(32u))));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_1.x * var_1.x), _wgslsmith_f_op_f32(func_1(Struct_1(var_2.a, var_0.x), arg_0)), _wgslsmith_f_op_f32(-var_1.x)) * var_1))));
    return vec3<i32>(var_0.x | func_4(4294967295u, Struct_1(~u_input.a.x, arg_3)).b, var_0.x, var_2.b);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = ~_wgslsmith_div_vec3_i32(countOneBits((vec3<i32>(global2.x, 2147483647i, 28271i) >> (vec3<u32>(7440u, 4294967295u, 1u) % vec3<u32>(32u))) ^ -vec3<i32>(-9542i, -1i, -18033i)), vec3<i32>(-1i) * -vec3<i32>(global3.x, global2.x, global2.x));
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1521f), 1499f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-750f, 169f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-903f, 226f) - vec2<f32>(-157f, 1392f)))), all(vec2<bool>(true, true)))) - vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1545f))), _wgslsmith_f_op_f32(func_1(Struct_1(u_input.a.x, -7045i), Struct_1(3188u, -13794i)))), 865f));
    let var_1 = min(2147483647i, -19158i);
    global2 = _wgslsmith_sub_vec3_i32(reverseBits(vec3<i32>(-1i) * -vec3<i32>(11073i, global2.x, global3.x)), (~_wgslsmith_div_vec3_i32(vec3<i32>(25534i, 2147483647i, global3.x), vec3<i32>(0i, global2.x, global3.x)) & _wgslsmith_mod_vec3_i32(-vec3<i32>(var_1, -6301i, 0i), vec3<i32>(global3.x, global3.x, global3.x))) | _wgslsmith_sub_vec3_i32(-vec3<i32>(var_1, 15796i, 16881i), _wgslsmith_add_vec3_i32(vec3<i32>(-1i, var_1, -10455i), vec3<i32>(1i, 1i, 0i))));
    let var_2 = Struct_1(4294967295u, _wgslsmith_mult_i32(-global2.x, 1i));
    global0 = var_2.a;
    global2 = func_5(func_4(func_3(Struct_1(_wgslsmith_div_u32(u_input.a.x, var_2.a), 42933i), func_2(), var_2), Struct_1(29459u, 27613i)), true, func_4(0u, var_2), i32(-1i) * -23069i);
    global0 = var_2.a;
    let var_3 = Struct_1(~_wgslsmith_sub_u32(0u, abs(_wgslsmith_dot_vec4_u32(vec4<u32>(10464u, var_2.a, 1u, u_input.a.x), vec4<u32>(19194u, 1u, u_input.a.x, 82634u)))), _wgslsmith_sub_i32(~firstTrailingBit(1i), 1i));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a, u_input.a, 38802u);
}

