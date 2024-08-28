struct Struct_1 {
    a: f32,
    b: i32,
    c: vec3<f32>,
    d: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<vec3<f32>, 17>;

var<private> global2: array<vec3<i32>, 31> = array<vec3<i32>, 31>(vec3<i32>(-41034i, i32(-2147483648), -13270i), vec3<i32>(2147483647i, -5627i, 24403i), vec3<i32>(2147483647i, -4862i, 1i), vec3<i32>(14672i, 0i, 24290i), vec3<i32>(2147483647i, -1i, -48610i), vec3<i32>(-38105i, 2147483647i, -30589i), vec3<i32>(i32(-2147483648), 9349i, 0i), vec3<i32>(13871i, -1i, 1i), vec3<i32>(36710i, 24714i, 20058i), vec3<i32>(0i, 2147483647i, 2147483647i), vec3<i32>(1i, 16493i, i32(-2147483648)), vec3<i32>(18413i, 2147483647i, 0i), vec3<i32>(27032i, 0i, 17055i), vec3<i32>(i32(-2147483648), -1i, -17494i), vec3<i32>(i32(-2147483648), 2147483647i, 2147483647i), vec3<i32>(26125i, 49340i, 81i), vec3<i32>(-23811i, -29337i, -24089i), vec3<i32>(-18404i, 8622i, -32107i), vec3<i32>(75436i, 6107i, 2147483647i), vec3<i32>(-4615i, 0i, 38895i), vec3<i32>(1i, 53189i, -1i), vec3<i32>(0i, 0i, 13253i), vec3<i32>(-58645i, i32(-2147483648), i32(-2147483648)), vec3<i32>(-38263i, 1i, -10432i), vec3<i32>(0i, -1i, -4078i), vec3<i32>(2147483647i, 1675i, -1i), vec3<i32>(0i, i32(-2147483648), -1i), vec3<i32>(-3863i, -53714i, 28755i), vec3<i32>(-1i, i32(-2147483648), -13310i), vec3<i32>(i32(-2147483648), i32(-2147483648), -25422i), vec3<i32>(0i, -1i, 0i));

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: Struct_1) -> i32 {
    global0 = !((0u | _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, u_input.a) << (vec2<u32>(arg_0, arg_2.d) % vec2<u32>(32u)), ~vec2<u32>(1u, u_input.a))) != abs(~max(53702u, arg_2.d)));
    let var_0 = true;
    let var_1 = ~_wgslsmith_sub_vec3_u32(abs(~vec3<u32>(1u, arg_0, 1u)), select(max(~vec3<u32>(arg_0, arg_0, 72385u), ~vec3<u32>(47767u, 0u, arg_0)), _wgslsmith_div_vec3_u32(~vec3<u32>(1u, 4294967295u, arg_2.d), ~vec3<u32>(0u, 4294967295u, u_input.a)), var_0));
    let var_2 = _wgslsmith_f_op_f32(2552f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.a * arg_2.c.x) - _wgslsmith_f_op_f32(580f + arg_2.a)) * arg_2.c.x)));
    var var_3 = !var_0 & var_0;
    return 2147483647i;
}

fn func_2(arg_0: i32) -> f32 {
    let var_0 = u_input.a << (~u_input.a % 32u);
    var var_1 = -434f;
    var var_2 = Struct_1(-1922f, -abs(-2147483647i), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(8245u, 1u), vec2<u32>(8427u, 97395u)), vec2<u32>(var_0, 0u)), 0u, 28227u), vec3<u32>(var_0, 1u, 38882u)), 17u)], ~var_0);
    global2 = array<vec3<i32>, 31>();
    global1 = array<vec3<f32>, 17>();
    return _wgslsmith_f_op_f32(-var_2.c.x);
}

fn func_3(arg_0: f32) -> Struct_1 {
    let var_0 = vec4<u32>(_wgslsmith_add_u32(u_input.a << (u_input.a % 32u), u_input.a << (_wgslsmith_mult_u32(u_input.a, 0u & u_input.a) % 32u)), ~u_input.a, 46916u ^ u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(~4294967295u, _wgslsmith_add_u32(u_input.a, 26235u), u_input.a << (1u % 32u), ~1u) ^ (~vec4<u32>(1u, 4294967295u, 69911u, 77738u) >> ((vec4<u32>(u_input.a, u_input.a, 0u, 28733u) >> (vec4<u32>(u_input.a, 0u, 4294967295u, 4294967295u) % vec4<u32>(32u))) % vec4<u32>(32u))), vec4<u32>(u_input.a, ~_wgslsmith_clamp_u32(0u, 12678u, 71797u), _wgslsmith_div_u32(max(u_input.a, u_input.a), firstLeadingBit(1u)), u_input.a)));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(trunc(336f)), _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(1562i, -7512i) >> (vec2<u32>(var_0.x, var_0.x) % vec2<u32>(32u)), vec2<i32>(-31187i, 47204i)), abs(vec2<i32>(-2733i, -78597i))), _wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -16040i, 1i), vec3<i32>(-13184i, 22665i, 0i)), ~(-3173i)), -vec2<i32>(2147483647i, 1299i))), vec3<f32>(arg_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(arg_0, _wgslsmith_f_op_f32(round(arg_0)), any(vec4<bool>(true, true, false, false)))), -1433f), 240f), 0u);
    global0 = 329f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-2052f - 1032f)))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + 448f)) + _wgslsmith_f_op_f32(-var_1.c.x))), -var_1.b, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-var_1.c))))), 25517u);
    global1 = array<vec3<f32>, 17>();
    return Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-2091f * -535f), arg_0), _wgslsmith_f_op_f32(arg_0 - -718f))), min(func_1(var_0.x, min(var_2.b, var_1.b), Struct_1(-188f, -10386i, vec3<f32>(arg_0, var_1.c.x, arg_0), 0u)), var_1.b) | 63418i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_2.c)), ~4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 2147483647i >= min(_wgslsmith_mult_i32(~100155i, 1i) ^ _wgslsmith_mult_i32(abs(2147483647i), func_1(0u, 9456i, Struct_1(1927f, 0i, vec3<f32>(616f, 692f, -678f), u_input.a))), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, firstTrailingBit(2147483647i), 13008i, ~4627i), vec4<i32>(-22830i, ~(-8120i), ~2663i, 1i)));
    var var_1 = -10721i;
    var var_2 = func_3(_wgslsmith_f_op_f32(func_2(-1i)));
    global1 = array<vec3<f32>, 17>();
    global0 = select(reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(var_2.b, 0i, 0i) & vec3<i32>(var_2.b, -1i, -6824i), _wgslsmith_sub_vec3_i32(global2[_wgslsmith_index_u32(4294967295u, 31u)], global2[_wgslsmith_index_u32(u_input.a, 31u)]))) < firstLeadingBit(0i), var_0, any(!vec3<bool>(var_0, var_2.b == var_2.b, !var_0)));
    var_1 = ~1i;
    var var_3 = _wgslsmith_sub_vec4_u32(~min(vec4<u32>(countOneBits(0u), u_input.a, u_input.a, ~35804u), ~_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 1u, var_2.d, 69136u), vec4<u32>(24670u, 0u, var_2.d, var_2.d))), min(vec4<u32>(u_input.a, ~(~4294967295u), _wgslsmith_div_u32(1u, ~1u), countOneBits(_wgslsmith_div_u32(u_input.a, u_input.a))), vec4<u32>(~var_2.d | ~3777u, func_3(_wgslsmith_f_op_f32(var_2.a - var_2.a)).d, ~(~1u), 42874u)));
    let var_4 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(746f)), _wgslsmith_f_op_f32(round(var_2.c.x))), ~var_2.b, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-global1[_wgslsmith_index_u32(21699u, 17u)]))), 31677u);
    let var_5 = select(vec2<bool>(firstLeadingBit(var_4.b) <= min(_wgslsmith_div_i32(-51037i, var_2.b), var_4.b), var_0), vec2<bool>(!(-13787i <= _wgslsmith_add_i32(15547i, var_4.b)), var_4.b > var_2.b), !vec2<bool>(var_4.c.x > _wgslsmith_f_op_f32(var_2.a - 1068f), any(vec3<bool>(true, true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.b, 1u);
}

