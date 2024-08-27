struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: f32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec3<bool>,
    c: f32,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 22> = array<vec2<u32>, 22>(vec2<u32>(65174u, 1u), vec2<u32>(9660u, 22485u), vec2<u32>(0u, 7857u), vec2<u32>(54890u, 46912u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(76503u, 4294967295u), vec2<u32>(0u, 4294967295u), vec2<u32>(1u, 0u), vec2<u32>(1u, 63360u), vec2<u32>(1u, 7696u), vec2<u32>(15957u, 89728u), vec2<u32>(25917u, 61299u), vec2<u32>(17991u, 73863u), vec2<u32>(0u, 0u), vec2<u32>(0u, 15505u), vec2<u32>(19701u, 4294967295u), vec2<u32>(0u, 0u), vec2<u32>(0u, 15129u), vec2<u32>(0u, 4294967295u), vec2<u32>(1u, 4294967295u), vec2<u32>(4294967295u, 1u), vec2<u32>(1u, 1u));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: f32, arg_1: vec4<i32>, arg_2: u32, arg_3: i32) -> bool {
    global0 = array<vec2<u32>, 22>();
    global0 = array<vec2<u32>, 22>();
    global0 = array<vec2<u32>, 22>();
    global0 = array<vec2<u32>, 22>();
    var var_0 = Struct_3(vec2<u32>(arg_2, arg_2), vec3<bool>(!any(vec3<bool>(true, true, true)), true, all(vec3<bool>(true, true, true))), arg_0);
    return all(var_0.b);
}

fn func_3(arg_0: vec3<f32>, arg_1: vec2<bool>, arg_2: vec3<u32>) -> vec3<i32> {
    global0 = array<vec2<u32>, 22>();
    global0 = array<vec2<u32>, 22>();
    let var_0 = Struct_4(~_wgslsmith_sub_u32(arg_2.x, arg_2.x), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(203f * _wgslsmith_f_op_f32(-228f * arg_0.x)) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(648f - arg_0.x)))), _wgslsmith_dot_vec4_i32((vec4<i32>(u_input.a, 2147483647i, -25352i, u_input.a) | vec4<i32>(1i, 1i, -9961i, u_input.a)) >> ((vec4<u32>(1u, 1u, 64343u, 33862u) << (vec4<u32>(4294967295u, 39512u, 13474u, arg_2.x) % vec4<u32>(32u))) % vec4<u32>(32u)), ~max(vec4<i32>(9857i, 2147483647i, 1i, u_input.a), vec4<i32>(2147483647i, 0i, -10440i, 0i)))));
    return ~select(vec3<i32>(-14874i, 0i, -var_0.b.b << (firstTrailingBit(var_0.a) % 32u)), _wgslsmith_add_vec3_i32(~(vec3<i32>(1i, u_input.a, u_input.a) & vec3<i32>(var_0.b.b, var_0.b.b, var_0.b.b)), vec3<i32>(i32(-1i) * -1i, 0i, -2147483647i)), any(!(!vec3<bool>(false, arg_1.x, true))));
}

fn func_1(arg_0: Struct_1) -> Struct_4 {
    var var_0 = arg_0;
    var var_1 = _wgslsmith_mult_vec3_i32(vec3<i32>(i32(-1i) * -_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -1i), vec2<i32>(u_input.a, 64963i)), arg_0.b, _wgslsmith_add_i32(36774i, _wgslsmith_div_i32(_wgslsmith_mult_i32(-6537i, -31414i), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(-32903i, arg_0.b))))), func_3(vec3<f32>(1000f, -1490f, arg_0.a), vec2<bool>(false && func_2(-355f, vec4<i32>(arg_0.b, var_0.b, arg_0.b, -1473i), 8923u, arg_0.b), true), _wgslsmith_sub_vec3_u32(firstTrailingBit(vec3<u32>(12064u, 15158u, 0u)) & ~vec3<u32>(1u, 6510u, 0u), vec3<u32>(abs(42829u), ~83472u, 1u))));
    var var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) - arg_0.a))));
    var var_3 = Struct_4(_wgslsmith_mod_u32(1u, _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(1u, 4294967295u, 0u, 4294967295u)), vec4<u32>(1u << (0u % 32u), _wgslsmith_add_u32(0u, 1u), abs(1u), 21480u))), arg_0);
    var var_4 = Struct_3(_wgslsmith_mult_vec2_u32(global0[_wgslsmith_index_u32(~(~(~1u)), 22u)], vec2<u32>(max(var_3.a, var_3.a), min(abs(4294967295u), 0u))), !select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), false)), arg_0.a);
    return Struct_4(~var_4.a.x, Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -571f), var_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-864f)) * 649f)), _wgslsmith_add_i32(u_input.a, 6869i)));
    var var_1 = func_1(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -751f) - _wgslsmith_f_op_f32(f32(-1f) * -806f))), 7090i));
    var_1 = var_0;
    var var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(524f, -230f, var_1.b.a, -686f) * vec4<f32>(var_0.b.a, var_1.b.a, var_0.b.a, var_1.b.a))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1461f, var_1.b.a, var_1.b.a, var_1.b.a) + vec4<f32>(var_1.b.a, var_0.b.a, var_1.b.a, -527f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b.a, -372f, 306f, var_0.b.a) + vec4<f32>(var_0.b.a, var_0.b.a, var_1.b.a, var_1.b.a)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1.b.a, var_0.b.a, -1608f, var_1.b.a))))))), _wgslsmith_f_op_f32(-var_1.b.a));
    let var_3 = max(vec2<i32>(reverseBits(max(27817i, var_1.b.b << (4294967295u % 32u))), var_0.b.b), _wgslsmith_add_vec2_i32(~(vec2<i32>(u_input.a, var_1.b.b) << (firstTrailingBit(vec2<u32>(var_1.a, 9293u)) % vec2<u32>(32u))), _wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(~vec2<i32>(42705i, var_1.b.b), select(vec2<i32>(u_input.a, 0i), vec2<i32>(var_0.b.b, var_1.b.b), vec2<bool>(false, true))), ~reverseBits(vec2<i32>(-33146i, var_1.b.b)))));
    var var_4 = vec4<bool>(select(true, false, true), true, !any(vec2<bool>(true, false)), true);
    global0 = array<vec2<u32>, 22>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(abs(var_0.a) & var_1.a, _wgslsmith_dot_vec2_u32(~(~vec2<u32>(var_0.a, var_0.a)), ~min(vec2<u32>(var_1.a, 4294967295u), global0[_wgslsmith_index_u32(var_1.a, 22u)])), ~countOneBits(~var_1.a)), vec4<f32>(var_1.b.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b) - -780f) * _wgslsmith_f_op_f32(-var_0.b.a)), -429f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_2.a.x, -371f, false)))))), 1418f, var_1.b.b);
}

