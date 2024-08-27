struct Struct_1 {
    a: f32,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec3<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: array<vec2<bool>, 14> = array<vec2<bool>, 14>(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> vec2<f32> {
    let var_0 = false;
    var var_1 = Struct_2(u_input.a.x, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x + global0.x) * global0.x), _wgslsmith_mod_u32(_wgslsmith_clamp_u32(firstTrailingBit(u_input.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 82595u), u_input.a), ~10566u), u_input.a.x ^ u_input.a.x), any(select(!global1[_wgslsmith_index_u32(u_input.a.x, 14u)], global1[_wgslsmith_index_u32(0u, 14u)], vec2<bool>(var_0, var_0)))), vec3<i32>(min(firstLeadingBit(-26383i), max(2147483647i, -52286i)), firstLeadingBit(0i), ~1i) ^ ~min(vec3<i32>(-2147483647i, 2147483647i, 5991i) << (u_input.a.xzz % vec3<u32>(32u)), firstLeadingBit(vec3<i32>(-64608i, -15147i, 2147483647i))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(global0.x, global0.x))))), 0u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0.x)) * _wgslsmith_div_f32(global0.x, 357f)) == global0.x));
    let var_2 = Struct_2(~var_1.d.b, Struct_1(var_1.d.a, 1u, !(~var_1.b.b < ~24130u)), _wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(-vec3<i32>(var_1.c.x, var_1.c.x, var_1.c.x), var_1.c, var_1.c), firstLeadingBit(abs(vec3<i32>(-21005i, 9165i, var_1.c.x))) >> (u_input.a.xzw % vec3<u32>(32u)), firstLeadingBit(var_1.c)), var_1.b);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(498f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-191f * 1210f), -2732f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, var_2.b.a) + vec2<f32>(global0.x, -314f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global0.x, 242f))) - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_1.d.a, 1000f)))))));
}

fn func_2(arg_0: i32, arg_1: Struct_2) -> vec4<u32> {
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_1.d.a, global0.x), vec2<f32>(global0.x, global0.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(526f, global0.x)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, arg_1.b.a))))) + _wgslsmith_f_op_vec2_f32(func_3()));
    global1 = array<vec2<bool>, 14>();
    global0 = vec2<f32>(-337f, _wgslsmith_f_op_f32(global0.x - 1000f));
    var var_0 = _wgslsmith_f_op_f32(-876f + -406f);
    let var_1 = arg_1.d;
    return countOneBits((_wgslsmith_div_vec4_u32(vec4<u32>(arg_1.d.b, var_1.b, 1u, 4294967295u), select(u_input.a, u_input.a, false)) & abs(vec4<u32>(0u, u_input.a.x, 0u, 40444u))) & vec4<u32>(firstLeadingBit(u_input.a.x), _wgslsmith_mult_u32(arg_1.b.b, _wgslsmith_add_u32(5895u, var_1.b)), 4294967295u, ~_wgslsmith_mod_u32(u_input.a.x, 25679u)));
}

fn func_1() -> f32 {
    let var_0 = vec3<u32>(u_input.a.x, ~(_wgslsmith_dot_vec4_u32(func_2(-31716i, Struct_2(u_input.a.x, Struct_1(global0.x, u_input.a.x, false), vec3<i32>(64428i, -1i, 2147483647i), Struct_1(-375f, 19470u, true))), min(vec4<u32>(18918u, u_input.a.x, 0u, 1u), u_input.a)) | 4294967295u), 1u);
    global0 = _wgslsmith_f_op_vec2_f32(func_3());
    var var_1 = (firstTrailingBit(abs(-1i) << (reverseBits(u_input.a.x) % 32u)) >> (~1u % 32u)) << (76554u % 32u);
    var_1 = countOneBits(~1i);
    var_1 = abs(select(_wgslsmith_mult_i32(~_wgslsmith_sub_i32(1i, 27084i), 1i), -abs(-1318i), !(!any(vec3<bool>(false, false, true)))));
    return _wgslsmith_f_op_f32(-global0.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) * _wgslsmith_f_op_f32(1106f + -470f))))), u_input.a.x, all(select(!select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), false), vec4<bool>(true, true, true, true), true)));
    let var_1 = 943f;
    let var_2 = abs(_wgslsmith_mult_i32(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 1i), vec2<i32>(1i, 2147483647i)), reverseBits(0i)) | reverseBits(~24855i), i32(-1i) * -1i));
    let var_3 = Struct_1(-1000f, ~0u, var_0.c);
    var var_4 = false;
    let var_5 = max(func_2(abs(abs(_wgslsmith_div_i32(var_2, -1i))), Struct_2(13852u, Struct_1(_wgslsmith_f_op_f32(max(-1453f, 273f)), var_0.b >> (u_input.a.x % 32u), var_0.c), vec3<i32>(var_2, var_2, 2147483647i) & select(vec3<i32>(23778i, 68087i, -4398i), vec3<i32>(var_2, var_2, var_2), var_3.c), Struct_1(1704f, _wgslsmith_dot_vec2_u32(vec2<u32>(104191u, u_input.a.x), u_input.a.zx), true))), ~vec4<u32>(4294967295u, _wgslsmith_add_u32(_wgslsmith_sub_u32(var_0.b, var_3.b), select(1u, 35473u, false)), _wgslsmith_mult_u32(firstTrailingBit(var_0.b), var_0.b), var_0.b));
    let x = u_input.a;
    s_output = StorageBuffer(~89099u, abs(func_2(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-17362i, -1i, var_2), vec3<i32>(1i, 54209i, 1i)), 2147483647i), Struct_2(_wgslsmith_clamp_u32(61884u, u_input.a.x, var_5.x), Struct_1(-1721f, 4294967295u, var_3.c), ~vec3<i32>(12453i, var_2, var_2), Struct_1(global0.x, 63730u, true))).zz));
}

