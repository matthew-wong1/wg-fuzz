struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: vec2<u32>,
    d: u32,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: vec4<i32>,
    d: u32,
    e: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -489f;

var<private> global1: array<Struct_2, 27> = array<Struct_2, 27>(Struct_2(4294967295u, true, vec4<i32>(21418i, 1i, 42895i, -9970i), 4294967295u, false), Struct_2(29939u, false, vec4<i32>(-57010i, i32(-2147483648), 35378i, i32(-2147483648)), 1u, false), Struct_2(55426u, true, vec4<i32>(-3477i, -64367i, -1i, 1i), 1u, false), Struct_2(75690u, true, vec4<i32>(23668i, -12235i, 15787i, 0i), 4294967295u, false), Struct_2(4294967295u, false, vec4<i32>(2567i, 56905i, -11445i, 14510i), 60535u, true), Struct_2(1u, true, vec4<i32>(-1i, -17527i, 12583i, 5735i), 41854u, false), Struct_2(73981u, false, vec4<i32>(0i, -11918i, 0i, 34229i), 38739u, false), Struct_2(24545u, true, vec4<i32>(-1i, -55393i, -57720i, -68111i), 1u, true), Struct_2(1u, true, vec4<i32>(-54953i, 0i, -57919i, 9708i), 10344u, true), Struct_2(3513u, true, vec4<i32>(i32(-2147483648), -23253i, -163i, i32(-2147483648)), 17652u, true), Struct_2(43608u, true, vec4<i32>(0i, -13220i, -9490i, -43734i), 11344u, true), Struct_2(4633u, true, vec4<i32>(13111i, 0i, -23910i, -14679i), 1u, false), Struct_2(4294967295u, true, vec4<i32>(13515i, -49824i, -6544i, 28899i), 55374u, true), Struct_2(52138u, false, vec4<i32>(0i, 2147483647i, 2147483647i, 0i), 0u, false), Struct_2(1u, false, vec4<i32>(0i, -1i, -925i, 0i), 1u, false), Struct_2(1u, true, vec4<i32>(-21311i, -67026i, -43172i, 44428i), 4294967295u, false), Struct_2(4294967295u, true, vec4<i32>(2147483647i, i32(-2147483648), -1i, 5849i), 1u, false), Struct_2(4294967295u, false, vec4<i32>(2147483647i, -3879i, 2147483647i, -50155i), 1u, true), Struct_2(17749u, false, vec4<i32>(10550i, 2147483647i, -63469i, 1i), 84651u, true), Struct_2(57213u, true, vec4<i32>(0i, -1i, 0i, 7146i), 64791u, false), Struct_2(0u, true, vec4<i32>(-52183i, 2147483647i, 30944i, -1i), 25587u, true), Struct_2(28893u, true, vec4<i32>(2147483647i, 1i, i32(-2147483648), -45002i), 0u, true), Struct_2(45602u, true, vec4<i32>(2147483647i, 1i, 1i, i32(-2147483648)), 4294967295u, false), Struct_2(1u, true, vec4<i32>(1i, -12526i, 2147483647i, 0i), 87469u, false), Struct_2(0u, false, vec4<i32>(2147483647i, 1i, -2232i, -91008i), 0u, false), Struct_2(14191u, true, vec4<i32>(-44526i, -19198i, i32(-2147483648), -8908i), 1u, true), Struct_2(4294967295u, false, vec4<i32>(11887i, i32(-2147483648), 1i, 6565i), 38046u, false));

var<private> global2: array<vec3<f32>, 20>;

var<private> global3: array<u32, 21> = array<u32, 21>(42455u, 4294967295u, 1u, 1u, 1u, 0u, 1u, 4294967295u, 0u, 1u, 23489u, 0u, 0u, 37832u, 0u, 0u, 54122u, 1u, 0u, 0u, 45449u);

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_1(arg_0: Struct_2, arg_1: vec2<i32>) -> i32 {
    global2 = array<vec3<f32>, 20>();
    global2 = array<vec3<f32>, 20>();
    let var_0 = vec2<bool>(true, arg_0.e);
    var var_1 = !(!all(vec3<bool>(false, true && arg_0.e, false)));
    global1 = array<Struct_2, 27>();
    return u_input.c;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(134f, -731f) + vec2<f32>(1153f, 1259f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(797f, 181f), vec2<f32>(1824f, 822f), false)), !vec2<bool>(arg_1.e, false))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-317f, 1104f) * vec2<f32>(-941f, -144f))))));
    global3 = array<u32, 21>();
    var var_1 = arg_1.c.x;
    var var_2 = Struct_3(Struct_1(_wgslsmith_mult_vec3_i32(~_wgslsmith_mod_vec3_i32(arg_0.a, arg_0.a), _wgslsmith_clamp_vec3_i32(~arg_0.a, vec3<i32>(0i, 1424i, arg_0.a.x), vec3<i32>(arg_0.b, 15203i, arg_1.c.x) >> (vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(arg_0.d, 21u)], 21u)], 112821u, arg_1.a) % vec3<u32>(32u)))), -27216i, vec2<u32>(arg_0.c.x, 0u), global3[_wgslsmith_index_u32(arg_0.c.x, 21u)]), Struct_2(_wgslsmith_div_u32(firstTrailingBit(arg_0.d), _wgslsmith_div_u32(21671u, firstLeadingBit(arg_0.c.x))), !arg_1.e, reverseBits(_wgslsmith_add_vec4_i32(arg_1.c, arg_1.c)) << (~vec4<u32>(arg_0.c.x, 25324u, 5494u, arg_1.a) % vec4<u32>(32u)), ~select(1u, 72987u, arg_1.d <= 1u), false), Struct_1(arg_1.c.zwx, 1i, vec2<u32>(arg_0.d, _wgslsmith_sub_u32(~1u, 1u)), ~_wgslsmith_add_u32(~arg_1.a, 0u)));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1675f, _wgslsmith_f_op_f32(f32(-1f) * -174f), all(vec4<bool>(false, var_2.b.e, false, var_2.b.b)))) + 133f) - _wgslsmith_f_op_f32(max(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(786f, var_0.x)) - _wgslsmith_div_f32(var_0.x, 796f))))) + var_0.x);
    return _wgslsmith_sub_vec2_u32(arg_0.c, arg_0.c);
}

fn func_2(arg_0: u32) -> f32 {
    global1 = array<Struct_2, 27>();
    let var_0 = Struct_3(Struct_1(_wgslsmith_sub_vec3_i32(~_wgslsmith_div_vec3_i32(vec3<i32>(-16219i, u_input.c, 57076i), vec3<i32>(-6359i, u_input.a, 0i)), select(_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, u_input.b, u_input.a), vec3<i32>(u_input.c, u_input.a, u_input.d)), _wgslsmith_mult_vec3_i32(vec3<i32>(-1i, -74290i, u_input.c), vec3<i32>(2147483647i, u_input.c, u_input.b)), false)), ~16454i, abs(_wgslsmith_clamp_vec2_u32(vec2<u32>(35833u, arg_0) | vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(35814u, 21u)], 21u)], arg_0), func_3(Struct_1(vec3<i32>(-7598i, -26804i, u_input.b), -92734i, vec2<u32>(1u, global3[_wgslsmith_index_u32(18022u, 21u)]), 1u), Struct_2(arg_0, false, vec4<i32>(u_input.d, -1i, 0i, u_input.b), global3[_wgslsmith_index_u32(24206u, 21u)], false)), select(vec2<u32>(54216u, 46434u), vec2<u32>(0u, global3[_wgslsmith_index_u32(0u, 21u)]), vec2<bool>(true, false)))), _wgslsmith_dot_vec2_u32(vec2<u32>(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 21u)], 21u)], ~57467u), func_3(Struct_1(vec3<i32>(-2147483647i, u_input.a, 259i), 4755i, vec2<u32>(0u, 8809u), global3[_wgslsmith_index_u32(1u, 21u)]), Struct_2(21753u, false, vec4<i32>(2147483647i, -26353i, -14563i, 44241i), 49166u, false)))), global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 21u)], 27u)], Struct_1(_wgslsmith_add_vec3_i32(vec3<i32>(-36682i, _wgslsmith_sub_i32(u_input.b, -25139i), u_input.c), vec3<i32>(-69524i, u_input.a, 0i) | firstLeadingBit(vec3<i32>(u_input.d, 255i, u_input.a))), firstLeadingBit(~u_input.b >> (9544u % 32u)), _wgslsmith_clamp_vec2_u32((vec2<u32>(0u, arg_0) | vec2<u32>(arg_0, 8336u)) >> (~vec2<u32>(arg_0, 0u) % vec2<u32>(32u)), abs(~vec2<u32>(63045u, global3[_wgslsmith_index_u32(arg_0, 21u)])), ~firstLeadingBit(vec2<u32>(45307u, 8670u))), global3[_wgslsmith_index_u32(0u, 21u)]));
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~select(~(~0u), ~arg_0, var_0.b.b && false), ~4294967295u), 27u)];
    let var_2 = var_0.b.b;
    global2 = array<vec3<f32>, 20>();
    return 1f;
}

fn func_4(arg_0: f32) -> Struct_3 {
    let var_0 = select(!vec3<bool>(true, all(vec4<bool>(true, true, true, true)), true && any(vec3<bool>(true, false, false))), vec3<bool>(true, any(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), false), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true)))), true), vec3<bool>(!(false != select(true, true, false)), any(select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false)))), true & any(vec3<bool>(true, true, true))));
    return Struct_3(Struct_1(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, u_input.c, -2147483647i), select(firstTrailingBit(vec3<i32>(u_input.d, u_input.c, u_input.a)), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.d, -2147483647i, -3553i), vec3<i32>(36083i, u_input.b, -2147483647i), vec3<i32>(u_input.d, u_input.a, 7558i)), var_0)), _wgslsmith_sub_i32(u_input.b, firstLeadingBit(-45500i)), ~_wgslsmith_mod_vec2_u32(~vec2<u32>(global3[_wgslsmith_index_u32(4294967295u, 21u)], 83774u), vec2<u32>(1u, 1u)), ~global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(10204u, 21u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(21612u, 21u)], 21u)], global3[_wgslsmith_index_u32(30207u, 21u)]), ~vec3<u32>(1u, 1u, 0u)), 21u)]), global1[_wgslsmith_index_u32(abs(34388u), 27u)], Struct_1(_wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(0i, u_input.c, -1i), vec3<i32>(u_input.a, u_input.d, u_input.c), vec3<i32>(13323i, u_input.c, -11427i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(-399i, -2147483647i, 17010i), vec3<i32>(49475i, 13775i, u_input.c), vec3<i32>(u_input.a, -2147483647i, u_input.a))), vec3<i32>(-1i) * -vec3<i32>(-18887i, 11950i, -63495i)), 26765i | -u_input.a, _wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 21u)], 21u)], 51699u), vec2<u32>(7409u, 6163u)), max(vec2<u32>(global3[_wgslsmith_index_u32(17823u, 21u)], 4294967295u), vec2<u32>(0u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 21u)], 21u)]))) >> (select(vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(51764u, 21u)], 21u)], 48479u) ^ vec2<u32>(18385u, 1u), ~vec2<u32>(1u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 21u)], 21u)]), global3[_wgslsmith_index_u32(0u, 21u)] == global3[_wgslsmith_index_u32(1u, 21u)]) % vec2<u32>(32u)), _wgslsmith_sub_u32(4294967295u, _wgslsmith_clamp_u32(countOneBits(1u), 0u, ~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 21u)], 21u)], 21u)], 21u)], 21u)], 21u)]))));
}

fn func_5(arg_0: Struct_3, arg_1: f32) -> vec2<u32> {
    let var_0 = arg_0.b;
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(f32(-1f) * -902f)) + _wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(ceil(arg_1)))) * arg_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(928f))), arg_1);
    let var_2 = any(select(vec3<bool>(var_0.b, false, arg_0.b.e), select(select(select(vec3<bool>(false, arg_0.b.b, true), vec3<bool>(true, var_0.e, true), false), select(vec3<bool>(true, true, arg_0.b.b), vec3<bool>(var_0.b, true, arg_0.b.e), false), vec3<bool>(arg_0.b.b, false, var_0.b)), vec3<bool>(true | arg_0.b.b, !var_0.e, true), true), arg_0.b.e));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1));
    var var_3 = -2147483647i;
    return _wgslsmith_sub_vec2_u32(min(_wgslsmith_mult_vec2_u32(select(~arg_0.c.c, vec2<u32>(global3[_wgslsmith_index_u32(43880u, 21u)], 0u) >> (arg_0.a.c % vec2<u32>(32u)), !vec2<bool>(true, arg_0.b.e)), _wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(arg_0.a.c, vec2<u32>(61425u, 82676u), arg_0.c.c), abs(arg_0.c.c))), abs(func_3(func_4(var_1.x).a, func_4(arg_1).b))), max(_wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(arg_0.c.c & arg_0.c.c, arg_0.a.c), vec2<u32>(0u, 1u) | vec2<u32>(4294967295u, global3[_wgslsmith_index_u32(var_0.a, 21u)]), arg_0.c.c), arg_0.c.c));
}

fn func_6(arg_0: vec2<i32>, arg_1: Struct_1) -> Struct_1 {
    global1 = array<Struct_2, 27>();
    let var_0 = select(!(!(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)))), select(select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), select(vec3<bool>(true, true, true), vec3<bool>(true, select(false, true, true), false), true), all(vec4<bool>(any(vec4<bool>(true, true, false, true)), all(vec2<bool>(false, false)), true, true))), !select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), !select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), true), vec3<bool>(true, true, true)));
    global1 = array<Struct_2, 27>();
    let var_1 = reverseBits(~_wgslsmith_mod_u32(arg_1.c.x, func_5(func_4(-637f), 996f).x));
    global1 = array<Struct_2, 27>();
    return Struct_1(-(~arg_1.a), _wgslsmith_dot_vec4_i32(-vec4<i32>(1i, ~arg_1.b, -u_input.c, -2147483647i), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, 23319i, -8690i, 2147483647i) << (vec4<u32>(35263u, var_1, 9168u, 1u) % vec4<u32>(32u)), -vec4<i32>(1i, arg_1.a.x, 0i, arg_0.x), vec4<i32>(arg_1.b, u_input.d, arg_0.x, arg_0.x))), vec2<u32>(~(~4294967295u), _wgslsmith_dot_vec2_u32(~vec2<u32>(global3[_wgslsmith_index_u32(arg_1.c.x, 21u)], var_1), ~arg_1.c)) & vec2<u32>(~var_1 ^ arg_1.c.x, select(6583u, 35055u, var_0.x)), arg_1.d | global3[_wgslsmith_index_u32(func_4(-692f).c.c.x, 21u)]);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 27>();
    var var_0 = !(!vec3<bool>(false, true, all(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)))));
    var var_1 = func_6(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.d, u_input.b), vec2<i32>(-1i) * -(~vec2<i32>(1i, 17368i))), Struct_1(min(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, u_input.b, u_input.b), vec3<i32>(-34965i, u_input.c, u_input.d)), vec3<i32>(1i, _wgslsmith_mult_i32(7575i, 17572i), func_1(Struct_2(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 21u)], 21u)], 21u)], 21u)], var_0.x, vec4<i32>(-1i, u_input.b, u_input.c, -1318i), global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 21u)], 21u)], var_0.x), vec2<i32>(u_input.d, u_input.a)))), u_input.a, func_5(func_4(_wgslsmith_f_op_f32(func_2(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 21u)], 21u)], 21u)]))), _wgslsmith_div_f32(2174f, _wgslsmith_f_op_f32(f32(-1f) * -849f))), ~(82803u << (global3[_wgslsmith_index_u32(1u, 21u)] % 32u))));
    let var_2 = func_4(-1158f).c;
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1052f, -1260f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(740f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1f)))), 1f);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_u32(var_1.c.x, 79699u), var_2.a, _wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(abs(vec4<i32>(1i, var_2.b, u_input.b, -1i) << (vec4<u32>(var_2.c.x, global3[_wgslsmith_index_u32(14283u, 21u)], global3[_wgslsmith_index_u32(var_1.c.x, 21u)], 10153u) % vec4<u32>(32u))), min(vec4<i32>(16486i, -1i, var_2.a.x, -2147483647i), vec4<i32>(var_2.b, var_2.a.x, var_2.a.x, -13046i)) ^ -vec4<i32>(u_input.a, 45741i, var_1.a.x, 3568i)), _wgslsmith_sub_vec4_i32(-(~vec4<i32>(14805i, var_1.a.x, 0i, 2147483647i)), min(countOneBits(vec4<i32>(var_1.a.x, -1i, 14104i, -21706i)), -vec4<i32>(var_1.a.x, u_input.d, var_1.a.x, 2147483647i)))), _wgslsmith_add_u32(~global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(abs(1u), var_2.c.x, abs(4294967295u)), 21u)], _wgslsmith_mult_u32(0u, 10884u)));
}

