struct Struct_1 {
    a: vec3<bool>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec4<f32>,
    e: bool,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
    c: f32,
    d: vec2<u32>,
}

struct Struct_4 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<f32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 20> = array<vec4<f32>, 20>(vec4<f32>(1000f, 725f, 305f, 898f), vec4<f32>(-2183f, -1046f, -1225f, 243f), vec4<f32>(-339f, 159f, 3187f, -1680f), vec4<f32>(231f, 877f, -832f, 164f), vec4<f32>(-147f, -1020f, 1064f, -841f), vec4<f32>(363f, -1111f, -2325f, -381f), vec4<f32>(1000f, -610f, 2123f, -1092f), vec4<f32>(923f, -642f, -515f, -353f), vec4<f32>(258f, -362f, -100f, -1000f), vec4<f32>(416f, -1627f, 780f, -404f), vec4<f32>(-284f, -348f, 835f, 1547f), vec4<f32>(-1387f, 799f, 118f, 300f), vec4<f32>(1222f, -498f, 579f, 836f), vec4<f32>(-255f, 467f, -114f, -386f), vec4<f32>(-587f, 900f, -197f, 849f), vec4<f32>(-744f, 578f, 1000f, 1000f), vec4<f32>(1187f, -1000f, -289f, -2159f), vec4<f32>(1096f, 484f, 579f, 376f), vec4<f32>(957f, 613f, 1066f, 1002f), vec4<f32>(288f, 341f, -218f, -1351f));

var<private> global1: array<Struct_4, 11> = array<Struct_4, 11>(Struct_4(vec3<u32>(1u, 1u, 4294967295u)), Struct_4(vec3<u32>(71918u, 0u, 0u)), Struct_4(vec3<u32>(0u, 0u, 0u)), Struct_4(vec3<u32>(10847u, 1u, 1u)), Struct_4(vec3<u32>(66355u, 61429u, 24950u)), Struct_4(vec3<u32>(3080u, 39124u, 34399u)), Struct_4(vec3<u32>(73358u, 73682u, 81522u)), Struct_4(vec3<u32>(1u, 0u, 10691u)), Struct_4(vec3<u32>(0u, 3140u, 1u)), Struct_4(vec3<u32>(0u, 29991u, 1u)), Struct_4(vec3<u32>(4294967295u, 4294967295u, 1u)));

var<private> global2: i32;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec2<bool>) -> f32 {
    var var_0 = !(!(!select(!vec3<bool>(true, arg_0.x, arg_0.x), vec3<bool>(true, arg_0.x, false), select(vec3<bool>(false, false, arg_0.x), vec3<bool>(true, false, arg_0.x), vec3<bool>(arg_0.x, false, true)))));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, 297f)))), -907f);
    var var_2 = !(!vec4<bool>(true, true, !all(arg_0), arg_0.x));
    global1 = array<Struct_4, 11>();
    let var_3 = Struct_1(var_2.zxw, vec3<i32>(u_input.a, -u_input.a, firstLeadingBit(u_input.a)), -(~vec4<i32>(1i, ~1i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, 2147483647i, u_input.a), vec4<i32>(u_input.a, 2147483647i, u_input.a, u_input.a)), 7148i)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(0u, 20u)]))))), true);
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_3.d.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_3.d.x))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_3.d.x - -603f), _wgslsmith_f_op_f32(floor(607f)))))), -1292f));
}

fn func_2(arg_0: Struct_2) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(func_3(select(vec2<bool>(false, all(vec4<bool>(true, true, true, true))), vec2<bool>(true, true), (i32(-1i) * -23585i) == ~arg_0.a.x)));
    global0 = array<vec4<f32>, 20>();
    var var_1 = ~((~select(vec3<u32>(51307u, 29617u, 0u), vec3<u32>(21937u, 19379u, 4294967295u), false) >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u))) << (vec3<u32>(1u, ~abs(1u), ~(~13724u)) % vec3<u32>(32u)));
    var var_2 = var_1.x;
    let var_3 = Struct_3(arg_0, vec3<f32>(775f, var_0, _wgslsmith_f_op_f32(sign(var_0))), _wgslsmith_f_op_f32(sign(-356f)), _wgslsmith_div_vec2_u32(~abs(abs(vec2<u32>(var_1.x, var_1.x))), _wgslsmith_sub_vec2_u32(vec2<u32>(var_1.x | var_1.x, ~var_1.x), ~var_1.zy)));
    return _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(~(~_wgslsmith_mult_vec2_u32(var_1.xz, var_1.xz)), ~_wgslsmith_mult_vec2_u32(vec2<u32>(var_1.x, 19386u), var_3.d)), firstLeadingBit((var_3.d | ~var_1.yz) << ((vec2<u32>(var_1.x, 32451u) ^ vec2<u32>(4294967295u, var_3.d.x)) % vec2<u32>(32u))));
}

fn func_4(arg_0: vec4<u32>) -> Struct_2 {
    var var_0 = Struct_1(vec3<bool>(true, true, true), vec3<i32>(u_input.a, -41497i, -30132i), vec4<i32>(-1i, -u_input.a, _wgslsmith_clamp_i32(_wgslsmith_mult_i32(u_input.a ^ 50035i, u_input.a), u_input.a, _wgslsmith_sub_i32(_wgslsmith_add_i32(u_input.a, -3608i), reverseBits(-24874i))), min(u_input.a, 1i)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(firstTrailingBit(~4294967295u), 20u)]), _wgslsmith_f_op_vec4_f32(select(global0[_wgslsmith_index_u32(arg_0.x, 20u)], _wgslsmith_f_op_vec4_f32(-vec4<f32>(451f, -438f, -1810f, 2148f)), !select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), false)))), !(_wgslsmith_add_u32(arg_0.x, ~24207u) < arg_0.x));
    var var_1 = Struct_1(var_0.a, var_0.b, _wgslsmith_sub_vec4_i32(vec4<i32>(~27337i, var_0.c.x, _wgslsmith_add_i32(u_input.a, 2147483647i), i32(-1i) * -1i), vec4<i32>(-1i) * -var_0.c), vec4<f32>(-683f, 1132f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d.x) + 706f), _wgslsmith_f_op_f32(sign(-1228f))), ~arg_0.x > _wgslsmith_mod_u32(_wgslsmith_mult_u32(arg_0.x, _wgslsmith_add_u32(arg_0.x, arg_0.x)), countOneBits(arg_0.x)));
    var var_2 = _wgslsmith_add_vec3_u32(arg_0.xzy, arg_0.wwz | _wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(min(arg_0.wzx, vec3<u32>(1u, 51472u, arg_0.x)), vec3<u32>(60946u, arg_0.x, 28999u)), arg_0.yyz));
    var_2 = ~(~firstTrailingBit(vec3<u32>(_wgslsmith_dot_vec2_u32(arg_0.zz, vec2<u32>(0u, var_2.x)), 793u, abs(1u))));
    let var_3 = global1[_wgslsmith_index_u32(firstLeadingBit(var_2.x) & ~0u, 11u)];
    return Struct_2(_wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(~u_input.a, ~56143i), vec2<i32>(1i, firstLeadingBit(u_input.a))), var_0.b.xy));
}

fn func_1() -> Struct_4 {
    global0 = array<vec4<f32>, 20>();
    global1 = array<Struct_4, 11>();
    let var_0 = func_4(vec4<u32>(4294967295u, 17067u, ~func_2(Struct_2(vec2<i32>(u_input.a, -1350i))), ~select(_wgslsmith_div_u32(4294967295u, 87149u), _wgslsmith_dot_vec4_u32(vec4<u32>(101000u, 96055u, 0u, 38640u), vec4<u32>(18198u, 0u, 0u, 0u)), false)));
    global2 = abs(31315i | _wgslsmith_add_i32(min(_wgslsmith_mod_i32(var_0.a.x, 1i), -u_input.a), _wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.a, var_0.a.x), max(vec3<i32>(u_input.a, -1i, u_input.a), vec3<i32>(var_0.a.x, u_input.a, u_input.a)))));
    var var_1 = 1000f;
    return global1[_wgslsmith_index_u32(53259u, 11u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(62501u, _wgslsmith_mod_u32(4294967295u, select(_wgslsmith_mod_u32(4294967295u, _wgslsmith_clamp_u32(73990u, 35189u, 20261u)), 0u, true)), ~0u, 0u);
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -745f, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1329f, 1796f)))));
    var var_2 = vec2<f32>(var_1.x, -138f);
    var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(190f, var_1.x) + vec2<f32>(362f, 1231f)))))));
    let var_3 = func_1();
    let var_4 = Struct_4(vec3<u32>(~(_wgslsmith_mult_u32(var_3.a.x, var_3.a.x) ^ 0u), 31293u, 1u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(-func_4(select(vec4<u32>(var_4.a.x, var_3.a.x, var_4.a.x, var_4.a.x), vec4<u32>(var_3.a.x, var_4.a.x, 10611u, 0u), vec4<bool>(false, true, false, false))).a.x, -1i), _wgslsmith_sub_i32(1998i, _wgslsmith_sub_i32(2147483647i, -min(-36098i, u_input.a))), var_1.zz, var_3.a.x, _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(0u, var_4.a.x, var_3.a.x, var_4.a.x), countOneBits(vec4<u32>(var_4.a.x, var_3.a.x, 0u, 1u)), firstLeadingBit(vec4<u32>(var_3.a.x, 8912u, 46056u, var_4.a.x))), reverseBits(_wgslsmith_mult_vec4_u32(vec4<u32>(var_3.a.x, 4294967295u, var_3.a.x, var_4.a.x), vec4<u32>(60745u, var_4.a.x, 4294967295u, var_3.a.x)))), abs(~(~1896u))));
}

