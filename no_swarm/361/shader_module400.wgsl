struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: f32,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: f32,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 15913u;

var<private> global1: vec4<bool> = vec4<bool>(true, true, false, false);

var<private> global2: u32 = 4294967295u;

var<private> global3: array<vec4<bool>, 2> = array<vec4<bool>, 2>(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true));

var<private> global4: array<Struct_1, 10>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<f32>) -> vec3<i32> {
    let var_0 = Struct_2(global4[_wgslsmith_index_u32(countOneBits(4294967295u), 10u)], vec3<f32>(723f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1170f)), _wgslsmith_f_op_f32(max(arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(321f + -489f) - _wgslsmith_div_f32(arg_0.x, -890f))))), arg_0.x, global4[_wgslsmith_index_u32(1u, 10u)], ~countOneBits(u_input.a.x));
    let var_1 = u_input.c | ~(_wgslsmith_mod_u32(u_input.b, 14954u) << (max(_wgslsmith_sub_u32(1u, 0u), u_input.b) % 32u));
    let var_2 = ~vec4<u32>(_wgslsmith_add_u32(var_1, ~(~u_input.b)), ~_wgslsmith_add_u32(32646u >> (var_1 % 32u), ~var_1), _wgslsmith_dot_vec2_u32(min(_wgslsmith_clamp_vec2_u32(vec2<u32>(41707u, 4294967295u), vec2<u32>(13052u, 24846u), vec2<u32>(59221u, u_input.b)), _wgslsmith_div_vec2_u32(vec2<u32>(26694u, u_input.b), vec2<u32>(0u, var_1))), reverseBits(vec2<u32>(var_1, var_1))), ~1u);
    let var_3 = var_0;
    let var_4 = vec2<i32>(i32(-1i) * -_wgslsmith_mod_i32(countOneBits(var_3.d.e.x), ~2147483647i), 0i >> (u_input.b % 32u));
    return _wgslsmith_mult_vec3_i32(max(var_3.a.e.wxx, ~var_3.d.d.zwy), var_3.d.d.wzy);
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_2(Struct_1(false, _wgslsmith_mult_vec3_i32(min(func_3(vec4<f32>(-536f, -312f, 1000f, 736f)), vec3<i32>(u_input.a.x, 46109i, u_input.a.x)), _wgslsmith_div_vec3_i32(vec3<i32>(14605i, 0i, 7948i), -vec3<i32>(1i, u_input.a.x, u_input.a.x))), _wgslsmith_f_op_f32(1022f - -278f), vec4<i32>(u_input.a.x, min(_wgslsmith_mult_i32(37585i, u_input.a.x), 1i), -2147483647i, _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-48412i, 1i, -7972i), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), countOneBits(vec3<i32>(u_input.a.x, 1i, -5390i)))), ~select(countOneBits(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), countOneBits(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), global1.x || global1.x)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-701f)))), 881f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-190f))))))), _wgslsmith_f_op_f32(min(-450f, _wgslsmith_f_op_f32(min(779f, -1085f)))), global4[_wgslsmith_index_u32(firstLeadingBit(0u), 10u)], firstTrailingBit(max(u_input.a.x ^ u_input.a.x, ~1i) >> (max(1u, ~1u) % 32u)));
    let var_1 = Struct_1(var_0.d.a, vec3<i32>(u_input.a.x, ~(-abs(-14063i)), 49331i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1157f, -480f)))))), -abs(firstLeadingBit(firstLeadingBit(vec4<i32>(var_0.a.d.x, -24760i, 28484i, 1i)))), ~var_0.d.e);
    var var_2 = vec2<u32>(1u, max(_wgslsmith_mod_u32(max(u_input.c, u_input.b), ~u_input.b), 68445u)) << (_wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.c, u_input.c)) << (vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u)), vec2<u32>(17179u, reverseBits(22281u))), vec2<u32>(u_input.b, 34904u)) % vec2<u32>(32u));
    var var_3 = firstTrailingBit(~_wgslsmith_sub_u32(~(u_input.c & 14092u), 0u));
    var_2 = _wgslsmith_sub_vec2_u32(select(_wgslsmith_add_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(29735u, u_input.c), vec2<u32>(18750u, var_2.x), vec2<u32>(u_input.c, 86688u)) & max(vec2<u32>(u_input.b, 0u), vec2<u32>(7792u, u_input.c)), vec2<u32>(var_2.x, u_input.b) ^ vec2<u32>(u_input.c, u_input.b)), abs(vec2<u32>(u_input.c, var_2.x) | vec2<u32>(var_2.x, var_2.x)) & vec2<u32>(21285u, 1u >> (u_input.b % 32u)), global1.yx), vec2<u32>(~countOneBits(~var_2.x), _wgslsmith_dot_vec3_u32(firstTrailingBit(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, u_input.b, 8946u), vec3<u32>(1u, var_2.x, 1u))), _wgslsmith_add_vec3_u32(vec3<u32>(45843u, 15364u, 4294967295u), vec3<u32>(0u, 37651u, 0u)))));
    return var_0;
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_2) -> vec2<u32> {
    let var_0 = !(!(!func_2().d.a));
    global4 = array<Struct_1, 10>();
    global3 = array<vec4<bool>, 2>();
    global0 = 1u;
    var var_1 = func_2();
    return _wgslsmith_mod_vec2_u32(countOneBits(vec2<u32>(u_input.b, _wgslsmith_sub_u32(~u_input.b, u_input.b))), vec2<u32>(96027u, ~u_input.c));
}

fn func_5(arg_0: vec3<u32>, arg_1: vec2<u32>, arg_2: bool) -> u32 {
    let var_0 = global1.x;
    global4 = array<Struct_1, 10>();
    let var_1 = ~min(u_input.c, reverseBits(~0u));
    let var_2 = ~abs(select(arg_1, select(vec2<u32>(var_1, 0u), ~arg_1, !vec2<bool>(global1.x, arg_2)), (arg_2 != true) | arg_2));
    let var_3 = true;
    return ~(~u_input.b);
}

fn func_1(arg_0: u32, arg_1: vec2<f32>) -> Struct_1 {
    global3 = array<vec4<bool>, 2>();
    var var_0 = global4[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_mod_u32(_wgslsmith_add_u32(abs(~arg_0), u_input.c), 4294967295u), ~(~(~34056u))), 10u)];
    global0 = _wgslsmith_dot_vec4_u32(vec4<u32>(select(_wgslsmith_mult_u32(59497u, 16764u), arg_0, var_0.a), ~(~u_input.b), min(5703u, _wgslsmith_div_u32(_wgslsmith_mod_u32(6713u, 4294967295u), _wgslsmith_sub_u32(86225u, 0u))), _wgslsmith_mult_u32(10358u, ~countOneBits(u_input.c))), vec4<u32>(u_input.c, 7130u, min(~max(u_input.b, 2375u), ~select(u_input.c, 81428u, global1.x)), func_5(_wgslsmith_mult_vec3_u32(vec3<u32>(26320u, arg_0, 11724u) << (vec3<u32>(u_input.c, u_input.b, u_input.b) % vec3<u32>(32u)), vec3<u32>(5271u, 26745u, u_input.b)), func_4(select(vec2<bool>(false, false), vec2<bool>(true, false), var_0.a), func_2()), var_0.a)));
    var var_1 = func_2();
    var var_2 = Struct_1(arg_1.x >= arg_1.x, var_1.d.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-555f - _wgslsmith_f_op_f32(sign(var_1.d.c))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.c))))), abs(abs(abs(max(vec4<i32>(var_0.e.x, 2147483647i, u_input.a.x, var_0.b.x), var_0.d)))), ~vec4<i32>(var_0.b.x, u_input.a.x, var_1.e, 1i) >> (vec4<u32>(arg_0, reverseBits(0u << (u_input.c % 32u)), ~14243u << (~u_input.b % 32u), select(~1u, u_input.b, var_0.a)) % vec4<u32>(32u)));
    return Struct_1(false, _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, ~(-2147483647i), _wgslsmith_mult_i32(var_1.a.d.x, _wgslsmith_sub_i32(var_2.b.x, 10289i))), -var_2.e.zxw), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -127f) - arg_1.x), var_1.a.e, abs(~(-(vec4<i32>(var_1.d.b.x, var_0.d.x, -2147483647i, u_input.a.x) ^ var_2.d))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_1(36415u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1110f, 1000f), vec2<f32>(-722f, -2229f), global1.zy)), vec2<f32>(1394f, -673f), vec2<bool>(true, true))) - vec2<f32>(_wgslsmith_f_op_f32(min(-923f, -232f)), _wgslsmith_f_op_f32(-1159f + -120f)))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-396f, -1000f, 2104f)) - vec3<f32>(1f, 1f, 1f)) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-871f, -767f, -768f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(301f))) - _wgslsmith_f_op_f32(step(-2339f, _wgslsmith_f_op_f32(1391f - -847f))))), Struct_1(global1.x, ~_wgslsmith_add_vec3_i32(select(vec3<i32>(u_input.a.x, 0i, u_input.a.x), vec3<i32>(-9611i, u_input.a.x, 41313i), global1.x), vec3<i32>(1i, u_input.a.x, -21811i)), -2113f, -min(-vec4<i32>(u_input.a.x, u_input.a.x, 66057i, -1i), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 7763i) | vec4<i32>(u_input.a.x, u_input.a.x, 0i, -43691i)), -reverseBits(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, -1i, u_input.a.x, 7079i), vec4<i32>(u_input.a.x, -2147483647i, -2147483647i, 2147483647i)))), i32(-1i) * -23143i);
    global4 = array<Struct_1, 10>();
    let var_1 = 0u;
    global3 = array<vec4<bool>, 2>();
    global2 = 0u;
    let var_2 = true;
    global2 = 30714u;
    var var_3 = ~(~(_wgslsmith_sub_vec2_u32(vec2<u32>(26149u, var_1), vec2<u32>(4294967295u, 46777u)) & ~vec2<u32>(u_input.b, 93999u))) ^ _wgslsmith_clamp_vec2_u32(~(firstLeadingBit(vec2<u32>(4294967295u, var_1)) & vec2<u32>(var_1, 0u)), abs(firstLeadingBit(vec2<u32>(var_1, 39286u))), ~vec2<u32>(~14548u, u_input.b));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(1184f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1359f)) + var_0.b.x), 240f, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.c))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(var_0.b.x * -877f))), _wgslsmith_f_op_f32(-var_0.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.c), _wgslsmith_f_op_f32(-var_0.c)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -745f) * 795f)));
}

