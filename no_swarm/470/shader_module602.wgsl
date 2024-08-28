struct Struct_1 {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec4<bool>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec2<f32>,
    c: vec4<i32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: bool,
    d: vec2<u32>,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<u32>,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(9452u, 6315u, 17862u, 1u);

var<private> global1: vec2<i32>;

var<private> global2: array<vec2<u32>, 28>;

var<private> global3: array<Struct_3, 10> = array<Struct_3, 10>(Struct_3(-1i, Struct_1(vec3<i32>(9830i, -1i, i32(-2147483648)), vec4<u32>(21256u, 1u, 4294967295u, 10093u), vec4<u32>(0u, 24533u, 0u, 4294967295u), vec4<bool>(true, false, false, true), vec3<u32>(1u, 27786u, 2460u)), false, vec2<u32>(1u, 1u), Struct_1(vec3<i32>(-18233i, 1i, 56990i), vec4<u32>(1u, 78504u, 1u, 1u), vec4<u32>(1u, 26521u, 27974u, 4294967295u), vec4<bool>(false, false, false, false), vec3<u32>(53890u, 37872u, 32982u))), Struct_3(-11944i, Struct_1(vec3<i32>(-17466i, 2147483647i, i32(-2147483648)), vec4<u32>(0u, 76443u, 5372u, 4294967295u), vec4<u32>(0u, 71794u, 62716u, 7581u), vec4<bool>(true, true, true, true), vec3<u32>(0u, 19224u, 4294967295u)), true, vec2<u32>(15193u, 1u), Struct_1(vec3<i32>(1i, 2147483647i, -1i), vec4<u32>(25955u, 45651u, 0u, 4294967295u), vec4<u32>(1u, 4294967295u, 7428u, 4294967295u), vec4<bool>(true, false, true, true), vec3<u32>(44104u, 0u, 0u))), Struct_3(0i, Struct_1(vec3<i32>(-44571i, -1i, -15216i), vec4<u32>(1u, 1u, 0u, 80737u), vec4<u32>(1u, 4294967295u, 4294967295u, 0u), vec4<bool>(true, true, false, true), vec3<u32>(19963u, 1u, 35246u)), true, vec2<u32>(27327u, 39001u), Struct_1(vec3<i32>(-10685i, 2147483647i, i32(-2147483648)), vec4<u32>(45126u, 35286u, 1u, 6614u), vec4<u32>(10633u, 1u, 0u, 4294967295u), vec4<bool>(true, false, false, false), vec3<u32>(12887u, 1u, 4294967295u))), Struct_3(0i, Struct_1(vec3<i32>(-242i, 19248i, -1i), vec4<u32>(4294967295u, 78029u, 0u, 4294967295u), vec4<u32>(11072u, 1u, 1u, 1u), vec4<bool>(false, true, true, true), vec3<u32>(1u, 30376u, 49463u)), true, vec2<u32>(0u, 22906u), Struct_1(vec3<i32>(-1i, 0i, -1i), vec4<u32>(0u, 1u, 34245u, 0u), vec4<u32>(4294967295u, 9660u, 3408u, 0u), vec4<bool>(false, false, false, false), vec3<u32>(4294967295u, 37755u, 14764u))), Struct_3(-1i, Struct_1(vec3<i32>(i32(-2147483648), -21545i, -28458i), vec4<u32>(1u, 1u, 1516u, 22836u), vec4<u32>(0u, 1u, 6585u, 4294967295u), vec4<bool>(false, true, false, true), vec3<u32>(0u, 2035u, 1u)), true, vec2<u32>(133991u, 68972u), Struct_1(vec3<i32>(2147483647i, -21840i, -43073i), vec4<u32>(4294967295u, 5940u, 44557u, 1u), vec4<u32>(20135u, 4294967295u, 4294967295u, 4294967295u), vec4<bool>(true, true, false, true), vec3<u32>(28804u, 1u, 0u))), Struct_3(1i, Struct_1(vec3<i32>(27145i, -1i, 113028i), vec4<u32>(4294967295u, 1u, 1774u, 0u), vec4<u32>(76543u, 1u, 4294967295u, 486u), vec4<bool>(true, false, true, true), vec3<u32>(1u, 4294967295u, 22814u)), false, vec2<u32>(70880u, 1u), Struct_1(vec3<i32>(-14590i, 20856i, -1i), vec4<u32>(51071u, 0u, 4294967295u, 1u), vec4<u32>(73073u, 36821u, 8445u, 1u), vec4<bool>(true, true, true, false), vec3<u32>(4294967295u, 4294967295u, 0u))), Struct_3(37499i, Struct_1(vec3<i32>(-10369i, 1i, 77364i), vec4<u32>(12326u, 37874u, 61590u, 42046u), vec4<u32>(72133u, 1u, 4294967295u, 59439u), vec4<bool>(true, true, false, false), vec3<u32>(0u, 0u, 33484u)), true, vec2<u32>(1u, 4294967295u), Struct_1(vec3<i32>(0i, i32(-2147483648), -26545i), vec4<u32>(1u, 72899u, 114322u, 0u), vec4<u32>(1u, 4294967295u, 0u, 4294967295u), vec4<bool>(true, false, true, true), vec3<u32>(0u, 119693u, 51071u))), Struct_3(-17642i, Struct_1(vec3<i32>(16435i, 2147483647i, -39042i), vec4<u32>(1u, 17675u, 0u, 4294967295u), vec4<u32>(1u, 74704u, 8616u, 18861u), vec4<bool>(false, false, false, false), vec3<u32>(0u, 4294967295u, 0u)), false, vec2<u32>(41631u, 0u), Struct_1(vec3<i32>(-50175i, 2147483647i, -15739i), vec4<u32>(0u, 1u, 1u, 4294967295u), vec4<u32>(33718u, 69644u, 4294967295u, 0u), vec4<bool>(true, true, false, false), vec3<u32>(54203u, 16618u, 1u))), Struct_3(2147483647i, Struct_1(vec3<i32>(-67559i, 1i, -28784i), vec4<u32>(68451u, 57497u, 4294967295u, 4294967295u), vec4<u32>(42567u, 22654u, 0u, 1u), vec4<bool>(false, false, true, true), vec3<u32>(130u, 1u, 4294967295u)), false, vec2<u32>(39255u, 56171u), Struct_1(vec3<i32>(-36504i, 29707i, 1i), vec4<u32>(1u, 4294967295u, 31714u, 1u), vec4<u32>(0u, 4294967295u, 0u, 40709u), vec4<bool>(true, true, true, true), vec3<u32>(52971u, 15683u, 0u))), Struct_3(-22668i, Struct_1(vec3<i32>(-1i, 22679i, 1i), vec4<u32>(1u, 4294967295u, 48430u, 0u), vec4<u32>(8021u, 20442u, 17243u, 95209u), vec4<bool>(true, false, true, false), vec3<u32>(4294967295u, 4294967295u, 50745u)), false, vec2<u32>(61543u, 16555u), Struct_1(vec3<i32>(1i, 41305i, i32(-2147483648)), vec4<u32>(1u, 34910u, 1u, 4690u), vec4<u32>(53655u, 0u, 4294967295u, 0u), vec4<bool>(true, true, true, false), vec3<u32>(0u, 0u, 5906u))));

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: vec3<f32>) -> f32 {
    global0 = ~(~firstTrailingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_0, u_input.a.x, 1u, 23466u), select(vec4<u32>(1u, u_input.e.x, arg_0, 1690u), vec4<u32>(arg_0, 4294967295u, arg_0, global0.x), arg_1.a.x))));
    let var_0 = !all(arg_1.a);
    let var_1 = 1u;
    var var_2 = arg_0 ^ ~u_input.d;
    global3 = array<Struct_3, 10>();
    return 574f;
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1) -> i32 {
    global0 = ~vec4<u32>(~46553u, ~firstLeadingBit(~u_input.b), global0.x, _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(arg_1.c.x, arg_1.e.x, 0u, u_input.e.x), arg_1.b), arg_1.c) >> (_wgslsmith_clamp_u32(global0.x, 4294967295u, 0u) % 32u));
    let var_0 = -321f;
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(func_3(arg_1.e.x, Struct_2(!(!arg_1.d.zxz), vec2<f32>(1146f, var_0), _wgslsmith_mod_vec4_i32(-vec4<i32>(global1.x, -25522i, arg_1.a.x, global1.x), vec4<i32>(arg_1.a.x, global1.x, global1.x, 13889i) << (vec4<u32>(arg_1.c.x, 8940u, u_input.c.x, 37808u) % vec4<u32>(32u)))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1009f, -239f, arg_0.x)))))))), 396f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(354f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 + arg_0.x)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) - _wgslsmith_div_f32(-1029f, 502f)) - _wgslsmith_f_op_f32(-var_0))));
    return -global1.x;
}

fn func_2() -> Struct_3 {
    var var_0 = vec4<i32>(global1.x, func_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_3(u_input.d, Struct_2(vec3<bool>(true, true, true), vec2<f32>(330f, 710f), vec4<i32>(global1.x, 18736i, global1.x, 38705i)), vec3<f32>(545f, 118f, -975f))), _wgslsmith_f_op_f32(f32(-1f) * -341f), _wgslsmith_f_op_f32(select(1317f, -582f, false))) - vec3<f32>(_wgslsmith_f_op_f32(-596f + 787f), -799f, 1f)), Struct_1(vec3<i32>(global1.x ^ global1.x, 1i, global1.x), ~firstTrailingBit(vec4<u32>(global0.x, global0.x, 35179u, 4294967295u)), vec4<u32>(~u_input.e.x, 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 4294967295u), u_input.e.zy), ~61434u), vec4<bool>(true, true, true, true), u_input.e)), abs(global1.x), 8071i);
    let var_1 = 0u;
    var var_2 = Struct_2(select(select(vec3<bool>(any(vec3<bool>(false, false, true)), true, any(vec2<bool>(false, true))), vec3<bool>(false, true, false), vec3<bool>(true, all(vec2<bool>(false, false)), true)), !select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), false), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), !select(vec3<bool>(true, true, false), select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true)), vec3<bool>(true, false, true))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-814f, _wgslsmith_f_op_f32(f32(-1f) * -229f)) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-420f, -353f))))))), ~max(~(~vec4<i32>(1i, 0i, var_0.x, global1.x)), _wgslsmith_mod_vec4_i32(select(vec4<i32>(global1.x, -564i, -1i, global1.x), vec4<i32>(0i, -42874i, global1.x, 14636i), false), vec4<i32>(var_0.x, 2147483647i, global1.x, 2147483647i))));
    let var_3 = Struct_3(10563i, Struct_1(~((var_2.c.yzw ^ var_0.wxz) ^ firstLeadingBit(var_2.c.yxy)), select(vec4<u32>(_wgslsmith_dot_vec2_u32(global0.yw, global2[_wgslsmith_index_u32(u_input.c.x, 28u)]), _wgslsmith_add_u32(32321u, 1u), ~global0.x, 0u), firstLeadingBit(~vec4<u32>(u_input.a.x, global0.x, 1u, u_input.b)), all(!vec3<bool>(false, var_2.a.x, var_2.a.x))), countOneBits(min(vec4<u32>(u_input.b, global0.x, 1u, 4294967295u), ~vec4<u32>(global0.x, 77782u, global0.x, global0.x))), vec4<bool>(any(select(vec4<bool>(true, var_2.a.x, true, var_2.a.x), vec4<bool>(true, var_2.a.x, var_2.a.x, var_2.a.x), var_2.a.x)), all(!vec4<bool>(true, var_2.a.x, var_2.a.x, var_2.a.x)), select(var_2.a.x, var_2.a.x, var_2.a.x) != var_2.a.x, select(!var_2.a.x, global1.x > 2147483647i, var_2.a.x)), firstLeadingBit(vec3<u32>(83602u, 0u >> (u_input.d % 32u), u_input.e.x))), !var_2.a.x, ~max(u_input.c, firstTrailingBit(global0.xz >> (global2[_wgslsmith_index_u32(global0.x, 28u)] % vec2<u32>(32u)))), Struct_1(firstLeadingBit(firstLeadingBit(_wgslsmith_mult_vec3_i32(var_0.yxy, var_0.zwy))), ~(~(~vec4<u32>(var_1, 1u, var_1, global0.x))), vec4<u32>(73878u, abs(0u), abs(u_input.d), ~36247u), vec4<bool>(all(vec4<bool>(var_2.a.x, var_2.a.x, var_2.a.x, var_2.a.x)), false, any(vec2<bool>(var_2.a.x, var_2.a.x)), var_2.a.x), select(vec3<u32>(~4294967295u, 4294967295u, 4294967295u), global0.yyz, true)));
    global0 = countOneBits(_wgslsmith_div_vec4_u32(vec4<u32>(~(var_3.b.c.x & global0.x), global0.x, 4294967295u, _wgslsmith_clamp_u32(46843u, countOneBits(21587u), 1u)), vec4<u32>(abs(~var_3.e.b.x), _wgslsmith_dot_vec3_u32(vec3<u32>(9465u, global0.x, 4294967295u) >> (vec3<u32>(var_3.e.b.x, 4294967295u, var_3.b.e.x) % vec3<u32>(32u)), var_3.b.b.yxz), ~_wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, 60242u, var_3.b.c.x), u_input.e), global0.x)));
    return Struct_3(global1.x, Struct_1(abs(vec3<i32>(global1.x, _wgslsmith_clamp_i32(global1.x, global1.x, 64611i), 0i)), vec4<u32>(_wgslsmith_clamp_u32(13893u, 110891u, global0.x) << (select(4294967295u, var_1, var_2.a.x) % 32u), 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_1, 23022u), global2[_wgslsmith_index_u32(var_3.b.b.x, 28u)]) & global0.x, var_1), vec4<u32>(~(~4294967295u), _wgslsmith_sub_u32(var_3.b.b.x, 6604u), countOneBits(~0u), var_3.e.e.x), !select(var_3.b.d, !var_3.e.d, false), vec3<u32>(var_1, ~4294967295u & global0.x, ~(~var_1))), 165f < var_2.b.x, _wgslsmith_add_vec2_u32(u_input.a, ~vec2<u32>(~4294967295u, global0.x)), Struct_1(abs(-(var_3.e.a & vec3<i32>(var_3.a, 6897i, 2147483647i))), _wgslsmith_add_vec4_u32(var_3.b.b, var_3.e.b), var_3.b.b, var_3.b.d, ~(vec3<u32>(global0.x, global0.x, 2422u) & _wgslsmith_mod_vec3_u32(global0.yyy, var_3.b.c.xwy))));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_4, arg_2: Struct_4) -> Struct_2 {
    var var_0 = !select(!vec2<bool>(arg_2.a.b.d.x, true), !arg_2.a.e.d.zz, _wgslsmith_div_f32(-398f, _wgslsmith_f_op_f32(-arg_0.b.x)) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.b.x))));
    var var_1 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1000f, _wgslsmith_f_op_f32(-471f - _wgslsmith_f_op_f32(arg_0.b.x + _wgslsmith_f_op_f32(max(arg_0.b.x, arg_0.b.x)))), 1421f)));
    global2 = array<vec2<u32>, 28>();
    let var_2 = _wgslsmith_div_vec4_u32(vec4<u32>(~arg_2.a.b.b.x ^ ~u_input.a.x, global0.x, 0u, 4294967295u), vec4<u32>(_wgslsmith_mod_u32(u_input.d, 28288u) & 4294967295u, ~31764u, firstTrailingBit(~26093u), arg_1.a.e.c.x)) & arg_2.a.b.b;
    var var_3 = func_2();
    return Struct_2(vec3<bool>(!var_0.x, !(!(!var_0.x)), select(true, any(select(vec4<bool>(false, arg_2.a.c, false, true), var_3.b.d, vec4<bool>(arg_1.a.e.d.x, arg_2.a.e.d.x, var_3.e.d.x, var_0.x))), !(true == var_3.c))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_3(arg_1.a.d.x, Struct_2(arg_2.a.b.d.wyw, vec2<f32>(1439f, var_1.x), vec4<i32>(global1.x, arg_2.a.e.a.x, -9034i, global1.x)), vec3<f32>(arg_0.b.x, var_1.x, -1695f))), _wgslsmith_f_op_f32(-442f * 717f)))), ~(-(_wgslsmith_div_vec4_i32(vec4<i32>(arg_2.a.a, var_3.b.a.x, 21554i, var_3.b.a.x), vec4<i32>(arg_0.c.x, 3615i, 33297i, global1.x)) >> (var_2 % vec4<u32>(32u)))));
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_3, arg_2: Struct_2) -> Struct_4 {
    var var_0 = arg_2;
    global3 = array<Struct_3, 10>();
    var var_1 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(194f + func_1(Struct_2(var_0.a, arg_0.xx, var_0.c), Struct_4(global3[_wgslsmith_index_u32(arg_1.e.c.x, 10u)]), Struct_4(Struct_3(2147483647i, arg_1.b, var_0.a.x, vec2<u32>(4294967295u, arg_1.e.c.x), arg_1.e))).b.x), arg_0.x) + arg_0.yy)));
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.b.x, var_0.b.x), vec2<f32>(arg_2.b.x, arg_0.x)) + arg_0.yx))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(min(-992f, arg_0.x)), _wgslsmith_f_op_f32(var_0.b.x * var_0.b.x)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(-397f, var_0.b.x) * vec2<f32>(-772f, var_1.x)))))), arg_2.a.yy)));
    let var_2 = Struct_4(func_2());
    return Struct_4(func_2());
}

fn func_6(arg_0: Struct_4, arg_1: bool, arg_2: vec3<f32>, arg_3: vec4<f32>) -> vec2<i32> {
    let var_0 = func_2();
    global1 = ~(arg_0.a.e.a.zy & arg_0.a.e.a.yy) ^ var_0.e.a.zz;
    global2 = array<vec2<u32>, 28>();
    let var_1 = _wgslsmith_f_op_f32(func_1(func_1(Struct_2(vec3<bool>(var_0.b.d.x, false, false), vec2<f32>(arg_3.x, 791f), _wgslsmith_mult_vec4_i32(vec4<i32>(-79086i, -30107i, var_0.b.a.x, arg_0.a.a), vec4<i32>(var_0.a, var_0.a, -17018i, 1i))), Struct_4(global3[_wgslsmith_index_u32(~16542u, 10u)]), Struct_4(func_5(arg_2, Struct_3(global1.x, Struct_1(arg_0.a.b.a, var_0.b.b, vec4<u32>(u_input.b, global0.x, arg_0.a.d.x, arg_0.a.b.c.x), vec4<bool>(var_0.b.d.x, false, true, arg_1), vec3<u32>(global0.x, var_0.b.e.x, 4294967295u)), true, var_0.b.b.xy, Struct_1(var_0.b.a, vec4<u32>(var_0.e.b.x, u_input.d, 1u, global0.x), vec4<u32>(0u, 0u, 0u, 1u), arg_0.a.b.d, vec3<u32>(var_0.e.e.x, 6399u, 0u))), Struct_2(var_0.e.d.yxw, vec2<f32>(416f, 386f), vec4<i32>(0i, global1.x, 1i, global1.x))).a)), arg_0, Struct_4(Struct_3(~1i, Struct_1(vec3<i32>(var_0.e.a.x, 1i, arg_0.a.e.a.x), vec4<u32>(0u, var_0.e.c.x, 0u, 37840u), vec4<u32>(global0.x, 0u, 1u, u_input.b), vec4<bool>(arg_0.a.c, false, true, true), var_0.b.c.zyx), true, var_0.e.b.ww, Struct_1(vec3<i32>(-123556i, global1.x, var_0.b.a.x), arg_0.a.b.c, var_0.e.b, vec4<bool>(arg_1, true, arg_0.a.e.d.x, arg_0.a.b.d.x), vec3<u32>(u_input.b, u_input.c.x, var_0.d.x))))).b.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(arg_2.x)))) * 172f)));
    global2 = array<vec2<u32>, 28>();
    return ~(-vec2<i32>(-49304i, firstTrailingBit(_wgslsmith_mult_i32(global1.x, var_0.e.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec2<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32((vec2<i32>(-20918i, global1.x) ^ vec2<i32>(2147483647i, 22465i)) & (vec2<i32>(-12305i, -1i) ^ vec2<i32>(global1.x, global1.x)), vec2<i32>(global1.x & global1.x, _wgslsmith_mod_i32(global1.x, 2147483647i)), vec2<i32>(1i, -1i)), func_6(func_5(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1128f, 586f, 340f) + vec3<f32>(-168f, 1606f, -807f)), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(global2[_wgslsmith_index_u32(u_input.a.x, 28u)], global2[_wgslsmith_index_u32(4294967295u, 28u)]), 10u)], func_1(Struct_2(vec3<bool>(true, false, false), vec2<f32>(-189f, 639f), vec4<i32>(49945i, 0i, -24103i, -2147483647i)), Struct_4(Struct_3(0i, Struct_1(vec3<i32>(global1.x, -1i, 0i), vec4<u32>(global0.x, u_input.e.x, 14889u, 40010u), vec4<u32>(global0.x, 33242u, u_input.a.x, 33919u), vec4<bool>(false, false, true, true), global0.zzw), false, u_input.c, Struct_1(vec3<i32>(global1.x, 2147483647i, global1.x), vec4<u32>(4534u, global0.x, 9200u, 1u), vec4<u32>(1u, 990u, 4294967295u, global0.x), vec4<bool>(true, false, true, false), vec3<u32>(u_input.a.x, 4294967295u, 1u)))), Struct_4(global3[_wgslsmith_index_u32(0u, 10u)]))), true, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -159f), -1771f, _wgslsmith_f_op_f32(min(-1355f, 452f))), vec4<f32>(_wgslsmith_f_op_f32(-290f - -681f), _wgslsmith_f_op_f32(1105f * 937f), -137f, _wgslsmith_f_op_f32(abs(-1985f))))), firstTrailingBit(global1.x));
    let var_0 = u_input.b;
    let var_1 = func_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, func_1(func_1(Struct_2(vec3<bool>(true, true, true), vec2<f32>(1027f, 1522f), vec4<i32>(global1.x, -2147483647i, global1.x, -2147483647i)), Struct_4(global3[_wgslsmith_index_u32(u_input.c.x, 10u)]), Struct_4(Struct_3(1i, Struct_1(vec3<i32>(global1.x, 2052i, global1.x), vec4<u32>(0u, global0.x, 4294967295u, 10904u), vec4<u32>(var_0, 30013u, 84377u, 12332u), vec4<bool>(true, true, true, false), vec3<u32>(117133u, 4294967295u, var_0)), true, global2[_wgslsmith_index_u32(var_0, 28u)], Struct_1(vec3<i32>(global1.x, global1.x, 1i), vec4<u32>(u_input.a.x, u_input.e.x, 0u, u_input.c.x), vec4<u32>(u_input.d, global0.x, var_0, 35169u), vec4<bool>(false, true, true, false), global0.xxy)))), Struct_4(Struct_3(global1.x, Struct_1(vec3<i32>(46481i, -107691i, 2147483647i), vec4<u32>(u_input.d, global0.x, u_input.e.x, 29600u), vec4<u32>(u_input.d, 0u, 47456u, global0.x), vec4<bool>(true, false, false, false), vec3<u32>(u_input.c.x, 1u, global0.x)), true, global2[_wgslsmith_index_u32(var_0, 28u)], Struct_1(vec3<i32>(global1.x, global1.x, global1.x), vec4<u32>(4294967295u, 36363u, var_0, u_input.e.x), vec4<u32>(1u, global0.x, 65240u, 43371u), vec4<bool>(true, true, false, false), u_input.e))), func_5(vec3<f32>(1945f, -1275f, -1327f), global3[_wgslsmith_index_u32(global0.x, 10u)], Struct_2(vec3<bool>(false, false, false), vec2<f32>(-1094f, -1000f), vec4<i32>(1981i, global1.x, 18097i, 8471i)))).b.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-3147f, 136f)))), func_2(), func_1(Struct_2(vec3<bool>(false, false, true), _wgslsmith_div_vec2_f32(func_1(Struct_2(vec3<bool>(false, false, true), vec2<f32>(-305f, -819f), vec4<i32>(global1.x, global1.x, -1i, 2147483647i)), Struct_4(global3[_wgslsmith_index_u32(44207u, 10u)]), Struct_4(global3[_wgslsmith_index_u32(1u, 10u)])).b, vec2<f32>(179f, -1043f)), ~(-vec4<i32>(global1.x, global1.x, -1i, global1.x))), func_5(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1279f), -1219f, -664f), func_5(_wgslsmith_f_op_vec3_f32(vec3<f32>(679f, 854f, -1000f) * vec3<f32>(424f, -411f, -217f)), Struct_3(global1.x, Struct_1(vec3<i32>(global1.x, global1.x, global1.x), vec4<u32>(4294967295u, u_input.c.x, 14215u, 46533u), vec4<u32>(6383u, 7200u, u_input.a.x, 0u), vec4<bool>(false, false, false, false), vec3<u32>(0u, 4294967295u, u_input.a.x)), false, vec2<u32>(39562u, 4294967295u), Struct_1(vec3<i32>(global1.x, global1.x, global1.x), vec4<u32>(1u, 34467u, 22473u, global0.x), vec4<u32>(u_input.a.x, 0u, var_0, 25928u), vec4<bool>(true, true, false, false), vec3<u32>(global0.x, var_0, 27406u))), func_1(Struct_2(vec3<bool>(true, true, false), vec2<f32>(1238f, -233f), vec4<i32>(global1.x, global1.x, global1.x, global1.x)), Struct_4(Struct_3(global1.x, Struct_1(vec3<i32>(global1.x, global1.x, 14662i), vec4<u32>(var_0, var_0, var_0, u_input.c.x), vec4<u32>(1242u, u_input.b, 0u, 44062u), vec4<bool>(true, true, false, true), vec3<u32>(global0.x, var_0, 9044u)), false, u_input.e.zz, Struct_1(vec3<i32>(-5789i, 3932i, global1.x), vec4<u32>(4294967295u, u_input.d, u_input.d, 1u), vec4<u32>(12372u, var_0, 111308u, global0.x), vec4<bool>(true, true, false, false), vec3<u32>(4294967295u, 1u, global0.x)))), Struct_4(global3[_wgslsmith_index_u32(global0.x, 10u)]))).a, func_1(func_1(Struct_2(vec3<bool>(false, true, false), vec2<f32>(-1637f, -1290f), vec4<i32>(0i, 1i, global1.x, 68792i)), Struct_4(Struct_3(global1.x, Struct_1(vec3<i32>(global1.x, global1.x, global1.x), vec4<u32>(7179u, var_0, 0u, 0u), vec4<u32>(4294967295u, global0.x, var_0, var_0), vec4<bool>(true, false, true, false), vec3<u32>(1u, global0.x, 4294967295u)), true, global0.yw, Struct_1(vec3<i32>(0i, 1035i, -2147483647i), vec4<u32>(1u, 0u, 0u, u_input.a.x), vec4<u32>(var_0, 1u, global0.x, global0.x), vec4<bool>(false, false, true, true), vec3<u32>(1u, var_0, global0.x)))), Struct_4(global3[_wgslsmith_index_u32(u_input.e.x, 10u)])), Struct_4(global3[_wgslsmith_index_u32(0u, 10u)]), Struct_4(global3[_wgslsmith_index_u32(u_input.e.x, 10u)]))), Struct_4(global3[_wgslsmith_index_u32(firstLeadingBit(u_input.a.x), 10u)]))).a.b;
    let var_2 = !all(var_1.d.wyz);
    var var_3 = !var_1.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-996f)) * _wgslsmith_f_op_f32(311f - 911f)), -1862f)))), _wgslsmith_mult_u32(func_5(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(829f, 1585f, 1952f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(333f, 367f, 461f))), func_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1368f, 200f, 638f)), Struct_3(global1.x, var_1, true, global2[_wgslsmith_index_u32(global0.x, 28u)], Struct_1(vec3<i32>(var_1.a.x, var_1.a.x, global1.x), vec4<u32>(u_input.b, 65475u, u_input.c.x, var_1.b.x), var_1.b, vec4<bool>(false, var_1.d.x, true, false), global0.wzz)), Struct_2(vec3<bool>(true, false, var_1.d.x), vec2<f32>(279f, -941f), vec4<i32>(var_1.a.x, var_1.a.x, 2147483647i, -7998i))).a, Struct_2(!var_1.d.xww, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-134f, 1166f)), vec4<i32>(global1.x, 4135i, global1.x, 2147483647i))).a.e.b.x, ~1283u));
}

