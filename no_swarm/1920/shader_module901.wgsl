struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: i32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec3<i32>,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 19>;

var<private> global1: vec2<i32>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-847f, _wgslsmith_f_op_f32(abs(-1268f)), _wgslsmith_f_op_f32(round(-1261f)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1168f, 2116f, -763f))) - vec3<f32>(1000f, -865f, -430f)), vec3<f32>(-460f, -105f, _wgslsmith_f_op_f32(f32(-1f) * -183f)))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1215f, 331f)), 1348f, -457f))));
    global0 = array<vec4<u32>, 19>();
    global0 = array<vec4<u32>, 19>();
    let var_1 = abs(u_input.b | u_input.a);
    global1 = countOneBits(_wgslsmith_mult_vec2_i32(~(~u_input.c.zy), select(-vec2<i32>(global1.x, u_input.c.x), -vec2<i32>(u_input.c.x, u_input.c.x), select(true, true, true)) >> (vec2<u32>(var_1, _wgslsmith_div_u32(var_1, u_input.b)) % vec2<u32>(32u))));
    return _wgslsmith_f_op_f32(2425f - 156f);
}

fn func_2(arg_0: vec4<i32>) -> Struct_1 {
    global1 = vec2<i32>(max(1i, 2147483647i), countOneBits(1i));
    var var_0 = vec4<bool>(true || all(vec2<bool>(true, true)), !select(true, true, 26806i >= arg_0.x) | select(_wgslsmith_f_op_f32(func_3()) <= -1261f, true, true), true, true);
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(1329f)), _wgslsmith_f_op_f32(func_3()), false))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(859f + 2654f))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1643f, 761f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1442f, -1030f) + vec2<f32>(-1699f, -164f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(659f, 1668f), vec2<f32>(-293f, 1000f))))))));
    var var_2 = 1000f;
    let var_3 = _wgslsmith_div_vec2_u32(countOneBits(vec2<u32>(54008u, u_input.a)), ~(vec2<u32>(max(u_input.b, u_input.a), 8238u >> (u_input.a % 32u)) ^ ((vec2<u32>(u_input.a, u_input.a) >> (vec2<u32>(u_input.b, u_input.a) % vec2<u32>(32u))) & max(vec2<u32>(4294967295u, u_input.b), vec2<u32>(1u, 0u)))));
    return Struct_1(2147483647i, _wgslsmith_div_vec3_i32(countOneBits(vec3<i32>(u_input.c.x, -41347i, 77411i)), vec3<i32>(u_input.c.x, _wgslsmith_mult_i32(max(u_input.c.x, 1i), arg_0.x), i32(-1i) * -2147483647i)), -(~firstLeadingBit(_wgslsmith_clamp_i32(-2147483647i, u_input.c.x, arg_0.x))));
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_1) -> Struct_2 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2613f * -908f) + -1000f)), -492f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-371f))))));
    var var_1 = vec2<i32>(abs(u_input.c.x), u_input.c.x) << ((~reverseBits(vec2<u32>(u_input.b, u_input.a) >> (vec2<u32>(4294967295u, 32644u) % vec2<u32>(32u))) ^ (vec2<u32>(u_input.a, ~10804u) ^ vec2<u32>(_wgslsmith_mod_u32(u_input.b, 1u), u_input.a))) % vec2<u32>(32u));
    let var_2 = arg_1.b;
    var var_3 = func_2(vec4<i32>(-u_input.c.x, arg_1.b.x, _wgslsmith_dot_vec3_i32(select(-vec3<i32>(1i, -16480i, var_1.x), vec3<i32>(var_1.x, global1.x, arg_1.b.x), false), max(arg_1.b, arg_1.b)), _wgslsmith_add_i32(~(-8295i), ~abs(arg_1.c))));
    let var_4 = arg_1;
    return Struct_2(abs(_wgslsmith_div_vec3_u32(~(~vec3<u32>(u_input.a, u_input.b, 4294967295u)), select(countOneBits(vec3<u32>(u_input.a, 44992u, u_input.b)), ~vec3<u32>(4294967295u, u_input.a, 21083u), arg_0))), var_4.b, _wgslsmith_dot_vec4_i32(-abs(vec4<i32>(26580i, u_input.c.x, -1i, 4369i)), ~abs(vec4<i32>(13712i, -1i, arg_1.b.x, -26479i)) >> (_wgslsmith_add_vec4_u32(global0[_wgslsmith_index_u32(13405u, 19u)] | vec4<u32>(u_input.b, u_input.b, 4294967295u, 13900u), abs(vec4<u32>(u_input.b, 4294967295u, 1u, u_input.a))) % vec4<u32>(32u))), arg_1);
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_2) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1825f))) + _wgslsmith_f_op_f32(f32(-1f) * -1495f)) + -213f), -2041f));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * vec3<f32>(-937f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1875f * 607f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(439f, 1093f)))))) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(555f, 539f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -271f), _wgslsmith_f_op_f32(max(791f, -433f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(996f * 948f) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-293f)), -973f)))));
    var var_2 = Struct_1(-2147483647i, -(~(-(~vec3<i32>(arg_1.b.x, 2147483647i, global1.x)))), ~2147483647i);
    var_2 = func_2(-vec4<i32>(func_1(vec3<bool>(false, false, true), arg_1.d).b.x, func_1(vec3<bool>(true, false, true), Struct_1(arg_0.x, var_2.b, global1.x)).c, ~global1.x, _wgslsmith_clamp_i32(28280i, -2147483647i, arg_1.d.c)) << (abs(vec4<u32>(u_input.b, u_input.b, countOneBits(u_input.b), select(10079u, 0u, false))) % vec4<u32>(32u)));
    let var_3 = arg_1.d;
    return _wgslsmith_f_op_f32(step(var_1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_1.x)) + 453f) * var_1.x), -114f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(1f, _wgslsmith_f_op_f32(func_4(-vec3<i32>(u_input.c.x, 0i, u_input.c.x << (21291u % 32u)), func_1(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), Struct_1(_wgslsmith_mod_i32(u_input.c.x, u_input.c.x), vec3<i32>(global1.x, global1.x, global1.x), global1.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(158f + 1472f)) + 743f)));
    global0 = array<vec4<u32>, 19>();
    let var_1 = _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, ~(~u_input.b), u_input.b), ~(~min(vec3<u32>(1u, u_input.a, 16838u), vec3<u32>(42601u, 0u, u_input.a)))) | vec3<u32>(u_input.a, max(~u_input.b >> (u_input.a % 32u), 97019u), 88452u << (1u % 32u));
    global0 = array<vec4<u32>, 19>();
    var var_2 = select(~(~var_1), var_1, any(select(vec3<bool>(true, true, true), vec3<bool>(true, any(vec3<bool>(true, true, true)), select(true, false, false)), any(vec3<bool>(true, true, true)))));
    let var_3 = _wgslsmith_div_vec4_i32(abs(reverseBits(-abs(vec4<i32>(2147483647i, global1.x, global1.x, global1.x)))), min(-(vec4<i32>(u_input.c.x, 2147483647i, 36896i, 628i) << (min(vec4<u32>(var_1.x, var_1.x, 11927u, u_input.a), vec4<u32>(var_1.x, 19121u, 1u, 1u)) % vec4<u32>(32u))), reverseBits(vec4<i32>(~global1.x, global1.x << (0u % 32u), reverseBits(u_input.c.x), -8140i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -1630f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(1137f + -643f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(var_0.x, -1064f)), _wgslsmith_f_op_f32(-var_0.x))))), -(-2147483647i >> (0u % 32u)));
}

