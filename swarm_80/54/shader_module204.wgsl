struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: vec2<u32>,
    d: vec2<u32>,
    e: bool,
}

struct Struct_2 {
    a: i32,
    b: vec2<i32>,
    c: Struct_1,
    d: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: f32,
    d: f32,
    e: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(-46381i, 12838i);

var<private> global1: vec2<i32>;

var<private> global2: array<Struct_2, 28> = array<Struct_2, 28>(Struct_2(12071i, vec2<i32>(-12562i, 12816i), Struct_1(vec4<i32>(-1i, -7311i, -1i, 2147483647i), 1i, vec2<u32>(4294967295u, 51677u), vec2<u32>(24951u, 4294967295u), true), vec3<i32>(-38122i, -22262i, -23425i)), Struct_2(5892i, vec2<i32>(0i, 1i), Struct_1(vec4<i32>(2147483647i, 1i, 10545i, 8884i), 22719i, vec2<u32>(1u, 4294967295u), vec2<u32>(0u, 1u), true), vec3<i32>(3068i, i32(-2147483648), -30493i)), Struct_2(-1i, vec2<i32>(-22396i, 0i), Struct_1(vec4<i32>(-14771i, 6249i, -38496i, -46777i), 58740i, vec2<u32>(101152u, 48075u), vec2<u32>(25889u, 44102u), true), vec3<i32>(1i, i32(-2147483648), -1i)), Struct_2(2147483647i, vec2<i32>(586i, 30809i), Struct_1(vec4<i32>(-1i, -9736i, -36072i, i32(-2147483648)), i32(-2147483648), vec2<u32>(0u, 1u), vec2<u32>(1u, 8943u), false), vec3<i32>(2943i, 2233i, -39044i)), Struct_2(-18962i, vec2<i32>(-1i, -19213i), Struct_1(vec4<i32>(-2314i, 1i, -1i, 0i), 2147483647i, vec2<u32>(14251u, 11775u), vec2<u32>(51942u, 15065u), true), vec3<i32>(-51590i, -6970i, -9785i)), Struct_2(-1i, vec2<i32>(0i, 1i), Struct_1(vec4<i32>(0i, 0i, 23351i, 0i), 0i, vec2<u32>(4294967295u, 90537u), vec2<u32>(37512u, 55887u), true), vec3<i32>(i32(-2147483648), 4221i, 43396i)), Struct_2(0i, vec2<i32>(2147483647i, -1i), Struct_1(vec4<i32>(-43294i, 1i, i32(-2147483648), 2147483647i), -1i, vec2<u32>(25714u, 39719u), vec2<u32>(1u, 1055u), false), vec3<i32>(0i, 7287i, 44075i)), Struct_2(-1i, vec2<i32>(-1i, -42327i), Struct_1(vec4<i32>(i32(-2147483648), -6673i, 1i, 1i), 1i, vec2<u32>(4294967295u, 5642u), vec2<u32>(8769u, 1u), false), vec3<i32>(5858i, 29071i, 16531i)), Struct_2(-45703i, vec2<i32>(9360i, 0i), Struct_1(vec4<i32>(13848i, -65513i, 1i, 0i), -1i, vec2<u32>(47332u, 9580u), vec2<u32>(0u, 4825u), false), vec3<i32>(-72021i, 0i, 1i)), Struct_2(-1i, vec2<i32>(9132i, -1i), Struct_1(vec4<i32>(-14182i, -38543i, 0i, -8041i), 0i, vec2<u32>(29457u, 38478u), vec2<u32>(0u, 0u), false), vec3<i32>(-25704i, 14258i, 2147483647i)), Struct_2(i32(-2147483648), vec2<i32>(-17195i, 12500i), Struct_1(vec4<i32>(-1i, 19939i, -90i, 13554i), -25013i, vec2<u32>(0u, 0u), vec2<u32>(4828u, 40735u), true), vec3<i32>(2147483647i, -21828i, -1i)), Struct_2(-1i, vec2<i32>(i32(-2147483648), 1i), Struct_1(vec4<i32>(0i, 0i, 6724i, 1i), 7783i, vec2<u32>(51566u, 1u), vec2<u32>(26033u, 4294967295u), true), vec3<i32>(1i, 36119i, -47619i)), Struct_2(-1i, vec2<i32>(i32(-2147483648), -1i), Struct_1(vec4<i32>(-1i, 77964i, 0i, 2147483647i), -13063i, vec2<u32>(21737u, 1u), vec2<u32>(76643u, 56594u), true), vec3<i32>(0i, -60047i, -24660i)), Struct_2(0i, vec2<i32>(-8450i, 1i), Struct_1(vec4<i32>(i32(-2147483648), 7340i, 11664i, 21538i), -1i, vec2<u32>(46382u, 4294967295u), vec2<u32>(44563u, 7518u), true), vec3<i32>(-1i, 2147483647i, 8482i)), Struct_2(-14269i, vec2<i32>(i32(-2147483648), -30976i), Struct_1(vec4<i32>(1i, -20290i, -1i, 26555i), 14653i, vec2<u32>(8702u, 36605u), vec2<u32>(25193u, 4294967295u), false), vec3<i32>(2147483647i, 2147483647i, 57482i)), Struct_2(-37883i, vec2<i32>(0i, 28700i), Struct_1(vec4<i32>(0i, -1i, -13041i, 0i), -12147i, vec2<u32>(4294967295u, 4294967295u), vec2<u32>(35903u, 70518u), false), vec3<i32>(-8368i, 0i, 0i)), Struct_2(i32(-2147483648), vec2<i32>(2147483647i, 1i), Struct_1(vec4<i32>(-42863i, 1i, 1i, 0i), 0i, vec2<u32>(8962u, 4294967295u), vec2<u32>(1u, 1u), true), vec3<i32>(11296i, 2147483647i, 49296i)), Struct_2(13880i, vec2<i32>(2147483647i, 14006i), Struct_1(vec4<i32>(0i, i32(-2147483648), -1i, 1i), -32262i, vec2<u32>(0u, 4294967295u), vec2<u32>(0u, 0u), true), vec3<i32>(-1i, -1i, 59575i)), Struct_2(i32(-2147483648), vec2<i32>(19633i, -71968i), Struct_1(vec4<i32>(-72280i, 1i, -28880i, 4002i), 14951i, vec2<u32>(37134u, 1u), vec2<u32>(1u, 0u), true), vec3<i32>(i32(-2147483648), 1i, 1i)), Struct_2(-37874i, vec2<i32>(-3636i, i32(-2147483648)), Struct_1(vec4<i32>(-1i, 40058i, -45302i, -1i), 1i, vec2<u32>(48910u, 721u), vec2<u32>(1u, 0u), true), vec3<i32>(-1i, 8450i, 18446i)), Struct_2(2147483647i, vec2<i32>(-1i, i32(-2147483648)), Struct_1(vec4<i32>(44279i, 54624i, 61578i, -20416i), i32(-2147483648), vec2<u32>(69637u, 32296u), vec2<u32>(1u, 70972u), true), vec3<i32>(-54739i, -2219i, 0i)), Struct_2(12164i, vec2<i32>(2147483647i, -79093i), Struct_1(vec4<i32>(1i, 2147483647i, 0i, -53345i), 23457i, vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1u, 0u), false), vec3<i32>(27720i, 2318i, 41556i)), Struct_2(1i, vec2<i32>(2147483647i, -5233i), Struct_1(vec4<i32>(-7274i, i32(-2147483648), -1i, -35172i), -10659i, vec2<u32>(2351u, 1u), vec2<u32>(18971u, 17237u), true), vec3<i32>(1i, i32(-2147483648), i32(-2147483648))), Struct_2(3755i, vec2<i32>(i32(-2147483648), 26891i), Struct_1(vec4<i32>(i32(-2147483648), -1i, 5998i, -5804i), -13256i, vec2<u32>(59579u, 83624u), vec2<u32>(39838u, 63683u), true), vec3<i32>(0i, -44931i, -1i)), Struct_2(43671i, vec2<i32>(-3252i, -44939i), Struct_1(vec4<i32>(12961i, -1i, -4233i, 0i), -1i, vec2<u32>(1u, 4294967295u), vec2<u32>(0u, 41120u), false), vec3<i32>(30600i, 15852i, 9678i)), Struct_2(i32(-2147483648), vec2<i32>(7207i, -1i), Struct_1(vec4<i32>(2147483647i, -8308i, 2147483647i, -6904i), 2147483647i, vec2<u32>(23404u, 1u), vec2<u32>(0u, 47079u), false), vec3<i32>(-58630i, 0i, -72899i)), Struct_2(-1i, vec2<i32>(1i, -1i), Struct_1(vec4<i32>(-38517i, 81363i, 1i, 32673i), i32(-2147483648), vec2<u32>(63410u, 5610u), vec2<u32>(14031u, 4294967295u), false), vec3<i32>(-10227i, 1i, -1i)), Struct_2(i32(-2147483648), vec2<i32>(0i, 40321i), Struct_1(vec4<i32>(2147483647i, 1i, i32(-2147483648), 2147483647i), -21624i, vec2<u32>(44188u, 13786u), vec2<u32>(4294967295u, 55021u), false), vec3<i32>(-1i, -43603i, 2147483647i)));

var<private> global3: array<Struct_3, 11> = array<Struct_3, 11>(Struct_3(Struct_1(vec4<i32>(0i, 20217i, -12941i, 13428i), -31284i, vec2<u32>(31818u, 0u), vec2<u32>(1u, 4294967295u), true), 22814u, 137f, 1100f, true), Struct_3(Struct_1(vec4<i32>(-11561i, 2147483647i, -41356i, 1i), 1691i, vec2<u32>(0u, 0u), vec2<u32>(1u, 4294967295u), false), 5233u, 1185f, 1746f, true), Struct_3(Struct_1(vec4<i32>(-8909i, 1i, 2502i, 1i), -8421i, vec2<u32>(27561u, 4294967295u), vec2<u32>(0u, 58297u), false), 4294967295u, 814f, 240f, false), Struct_3(Struct_1(vec4<i32>(1i, 1i, -16768i, 0i), -1i, vec2<u32>(36338u, 12569u), vec2<u32>(0u, 1u), false), 4294967295u, -111f, 934f, true), Struct_3(Struct_1(vec4<i32>(i32(-2147483648), -1105i, 32692i, -39704i), 2147483647i, vec2<u32>(42737u, 59898u), vec2<u32>(79248u, 1u), true), 4294967295u, -1779f, 1460f, false), Struct_3(Struct_1(vec4<i32>(51987i, -21691i, 16015i, 82069i), -37765i, vec2<u32>(91899u, 0u), vec2<u32>(15579u, 4911u), false), 49994u, -250f, 2698f, false), Struct_3(Struct_1(vec4<i32>(-1i, -1i, i32(-2147483648), -44902i), 2147483647i, vec2<u32>(2094u, 31879u), vec2<u32>(4294967295u, 0u), false), 41100u, -728f, 1242f, true), Struct_3(Struct_1(vec4<i32>(0i, 2147483647i, -1i, 2147483647i), -1i, vec2<u32>(0u, 4294967295u), vec2<u32>(4294967295u, 1u), false), 4294967295u, -1133f, -722f, true), Struct_3(Struct_1(vec4<i32>(-31276i, 54028i, -18984i, 23885i), -22792i, vec2<u32>(4294967295u, 4294967295u), vec2<u32>(0u, 0u), true), 5659u, 1000f, -316f, true), Struct_3(Struct_1(vec4<i32>(-15680i, i32(-2147483648), 0i, 1i), 9410i, vec2<u32>(1u, 26041u), vec2<u32>(1u, 4294967295u), false), 1u, -479f, 1357f, false), Struct_3(Struct_1(vec4<i32>(-37475i, 2147483647i, 12919i, 0i), 1i, vec2<u32>(0u, 23260u), vec2<u32>(0u, 68744u), true), 10046u, -2404f, 1238f, false));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_2() -> i32 {
    global1 = -u_input.a.wz;
    global3 = array<Struct_3, 11>();
    global1 = _wgslsmith_add_vec2_i32(-u_input.a.yw, -u_input.a.xy);
    var var_0 = _wgslsmith_mod_i32(-global0.x >> (~1u % 32u), max(min(u_input.b, -1i), _wgslsmith_sub_i32(2147483647i, u_input.a.x)) << (_wgslsmith_dot_vec2_u32(~vec2<u32>(39667u, 25633u), min(vec2<u32>(4294967295u, 36489u), vec2<u32>(3365u, 10606u))) % 32u)) > (-1i | u_input.c);
    let var_1 = ~_wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 445u), vec2<u32>(4294967295u, 1u)), 71663u), firstTrailingBit(vec2<u32>(1u, 1u)));
    return i32(-1i) * -6548i;
}

fn func_3(arg_0: vec2<f32>, arg_1: f32, arg_2: f32) -> vec2<bool> {
    let var_0 = vec4<bool>(true, true, any(!select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true)), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true))), false);
    var var_1 = reverseBits(abs(~(~vec4<u32>(63107u, 49081u, 14304u, 0u))));
    var var_2 = select(!(!var_0.zxy), vec3<bool>(true, !var_0.x, any(var_0.wx)), select(var_0.wwy, select(var_0.yyy, !vec3<bool>(var_0.x, false, var_0.x), var_0.x), var_0.zyy));
    var var_3 = global2[_wgslsmith_index_u32(535u, 28u)];
    var_3 = Struct_2(-(~firstTrailingBit(-2147483647i) ^ var_3.a), vec2<i32>(1i | firstTrailingBit(global1.x), var_3.d.x), var_3.c, firstLeadingBit(vec3<i32>(i32(-1i) * -global0.x, -5703i, global1.x | ~1i)));
    return vec2<bool>(!any(var_0.zzy), false);
}

fn func_1() -> i32 {
    global3 = array<Struct_3, 11>();
    var var_0 = reverseBits(vec4<i32>(((u_input.b ^ 2147483647i) & ~(-2147483647i)) & func_2(), 0i, abs(u_input.a.x), global1.x));
    let var_1 = select(vec2<bool>(true, true), vec2<bool>(true, true), func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(554f - -1293f), _wgslsmith_f_op_f32(-302f + -365f))), -721f, -691f));
    var var_2 = -(var_0.yz | vec2<i32>(-u_input.b ^ abs(var_0.x), u_input.a.x & global1.x));
    global1 = ~abs(_wgslsmith_mult_vec2_i32(firstTrailingBit(vec2<i32>(var_2.x, 30645i) | vec2<i32>(4979i, u_input.c)), (vec2<i32>(u_input.a.x, var_0.x) ^ u_input.a.wy) << (vec2<u32>(1u, 1u) % vec2<u32>(32u))));
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c | global0.x;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-129f, -859f)))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1762f - -2280f))) + _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(421f, -116f), 580f))), _wgslsmith_f_op_f32(trunc(1f))));
    global1 = firstLeadingBit(vec2<i32>(u_input.b, countOneBits(~(-36603i))));
    var var_2 = select(!(!select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), vec4<bool>(any(vec2<bool>(true, true)), false, true, true), -516f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) - var_1)));
    let var_3 = vec4<i32>(_wgslsmith_div_i32(firstTrailingBit(-(~global1.x)), global0.x | ~global0.x), 1i, select(_wgslsmith_mod_i32(_wgslsmith_add_i32(_wgslsmith_div_i32(u_input.a.x, global1.x), u_input.c & 19805i), _wgslsmith_dot_vec4_i32(vec4<i32>(-79483i, 1i, global1.x, global1.x) & u_input.a, u_input.a)), -global1.x, var_2.x), firstLeadingBit(reverseBits(~u_input.c)));
    var_0 = func_1();
    global1 = -(select(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.c, 9048i), var_3.wy, vec2<i32>(-2147483647i, var_3.x)), _wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(var_3.zz, vec2<i32>(u_input.b, global0.x)), firstTrailingBit(u_input.a.yx)), any(select(vec4<bool>(var_2.x, true, var_2.x, var_2.x), vec4<bool>(false, var_2.x, var_2.x, var_2.x), true))) ^ (_wgslsmith_sub_vec2_i32(-vec2<i32>(u_input.c, u_input.c), var_3.xx) & max(abs(var_3.yx), u_input.a.yy & vec2<i32>(u_input.a.x, u_input.b))));
    global0 = vec2<i32>(-1i, global1.x);
    let var_4 = var_2.x;
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_div_u32(4294967295u, 1u), 1u), abs(vec2<u32>(1u, 1u))), ~select(vec2<u32>(4294967295u, 0u), reverseBits(vec2<u32>(1u, 84961u)), !var_2.x), vec2<bool>(false, !var_2.x)), 506f);
}

