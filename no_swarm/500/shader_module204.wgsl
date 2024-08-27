struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<i32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: i32,
    c: vec4<u32>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_3,
    c: Struct_1,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<i32>,
    d: f32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 3> = array<vec3<f32>, 3>(vec3<f32>(2088f, -1988f, 1595f), vec3<f32>(479f, -711f, 167f), vec3<f32>(1179f, 944f, 1902f));

var<private> global1: array<vec2<u32>, 29> = array<vec2<u32>, 29>(vec2<u32>(0u, 31468u), vec2<u32>(96480u, 11068u), vec2<u32>(0u, 33866u), vec2<u32>(74485u, 16654u), vec2<u32>(109199u, 70944u), vec2<u32>(1u, 0u), vec2<u32>(4294967295u, 46929u), vec2<u32>(4663u, 17154u), vec2<u32>(4294967295u, 0u), vec2<u32>(0u, 1u), vec2<u32>(41668u, 4294967295u), vec2<u32>(39785u, 0u), vec2<u32>(4294967295u, 53599u), vec2<u32>(23717u, 963u), vec2<u32>(2713u, 29865u), vec2<u32>(1u, 0u), vec2<u32>(14269u, 16431u), vec2<u32>(0u, 46278u), vec2<u32>(4294967295u, 8232u), vec2<u32>(0u, 1u), vec2<u32>(1u, 68509u), vec2<u32>(8849u, 28843u), vec2<u32>(4294967295u, 1u), vec2<u32>(39182u, 1u), vec2<u32>(7540u, 28853u), vec2<u32>(1u, 0u), vec2<u32>(0u, 44449u), vec2<u32>(50933u, 0u), vec2<u32>(18561u, 1u));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: f32) -> f32 {
    var var_0 = abs(_wgslsmith_dot_vec3_u32(min(vec3<u32>(1u, u_input.b.x, u_input.b.x) & u_input.b, vec3<u32>(u_input.b.x, u_input.b.x, 26448u)), ~vec3<u32>(u_input.a, 12747u, u_input.a))) > _wgslsmith_mult_u32(0u, ~u_input.a);
    var var_1 = global0[_wgslsmith_index_u32(36097u << (~(u_input.b.x & ~(~u_input.a)) % 32u), 3u)];
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-3328f + _wgslsmith_f_op_f32(ceil(arg_0.a)))), 439f, !(!(!arg_1.x)))));
    let var_3 = vec3<i32>(_wgslsmith_mult_i32(17619i, firstLeadingBit(1i)), ~(-13527i), firstLeadingBit(abs(min(-50946i, 58995i) << (u_input.b.x % 32u))));
    global0 = array<vec3<f32>, 3>();
    return 1843f;
}

fn func_1() -> f32 {
    var var_0 = vec3<bool>(false, false, select(false, true, true));
    var var_1 = reverseBits(~_wgslsmith_clamp_u32(~(~u_input.a), abs(~u_input.b.x), u_input.b.x));
    global1 = array<vec2<u32>, 29>();
    global1 = array<vec2<u32>, 29>();
    var var_2 = Struct_3(select(select(var_0.zz, var_0.yz, var_0.x), var_0.zy, var_0.xx), -25074i, ~_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(1u, u_input.b.x, u_input.a, u_input.b.x), ~vec4<u32>(4294967295u, 1u, 4294967295u, u_input.b.x)), ~vec4<u32>(1u, 0u, 4294967295u, u_input.b.x)));
    return _wgslsmith_f_op_f32(step(-924f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1148f + 1f) + _wgslsmith_f_op_f32(step(941f, -1078f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(Struct_1(-1611f), vec3<bool>(true, false, false), 550f)), _wgslsmith_f_op_f32(step(366f, 534f)))))));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: Struct_2) -> Struct_2 {
    var var_0 = Struct_1(-627f);
    var var_1 = true;
    let var_2 = arg_2;
    var_1 = -64994i <= _wgslsmith_div_i32(i32(-1i) * -(arg_0.x >> (0u % 32u)), _wgslsmith_add_i32(i32(-1i) * -22020i, arg_0.x));
    var_1 = all(!arg_3.a);
    return Struct_2(select(arg_3.a, !select(arg_3.a, vec3<bool>(false, arg_3.a.x, arg_3.a.x), arg_3.a.x), false), arg_3.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(_wgslsmith_div_f32(-875f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(2123f)), 1641f))), _wgslsmith_f_op_f32(349f - _wgslsmith_f_op_f32(1414f + _wgslsmith_f_op_f32(f32(-1f) * -316f))), _wgslsmith_f_op_f32(f32(-1f) * -975f), _wgslsmith_f_op_f32(-275f + -714f));
    global1 = array<vec2<u32>, 29>();
    var var_1 = func_3(vec3<i32>(-(~1i), ~firstLeadingBit(-8966i), max(-1i, 3237i)), _wgslsmith_f_op_vec3_f32(min(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, u_input.a), 3u)], vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, 1158f) * -1338f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_0.x)), _wgslsmith_f_op_f32(-var_0.x)), 2867f))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) + -240f))), Struct_2(select(vec3<bool>(true, true, any(vec2<bool>(true, true))), vec3<bool>(true, true, true), !select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true))), -abs(vec4<i32>(0i, -8161i, 1i, 1970i) << (vec4<u32>(62399u, u_input.b.x, 4294967295u, u_input.b.x) % vec4<u32>(32u)))));
    let var_2 = _wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(abs(vec4<u32>(_wgslsmith_add_u32(u_input.b.x, u_input.b.x), 54448u, u_input.a, _wgslsmith_div_u32(u_input.b.x, 9280u))), vec4<u32>(_wgslsmith_mod_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.b.x, u_input.a, 0u), vec4<u32>(u_input.a, 1u, u_input.b.x, 4294967295u))), ~108863u, 0u, u_input.a), max(vec4<u32>(u_input.a, u_input.b.x, firstTrailingBit(u_input.b.x), ~u_input.b.x), ~vec4<u32>(1u, u_input.a, u_input.a, 0u))), vec4<u32>(~(~11676u) ^ _wgslsmith_clamp_u32(countOneBits(u_input.b.x), u_input.b.x, 57187u), 4294967295u, u_input.a, u_input.a));
    global1 = array<vec2<u32>, 29>();
    var_1 = func_3(vec3<i32>(-1i | ~_wgslsmith_dot_vec4_i32(var_1.b, vec4<i32>(54440i, 23103i, -41538i, var_1.b.x)), max(abs(1i), 22782i), max(_wgslsmith_mult_i32(var_1.b.x, ~var_1.b.x), abs(var_1.b.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.x, 1111f, true))), _wgslsmith_f_op_f32(func_1()), -378f)), Struct_1(var_0.x), Struct_2(!var_1.a, vec4<i32>(var_1.b.x, 2147483647i, abs(9097i), var_1.b.x)));
    var_1 = Struct_2(select(var_1.a, func_3(_wgslsmith_mult_vec3_i32(var_1.b.xwy, -vec3<i32>(var_1.b.x, var_1.b.x, var_1.b.x)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, 929f) + vec3<f32>(var_0.x, 1000f, var_0.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, 1203f))), Struct_1(1461f), func_3(reverseBits(var_1.b.zyw), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, -1727f) - var_0.wyy), Struct_1(var_0.x), func_3(vec3<i32>(5728i, -18934i, var_1.b.x), vec3<f32>(var_0.x, 1000f, -1220f), Struct_1(-1000f), Struct_2(var_1.a, var_1.b)))).a, select(!var_1.a, vec3<bool>(!var_1.a.x, var_1.a.x, all(vec2<bool>(true, true))), vec3<bool>(any(var_1.a), any(var_1.a.yz), all(vec2<bool>(var_1.a.x, false))))), -var_1.b);
    var var_3 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(436f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(345f, var_0.x)))), _wgslsmith_f_op_f32(f32(-1f) * -511f)));
    var var_4 = var_0.zxy;
    let x = u_input.a;
    s_output = StorageBuffer(~((_wgslsmith_mult_i32(var_1.b.x, var_1.b.x) | ~var_1.b.x) | -_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.b.x, var_1.b.x, var_1.b.x, var_1.b.x), vec4<i32>(var_1.b.x, -40485i, var_1.b.x, 9234i))), vec4<i32>(func_3(vec3<i32>(~var_1.b.x, var_1.b.x >> (85235u % 32u), ~var_1.b.x), vec3<f32>(_wgslsmith_f_op_f32(-1988f - 963f), _wgslsmith_f_op_f32(max(var_0.x, var_4.x)), _wgslsmith_f_op_f32(min(var_4.x, var_0.x))), Struct_1(-506f), Struct_2(func_3(vec3<i32>(-2147483647i, -1i, var_1.b.x), vec3<f32>(1368f, var_3.a, -2147f), Struct_1(-777f), Struct_2(vec3<bool>(var_1.a.x, true, false), vec4<i32>(var_1.b.x, 0i, 11257i, 0i))).a, vec4<i32>(1i, -10932i, var_1.b.x, var_1.b.x))).b.x, _wgslsmith_sub_i32(_wgslsmith_add_i32(8824i, min(var_1.b.x, var_1.b.x)), _wgslsmith_add_i32(var_1.b.x, var_1.b.x)), 1i, var_1.b.x), _wgslsmith_sub_vec2_i32(-(select(var_1.b.zy, var_1.b.zx, false) << (min(vec2<u32>(4294967295u, var_2.x), global1[_wgslsmith_index_u32(22176u, 29u)]) % vec2<u32>(32u))), func_3(var_1.b.wyx, var_0.yxx, Struct_1(-1354f), func_3(var_1.b.yxz & vec3<i32>(var_1.b.x, var_1.b.x, -1i), _wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(39797u, 3u)]), Struct_1(var_4.x), func_3(var_1.b.yxz, vec3<f32>(1000f, var_4.x, -125f), Struct_1(-393f), Struct_2(var_1.a, var_1.b)))).b.yx), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_1()))), select(~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(11776u, var_2.x, 53791u), var_2.yzx, u_input.b)), ~select(~var_2.wwy, _wgslsmith_sub_vec3_u32(vec3<u32>(62506u, 4294967295u, var_2.x), var_2.xzy), select(var_1.a.x, var_1.a.x, var_1.a.x)), var_1.a.x));
}

