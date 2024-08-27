struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: i32,
    d: bool,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 22>;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3() -> f32 {
    global0 = array<f32, 22>();
    global0 = array<f32, 22>();
    var var_0 = 4294967295u;
    var_0 = ~(~_wgslsmith_mult_u32(max(26192u, 25020u), 3308u)) ^ abs(_wgslsmith_sub_u32(countOneBits(0u), firstTrailingBit(44347u)) & _wgslsmith_div_u32(1u, _wgslsmith_div_u32(52101u, 1u)));
    global0 = array<f32, 22>();
    return -510f;
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-217f, global0[_wgslsmith_index_u32(9894u, 22u)], 215f)) + vec3<f32>(global0[_wgslsmith_index_u32(88579u, 22u)], global0[_wgslsmith_index_u32(35757u, 22u)], global0[_wgslsmith_index_u32(0u, 22u)]))) - vec3<f32>(418f, -399f, _wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(0u, 22u)])))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(func_3()), _wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(reverseBits(vec3<i32>(u_input.a, u_input.a, u_input.a)), reverseBits(vec3<i32>(30242i, u_input.a, u_input.a))), ~vec3<i32>(-13361i, u_input.a, -1i)), vec3<i32>(~_wgslsmith_sub_i32(u_input.a, u_input.a), u_input.a, -(u_input.a << (1u % 32u)))), u_input.a, all(select(select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false)), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true))), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true), select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false)), vec3<bool>(true, false, true), any(vec3<bool>(false, false, false))))), _wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(reverseBits(7170u), ~22914u), firstTrailingBit(vec2<u32>(1u, 1u))), _wgslsmith_clamp_vec2_u32(firstTrailingBit(~vec2<u32>(50387u, 0u)), abs(~vec2<u32>(1u, 4294967295u)), max(abs(vec2<u32>(4294967295u, 32363u)), ~vec2<u32>(66238u, 1u)))));
    var var_2 = var_1.d;
    let var_3 = select(_wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_add_u32(_wgslsmith_mult_u32(0u, var_1.e.x), var_1.e.x), ~(~var_1.e.x), ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.e.x, var_1.e.x, var_1.e.x, 30174u), vec4<u32>(var_1.e.x, var_1.e.x, var_1.e.x, var_1.e.x)), _wgslsmith_dot_vec2_u32(var_1.e | var_1.e, vec2<u32>(4294967295u, 46711u))), ~vec4<u32>(abs(1u), 1u, 0u, var_1.e.x), ~vec4<u32>(~var_1.e.x, 4294967295u, _wgslsmith_mult_u32(1u, var_1.e.x), ~4294967295u)), select(reverseBits(vec4<u32>(min(var_1.e.x, 4294967295u), ~var_1.e.x, 76624u, ~32202u)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.e.x, var_1.e.x, var_1.e.x, var_1.e.x), vec4<u32>(39084u, var_1.e.x, var_1.e.x, 20357u), vec4<u32>(16329u, var_1.e.x, 2462u, var_1.e.x)), vec4<bool>(!any(vec3<bool>(true, var_1.d, false)), !var_1.d != select(true, true, false), var_1.d, !all(vec3<bool>(var_1.d, var_1.d, false)))), !select(!vec4<bool>(var_1.d, var_1.d, true, var_1.d), !vec4<bool>(false, var_1.d, var_1.d, false), any(select(vec2<bool>(var_1.d, true), vec2<bool>(var_1.d, false), var_1.d))));
    var var_4 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1724f), _wgslsmith_mult_vec3_i32(-var_1.b, vec3<i32>(u_input.a, -2147483647i, abs(0i)) ^ min(var_1.b, vec3<i32>(-2147483647i, -36370i, var_1.c))), abs(countOneBits(abs(var_1.b.x))) | -2147483647i, -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, var_1.b.x, var_1.b.x, -2147483647i) << (var_3 % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, 44323i, var_1.b.x, u_input.a), vec4<i32>(550i, u_input.a, -2147483647i, u_input.a))) >= u_input.a, firstTrailingBit(reverseBits(var_1.e) >> (_wgslsmith_clamp_vec2_u32(var_1.e, vec2<u32>(var_1.e.x, 1u), vec2<u32>(4294967295u, 8317u)) % vec2<u32>(32u))) << ((vec2<u32>(~1u, var_1.e.x) | vec2<u32>(~0u, ~var_3.x)) % vec2<u32>(32u)));
    return var_0;
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: Struct_2) -> f32 {
    global0 = array<f32, 22>();
    var var_0 = arg_1;
    let var_1 = ~(-firstTrailingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(var_0.c, arg_2.x, arg_1.b.x, u_input.a), vec4<i32>(24048i, u_input.a, -2147483647i, u_input.a)))) << (~firstLeadingBit(vec4<u32>(arg_1.e.x | var_0.e.x, ~var_0.e.x, 4294967295u, 1189u)) % vec4<u32>(32u));
    return _wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1199f, func_2().a.x), 676f)));
}

fn func_1() -> Struct_1 {
    global0 = array<f32, 22>();
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1525f * _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1107f, global0[_wgslsmith_index_u32(1u, 22u)]) * vec2<f32>(global0[_wgslsmith_index_u32(13275u, 22u)], global0[_wgslsmith_index_u32(0u, 22u)])), Struct_1(global0[_wgslsmith_index_u32(0u, 22u)], vec3<i32>(u_input.a, u_input.a, u_input.a), -1i, true, vec2<u32>(44132u, 4294967295u)), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(1i, -5020i, u_input.a)), func_2())))), func_2().a.x);
    var_0 = global0[_wgslsmith_index_u32(32520u << (_wgslsmith_mod_u32(_wgslsmith_div_u32(countOneBits(1u), countOneBits(1u)) | _wgslsmith_dot_vec4_u32(vec4<u32>(4084u, 0u, 1u, 114559u), vec4<u32>(1u, 1u, 1u, 1u)), countOneBits(_wgslsmith_mult_u32(4294967295u, reverseBits(0u)))) % 32u), 22u)];
    let var_1 = _wgslsmith_clamp_u32(reverseBits(1u), min(3987u >> ((~4294967295u << (1u % 32u)) % 32u), ~(~36582u >> (1u % 32u))), 1u);
    global0 = array<f32, 22>();
    return Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(~0u, 22u)])))), countOneBits(vec3<i32>(u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, -12130i)), countOneBits(-2147483647i)) & -vec3<i32>(-22419i, 1i, -17817i)), -22894i, false, ~vec2<u32>(4294967295u, var_1));
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec3<u32>) -> u32 {
    let var_0 = vec3<i32>(~_wgslsmith_div_i32(20731i, arg_1.b.x), arg_1.b.x, ~select(-reverseBits(-1i), 1i, true));
    global0 = array<f32, 22>();
    global0 = array<f32, 22>();
    let var_1 = !vec2<bool>(all(!vec4<bool>(arg_1.d, false, true, arg_1.d)), false);
    var var_2 = vec3<i32>(~(i32(-1i) * -_wgslsmith_sub_i32(arg_1.c, u_input.a)), _wgslsmith_add_i32(0i, -_wgslsmith_sub_i32(u_input.a, 2147483647i) & var_0.x), -4838i & arg_1.b.x);
    return arg_3.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~func_5(vec2<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 22u)]), 225f), func_1(), Struct_2(vec3<f32>(_wgslsmith_f_op_f32(181f + global0[_wgslsmith_index_u32(1u, 22u)]), -152f, -944f)), ~reverseBits(~vec3<u32>(1u, 4294967295u, 4294967295u)));
    var var_1 = any(!(!select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false)), vec4<bool>(false, false, false, true), true)));
    var_1 = any(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, all(vec4<bool>(true, true, false, true)), true), !select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), true)));
    var_1 = true;
    global0 = array<f32, 22>();
    let var_2 = !(~(~firstTrailingBit(49800u)) <= _wgslsmith_sub_u32(func_5(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global0[_wgslsmith_index_u32(0u, 22u)], 1308f))), Struct_1(global0[_wgslsmith_index_u32(1u, 22u)], vec3<i32>(-33567i, u_input.a, -33028i), u_input.a, false, vec2<u32>(20934u, 1u)), Struct_2(vec3<f32>(-1000f, -404f, global0[_wgslsmith_index_u32(1u, 22u)])), ~vec3<u32>(0u, 0u, 80524u)), 4294967295u));
    global0 = array<f32, 22>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(~((u_input.a >> (45316u % 32u)) & u_input.a), firstTrailingBit(min(u_input.a, -1i)), -(~_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.a, u_input.a, 1i), vec4<i32>(u_input.a, 1i, 1i, 5276i))), _wgslsmith_div_i32(~u_input.a, _wgslsmith_sub_i32(~u_input.a, u_input.a))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(262f, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(19888u, 10760u, 32455u), vec3<u32>(1u, 0u, 17509u)), firstTrailingBit(vec3<u32>(0u, 1u, 4294967295u))), 22u)], _wgslsmith_f_op_f32(-819f - global0[_wgslsmith_index_u32(4294967295u >> (1u % 32u), 22u)]), 1146f)));
}

