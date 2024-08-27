struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec4<i32>,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: u32,
    d: i32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 20> = array<vec2<bool>, 20>(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false));

var<private> global1: array<Struct_3, 18> = array<Struct_3, 18>(Struct_3(vec3<u32>(4294967295u, 32760u, 14028u)), Struct_3(vec3<u32>(22388u, 44249u, 21293u)), Struct_3(vec3<u32>(1u, 1u, 1u)), Struct_3(vec3<u32>(55543u, 4834u, 1u)), Struct_3(vec3<u32>(4294967295u, 0u, 41018u)), Struct_3(vec3<u32>(53294u, 4294967295u, 5410u)), Struct_3(vec3<u32>(0u, 840u, 19834u)), Struct_3(vec3<u32>(49641u, 58082u, 91276u)), Struct_3(vec3<u32>(27060u, 4294967295u, 37678u)), Struct_3(vec3<u32>(10329u, 11851u, 79692u)), Struct_3(vec3<u32>(49858u, 56291u, 0u)), Struct_3(vec3<u32>(0u, 20278u, 21617u)), Struct_3(vec3<u32>(8143u, 0u, 4294967295u)), Struct_3(vec3<u32>(20268u, 38917u, 38078u)), Struct_3(vec3<u32>(0u, 1u, 27728u)), Struct_3(vec3<u32>(0u, 4294967295u, 36681u)), Struct_3(vec3<u32>(2043u, 1u, 0u)), Struct_3(vec3<u32>(488u, 4294967295u, 4294967295u)));

var<private> global2: Struct_4;

var<private> global3: array<Struct_4, 14> = array<Struct_4, 14>(Struct_4(vec3<u32>(47534u, 4294967295u, 1u), vec4<i32>(43739i, -5256i, 99276i, 2147483647i)), Struct_4(vec3<u32>(59591u, 51640u, 1u), vec4<i32>(-1i, 6793i, 0i, 1i)), Struct_4(vec3<u32>(1u, 1u, 4294967295u), vec4<i32>(-1i, -1i, 3924i, -54534i)), Struct_4(vec3<u32>(33070u, 0u, 80538u), vec4<i32>(-13503i, 2147483647i, -1i, -41479i)), Struct_4(vec3<u32>(0u, 13040u, 15009u), vec4<i32>(-22015i, 0i, i32(-2147483648), -1i)), Struct_4(vec3<u32>(4294967295u, 30566u, 10670u), vec4<i32>(1i, -7538i, 0i, i32(-2147483648))), Struct_4(vec3<u32>(61153u, 20714u, 66u), vec4<i32>(i32(-2147483648), -14610i, 10382i, 222i)), Struct_4(vec3<u32>(101689u, 0u, 0u), vec4<i32>(i32(-2147483648), -1i, -38907i, 2147483647i)), Struct_4(vec3<u32>(32971u, 4294967295u, 0u), vec4<i32>(-1i, 32216i, -27019i, -52893i)), Struct_4(vec3<u32>(0u, 38344u, 0u), vec4<i32>(1i, 1i, 2147483647i, -16151i)), Struct_4(vec3<u32>(72734u, 4294967295u, 108054u), vec4<i32>(1i, 1i, 18949i, i32(-2147483648))), Struct_4(vec3<u32>(29973u, 1u, 0u), vec4<i32>(2147483647i, 1i, i32(-2147483648), 0i)), Struct_4(vec3<u32>(29589u, 59293u, 0u), vec4<i32>(61621i, 2147483647i, 27645i, 24432i)), Struct_4(vec3<u32>(0u, 0u, 4294967295u), vec4<i32>(-1220i, -26817i, -15395i, 2147483647i)));

var<private> global4: vec4<u32> = vec4<u32>(59639u, 70569u, 0u, 12672u);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec2<u32>) -> u32 {
    var var_0 = Struct_4(_wgslsmith_div_vec3_u32(~vec3<u32>(arg_0.x, 1u, u_input.a.x), vec3<u32>(~1u, ~(arg_0.x << (u_input.a.x % 32u)), select(1u, 94946u >> (arg_0.x % 32u), 15070i >= global2.b.x))), (vec4<i32>(2147483647i, _wgslsmith_dot_vec2_i32(global2.b.wz, vec2<i32>(-37587i, global2.b.x)), max(global2.b.x, -63466i), _wgslsmith_clamp_i32(global2.b.x, 47354i, 10192i)) ^ _wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, -30347i, 22071i, 32478i), _wgslsmith_mod_vec4_i32(global2.b, global2.b))) ^ global2.b);
    let var_1 = Struct_1(global0[_wgslsmith_index_u32(0u, 20u)], global2.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1896f)) + 918f) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-982f, 507f)))))));
    global3 = array<Struct_4, 14>();
    let var_2 = global4.x;
    return (u_input.a.x ^ ~firstLeadingBit(u_input.a.x)) & _wgslsmith_sub_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(u_input.a, u_input.a), vec4<u32>(u_input.a.x, global2.a.x, u_input.a.x, arg_0.x)), ~max(u_input.a.x, 1u)), global2.a.x);
}

fn func_2(arg_0: Struct_2, arg_1: Struct_3) -> Struct_1 {
    global4 = vec4<u32>(_wgslsmith_mod_u32(~global2.a.x, 1u) | 62634u, ~(1u ^ (func_3(u_input.a.zz) >> (~4294967295u % 32u))), 34909u, min(select(countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(11072u, arg_0.b, 0u, 0u), u_input.a)), 1u, arg_0.a.a.x), ~_wgslsmith_mod_u32(1u, countOneBits(11704u))));
    let var_0 = vec2<u32>(abs(_wgslsmith_mod_u32(arg_1.a.x, ~u_input.a.x)), _wgslsmith_clamp_u32(_wgslsmith_sub_u32(~0u, ~0u), _wgslsmith_dot_vec3_u32(vec3<u32>(15618u, global2.a.x, 4294967295u), ~vec3<u32>(0u, 0u, global2.a.x)), arg_1.a.x)) ^ ~(~u_input.a.yy);
    let var_1 = false;
    let var_2 = _wgslsmith_f_op_f32(floor(-214f));
    var var_3 = 1u;
    return arg_0.a;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec4<i32>, arg_3: u32) -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0.c, arg_0.c), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c, arg_0.c))), arg_0.a));
    var var_1 = Struct_2(Struct_1(vec2<bool>(arg_1.x, 2147483647i <= ~arg_2.x), _wgslsmith_sub_i32(func_2(Struct_2(arg_0, 4294967295u, vec4<i32>(-32500i, arg_2.x, arg_2.x, arg_2.x)), global1[_wgslsmith_index_u32(u_input.a.x, 18u)]).b, 15616i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - -1277f)))), _wgslsmith_mod_u32(_wgslsmith_mod_u32(_wgslsmith_div_u32(23766u, 1u), ~_wgslsmith_sub_u32(4305u, global2.a.x)), ~(~arg_3)), _wgslsmith_mod_vec4_i32(global2.b, -arg_2));
    var var_2 = Struct_1(select(global0[_wgslsmith_index_u32(global2.a.x, 20u)], vec2<bool>(!any(vec4<bool>(true, arg_0.a.x, false, arg_0.a.x)), true), arg_0.a), var_1.c.x, arg_0.c);
    var_2 = func_2(Struct_2(var_1.a, 1u, vec4<i32>(var_1.a.b, (1i | arg_0.b) ^ -18547i, global2.b.x, -2147483647i)), Struct_3(vec3<u32>(reverseBits(26616u), 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.a.x), global2.a.xx)) << ((select(vec3<u32>(9606u, 0u, 1258u), u_input.a.xww, vec3<bool>(arg_0.a.x, var_1.a.a.x, false)) | ~vec3<u32>(1u, arg_3, 43881u)) % vec3<u32>(32u))));
    var var_3 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a.c, -1000f, var_2.c) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(2028f, 761f, -744f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(323f, var_1.a.c)), _wgslsmith_f_op_f32(exp2(var_0.x)), _wgslsmith_f_op_f32(round(var_1.a.c)))), vec3<bool>(true | arg_1.x, arg_0.c <= _wgslsmith_f_op_f32(-var_1.a.c), var_1.a.a.x)))));
    return firstLeadingBit(_wgslsmith_mod_i32(~var_2.b | -31047i, countOneBits(firstLeadingBit(firstLeadingBit(2147483647i)))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: bool) -> Struct_4 {
    var var_0 = vec2<u32>(u_input.a.x, ~(global4.x & u_input.a.x));
    global4 = u_input.a;
    let var_1 = vec3<bool>(!(~_wgslsmith_mult_i32(0i, -1i) != _wgslsmith_clamp_i32(-global2.b.x, _wgslsmith_mult_i32(global2.b.x, global2.b.x), _wgslsmith_mult_i32(arg_1.b, -2147483647i))), false, _wgslsmith_sub_i32(9782i, func_4(func_2(Struct_2(arg_1, global2.a.x, vec4<i32>(global2.b.x, 0i, 0i, -4770i)), Struct_3(global2.a)), vec3<bool>(arg_0.a.x, true, arg_3), global2.b, _wgslsmith_dot_vec3_u32(global2.a, global4.xxx))) > (~global2.b.x << (1u % 32u)));
    global3 = array<Struct_4, 14>();
    var var_2 = vec3<i32>(reverseBits(~(~(-2147483647i))), 0i, _wgslsmith_dot_vec4_i32(~firstLeadingBit(vec4<i32>(-1i, arg_1.b, -1i, arg_1.b)), max(global2.b, ~(vec4<i32>(global2.b.x, -1i, -20141i, arg_0.b) << (vec4<u32>(0u, 1u, var_0.x, 107121u) % vec4<u32>(32u))))));
    return global3[_wgslsmith_index_u32(0u, 14u)];
}

fn func_5(arg_0: Struct_1, arg_1: Struct_4) -> u32 {
    let var_0 = Struct_2(Struct_1(!(!(!vec2<bool>(false, arg_0.a.x))), _wgslsmith_add_i32(0i, select(5704i, ~arg_1.b.x, arg_0.a.x)), _wgslsmith_f_op_f32(min(1435f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1750f))))), reverseBits(_wgslsmith_clamp_u32(50864u, ~arg_1.a.x, global2.a.x & u_input.a.x)) & abs(1u), _wgslsmith_mod_vec4_i32(countOneBits(vec4<i32>(arg_1.b.x, arg_0.b, -2147483647i, -25304i)) | firstTrailingBit(arg_1.b), -vec4<i32>(arg_1.b.x, 21289i, -1i, 2147483647i)) ^ global2.b);
    var var_1 = ~global4.x;
    var_1 = ~(~(~(~37926u)));
    global1 = array<Struct_3, 18>();
    let var_2 = !arg_0.a.x;
    return ~(~abs(global4.x));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = _wgslsmith_add_vec4_u32(vec4<u32>(firstLeadingBit(func_5(Struct_1(vec2<bool>(false, true), global2.b.x, 1351f), func_1(Struct_1(vec2<bool>(true, true), global2.b.x, -1444f), Struct_1(global0[_wgslsmith_index_u32(0u, 20u)], 2147483647i, -729f), vec3<f32>(-207f, 986f, 1952f), true))), ~firstLeadingBit(_wgslsmith_add_u32(7513u, 53825u)), min(_wgslsmith_add_u32(_wgslsmith_sub_u32(17759u, global2.a.x), global4.x), 0u), _wgslsmith_clamp_u32(~(~u_input.a.x), global2.a.x, ~global2.a.x)), u_input.a);
    let var_0 = u_input.a.x;
    let var_1 = vec3<bool>(func_2(Struct_2(Struct_1(vec2<bool>(true, true), 0i, 753f), _wgslsmith_dot_vec3_u32(vec3<u32>(var_0, global2.a.x, 2661u), global2.a), -vec4<i32>(-1i, global2.b.x, global2.b.x, global2.b.x)), Struct_3(vec3<u32>(51394u, var_0, 31296u))).a.x & (global2.b.x == _wgslsmith_div_i32(global2.b.x, _wgslsmith_add_i32(global2.b.x, global2.b.x))), true, any(!(!select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), false))));
    let var_2 = Struct_2(Struct_1(select(vec2<bool>(global2.a.x == global4.x, var_1.x), !var_1.zy, true), func_2(Struct_2(Struct_1(vec2<bool>(var_1.x, false), global2.b.x, -620f), ~32376u, global2.b), global1[_wgslsmith_index_u32(global2.a.x, 18u)]).b, -1000f), _wgslsmith_mult_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 24879u), select(global2.a.xx, global4.wy, vec2<bool>(true, false))), _wgslsmith_clamp_u32(~1u, 0u >> (u_input.a.x % 32u), 15522u >> (var_0 % 32u))), global2.a.x), vec4<i32>(i32(-1i) * -1i, 1i, -firstTrailingBit(func_2(Struct_2(Struct_1(var_1.yy, global2.b.x, 139f), global2.a.x, global2.b), global1[_wgslsmith_index_u32(var_0, 18u)]).b), func_2(Struct_2(func_2(Struct_2(Struct_1(var_1.xz, global2.b.x, -778f), 0u, vec4<i32>(17533i, 18838i, 1i, global2.b.x)), Struct_3(global4.yzw)), ~31469u, global2.b), Struct_3(global2.a)).b));
    global4 = vec4<u32>(~50950u, func_1(Struct_1(!var_1.zz, ~(-1i), 1000f), func_2(var_2, global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_0, func_5(var_2.a, Struct_4(vec3<u32>(u_input.a.x, 0u, global4.x), vec4<i32>(-2147483647i, global2.b.x, -2147483647i, 14120i)))), 18u)]), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_2.a.c, -1000f, 1124f))))), true).a.x, max(_wgslsmith_dot_vec2_u32(~vec2<u32>(global4.x, 6704u) ^ global4.zw, abs(vec2<u32>(0u, 30696u) >> (global2.a.xy % vec2<u32>(32u)))), select(~(global4.x & 37313u), u_input.a.x, true)), _wgslsmith_dot_vec3_u32(~(~(~global2.a)), vec3<u32>((global2.a.x ^ var_2.b) | reverseBits(0u), func_1(Struct_1(var_1.yy, global2.b.x, 1000f), func_2(Struct_2(var_2.a, global2.a.x, vec4<i32>(global2.b.x, 0i, 0i, -16194i)), global1[_wgslsmith_index_u32(72104u, 18u)]), vec3<f32>(var_2.a.c, -749f, var_2.a.c), false).a.x, _wgslsmith_dot_vec2_u32(select(vec2<u32>(global2.a.x, u_input.a.x), vec2<u32>(var_2.b, 10218u), vec2<bool>(false, false)), ~vec2<u32>(u_input.a.x, global4.x)))));
    let var_3 = !all(select(!(!var_1.yy), select(!vec2<bool>(var_2.a.a.x, var_2.a.a.x), func_2(Struct_2(Struct_1(vec2<bool>(var_2.a.a.x, true), global2.b.x, 1267f), 64193u, vec4<i32>(global2.b.x, global2.b.x, global2.b.x, -18432i)), Struct_3(u_input.a.yww)).a, vec2<bool>(false, var_2.a.a.x)), true));
    let x = u_input.a;
    s_output = StorageBuffer(-593f, vec4<i32>(0i, var_2.a.b, global2.b.x, -1643i), ~_wgslsmith_sub_u32(func_5(Struct_1(vec2<bool>(true, var_3), var_2.a.b, 916f), global3[_wgslsmith_index_u32(1u, 14u)]), _wgslsmith_div_u32(4294967295u, 1u)), var_2.c.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-910f, -581f, var_2.a.c), vec3<f32>(var_2.a.c, -435f, var_2.a.c), false)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a.c, var_2.a.c, -927f)), true)))));
}

