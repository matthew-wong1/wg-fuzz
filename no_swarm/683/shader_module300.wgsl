struct Struct_1 {
    a: vec2<f32>,
    b: vec2<f32>,
    c: bool,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: f32,
    e: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<i32>,
    c: vec2<bool>,
    d: i32,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<vec4<bool>, 32> = array<vec4<bool>, 32>(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false));

var<private> global2: vec2<f32>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: vec3<i32>, arg_1: u32) -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-1588f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-282f + _wgslsmith_f_op_f32(-global2.x)))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-120f)) + _wgslsmith_f_op_f32(-1187f * 955f)))));
    let var_1 = ~(-2423i);
    global2 = var_0;
    var var_2 = Struct_3(firstTrailingBit(~reverseBits(arg_1) >> (88767u % 32u)), Struct_1(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1116f, _wgslsmith_f_op_f32(ceil(1831f))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-251f, var_0.x), _wgslsmith_f_op_vec2_f32(var_0 * vec2<f32>(-419f, -1132f)))), vec2<bool>(true, true))), var_0, !any(!global1[_wgslsmith_index_u32(u_input.c, 32u)]), false, -1023f), Struct_1(var_0, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0 + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(global2.x, var_0.x), var_0))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_0, vec2<f32>(global2.x, global2.x), true)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, 251f)))), all(vec4<bool>(true, true, true, true)), false, -1000f), -1000f, var_0.x);
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global2.x, -1620f, var_2.e)) + vec4<f32>(-3125f, _wgslsmith_f_op_f32(ceil(global2.x)), _wgslsmith_f_op_f32(round(-1639f)), global2.x))));
    return _wgslsmith_add_i32(-countOneBits(firstLeadingBit(-2147483647i)), var_1 | arg_0.x);
}

fn func_2() -> Struct_2 {
    global1 = array<vec4<bool>, 32>();
    let var_0 = vec4<i32>(-(~u_input.b.x), func_3(-u_input.b, u_input.c) ^ _wgslsmith_add_i32(u_input.b.x, -2147483647i), min(_wgslsmith_dot_vec2_i32(u_input.b.zy, vec2<i32>(~2147483647i, 1i)), _wgslsmith_add_i32(countOneBits(u_input.a), _wgslsmith_clamp_i32(-52307i, u_input.a, u_input.a) | countOneBits(20302i))), u_input.b.x);
    var var_1 = ~_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(0u, u_input.c, 30367u, 1u), vec4<u32>(65676u, ~u_input.c, ~u_input.c, countOneBits(u_input.c))), _wgslsmith_sub_vec4_u32(select(vec4<u32>(u_input.c, 11920u, u_input.c, 14524u), vec4<u32>(1u, u_input.c, u_input.c, u_input.c) | vec4<u32>(34535u, u_input.c, u_input.c, u_input.c), vec4<bool>(true, true, true, true)), vec4<u32>(4294967295u, firstTrailingBit(u_input.c), _wgslsmith_add_u32(u_input.c, 0u), u_input.c)));
    return Struct_2(countOneBits(var_1.wz));
}

fn func_1() -> Struct_4 {
    var var_0 = func_2();
    var_0 = func_2();
    global0 = u_input.a;
    var var_1 = Struct_4(Struct_3(_wgslsmith_mod_u32(var_0.a.x, _wgslsmith_clamp_u32(_wgslsmith_div_u32(4294967295u, var_0.a.x), ~4294967295u, select(u_input.c, 1u, false))), Struct_1(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, -515f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1042f, 177f)), all(vec3<bool>(true, true, true)), select(false, true, true), _wgslsmith_f_op_f32(-global2.x)), Struct_1(vec2<f32>(global2.x, 1602f), vec2<f32>(2260f, _wgslsmith_f_op_f32(step(-467f, global2.x))), true, select(true, true, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) - 253f)), _wgslsmith_f_op_f32(sign(global2.x)), global2.x), _wgslsmith_div_vec2_i32(abs(~vec2<i32>(50810i, -38813i)), -_wgslsmith_mod_vec2_i32(-vec2<i32>(-79979i, u_input.a), ~u_input.b.xx)), vec2<bool>(~(1u | var_0.a.x) == ~func_2().a.x, ~(59204i << (u_input.c % 32u)) >= 9069i), -1i, func_2());
    global1 = array<vec4<bool>, 32>();
    return Struct_4(Struct_3(max(min(u_input.c, func_2().a.x), u_input.c), var_1.a.c, Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.c.b.x, 543f))), vec2<f32>(-939f, 281f), var_1.c.x && true, true, _wgslsmith_f_op_f32(-1368f - _wgslsmith_f_op_f32(-var_1.a.c.e))), -1167f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(926f * var_1.a.c.e)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global2.x, -933f)), global2.x))), _wgslsmith_clamp_vec2_i32(-var_1.b, u_input.b.xx, _wgslsmith_div_vec2_i32(min(var_1.b << (vec2<u32>(var_1.e.a.x, 46349u) % vec2<u32>(32u)), vec2<i32>(u_input.b.x, 0i)), firstTrailingBit(u_input.b.yz))), var_1.c, 1i, var_1.e);
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: u32, arg_3: Struct_4) -> vec2<f32> {
    var var_0 = Struct_3(1u, func_1().a.b, Struct_1(arg_1.a, _wgslsmith_f_op_vec2_f32(trunc(func_1().a.b.a)), arg_0.x, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(415f * 1305f))), arg_1.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1143f - _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(arg_1.b.x, -851f))))));
    var var_1 = vec4<u32>(0u << (~firstLeadingBit(abs(arg_3.a.a)) % 32u), arg_2, countOneBits(arg_2), _wgslsmith_dot_vec4_u32((abs(vec4<u32>(var_0.a, 69145u, var_0.a, 19615u)) << (vec4<u32>(u_input.c, 1u, arg_3.a.a, u_input.c) % vec4<u32>(32u))) << (countOneBits(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_3.a.a, var_0.a, var_0.a, 66377u), vec4<u32>(arg_2, 576u, var_0.a, 1u))) % vec4<u32>(32u)), ~_wgslsmith_add_vec4_u32(vec4<u32>(arg_2, arg_2, 5551u, 4294967295u), ~vec4<u32>(4294967295u, u_input.c, arg_2, 4294967295u))));
    var_0 = func_1().a;
    var var_2 = vec4<u32>(firstTrailingBit(u_input.c), 1u, var_1.x, 18518u);
    let var_3 = Struct_2(arg_3.e.a);
    return arg_3.a.b.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1242f, -352f) + vec2<f32>(1402f, global2.x)) - vec2<f32>(-634f, 427f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(157f, 542f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, global2.x) - vec2<f32>(global2.x, global2.x))), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, -812f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global2.x, -973f), vec2<f32>(1135f, 342f)))))) + _wgslsmith_div_vec2_f32(vec2<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(809f * global2.x) * global2.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_4(!global1[_wgslsmith_index_u32(4294967295u, 32u)], Struct_1(vec2<f32>(-426f, 329f), vec2<f32>(-1237f, global2.x), false, true, global2.x), u_input.c, func_1())) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global2.x, global2.x), vec2<f32>(global2.x, global2.x)))))));
    global1 = array<vec4<bool>, 32>();
    global1 = array<vec4<bool>, 32>();
    let var_1 = ~u_input.b.x;
    global2 = var_0;
    let var_2 = func_2();
    let var_3 = Struct_2(var_2.a);
    let x = u_input.a;
    s_output = StorageBuffer(~abs(max(vec3<u32>(0u, 0u, var_2.a.x), vec3<u32>(var_3.a.x, var_2.a.x, 31852u) & vec3<u32>(1u, 94366u, var_3.a.x))), vec2<f32>(global2.x, -419f));
}

