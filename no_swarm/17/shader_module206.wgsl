struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: vec4<bool>,
    d: vec4<u32>,
    e: u32,
}

struct Struct_2 {
    a: f32,
    b: vec3<i32>,
    c: vec2<f32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 28> = array<f32, 28>(1703f, 1669f, 791f, -247f, -2551f, -129f, 136f, 1000f, -363f, 168f, 1000f, -1262f, 546f, 130f, 1848f, -334f, -869f, -303f, -910f, 1512f, 1367f, -1947f, -693f, 1002f, 1039f, -364f, -534f, -1160f);

var<private> global1: array<vec4<u32>, 10> = array<vec4<u32>, 10>(vec4<u32>(4294967295u, 0u, 4294967295u, 12941u), vec4<u32>(90295u, 63835u, 1u, 4294967295u), vec4<u32>(69844u, 26148u, 1u, 4294967295u), vec4<u32>(3754u, 38519u, 60094u, 36136u), vec4<u32>(15995u, 52414u, 0u, 16514u), vec4<u32>(0u, 0u, 1u, 4294967295u), vec4<u32>(8000u, 4294967295u, 1u, 4294967295u), vec4<u32>(1u, 83174u, 4294967295u, 1u), vec4<u32>(44155u, 4294967295u, 1u, 26449u), vec4<u32>(0u, 4294967295u, 4294967295u, 51874u));

var<private> global2: vec3<u32>;

var<private> global3: u32 = 10853u;

var<private> global4: array<vec2<f32>, 4> = array<vec2<f32>, 4>(vec2<f32>(249f, -287f), vec2<f32>(-1678f, -1000f), vec2<f32>(-1293f, -424f), vec2<f32>(-1243f, 1401f));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: Struct_3) -> vec2<f32> {
    global2 = min(vec3<u32>(global2.x, 24264u, ~firstTrailingBit(4294967295u) | u_input.b), ~firstTrailingBit(reverseBits(min(vec3<u32>(u_input.b, 19303u, global2.x), vec3<u32>(global2.x, 12269u, global2.x)))));
    let var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.c.c.x + arg_2.c.a) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.b.c.x, -951f))), arg_2.b.c.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(384f + 580f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1465f, arg_2.b.c.x), arg_2.c.c.x)))), _wgslsmith_clamp_u32(max(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, global2.x, 1u, global2.x) ^ vec4<u32>(4294967295u, global2.x, u_input.b, 0u), vec4<u32>(u_input.b, global2.x, 80557u, 3022u)), _wgslsmith_add_u32(~78485u, firstLeadingBit(global2.x))), 4294967295u, firstLeadingBit(u_input.b)), vec4<bool>(true, true, true, true), _wgslsmith_mult_vec4_u32(select(vec4<u32>(57217u, 58302u, 1u, _wgslsmith_div_u32(u_input.b, u_input.b)), global1[_wgslsmith_index_u32(4294967295u, 10u)], select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true)))), _wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(countOneBits(global1[_wgslsmith_index_u32(global2.x, 10u)]), vec4<u32>(global2.x, 0u, u_input.b, global2.x)), vec4<u32>(54525u, ~0u, 1u ^ global2.x, _wgslsmith_dot_vec4_u32(global1[_wgslsmith_index_u32(global2.x, 10u)], global1[_wgslsmith_index_u32(u_input.b, 10u)])))), _wgslsmith_add_u32(~82372u, global2.x));
    let var_1 = arg_2.c;
    global4 = array<vec2<f32>, 4>();
    var var_2 = var_0;
    return vec2<f32>(_wgslsmith_f_op_f32(abs(arg_2.b.c.x)), -2506f);
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_2) -> i32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(arg_0, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(arg_0))))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1257f, -511f, arg_1.c.x, _wgslsmith_f_op_f32(-arg_0.x)) + arg_0)), u_input.b, select(vec4<bool>(true, !(u_input.b <= 1u), true, true), vec4<bool>(true, true, true, true), !all(vec4<bool>(false, true, true, false))), firstLeadingBit(_wgslsmith_mult_vec4_u32(countOneBits(global1[_wgslsmith_index_u32(u_input.b, 10u)] ^ vec4<u32>(1u, u_input.b, 0u, 0u)), _wgslsmith_add_vec4_u32(vec4<u32>(global2.x, global2.x, global2.x, 0u) & global1[_wgslsmith_index_u32(global2.x, 10u)], vec4<u32>(13420u, 0u, 57642u, global2.x)))), ~16954u);
    var var_1 = u_input.c.x;
    let var_2 = ~_wgslsmith_sub_vec3_u32(firstTrailingBit(~(vec3<u32>(var_0.d.x, 1u, var_0.e) & var_0.d.yzy)), vec3<u32>(0u, global2.x, _wgslsmith_mult_u32(global2.x, var_0.e)));
    var_1 = 1i;
    global4 = array<vec2<f32>, 4>();
    return _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(-_wgslsmith_div_vec3_i32(vec3<i32>(1i, 2147483647i, u_input.c.x), _wgslsmith_clamp_vec3_i32(vec3<i32>(29945i, u_input.c.x, -50051i), vec3<i32>(2147483647i, -10910i, 3614i), arg_1.b)), _wgslsmith_mod_vec3_i32(arg_1.b, vec3<i32>(-1i) * -arg_1.b), arg_1.b), _wgslsmith_mult_vec3_i32(vec3<i32>(1i, 2147483647i, 2147483647i) << (vec3<u32>(max(global2.x, 1u), 0u, ~u_input.b) % vec3<u32>(32u)), countOneBits(select(~vec3<i32>(0i, arg_1.b.x, u_input.a), vec3<i32>(-1i, 8689i, -15786i) << (vec3<u32>(u_input.b, u_input.b, 34012u) % vec3<u32>(32u)), !var_0.c.xww))));
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_2) -> i32 {
    let var_0 = Struct_3(func_4(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(u_input.b, 28u)], 1246f, arg_1.a, -1405f) * vec4<f32>(1000f, global0[_wgslsmith_index_u32(global2.x, 28u)], 995f, global0[_wgslsmith_index_u32(1u, 28u)])))))), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c.x)), vec3<i32>(-u_input.c.x, max(-4090i, 5484i), u_input.a), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(Struct_3(19056i, arg_1, arg_1), vec3<i32>(16583i, arg_1.b.x, arg_0.x), Struct_3(-2147483647i, Struct_2(global0[_wgslsmith_index_u32(global2.x, 28u)], arg_1.b, vec2<f32>(arg_1.c.x, arg_1.c.x)), Struct_2(-1000f, vec3<i32>(-17004i, arg_1.b.x, -2147483647i), global4[_wgslsmith_index_u32(global2.x, 4u)])))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-456f, arg_1.a), vec2<f32>(1000f, -677f)))))), Struct_2(_wgslsmith_div_f32(-780f, -306f), arg_0, vec2<f32>(472f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c.x)))), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_1.c.x, arg_1.c.x)) * 154f)), arg_1.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.a, -1033f) * global4[_wgslsmith_index_u32(55530u, 4u)]) - vec2<f32>(1000f, -298f)))));
    global3 = (global2.x ^ 4294967295u) & _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(u_input.b, u_input.b), u_input.b, select(u_input.b, global2.x, false)), countOneBits(vec3<u32>(1u, 27700u, u_input.b) >> (vec3<u32>(63001u, 65933u, u_input.b) % vec3<u32>(32u)))), vec3<u32>(global2.x, abs(36696u), min(_wgslsmith_add_u32(33547u, 35940u), _wgslsmith_sub_u32(global2.x, u_input.b))));
    var var_1 = var_0;
    global4 = array<vec2<f32>, 4>();
    var var_2 = vec4<u32>(u_input.b, u_input.b, u_input.b, ~(~2299u));
    return arg_1.b.x;
}

fn func_1(arg_0: bool, arg_1: f32) -> bool {
    let var_0 = Struct_3(func_2(((vec3<i32>(-25504i, -38041i, -5968i) << (vec3<u32>(u_input.b, 1u, global2.x) % vec3<u32>(32u))) | select(vec3<i32>(u_input.c.x, -1i, u_input.c.x), vec3<i32>(u_input.c.x, u_input.c.x, 2147483647i), true)) | -firstLeadingBit(vec3<i32>(u_input.a, u_input.a, u_input.c.x)), Struct_2(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global2.x, 72490u, global2.x, 4294967295u), global1[_wgslsmith_index_u32(8200u, 10u)]), 28u)], max(~vec3<i32>(u_input.a, 20476i, -28211i), vec3<i32>(-1i, u_input.c.x, u_input.a)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global4[_wgslsmith_index_u32(0u, 4u)])))), Struct_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_vec2_f32(func_3(Struct_3(u_input.a, Struct_2(global0[_wgslsmith_index_u32(global2.x, 28u)], vec3<i32>(u_input.a, u_input.a, 2147483647i), global4[_wgslsmith_index_u32(1u, 4u)]), Struct_2(975f, vec3<i32>(u_input.c.x, u_input.a, u_input.c.x), vec2<f32>(-116f, -772f))), vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x), Struct_3(u_input.c.x, Struct_2(arg_1, vec3<i32>(u_input.a, 27346i, -1i), global4[_wgslsmith_index_u32(u_input.b, 4u)]), Struct_2(1556f, vec3<i32>(u_input.c.x, -34698i, u_input.c.x), global4[_wgslsmith_index_u32(23754u, 4u)])))).x)), vec3<i32>(-2147483647i, -2147483647i, _wgslsmith_sub_i32(~u_input.c.x, i32(-1i) * -30619i)), global4[_wgslsmith_index_u32(u_input.b << (u_input.b % 32u), 4u)]), Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -259f), _wgslsmith_sub_vec3_i32(-_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(7873i, u_input.a, -12944i)), vec3<i32>(u_input.c.x, _wgslsmith_dot_vec2_i32(u_input.c, vec2<i32>(u_input.c.x, 2147483647i)), -2147483647i)), vec2<f32>(1167f, global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(select(1u, global2.x, false), 110310u), 28u)])));
    let var_1 = ~select(vec3<u32>(u_input.b, 4294967295u, u_input.b), ~(~vec3<u32>(global2.x, global2.x, 59725u)) ^ vec3<u32>(14879u, 0u, _wgslsmith_dot_vec3_u32(vec3<u32>(global2.x, 14019u, global2.x), vec3<u32>(u_input.b, 1u, 20841u))), arg_0);
    let var_2 = abs(~_wgslsmith_dot_vec4_i32(-select(vec4<i32>(var_0.b.b.x, u_input.a, u_input.c.x, u_input.c.x), vec4<i32>(var_0.b.b.x, var_0.c.b.x, 76466i, u_input.c.x), true), vec4<i32>(-var_0.a, _wgslsmith_add_i32(-5251i, 0i), -24937i, 13955i & var_0.b.b.x)));
    var var_3 = vec3<u32>(11948u, var_1.x, 0u);
    let var_4 = true;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(true, any(!vec3<bool>(any(vec2<bool>(true, false)), func_1(true, global0[_wgslsmith_index_u32(0u, 28u)]), false)), (all(vec4<bool>(false, true, true, false)) & (_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 28u)] - global0[_wgslsmith_index_u32(u_input.b, 28u)]) < -400f)) && true, !(!select(true, true, false)));
    global3 = 40903u;
    global3 = firstTrailingBit(~_wgslsmith_dot_vec4_u32(~(vec4<u32>(83302u, global2.x, global2.x, u_input.b) << (vec4<u32>(global2.x, 44107u, u_input.b, 15259u) % vec4<u32>(32u))), vec4<u32>(reverseBits(61989u), global2.x, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, global2.x), global2.xx), _wgslsmith_sub_u32(20903u, u_input.b))));
    let var_1 = var_0;
    let var_2 = var_0.x;
    let var_3 = u_input.b;
    global4 = array<vec2<f32>, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(global2.x, 1u, var_3), vec3<u32>(36822u, u_input.b, 23536u), vec3<u32>(global2.x, var_3, 13638u)) << (~vec3<u32>(103080u, var_3, var_3) % vec3<u32>(32u)), ~(~vec3<u32>(u_input.b, u_input.b, 35315u))) ^ 78716u, reverseBits(~_wgslsmith_mod_vec4_i32(vec4<i32>(-13686i, -2147483647i, u_input.c.x, 22248i), select(vec4<i32>(u_input.c.x, u_input.a, u_input.c.x, 980i), vec4<i32>(u_input.a, u_input.c.x, u_input.a, -40766i), true))), vec3<f32>(_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(0u & var_3, 28u)])), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(797f)), -456f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(global2.zz, global2.zy), 28u)]) + _wgslsmith_f_op_f32(-203f - global0[_wgslsmith_index_u32(u_input.b, 28u)]))), _wgslsmith_div_i32(u_input.c.x, 54081i));
}

