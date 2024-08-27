struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_1,
    d: vec4<u32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: f32,
    d: i32,
    e: vec4<u32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: u32,
    c: Struct_2,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: f32,
    d: vec2<i32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<i32>(-10900i, 10718i, 18311i));

var<private> global1: array<vec4<i32>, 2>;

var<private> global2: i32;

var<private> global3: array<Struct_3, 21> = array<Struct_3, 21>(Struct_3(false, Struct_1(vec3<i32>(0i, 411i, -1i)), -1000f, i32(-2147483648), vec4<u32>(1u, 29256u, 57268u, 0u)), Struct_3(true, Struct_1(vec3<i32>(i32(-2147483648), 1i, 1i)), 832f, -21823i, vec4<u32>(21832u, 0u, 59659u, 1u)), Struct_3(true, Struct_1(vec3<i32>(0i, -1i, -35427i)), 705f, 2147483647i, vec4<u32>(1u, 36219u, 4294967295u, 3023u)), Struct_3(true, Struct_1(vec3<i32>(73565i, 0i, -6509i)), -889f, 1i, vec4<u32>(44580u, 0u, 16092u, 0u)), Struct_3(true, Struct_1(vec3<i32>(96256i, 1i, -841i)), -2219f, 1i, vec4<u32>(4294967295u, 104468u, 1u, 4294967295u)), Struct_3(false, Struct_1(vec3<i32>(40588i, -10916i, -17656i)), 769f, 17803i, vec4<u32>(70613u, 40726u, 1u, 4294967295u)), Struct_3(false, Struct_1(vec3<i32>(13289i, 0i, -29931i)), 595f, 55347i, vec4<u32>(0u, 1u, 4294967295u, 149137u)), Struct_3(false, Struct_1(vec3<i32>(1i, 20328i, 57267i)), -356f, -1i, vec4<u32>(47237u, 15444u, 1u, 8428u)), Struct_3(false, Struct_1(vec3<i32>(-24350i, 84007i, 10185i)), -799f, 0i, vec4<u32>(18104u, 6524u, 13841u, 4294967295u)), Struct_3(false, Struct_1(vec3<i32>(19373i, -32746i, 26720i)), 1737f, -43790i, vec4<u32>(2482u, 4294967295u, 1u, 1u)), Struct_3(false, Struct_1(vec3<i32>(-11143i, -10133i, 1i)), -969f, -10122i, vec4<u32>(1u, 1924u, 42296u, 1u)), Struct_3(true, Struct_1(vec3<i32>(-11784i, 13362i, 0i)), 1500f, -30434i, vec4<u32>(1u, 1u, 26433u, 1u)), Struct_3(true, Struct_1(vec3<i32>(1i, -1i, i32(-2147483648))), -1006f, -1i, vec4<u32>(59438u, 1u, 4294967295u, 0u)), Struct_3(true, Struct_1(vec3<i32>(-6744i, 2147483647i, 0i)), -2163f, -22983i, vec4<u32>(1u, 13970u, 59975u, 0u)), Struct_3(false, Struct_1(vec3<i32>(0i, 4361i, -1i)), -100f, i32(-2147483648), vec4<u32>(46962u, 16026u, 4294967295u, 4294967295u)), Struct_3(false, Struct_1(vec3<i32>(7842i, 10545i, 4925i)), 734f, -3824i, vec4<u32>(1u, 4294967295u, 13593u, 0u)), Struct_3(true, Struct_1(vec3<i32>(-15947i, 0i, 0i)), 418f, 1528i, vec4<u32>(987u, 4294967295u, 66478u, 0u)), Struct_3(true, Struct_1(vec3<i32>(2147483647i, i32(-2147483648), -28608i)), 1424f, 2147483647i, vec4<u32>(34408u, 18124u, 35663u, 1u)), Struct_3(true, Struct_1(vec3<i32>(19367i, -52597i, 13027i)), -224f, -21600i, vec4<u32>(0u, 4294967295u, 60199u, 38524u)), Struct_3(true, Struct_1(vec3<i32>(1i, -1i, 63181i)), -133f, 30335i, vec4<u32>(137595u, 12346u, 0u, 1u)), Struct_3(false, Struct_1(vec3<i32>(5822i, 2147483647i, 0i)), 1618f, -1i, vec4<u32>(70816u, 1u, 3280u, 0u)));

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: u32) -> vec4<u32> {
    global0 = Struct_1(select(abs(-vec3<i32>(global0.a.x, u_input.a, global0.a.x)), ~(max(vec3<i32>(u_input.a, 30111i, u_input.a), global0.a) & select(global0.a, global0.a, true)), select(select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), true), vec3<bool>(true, true, false), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), any(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), false)))));
    global0 = Struct_1(~(-(global0.a << (vec3<u32>(53934u, arg_0, 1u) % vec3<u32>(32u))) ^ min(vec3<i32>(global0.a.x, 2147483647i, -26592i) ^ global0.a, global0.a >> (vec3<u32>(arg_0, arg_0, 1u) % vec3<u32>(32u)))));
    let var_0 = 925f;
    var var_1 = false;
    let var_2 = abs(global0.a.xx);
    return ~(~_wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(46600u, arg_0, 52682u, arg_0), vec4<u32>(arg_0, 7784u, arg_0, 35480u)) << (vec4<u32>(arg_0, arg_0, 44287u, arg_0) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_sub_u32(0u, arg_0), 72848u, arg_0 | 69405u, 49678u), ~(~vec4<u32>(arg_0, 57977u, 48940u, 6114u))));
}

fn func_2(arg_0: u32, arg_1: u32) -> Struct_2 {
    let var_0 = Struct_3(false, Struct_1(vec3<i32>(-1i) * -_wgslsmith_div_vec3_i32(global0.a, global0.a)), 1f, 39906i, select(abs(func_3(12226u)), ~vec4<u32>(arg_1, 49018u, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, 0u), vec2<u32>(arg_0, 33649u)), 12199u), !vec4<bool>(true, any(vec4<bool>(false, false, true, false)), true, false)));
    return Struct_2(var_0.b, !vec2<bool>(!(!var_0.a), false), var_0.b, firstTrailingBit(abs(vec4<u32>(arg_1, min(1u, 4294967295u), 52597u, 1u))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_3) -> Struct_2 {
    let var_0 = vec4<f32>(-225f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-548f + arg_2.c) * arg_2.c) - 130f), 694f, _wgslsmith_f_op_f32(step(1f, 177f)));
    let var_1 = Struct_1(arg_2.b.a);
    var var_2 = func_2(65363u, ~arg_1.d.x | select(arg_1.d.x, ~arg_0.d.x >> (~54763u % 32u), arg_1.b.x));
    global3 = array<Struct_3, 21>();
    let var_3 = _wgslsmith_div_vec4_i32(vec4<i32>(-(-arg_0.c.a.x << (var_2.d.x % 32u)), var_1.a.x, -1i, ~firstLeadingBit(var_2.c.a.x)), global1[_wgslsmith_index_u32(reverseBits(_wgslsmith_dot_vec3_u32(~(vec3<u32>(var_2.d.x, 29484u, var_2.d.x) ^ vec3<u32>(arg_0.d.x, var_2.d.x, 6742u)), _wgslsmith_mod_vec3_u32(vec3<u32>(0u, 0u, var_2.d.x), vec3<u32>(var_2.d.x, 1u, 4294967295u)) ^ ~vec3<u32>(0u, arg_2.e.x, 1u))), 2u)]);
    return func_2(62818u, arg_0.d.x);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: vec2<u32>) -> Struct_1 {
    return func_4(Struct_2(arg_1, vec2<bool>(!arg_0.b.x & arg_0.b.x, true), Struct_1(global0.a), _wgslsmith_mult_vec4_u32(abs(vec4<u32>(41500u, arg_2.x, arg_3.x, arg_3.x)) & vec4<u32>(arg_0.d.x, arg_3.x, 1u, 1u), arg_0.d)), func_2(1u, 129927u << (arg_0.d.x % 32u)), Struct_3(!(!select(arg_0.b.x, arg_0.b.x, arg_0.b.x)), arg_1, 1351f, u_input.a, ~(~(~arg_0.d)))).c;
}

fn func_1(arg_0: f32) -> Struct_2 {
    return Struct_2(func_5(func_4(func_2(0u, 0u), func_2(92137u << (1u % 32u), 1u), global3[_wgslsmith_index_u32(1u, 21u)]), Struct_1(~countOneBits(vec3<i32>(0i, u_input.b, global0.a.x))), _wgslsmith_div_vec2_u32(vec2<u32>(~1u, 1u), func_4(Struct_2(Struct_1(vec3<i32>(-11274i, -44133i, u_input.b)), vec2<bool>(false, false), Struct_1(vec3<i32>(1i, u_input.a, global0.a.x)), vec4<u32>(2969u, 0u, 76529u, 30805u)), Struct_2(Struct_1(global0.a), vec2<bool>(false, true), Struct_1(vec3<i32>(0i, 42610i, -2147483647i)), vec4<u32>(1u, 62393u, 4294967295u, 26995u)), Struct_3(true, Struct_1(vec3<i32>(-44397i, u_input.b, 69156i)), -771f, global0.a.x, vec4<u32>(4294967295u, 1683u, 1u, 1u))).d.yy), select(abs(~vec2<u32>(104037u, 64978u)), vec2<u32>(min(20758u, 20498u), ~0u), vec2<bool>(func_4(Struct_2(Struct_1(global0.a), vec2<bool>(true, true), Struct_1(vec3<i32>(u_input.a, 2147483647i, 11201i)), vec4<u32>(4294967295u, 4294967295u, 0u, 1u)), Struct_2(Struct_1(vec3<i32>(global0.a.x, global0.a.x, u_input.a)), vec2<bool>(true, true), Struct_1(global0.a), vec4<u32>(11998u, 23426u, 25035u, 28618u)), global3[_wgslsmith_index_u32(4294967295u, 21u)]).b.x, true))), vec2<bool>(false, any(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)))), func_4(Struct_2(Struct_1(vec3<i32>(-19906i, -2147483647i, global0.a.x) << (vec3<u32>(58724u, 0u, 46529u) % vec3<u32>(32u))), func_4(func_4(Struct_2(Struct_1(global0.a), vec2<bool>(true, true), Struct_1(vec3<i32>(0i, 13233i, u_input.a)), vec4<u32>(0u, 10019u, 4294967295u, 1u)), Struct_2(Struct_1(vec3<i32>(u_input.b, -29142i, -17512i)), vec2<bool>(false, false), Struct_1(vec3<i32>(u_input.b, u_input.a, 29119i)), vec4<u32>(1u, 1u, 21845u, 110684u)), Struct_3(false, Struct_1(vec3<i32>(global0.a.x, u_input.a, 873i)), arg_0, 13741i, vec4<u32>(16151u, 8360u, 4160u, 0u))), Struct_2(Struct_1(vec3<i32>(global0.a.x, -30632i, global0.a.x)), vec2<bool>(false, true), Struct_1(vec3<i32>(2147483647i, global0.a.x, 25236i)), vec4<u32>(32443u, 8313u, 4294967295u, 860u)), global3[_wgslsmith_index_u32(~4294967295u, 21u)]).b, Struct_1(global0.a), vec4<u32>(1u, 0u, 1u, ~35809u)), Struct_2(func_2(17515u, firstLeadingBit(1u)).a, vec2<bool>(true, global0.a.x == 1i), Struct_1(_wgslsmith_add_vec3_i32(global0.a, global0.a)), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 25159u, 6722u), vec3<u32>(16758u, 4294967295u, 49474u)), _wgslsmith_sub_u32(1u, 1u), 22226u, 1u)), Struct_3(all(vec2<bool>(true, false)) & true, func_2(1u, 31263u << (1u % 32u)).a, _wgslsmith_f_op_f32(trunc(arg_0)), u_input.a, firstLeadingBit(abs(vec4<u32>(19504u, 7451u, 44788u, 1u))))).a, _wgslsmith_clamp_vec4_u32(firstTrailingBit(~(~vec4<u32>(19754u, 49172u, 38705u, 113651u))), func_4(func_4(Struct_2(Struct_1(vec3<i32>(1i, global0.a.x, -2147483647i)), vec2<bool>(false, true), Struct_1(vec3<i32>(22529i, u_input.b, global0.a.x)), vec4<u32>(36194u, 3893u, 53824u, 74949u)), func_4(Struct_2(Struct_1(global0.a), vec2<bool>(true, false), Struct_1(vec3<i32>(global0.a.x, global0.a.x, global0.a.x)), vec4<u32>(4294967295u, 1u, 38025u, 0u)), Struct_2(Struct_1(vec3<i32>(-2147483647i, u_input.a, global0.a.x)), vec2<bool>(false, true), Struct_1(vec3<i32>(10632i, 2147483647i, -35795i)), vec4<u32>(4294967295u, 10775u, 4294967295u, 43641u)), Struct_3(true, Struct_1(global0.a), arg_0, global0.a.x, vec4<u32>(1u, 1u, 73579u, 20511u))), global3[_wgslsmith_index_u32(1u, 21u)]), Struct_2(func_4(Struct_2(Struct_1(global0.a), vec2<bool>(true, false), Struct_1(global0.a), vec4<u32>(10196u, 1586u, 67995u, 0u)), Struct_2(Struct_1(vec3<i32>(global0.a.x, 11865i, u_input.b)), vec2<bool>(false, false), Struct_1(vec3<i32>(-2147483647i, 40966i, -29799i)), vec4<u32>(73023u, 11313u, 80079u, 4294967295u)), global3[_wgslsmith_index_u32(4294967295u, 21u)]).a, vec2<bool>(true, true), Struct_1(vec3<i32>(-24491i, 27122i, 0i)), ~vec4<u32>(11112u, 49110u, 2932u, 1u)), Struct_3(true, func_2(45232u, 18663u).c, _wgslsmith_f_op_f32(1270f + -541f), ~global0.a.x, ~vec4<u32>(56704u, 20990u, 9675u, 1086u))).d, ~vec4<u32>(1u, 1u, 1u, 1u)));
}

fn func_6(arg_0: Struct_3, arg_1: vec3<f32>, arg_2: Struct_2) -> i32 {
    var var_0 = Struct_1(arg_2.a.a);
    let var_1 = Struct_4(((func_2(arg_2.d.x, arg_2.d.x).d ^ vec4<u32>(arg_0.e.x, 4294967295u, arg_2.d.x, arg_2.d.x)) ^ _wgslsmith_div_vec4_u32(vec4<u32>(29187u, 1u, 4294967295u, 0u), _wgslsmith_mult_vec4_u32(arg_0.e, vec4<u32>(1u, 0u, 65618u, 44123u)))) >> (vec4<u32>(arg_2.d.x, arg_0.e.x ^ arg_2.d.x, arg_0.e.x, ~firstLeadingBit(64934u)) % vec4<u32>(32u)), firstTrailingBit(_wgslsmith_dot_vec4_u32(func_2(arg_0.e.x, arg_2.d.x & arg_2.d.x).d, ~select(arg_0.e, vec4<u32>(15232u, 14178u, arg_0.e.x, 0u), vec4<bool>(true, arg_2.b.x, arg_0.a, false)))), arg_2, 1742u);
    var var_2 = arg_0;
    let var_3 = var_1;
    global0 = var_1.c.a;
    return ~_wgslsmith_mult_i32(global0.a.x, arg_2.c.a.x) & 0i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-1000f - -1609f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2162f * -580f) - -2830f)), -774f)));
    global1 = array<vec4<i32>, 2>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(var_0.x)), _wgslsmith_f_op_f32(-var_0.x))))))));
    global3 = array<Struct_3, 21>();
    var var_2 = func_6(global3[_wgslsmith_index_u32(6115u, 21u)], _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0), var_0))), func_1(-1000f));
    let x = u_input.a;
    s_output = StorageBuffer(max(vec3<u32>(max(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, 83218u, 502u), vec4<u32>(1u, 4294967295u, 66534u, 4294967295u))), 0u, 45986u), vec3<u32>(abs(~4294967295u), ~0u >> (1u % 32u), countOneBits(56197u))), -1000f, 1471f, global0.a.yy, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~113686u, 36869u), 2u)]);
}

