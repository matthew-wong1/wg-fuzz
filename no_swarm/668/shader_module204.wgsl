struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: i32,
    b: vec2<u32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
    c: vec4<u32>,
    d: u32,
    e: Struct_2,
}

struct Struct_5 {
    a: i32,
    b: i32,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 6> = array<Struct_2, 6>(Struct_2(2147483647i, vec2<u32>(30418u, 1u)), Struct_2(i32(-2147483648), vec2<u32>(4294967295u, 71517u)), Struct_2(1i, vec2<u32>(1u, 1u)), Struct_2(2147483647i, vec2<u32>(0u, 69339u)), Struct_2(i32(-2147483648), vec2<u32>(1u, 27621u)), Struct_2(0i, vec2<u32>(4294967295u, 0u)));

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> f32 {
    global0 = array<Struct_2, 6>();
    global0 = array<Struct_2, 6>();
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1000f)))), -328f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-336f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -285f)))));
    var var_1 = Struct_4(Struct_1(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(var_0.x, -954f, true))))), false, ~_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(4294967295u, 4294967295u, u_input.c, u_input.c), abs(vec4<u32>(0u, u_input.c, 1u, u_input.c))), vec4<u32>(1u, u_input.c, u_input.c, countOneBits(10673u))), u_input.c, Struct_2(-2147483647i, select(vec2<u32>(countOneBits(90094u), 28772u), vec2<u32>(~u_input.c, ~u_input.c), false)));
    let var_2 = reverseBits(_wgslsmith_sub_i32(1i, firstLeadingBit(u_input.d.x)));
    return var_0.x;
}

fn func_4(arg_0: Struct_3, arg_1: bool, arg_2: vec3<u32>, arg_3: Struct_4) -> f32 {
    global0 = array<Struct_2, 6>();
    global0 = array<Struct_2, 6>();
    global0 = array<Struct_2, 6>();
    global0 = array<Struct_2, 6>();
    global0 = array<Struct_2, 6>();
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(383f - -1528f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1000f - -737f))))), arg_3.a.a));
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_2) -> Struct_3 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(func_4(Struct_3(global0[_wgslsmith_index_u32(u_input.c, 6u)]), true, ~vec3<u32>(1u, ~arg_1.b.x, arg_1.b.x), Struct_4(Struct_1(_wgslsmith_f_op_f32(func_3()), -629f), true, ~(vec4<u32>(u_input.c, arg_1.b.x, arg_1.b.x, 1u) >> (vec4<u32>(u_input.c, u_input.c, 0u, arg_1.b.x) % vec4<u32>(32u))), arg_1.b.x, global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.c, 18710u), 6u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1214f + -1628f))) - -156f)));
    let var_1 = false;
    let var_2 = _wgslsmith_dot_vec3_u32(~firstLeadingBit(~max(vec3<u32>(1u, u_input.c, 1u), vec3<u32>(4294967295u, 40656u, u_input.c))), vec3<u32>(_wgslsmith_add_u32(arg_1.b.x << (abs(u_input.c) % 32u), abs(u_input.c) & _wgslsmith_add_u32(arg_1.b.x, 0u)), 39607u, ~4294967295u));
    var var_3 = vec2<i32>(0i, min(-1i, -41071i));
    var var_4 = u_input.a.xz;
    return Struct_3(Struct_2(arg_0.x, ~arg_1.b));
}

fn func_5(arg_0: vec3<i32>, arg_1: f32, arg_2: Struct_3, arg_3: vec2<i32>) -> vec4<f32> {
    global0 = array<Struct_2, 6>();
    let var_0 = Struct_4(Struct_1(-416f, -982f), true, vec4<u32>(u_input.c, 31099u >> (1u % 32u), _wgslsmith_div_u32(arg_2.a.b.x, select(arg_2.a.b.x & 0u, countOneBits(arg_2.a.b.x), all(vec4<bool>(false, true, true, false)))), ~_wgslsmith_mult_u32(countOneBits(u_input.c), _wgslsmith_sub_u32(0u, arg_2.a.b.x))), ~_wgslsmith_add_u32(firstTrailingBit(~u_input.c), _wgslsmith_add_u32(98881u, max(u_input.c, u_input.c))), Struct_2(max(-(~2147483647i), select(arg_3.x, 2147483647i, true)), vec2<u32>(1u, u_input.c)));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-1413f, _wgslsmith_f_op_f32(-var_0.a.a))))) * _wgslsmith_f_op_f32(ceil(254f)));
    global0 = array<Struct_2, 6>();
    var var_2 = 39054u;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(2342f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(332f, var_1)) * _wgslsmith_f_op_f32(arg_1 - arg_1)), -162f, -271f), vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1048f), 2099f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.a.b, 1069f, true))), 1177f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.a.a))))) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1, -550f, arg_1, arg_1))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(173f, -848f, 1000f, arg_1), vec4<f32>(arg_1, -1004f, var_1, 1687f)))))))));
}

fn func_1(arg_0: vec3<bool>, arg_1: bool) -> Struct_4 {
    var var_0 = ~vec2<u32>(_wgslsmith_add_u32(min(u_input.c, ~u_input.c), 4294967295u), abs(countOneBits(0u)));
    let var_1 = global0[_wgslsmith_index_u32(~48066u, 6u)];
    let var_2 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1031f, -751f, 682f, _wgslsmith_div_f32(-1042f, -874f)) - _wgslsmith_f_op_vec4_f32(func_5(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.d.x, var_1.a, 0i), vec3<i32>(0i, var_1.a, u_input.b)), _wgslsmith_f_op_f32(trunc(-1477f)), func_2(u_input.d.zww, global0[_wgslsmith_index_u32(var_1.b.x, 6u)]), u_input.a.xz)))), vec4<f32>(237f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_vec4_f32(func_5(-u_input.d.wyy, _wgslsmith_f_op_f32(648f * 1953f), func_2(u_input.d.wxx, Struct_2(-18805i, vec2<u32>(4294967295u, u_input.c))), countOneBits(vec2<i32>(var_1.a, 2147483647i)))).x, _wgslsmith_f_op_f32(step(-1497f, _wgslsmith_f_op_vec4_f32(func_5(vec3<i32>(u_input.b, var_1.a, 1i), 324f, Struct_3(Struct_2(2147483647i, var_1.b)), vec2<i32>(-2147483647i, -10425i))).x)))), _wgslsmith_f_op_f32(f32(-1f) * -303f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1141f + -768f) * _wgslsmith_f_op_f32(f32(-1f) * -627f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(193f)), _wgslsmith_div_f32(-379f, 445f))))));
    global0 = array<Struct_2, 6>();
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(628f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.x, -323f))) - var_2.xw));
    return Struct_4(Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.x + -273f) * 563f), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(337f, -491f))))), var_2.x), !(_wgslsmith_sub_i32(var_1.a, var_1.a) < ~1i) & arg_0.x, firstLeadingBit(~abs(reverseBits(vec4<u32>(var_0.x, var_0.x, var_0.x, 12815u)))), func_2(-(firstTrailingBit(u_input.d.wxw) | u_input.d.wwx), Struct_2(-37336i, ~var_1.b)).a.b.x, Struct_2(18190i, var_1.b));
}

fn func_6(arg_0: Struct_4) -> f32 {
    global0 = array<Struct_2, 6>();
    let var_0 = vec3<f32>(-1000f, arg_0.a.b, 776f);
    var var_1 = u_input.d.yw;
    global0 = array<Struct_2, 6>();
    let var_2 = func_1(vec3<bool>(false, true, !any(select(vec3<bool>(true, true, arg_0.b), vec3<bool>(false, arg_0.b, arg_0.b), vec3<bool>(arg_0.b, true, arg_0.b)))), func_1(!select(select(vec3<bool>(true, false, false), vec3<bool>(true, arg_0.b, false), arg_0.b), !vec3<bool>(false, arg_0.b, true), vec3<bool>(arg_0.b, true, arg_0.b)), true).b).e;
    return -759f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = vec4<i32>(u_input.d.x, _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, -28802i) ^ u_input.d.xwy, vec3<i32>(u_input.b, u_input.d.x, -45649i)), -(~u_input.a)), reverseBits(u_input.d.yyz)), ~(-1i), u_input.b);
    var var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_6(func_1(select(vec3<bool>(var_0, var_0, true), vec3<bool>(var_0, true, var_0), var_0), any(vec2<bool>(false, var_0))))))));
    global0 = array<Struct_2, 6>();
    let var_3 = _wgslsmith_mod_vec2_i32(vec2<i32>(-var_1.x, _wgslsmith_add_i32(3455i, ~min(u_input.b, -2147483647i))), var_1.yw);
    let var_4 = u_input.c;
    var var_5 = func_1(!(!(!(!vec3<bool>(var_0, false, var_0)))), true).a;
    let var_6 = vec3<u32>(_wgslsmith_mult_u32(5535u, u_input.c), 46025u, firstLeadingBit(~3382u) << (1u % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(var_3.x, -var_3.x, ~var_3.x, select(-35215i, u_input.d.x, false)) << (firstTrailingBit(~vec4<u32>(var_4, 4294967295u, 5086u, 1u)) % vec4<u32>(32u)), vec4<u32>(~(~abs(38247u)), 50912u, 31266u, countOneBits(1u)));
}

