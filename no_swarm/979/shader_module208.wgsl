struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_5 {
    a: vec3<i32>,
    b: bool,
    c: i32,
    d: vec2<u32>,
    e: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: i32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 24>;

var<private> global1: f32;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: f32, arg_1: u32) -> Struct_1 {
    let var_0 = true;
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -2297f), arg_0))) * _wgslsmith_f_op_f32(-arg_0))));
    global0 = array<Struct_4, 24>();
    let var_2 = Struct_3(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * 1f)))));
    let var_3 = _wgslsmith_f_op_f32(-arg_0);
    return Struct_1(_wgslsmith_mod_u32(10229u, 22485u));
}

fn func_3(arg_0: vec2<u32>, arg_1: u32, arg_2: Struct_1) -> Struct_1 {
    let var_0 = select(~reverseBits(vec4<u32>(0u, arg_0.x, 1856u, 131647u) | vec4<u32>(4294967295u, 50509u, 1u, 0u)), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, arg_0.x, 0u, 5695u), countOneBits(vec4<u32>(arg_0.x, 7773u, 4294967295u, 1u))), abs(~arg_1), ~1u, ~func_2(-212f, 4294967295u).a), true) | ~_wgslsmith_mult_vec4_u32(vec4<u32>(arg_1, 0u, 1u, arg_2.a) ^ vec4<u32>(arg_0.x, 4602u, 1u, 0u), vec4<u32>(_wgslsmith_clamp_u32(65135u, arg_0.x, arg_2.a), ~1u, arg_1, firstTrailingBit(arg_2.a)));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(707f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-111f, -715f, true)) * _wgslsmith_f_op_f32(-723f + 2438f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1000f, -833f, true)) - 329f) * _wgslsmith_f_op_f32(-1056f - -2519f)), true)), -1291f, -1000f, -384f);
    global0 = array<Struct_4, 24>();
    global1 = _wgslsmith_f_op_f32(sign(334f));
    let var_2 = Struct_2(func_2(309f, select(arg_1, _wgslsmith_mult_u32(arg_2.a, var_0.x), any(vec2<bool>(false, true)) | true)), arg_2);
    return var_2.a;
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: Struct_1) -> Struct_5 {
    let var_0 = 1u != abs(arg_1.a);
    let var_1 = Struct_1(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(124f, -790f))), 1u).a);
    var var_2 = _wgslsmith_clamp_u32(~_wgslsmith_div_u32(1u, 16024u), var_1.a, ~arg_3.a);
    var var_3 = ~(-firstLeadingBit(-_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, 2147483647i, -2147483647i), vec3<i32>(u_input.a.x, -50813i, u_input.b))));
    var var_4 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1208f), -1007f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-177f + _wgslsmith_f_op_f32(684f * 395f)))), 724f)));
    return Struct_5(vec3<i32>(~(-27848i), _wgslsmith_div_i32(~var_3.x, ~35067i), var_3.x) >> (vec3<u32>(func_3(arg_2 ^ arg_2, 1u, Struct_1(arg_2.x)).a, arg_2.x, _wgslsmith_mult_u32(arg_0.x >> (arg_0.x % 32u), 3612u)) % vec3<u32>(32u)), !(any(select(vec4<bool>(false, var_0, var_0, false), vec4<bool>(true, var_0, false, var_0), var_0)) != (var_3.x < max(2147483647i, -1i))), i32(-1i) * -_wgslsmith_div_i32(var_3.x >> (54265u % 32u), -2147483647i), arg_0, 72812u << (countOneBits(0u) % 32u));
}

fn func_5(arg_0: Struct_5, arg_1: Struct_4, arg_2: Struct_2) -> vec4<i32> {
    let var_0 = arg_2.b;
    global1 = _wgslsmith_f_op_f32(-818f * 223f);
    global0 = array<Struct_4, 24>();
    var var_1 = arg_1.a;
    let var_2 = !vec3<bool>(func_4(select(vec2<u32>(37123u, var_0.a) << (vec2<u32>(arg_2.b.a, 19557u) % vec2<u32>(32u)), max(arg_0.d, vec2<u32>(21233u, 54738u)), select(vec2<bool>(true, false), vec2<bool>(true, arg_1.a), arg_0.b)), Struct_1(arg_0.e), ~vec2<u32>(45798u, arg_0.e), Struct_1(arg_0.e)).b, all(!vec3<bool>(true, true, arg_0.b)), (arg_2.b.a >= _wgslsmith_dot_vec2_u32(arg_0.d, vec2<u32>(35274u, 7308u))) && true);
    return ~(-vec4<i32>(-arg_0.a.x, ~1i, ~abs(40465i), arg_0.c & -2498i));
}

fn func_1() -> vec3<f32> {
    global1 = -2715f;
    var var_0 = !select(!select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false)), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), vec3<bool>(any(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false))), true, all(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), false))), !(!all(vec2<bool>(false, false))));
    let var_1 = abs(func_5(func_4(_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 32459u), _wgslsmith_clamp_vec2_u32(vec2<u32>(28330u, 1u), vec2<u32>(1u, 18157u), vec2<u32>(43100u, 4294967295u))), func_3(~vec2<u32>(4294967295u, 1u), ~4294967295u, func_2(2301f, 0u)), ~min(vec2<u32>(122357u, 1u), vec2<u32>(33200u, 28818u)), Struct_1(_wgslsmith_sub_u32(136867u, 1u))), Struct_4(!var_0.x, func_2(_wgslsmith_f_op_f32(floor(-158f)), 20158u), Struct_1(firstTrailingBit(5430u)), Struct_2(func_2(233f, 2928u), Struct_1(0u))), Struct_2(func_2(_wgslsmith_f_op_f32(-1164f * -923f), _wgslsmith_sub_u32(40725u, 19973u)), Struct_1(4294967295u))));
    var var_2 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~_wgslsmith_mod_u32(_wgslsmith_mult_u32(~11160u, func_2(564f, 32203u).a), 115013u), ~0u), 24u)];
    var_2 = global0[_wgslsmith_index_u32(var_2.c.a, 24u)];
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(213f)) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)) * 748f), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1000f)) + _wgslsmith_f_op_f32(-560f - -543f)))));
}

fn func_6(arg_0: vec4<f32>, arg_1: vec3<f32>, arg_2: vec2<f32>) -> Struct_3 {
    var var_0 = vec4<bool>(true, select(true, all(vec4<bool>(true, true, true, true)) || select(true, true, false), true), (~func_2(-658f, 0u).a >> (~4294967295u % 32u)) > 1u, func_4(~(~min(vec2<u32>(19848u, 4294967295u), vec2<u32>(0u, 4294967295u))), Struct_1(reverseBits(1u)), _wgslsmith_mult_vec2_u32(vec2<u32>(1u, 1u), firstLeadingBit(~vec2<u32>(1u, 0u))), Struct_1(max(~4294967295u, _wgslsmith_clamp_u32(0u, 52554u, 51604u)))).b);
    var var_1 = ~(~_wgslsmith_mod_vec3_i32(~vec3<i32>(u_input.b, u_input.a.x, u_input.c), ~vec3<i32>(u_input.c, u_input.a.x, -2147483647i))) >> (min(firstTrailingBit(firstLeadingBit(~vec3<u32>(4294967295u, 1u, 26350u))), vec3<u32>(1u, 1u, 1u)) % vec3<u32>(32u));
    var var_2 = -698f;
    var_1 = -abs(func_5(Struct_5(-vec3<i32>(u_input.c, var_1.x, var_1.x), false, -22893i ^ var_1.x, ~vec2<u32>(75024u, 1u), 1u), global0[_wgslsmith_index_u32(~firstLeadingBit(0u), 24u)], Struct_2(Struct_1(21990u), Struct_1(33483u))).wxw);
    let var_3 = Struct_2(func_2(_wgslsmith_f_op_f32(min(1172f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1872f))))), ~0u), Struct_1(1u));
    return Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_vec3_f32(func_1()).x, -819f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_4, 24>();
    global0 = array<Struct_4, 24>();
    let var_0 = func_6(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1191f, 274f, -153f, 2166f)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1000f, -2695f, 1361f, 357f))), true)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(153f, 446f, 869f, -1011f))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1()), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-718f, 605f, -1389f))))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-600f, 241f)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(182f, 215f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-656f, 628f) + vec2<f32>(-1159f, 1105f))))));
    var var_1 = vec3<u32>(5734u ^ _wgslsmith_dot_vec3_u32(~select(vec3<u32>(1u, 0u, 0u), vec3<u32>(4294967295u, 59679u, 1u), vec3<bool>(true, true, false)), firstTrailingBit(~vec3<u32>(1u, 23582u, 52462u))), 1u, ~0u);
    let var_2 = ~vec3<i32>(max(~u_input.b, -1i), u_input.b, 0i & u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(93545u, ~func_3(var_1.xz ^ vec2<u32>(31357u, var_1.x), var_1.x, Struct_1(62363u)).a), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(867f, _wgslsmith_f_op_f32(func_6(vec4<f32>(var_0.a, var_0.a, var_0.a, var_0.a), vec3<f32>(616f, -1590f, var_0.a), vec2<f32>(var_0.a, var_0.a)).a * _wgslsmith_f_op_f32(-var_0.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.a, var_0.a, true)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(round(var_0.a)))))), _wgslsmith_sub_i32(1i, u_input.c), (_wgslsmith_sub_vec3_u32(vec3<u32>(1u, var_1.x, var_1.x), vec3<u32>(var_1.x, 25081u, 4294967295u)) >> (vec3<u32>(var_1.x, abs(var_1.x), ~0u) % vec3<u32>(32u))) | ~(~vec3<u32>(var_1.x, 0u, var_1.x)));
}

