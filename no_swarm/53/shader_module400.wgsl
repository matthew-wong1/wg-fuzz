struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: bool,
    d: i32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: bool,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<f32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 18>;

var<private> global1: bool;

var<private> global2: bool;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: Struct_3) -> bool {
    global0 = array<Struct_2, 18>();
    global2 = ~(-2147483647i) >= u_input.a;
    let var_0 = Struct_3(arg_3.a, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-867f, arg_3.b))), arg_1.c, global0[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 13873u), vec2<u32>(4294967295u, arg_3.d.a.e), vec2<u32>(arg_1.e, arg_1.e)), vec2<u32>(arg_3.d.b.e, arg_1.b) << (vec2<u32>(1u, 279u) % vec2<u32>(32u)))), 18u)]);
    var var_1 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.b, var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) + -560f)))));
    let var_2 = arg_3;
    return true;
}

fn func_2() -> Struct_2 {
    global0 = array<Struct_2, 18>();
    let var_0 = ~_wgslsmith_sub_i32(_wgslsmith_sub_i32(_wgslsmith_add_i32(_wgslsmith_add_i32(u_input.a, u_input.a), 10019i), -1i), u_input.a);
    global2 = any(vec2<bool>(func_3(1u, Struct_1(vec3<bool>(true, true, false), _wgslsmith_clamp_u32(4145u, 26004u, 38042u), false, 19706i, 4294967295u), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), false), vec3<bool>(true, true, true)), Struct_3(Struct_2(Struct_1(vec3<bool>(true, true, false), 0u, true, 1i, 25736u), Struct_1(vec3<bool>(true, true, true), 44127u, false, 0i, 36876u), true), _wgslsmith_f_op_f32(select(851f, 1000f, false)), true, Struct_2(Struct_1(vec3<bool>(true, false, false), 63019u, true, var_0, 36130u), Struct_1(vec3<bool>(true, true, true), 1u, false, -66495i, 28083u), false))), true));
    var var_1 = 1295f;
    let var_2 = Struct_3(global0[_wgslsmith_index_u32(~(~4294967295u), 18u)], _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-616f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(653f + 446f) - -733f)))), false, global0[_wgslsmith_index_u32(select(max(~1u, _wgslsmith_dot_vec2_u32(vec2<u32>(47730u, 4294967295u), ~vec2<u32>(4294967295u, 1u))), ~1u, any(!select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false)))), 18u)]);
    return Struct_2(var_2.a.a, Struct_1(select(select(vec3<bool>(var_2.a.c, false, true), var_2.a.a.a, vec3<bool>(var_2.c, var_2.a.c, var_2.a.c)), !(!var_2.d.a.a), var_2.a.b.a), _wgslsmith_clamp_u32(~var_2.a.a.b, _wgslsmith_clamp_u32(1u, var_2.a.b.b, 34597u), 10567u | var_2.d.a.e) ^ var_2.d.b.b, !func_3(40673u << (var_2.a.b.b % 32u), var_2.d.b, !var_2.d.a.a, Struct_3(Struct_2(Struct_1(vec3<bool>(var_2.c, var_2.c, var_2.c), var_2.a.a.e, false, 43861i, 4294967295u), var_2.a.a, var_2.c), var_2.b, false, global0[_wgslsmith_index_u32(37280u, 18u)])), u_input.a, var_2.d.b.e), var_2.c);
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    let var_0 = ~abs(min(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, arg_0.a.e), vec2<u32>(arg_0.a.b, 4294967295u)) | select(vec2<u32>(arg_0.b.b, arg_0.a.e), vec2<u32>(arg_0.a.b, arg_0.b.e), arg_0.b.a.zz), vec2<u32>(arg_0.b.e, 29225u)));
    var var_1 = func_2().b;
    let var_2 = func_3(72631u & var_0.x, arg_0.a, !vec3<bool>(u_input.a == arg_0.b.d, true, true), Struct_3(global0[_wgslsmith_index_u32(0u, 18u)], _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-456f)) + 1f))), arg_0.b.c & all(!vec4<bool>(var_1.a.x, true, arg_0.b.c, arg_0.c)), func_2()));
    return Struct_1(vec3<bool>(true && arg_0.a.c, !((var_1.c | arg_0.a.a.x) && true), !all(select(vec4<bool>(false, var_1.c, true, false), vec4<bool>(var_2, true, var_1.c, var_1.a.x), vec4<bool>(false, false, true, false)))), ~countOneBits(reverseBits(69378u) ^ _wgslsmith_div_u32(var_0.x, var_1.e)), func_2().c, var_1.d, firstTrailingBit(reverseBits(arg_0.a.b)));
}

fn func_1(arg_0: Struct_1) -> u32 {
    global0 = array<Struct_2, 18>();
    var var_0 = func_4(func_2());
    var var_1 = ~vec4<i32>(reverseBits((u_input.a ^ u_input.a) & _wgslsmith_sub_i32(-2147483647i, var_0.d)), ~(~(-u_input.a)), _wgslsmith_sub_i32(~(i32(-1i) * -48707i), _wgslsmith_mult_i32(i32(-1i) * -13687i, firstTrailingBit(arg_0.d))), ~reverseBits(firstTrailingBit(-2147483647i)));
    var var_2 = reverseBits(abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, arg_0.d, abs(-1i), ~var_1.x), _wgslsmith_add_vec4_i32(vec4<i32>(-1i, arg_0.d, -18552i, 0i), vec4<i32>(536i, 0i, 13357i, 12541i)), vec4<i32>(~arg_0.d, 52758i, reverseBits(-1i), -11044i))));
    let var_3 = 0u;
    return _wgslsmith_add_u32(~var_0.e, abs(16904u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 18>();
    var var_0 = Struct_3(Struct_2(Struct_1(vec3<bool>(u_input.a < 37611i, true, true), ~func_1(Struct_1(vec3<bool>(false, false, false), 4294967295u, false, 24070i, 1707u)), true, abs(u_input.a), ~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 58023u, 46240u), vec3<u32>(4294967295u, 39669u, 6945u))), func_2().b, all(func_4(func_2()).a)), _wgslsmith_f_op_f32(min(-236f, _wgslsmith_f_op_f32(ceil(1038f)))), false, func_2());
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.a.d, ~var_0.d.a.e, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.b, _wgslsmith_f_op_f32(step(-1122f, -2236f)), var_0.b, var_0.b))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(595f, 613f, var_0.b, 514f))), vec4<f32>(var_0.b, -1000f, -219f, 381f), true)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.b, _wgslsmith_f_op_f32(sign(var_0.b)), 2340f, _wgslsmith_f_op_f32(1205f - 451f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b, var_0.b, 1938f, var_0.b) - vec4<f32>(var_0.b, var_0.b, -257f, 440f))) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -479f), -235f, _wgslsmith_f_op_f32(max(-1234f, 1135f)), _wgslsmith_f_op_f32(-872f - 539f)))));
}

