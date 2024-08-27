struct Struct_1 {
    a: vec3<i32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec3<u32>,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, true);

var<private> global1: array<Struct_5, 32> = array<Struct_5, 32>(Struct_5(Struct_3(vec4<bool>(true, false, false, false), vec3<u32>(33365u, 3576u, 44117u))), Struct_5(Struct_3(vec4<bool>(true, true, true, false), vec3<u32>(40466u, 0u, 0u))), Struct_5(Struct_3(vec4<bool>(true, true, true, true), vec3<u32>(102000u, 63471u, 0u))), Struct_5(Struct_3(vec4<bool>(false, true, true, false), vec3<u32>(32346u, 74177u, 4294967295u))), Struct_5(Struct_3(vec4<bool>(true, false, false, true), vec3<u32>(1u, 0u, 43650u))), Struct_5(Struct_3(vec4<bool>(true, true, true, false), vec3<u32>(98115u, 0u, 0u))), Struct_5(Struct_3(vec4<bool>(true, true, true, true), vec3<u32>(1u, 1u, 29847u))), Struct_5(Struct_3(vec4<bool>(true, false, false, false), vec3<u32>(0u, 14624u, 0u))), Struct_5(Struct_3(vec4<bool>(true, true, false, false), vec3<u32>(12934u, 60955u, 0u))), Struct_5(Struct_3(vec4<bool>(true, true, false, false), vec3<u32>(1u, 1u, 41672u))), Struct_5(Struct_3(vec4<bool>(true, false, false, true), vec3<u32>(2267u, 70788u, 1522u))), Struct_5(Struct_3(vec4<bool>(true, true, false, false), vec3<u32>(0u, 36565u, 1512u))), Struct_5(Struct_3(vec4<bool>(false, false, false, false), vec3<u32>(26801u, 25394u, 1u))), Struct_5(Struct_3(vec4<bool>(true, false, true, false), vec3<u32>(4294967295u, 15276u, 0u))), Struct_5(Struct_3(vec4<bool>(false, false, false, false), vec3<u32>(0u, 15257u, 74189u))), Struct_5(Struct_3(vec4<bool>(false, false, true, false), vec3<u32>(0u, 0u, 50699u))), Struct_5(Struct_3(vec4<bool>(true, false, true, false), vec3<u32>(52678u, 0u, 9125u))), Struct_5(Struct_3(vec4<bool>(true, false, true, false), vec3<u32>(39096u, 46163u, 52729u))), Struct_5(Struct_3(vec4<bool>(true, false, false, false), vec3<u32>(4294967295u, 4294967295u, 0u))), Struct_5(Struct_3(vec4<bool>(false, false, false, true), vec3<u32>(4294967295u, 122798u, 1u))), Struct_5(Struct_3(vec4<bool>(false, true, false, true), vec3<u32>(28458u, 8408u, 4294967295u))), Struct_5(Struct_3(vec4<bool>(false, true, false, true), vec3<u32>(58984u, 64680u, 25700u))), Struct_5(Struct_3(vec4<bool>(false, true, true, true), vec3<u32>(80537u, 4294967295u, 8044u))), Struct_5(Struct_3(vec4<bool>(true, true, false, true), vec3<u32>(26452u, 33721u, 20589u))), Struct_5(Struct_3(vec4<bool>(false, false, false, false), vec3<u32>(7008u, 1u, 35379u))), Struct_5(Struct_3(vec4<bool>(true, true, true, false), vec3<u32>(42996u, 419u, 4316u))), Struct_5(Struct_3(vec4<bool>(false, true, false, false), vec3<u32>(16644u, 1u, 1u))), Struct_5(Struct_3(vec4<bool>(true, true, false, true), vec3<u32>(46317u, 1u, 29146u))), Struct_5(Struct_3(vec4<bool>(true, false, true, true), vec3<u32>(4294967295u, 87376u, 26932u))), Struct_5(Struct_3(vec4<bool>(false, true, true, false), vec3<u32>(0u, 33965u, 63317u))), Struct_5(Struct_3(vec4<bool>(false, true, false, true), vec3<u32>(4294967295u, 85557u, 1u))), Struct_5(Struct_3(vec4<bool>(true, true, true, false), vec3<u32>(31518u, 1u, 307u))));

var<private> global2: vec2<bool> = vec2<bool>(false, true);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
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

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2) -> vec4<bool> {
    var var_0 = Struct_4(global2.x);
    global0 = vec2<bool>(all(!(!(!vec4<bool>(global0.x, global2.x, global0.x, true)))), any(select(!vec2<bool>(global0.x, false), !(!vec2<bool>(var_0.a, false)), true == all(vec3<bool>(false, true, true)))));
    var var_1 = u_input.b.x;
    let var_2 = Struct_2(arg_1.a);
    var var_3 = var_2;
    return select(!(!select(select(vec4<bool>(false, global2.x, false, global0.x), vec4<bool>(var_0.a, false, true, true), true), vec4<bool>(false, global2.x, var_0.a, false), true)), select(select(!select(vec4<bool>(global2.x, global0.x, true, true), vec4<bool>(global2.x, var_0.a, var_0.a, var_0.a), vec4<bool>(var_0.a, false, var_0.a, false)), vec4<bool>(!var_0.a, global0.x, !global0.x, !global0.x), true), vec4<bool>(var_0.a, true, any(vec4<bool>(false, true, true, global2.x)), select(false, all(vec4<bool>(false, var_0.a, global0.x, global2.x)), true)), vec4<bool>(false, !(!global2.x), all(vec4<bool>(false, var_0.a, var_0.a, false)) | true, all(!vec3<bool>(true, true, var_0.a)))), global2.x);
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: bool, arg_3: vec2<f32>) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0));
    var var_1 = !select(!select(select(vec4<bool>(true, arg_2, false, global2.x), vec4<bool>(false, global0.x, false, arg_2), global2.x), !vec4<bool>(true, false, false, arg_2), select(vec4<bool>(false, arg_2, true, global2.x), vec4<bool>(false, true, false, global2.x), global0.x)), select(select(select(vec4<bool>(global0.x, arg_2, true, true), vec4<bool>(false, arg_2, true, global2.x), vec4<bool>(global2.x, false, arg_2, global2.x)), select(vec4<bool>(global0.x, true, global0.x, global0.x), vec4<bool>(true, false, global2.x, false), arg_2), true), vec4<bool>(false, select(true, true, arg_2), global0.x || false, select(true, true, arg_2)), !(!vec4<bool>(false, global2.x, false, global0.x))), func_3(Struct_1(_wgslsmith_div_vec3_i32(vec3<i32>(-1i, u_input.c.x, 2147483647i), vec3<i32>(u_input.a.x, u_input.b.x, 6197i)), vec2<i32>(0i, u_input.b.x)), Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_3.x, -301f)))));
    var_0 = arg_0;
    var_1 = select(select(vec4<bool>(true, !arg_2, any(vec2<bool>(true, arg_2)), any(vec2<bool>(false, global2.x)) || any(vec2<bool>(global0.x, false))), vec4<bool>(all(!var_1.wxw), var_1.x, !(arg_0 == arg_0), !all(vec4<bool>(false, false, global0.x, global0.x))), select(vec4<bool>(arg_2 || false, all(vec4<bool>(var_1.x, false, false, true)), true, any(vec3<bool>(false, false, global0.x))), func_3(Struct_1(vec3<i32>(u_input.a.x, -1i, u_input.c.x), vec2<i32>(-1i, u_input.a.x)), Struct_2(vec3<f32>(-303f, 1009f, 788f))), !(!vec4<bool>(true, global0.x, global2.x, true)))), select(!vec4<bool>(!global2.x, true, global0.x, global2.x), vec4<bool>(all(func_3(Struct_1(vec3<i32>(17139i, 46212i, -13628i), u_input.a), Struct_2(vec3<f32>(arg_3.x, -385f, -1482f))).zzy), _wgslsmith_f_op_f32(-arg_3.x) <= arg_3.x, arg_2, true), !(!select(vec4<bool>(true, false, global2.x, var_1.x), vec4<bool>(true, global2.x, true, false), false))), !(!select(vec4<bool>(global0.x, false, global0.x, global2.x), !vec4<bool>(global0.x, arg_2, global0.x, true), arg_2)));
    let var_2 = global1[_wgslsmith_index_u32(abs(~0u), 32u)];
    return Struct_4(8543u < _wgslsmith_div_u32(abs(var_2.a.b.x), var_2.a.b.x));
}

fn func_4(arg_0: f32, arg_1: Struct_4, arg_2: u32) -> vec2<bool> {
    var var_0 = u_input.a.x;
    let var_1 = vec4<bool>(~arg_2 != (arg_2 >> (1u % 32u)), true, !global0.x, true);
    var var_2 = Struct_3(var_1, (min(~vec3<u32>(arg_2, 15826u, 50219u), firstLeadingBit(vec3<u32>(arg_2, arg_2, 0u))) ^ vec3<u32>(31316u, ~1u, arg_2 >> (arg_2 % 32u))) >> (countOneBits(countOneBits(vec3<u32>(arg_2, 1u, 5917u))) % vec3<u32>(32u)));
    var_0 = -27320i;
    let var_3 = arg_1;
    return var_1.wx;
}

fn func_1(arg_0: f32) -> Struct_2 {
    global0 = !vec2<bool>(select(!global0.x, false, (u_input.a.x >> (4294967295u % 32u)) != u_input.b.x), !(!(!global2.x)));
    global2 = !select(select(vec2<bool>(true || global0.x, global2.x), func_4(_wgslsmith_f_op_f32(-arg_0), func_2(3010f, 30523u, global2.x, vec2<f32>(arg_0, 477f)), 1u), arg_0 >= _wgslsmith_f_op_f32(arg_0 + arg_0)), vec2<bool>(!global0.x, global2.x), !vec2<bool>(global0.x, true));
    global2 = vec2<bool>(true, 6430i < u_input.c.x);
    let var_0 = -848f;
    global0 = !select(vec2<bool>(true, global2.x), vec2<bool>(true, !(var_0 > arg_0)), false);
    return Struct_2(_wgslsmith_div_vec3_f32(vec3<f32>(1000f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(-866f)), _wgslsmith_f_op_f32(-763f + -1253f))), _wgslsmith_f_op_f32(f32(-1f) * -1739f)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(134f, arg_0, arg_0)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 404f, arg_0)))))));
}

fn func_5(arg_0: Struct_2, arg_1: vec4<f32>) -> vec4<bool> {
    let var_0 = ~abs(~(~_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 25639u, 47445u, 0u), vec4<u32>(12771u, 1u, 4294967295u, 4294967295u))));
    var var_1 = all(vec3<bool>(any(!vec4<bool>(global2.x, global2.x, true, false)), true, false));
    var var_2 = vec3<i32>(-2147483647i, u_input.c.x, -15242i);
    var_1 = any(select(vec4<bool>(global2.x & false, u_input.a.x != 0i, true, global2.x), !(!vec4<bool>(true, global2.x, false, true)), !select(true, global2.x, global2.x))) | any(!(!(!vec3<bool>(true, global2.x, true))));
    let var_3 = func_4(arg_0.a.x, func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2150f) * arg_0.a.x), 4294967295u, true, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(f32(-1f) * -329f)))), 1u);
    return !(!vec4<bool>(global2.x, global2.x, max(14077u, var_0.x) < min(30318u, 0u), ~0u == (var_0.x | 4294967295u)));
}

fn func_6(arg_0: vec4<bool>, arg_1: Struct_5, arg_2: vec2<u32>, arg_3: vec3<i32>) -> Struct_2 {
    let var_0 = func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(655f, -741f)) + _wgslsmith_f_op_f32(abs(-108f))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1211f))));
    global2 = arg_0.xw;
    let var_1 = vec3<bool>(false, arg_0.x, global2.x);
    let var_2 = Struct_4(arg_0.x | (true | !all(vec2<bool>(false, false))));
    global1 = array<Struct_5, 32>();
    return func_1(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a.x), 487f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(select(vec4<bool>(true, global2.x, global2.x, false), !select(vec4<bool>(global0.x, global0.x, global2.x, global0.x), !vec4<bool>(false, false, true, global2.x), !vec4<bool>(global2.x, true, global2.x, true)), func_5(func_1(-1078f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-560f, -111f, -1684f, -812f) - vec4<f32>(345f, -1000f, -151f, -507f))))), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(~4294967295u, 1u, ~25795u, _wgslsmith_add_u32(0u, 0u))), ~(~vec4<u32>(0u, 0u, 1u, 1u))), 32u)], vec2<u32>(29958u, ~4294967295u), select((max(vec3<i32>(u_input.b.x, 1i, u_input.b.x), vec3<i32>(24650i, u_input.b.x, u_input.a.x)) ^ abs(vec3<i32>(u_input.b.x, -2147483647i, u_input.c.x))) | ~min(vec3<i32>(u_input.b.x, 31665i, 0i), vec3<i32>(0i, -2147483647i, 42058i)), max(vec3<i32>(-2147483647i, u_input.c.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-33165i, -2147483647i, 0i), vec3<i32>(0i, -1i, -2147483647i))), reverseBits(vec3<i32>(u_input.c.x, u_input.b.x, -2147483647i) << (vec3<u32>(4294967295u, 43218u, 46820u) % vec3<u32>(32u)))), !(!vec3<bool>(true, global2.x, global0.x))));
    let var_1 = ~select(abs(_wgslsmith_sub_vec4_i32(vec4<i32>(32305i, 0i, -40428i, 10294i), vec4<i32>(u_input.b.x, u_input.b.x, -32674i, u_input.a.x))) >> (firstTrailingBit(vec4<u32>(1u, 1u, 1u, 1u)) % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, u_input.c.x, _wgslsmith_mod_i32(-41189i, u_input.c.x), _wgslsmith_mod_i32(-1i, -1i)), ~vec4<i32>(-1i, -1i, u_input.a.x, 60135i)), !vec4<bool>(true, global2.x, false, var_0.a.x > var_0.a.x));
    var var_2 = -1166f;
    let var_3 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.a.x, var_0.a.x) + 1f))));
    global1 = array<Struct_5, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_u32(min(~reverseBits(vec2<u32>(0u, 4294967295u)), abs(_wgslsmith_clamp_vec2_u32(vec2<u32>(25644u, 0u), vec2<u32>(1u, 4294967295u), vec2<u32>(4294967295u, 0u)))), firstLeadingBit(vec2<u32>(4294967295u, ~31828u))), firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(select(0u, 35432u, true), ~1u, min(0u, 0u)), vec3<u32>(1u, 1u, 1u))), -84349i, vec3<u32>(~select(_wgslsmith_add_u32(7200u, 17566u), 30289u, true), _wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 8700u, 28690u), vec3<u32>(1u, 1u, 1u)) ^ _wgslsmith_clamp_u32(11256u, 9090u >> (1u % 32u), ~1u), 24099u));
}

