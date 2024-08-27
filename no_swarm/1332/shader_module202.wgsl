struct Struct_1 {
    a: i32,
    b: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(-13553i, true), Struct_1(56842i, true), Struct_1(-1631i, true), Struct_1(-34880i, false), Struct_1(13332i, false), Struct_1(29495i, true), Struct_1(-9840i, false), Struct_1(26159i, true), Struct_1(i32(-2147483648), true), Struct_1(6876i, true), Struct_1(1666i, false), Struct_1(2147483647i, true), Struct_1(-5653i, true), Struct_1(0i, true), Struct_1(-3647i, false), Struct_1(0i, false), Struct_1(-35689i, true), Struct_1(2147483647i, true), Struct_1(0i, false), Struct_1(-5791i, false), Struct_1(27757i, false), Struct_1(-12428i, true), Struct_1(-11248i, false), Struct_1(-12199i, true), Struct_1(0i, false));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec2<u32>) -> f32 {
    let var_0 = abs(1u);
    global0 = array<Struct_1, 25>();
    global0 = array<Struct_1, 25>();
    global0 = array<Struct_1, 25>();
    var var_1 = vec4<bool>(all(vec4<bool>(true, true, true, true)) && all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false)), any(vec4<bool>(false, true, false, true)))), false, _wgslsmith_add_u32(_wgslsmith_add_u32(arg_0.x, 4294967295u) >> (countOneBits(0u) % 32u), 4294967295u) > firstTrailingBit(var_0), true);
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2141f + _wgslsmith_f_op_f32(ceil(1000f)))))));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    global0 = array<Struct_1, 25>();
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(669f + 329f), _wgslsmith_f_op_f32(func_3(vec2<u32>(1u, 92431u))), !arg_0.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1367f)))));
    let var_1 = ~min(1u, ~select(94826u, ~4294967295u, arg_0.b));
    global0 = array<Struct_1, 25>();
    global0 = array<Struct_1, 25>();
    return Struct_1(-46658i, !all(!(!vec4<bool>(false, arg_0.b, true, arg_0.b))));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: u32) -> u32 {
    let var_0 = -1368f;
    var var_1 = func_2(func_2(func_2(func_2(func_2(Struct_1(-7499i, false))))));
    var_1 = func_2(Struct_1(-26328i, true));
    let var_2 = -(~firstLeadingBit(~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 2147483647i), vec2<i32>(u_input.a, -31260i))));
    global0 = array<Struct_1, 25>();
    return 51692u;
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = abs(vec2<i32>(abs(33643i), u_input.a));
    let var_1 = global0[_wgslsmith_index_u32(~countOneBits(1u << (func_4(~vec2<u32>(35526u, 6848u), func_2(Struct_1(u_input.a, arg_1.b)), 28443u) % 32u)), 25u)];
    let var_2 = -vec2<i32>(-2147483647i ^ var_1.a, var_1.a);
    let var_3 = arg_0.x;
    var var_4 = firstLeadingBit(firstTrailingBit(1u >> (_wgslsmith_dot_vec4_u32(select(vec4<u32>(3542u, 1681u, 28241u, 1u), vec4<u32>(45647u, 1u, 0u, 0u), vec4<bool>(var_1.b, false, var_1.b, arg_1.b)), _wgslsmith_clamp_vec4_u32(vec4<u32>(26127u, 80102u, 40247u, 0u), vec4<u32>(15944u, 1u, 51596u, 0u), vec4<u32>(12740u, 44213u, 0u, 57348u))) % 32u)));
    return func_2(func_2(Struct_1(_wgslsmith_mod_i32(_wgslsmith_div_i32(u_input.a, u_input.a), var_1.a | arg_1.a), true)));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> vec3<bool> {
    let var_0 = !vec4<bool>(!(!(!arg_0.b)), false, arg_1.b, true);
    global0 = array<Struct_1, 25>();
    global0 = array<Struct_1, 25>();
    var var_1 = func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1780f, 1159f, 1179f)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1584f, 189f, 1337f) + vec3<f32>(-839f, 483f, 1488f)), vec3<f32>(-1000f, -105f, 859f)), select(select(vec3<bool>(var_0.x, arg_1.b, true), vec3<bool>(true, arg_0.b, true), var_0.yww), !vec3<bool>(arg_0.b, arg_0.b, var_0.x), false))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-423f, -628f, 437f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-2709f, -196f, -902f), vec3<f32>(3231f, -502f, 1291f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -326f, 2032f))))), arg_0);
    var var_2 = reverseBits(min(min(~(~1u), ~(~4294967295u)), 80029u));
    return var_0.ywy;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!(!func_5(func_1(vec3<f32>(116f, -590f, 1071f), global0[_wgslsmith_index_u32(18796u, 25u)]), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(40413u, 36324u), 25u)])));
    global0 = array<Struct_1, 25>();
    let var_1 = (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(246f)))) >= _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(139f + _wgslsmith_f_op_f32(step(-1000f, 265f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1036f)))))) | (var_0.x | true);
    global0 = array<Struct_1, 25>();
    var var_2 = Struct_1(_wgslsmith_mod_i32(u_input.a, firstLeadingBit(countOneBits(u_input.a))), var_1);
    var var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-367f)) - 338f))));
    let var_4 = vec4<u32>(~max(func_4(vec2<u32>(1u, 163522u), Struct_1(-14038i, var_1), 32140u), ~1u) & select(_wgslsmith_dot_vec3_u32(vec3<u32>(24996u, 1u, 28091u), vec3<u32>(34442u, 4294967295u, 56192u)) ^ countOneBits(66724u), _wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(4294967295u, 0u, 25485u)), vec3<u32>(9007u, 45275u, 4294967295u)), any(vec4<bool>(false, var_1, true, false))), 16619u, _wgslsmith_dot_vec4_u32(firstLeadingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(1u, 6457u, 5354u, 26174u))), vec4<u32>(1u, select(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, 4294967295u, 4294967295u), vec4<u32>(38665u, 4294967295u, 1u, 24258u)), 64981u, select(true, var_0.x, var_1)), 31031u, ~_wgslsmith_clamp_u32(64675u, 0u, 9991u))), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), select(vec4<u32>(34482u, 75629u, 13u, 4294967295u), firstTrailingBit(vec4<u32>(19763u, 0u, 27097u, 24087u)), false) << (vec4<u32>(reverseBits(23036u), 1u, 54947u, 4294967295u) % vec4<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(~var_4.x, _wgslsmith_mod_vec4_i32(vec4<i32>(abs(var_2.a), -u_input.a, 33425i, u_input.a ^ u_input.a) & reverseBits(-vec4<i32>(-1i, var_2.a, u_input.a, -2147483647i)), ~(-vec4<i32>(-1i, 2147483647i, u_input.a, u_input.a))), var_4);
}

