struct Struct_1 {
    a: vec3<u32>,
    b: vec4<u32>,
    c: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 25> = array<vec3<u32>, 25>(vec3<u32>(10487u, 13694u, 1u), vec3<u32>(37278u, 52431u, 0u), vec3<u32>(49940u, 4294967295u, 106413u), vec3<u32>(59174u, 34438u, 71493u), vec3<u32>(35261u, 21970u, 4294967295u), vec3<u32>(20094u, 0u, 59797u), vec3<u32>(0u, 26760u, 53318u), vec3<u32>(0u, 10348u, 4294967295u), vec3<u32>(41776u, 35981u, 1463u), vec3<u32>(5459u, 1u, 45013u), vec3<u32>(14008u, 0u, 6460u), vec3<u32>(4294967295u, 1u, 4294967295u), vec3<u32>(45191u, 0u, 17448u), vec3<u32>(0u, 20420u, 4294967295u), vec3<u32>(9258u, 4294967295u, 55299u), vec3<u32>(14845u, 2318u, 4294967295u), vec3<u32>(19497u, 34321u, 4294967295u), vec3<u32>(80832u, 48471u, 4294967295u), vec3<u32>(50491u, 24800u, 29599u), vec3<u32>(4294967295u, 0u, 74386u), vec3<u32>(39382u, 44305u, 0u), vec3<u32>(11362u, 1u, 1u), vec3<u32>(0u, 46719u, 4294967295u), vec3<u32>(22553u, 123910u, 4294967295u), vec3<u32>(26244u, 1194u, 49046u));

var<private> global1: array<Struct_1, 5>;

var<private> global2: array<u32, 29> = array<u32, 29>(8930u, 0u, 22229u, 54464u, 74892u, 4294967295u, 40090u, 0u, 16865u, 47922u, 4294967295u, 32311u, 1u, 0u, 15079u, 1636u, 0u, 0u, 5913u, 8788u, 43001u, 78134u, 64838u, 30457u, 4294967295u, 54323u, 9205u, 35449u, 0u);

var<private> global3: i32;

var<private> global4: array<f32, 10>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec2<bool> {
    var var_0 = Struct_1(firstTrailingBit(vec3<u32>(global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(1u, 29u)], 0u, 46207u, 1u), u_input.a), 29u)], u_input.a.x, _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, u_input.a.x, global2[_wgslsmith_index_u32(44505u, 29u)]), vec3<u32>(1u, 4294967295u, u_input.c)))), _wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(u_input.a, min(_wgslsmith_add_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(u_input.c, 29u)], 4294967295u, 1u, u_input.a.x), u_input.a), _wgslsmith_mod_vec4_u32(vec4<u32>(46898u, 19782u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(51979u, 29u)], 29u)], 4294967295u), vec4<u32>(1u, u_input.c, u_input.a.x, 5723u)))), ~min(u_input.a, u_input.a)), -38831i);
    var var_1 = ~vec3<i32>(-2147483647i, countOneBits(reverseBits(var_0.c)), var_0.c << (78471u % 32u));
    global2 = array<u32, 29>();
    var var_2 = Struct_1(_wgslsmith_mod_vec3_u32(var_0.b.zxw, _wgslsmith_clamp_vec3_u32(global0[_wgslsmith_index_u32(44789u, 25u)], vec3<u32>(60714u, var_0.b.x, var_0.a.x), _wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.b.x, var_0.b.x, u_input.c), vec3<u32>(global2[_wgslsmith_index_u32(27469u, 29u)], 9460u, 0u), vec3<u32>(var_0.b.x, var_0.b.x, 4294967295u)))) & vec3<u32>(u_input.a.x, global2[_wgslsmith_index_u32(4294967295u ^ global2[_wgslsmith_index_u32(u_input.a.x, 29u)], 29u)], global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(min(1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(18453u, 29u)], 29u)]), 29u)], ~78141u, firstLeadingBit(1u)), 29u)]), _wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(abs(vec4<u32>(4294967295u, 63178u, 19385u, var_0.a.x)), _wgslsmith_clamp_vec4_u32(reverseBits(u_input.a), ~var_0.b, var_0.b)), ~(~vec4<u32>(1u, global2[_wgslsmith_index_u32(4294967295u, 29u)], 0u, 25511u)) >> (var_0.b % vec4<u32>(32u))), -1i);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(u_input.c, 10u)] * -2291f)))));
    return vec2<bool>(false, !any(select(vec3<bool>(true, true, false), select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), all(vec2<bool>(true, false)))));
}

fn func_2(arg_0: Struct_1) -> i32 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global4[_wgslsmith_index_u32(firstTrailingBit(u_input.c) ^ _wgslsmith_div_u32(u_input.c, 0u), 10u)]))), global4[_wgslsmith_index_u32(u_input.a.x, 10u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 29u)], 10u)] - global4[_wgslsmith_index_u32(arg_0.b.x, 10u)]), global4[_wgslsmith_index_u32(arg_0.a.x, 10u)], false)))), -1358f);
    let var_1 = !select(vec2<bool>(true, true), !(!func_3()), select(vec2<bool>(true, true), vec2<bool>(true, true), _wgslsmith_f_op_f32(exp2(global4[_wgslsmith_index_u32(u_input.a.x, 10u)])) < -1668f));
    global1 = array<Struct_1, 5>();
    var_0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, _wgslsmith_f_op_f32(trunc(1818f)), -2360f, -1219f)))));
    var var_2 = Struct_1(abs(firstLeadingBit(~_wgslsmith_div_vec3_u32(arg_0.a, u_input.a.zwx))), arg_0.b, arg_0.c);
    return abs(u_input.b);
}

fn func_1(arg_0: vec3<u32>, arg_1: bool, arg_2: Struct_1, arg_3: f32) -> u32 {
    global3 = _wgslsmith_mod_i32(func_2(Struct_1(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 34890u, 23889u), vec3<u32>(u_input.a.x, arg_2.a.x, arg_0.x)), _wgslsmith_sub_vec4_u32(arg_2.b, vec4<u32>(35107u, global2[_wgslsmith_index_u32(18033u, 29u)], u_input.a.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 29u)], 29u)], 29u)])), ~arg_2.c)) >> (~firstTrailingBit(global2[_wgslsmith_index_u32(0u, 29u)]) % 32u), ~(abs(_wgslsmith_div_i32(u_input.b, -2147483647i)) << (global2[_wgslsmith_index_u32(u_input.a.x, 29u)] % 32u)));
    global3 = ~(~_wgslsmith_mod_i32(u_input.b, -4749i));
    var var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-796f, global4[_wgslsmith_index_u32(11424u, 10u)], arg_3)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(global4[_wgslsmith_index_u32(39761u, 10u)], global4[_wgslsmith_index_u32(arg_2.b.x, 10u)], arg_3) - vec3<f32>(309f, -505f, arg_3)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_3, arg_3, arg_3))), true)) - vec3<f32>(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(36996u, 10u)]), _wgslsmith_f_op_f32(trunc(140f)), -360f))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1191f, -325f, 879f) - _wgslsmith_div_vec3_f32(vec3<f32>(global4[_wgslsmith_index_u32(u_input.a.x, 10u)], -914f, 1252f), vec3<f32>(1000f, arg_3, global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_0.x, 29u)], 10u)]))))))));
    var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1203f))), arg_3, 316f) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1076f, arg_3, var_0.x))))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3, var_0.x, 507f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1008f, arg_3, -271f) - vec3<f32>(-2481f, 825f, -222f)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-955f, 865f, 1172f) * vec3<f32>(arg_3, arg_3, 1288f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(114f, 209f, var_0.x))))))));
    let var_1 = abs(max(~global2[_wgslsmith_index_u32(countOneBits(_wgslsmith_sub_u32(0u, arg_2.a.x)), 29u)], ~countOneBits(_wgslsmith_mult_u32(0u, 19696u))));
    return arg_2.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    var var_1 = Struct_1(~(~(~vec3<u32>(1u, global2[_wgslsmith_index_u32(0u, 29u)], global2[_wgslsmith_index_u32(60821u, 29u)]))), vec4<u32>(4294967295u, _wgslsmith_clamp_u32(_wgslsmith_mod_u32(global2[_wgslsmith_index_u32(13610u, 29u)] ^ global2[_wgslsmith_index_u32(16086u, 29u)], ~1u), firstTrailingBit(func_1(vec3<u32>(0u, 1u, u_input.c), var_0, global1[_wgslsmith_index_u32(u_input.c, 5u)], global4[_wgslsmith_index_u32(u_input.a.x, 10u)])), min(u_input.a.x, 10842u & u_input.a.x)), _wgslsmith_clamp_u32(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(16868u, 29u)], 29u)], u_input.a.x, ~43299u), max(1u, _wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(71511u, global2[_wgslsmith_index_u32(0u, 29u)], u_input.a.x)), select(vec3<u32>(u_input.c, 4294967295u, 65034u), u_input.a.yyz, var_0)))), -1i);
    global4 = array<f32, 10>();
    var var_2 = vec3<i32>(-53704i, firstLeadingBit(_wgslsmith_dot_vec2_i32(~(~vec2<i32>(u_input.b, -2147483647i)), vec2<i32>(u_input.b, var_1.c << (u_input.c % 32u)))), -26941i);
    global2 = array<u32, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-1417f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-916f, -292f)))), _wgslsmith_mult_i32(-43993i, ~13525i) >> ((var_1.b.x | (_wgslsmith_mult_u32(var_1.b.x, u_input.c) & 1u)) % 32u));
}

