struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 13>;

var<private> global1: u32 = 42880u;

var<private> global2: array<Struct_1, 32>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: f32) -> u32 {
    global2 = array<Struct_1, 32>();
    let var_0 = global2[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.d, _wgslsmith_clamp_u32(1u, _wgslsmith_mod_u32(~_wgslsmith_add_u32(4294967295u, 0u), 39441u), 26071u)), 32u)];
    let var_1 = Struct_1(_wgslsmith_div_u32(var_0.a, var_0.a));
    var var_2 = !(!vec3<bool>(any(vec3<bool>(true, true, true)), abs(u_input.d) >= var_0.a, any(select(vec2<bool>(true, true), vec2<bool>(false, true), false))));
    var var_3 = -(min(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), abs(~vec3<i32>(u_input.b.x, u_input.e, 2147483647i))) | vec3<i32>(0i, u_input.b.x, reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, 0i, u_input.e), vec3<i32>(u_input.b.x, u_input.e, u_input.e)))));
    return var_0.a;
}

fn func_2() -> Struct_1 {
    var var_0 = -67481i;
    let var_1 = global2[_wgslsmith_index_u32(u_input.c, 32u)];
    var_0 = abs(u_input.e) >> (~(~(~20244u)) % 32u);
    let var_2 = _wgslsmith_div_u32(~_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.d, u_input.d, var_1.a), ~vec3<u32>(1u, u_input.a, var_1.a)), _wgslsmith_div_u32(u_input.d & 1u, func_3(-1564f))), ~u_input.a >> (firstLeadingBit(u_input.d) % 32u));
    var var_3 = global2[_wgslsmith_index_u32(_wgslsmith_add_u32(30931u, _wgslsmith_div_u32(~var_1.a, var_2)), 32u)];
    return Struct_1(var_3.a);
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: bool) -> Struct_1 {
    global0 = array<vec3<bool>, 13>();
    var var_0 = !vec4<bool>(true, arg_2, true | all(!global0[_wgslsmith_index_u32(0u, 13u)]), all(vec3<bool>(true, any(global0[_wgslsmith_index_u32(39882u, 13u)]), arg_2)));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-795f - _wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(trunc(-909f))))) - -936f);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-250f, -519f, var_0.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-646f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -617f)))));
    let var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(635f, 1000f)))), _wgslsmith_f_op_f32(f32(-1f) * -2032f), -562f) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(567f, 667f, 290f) + vec3<f32>(284f, 287f, -1895f))))))));
    return func_2();
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    let var_0 = 6741u;
    var var_1 = 53484u;
    var_1 = _wgslsmith_mod_u32(arg_1.a, min(u_input.c, arg_0.a));
    global2 = array<Struct_1, 32>();
    global2 = array<Struct_1, 32>();
    return global2[_wgslsmith_index_u32(~firstTrailingBit(var_0 >> (arg_1.a % 32u)), 32u)];
}

fn func_1(arg_0: i32) -> vec2<bool> {
    var var_0 = func_5(Struct_1(1u), func_4(func_2(), reverseBits(_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(0u, 20634u, u_input.a, 0u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, 0u, u_input.a, u_input.c), vec4<u32>(u_input.d, 4294967295u, u_input.d, 0u), vec4<u32>(2104u, 0u, u_input.c, 0u)))), all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false), false), all(vec2<bool>(true, false))))));
    let var_1 = func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(183f - 1505f)) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(394f)), 690f)))));
    var var_2 = func_4(func_2(), countOneBits(func_5(func_2(), func_2()).a), true);
    let var_3 = Struct_1(34348u);
    let var_4 = func_2();
    return vec2<bool>(true, any(vec2<bool>(all(vec2<bool>(false, false)), true)));
}

fn func_6(arg_0: vec3<bool>, arg_1: bool, arg_2: Struct_1, arg_3: vec3<u32>) -> Struct_1 {
    global2 = array<Struct_1, 32>();
    var var_0 = ~((arg_3.x >> (1u % 32u)) >> (_wgslsmith_mult_u32(arg_3.x, 1u >> (1u % 32u)) % 32u));
    let var_1 = _wgslsmith_mult_vec4_u32(vec4<u32>(arg_3.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, arg_2.a, 0u), firstTrailingBit(arg_3)) << (u_input.c % 32u), 0u, func_3(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1054f))))), countOneBits(max(firstTrailingBit(vec4<u32>(69186u, 41836u, u_input.d, 14697u)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.d, 34097u, 0u, u_input.a), vec4<u32>(arg_3.x, arg_2.a, 9157u, arg_3.x))) << (firstLeadingBit(vec4<u32>(u_input.a, 1u, u_input.d, 48724u) & vec4<u32>(u_input.d, 4294967295u, u_input.a, 26573u)) % vec4<u32>(32u))));
    var var_2 = var_1.xy;
    var var_3 = func_4(func_4(Struct_1(~(~u_input.a)), ~(~1u), true), 70133u, _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-30817i, u_input.e, 2147483647i), vec3<i32>(-1i, -2147483647i, u_input.e)), _wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, 6087i, 0i), vec3<i32>(32591i, 14172i, u_input.b.x))), min(vec3<i32>(u_input.b.x, -5819i, u_input.e), vec3<i32>(u_input.b.x, u_input.b.x, u_input.e)) ^ _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, -11604i), vec3<i32>(u_input.e, 7081i, u_input.e))) >= u_input.b.x);
    return Struct_1(_wgslsmith_mult_u32(var_2.x, ~(~abs(17872u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    var var_1 = true;
    var var_2 = func_6(global0[_wgslsmith_index_u32(u_input.a, 13u)], any(vec4<bool>(true, true, true, true)) | (all(func_1(-22898i)) && false), func_2(), _wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(select(vec3<u32>(u_input.a, 1u, 0u), vec3<u32>(0u, 1u, 0u), false), _wgslsmith_mult_vec3_u32(vec3<u32>(4483u, 62643u, 4294967295u), vec3<u32>(u_input.a, u_input.c, 1u))), vec3<u32>(_wgslsmith_mod_u32(4294967295u, u_input.a), u_input.a, reverseBits(3533u))) & ~_wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.c, 33528u, u_input.a), select(vec3<u32>(0u, 49554u, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<bool>(true, false, false))));
    var var_3 = global2[_wgslsmith_index_u32(~(~_wgslsmith_mod_u32(u_input.a & ~1u, var_2.a)), 32u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-2069f, 949f) * _wgslsmith_f_op_f32(step(-916f, 3105f))), -501f, _wgslsmith_f_op_f32(min(-233f, _wgslsmith_f_op_f32(173f + 1000f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -745f), 1f, 960f) - vec3<f32>(_wgslsmith_f_op_f32(-491f * -1534f), 1489f, _wgslsmith_f_op_f32(428f - -1413f))))), min(vec3<i32>(~_wgslsmith_mult_i32(-41292i, u_input.b.x), _wgslsmith_clamp_i32(1i, -19481i | u_input.b.x, 1i), ~(-u_input.e)), min(select(vec3<i32>(-2993i, -11990i, 1i), vec3<i32>(u_input.e, u_input.b.x, 1i), global0[_wgslsmith_index_u32(33992u, 13u)]) >> (firstTrailingBit(vec3<u32>(var_2.a, var_3.a, var_2.a)) % vec3<u32>(32u)), ~vec3<i32>(u_input.e, u_input.e, -16651i))));
}

