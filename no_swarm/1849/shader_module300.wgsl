struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 20>;

var<private> global1: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(2529u), Struct_1(31905u), Struct_1(4294967295u));

var<private> global2: Struct_2 = Struct_2(Struct_1(35890u));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_2) -> bool {
    global0 = array<vec3<i32>, 20>();
    let var_0 = Struct_2(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.d, 18988u, min(arg_0.a.a, global2.a.a), arg_0.a.a ^ global2.a.a), reverseBits(abs(vec4<u32>(4423u, 1u, 4294967295u, 0u)))), abs(_wgslsmith_sub_vec4_u32(~vec4<u32>(global2.a.a, 0u, 1633u, arg_0.a.a), select(vec4<u32>(global2.a.a, arg_0.a.a, 1u, 1u), vec4<u32>(arg_0.a.a, u_input.a.x, u_input.d, u_input.a.x), vec4<bool>(true, true, true, false))))), 3u)]);
    var var_1 = -929f;
    global1 = array<Struct_1, 3>();
    var var_2 = vec2<f32>(851f, -831f);
    return true;
}

fn func_2(arg_0: vec4<i32>) -> vec4<u32> {
    global1 = array<Struct_1, 3>();
    global2 = Struct_2(global1[_wgslsmith_index_u32(global2.a.a, 3u)]);
    global0 = array<vec3<i32>, 20>();
    let var_0 = vec2<bool>(4717u <= _wgslsmith_mod_u32(_wgslsmith_mult_u32(~4294967295u, ~1u), ~firstLeadingBit(u_input.a.x)), any(vec4<bool>(all(vec3<bool>(true, true, true)), func_3(Struct_2(Struct_1(u_input.a.x))), false, func_3(Struct_2(Struct_1(global2.a.a))))));
    var var_1 = var_0.x;
    return _wgslsmith_clamp_vec4_u32(countOneBits(firstLeadingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, 36691u, global2.a.a, u_input.a.x) >> (vec4<u32>(u_input.a.x, 1u, u_input.d, 52127u) % vec4<u32>(32u)), vec4<u32>(u_input.d, u_input.d, 4294967295u, u_input.a.x)))), ~_wgslsmith_add_vec4_u32(vec4<u32>(53825u >> (global2.a.a % 32u), abs(u_input.a.x), select(global2.a.a, global2.a.a, var_0.x), u_input.a.x), ~abs(vec4<u32>(global2.a.a, 35153u, 1u, u_input.d))), _wgslsmith_sub_vec4_u32(vec4<u32>(~min(global2.a.a, u_input.d), u_input.d, 4294967295u, ~2792u), vec4<u32>(firstLeadingBit(0u), reverseBits(0u), u_input.a.x, firstLeadingBit(_wgslsmith_add_u32(u_input.a.x, global2.a.a)))));
}

fn func_4(arg_0: vec4<u32>, arg_1: bool) -> vec4<f32> {
    var var_0 = Struct_2(global1[_wgslsmith_index_u32(u_input.a.x >> (select(max(abs(global2.a.a), u_input.d >> (global2.a.a % 32u)), u_input.a.x, arg_1) % 32u), 3u)]);
    global2 = Struct_2(global1[_wgslsmith_index_u32(0u, 3u)]);
    let var_1 = true;
    var var_2 = !vec2<bool>(!var_1, all(select(vec2<bool>(var_1, false), vec2<bool>(arg_1, true), vec2<bool>(true, true))) || (~7487u > global2.a.a));
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-336f * _wgslsmith_f_op_f32(min(-606f, -402f))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -227f), -491f) - _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(_wgslsmith_div_f32(439f, -1000f) - _wgslsmith_f_op_f32(726f + 699f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-259f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-282f)))))));
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-2649f - var_3.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.x + -505f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1452f - _wgslsmith_f_op_f32(-var_3.x)), _wgslsmith_f_op_f32(sign(var_3.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-723f - _wgslsmith_f_op_f32(231f * var_3.x)) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(164f, var_3.x)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-1000f)))), 427f, var_3.x, 153f)));
}

fn func_1() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-479f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1387f))), -2157f)));
    let var_1 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-230f, -2023f, 1000f)));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(floor(-1007f)), _wgslsmith_f_op_f32(f32(-1f) * -1125f), _wgslsmith_f_op_f32(-var_1.x), var_0.x);
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(max(-383f, _wgslsmith_f_op_f32(floor(-1054f)))), 1644f, 690f);
    var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-177f, 572f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), var_2.x, var_0.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_1.x * var_0.x), -867f, var_0.x, _wgslsmith_f_op_f32(floor(var_2.x))))) + _wgslsmith_f_op_vec4_f32(func_4(abs(func_2(vec4<i32>(u_input.b.x, u_input.c.x, -2147483647i, 32547i) >> (vec4<u32>(16656u, 1899u, 13418u, 3245u) % vec4<u32>(32u)))), any(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), false), vec3<bool>(false, true, false))))));
    return Struct_2(Struct_1(0u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec3_i32(-_wgslsmith_add_vec3_i32(firstTrailingBit(vec3<i32>(-66421i, u_input.b.x, u_input.b.x)), countOneBits(~u_input.b)), min(_wgslsmith_mod_vec3_i32(-vec3<i32>(u_input.b.x, -2147483647i, -8281i), -(~vec3<i32>(52150i, u_input.b.x, 0i))), -_wgslsmith_sub_vec3_i32(vec3<i32>(0i, 73542i, u_input.c.x), global0[_wgslsmith_index_u32(9065u, 20u)]) ^ ~(~vec3<i32>(u_input.b.x, -2147483647i, u_input.b.x))));
    global2 = func_1();
    var var_1 = func_1();
    global0 = array<vec3<i32>, 20>();
    var var_2 = 135f;
    var var_3 = _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, var_0 & _wgslsmith_mod_i32(var_0 << (global2.a.a % 32u), -u_input.c.x)), u_input.b.xy);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -1020f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(998f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1663f))));
}

