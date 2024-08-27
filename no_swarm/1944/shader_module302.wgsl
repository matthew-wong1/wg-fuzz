struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: vec3<i32>,
    d: vec2<u32>,
    e: u32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: vec2<f32>,
    d: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: f32,
    c: u32,
    d: f32,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: u32,
    d: vec2<u32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 32> = array<vec3<u32>, 32>(vec3<u32>(7977u, 4294967295u, 4294967295u), vec3<u32>(0u, 21118u, 1u), vec3<u32>(23489u, 0u, 11205u), vec3<u32>(0u, 34123u, 0u), vec3<u32>(1u, 28317u, 0u), vec3<u32>(1u, 4294967295u, 0u), vec3<u32>(4294967295u, 7967u, 0u), vec3<u32>(5549u, 0u, 4294967295u), vec3<u32>(16066u, 23309u, 11789u), vec3<u32>(4314u, 25646u, 19066u), vec3<u32>(4294967295u, 34036u, 1u), vec3<u32>(30300u, 0u, 35438u), vec3<u32>(59454u, 4294967295u, 1u), vec3<u32>(5547u, 4294967295u, 1u), vec3<u32>(38608u, 4294967295u, 0u), vec3<u32>(4294967295u, 41904u, 4294967295u), vec3<u32>(4294967295u, 1u, 15636u), vec3<u32>(100144u, 24808u, 0u), vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(0u, 82719u, 4294967295u), vec3<u32>(6181u, 0u, 15178u), vec3<u32>(4294967295u, 5012u, 4294967295u), vec3<u32>(27909u, 1u, 16886u), vec3<u32>(17501u, 0u, 4294967295u), vec3<u32>(0u, 77826u, 3689u), vec3<u32>(0u, 0u, 4294967295u), vec3<u32>(0u, 0u, 24634u), vec3<u32>(1919u, 4294967295u, 0u), vec3<u32>(0u, 1u, 1u), vec3<u32>(22879u, 4294967295u, 0u), vec3<u32>(4294967295u, 54272u, 83067u), vec3<u32>(0u, 4294967295u, 26845u));

var<private> global1: vec4<u32>;

var<private> global2: Struct_2 = Struct_2(true);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> bool {
    let var_0 = Struct_3(all(vec2<bool>(false, any(select(vec3<bool>(false, global2.a, false), vec3<bool>(global2.a, global2.a, true), true)))), Struct_1(-1313f, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -423f)), _wgslsmith_f_op_f32(trunc(536f))), ~countOneBits(vec3<i32>(0i, 2147483647i, 2147483647i) << (vec3<u32>(52261u, global1.x, 9474u) % vec3<u32>(32u))), vec2<u32>(23986u, ~u_input.b.x), u_input.b.x), vec2<f32>(-1116f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -629f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1388f * -644f), _wgslsmith_f_op_f32(f32(-1f) * -957f)))))), Struct_2(global2.a));
    global0 = array<vec3<u32>, 32>();
    var var_1 = abs(-2147483647i);
    global0 = array<vec3<u32>, 32>();
    var var_2 = _wgslsmith_f_op_f32(303f + var_0.c.x);
    return var_0.a;
}

fn func_2(arg_0: bool, arg_1: i32, arg_2: Struct_4, arg_3: f32) -> bool {
    let var_0 = Struct_2(func_3());
    var var_1 = _wgslsmith_mult_vec3_i32(reverseBits(vec3<i32>(~(arg_2.e >> (29623u % 32u)), _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(0i, 48978i, arg_2.e, arg_2.e)), _wgslsmith_mult_vec4_i32(vec4<i32>(arg_2.e, -19722i, arg_2.e, arg_2.e), vec4<i32>(2147483647i, 3267i, 26218i, -11807i))), arg_1)), ~(vec3<i32>(-1i) * -max(vec3<i32>(arg_1, 14039i, -1i), vec3<i32>(arg_1, -1i, -10101i))));
    let var_2 = 0u;
    global0 = array<vec3<u32>, 32>();
    var_1 = ~_wgslsmith_clamp_vec3_i32(~max(select(vec3<i32>(-2147483647i, var_1.x, arg_1), vec3<i32>(-21662i, var_1.x, -42276i), vec3<bool>(true, true, arg_0)), vec3<i32>(var_1.x, 18600i, arg_1)), select(vec3<i32>(arg_1, var_1.x, 2147483647i) >> (select(vec3<u32>(85404u, u_input.a, u_input.a), global0[_wgslsmith_index_u32(u_input.a, 32u)], vec3<bool>(false, true, arg_0)) % vec3<u32>(32u)), vec3<i32>(-arg_1, 0i ^ arg_1, -1i), global2.a), ~vec3<i32>(arg_1 << (0u % 32u), arg_1, arg_2.e));
    return false;
}

fn func_1() -> f32 {
    global0 = array<vec3<u32>, 32>();
    var var_0 = !(!select(vec4<bool>(!global2.a, func_2(global2.a, -2147483647i, Struct_4(1034f, 2081f, u_input.b.x, -454f, 0i), -1215f), !global2.a, global2.a & global2.a), select(!vec4<bool>(global2.a, global2.a, global2.a, global2.a), vec4<bool>(global2.a, false, true, false), true), vec4<bool>(global2.a & global2.a, true, global2.a, global2.a)));
    var var_1 = reverseBits(vec2<i32>(-_wgslsmith_dot_vec3_i32(~vec3<i32>(-2147483647i, 1i, 16291i), vec3<i32>(2147483647i, 45290i, 1i)), _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 0i, 2147483647i, 31291i), vec4<i32>(45230i, 1i, 1248i, -13922i)), abs(8178i), 0i), vec3<i32>(0i, 8845i, _wgslsmith_mult_i32(0i, -2147483647i)))));
    var_0 = !(!(!vec4<bool>(var_0.x, any(var_0.xxx), !global2.a, global1.x <= global1.x)));
    let var_2 = u_input.b.x | _wgslsmith_mult_u32(~(~global1.x), ~(firstLeadingBit(u_input.b.x) >> (17358u % 32u)));
    return _wgslsmith_f_op_f32(1381f + _wgslsmith_f_op_f32(ceil(-400f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_f_op_f32(func_1()))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -406f), _wgslsmith_f_op_f32(select(-492f, -268f, global2.a))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(704f, -468f) * vec2<f32>(-855f, 499f)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-792f, -2811f)))))), _wgslsmith_mult_vec3_i32(vec3<i32>(-24044i, -1i, 1i), max(_wgslsmith_add_vec3_i32(min(vec3<i32>(-26964i, 21605i, 0i), vec3<i32>(2147483647i, 1i, -2147483647i)), abs(vec3<i32>(2147483647i, -44390i, 2147483647i))), -select(vec3<i32>(0i, 22548i, -54826i), vec3<i32>(0i, 12007i, 45693i), vec3<bool>(global2.a, true, true)))), vec2<u32>(0u, _wgslsmith_div_u32(global1.x | global1.x, 4294967295u) ^ u_input.a), _wgslsmith_mod_u32(~countOneBits(firstTrailingBit(global1.x)), ~36236u));
    var var_1 = global1.x;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.b.x + var_0.a), 544f) - var_0.b.x))), var_0.b, vec3<i32>(1i, firstLeadingBit(var_0.c.x), 107719i), u_input.b, max(global1.x, select(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, global1.x, global1.x, var_0.e), countOneBits(vec4<u32>(u_input.b.x, var_0.d.x, 33881u, 54676u))), (4294967295u ^ u_input.a) | ~0u, global2.a)));
    global2 = Struct_2(global2.a);
    var_0 = Struct_1(_wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-855f, -1000f)), var_0.b)), abs(max(vec3<i32>(var_2.c.x, 1i, -28106i), firstTrailingBit(~vec3<i32>(2147483647i, var_0.c.x, var_2.c.x)))), var_0.d, ~(~_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 0u, 15623u), vec3<u32>(27279u, 90891u, 2562u)), ~global1.x)));
    global1 = ~firstLeadingBit(vec4<u32>(_wgslsmith_mult_u32(4294967295u ^ var_0.e, _wgslsmith_add_u32(4800u, var_0.e)), u_input.b.x, ~abs(u_input.b.x), ~firstTrailingBit(0u)));
    let var_3 = var_2.c >> ((_wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(global0[_wgslsmith_index_u32(1u, 32u)], ~vec3<u32>(var_2.d.x, var_2.e, 34148u)), vec3<u32>(global1.x, firstLeadingBit(var_2.e), ~0u)) | max(vec3<u32>(u_input.b.x, ~var_2.d.x, 1820u), vec3<u32>(~1194u, 33254u, max(1915u, var_2.e)))) % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-742f, -664f, var_2.a, var_0.a)) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_2.a, var_2.a, -478f, 1000f)))))), -_wgslsmith_sub_i32(firstTrailingBit(var_0.c.x), abs(_wgslsmith_div_i32(var_0.c.x, var_3.x))), ~var_0.d.x, var_0.d, vec4<u32>(~1u, var_2.d.x, ~(~var_0.e), ~4380u));
}

