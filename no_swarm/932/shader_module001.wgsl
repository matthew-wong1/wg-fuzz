struct Struct_1 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: bool,
}

struct Struct_2 {
    a: vec4<bool>,
    b: bool,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec2<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 10> = array<vec2<bool>, 10>(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false));

var<private> global1: array<vec4<f32>, 2> = array<vec4<f32>, 2>(vec4<f32>(-572f, -876f, 999f, -735f), vec4<f32>(627f, 2164f, 1000f, -1000f));

var<private> global2: array<vec2<u32>, 14> = array<vec2<u32>, 14>(vec2<u32>(34840u, 52219u), vec2<u32>(8279u, 4294967295u), vec2<u32>(9640u, 0u), vec2<u32>(11643u, 53360u), vec2<u32>(12133u, 3649u), vec2<u32>(1u, 1u), vec2<u32>(0u, 1u), vec2<u32>(1u, 5292u), vec2<u32>(80632u, 4294967295u), vec2<u32>(0u, 13649u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(9917u, 0u), vec2<u32>(10269u, 10582u), vec2<u32>(18489u, 1u));

var<private> global3: vec3<f32> = vec3<f32>(-629f, 796f, -726f);

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3() -> vec3<i32> {
    global1 = array<vec4<f32>, 2>();
    var var_0 = Struct_2(vec4<bool>(!(u_input.e.x > 2147483647i), all(vec2<bool>(false, false)), true, _wgslsmith_f_op_f32(floor(global3.x)) == 948f), (1435f < _wgslsmith_f_op_f32(-global3.x)) && any(vec4<bool>(true, true, true, true)), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3.x, -1291f)), 468f, _wgslsmith_div_f32(784f, 749f)), global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(64735u, 12442u, 4294967295u, 0u), vec4<u32>(u_input.b, u_input.c, u_input.c, 0u)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c, u_input.c, u_input.b, u_input.b), vec4<u32>(40684u, 0u, u_input.c, u_input.b))), 10u)], true), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global3.x, global3.x)) - 1000f), 1074f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(global3.x))))), global0[_wgslsmith_index_u32(4294967295u, 10u)], true));
    let var_1 = vec2<f32>(var_0.c.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-161f * global3.x) + -1889f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.c.a.x))))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1041f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global3.x, _wgslsmith_f_op_f32(var_1.x - var_1.x))), var_1.x)));
    let var_3 = ~(~firstLeadingBit(_wgslsmith_mod_vec4_i32(~vec4<i32>(-1i, -42276i, 12110i, 19284i), -vec4<i32>(u_input.e.x, u_input.a, u_input.d.x, u_input.e.x))));
    return _wgslsmith_add_vec3_i32(firstTrailingBit(vec3<i32>(~(-u_input.e.x), _wgslsmith_sub_i32(-2147483647i, -2147483647i), ~_wgslsmith_add_i32(0i, var_3.x))), firstTrailingBit(abs(vec3<i32>(~u_input.d.x, u_input.a, 720i))));
}

fn func_2(arg_0: Struct_1) -> vec4<u32> {
    var var_0 = func_3();
    var_0 = select(countOneBits(vec3<i32>(u_input.d.x & u_input.d.x, u_input.d.x, abs(74279i)) & ~(-vec3<i32>(var_0.x, -2147483647i, 2147483647i))), -(~_wgslsmith_mod_vec3_i32(vec3<i32>(var_0.x, u_input.e.x, var_0.x), vec3<i32>(var_0.x, -62756i, var_0.x)) & -(~vec3<i32>(-2147483647i, u_input.d.x, u_input.e.x))), true && (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.a.x))) >= _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global3.x)))));
    let var_1 = _wgslsmith_f_op_vec3_f32(arg_0.a - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(arg_0.a.x * _wgslsmith_f_op_f32(arg_0.a.x + -1845f)), -1202f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(global3.x))))))));
    global2 = array<vec2<u32>, 14>();
    let var_2 = var_0.x;
    return vec4<u32>(((reverseBits(4294967295u) | u_input.c) ^ 24942u) << (_wgslsmith_div_u32(u_input.b | u_input.c, u_input.b) % 32u), 0u, 14921u, 93729u);
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: u32) -> Struct_2 {
    global1 = array<vec4<f32>, 2>();
    let var_0 = u_input.a;
    var var_1 = _wgslsmith_clamp_vec2_i32(countOneBits(u_input.d), min(select((u_input.e & vec2<i32>(-34004i, -7538i)) >> (~vec2<u32>(u_input.b, 36289u) % vec2<u32>(32u)), abs(_wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, 12370i), u_input.d)), vec2<bool>(all(vec3<bool>(arg_0, true, true)), false)), vec2<i32>(u_input.a, firstLeadingBit(16487i)) & u_input.d), vec2<i32>(_wgslsmith_dot_vec2_i32(~(vec2<i32>(-30255i, -76377i) << (global2[_wgslsmith_index_u32(arg_2, 14u)] % vec2<u32>(32u))), vec2<i32>(u_input.d.x, 23928i)), _wgslsmith_clamp_i32(~_wgslsmith_sub_i32(var_0, 19098i), var_0, 1i)));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(ceil(1015f)), global3.x);
    let var_3 = arg_1;
    return Struct_2(!select(select(select(vec4<bool>(false, arg_0, arg_0, arg_0), vec4<bool>(false, true, arg_1.b.x, true), arg_0), vec4<bool>(true, true, false, false), all(vec3<bool>(arg_0, var_3.b.x, var_3.c))), select(!vec4<bool>(arg_0, arg_1.b.x, var_3.c, arg_1.b.x), select(vec4<bool>(true, arg_0, false, true), vec4<bool>(true, false, arg_0, true), vec4<bool>(true, arg_0, false, var_3.b.x)), select(vec4<bool>(arg_0, arg_1.c, arg_0, true), vec4<bool>(true, true, true, arg_1.b.x), vec4<bool>(false, arg_1.c, false, false))), all(select(vec3<bool>(true, arg_1.b.x, true), vec3<bool>(true, false, var_3.c), vec3<bool>(true, true, var_3.c)))), all(select(!vec3<bool>(arg_1.b.x, true, false), !select(vec3<bool>(true, true, arg_1.b.x), vec3<bool>(arg_0, arg_1.b.x, true), true), arg_1.c)), arg_1, var_3);
}

fn func_1() -> u32 {
    let var_0 = vec2<f32>(global3.x, -2311f);
    global1 = array<vec4<f32>, 2>();
    var var_1 = func_4((_wgslsmith_mod_u32(u_input.b, countOneBits(0u)) <= ~(~u_input.b)) | false, Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.x, -1060f, global3.x), vec3<f32>(145f, global3.x, global3.x))))), !select(select(vec2<bool>(false, true), vec2<bool>(true, true), false), global0[_wgslsmith_index_u32(16206u, 10u)], select(global0[_wgslsmith_index_u32(u_input.b, 10u)], global0[_wgslsmith_index_u32(u_input.c, 10u)], vec2<bool>(true, false))), (u_input.c == ~4294967295u) | select(true, select(true, false, false), true)), _wgslsmith_dot_vec4_u32(abs(_wgslsmith_mod_vec4_u32(min(vec4<u32>(26620u, 4294967295u, u_input.b, u_input.c), vec4<u32>(4294967295u, 1u, u_input.c, 31457u)), ~vec4<u32>(u_input.c, u_input.c, 4294967295u, 0u))), func_2(Struct_1(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global3.x, -1203f, global3.x))), vec2<bool>(true, true), all(global0[_wgslsmith_index_u32(u_input.c, 10u)])))));
    global0 = array<vec2<bool>, 10>();
    return func_2(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.c.a.x, var_1.c.a.x, 487f)), vec2<bool>(any(var_1.a.wyy), var_1.d.b.x), true)).x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = countOneBits(firstTrailingBit(vec2<u32>(67770u, u_input.b) | vec2<u32>(func_1(), _wgslsmith_div_u32(u_input.b, u_input.c))));
    var var_1 = u_input.b | firstTrailingBit(var_0.x);
    var var_2 = ~(~select(~vec3<i32>(u_input.a, 11936i, u_input.d.x) ^ _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, u_input.e.x, 0i), vec3<i32>(35440i, u_input.d.x, u_input.d.x)), -vec3<i32>(u_input.a, -46937i, 0i), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true)));
    global0 = array<vec2<bool>, 10>();
    let var_3 = _wgslsmith_mult_i32(5632i, _wgslsmith_div_i32(~(-1i >> (var_0.x % 32u)), ~1i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(485f - 239f));
}

