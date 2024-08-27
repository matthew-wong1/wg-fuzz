struct Struct_1 {
    a: i32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: f32,
    c: Struct_3,
}

struct Struct_5 {
    a: vec3<u32>,
    b: bool,
    c: f32,
    d: Struct_1,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
    d: u32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<vec2<f32>, 2> = array<vec2<f32>, 2>(vec2<f32>(357f, 723f), vec2<f32>(676f, -826f));

var<private> global2: array<vec3<f32>, 5>;

var<private> global3: bool = true;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<f32>) -> vec3<u32> {
    let var_0 = true;
    return vec3<u32>(u_input.b, max(~(select(u_input.b, u_input.a.x, var_0) << (~9897u % 32u)), abs(u_input.a.x)), ~1u);
}

fn func_2(arg_0: vec3<i32>) -> f32 {
    var var_0 = vec4<bool>(-(_wgslsmith_mult_i32(17808i, 1i) | (arg_0.x & -16348i)) <= abs(1i), all(select(vec2<bool>(true, select(false, false, false)), vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(true, false), true))), !((1i << (u_input.a.x % 32u)) <= select(-57317i, 11998i, false)) || true, !(any(vec3<bool>(true, true, false)) | true) || (all(vec3<bool>(false, false, false)) | (countOneBits(u_input.a.x) < u_input.a.x)));
    let var_1 = vec3<u32>(~u_input.b, _wgslsmith_add_u32(~43591u, u_input.a.x), 1u);
    var var_2 = Struct_3(Struct_2(Struct_1(arg_0.x, min(func_3(vec3<f32>(-1000f, -1649f, 1486f)), vec3<u32>(60431u, 0u, var_1.x))), _wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(9852u, 11382u), ~vec2<u32>(1u, var_1.x)), ~_wgslsmith_add_vec2_u32(u_input.a, u_input.a)), abs(_wgslsmith_mult_u32(var_1.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, var_1.x, 71339u, 13381u), vec4<u32>(var_1.x, u_input.b, var_1.x, 1u)))), Struct_1(arg_0.x, ~(var_1 >> (vec3<u32>(1u, u_input.a.x, u_input.b) % vec3<u32>(32u))))));
    var_2 = Struct_3(Struct_2(var_2.a.d, vec2<u32>(4294967295u, _wgslsmith_dot_vec3_u32(~vec3<u32>(13009u, 4294967295u, 0u), var_1 ^ var_2.a.a.b)), firstTrailingBit(firstLeadingBit(var_1.x)), Struct_1(u_input.c.x, var_2.a.a.b)));
    return -877f;
}

fn func_1() -> Struct_1 {
    var var_0 = !((true & (~u_input.a.x < _wgslsmith_add_u32(u_input.a.x, u_input.b))) | false);
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_2(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c.x, u_input.c.x, 0i), select(u_input.c, u_input.c, vec3<bool>(true, false, false))))), 508f)), 343f);
    let var_2 = true;
    var var_3 = var_2;
    let var_4 = vec3<i32>(u_input.c.x, 6096i, _wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.c.x, -72i), vec2<i32>(-1i) * -u_input.c.xz) >> (_wgslsmith_clamp_u32(~(~0u), abs(u_input.b), u_input.b) % 32u));
    return Struct_1(26475i, ~min(max(abs(vec3<u32>(4294967295u, u_input.a.x, u_input.a.x)), vec3<u32>(4891u, 4294967295u, 39072u)), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, u_input.b, 0u), vec3<u32>(u_input.b, u_input.b, 29061u)) | ~vec3<u32>(u_input.b, u_input.b, u_input.b)));
}

fn func_4(arg_0: Struct_2) -> bool {
    var var_0 = Struct_5(abs(vec3<u32>(_wgslsmith_clamp_u32(arg_0.a.b.x, reverseBits(arg_0.b.x), _wgslsmith_mod_u32(u_input.a.x, 18011u)), 61833u, 57342u)), abs(53758u) == _wgslsmith_dot_vec3_u32(vec3<u32>(27838u, u_input.a.x >> (u_input.b % 32u), 101729u), ~firstLeadingBit(arg_0.d.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-351f, -388f) * -498f) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(619f)))))), arg_0.a, Struct_3(Struct_2(arg_0.d, vec2<u32>(20790u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.a.x), vec2<u32>(u_input.b, 4294967295u))), arg_0.c, Struct_1(-u_input.c.x, countOneBits(arg_0.d.b)))));
    global3 = false;
    global1 = array<vec2<f32>, 2>();
    let var_1 = vec4<bool>(select(!(!var_0.b), true, var_0.b), true, var_0.b && (all(!vec4<bool>(var_0.b, false, true, false)) & !var_0.b), reverseBits(abs(1i)) != func_1().a);
    var var_2 = Struct_5(~_wgslsmith_mod_vec3_u32(vec3<u32>(~var_0.d.b.x, var_0.d.b.x, ~28537u), arg_0.d.b), any(vec2<bool>(true, !var_0.b)), var_0.c, var_0.e.a.a, Struct_3(arg_0));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_5(~vec3<u32>(u_input.a.x, reverseBits(countOneBits(u_input.b)), abs(u_input.a.x << (40787u % 32u))), func_4(Struct_2(func_1(), vec2<u32>(23245u, 1u), u_input.a.x, Struct_1(u_input.c.x, vec3<u32>(u_input.a.x, 1912u, u_input.a.x)))) | all(vec3<bool>(true, true, false)), -1303f, func_1(), Struct_3(Struct_2(Struct_1(u_input.c.x, vec3<u32>(1u, u_input.a.x, 14676u) << (vec3<u32>(1u, 37436u, 4294967295u) % vec3<u32>(32u))), func_1().b.yx, 0u, func_1())));
    var var_1 = Struct_5(~(~min(vec3<u32>(u_input.a.x, 32586u, 0u), vec3<u32>(var_0.d.b.x, 4294967295u, 22564u)) << (_wgslsmith_add_vec3_u32(vec3<u32>(23976u, u_input.a.x, u_input.a.x), var_0.d.b | var_0.a) % vec3<u32>(32u))), all(!select(select(vec3<bool>(true, false, var_0.b), vec3<bool>(true, false, true), vec3<bool>(true, var_0.b, false)), select(vec3<bool>(true, var_0.b, var_0.b), vec3<bool>(var_0.b, var_0.b, true), vec3<bool>(var_0.b, false, var_0.b)), select(vec3<bool>(var_0.b, false, var_0.b), vec3<bool>(true, true, var_0.b), var_0.b))), var_0.c, Struct_1(-countOneBits(2147483647i), firstLeadingBit(vec3<u32>(1u, 0u, 0u) | var_0.d.b)), Struct_3(var_0.e.a));
    let var_2 = vec2<f32>(780f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(646f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(611f - -111f))))));
    var var_3 = Struct_3(var_1.e.a);
    var_0 = Struct_5(vec3<u32>(var_0.a.x, _wgslsmith_clamp_u32(var_3.a.d.b.x, 1u, 31562u), _wgslsmith_mod_u32(var_1.a.x, 4294967295u)), var_1.b || !var_1.b, _wgslsmith_f_op_f32(-650f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.c * var_2.x))))), Struct_1(~abs(1i), var_0.a), var_1.e);
    var var_4 = _wgslsmith_f_op_f32(sign(-880f));
    let var_5 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_1.c, -148f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.c)))))), global2[_wgslsmith_index_u32(~u_input.a.x, 5u)], !var_1.b));
    let var_6 = Struct_3(var_0.e.a);
    let var_7 = i32(-1i) * -countOneBits(abs(firstTrailingBit(56434i)));
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, -2147483647i, var_5.x, _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(firstLeadingBit(vec4<u32>(1u, var_0.e.a.c, u_input.b, 0u)), firstLeadingBit(vec4<u32>(1u, 4294967295u, 0u, 0u)), vec4<u32>(0u, var_1.a.x, u_input.a.x, u_input.a.x)), abs(vec4<u32>(0u, 43661u, 35644u, 1u))), var_3.a.d.b.x), firstLeadingBit(vec2<u32>(_wgslsmith_mult_u32(var_0.a.x, var_6.a.d.b.x) >> (var_1.d.b.x % 32u), u_input.a.x)));
}

