struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: u32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 25>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1(arg_0: vec2<u32>, arg_1: f32, arg_2: Struct_1) -> Struct_1 {
    let var_0 = Struct_2(-2472f, arg_2.c, Struct_1(arg_2.a, arg_2.c, u_input.b.x));
    let var_1 = -_wgslsmith_dot_vec3_i32(select(~vec3<i32>(var_0.c.c, u_input.b.x, global0[_wgslsmith_index_u32(arg_0.x, 25u)]), _wgslsmith_add_vec3_i32(u_input.b >> (vec3<u32>(20744u, 0u, 1u) % vec3<u32>(32u)), -vec3<i32>(-1i, 1i, var_0.c.c)), vec3<bool>(var_0.c.c > global0[_wgslsmith_index_u32(4294967295u, 25u)], true, any(vec2<bool>(false, true)))), _wgslsmith_add_vec3_i32(u_input.b, u_input.b));
    var var_2 = -vec4<i32>(_wgslsmith_mult_i32(-2147483647i, ~2147483647i | -u_input.b.x), countOneBits(-min(var_0.b, global0[_wgslsmith_index_u32(41310u, 25u)])), -18886i, 0i);
    let var_3 = Struct_3(firstLeadingBit(_wgslsmith_dot_vec4_i32(-select(vec4<i32>(0i, var_0.b, -1i, var_1), vec4<i32>(-2707i, var_1, -23000i, -3070i), false), vec4<i32>(-1i) * -vec4<i32>(var_2.x, 2147483647i, 1i, var_1))), Struct_1(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.c.a - vec4<f32>(arg_2.a.x, arg_1, -615f, arg_1))))), arg_2.c << (max(~u_input.a, _wgslsmith_add_u32(0u, arg_0.x)) % 32u), u_input.b.x));
    var var_4 = 24884u;
    return var_3.b;
}

fn func_3() -> Struct_1 {
    var var_0 = vec3<i32>(-1i) * -u_input.b;
    var var_1 = countOneBits(global0[_wgslsmith_index_u32(u_input.a, 25u)]);
    var_1 = global0[_wgslsmith_index_u32(firstLeadingBit(18032u), 25u)];
    var var_2 = _wgslsmith_mult_vec2_u32(firstLeadingBit(max(~(vec2<u32>(u_input.a, 35577u) & vec2<u32>(0u, 27511u)), ~(~vec2<u32>(42553u, 4294967295u)))), vec2<u32>(abs(0u), reverseBits(4294967295u)));
    return func_1(_wgslsmith_mod_vec2_u32(vec2<u32>(~0u, ~1u) << (_wgslsmith_mult_vec2_u32(~vec2<u32>(var_2.x, 0u), vec2<u32>(76741u, u_input.a)) % vec2<u32>(32u)), vec2<u32>(0u, ~(~53131u))), _wgslsmith_f_op_f32(-func_1(vec2<u32>(var_2.x, u_input.a), 293f, Struct_1(vec4<f32>(1f, 1f, 1f, 1f), ~(-2147483647i), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(77928u, 16299u, var_2.x, 13379u), vec4<u32>(23805u, 37583u, var_2.x, 1u)), 25u)])).a.x), func_1(~abs(~vec2<u32>(u_input.a, 62334u)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -927f))), func_1(~(vec2<u32>(u_input.a, 79254u) << (vec2<u32>(var_2.x, 61490u) % vec2<u32>(32u))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-649f)), _wgslsmith_f_op_f32(-991f + 213f))), func_1(select(vec2<u32>(0u, 44042u), vec2<u32>(1u, var_2.x), vec2<bool>(true, false)), _wgslsmith_div_f32(1610f, -744f), Struct_1(vec4<f32>(285f, -308f, 365f, 496f), var_0.x, u_input.b.x)))));
}

fn func_4(arg_0: f32, arg_1: u32, arg_2: Struct_1) -> i32 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)) + _wgslsmith_div_f32(arg_0, 1000f)))), _wgslsmith_clamp_i32(func_1(~reverseBits(vec2<u32>(0u, arg_1)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-448f)) * _wgslsmith_div_f32(arg_0, arg_2.a.x)), Struct_1(_wgslsmith_f_op_vec4_f32(arg_2.a - vec4<f32>(arg_2.a.x, arg_0, 201f, -1398f)), _wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(-1i, 0i, arg_2.c)), _wgslsmith_sub_i32(u_input.b.x, u_input.b.x))).b, u_input.b.x, -_wgslsmith_mult_i32(826i, u_input.b.x << (arg_1 % 32u))), func_1(~(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(arg_1, 1u)) ^ _wgslsmith_mod_vec2_u32(vec2<u32>(0u, u_input.a), vec2<u32>(53713u, 43402u))), -1735f, func_1(min(~vec2<u32>(9318u, arg_1), firstLeadingBit(vec2<u32>(41544u, 0u))), func_3().a.x, arg_2)));
    global0 = array<i32, 25>();
    var var_1 = _wgslsmith_dot_vec3_i32(-u_input.b, vec3<i32>(firstLeadingBit(_wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(0u, 25u)], _wgslsmith_div_i32(199i, -43432i), countOneBits(global0[_wgslsmith_index_u32(16667u, 25u)]))), reverseBits(-max(21377i, 26335i)), global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(max(0u, u_input.a), _wgslsmith_sub_u32(1u, u_input.a)), 25u)]));
    global0 = array<i32, 25>();
    global0 = array<i32, 25>();
    return arg_2.c;
}

fn func_2() -> f32 {
    var var_0 = ~vec2<i32>(-1i >> (1u % 32u), -min(~(-12451i), -u_input.b.x));
    global0 = array<i32, 25>();
    let var_1 = ~_wgslsmith_mult_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(33868u, 25u)], func_4(_wgslsmith_f_op_f32(sign(899f)), _wgslsmith_add_u32(16107u, u_input.a), func_3())), reverseBits(u_input.b.zy));
    let var_2 = _wgslsmith_f_op_f32(-844f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, -1178f)), _wgslsmith_f_op_f32(370f + _wgslsmith_f_op_f32(_wgslsmith_div_f32(236f, -896f) + _wgslsmith_f_op_f32(floor(-666f))))));
    var_0 = u_input.b.zy << (_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(41881u, _wgslsmith_mult_u32(u_input.a, 1u)), abs(select(~vec2<u32>(u_input.a, 55999u), vec2<u32>(1u, 20953u) >> (vec2<u32>(u_input.a, 4294967295u) % vec2<u32>(32u)), all(vec2<bool>(true, false))))) % vec2<u32>(32u));
    return _wgslsmith_f_op_f32(step(func_1(vec2<u32>(u_input.a, u_input.a >> (0u % 32u)) << (vec2<u32>(select(0u, u_input.a, false), 1u) % vec2<u32>(32u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2 * _wgslsmith_f_op_f32(var_2 * -183f)), _wgslsmith_f_op_f32(var_2 - _wgslsmith_f_op_f32(-var_2))), Struct_1(func_1(~vec2<u32>(u_input.a, u_input.a), _wgslsmith_f_op_f32(var_2 + -1031f), Struct_1(vec4<f32>(var_2, -1000f, var_2, var_2), u_input.b.x, 0i)).a, var_1.x, var_0.x)).a.x, var_2));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-786f, -144f, -186f, 311f))))), -u_input.b.x, u_input.b.x);
    var_0 = func_1(vec2<u32>(abs(47048u), 12030u), 830f, Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-484f, -799f, _wgslsmith_f_op_f32(-1595f * var_0.a.x), -835f)), global0[_wgslsmith_index_u32(0u, 25u)], _wgslsmith_dot_vec2_i32(reverseBits(select(u_input.b.zx, vec2<i32>(u_input.b.x, 15336i), vec2<bool>(false, true))), u_input.b.zx >> (vec2<u32>(u_input.a, 1u) % vec2<u32>(32u)))));
    var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(var_0.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.a))))), reverseBits(-7513i), ~u_input.b.x);
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(func_2()), var_0.a.x);
    var var_2 = Struct_1(var_0.a, ~(~2147483647i), -(_wgslsmith_mod_i32(_wgslsmith_mod_i32(0i, -7754i), abs(var_0.c)) ^ -_wgslsmith_mult_i32(var_0.b, global0[_wgslsmith_index_u32(0u, 25u)])));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-176f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(532f * 2285f), _wgslsmith_f_op_f32(trunc(var_2.a.x))))))), vec3<u32>(~(~u_input.a << ((u_input.a & u_input.a) % 32u)), firstLeadingBit(23830u), _wgslsmith_sub_u32(~u_input.a >> (abs(u_input.a) % 32u), 34382u)), firstLeadingBit(~firstTrailingBit(41031u ^ u_input.a)), ~vec2<i32>(-19604i, -1i & var_2.c));
}

