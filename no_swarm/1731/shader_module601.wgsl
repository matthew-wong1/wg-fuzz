struct Struct_1 {
    a: vec3<u32>,
    b: i32,
}

struct Struct_2 {
    a: i32,
    b: vec4<u32>,
    c: f32,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: u32,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<f32>,
    d: u32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<vec2<i32>, 20>;

var<private> global2: array<vec2<bool>, 4>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_3) -> i32 {
    let var_0 = firstLeadingBit(~(~vec4<u32>(1u, u_input.a.x, 8034u, 0u) << (min(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c.x, u_input.a.x, arg_0.b, 84762u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.c.x, 4294967295u), vec4<u32>(32518u, u_input.c.x, u_input.a.x, 4294967295u)), firstTrailingBit(vec4<u32>(0u, 1u, arg_0.b, 4294967295u))) % vec4<u32>(32u))));
    global2 = array<vec2<bool>, 4>();
    var var_1 = select(select(select(vec2<bool>(any(vec4<bool>(false, false, arg_0.a.x, true)), true), arg_0.a.xy, arg_0.a.x), vec2<bool>(true, ~arg_0.c.x != var_0.x), arg_0.a.zy), vec2<bool>(any(vec3<bool>(true, true, arg_0.a.x)), arg_0.a.x), !select(arg_0.a.x, any(arg_0.a.zy) & any(vec2<bool>(false, true)), true));
    var var_2 = Struct_1(~u_input.c, firstLeadingBit(u_input.b.x));
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-463f))), _wgslsmith_div_f32(-588f, -172f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1249f, 1021f) * vec2<f32>(641f, 1556f))) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(878f, -1656f))))))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -786f), _wgslsmith_f_op_f32(983f - -116f))), _wgslsmith_f_op_f32(sign(-1194f)))));
    return ~(abs(u_input.b.x) | _wgslsmith_dot_vec2_i32(vec2<i32>(var_2.b, u_input.b.x), vec2<i32>(0i, -var_2.b)));
}

fn func_2() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(139f, -1000f, -556f, 1669f)) + vec4<f32>(-1301f, 134f, -646f, -465f)) - vec4<f32>(-1463f, _wgslsmith_f_op_f32(abs(-103f)), _wgslsmith_f_op_f32(trunc(-1529f)), _wgslsmith_f_op_f32(-819f * -270f)))));
    return Struct_2(-func_3(Struct_3(vec3<bool>(true, false, true), ~u_input.a.x, min(u_input.c, vec3<u32>(u_input.c.x, 72647u, 32286u)))), abs(~min(vec4<u32>(38819u, 33797u, u_input.a.x, 6170u), min(vec4<u32>(49911u, 49949u, u_input.c.x, 30891u), vec4<u32>(4294967295u, 4294967295u, u_input.c.x, 22934u)))), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -1571f)) * -1033f))), Struct_1(vec3<u32>(u_input.a.x, ~(~4294967295u), u_input.a.x), _wgslsmith_div_i32(~(-u_input.b.x), _wgslsmith_mod_i32(u_input.b.x, u_input.b.x))));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec2<bool>, arg_2: vec2<u32>, arg_3: vec3<f32>) -> vec4<u32> {
    var var_0 = arg_2.x;
    global0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_3.x)));
    let var_1 = arg_2;
    let var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(502f, 2543f), _wgslsmith_f_op_f32(-arg_3.x))))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(arg_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(312f, 914f, arg_0.x)))), arg_3.x))));
    var var_3 = func_2();
    return vec4<u32>(44784u >> (u_input.a.x % 32u), ~firstLeadingBit(~arg_2.x), 4294967295u, 1u);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2, arg_3: i32) -> Struct_3 {
    var var_0 = func_2();
    var var_1 = -vec2<i32>(-_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(arg_1.b, 2147483647i, 2147483647i), vec3<i32>(arg_3, 12618i, arg_2.e.b)), vec3<i32>(arg_0.e.b, -2147483647i, -12466i)), _wgslsmith_mod_i32(_wgslsmith_mod_i32(arg_3, arg_3) ^ reverseBits(arg_3), -max(u_input.b.x, arg_2.a)));
    global2 = array<vec2<bool>, 4>();
    global1 = array<vec2<i32>, 20>();
    var var_2 = Struct_3(select(!(!select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), true)), !vec3<bool>(true, true, arg_0.e.a.x >= arg_0.e.a.x), !select(vec3<bool>(false, true, false), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), select(true, true, false))), u_input.a.x, ~arg_1.a | var_0.b.wxy);
    return Struct_3(vec3<bool>(true, true, false), ~arg_2.e.a.x, vec3<u32>(_wgslsmith_sub_u32(66201u, countOneBits(1u)), ~(~arg_2.b.x), u_input.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_2(2147483647i, _wgslsmith_mult_vec4_u32(~func_1(vec3<bool>(true, false, false), global2[_wgslsmith_index_u32(56659u, 4u)], u_input.c.zx, vec3<f32>(761f, -749f, 234f)), ~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 49503u, 72084u), vec4<u32>(58243u, u_input.c.x, 46512u, 1u))), 250f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(352f + _wgslsmith_f_op_f32(-2251f + 156f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(670f, 1635f))), (u_input.b.x >> (39302u % 32u)) <= firstTrailingBit(u_input.b.x))), Struct_1(u_input.c, u_input.b.x)), Struct_1(~_wgslsmith_mult_vec3_u32(u_input.c, u_input.c), -877i), func_2(), 2147483647i);
    global1 = array<vec2<i32>, 20>();
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(440f, 1817f, 315f))))) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1419f, 153f, -1160f)))))));
    var var_2 = func_2();
    let var_3 = func_4(func_2(), Struct_1(min(~vec3<u32>(0u, var_0.c.x, 0u), var_0.c) | _wgslsmith_div_vec3_u32(var_0.c, u_input.c), -_wgslsmith_div_i32(1i, u_input.b.x << (1u % 32u))), Struct_2((_wgslsmith_mult_i32(-2147483647i, u_input.b.x) & -1i) | 0i, vec4<u32>(39054u, func_2().b.x, _wgslsmith_div_u32(var_0.b, 116974u) | ~1u, var_2.b.x), 105f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(var_2.d)))), func_2().e), -u_input.b.x);
    var var_4 = var_2.e;
    let var_5 = Struct_1(var_3.c, 16764i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_u32(vec3<u32>(~(5666u & var_4.a.x), firstLeadingBit(~1u), ~80725u | func_2().b.x), func_1(!vec3<bool>(var_0.a.x, true, true), vec2<bool>(false, any(vec4<bool>(false, true, var_0.a.x, false))), vec2<u32>(~var_5.a.x, var_5.a.x), _wgslsmith_div_vec3_f32(vec3<f32>(-1717f, 296f, -1026f), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-986f, var_1.x, var_2.d))))).yxx), ~var_0.c.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-211f, -800f, 171f), vec3<f32>(-1257f, -1280f, 1000f), vec3<bool>(false, var_3.a.x, true)))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1338f, 1131f, -2591f), vec3<f32>(var_2.d, var_1.x, var_1.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-543f, var_1.x, -645f) * vec3<f32>(var_1.x, var_1.x, 848f)))), true || var_0.a.x)) - vec3<f32>(var_1.x, 341f, _wgslsmith_f_op_f32(357f * _wgslsmith_f_op_f32(abs(278f))))), 7715u, var_1);
}

