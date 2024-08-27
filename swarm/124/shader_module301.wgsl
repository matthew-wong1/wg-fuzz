struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: vec3<bool>,
    e: u32,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: Struct_1,
    d: Struct_1,
    e: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<i32>,
    c: vec2<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: f32,
    d: Struct_2,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(Struct_2(-1523f, 0u, Struct_1(vec3<u32>(4294967295u, 22952u, 4294967295u), 45275u, 1i, vec3<bool>(false, false, true), 1u), Struct_1(vec3<u32>(0u, 0u, 44160u), 4294967295u, -10131i, vec3<bool>(true, false, true), 55651u), vec2<bool>(false, true)), Struct_1(vec3<u32>(2644u, 18454u, 4294967295u), 1u, i32(-2147483648), vec3<bool>(true, false, false), 18985u), -128f, Struct_2(-522f, 26939u, Struct_1(vec3<u32>(8771u, 1u, 1u), 0u, 57544i, vec3<bool>(true, false, true), 1u), Struct_1(vec3<u32>(47247u, 21073u, 20545u), 19146u, 2147483647i, vec3<bool>(true, true, false), 10638u), vec2<bool>(true, true)), Struct_2(-777f, 80706u, Struct_1(vec3<u32>(4294967295u, 0u, 52700u), 38951u, 2147483647i, vec3<bool>(true, true, false), 85768u), Struct_1(vec3<u32>(61244u, 4294967295u, 34753u), 0u, 0i, vec3<bool>(false, true, true), 0u), vec2<bool>(true, true)));

var<private> global1: array<Struct_3, 10> = array<Struct_3, 10>(Struct_3(Struct_2(1569f, 28738u, Struct_1(vec3<u32>(7373u, 13117u, 50687u), 1u, -2221i, vec3<bool>(false, false, true), 60622u), Struct_1(vec3<u32>(25731u, 22482u, 40556u), 30411u, 48834i, vec3<bool>(true, false, false), 1u), vec2<bool>(false, false)), vec4<i32>(0i, -4189i, 2147483647i, 2147483647i), vec2<i32>(97602i, -19476i)), Struct_3(Struct_2(172f, 0u, Struct_1(vec3<u32>(4294967295u, 1u, 68271u), 28615u, 2147483647i, vec3<bool>(false, true, true), 4294967295u), Struct_1(vec3<u32>(1u, 51211u, 1u), 4294967295u, 0i, vec3<bool>(false, false, false), 0u), vec2<bool>(true, true)), vec4<i32>(-1i, 1i, -17960i, -1i), vec2<i32>(29955i, -8580i)), Struct_3(Struct_2(-546f, 64304u, Struct_1(vec3<u32>(1u, 21844u, 61907u), 22761u, -55396i, vec3<bool>(false, false, false), 1u), Struct_1(vec3<u32>(6161u, 4294967295u, 0u), 75095u, -13329i, vec3<bool>(true, true, false), 56852u), vec2<bool>(true, false)), vec4<i32>(7183i, 20892i, -7317i, -15562i), vec2<i32>(9789i, -5126i)), Struct_3(Struct_2(-422f, 29290u, Struct_1(vec3<u32>(72939u, 4294967295u, 32297u), 30689u, -1i, vec3<bool>(true, false, true), 9444u), Struct_1(vec3<u32>(1u, 1u, 22900u), 34670u, -57209i, vec3<bool>(true, true, true), 51775u), vec2<bool>(true, true)), vec4<i32>(-21667i, 2147483647i, 2147483647i, 1i), vec2<i32>(-1i, -13833i)), Struct_3(Struct_2(-900f, 0u, Struct_1(vec3<u32>(25026u, 1u, 54834u), 1u, 128i, vec3<bool>(true, true, false), 60468u), Struct_1(vec3<u32>(1u, 35089u, 1u), 1u, 3164i, vec3<bool>(true, false, false), 45277u), vec2<bool>(false, true)), vec4<i32>(-46390i, 2147483647i, 46433i, 19901i), vec2<i32>(70859i, 1i)), Struct_3(Struct_2(424f, 4294967295u, Struct_1(vec3<u32>(1u, 40320u, 56307u), 71928u, -18430i, vec3<bool>(false, false, false), 4294967295u), Struct_1(vec3<u32>(4294967295u, 33810u, 0u), 33058u, 5031i, vec3<bool>(true, false, true), 1u), vec2<bool>(false, false)), vec4<i32>(i32(-2147483648), 27585i, 28428i, -57737i), vec2<i32>(1i, -6310i)), Struct_3(Struct_2(-1302f, 3851u, Struct_1(vec3<u32>(22004u, 24566u, 1u), 1u, 4726i, vec3<bool>(true, false, true), 50601u), Struct_1(vec3<u32>(4294967295u, 7801u, 16639u), 1u, -1i, vec3<bool>(false, true, false), 49370u), vec2<bool>(true, true)), vec4<i32>(1i, 0i, 1i, 1i), vec2<i32>(4004i, 2147483647i)), Struct_3(Struct_2(369f, 1u, Struct_1(vec3<u32>(1u, 0u, 6u), 0u, -63309i, vec3<bool>(true, true, true), 1u), Struct_1(vec3<u32>(1u, 0u, 6551u), 0u, 25483i, vec3<bool>(true, true, false), 71556u), vec2<bool>(true, true)), vec4<i32>(19304i, i32(-2147483648), -1714i, -14511i), vec2<i32>(0i, 7754i)), Struct_3(Struct_2(-1552f, 17275u, Struct_1(vec3<u32>(60206u, 30191u, 65806u), 15649u, -1i, vec3<bool>(true, false, false), 4294967295u), Struct_1(vec3<u32>(54403u, 0u, 61669u), 1u, i32(-2147483648), vec3<bool>(true, true, false), 4604u), vec2<bool>(true, false)), vec4<i32>(i32(-2147483648), -18060i, i32(-2147483648), i32(-2147483648)), vec2<i32>(i32(-2147483648), 1i)), Struct_3(Struct_2(-640f, 4294967295u, Struct_1(vec3<u32>(0u, 51545u, 71787u), 1u, 6301i, vec3<bool>(true, false, false), 0u), Struct_1(vec3<u32>(4294967295u, 2697u, 4294967295u), 15163u, 0i, vec3<bool>(false, false, true), 4294967295u), vec2<bool>(false, false)), vec4<i32>(-1i, 2147483647i, -25117i, 1i), vec2<i32>(-6228i, 0i)));

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: bool, arg_3: u32) -> i32 {
    let var_0 = -1083f;
    global1 = array<Struct_3, 10>();
    let var_1 = global1[_wgslsmith_index_u32(1u, 10u)];
    var var_2 = vec2<i32>(-1i, 25803i);
    return ~(-(var_2.x ^ reverseBits(var_1.b.x)));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec4<f32>, arg_2: vec3<f32>) -> bool {
    let var_0 = ~max(_wgslsmith_dot_vec3_u32(~_wgslsmith_add_vec3_u32(global0.b.a, vec3<u32>(34577u, global0.e.c.a.x, u_input.a)), min(global0.a.c.a, global0.d.d.a) & global0.a.c.a), 1u);
    let var_1 = -_wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(~_wgslsmith_sub_vec4_i32(vec4<i32>(0i, 2147483647i, -1i, 34494i), vec4<i32>(global0.e.c.c, 0i, 2147483647i, -21501i)), ~(-vec4<i32>(-2147483647i, 1i, global0.a.d.c, global0.d.d.c))), vec4<i32>(global0.e.c.c, global0.a.d.c, -func_3(global0.e, vec2<i32>(global0.b.c, global0.b.c), global0.b.d.x, u_input.a), firstLeadingBit(global0.e.c.c << (u_input.a % 32u))));
    let var_2 = global0.e.d;
    let var_3 = Struct_1(vec3<u32>(firstLeadingBit(_wgslsmith_add_u32(15973u, _wgslsmith_add_u32(79870u, 27146u))), ~(~(~var_2.e)), min(70532u, ~30191u)), u_input.a, 0i, vec3<bool>(false, false, var_2.d.x), _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(var_2.a.zz, ~abs(global0.b.a.zx)), global0.d.c.a.yz));
    let var_4 = 80629u;
    return _wgslsmith_f_op_f32(-arg_0.x) != global0.a.a;
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_4, arg_2: Struct_1, arg_3: Struct_4) -> vec3<i32> {
    var var_0 = global1[_wgslsmith_index_u32(min(arg_1.e.b, 4294967295u), 10u)];
    var var_1 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(arg_3.a.a)), _wgslsmith_f_op_f32(-1147f * _wgslsmith_f_op_f32(-global0.d.a)), _wgslsmith_f_op_f32(-310f - var_0.a.a), arg_1.a.a) * vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1132f, var_0.a.a)), -142f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-182f * 960f), arg_3.d.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.c, arg_1.a.a))), _wgslsmith_f_op_f32(1737f + _wgslsmith_f_op_f32(exp2(var_0.a.a)))))));
    let var_2 = -1i;
    let var_3 = arg_2.c;
    var var_4 = -950f;
    return min(_wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(var_0.b.yxz, vec3<i32>(-9816i, 2147483647i, global0.d.d.c)) | select(var_0.b.xxw, vec3<i32>(global0.a.c.c, var_2, 2147483647i), global0.b.d.x), vec3<i32>(1i, _wgslsmith_sub_i32(39052i, -24519i), _wgslsmith_clamp_i32(var_0.a.d.c, 2147483647i, arg_3.d.c.c))), vec3<i32>(1i, var_0.a.c.c, ~var_2)) ^ vec3<i32>(-_wgslsmith_add_i32(-arg_3.e.d.c, i32(-1i) * -2147483647i), i32(-1i) * -(~global0.d.c.c), -1i);
}

fn func_1(arg_0: vec3<i32>) -> u32 {
    let var_0 = func_4(!vec4<bool>(any(global0.b.d.xy), true || global0.b.d.x, func_2(vec2<f32>(global0.a.a, -310f), vec4<f32>(-640f, global0.e.a, global0.d.a, global0.e.a), vec3<f32>(global0.d.a, global0.a.a, global0.e.a)), true), Struct_4(global0.d, global0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1136f, -1000f))), Struct_2(1455f, global0.e.c.b, global0.b, global0.d.c, vec2<bool>(false, global0.a.c.d.x)), global0.d), Struct_1(vec3<u32>(abs(58526u), global0.b.a.x, 28683u), _wgslsmith_div_u32(reverseBits(global0.a.b), global0.b.e), -69903i, !global0.d.c.d, countOneBits(u_input.a) ^ global0.d.d.a.x), Struct_4(Struct_2(global0.c, _wgslsmith_mult_u32(u_input.a, 4294967295u), Struct_1(global0.e.c.a, 6169u, global0.e.d.c, vec3<bool>(global0.d.d.d.x, global0.a.e.x, false), 4294967295u), global0.d.c, global0.e.d.d.xx), Struct_1(vec3<u32>(16441u, 1u, global0.b.e), ~4294967295u, _wgslsmith_mod_i32(2147483647i, -6310i), vec3<bool>(global0.a.e.x, global0.d.c.d.x, global0.b.d.x), ~10710u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c) - _wgslsmith_f_op_f32(-1440f - 1108f)), global0.d, Struct_2(global0.d.a, _wgslsmith_mod_u32(global0.a.b, global0.b.e), global0.d.d, Struct_1(vec3<u32>(82983u, 74180u, u_input.a), 53452u, -2147483647i, global0.e.c.d, u_input.a), !global0.a.c.d.zx))) ^ arg_0;
    var var_1 = Struct_2(global0.c, _wgslsmith_div_u32(~1u & min(firstTrailingBit(40974u), 4294967295u), ~(~2120u | _wgslsmith_dot_vec3_u32(global0.e.c.a, global0.e.d.a))), Struct_1(~global0.a.c.a, ~(u_input.a >> (_wgslsmith_dot_vec2_u32(vec2<u32>(global0.a.c.a.x, 4294967295u), global0.b.a.xz) % 32u)), firstTrailingBit(var_0.x | -arg_0.x), !select(!global0.a.d.d, global0.b.d, select(vec3<bool>(global0.d.d.d.x, global0.b.d.x, global0.d.d.d.x), global0.e.d.d, global0.b.d.x)), 50364u), Struct_1(reverseBits(~global0.a.c.a), u_input.a, -firstLeadingBit(_wgslsmith_div_i32(-38451i, 1i)), vec3<bool>(true, !global0.b.d.x, !(!global0.e.c.d.x)), 4294967295u >> (abs(global0.e.b) % 32u)), global0.d.d.d.yy);
    var var_2 = Struct_2(1000f, 4294967295u, var_1.c, global0.d.d, var_1.c.d.zx);
    let var_3 = vec3<bool>(~var_0.x >= _wgslsmith_mod_i32(1i, global0.e.d.c), true, false);
    global1 = array<Struct_3, 10>();
    return ~15008u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_4(global0.d, Struct_1(~(global0.e.d.a ^ global0.b.a), 0u, _wgslsmith_add_i32(-36364i, -(~global0.a.d.c)), !vec3<bool>(!global0.d.d.d.x, false || global0.d.e.x, !global0.e.d.d.x), func_1(_wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(global0.e.d.c, global0.a.d.c, -452i), vec3<i32>(10810i, global0.a.c.c, global0.d.d.c)), vec3<i32>(global0.e.d.c, 0i, -12550i)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f + global0.a.a) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.e.a * 1204f), global0.d.a)), global0.d.a), Struct_2(_wgslsmith_f_op_f32(-244f - -377f), min(99941u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 66466u, 93606u), global0.d.c.a)), Struct_1(global0.e.c.a, u_input.a, abs(-38498i), global0.d.c.d, abs(~4294967295u)), Struct_1(~global0.d.d.a & (vec3<u32>(global0.a.b, global0.d.c.b, u_input.a) ^ global0.d.c.a), 1465u, ~global0.b.c, vec3<bool>(false, true, all(vec4<bool>(false, false, false, false))), ~u_input.a), select(global0.a.e, global0.d.d.d.zz, global0.d.e.x)), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.e.a, 320f, true)))), ~_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(global0.e.c.a, global0.b.a, global0.b.a), global0.b.a << (global0.d.d.a % vec3<u32>(32u))), global0.b, global0.d.d, select(!(!global0.e.d.d.xx), select(select(vec2<bool>(false, true), vec2<bool>(true, global0.d.e.x), vec2<bool>(false, true)), select(vec2<bool>(global0.e.c.d.x, false), vec2<bool>(global0.b.d.x, global0.a.d.d.x), true), global0.b.d.xy), true)));
    let var_0 = _wgslsmith_mod_u32(global0.d.b, 0u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(_wgslsmith_div_u32(min(~0u, min(6717u, var_0)), 4294967295u), ~var_0), firstLeadingBit(min(_wgslsmith_dot_vec2_i32(vec2<i32>(global0.b.c, global0.b.c), vec2<i32>(57200i, 2147483647i)), global0.b.c)) ^ firstLeadingBit(global0.d.c.c));
}

