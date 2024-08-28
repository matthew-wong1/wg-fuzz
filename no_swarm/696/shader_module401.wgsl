struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: vec3<u32>,
    d: bool,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: f32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: f32,
    c: f32,
    d: vec2<bool>,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 8> = array<i32, 8>(-1i, -26625i, -22310i, -1i, 1i, 20900i, 2147483647i, 17026i);

var<private> global1: Struct_2 = Struct_2(Struct_1(93507u, vec2<f32>(893f, -375f), vec3<u32>(34975u, 0u, 4294967295u), true, vec3<i32>(44799i, 33468i, i32(-2147483648))), Struct_1(27290u, vec2<f32>(1000f, 1094f), vec3<u32>(0u, 48557u, 19371u), false, vec3<i32>(25689i, -30950i, 6506i)), 2147483647i, 453f);

var<private> global2: vec4<u32>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_2(arg_0: vec2<f32>, arg_1: bool) -> Struct_1 {
    return global1.b;
}

fn func_3(arg_0: f32, arg_1: u32) -> i32 {
    var var_0 = global1.b;
    let var_1 = global1.b;
    global1 = Struct_2(global1.b, Struct_1(var_0.c.x, var_1.b, min(var_0.c, ~abs(vec3<u32>(var_0.a, 4294967295u, u_input.d.x))), var_1.d, vec3<i32>(_wgslsmith_div_i32(~var_0.e.x, firstLeadingBit(global1.b.e.x)), ~_wgslsmith_sub_i32(u_input.a.x, -2147483647i), select(global1.a.e.x ^ 0i, ~1i, any(vec3<bool>(false, var_1.d, true))))), i32(-1i) * -20197i, arg_0);
    global1 = Struct_2(Struct_1(select(4294967295u, ~firstTrailingBit(1u), _wgslsmith_f_op_f32(-global1.b.b.x) < 1000f), vec2<f32>(_wgslsmith_f_op_f32(min(var_0.b.x, _wgslsmith_f_op_f32(trunc(-1080f)))), var_1.b.x), reverseBits(var_1.c), var_1.d, vec3<i32>(2147483647i, -2504i, global0[_wgslsmith_index_u32(var_0.a, 8u)] >> (var_0.a % 32u)) & _wgslsmith_mod_vec3_i32(var_0.e, ~var_0.e)), global1.b, _wgslsmith_mult_i32(0i, u_input.a.x) & _wgslsmith_mult_i32(-(~var_0.e.x), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.e.x, -46593i, -2147483647i, -2147483647i) >> (vec4<u32>(u_input.d.x, 4294967295u, var_0.a, global1.b.a) % vec4<u32>(32u)), vec4<i32>(var_1.e.x, global1.b.e.x, global0[_wgslsmith_index_u32(var_0.c.x, 8u)], u_input.e))), var_0.b.x);
    var var_2 = Struct_3(vec2<i32>(global0[_wgslsmith_index_u32(func_2(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1149f, var_1.b.x), var_1.b)))), select(var_0.d & global1.a.d, false, true)).a, 8u)], -_wgslsmith_dot_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(0u, 8u)], global1.a.e.x), -vec2<i32>(global1.c, var_0.e.x))), -792f, _wgslsmith_f_op_f32(arg_0 * global1.d), vec2<bool>(true, true), func_2(_wgslsmith_f_op_vec2_f32(select(global1.a.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b.x, -1336f) - global1.a.b) - var_1.b), select(!vec2<bool>(var_1.d, var_1.d), select(vec2<bool>(var_1.d, global1.a.d), vec2<bool>(true, true), vec2<bool>(global1.b.d, global1.a.d)), var_1.d && true))), !var_1.d).c);
    return _wgslsmith_div_i32(_wgslsmith_div_i32(12123i, _wgslsmith_dot_vec3_i32(select(abs(var_1.e), _wgslsmith_mod_vec3_i32(var_1.e, global1.a.e), any(vec3<bool>(var_0.d, var_0.d, global1.b.d))), vec3<i32>(u_input.a.x, _wgslsmith_clamp_i32(var_1.e.x, 2147483647i, var_0.e.x), 0i))), global0[_wgslsmith_index_u32(u_input.d.x, 8u)]);
}

fn func_1() -> vec3<u32> {
    var var_0 = Struct_2(func_2(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-2326f, _wgslsmith_f_op_f32(-992f * -1652f)))), true), global1.b, func_3(_wgslsmith_div_f32(-758f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(429f, global1.b.b.x)), _wgslsmith_f_op_f32(global1.a.b.x - global1.a.b.x)))), ~global2.x), _wgslsmith_f_op_f32(global1.a.b.x - -210f));
    var_0 = Struct_2(func_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.d)))), all(vec3<bool>(32104u < var_0.b.c.x, !var_0.a.d, global1.a.d))), func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global1.b.b, vec2<f32>(-858f, global1.d))), !all(select(vec4<bool>(global1.b.d, global1.a.d, true, var_0.a.d), vec4<bool>(false, false, var_0.a.d, global1.b.d), true))), _wgslsmith_add_i32(func_3(_wgslsmith_f_op_f32(1985f + _wgslsmith_f_op_f32(ceil(-821f))), global1.a.a), abs(global1.c)), 514f);
    global1 = Struct_2(global1.b, func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_0.d), var_0.d)), !(!(global1.a.e.x < global1.b.e.x))), u_input.a.x, _wgslsmith_f_op_f32(select(var_0.d, _wgslsmith_f_op_f32(abs(global1.a.b.x)), true)));
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-767f, _wgslsmith_f_op_f32(-var_0.a.b.x), global1.b.b.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-612f, var_0.b.b.x, global1.b.d))), -3094f, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(global1.d, 1000f))))));
    var_0 = Struct_2(func_2(_wgslsmith_f_op_vec2_f32(step(global1.a.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.d, var_1.x), var_1.zx))))), !(!any(vec4<bool>(global1.a.d, true, global1.a.d, global1.b.d)))), Struct_1(var_0.b.c.x, var_0.a.b, vec3<u32>(reverseBits(1u), var_0.a.c.x, min(39849u, var_0.b.a)) << ((max(vec3<u32>(734u, global1.b.a, u_input.c.x), u_input.c.www) << (vec3<u32>(var_0.b.a, 4294967295u, global1.a.c.x) % vec3<u32>(32u))) % vec3<u32>(32u)), true, countOneBits(_wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(1i, var_0.a.e.x, var_0.b.e.x), global1.b.e), abs(vec3<i32>(-1i, global1.b.e.x, var_0.b.e.x)), _wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, -2147483647i, 2147483647i), global1.b.e)))), _wgslsmith_mult_i32(_wgslsmith_sub_i32(-1i, -21560i) << (_wgslsmith_dot_vec3_u32(vec3<u32>(48099u, u_input.d.x, 21809u), u_input.d) % 32u), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b.x, abs(0u)), 8u)]) << (1u % 32u), global1.d);
    return vec3<u32>(1u, _wgslsmith_div_u32(global2.x, ~(u_input.b.x ^ global2.x)), ~1u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~(~func_1()), abs(vec3<u32>(_wgslsmith_dot_vec4_u32(~u_input.c, max(vec4<u32>(global2.x, global2.x, 48395u, 4294967295u), u_input.c)), 20480u, 4294967295u))), 8u)];
    var var_1 = Struct_2(Struct_1(global2.x & ~u_input.c.x, _wgslsmith_div_vec2_f32(vec2<f32>(global1.a.b.x, -1214f), vec2<f32>(_wgslsmith_f_op_f32(round(global1.a.b.x)), -1000f)), ~u_input.d, any(!(!vec4<bool>(false, global1.b.d, global1.a.d, global1.a.d))), vec3<i32>(u_input.e | 39243i, 52842i, -global1.a.e.x)), global1.b, _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(-vec2<i32>(global1.a.e.x, u_input.a.x), vec2<i32>(firstLeadingBit(global1.b.e.x), -global1.a.e.x)), 2147483647i, u_input.e), global1.a.b.x);
    var_1 = Struct_2(Struct_1(global2.x, _wgslsmith_div_vec2_f32(func_2(_wgslsmith_div_vec2_f32(var_1.a.b, vec2<f32>(global1.b.b.x, var_1.b.b.x)), !var_1.b.d).b, vec2<f32>(_wgslsmith_f_op_f32(min(1021f, 1175f)), -350f)), vec3<u32>(_wgslsmith_mult_u32(1u, _wgslsmith_div_u32(var_1.b.c.x, u_input.c.x)), 1u >> (_wgslsmith_clamp_u32(global1.a.c.x, var_1.b.c.x, 1u) % 32u), _wgslsmith_clamp_u32(~global1.b.a, 1u, _wgslsmith_mod_u32(4294967295u, 40179u))), false, ~firstLeadingBit(func_2(var_1.a.b, false).e)), global1.a, abs(-(_wgslsmith_dot_vec2_i32(vec2<i32>(-348i, global1.c), global1.a.e.zz) | _wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(0u, 8u)], u_input.e, 10536i))), _wgslsmith_f_op_f32(select(var_1.a.b.x, -934f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-139f, -977f)), global1.d)) <= 1526f)));
    global1 = Struct_2(Struct_1(_wgslsmith_dot_vec4_u32(~u_input.b, u_input.b & firstTrailingBit(u_input.b)), var_1.a.b, global2.zwy, !((global1.d < -1000f) || var_1.b.d), abs(_wgslsmith_add_vec3_i32(global1.a.e, vec3<i32>(u_input.a.x, 2147483647i, global0[_wgslsmith_index_u32(global2.x, 8u)])) & vec3<i32>(global0[_wgslsmith_index_u32(var_1.a.c.x, 8u)], 23724i, 1i))), Struct_1(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(global1.b.c.x, u_input.c.x, 68717u, 4294967295u), vec4<u32>(42783u, 1u, u_input.d.x, global1.a.c.x) << (u_input.c % vec4<u32>(32u))), ~vec4<u32>(u_input.b.x, global1.b.c.x, 24130u, 4294967295u)), vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(var_1.d, var_1.a.b.x, global1.b.d)))), _wgslsmith_f_op_f32(abs(-1024f))), global1.b.c, true | var_1.b.d, var_1.b.e), func_2(_wgslsmith_f_op_vec2_f32(select(global1.b.b, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-global1.a.b))), select(select(vec2<bool>(var_1.a.d, true), vec2<bool>(var_1.a.d, true), vec2<bool>(global1.b.d, var_1.b.d)), !vec2<bool>(var_1.b.d, var_1.a.d), select(vec2<bool>(var_1.b.d, true), vec2<bool>(true, var_1.a.d), vec2<bool>(true, global1.b.d))))), true).e.x, 1324f);
    var var_2 = _wgslsmith_clamp_u32(func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(global1.b.b.x - global1.a.b.x), _wgslsmith_f_op_f32(-global1.a.b.x))), (false || var_1.b.d) == (abs(var_1.b.e.x) <= (2147483647i & global0[_wgslsmith_index_u32(4294967295u, 8u)]))).a, 1u, firstLeadingBit(~(~1u)));
    var var_3 = vec2<f32>(var_1.a.b.x, _wgslsmith_f_op_f32(ceil(-2025f)));
    let x = u_input.a;
    s_output = StorageBuffer(~(~global1.a.c.x & (global2.x ^ ~8584u)), _wgslsmith_div_f32(global1.a.b.x, global1.d), ~vec2<u32>(abs(global2.x), ~1u));
}

