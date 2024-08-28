struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: i32,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 19>;

var<private> global1: array<Struct_1, 12>;

var<private> global2: Struct_2 = Struct_2(-18052i, Struct_1(vec3<i32>(0i, 23770i, -8039i)));

var<private> global3: Struct_3;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1) -> vec4<f32> {
    global0 = array<vec2<i32>, 19>();
    global1 = array<Struct_1, 12>();
    var var_0 = 2147483647i;
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(822f, 972f, 395f))) - vec3<f32>(-118f, -206f, -834f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-723f, 1000f, -1349f) * vec3<f32>(-107f, 437f, 1501f)))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(1000f * -343f), 346f, 1f)))));
    var var_2 = _wgslsmith_clamp_vec3_u32(~abs(vec3<u32>(~4294967295u, _wgslsmith_div_u32(1u, 82362u), firstLeadingBit(0u))), ~_wgslsmith_sub_vec3_u32(reverseBits(vec3<u32>(1u, 1u, 1u)), vec3<u32>(101258u, 57635u, 85273u)), vec3<u32>(~1u, _wgslsmith_mod_u32(1u, max(4294967295u, ~0u)), abs(_wgslsmith_div_u32(49906u << (0u % 32u), 44892u))));
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1.x, -2015f, _wgslsmith_f_op_f32(-var_1.x), -902f))) + vec4<f32>(_wgslsmith_f_op_f32(floor(-1034f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-485f - -1394f) + 618f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.x), -1000f, false)), _wgslsmith_f_op_f32(371f * _wgslsmith_f_op_f32(-var_1.x)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(-1388f + -510f), _wgslsmith_f_op_f32(sign(-911f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-751f, -1532f, -512f, _wgslsmith_f_op_f32(225f * var_1.x)) + vec4<f32>(var_1.x, _wgslsmith_f_op_f32(floor(151f)), -392f, -1000f))));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec4<u32>, arg_2: vec3<f32>, arg_3: vec2<f32>) -> vec3<i32> {
    global2 = Struct_2(abs(-2147483647i), Struct_1(_wgslsmith_clamp_vec3_i32(select(global2.b.a, global3.a.b.a, false) >> (vec3<u32>(74088u, 37994u, 15100u) % vec3<u32>(32u)), global3.a.b.a, ~vec3<i32>(-803i, global3.c, global2.b.a.x))));
    global1 = array<Struct_1, 12>();
    var var_0 = Struct_3(Struct_2(_wgslsmith_sub_i32(i32(-1i) * -11140i, _wgslsmith_sub_i32(global2.a | global3.a.a, 44506i << (arg_1.x % 32u))), global2.b), _wgslsmith_div_i32(_wgslsmith_mod_i32(global2.a | -673i, -24159i) & _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(global2.b.a.x, -2147483647i, global2.b.a.x, 2147483647i), vec4<i32>(-2147483647i, u_input.a.x, 37770i, 2147483647i)), -vec4<i32>(1i, global2.b.a.x, -2147483647i, u_input.a.x)), abs(~(-1i))), u_input.a.x);
    let var_1 = -977f;
    let var_2 = Struct_3(global3.a, -1i, -2147483647i);
    return -vec3<i32>(abs(max(1i, ~var_2.b)), _wgslsmith_add_i32(1i, -(i32(-1i) * -70719i)), global2.a ^ -1i);
}

fn func_2(arg_0: i32, arg_1: vec2<i32>) -> vec3<i32> {
    let var_0 = 0u;
    var var_1 = Struct_1(~firstTrailingBit(func_4(_wgslsmith_f_op_vec4_f32(func_3(global1[_wgslsmith_index_u32(1u, 12u)])), vec4<u32>(45754u, var_0, 68237u, 4294967295u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -527f, 300f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(306f, -1060f) + vec2<f32>(-205f, -397f)))));
    global1 = array<Struct_1, 12>();
    let var_2 = select(!(!vec4<bool>(0u <= var_0, var_0 <= var_0, true, true)), vec4<bool>(false, all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false))), false, !any(vec4<bool>(false, true, false, true))), (var_0 != ~_wgslsmith_clamp_u32(97890u, var_0, 4294967295u)) & true);
    let var_3 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1880f - _wgslsmith_f_op_f32(max(459f, -878f))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1264f))))));
    return (countOneBits(var_1.a) | var_1.a) ^ (~(-func_4(vec4<f32>(var_3.a, 669f, 956f, var_3.a), vec4<u32>(1u, var_0, 40905u, var_0), vec3<f32>(830f, var_3.a, -382f), vec2<f32>(-800f, var_3.a))) | vec3<i32>(~_wgslsmith_mod_i32(22345i, global2.b.a.x), var_1.a.x, ~global2.b.a.x >> (1u % 32u)));
}

fn func_1() -> i32 {
    return _wgslsmith_dot_vec3_i32(~_wgslsmith_div_vec3_i32(global2.b.a, abs(vec3<i32>(0i, -3713i, global3.a.b.a.x))), func_2(~u_input.a.x, countOneBits(vec2<i32>(global2.b.a.x, 2147483647i)))) & -2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(1u, 1u, 1u);
    let var_1 = global2.b.a;
    let var_2 = vec2<i32>(~global2.a, global3.b);
    var var_3 = global2.b;
    let var_4 = -_wgslsmith_mod_i32(_wgslsmith_mult_i32(countOneBits(global3.a.a), _wgslsmith_add_i32(func_1(), var_1.x)), _wgslsmith_dot_vec4_i32(countOneBits(firstLeadingBit(vec4<i32>(var_2.x, var_1.x, var_3.a.x, var_2.x))), vec4<i32>(var_2.x, ~(-1i), global3.b, u_input.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) + vec4<f32>(_wgslsmith_f_op_f32(-1388f + -1355f), 451f, _wgslsmith_f_op_vec4_f32(func_3(global2.b)).x, _wgslsmith_f_op_f32(589f - 1107f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(Struct_1(vec3<i32>(var_4, 2322i, var_1.x)))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1f, 1f, 1f, 1f)))) * vec4<f32>(_wgslsmith_f_op_vec4_f32(func_3(global2.b)).x, _wgslsmith_f_op_f32(-3412f + _wgslsmith_f_op_f32(ceil(-603f))), 348f, _wgslsmith_f_op_f32(-799f * _wgslsmith_f_op_f32(f32(-1f) * -1020f)))), 14619u);
}

