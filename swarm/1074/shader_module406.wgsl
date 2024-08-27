struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<f32>,
    d: vec3<u32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(vec2<bool>(true, false), 19117u, vec3<i32>(-1i, 19179i, -16530i)), Struct_1(vec2<bool>(true, false), 1u, vec3<i32>(i32(-2147483648), 61833i, -50828i)), Struct_1(vec2<bool>(true, false), 99461u, vec3<i32>(24493i, i32(-2147483648), -1i)), Struct_1(vec2<bool>(false, true), 68435u, vec3<i32>(-4160i, 11915i, 0i)), Struct_1(vec2<bool>(true, true), 1u, vec3<i32>(-1i, 24260i, 2147483647i)), Struct_1(vec2<bool>(false, true), 1u, vec3<i32>(i32(-2147483648), i32(-2147483648), 16990i)), Struct_1(vec2<bool>(true, false), 8750u, vec3<i32>(61112i, 10834i, -1i)), Struct_1(vec2<bool>(true, false), 0u, vec3<i32>(i32(-2147483648), 21596i, 12836i)), Struct_1(vec2<bool>(true, false), 0u, vec3<i32>(39237i, -43879i, 1i)), Struct_1(vec2<bool>(true, false), 14028u, vec3<i32>(0i, 1i, 20107i)), Struct_1(vec2<bool>(true, false), 38353u, vec3<i32>(1i, i32(-2147483648), 1i)), Struct_1(vec2<bool>(true, true), 0u, vec3<i32>(5465i, 47952i, 0i)), Struct_1(vec2<bool>(false, false), 1u, vec3<i32>(2147483647i, 2147483647i, 1714i)), Struct_1(vec2<bool>(false, false), 4294967295u, vec3<i32>(39057i, 1i, 20332i)), Struct_1(vec2<bool>(true, false), 1u, vec3<i32>(-16786i, -1i, -20533i)), Struct_1(vec2<bool>(false, false), 19167u, vec3<i32>(0i, -49977i, 2900i)), Struct_1(vec2<bool>(true, true), 0u, vec3<i32>(27982i, -1i, 1i)), Struct_1(vec2<bool>(true, true), 43423u, vec3<i32>(59860i, 2147483647i, 0i)));

var<private> global1: vec4<u32>;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
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

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    global1 = vec4<u32>(global1.x, ~(~global1.x), 1u, countOneBits(global1.x));
    let var_0 = all(vec2<bool>(select(true, true, all(vec4<bool>(false, false, true, true))), all(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true))))) || (_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(921f)), _wgslsmith_f_op_f32(sign(-336f)))))) == _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(787f, 1149f)), _wgslsmith_f_op_f32(abs(1697f))), _wgslsmith_f_op_f32(f32(-1f) * -887f))));
    let var_1 = Struct_1(select(!(!select(vec2<bool>(true, true), vec2<bool>(false, var_0), vec2<bool>(true, false))), select(vec2<bool>(true, true), !(!vec2<bool>(var_0, var_0)), true), vec2<bool>(any(vec3<bool>(false, var_0, false)), (u_input.a.x | -1i) > -4605i)), 1u, min(vec3<i32>(_wgslsmith_clamp_i32(-48555i << (1u % 32u), firstTrailingBit(-2147483647i), -3768i), _wgslsmith_sub_i32(0i, u_input.a.x) ^ 1i, u_input.a.x), reverseBits(vec3<i32>(u_input.a.x, 9131i, u_input.a.x) ^ vec3<i32>(25107i, u_input.a.x, u_input.a.x))));
    global0 = array<Struct_1, 18>();
    let var_2 = global0[_wgslsmith_index_u32(~0u, 18u)];
    return _wgslsmith_dot_vec2_u32(global1.zx, vec2<u32>(1u, 1u));
}

fn func_2() -> vec4<f32> {
    global1 = vec4<u32>(1656u, global1.x, (_wgslsmith_mod_u32(global1.x, 1u) ^ max(4294967295u, _wgslsmith_clamp_u32(0u, 1u, global1.x))) ^ 1u, _wgslsmith_clamp_u32(4294967295u, countOneBits(func_3()), 1u));
    global1 = firstTrailingBit(~(~_wgslsmith_sub_vec4_u32(vec4<u32>(global1.x, global1.x, 0u, 1u), vec4<u32>(0u, global1.x, global1.x, 53815u) & vec4<u32>(0u, global1.x, global1.x, global1.x))));
    let var_0 = Struct_1(vec2<bool>(true, true), _wgslsmith_dot_vec4_u32(~(firstLeadingBit(vec4<u32>(global1.x, global1.x, global1.x, 15199u)) ^ abs(vec4<u32>(global1.x, global1.x, 4294967295u, global1.x))), _wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(abs(vec4<u32>(global1.x, 1u, 0u, global1.x)), vec4<u32>(45772u, global1.x, global1.x, global1.x)), ~vec4<u32>(20199u, 1u, 1u, 0u), ~(~vec4<u32>(1u, 4294967295u, global1.x, global1.x)))), ~vec3<i32>(u_input.a.x, -6442i, 2147483647i) & vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, 0i), vec3<i32>(u_input.a.x, -2147483647i, u_input.a.x)), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), u_input.a.x), ~_wgslsmith_sub_i32(-22498i, -8304i), u_input.a.x));
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.b, ~(~(var_0.b ^ var_0.b)), ~var_0.b), _wgslsmith_div_vec3_u32(vec3<u32>(abs(~var_0.b), 44081u, select(global1.x, abs(0u), var_0.a.x && var_0.a.x)), ~(~(~vec3<u32>(1u, 45978u, 1u))))), 18u)];
    var var_2 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -468f), _wgslsmith_f_op_f32(ceil(2121f)), var_1.a.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-199f + -168f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2100f + 1000f) + _wgslsmith_f_op_f32(-788f * 1243f)))), _wgslsmith_f_op_f32(step(-1010f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(804f + -911f)))))), 1159f, _wgslsmith_f_op_f32(f32(-1f) * -317f));
    return vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(var_2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-437f)) - 1000f))), _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x))))), -112f, _wgslsmith_f_op_f32(floor(1000f)));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: bool) -> Struct_1 {
    var var_0 = 1u <= _wgslsmith_sub_u32(~global1.x, arg_1.b);
    var_0 = false;
    return arg_1;
}

fn func_1() -> vec3<i32> {
    let var_0 = func_4(_wgslsmith_f_op_vec4_f32(func_2()), global0[_wgslsmith_index_u32(~(~firstLeadingBit(global1.x)), 18u)], any(vec4<bool>(true, true, select(true, all(vec4<bool>(false, true, true, false)), false), all(vec3<bool>(true, true, true)))));
    var var_1 = func_4(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(1310f, 589f, -258f, -1222f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1376f, 1484f, -1449f, -445f))))))), func_4(vec4<f32>(-338f, -1567f, -286f, 1000f), func_4(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1939f, -456f, 1097f, 1368f)), vec4<f32>(1164f, -285f, 560f, 1000f), vec4<bool>(false, true, false, false))), func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(411f, -2974f, 1000f, 2258f) * vec4<f32>(1000f, 631f, 112f, -1000f)), var_0, false), all(var_0.a) & !var_0.a.x), true), !((true != any(vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, false))) && !(!var_0.a.x)));
    var var_2 = Struct_1(!var_1.a, ~var_1.b, vec3<i32>(var_0.c.x, ~var_1.c.x, var_0.c.x) & vec3<i32>(-(var_1.c.x | 24606i), var_1.c.x, countOneBits(u_input.a.x) ^ -2147483647i));
    let var_3 = select(!select(vec3<bool>(var_2.c.x >= -17739i, var_2.a.x, var_2.b > 87135u), !(!vec3<bool>(true, false, var_0.a.x)), false), !select(!vec3<bool>(false, var_2.a.x, false), !(!vec3<bool>(var_1.a.x, var_2.a.x, true)), var_1.a.x), select(!select(vec3<bool>(false, var_2.a.x, var_2.a.x), vec3<bool>(var_0.a.x, true, false), vec3<bool>(var_2.a.x, true, var_2.a.x)), !(!select(vec3<bool>(var_1.a.x, true, true), vec3<bool>(true, var_1.a.x, false), var_2.a.x)), true));
    let var_4 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec4_f32(func_2()).xw));
    return ~vec3<i32>(~_wgslsmith_mod_i32(16446i, var_1.c.x), 2147483647i, max(max(_wgslsmith_mult_i32(0i, 33224i), -var_0.c.x), _wgslsmith_add_i32(2147483647i, 0i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !all(!select(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true)), vec3<bool>(false, true, false), true));
    var var_1 = global0[_wgslsmith_index_u32(abs(abs((1u << (global1.x % 32u)) >> (countOneBits(~26953u) % 32u))), 18u)];
    var var_2 = firstTrailingBit(firstTrailingBit(var_1.c.x) ^ -1i);
    var_2 = -850i;
    var var_3 = Struct_1(var_1.a, var_1.b, abs(_wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(var_1.c | var_1.c, firstTrailingBit(var_1.c)), _wgslsmith_sub_vec3_i32(var_1.c, vec3<i32>(var_1.c.x, 35508i, 8764i)), var_1.c)));
    var var_4 = _wgslsmith_add_vec3_i32(vec3<i32>(var_1.c.x, select(firstTrailingBit(select(3751i, 0i, true)), select(-1i, var_1.c.x, false), !var_1.a.x), 1i), func_1());
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, -12367i, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(457f, 373f, 1077f), vec3<f32>(-602f, 1424f, 1396f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-688f, 342f, 390f))))), vec3<f32>(1f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-1384f, -255f)))), 875f)), select(~(global1.yzw & global1.yxy), global1.yyz, var_1.a.x), _wgslsmith_mod_vec2_u32(~firstLeadingBit(reverseBits(global1.wx)), ~global1.yx << (global1.ww % vec2<u32>(32u))));
}

