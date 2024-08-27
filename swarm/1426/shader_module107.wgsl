struct Struct_1 {
    a: vec4<u32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(vec4<u32>(1u, 71807u, 39197u, 4294967295u), 2715f), Struct_1(vec4<u32>(23122u, 46184u, 0u, 20668u), 1000f), Struct_1(vec4<u32>(1u, 21994u, 1u, 0u), 1000f), Struct_1(vec4<u32>(53159u, 4294967295u, 4078u, 4294967295u), 1875f), Struct_1(vec4<u32>(1u, 22862u, 62828u, 1u), 228f), Struct_1(vec4<u32>(4294967295u, 3059u, 30893u, 0u), 369f), Struct_1(vec4<u32>(0u, 0u, 32157u, 0u), -939f), Struct_1(vec4<u32>(106873u, 4294967295u, 4294967295u, 1050u), 502f), Struct_1(vec4<u32>(18605u, 4294967295u, 4294967295u, 4294967295u), 1131f), Struct_1(vec4<u32>(40570u, 4038u, 1u, 0u), -545f), Struct_1(vec4<u32>(133006u, 16547u, 1781u, 0u), 1879f), Struct_1(vec4<u32>(1u, 4294967295u, 82608u, 0u), 1866f), Struct_1(vec4<u32>(20310u, 20375u, 4294967295u, 4294967295u), 638f), Struct_1(vec4<u32>(51106u, 1u, 10785u, 44156u), 912f), Struct_1(vec4<u32>(54587u, 15718u, 5295u, 5015u), -1000f), Struct_1(vec4<u32>(9390u, 66512u, 1u, 52370u), 689f), Struct_1(vec4<u32>(1u, 3220u, 1u, 15847u), -2486f), Struct_1(vec4<u32>(0u, 55131u, 4294967295u, 44157u), 1000f), Struct_1(vec4<u32>(4294967295u, 0u, 1193u, 4294967295u), 204f), Struct_1(vec4<u32>(26035u, 1u, 23328u, 39229u), -113f), Struct_1(vec4<u32>(4348u, 1u, 24286u, 571u), -928f), Struct_1(vec4<u32>(4294967295u, 207u, 18278u, 39737u), 1456f), Struct_1(vec4<u32>(48209u, 0u, 9283u, 4294967295u), 195f), Struct_1(vec4<u32>(0u, 14839u, 27881u, 28330u), -662f), Struct_1(vec4<u32>(1u, 1u, 3201u, 23215u), 740f), Struct_1(vec4<u32>(6498u, 0u, 53228u, 52076u), -530f));

var<private> global1: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(vec4<u32>(50313u, 1u, 1544u, 1u), -3238f), Struct_1(vec4<u32>(0u, 7176u, 87570u, 53974u), -565f), Struct_1(vec4<u32>(19828u, 11720u, 4294967295u, 4294967295u), -2959f), Struct_1(vec4<u32>(1u, 4294967295u, 18692u, 1u), -1338f), Struct_1(vec4<u32>(42770u, 42876u, 4294967295u, 14125u), -305f), Struct_1(vec4<u32>(4294967295u, 20367u, 4999u, 4294967295u), 1142f), Struct_1(vec4<u32>(4294967295u, 0u, 4294967295u, 12015u), -109f), Struct_1(vec4<u32>(2181u, 0u, 4294967295u, 0u), 837f), Struct_1(vec4<u32>(60746u, 4294967295u, 52874u, 892u), -2141f), Struct_1(vec4<u32>(4929u, 4023u, 46453u, 3463u), 112f), Struct_1(vec4<u32>(4294967295u, 93804u, 0u, 0u), 319f), Struct_1(vec4<u32>(4294967295u, 46746u, 33548u, 41321u), 184f), Struct_1(vec4<u32>(4294967295u, 18385u, 10973u, 46219u), -689f), Struct_1(vec4<u32>(19444u, 33985u, 4294967295u, 1u), 1273f), Struct_1(vec4<u32>(0u, 1u, 0u, 40142u), -580f), Struct_1(vec4<u32>(118693u, 30070u, 11027u, 40480u), -698f), Struct_1(vec4<u32>(1u, 55581u, 0u, 4294967295u), -1134f), Struct_1(vec4<u32>(1u, 14012u, 0u, 17946u), 1410f), Struct_1(vec4<u32>(4294967295u, 38879u, 0u, 30934u), -1000f), Struct_1(vec4<u32>(1534u, 4294967295u, 7998u, 0u), -590f), Struct_1(vec4<u32>(37764u, 1u, 4294967295u, 1u), 980f), Struct_1(vec4<u32>(4294967295u, 4294967295u, 42135u, 22498u), -368f), Struct_1(vec4<u32>(1u, 3116u, 0u, 0u), -322f), Struct_1(vec4<u32>(1u, 61739u, 73350u, 25476u), -287f), Struct_1(vec4<u32>(22204u, 17343u, 37671u, 1u), 402f), Struct_1(vec4<u32>(1u, 1u, 59844u, 69153u), 540f), Struct_1(vec4<u32>(1u, 1u, 81076u, 4294967295u), -1421f), Struct_1(vec4<u32>(0u, 46u, 62978u, 88022u), 843f), Struct_1(vec4<u32>(7215u, 38101u, 34568u, 1u), -133f), Struct_1(vec4<u32>(1u, 4294967295u, 63554u, 126068u), 759f), Struct_1(vec4<u32>(0u, 82623u, 4294967295u, 32531u), -423f));

var<private> global2: i32;

var<private> global3: array<vec4<bool>, 9> = array<vec4<bool>, 9>(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false));

var<private> global4: array<bool, 19> = array<bool, 19>(false, true, true, true, true, false, false, false, false, true, false, false, true, false, true, true, false, false, false);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_2) -> vec4<bool> {
    let var_0 = !global4[_wgslsmith_index_u32(76899u, 19u)];
    global3 = array<vec4<bool>, 9>();
    let var_1 = -584f;
    global4 = array<bool, 19>();
    var var_2 = var_0;
    return !global3[_wgslsmith_index_u32(0u, 9u)];
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec2<i32>, arg_3: vec2<f32>) -> vec2<bool> {
    let var_0 = Struct_1(arg_0.a, arg_3.x);
    var var_1 = Struct_2(var_0);
    var_1 = Struct_2(var_1.a);
    let var_2 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(abs(4294967295u), firstTrailingBit(_wgslsmith_dot_vec2_u32(~_wgslsmith_mult_vec2_u32(arg_0.a.wx, var_1.a.a.yw), countOneBits(vec2<u32>(var_0.a.x, 369u) << (var_0.a.zx % vec2<u32>(32u)))))), 31u)];
    let var_3 = !(!arg_1.wz);
    return !select(select(select(var_3, select(var_3, vec2<bool>(false, arg_1.x), var_3), func_3(var_1.a.a.wwx, Struct_2(Struct_1(var_2.a, arg_0.b))).x), arg_1.zy, vec2<bool>(global4[_wgslsmith_index_u32(abs(var_1.a.a.x), 19u)], var_3.x)), !vec2<bool>(any(vec3<bool>(false, var_3.x, true)), false), func_3(~_wgslsmith_div_vec3_u32(vec3<u32>(31985u, var_2.a.x, var_2.a.x), var_2.a.yzx), Struct_2(global1[_wgslsmith_index_u32(43652u, 31u)])).zy);
}

fn func_2(arg_0: f32) -> i32 {
    let var_0 = select(func_4(global1[_wgslsmith_index_u32(~u_input.a, 31u)], !func_3(vec3<u32>(u_input.a, 0u, u_input.a), Struct_2(global0[_wgslsmith_index_u32(4294967295u, 26u)])), vec2<i32>(-3816i, _wgslsmith_clamp_i32(0i << (u_input.a % 32u), 1i, i32(-1i) * -14485i)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-148f, arg_0))) * vec2<f32>(900f, arg_0)), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_0, arg_0)))))), vec2<bool>(!global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(83160u, u_input.a)), vec2<u32>(u_input.a, 28761u)), 19u)], true), global4[_wgslsmith_index_u32(~countOneBits(0u), 19u)]);
    let var_1 = ((i32(-1i) * -33728i) ^ u_input.b.x) >> (_wgslsmith_dot_vec4_u32(~firstTrailingBit(vec4<u32>(1u, u_input.a, u_input.a, 1u)) >> (select(min(vec4<u32>(1u, u_input.a, 4294967295u, 0u), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)), max(vec4<u32>(6890u, 4294967295u, u_input.a, 9084u), vec4<u32>(u_input.a, u_input.a, 40409u, 4294967295u)), var_0.x & var_0.x) % vec4<u32>(32u)), select(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(85650u, u_input.a, u_input.a, 3249u)), ~vec4<u32>(u_input.a, 8049u, u_input.a, u_input.a), !vec4<bool>(var_0.x, global4[_wgslsmith_index_u32(25884u, 19u)], var_0.x, false)) & vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)) % 32u);
    var var_2 = global1[_wgslsmith_index_u32(~(~(~(countOneBits(66427u) | _wgslsmith_clamp_u32(u_input.a, 48836u, 83457u)))), 31u)];
    var var_3 = ~(~countOneBits(_wgslsmith_sub_i32(u_input.b.x, _wgslsmith_sub_i32(var_1, -4196i))));
    global3 = array<vec4<bool>, 9>();
    return -29222i;
}

fn func_1(arg_0: vec3<bool>) -> i32 {
    global3 = array<vec4<bool>, 9>();
    var var_0 = _wgslsmith_mult_i32(u_input.b.x, u_input.b.x);
    let var_1 = _wgslsmith_add_vec2_i32(abs(-(_wgslsmith_div_vec2_i32(u_input.b, vec2<i32>(-44071i, u_input.b.x)) ^ select(vec2<i32>(-15222i, 2147483647i), u_input.b, arg_0.yz))), vec2<i32>(-func_2(617f), -2147483647i));
    var var_2 = _wgslsmith_f_op_f32(floor(-2091f));
    global3 = array<vec4<bool>, 9>();
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec4<bool>, 9>();
    global2 = -8079i;
    let var_0 = reverseBits(firstTrailingBit(-firstLeadingBit(-vec4<i32>(u_input.b.x, u_input.b.x, 26918i, 61880i))));
    global2 = ~_wgslsmith_dot_vec2_i32(-vec2<i32>(-u_input.b.x, func_1(vec3<bool>(true, true, true))), vec2<i32>(var_0.x, u_input.b.x));
    var var_1 = vec3<bool>(true, global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a, _wgslsmith_add_u32(8555u, ~u_input.a | reverseBits(38809u))), 19u)], -2147483647i >= max(var_0.x, abs(20106i)));
    var var_2 = Struct_1(~_wgslsmith_mult_vec4_u32(~vec4<u32>(4294967295u, 0u, 19554u, 860u), max(vec4<u32>(1u, 26841u, u_input.a, 43697u), vec4<u32>(4294967295u, 4294967295u, u_input.a, u_input.a))) >> (_wgslsmith_div_vec4_u32(~vec4<u32>(1u, u_input.a, u_input.a, u_input.a), abs(vec4<u32>(37413u, u_input.a, u_input.a, u_input.a))) % vec4<u32>(32u)), -919f);
    let var_3 = global1[_wgslsmith_index_u32(0u, 31u)];
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_sub_vec4_u32(vec4<u32>(var_2.a.x, 4294967295u, 0u, u_input.a), countOneBits(var_3.a))), u_input.a);
}

