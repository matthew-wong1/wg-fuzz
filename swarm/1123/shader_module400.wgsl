struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: vec3<f32>,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(486f, -549f, -779f, 962f);

var<private> global1: array<vec3<u32>, 4>;

var<private> global2: array<u32, 28> = array<u32, 28>(1u, 27426u, 0u, 25024u, 27247u, 58373u, 45221u, 1u, 1u, 14303u, 14573u, 38269u, 23463u, 73254u, 43405u, 47168u, 0u, 0u, 4294967295u, 4294967295u, 4294967295u, 1u, 4294967295u, 7115u, 4294967295u, 24689u, 36449u, 119810u);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: vec4<bool>) -> Struct_1 {
    let var_0 = ~select(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(min(countOneBits(~1u), 0u), 28u)], 4u)], ~(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 28u)], 4u)] >> (vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(88070u, 28u)], 28u)], 0u, 8497u) % vec3<u32>(32u))) << (vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 28u)], 28u)] ^ 1690u, ~4294967295u, global2[_wgslsmith_index_u32(30187u, 28u)] >> (global2[_wgslsmith_index_u32(1u, 28u)] % 32u)) % vec3<u32>(32u)), vec3<bool>(true, true, false));
    var var_1 = u_input.a.x;
    var var_2 = Struct_1(global0.x, vec2<u32>(var_0.x, 5564u), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(global0.x, 710f)), _wgslsmith_f_op_f32(global0.x * global0.x), false)), _wgslsmith_f_op_f32(abs(-1000f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-306f + global0.x)))))), var_0.x < ~var_0.x, true);
    let var_3 = Struct_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1602f), ~(~var_2.b), vec3<f32>(_wgslsmith_f_op_f32(-408f * var_2.a), 140f, _wgslsmith_f_op_f32(-global0.x)), var_2.d, false), _wgslsmith_mult_i32(-u_input.a.x, -u_input.a.x), ~(~var_0.x) & 21904u);
    var var_4 = var_3;
    return var_4.a;
}

fn func_3() -> vec3<bool> {
    let var_0 = global2[_wgslsmith_index_u32(reverseBits(global2[_wgslsmith_index_u32(1u, 28u)]), 28u)];
    let var_1 = -1i >> (firstTrailingBit(func_2(vec4<bool>(u_input.a.x >= 23201i, false, true, all(vec2<bool>(false, true)))).b.x) % 32u);
    let var_2 = ~(~(~select(vec4<u32>(42240u, 0u, global2[_wgslsmith_index_u32(62905u, 28u)], 5364u), vec4<u32>(25290u, 18539u, 10824u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 28u)], 28u)]), vec4<bool>(true, true, false, true))) | vec4<u32>(_wgslsmith_add_u32(global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(12891u, 28u)], 28u)], 28u)], global2[_wgslsmith_index_u32(~28497u, 28u)]), firstLeadingBit(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(9295u, 28u)], 28u)], 28u)]), global2[_wgslsmith_index_u32(func_2(vec4<bool>(true, true, true, true)).b.x, 28u)], _wgslsmith_dot_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(0u, 28u)], 14118u, 7073u, 1u), ~vec4<u32>(global2[_wgslsmith_index_u32(44808u, 28u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 28u)], 28u)], 66223u, 7244u))));
    global0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-522f + -663f), -560f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -282f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - 479f) * global0.x)) + _wgslsmith_f_op_f32(-540f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global0.x)) - global0.x))), -539f, 637f);
    let var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global0.x)) * _wgslsmith_f_op_f32(min(global0.x, global0.x))))), -1336f, global0.x, 629f) * vec4<f32>(-109f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.x))), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(global0.x - -936f)))));
    return vec3<bool>(!any(select(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true)), vec4<bool>(true, true, true, true), true)), true, true);
}

fn func_1(arg_0: vec3<bool>) -> Struct_1 {
    let var_0 = func_2(select(!(!(!vec4<bool>(arg_0.x, arg_0.x, true, true))), !vec4<bool>(arg_0.x, false, all(arg_0.xz), all(vec4<bool>(true, true, true, arg_0.x))), vec4<bool>(select(all(arg_0), arg_0.x, !arg_0.x), all(arg_0) & !arg_0.x, arg_0.x, !(arg_0.x && arg_0.x))));
    let var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1426f * _wgslsmith_div_f32(var_0.a, -1173f))));
    global2 = array<u32, 28>();
    global1 = array<vec3<u32>, 4>();
    let var_2 = ~var_0.b.x;
    return Struct_1(-1834f, select(var_0.b, var_0.b << (var_0.b % vec2<u32>(32u)), var_0.d), _wgslsmith_f_op_vec3_f32(select(global0.wxw, var_0.c, !select(!arg_0, func_3(), func_3()))), any(select(vec4<bool>(true, var_0.e != var_0.d, var_0.e && true, all(vec3<bool>(arg_0.x, true, true))), vec4<bool>(var_0.e || true, arg_0.x, arg_0.x && var_0.d, true), select(vec4<bool>(var_0.d, var_0.d, var_0.e, false), vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(true, true, true, true)))), func_2(vec4<bool>(all(vec2<bool>(true, arg_0.x)), true, !var_0.e, firstTrailingBit(54441u) > _wgslsmith_dot_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(67526u, 28u)], 64924u, var_0.b.x), vec3<u32>(global2[_wgslsmith_index_u32(1u, 28u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 28u)], 28u)], var_0.b.x)))).e);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>) -> Struct_1 {
    var var_0 = vec4<u32>(~_wgslsmith_dot_vec2_u32(~(~vec2<u32>(4294967295u, arg_1.x)), max(abs(arg_1.yz), _wgslsmith_sub_vec2_u32(arg_0.b, vec2<u32>(8935u, 3982u)))), _wgslsmith_dot_vec2_u32(arg_0.b, abs(_wgslsmith_add_vec2_u32(min(vec2<u32>(global2[_wgslsmith_index_u32(1u, 28u)], 1u), vec2<u32>(global2[_wgslsmith_index_u32(4294967295u, 28u)], arg_0.b.x)), max(vec2<u32>(arg_1.x, 28046u), arg_0.b)))), 6333u, _wgslsmith_mod_u32(arg_0.b.x, global2[_wgslsmith_index_u32(max(1u, arg_1.x), 28u)]));
    var var_1 = 0u;
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-1674f - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(global0.x))))), vec2<u32>(~arg_0.b.x, global2[_wgslsmith_index_u32(4294967295u, 28u)]), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(step(330f, arg_0.c.x)), _wgslsmith_div_f32(arg_0.a, arg_0.c.x)), func_1(!vec3<bool>(false, arg_0.d, true)).c)), arg_0.d, true), abs(0i), _wgslsmith_clamp_u32(select(countOneBits(19098u ^ arg_1.x), arg_0.b.x, _wgslsmith_f_op_f32(max(802f, arg_0.c.x)) != func_1(vec3<bool>(false, arg_0.e, false)).a), abs(6154u), arg_1.x));
    var_0 = vec4<u32>(56509u, 79552u, ~(~arg_0.b.x), var_0.x);
    var var_3 = !vec2<bool>(var_2.a.e, arg_0.d);
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a.c.x) - _wgslsmith_f_op_f32(min(-396f, _wgslsmith_f_op_f32(var_2.a.c.x + global0.x))))), reverseBits(select(_wgslsmith_add_vec2_u32(vec2<u32>(arg_0.b.x, 4294967295u), var_0.yx), vec2<u32>(abs(arg_1.x), 0u), true)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.a.c.x - -1000f) + -553f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(1000f))))))), !(~_wgslsmith_mult_u32(42567u, var_0.x) <= 4294967295u), arg_0.d);
}

fn func_5(arg_0: Struct_1, arg_1: f32) -> f32 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * _wgslsmith_f_op_f32(min(747f, -498f))))), vec2<u32>(_wgslsmith_sub_u32(0u, 0u) >> (~arg_0.b.x % 32u), _wgslsmith_mult_u32(_wgslsmith_add_u32(global2[_wgslsmith_index_u32(arg_0.b.x, 28u)], 3575u), 0u)), arg_0.c, true, func_4(arg_0, ~global1[_wgslsmith_index_u32(arg_0.b.x, 4u)]).d), 1i, 1u);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-862f * 480f), ~select(_wgslsmith_mult_vec2_u32(vec2<u32>(var_0.c, 45944u), firstLeadingBit(vec2<u32>(var_0.c, var_0.a.b.x))), vec2<u32>(_wgslsmith_dot_vec3_u32(global1[_wgslsmith_index_u32(25840u, 4u)], vec3<u32>(var_0.a.b.x, var_0.c, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_0.a.b.x, 28u)], 28u)])), 0u), vec2<bool>(true | var_0.a.e, arg_0.d)), global0.zwz, arg_0.d, true);
    let var_2 = _wgslsmith_add_vec4_i32((~countOneBits(vec4<i32>(u_input.a.x, -47796i, -32931i, -1i)) >> (vec4<u32>(var_0.a.b.x, _wgslsmith_mod_u32(0u, 4294967295u), ~var_1.b.x, 4294967295u) % vec4<u32>(32u))) & vec4<i32>(-28311i, firstLeadingBit(var_0.b | u_input.a.x), 2564i, var_0.b), ~(-_wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, -2147483647i, var_0.b, -32028i), vec4<i32>(10293i, 0i, 4147i, var_0.b)), vec4<i32>(28183i, 2147483647i, u_input.a.x, var_0.b))));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1386f)) * func_2(vec4<bool>(all(func_3()), all(select(vec3<bool>(var_0.a.d, true, false), vec3<bool>(arg_0.d, true, true), false)), all(func_3()), true)).c.x);
    let var_4 = func_2(vec4<bool>(any(select(vec4<bool>(true, var_1.e, false, true), !vec4<bool>(var_0.a.e, var_0.a.e, var_1.d, arg_0.d), vec4<bool>(var_1.d, arg_0.e, var_1.d, false))), !var_1.e, func_4(var_0.a, vec3<u32>(77972u, ~5696u, global2[_wgslsmith_index_u32(~0u, 28u)])).e, !(~var_2.x >= abs(1i)))).e;
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-697f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -31552i;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(758f * global0.x) + 1000f) * _wgslsmith_f_op_f32(f32(-1f) * -1321f))), firstLeadingBit(min(reverseBits(vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(35959u, 28u)], 28u)], 0u)), vec2<u32>(global2[_wgslsmith_index_u32(702u, 28u)] | 105207u, ~1u))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1510f)), 272f, global0.x), all(!vec3<bool>(true, any(vec2<bool>(true, true)), true)), true);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(func_5(func_4(func_1(vec3<bool>(var_1.d, true, var_1.d)), vec3<u32>(min(var_1.b.x, 28217u), global2[_wgslsmith_index_u32(~31115u, 28u)], global2[_wgslsmith_index_u32(reverseBits(global2[_wgslsmith_index_u32(3605u, 28u)]), 28u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.x)))), select(var_1.b, vec2<u32>(var_1.b.x, _wgslsmith_add_u32(global2[_wgslsmith_index_u32(~var_1.b.x, 28u)], firstTrailingBit(118644u))), !select(!vec2<bool>(var_1.e, false), vec2<bool>(var_1.e, false), true)), var_1.c, all(!(!(!vec4<bool>(var_1.d, var_1.d, false, var_1.d)))), false);
    global0 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) * -1267f)), 1185f), func_4(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1206f), select(var_2.b, select(var_1.b, vec2<u32>(global2[_wgslsmith_index_u32(86100u, 28u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 28u)], 28u)]), false), all(vec3<bool>(var_1.d, var_2.d, var_2.e))), vec3<f32>(_wgslsmith_f_op_f32(-1438f - global0.x), _wgslsmith_f_op_f32(1000f - 343f), _wgslsmith_f_op_f32(trunc(global0.x))), var_2.e, var_1.e), _wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(var_1.b.x, 22398u, var_2.b.x), _wgslsmith_mod_vec3_u32(vec3<u32>(18388u, var_1.b.x, 46381u), vec3<u32>(4294967295u, 33469u, global2[_wgslsmith_index_u32(4294967295u, 28u)]))), ~vec3<u32>(var_1.b.x, var_2.b.x, var_2.b.x) << (~global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 28u)], 4u)] % vec3<u32>(32u)))).a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(291f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-643f, _wgslsmith_f_op_f32(-global0.x), false)))));
    var var_3 = -1i;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-249f, 1075f, -535f, var_2.c.x))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(149f, -709f, var_1.c.x, 242f) - vec4<f32>(-1368f, var_2.a, -240f, var_1.a))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(176f, -470f, -547f, -503f)))), _wgslsmith_div_vec4_f32(vec4<f32>(-234f, var_2.a, _wgslsmith_f_op_f32(min(var_2.a, 1658f)), -1388f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1130f, 1186f, global0.x, var_1.a) + vec4<f32>(-171f, var_1.c.x, 2202f, global0.x)))), true)), ~(-countOneBits(vec2<i32>(u_input.a.x, u_input.a.x))) & -u_input.a);
}

