struct Struct_1 {
    a: bool,
    b: u32,
    c: vec3<i32>,
    d: u32,
}

struct Struct_2 {
    a: f32,
    b: vec2<i32>,
    c: u32,
    d: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(true, 1u, vec3<i32>(-32628i, i32(-2147483648), 1i), 63383u), Struct_1(true, 4294967295u, vec3<i32>(33583i, 12844i, 22435i), 11834u), Struct_1(false, 3266u, vec3<i32>(7825i, 1i, 12478i), 48555u), Struct_1(true, 75602u, vec3<i32>(-1i, i32(-2147483648), -1i), 0u), Struct_1(true, 0u, vec3<i32>(76644i, -1i, 51162i), 1u), Struct_1(true, 115027u, vec3<i32>(-27005i, -293i, -1i), 45180u), Struct_1(false, 1u, vec3<i32>(-8579i, 0i, 2147483647i), 57270u), Struct_1(true, 21396u, vec3<i32>(-43580i, -49901i, -3594i), 0u), Struct_1(true, 0u, vec3<i32>(1i, 0i, -1i), 1u), Struct_1(true, 1u, vec3<i32>(2147483647i, -66367i, i32(-2147483648)), 4294967295u), Struct_1(true, 12161u, vec3<i32>(38674i, -24840i, i32(-2147483648)), 24148u), Struct_1(false, 0u, vec3<i32>(-14831i, -18021i, 2147483647i), 0u));

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> vec2<u32> {
    global0 = array<Struct_1, 12>();
    let var_0 = vec3<u32>(abs(u_input.b) ^ (u_input.b ^ 1u), 4688u, _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(~firstTrailingBit(vec4<u32>(u_input.b, u_input.b, 1u, 47546u)), ~firstLeadingBit(vec4<u32>(48425u, 26868u, 4294967295u, u_input.b))), vec4<u32>(u_input.b, 3635u, ~(~1u), u_input.b)));
    var var_1 = ~32971u;
    let var_2 = ~_wgslsmith_add_vec4_u32(vec4<u32>(select(u_input.b | var_0.x, var_0.x & 66796u, true), var_0.x, max(reverseBits(5991u), 4016u), 33912u), reverseBits(vec4<u32>(u_input.b, var_0.x ^ 12825u, abs(u_input.b), min(4294967295u, 4294967295u))));
    let var_3 = Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-146f * _wgslsmith_f_op_f32(-1000f + 276f)))), _wgslsmith_add_vec2_i32(u_input.a.zx, u_input.a.zy), 27409u, ~u_input.b);
    return min(var_2.wx, var_2.ww);
}

fn func_2(arg_0: Struct_1) -> Struct_2 {
    global0 = array<Struct_1, 12>();
    let var_0 = Struct_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(887f - -100f) * _wgslsmith_f_op_f32(f32(-1f) * -550f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -907f) - _wgslsmith_f_op_f32(1000f * -1070f)), _wgslsmith_f_op_f32(f32(-1f) * -1513f)))), u_input.a.zy, 58337u << (~arg_0.b % 32u), ~0u);
    global0 = array<Struct_1, 12>();
    var var_1 = firstLeadingBit(func_3());
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(31131u, arg_0.b << (~firstLeadingBit(17272u) % 32u)), 12u)];
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) * _wgslsmith_f_op_f32(var_0.a - _wgslsmith_f_op_f32(trunc(1161f))))), var_2.c.zz, ~_wgslsmith_dot_vec3_u32(~(vec3<u32>(4294967295u, u_input.b, 39970u) >> (vec3<u32>(var_2.b, var_0.d, var_1.x) % vec3<u32>(32u))), vec3<u32>(_wgslsmith_div_u32(u_input.b, var_2.d), var_2.b, func_3().x)), reverseBits(0u));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: i32, arg_3: vec4<u32>) -> vec4<u32> {
    let var_0 = Struct_1(true, arg_0.c, select(u_input.a, u_input.a, vec3<bool>(true, true, arg_0.c < 4294967295u)), arg_0.d);
    let var_1 = arg_0.a;
    var var_2 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 * var_1) * -1424f), abs(var_0.c.zy), 1u, _wgslsmith_clamp_u32(~70832u, arg_3.x, func_3().x));
    let var_3 = func_2(Struct_1(var_0.a && var_0.a, var_0.b, var_0.c, _wgslsmith_div_u32(_wgslsmith_sub_u32(34399u, abs(arg_0.d)), 0u)));
    var var_4 = !vec3<bool>(!var_0.a, select(arg_1.x, false, !all(vec4<bool>(var_0.a, false, false, arg_1.x))), var_0.a);
    return ~countOneBits(vec4<u32>(u_input.b, _wgslsmith_dot_vec3_u32(~arg_3.yyy, firstLeadingBit(arg_3.yxx)), ~4294967295u, _wgslsmith_div_u32(~var_0.b, firstLeadingBit(1u))));
}

fn func_5(arg_0: vec4<bool>, arg_1: vec4<u32>, arg_2: Struct_1) -> i32 {
    global0 = array<Struct_1, 12>();
    global0 = array<Struct_1, 12>();
    return abs(_wgslsmith_mult_i32(-_wgslsmith_sub_i32(u_input.a.x, 1i), -2147483647i));
}

fn func_1(arg_0: Struct_1) -> f32 {
    global0 = array<Struct_1, 12>();
    var var_0 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-479f + _wgslsmith_f_op_f32(-864f + _wgslsmith_f_op_f32(1170f * 1122f))), -942f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -258f) - -244f)));
    let var_1 = func_5(!select(select(vec4<bool>(arg_0.a, false, arg_0.a, arg_0.a), vec4<bool>(false, arg_0.a, arg_0.a, arg_0.a), vec4<bool>(false, arg_0.a, arg_0.a, false)), select(select(vec4<bool>(arg_0.a, arg_0.a, arg_0.a, true), vec4<bool>(true, arg_0.a, false, arg_0.a), vec4<bool>(arg_0.a, arg_0.a, false, true)), !vec4<bool>(true, arg_0.a, false, true), !vec4<bool>(arg_0.a, true, arg_0.a, false)), !vec4<bool>(true, arg_0.a, false, false)), func_4(func_2(Struct_1(arg_0.a, ~u_input.b, firstLeadingBit(arg_0.c), 1u | arg_0.b)), vec4<bool>(arg_0.a, (u_input.b >> (arg_0.b % 32u)) > 4294967295u, false, arg_0.a), -max(arg_0.c.x, _wgslsmith_div_i32(u_input.a.x, -24248i)), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 1u, 1u, u_input.b) ^ countOneBits(vec4<u32>(0u, 4294967295u, u_input.b, 1u)), vec4<u32>(~75338u, arg_0.d, ~1u, 39798u >> (arg_0.d % 32u)))), Struct_1(arg_0.a, func_4(Struct_2(var_0.x, u_input.a.zx, func_4(Struct_2(-1044f, vec2<i32>(u_input.a.x, u_input.a.x), 14567u, 0u), vec4<bool>(arg_0.a, false, arg_0.a, arg_0.a), 4802i, vec4<u32>(3539u, 1u, arg_0.d, u_input.b)).x, _wgslsmith_clamp_u32(0u, 4294967295u, 4294967295u)), select(select(vec4<bool>(true, arg_0.a, false, arg_0.a), vec4<bool>(arg_0.a, arg_0.a, arg_0.a, arg_0.a), true), !vec4<bool>(arg_0.a, arg_0.a, true, arg_0.a), false), u_input.a.x, func_4(func_2(Struct_1(true, arg_0.b, vec3<i32>(69653i, 14347i, 0i), 1u)), !vec4<bool>(true, false, arg_0.a, arg_0.a), func_2(Struct_1(true, u_input.b, arg_0.c, arg_0.d)).b.x, _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, u_input.b, 22039u, u_input.b), vec4<u32>(u_input.b, 0u, 44339u, 25269u)))).x, vec3<i32>(arg_0.c.x, 1i, ~u_input.c | -7289i), 9509u));
    var var_2 = var_1;
    let var_3 = max(vec3<u32>(367u, arg_0.d, func_2(arg_0).c & ~min(13295u, 1u)), _wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(~_wgslsmith_add_vec3_u32(vec3<u32>(25529u, 1u, 40989u), vec3<u32>(4294967295u, arg_0.d, 47790u)), ~max(vec3<u32>(13540u, u_input.b, u_input.b), vec3<u32>(arg_0.b, 28252u, 0u))), reverseBits(func_4(Struct_2(var_0.x, vec2<i32>(-1i, u_input.a.x), 1u, u_input.b), vec4<bool>(arg_0.a, true, arg_0.a, false), _wgslsmith_mult_i32(arg_0.c.x, arg_0.c.x), vec4<u32>(29874u, u_input.b, u_input.b, arg_0.d)).zwx)));
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.x * var_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-351f, _wgslsmith_f_op_f32(func_1(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, 13100u), 12u)])))))));
    let var_1 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(trunc(var_0.x)), 2018f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))))), vec3<f32>(var_0.x, 755f, func_2(global0[_wgslsmith_index_u32(func_2(global0[_wgslsmith_index_u32(u_input.b, 12u)]).c, 12u)]).a)));
    var var_2 = ~vec2<u32>(~(~_wgslsmith_mod_u32(10937u, 47711u)), ~(abs(0u) << (u_input.b % 32u)));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.x)))) * 536f) * _wgslsmith_f_op_f32(-var_0.x));
    var_2 = vec2<u32>(u_input.b, var_2.x);
    var_2 = reverseBits(~abs(vec2<u32>(12608u, var_2.x)));
    let var_4 = _wgslsmith_f_op_f32(trunc(var_1.x));
    global0 = array<Struct_1, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(var_1.xy - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3, var_4))))), ~_wgslsmith_add_u32(func_2(global0[_wgslsmith_index_u32(var_2.x, 12u)]).d | 26994u, 1u), -1672f);
}

