struct Struct_1 {
    a: vec3<f32>,
    b: vec3<bool>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: i32,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
}

struct Struct_5 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: Struct_4,
    d: Struct_4,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 4> = array<Struct_4, 4>(Struct_4(-412f, Struct_3(625f, Struct_2(4294967295u), i32(-2147483648))), Struct_4(656f, Struct_3(901f, Struct_2(6439u), -74028i)), Struct_4(-1252f, Struct_3(-1185f, Struct_2(0u), 16532i)), Struct_4(290f, Struct_3(873f, Struct_2(64793u), 2147483647i)));

var<private> global1: array<Struct_3, 8> = array<Struct_3, 8>(Struct_3(-1089f, Struct_2(1u), 1i), Struct_3(-475f, Struct_2(4294967295u), 42641i), Struct_3(-1101f, Struct_2(4294967295u), 31595i), Struct_3(-692f, Struct_2(4294967295u), 23947i), Struct_3(-879f, Struct_2(0u), 19436i), Struct_3(-444f, Struct_2(7869u), 0i), Struct_3(-379f, Struct_2(43549u), i32(-2147483648)), Struct_3(-319f, Struct_2(4294967295u), 0i));

var<private> global2: Struct_2 = Struct_2(0u);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_3, arg_1: u32, arg_2: u32) -> f32 {
    return _wgslsmith_f_op_f32(min(-2469f, 242f));
}

fn func_2() -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(global1[_wgslsmith_index_u32(u_input.a.x, 8u)], _wgslsmith_sub_u32(global2.a, 1u), abs(~(~global2.a)))));
    global2 = Struct_2((1u >> ((0u & _wgslsmith_mult_u32(4294967295u, u_input.a.x)) % 32u)) | u_input.a.x);
    global1 = array<Struct_3, 8>();
    var_0 = 1f;
    let var_1 = -34305i;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1248f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(339f)))))));
}

fn func_1(arg_0: Struct_2) -> f32 {
    let var_0 = Struct_5(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2()) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-292f, 649f)))) + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1f, 1f)))), min(firstLeadingBit(_wgslsmith_mult_vec2_i32(select(vec2<i32>(0i, 0i), vec2<i32>(2147483647i, 0i), vec2<bool>(true, false)), select(vec2<i32>(0i, 37308i), vec2<i32>(0i, 2147483647i), false))), -vec2<i32>(0i, firstLeadingBit(1i))), Struct_4(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-940f))), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), Struct_3(_wgslsmith_div_f32(-202f, -684f), arg_0, abs(1i))), Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(336f, 890f))) * _wgslsmith_f_op_f32(select(-453f, 110f, true))), Struct_3(-1000f, Struct_2(23628u), ~abs(-1i))), vec4<bool>(!all(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), false)), any(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false))), all(vec2<bool>(all(vec2<bool>(false, false)), true)), all(vec3<bool>(true, true, true))));
    let var_1 = ~vec4<i32>(var_0.c.b.c, ~_wgslsmith_div_i32(firstLeadingBit(11266i), _wgslsmith_clamp_i32(-1i, 0i, var_0.b.x)), -1i, _wgslsmith_add_i32(47546i, ~(-1i)));
    let var_2 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-753f, _wgslsmith_f_op_f32(-var_0.c.b.a), select(true, false, true))), _wgslsmith_f_op_f32(var_0.d.a - var_0.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1922f, 999f)), 765f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a.x), var_0.c.a)))));
    var var_3 = arg_0;
    return var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(1u);
    global2 = Struct_2(8669u);
    var var_1 = -_wgslsmith_dot_vec3_i32((vec3<i32>(1i, 1i, 1i) >> (abs(u_input.a) % vec3<u32>(32u))) ^ abs(vec3<i32>(2147483647i, -1i, -1i)), firstTrailingBit(_wgslsmith_sub_vec3_i32(min(vec3<i32>(-72770i, -32922i, 2147483647i), vec3<i32>(-2147483647i, 1i, -1i)), select(vec3<i32>(-2147483647i, -14375i, 0i), vec3<i32>(-2147483647i, -919i, -620i), false))));
    let var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_2(countOneBits(u_input.a.x))))), -1206f));
    var var_3 = ~95835u;
    let var_4 = _wgslsmith_f_op_f32(func_1(Struct_2(_wgslsmith_dot_vec3_u32(u_input.a, u_input.a))));
    var_1 = 42241i;
    var_3 = ~(~firstTrailingBit(4294967295u));
    let var_5 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -855f)), _wgslsmith_f_op_f32(step(var_2, _wgslsmith_f_op_f32(max(var_2, 277f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4 - 453f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, var_4, var_2)) * _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_2, var_2, 869f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_2, var_4, var_2))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(573f, var_2, -409f))))), vec3<bool>(true, true, true), select(!select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), true)), !select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), false), true), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_4))) > _wgslsmith_f_op_vec2_f32(func_2()).x));
    let x = u_input.a;
    s_output = StorageBuffer(global2.a, _wgslsmith_clamp_vec3_u32(vec3<u32>(~countOneBits(var_0.a), 8923u, _wgslsmith_div_u32(31946u, ~global2.a)), ~abs(u_input.a), _wgslsmith_mod_vec3_u32(u_input.a, u_input.a)), ~(vec4<u32>(~1u, max(42510u, global2.a), u_input.a.x, _wgslsmith_add_u32(u_input.a.x, 64238u)) & countOneBits(vec4<u32>(5604u, u_input.a.x, global2.a, 9574u))), reverseBits(vec4<u32>(select(reverseBits(global2.a), ~var_0.a, !var_5.b.x), 1u, ~_wgslsmith_dot_vec2_u32(u_input.a.xy, vec2<u32>(var_0.a, var_0.a)), global2.a >> (abs(18229u) % 32u))));
}

