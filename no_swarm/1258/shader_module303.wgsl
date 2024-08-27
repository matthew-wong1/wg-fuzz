struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec4<f32>,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 27>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: u32) -> bool {
    var var_0 = arg_0.b;
    global0 = array<vec4<f32>, 27>();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.a, _wgslsmith_div_f32(arg_0.d, _wgslsmith_f_op_f32(step(1023f, arg_1)))) + _wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-943f, arg_1)) - _wgslsmith_f_op_f32(ceil(-1132f))) - 708f)));
    var var_2 = arg_2;
    let var_3 = select(-arg_0.b.b >> (abs(15808u) % 32u), arg_0.b.b, reverseBits(max(i32(-1i) * -14251i, firstTrailingBit(-1i))) == reverseBits(_wgslsmith_dot_vec4_i32(-vec4<i32>(0i, var_0.b, var_0.b, arg_0.b.b), vec4<i32>(8896i, 0i, u_input.b, u_input.d.x))));
    return true;
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: u32) -> Struct_2 {
    let var_0 = func_3(Struct_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1573f * -137f), _wgslsmith_f_op_f32(f32(-1f) * -223f))), arg_1, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1291f * -391f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(138f, -1098f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1090f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1194f * 1000f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-376f, _wgslsmith_f_op_f32(max(-1170f, -730f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1247f, -958f)), _wgslsmith_div_f32(1008f, -1144f)))), 74264u);
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(f32(-1f) * -178f)) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1153f, 754f) * vec2<f32>(1581f, 345f))))));
    let var_2 = select(any(vec3<bool>(true, !(var_0 | var_0), select(true, all(vec2<bool>(var_0, var_0)), any(vec4<bool>(false, var_0, false, false))))), _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(min(arg_0, arg_0), vec3<u32>(8518u, arg_0.x, arg_0.x)), 4294967295u) < (reverseBits(reverseBits(0u)) & ~firstTrailingBit(arg_2)), true);
    global0 = array<vec4<f32>, 27>();
    let var_3 = _wgslsmith_mult_vec4_i32(vec4<i32>(-_wgslsmith_div_i32(-arg_1.b, arg_1.b), -max(abs(u_input.b), 57967i), arg_1.b, arg_1.b), select(vec4<i32>(1i, countOneBits(arg_1.b), 0i, -47494i), vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_div_i32(-1i, 21870i), reverseBits(-2948i)), arg_1.b, i32(-1i) * -u_input.a, -33273i), vec4<bool>(var_0 | true, var_0, !(!var_0), var_2)));
    return Struct_2(var_1.x, Struct_1(30551u, u_input.c), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -805f), 268f, var_1.x, _wgslsmith_f_op_f32(select(var_1.x, _wgslsmith_div_f32(var_1.x, var_1.x), !var_2))) + global0[_wgslsmith_index_u32(select(1u, _wgslsmith_div_u32(arg_2 | 1u, firstTrailingBit(arg_2)), true), 27u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_1.x + 129f))) + _wgslsmith_f_op_f32(var_1.x * -111f))));
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: vec4<u32>) -> vec4<i32> {
    let var_0 = arg_1;
    let var_1 = func_2(vec3<u32>(arg_2.x, arg_2.x, ~arg_2.x >> (12681u % 32u)), Struct_1(arg_2.x, _wgslsmith_mod_i32(_wgslsmith_mult_i32(-19676i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, u_input.a), u_input.d)), reverseBits(-u_input.b))), _wgslsmith_sub_u32(arg_2.x, arg_2.x));
    global0 = array<vec4<f32>, 27>();
    global0 = array<vec4<f32>, 27>();
    global0 = array<vec4<f32>, 27>();
    return -select(vec4<i32>(-1i, min(4748i >> (0u % 32u), select(u_input.d.x, 16124i, arg_0)), 26604i, 1i & var_1.b.b), select(-vec4<i32>(30816i, -44912i, var_1.b.b, 48058i), vec4<i32>(u_input.c, min(-18872i, -42134i), ~(-310i), _wgslsmith_div_i32(1i, -2147483647i)), arg_0 || !arg_0), !select(vec4<bool>(false, var_0, true, true), vec4<bool>(true, false, arg_0, var_0), select(vec4<bool>(arg_1, arg_1, arg_0, var_0), vec4<bool>(arg_1, arg_1, true, false), true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -_wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, -2147483647i, u_input.d.x, 25672i), ~vec4<i32>(0i, u_input.b, -2147483647i, 0i)) << (~abs(vec4<u32>(36497u, 0u, 28974u, 21834u)) % vec4<u32>(32u)), reverseBits(vec4<i32>(i32(-1i) * -1i, -2147483647i, -u_input.c, u_input.a)), firstTrailingBit(func_1(select(true, true, false), true, ~vec4<u32>(21434u, 1u, 3315u, 4294967295u))));
    var var_1 = Struct_1(abs(19683u), firstTrailingBit(var_0.x));
    var_1 = Struct_1(var_1.a, 2147483647i);
    var var_2 = true;
    let var_3 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * -672f)), func_2(firstTrailingBit(_wgslsmith_mod_vec3_u32(~vec3<u32>(63088u, var_1.a, var_1.a), max(vec3<u32>(40574u, 49570u, var_1.a), vec3<u32>(0u, var_1.a, 4294967295u)))), func_2(~vec3<u32>(0u, var_1.a, 24912u), Struct_1(var_1.a | var_1.a, -33712i), var_1.a).b, ~var_1.a).b, vec4<f32>(-359f, func_2(abs(vec3<u32>(47936u, 4294967295u, 96813u)), Struct_1(firstLeadingBit(var_1.a), ~u_input.b), _wgslsmith_clamp_u32(_wgslsmith_mult_u32(var_1.a, var_1.a), 0u, _wgslsmith_add_u32(var_1.a, 0u))).d, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(902f, -504f)) - 1f))), 1442f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1901f)) * _wgslsmith_f_op_f32(ceil(-1249f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-881f, -628f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1249f))))));
    let var_4 = vec2<u32>(1u, var_1.a);
    var var_5 = func_2(_wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(var_4, ~vec2<u32>(4294967295u, var_4.x)), 4294967295u, var_1.a), ~(~vec3<u32>(4294967295u, var_1.a, 1u)) ^ vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(29512u, 96007u, var_1.a), vec3<u32>(0u, var_3.b.a, 72480u)), ~11141u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_4.x, 0u, 78314u), vec3<u32>(var_1.a, var_3.b.a, var_3.b.a)))), var_3.b, ~(~4294967295u)).b;
    let x = u_input.a;
    s_output = StorageBuffer(abs(abs(max(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, var_4.x, 10836u), vec3<u32>(0u, 0u, 79556u)), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, 24888u, var_3.b.a), vec3<u32>(var_4.x, var_4.x, var_1.a))))), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, -688i >> (var_3.b.a % 32u)), select(-vec2<i32>(var_1.b, 2147483647i), vec2<i32>(var_0.x, -43072i), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false)))), max(0i, 50010i) >> ((46849u | _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 20424u, 117335u, 1u), vec4<u32>(4294967295u, 13398u, 4294967295u, 1u))) % 32u), -13539i, i32(-1i) * -1i));
}

