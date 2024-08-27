struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: u32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

var<private> global1: u32;

var<private> global2: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(true, vec4<i32>(i32(-2147483648), -1i, 0i, 2428i), vec3<u32>(3133u, 5140u, 45041u)), Struct_1(true, vec4<i32>(1i, -42430i, 66i, 28299i), vec3<u32>(0u, 0u, 14535u)), Struct_1(false, vec4<i32>(-1i, 11067i, -7809i, -23595i), vec3<u32>(24865u, 43006u, 936u)), Struct_1(true, vec4<i32>(-17084i, 2147483647i, -22579i, -15161i), vec3<u32>(1u, 63282u, 0u)), Struct_1(true, vec4<i32>(-1i, 1i, -12010i, 2147483647i), vec3<u32>(11551u, 1u, 10081u)), Struct_1(false, vec4<i32>(1i, 2005i, 1136i, 0i), vec3<u32>(14692u, 16581u, 12086u)), Struct_1(true, vec4<i32>(-51767i, i32(-2147483648), -18909i, -1i), vec3<u32>(21918u, 1u, 18240u)), Struct_1(true, vec4<i32>(2147483647i, -57253i, i32(-2147483648), 2147483647i), vec3<u32>(27511u, 1u, 10221u)), Struct_1(false, vec4<i32>(2147483647i, 3322i, 2147483647i, 0i), vec3<u32>(1u, 0u, 1u)), Struct_1(false, vec4<i32>(-3551i, i32(-2147483648), -90844i, i32(-2147483648)), vec3<u32>(0u, 17244u, 50995u)), Struct_1(true, vec4<i32>(-5341i, 66891i, -7594i, -32267i), vec3<u32>(4294967295u, 84170u, 31303u)), Struct_1(true, vec4<i32>(-1i, 2147483647i, 1i, -1i), vec3<u32>(104298u, 4294967295u, 0u)), Struct_1(false, vec4<i32>(1i, 2147483647i, 4170i, 2147483647i), vec3<u32>(9691u, 0u, 41529u)), Struct_1(true, vec4<i32>(-14827i, -10654i, -1i, 9740i), vec3<u32>(2263u, 69993u, 0u)), Struct_1(true, vec4<i32>(2147483647i, 1i, i32(-2147483648), 23031i), vec3<u32>(38311u, 38574u, 12745u)), Struct_1(true, vec4<i32>(30399i, i32(-2147483648), 2147483647i, -81923i), vec3<u32>(0u, 0u, 62951u)), Struct_1(false, vec4<i32>(23857i, i32(-2147483648), -9681i, 12807i), vec3<u32>(76279u, 4294967295u, 76160u)), Struct_1(true, vec4<i32>(2147483647i, -32995i, i32(-2147483648), 2147483647i), vec3<u32>(4294967295u, 72390u, 0u)), Struct_1(false, vec4<i32>(24998i, 14710i, 17815i, -48689i), vec3<u32>(61748u, 27793u, 1u)), Struct_1(true, vec4<i32>(85823i, 1i, 24432i, 2147483647i), vec3<u32>(4294967295u, 1u, 4294967295u)), Struct_1(false, vec4<i32>(11030i, -14072i, -23542i, 1i), vec3<u32>(98110u, 0u, 27648u)), Struct_1(false, vec4<i32>(2147483647i, 2147483647i, 37655i, 53103i), vec3<u32>(18940u, 0u, 13172u)), Struct_1(false, vec4<i32>(67502i, 1i, 32617i, -12455i), vec3<u32>(0u, 38492u, 0u)), Struct_1(false, vec4<i32>(-14209i, 1i, 2147483647i, i32(-2147483648)), vec3<u32>(12230u, 1u, 37813u)), Struct_1(true, vec4<i32>(-34613i, -14588i, 28161i, 0i), vec3<u32>(28030u, 0u, 4294967295u)), Struct_1(true, vec4<i32>(12218i, 20126i, -7057i, -1i), vec3<u32>(46771u, 1u, 4294967295u)), Struct_1(false, vec4<i32>(-12705i, -6567i, 2147483647i, 44324i), vec3<u32>(17024u, 4901u, 1u)), Struct_1(false, vec4<i32>(2147483647i, -24527i, 2147483647i, 1i), vec3<u32>(5523u, 43770u, 13239u)), Struct_1(false, vec4<i32>(-39586i, -575i, i32(-2147483648), 1i), vec3<u32>(1u, 0u, 29407u)), Struct_1(false, vec4<i32>(1i, 15182i, i32(-2147483648), i32(-2147483648)), vec3<u32>(1u, 84324u, 40992u)), Struct_1(false, vec4<i32>(2147483647i, -1i, -2127i, 11915i), vec3<u32>(4294967295u, 32053u, 39461u)));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: bool, arg_3: bool) -> f32 {
    let var_0 = Struct_1(arg_2, min(~max(vec4<i32>(49241i, 36229i, arg_1.b.x, arg_1.b.x), arg_1.b), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.d, -1i, -1i, _wgslsmith_add_i32(arg_1.b.x, arg_1.b.x)), vec4<i32>(-1i) * -u_input.c)), max(arg_1.c, _wgslsmith_clamp_vec3_u32(~arg_1.c, u_input.a.yyx, select(arg_1.c, u_input.a.wzw, vec3<bool>(true, false, arg_3)))) ^ ~vec3<u32>(reverseBits(24550u), 0u, 0u));
    let var_1 = Struct_1(any(select(select(select(vec2<bool>(var_0.a, var_0.a), vec2<bool>(true, false), arg_1.a), vec2<bool>(true, true), 33840u != var_0.c.x), vec2<bool>(true, true), !arg_3)), var_0.b, var_0.c);
    global2 = array<Struct_1, 31>();
    return -882f;
}

fn func_4(arg_0: f32, arg_1: bool) -> u32 {
    global1 = 0u;
    var var_0 = global2[_wgslsmith_index_u32(1u, 31u)];
    var_0 = global2[_wgslsmith_index_u32(max(_wgslsmith_clamp_u32(select(_wgslsmith_sub_u32(u_input.e, 40518u), 8660u, select(all(vec3<bool>(false, false, arg_1)), all(vec2<bool>(true, arg_1)), all(vec2<bool>(false, true)))), abs(~1u) | u_input.e, u_input.a.x), ~u_input.e), 31u)];
    global0 = _wgslsmith_mod_u32(var_0.c.x, ~var_0.c.x);
    global1 = 11138u;
    return 47170u;
}

fn func_5(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    var var_0 = vec4<u32>(~1037u, arg_3.c.x, _wgslsmith_sub_u32(~(23841u >> ((u_input.a.x & arg_0.c.x) % 32u)), 4294967295u), arg_0.c.x);
    global0 = countOneBits(arg_0.c.x >> (~1u % 32u));
    let var_1 = select(vec3<bool>(false, any(vec2<bool>(arg_3.a, arg_3.a)), var_0.x >= ~(~2437u)), !select(vec3<bool>(all(vec2<bool>(arg_3.a, true)), true, true | arg_2.a), select(vec3<bool>(true, false, true), !vec3<bool>(false, arg_3.a, arg_2.a), select(false, false, arg_2.a)), arg_2.a), any(select(select(vec3<bool>(arg_2.a, true, true), vec3<bool>(arg_2.a, false, arg_3.a), true), vec3<bool>(true, false | arg_3.a, true), !(!vec3<bool>(arg_0.a, true, true)))));
    global1 = reverseBits(_wgslsmith_clamp_u32(reverseBits(~41449u), arg_2.c.x, u_input.e));
    global0 = select(~arg_3.c.x, _wgslsmith_dot_vec3_u32(vec3<u32>(2474u, ~4294967295u, _wgslsmith_add_u32(u_input.a.x, var_0.x)), select(~vec3<u32>(1u, var_0.x, arg_2.c.x), ~u_input.a.xxx, true)), all(select(select(vec4<bool>(var_1.x, arg_2.a, var_1.x, var_1.x), vec4<bool>(arg_2.a, arg_3.a, var_1.x, true), false), !vec4<bool>(arg_2.a, false, true, arg_2.a), !vec4<bool>(true, false, var_1.x, false)))) >> (_wgslsmith_mod_u32(var_0.x, ~58978u) % 32u);
    return var_0.x;
}

fn func_2() -> bool {
    let var_0 = _wgslsmith_div_f32(1616f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * -557f) - _wgslsmith_f_op_f32(1595f * 272f))))));
    let var_1 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(func_5(Struct_1(true, _wgslsmith_mult_vec4_i32(vec4<i32>(40479i, 1i, u_input.d, u_input.d), ~vec4<i32>(u_input.d, u_input.b.x, 0i, -40173i)), ~u_input.a.xyy), vec2<i32>(u_input.d, _wgslsmith_sub_i32(1i, ~u_input.d)), global2[_wgslsmith_index_u32(66768u ^ func_4(_wgslsmith_f_op_f32(func_3(u_input.a.x, Struct_1(true, u_input.c, vec3<u32>(59641u, 1u, u_input.a.x)), false, true)), true), 31u)], global2[_wgslsmith_index_u32(~abs(_wgslsmith_sub_u32(u_input.e, u_input.e)), 31u)]), ~(~(~(~u_input.a.x)))), 31u)];
    var var_2 = u_input.c;
    let var_3 = u_input.d;
    global0 = firstLeadingBit(firstTrailingBit(4294967295u) & ~1u);
    return var_1.a;
}

fn func_6(arg_0: bool, arg_1: vec2<bool>) -> bool {
    var var_0 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~_wgslsmith_mod_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.e, 0u, 7574u), u_input.a.ywx), u_input.a.zxz), u_input.a.wzx), 31u)];
    var var_1 = Struct_1(var_0.a, _wgslsmith_sub_vec4_i32(firstTrailingBit(-vec4<i32>(u_input.b.x, -60986i, -2147483647i, -2147483647i)), _wgslsmith_mult_vec4_i32(min(~vec4<i32>(u_input.d, var_0.b.x, 2147483647i, -2147483647i), -var_0.b), vec4<i32>(0i, -47349i << (1u % 32u), -1i, u_input.c.x))), ~_wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.a.x, var_0.c.x, 4294967295u), vec3<u32>(1u, var_0.c.x, 4989u), u_input.a.xwy & vec3<u32>(u_input.a.x, 42704u, 1u)), var_0.c));
    var_1 = global2[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(select(_wgslsmith_div_u32(_wgslsmith_mod_u32(44814u, 101332u), 12953u & var_0.c.x), _wgslsmith_mod_u32(var_1.c.x, reverseBits(46807u)), var_1.a), _wgslsmith_add_u32(~17115u, 0u), var_1.c.x), 31u)];
    var_0 = Struct_1(false, ~select(vec4<i32>(9418i, 5769i, _wgslsmith_clamp_i32(-2147483647i, -5680i, 35296i), u_input.d), _wgslsmith_sub_vec4_i32(~var_0.b, vec4<i32>(-1i, u_input.b.x, var_0.b.x, var_0.b.x)), firstTrailingBit(var_1.b.x) > firstLeadingBit(2147483647i)), firstLeadingBit(countOneBits(select(var_0.c, var_0.c, vec3<bool>(var_1.a, arg_0, true)))) ^ ~_wgslsmith_clamp_vec3_u32(vec3<u32>(32790u, 38094u, var_1.c.x), vec3<u32>(0u, var_1.c.x, var_1.c.x), abs(vec3<u32>(30381u, 0u, 48003u))));
    let var_2 = Struct_1(all(!vec2<bool>(true, arg_1.x)), firstLeadingBit(_wgslsmith_mod_vec4_i32(var_1.b, ~u_input.c)), vec3<u32>(u_input.a.x, 0u, _wgslsmith_sub_u32(u_input.a.x, 19083u)) & ~(_wgslsmith_clamp_vec3_u32(u_input.a.zwy, vec3<u32>(var_0.c.x, 27104u, 1u), vec3<u32>(var_0.c.x, 760u, 68753u)) << (vec3<u32>(u_input.e, 4294967295u, 1u) % vec3<u32>(32u))));
    return arg_0;
}

fn func_1(arg_0: vec3<f32>) -> f32 {
    global1 = select(u_input.e, u_input.e, !func_6(!func_2(), vec2<bool>(true, true)));
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.x)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(-141f * -1533f)), arg_0.x))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1068f, arg_0.x)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.yy - vec2<f32>(arg_0.x, arg_0.x)) * _wgslsmith_f_op_vec2_f32(-arg_0.yx)))));
    global1 = ~(u_input.e << (_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(u_input.a, vec4<u32>(69520u, 4294967295u, u_input.a.x, 1u) >> (vec4<u32>(u_input.e, u_input.a.x, 8517u, 4294967295u) % vec4<u32>(32u))), vec4<u32>(0u, u_input.e, ~u_input.a.x, ~u_input.a.x)) % 32u));
    global1 = ~(~u_input.e);
    global1 = 0u;
    return arg_0.x;
}

fn func_7(arg_0: bool, arg_1: bool, arg_2: vec4<f32>, arg_3: Struct_1) -> Struct_1 {
    global2 = array<Struct_1, 31>();
    let var_0 = Struct_1(any(select(!select(vec3<bool>(arg_1, arg_0, arg_1), vec3<bool>(true, arg_1, false), vec3<bool>(false, arg_0, arg_1)), vec3<bool>(all(vec3<bool>(arg_3.a, true, false)), arg_1, func_2()), vec3<bool>(true, select(false, true, arg_1), arg_2.x == arg_2.x))), vec4<i32>(_wgslsmith_sub_i32(firstLeadingBit(abs(27790i)), u_input.d >> (~1u % 32u)), arg_3.b.x, _wgslsmith_dot_vec3_i32(reverseBits(arg_3.b.xxy), select(firstLeadingBit(arg_3.b.yxw), countOneBits(arg_3.b.yxy), arg_3.a)), -_wgslsmith_mult_i32(~8264i, i32(-1i) * -1i)), ~u_input.a.zww);
    global1 = arg_3.c.x;
    let var_1 = var_0;
    let var_2 = _wgslsmith_f_op_f32(arg_2.x * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -286f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)) * arg_2.x), _wgslsmith_add_u32(~u_input.a.x, 53669u) <= var_0.c.x)));
    return Struct_1(!(!any(vec3<bool>(true, true, false))), u_input.c, _wgslsmith_add_vec3_u32(abs(vec3<u32>(reverseBits(var_0.c.x), 0u, ~arg_3.c.x)), vec3<u32>(select(_wgslsmith_sub_u32(18201u, arg_3.c.x), ~0u, all(vec2<bool>(var_1.a, false))), reverseBits(92079u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, u_input.e), u_input.a.zww))));
}

fn func_8(arg_0: Struct_1, arg_1: Struct_1) -> StorageBuffer {
    var var_0 = global2[_wgslsmith_index_u32(~64223u & _wgslsmith_clamp_u32(~51369u, 33822u, countOneBits(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e, 4294967295u), arg_0.c.xx))), 31u)];
    let var_1 = -abs(firstLeadingBit(vec3<i32>(~(-1i), ~2147483647i, ~2147483647i)));
    var var_2 = func_7(!select(!func_7(var_0.a, true, vec4<f32>(666f, -112f, -1334f, -156f), Struct_1(false, u_input.c, arg_0.c)).a, any(vec3<bool>(var_0.a, true, arg_1.a)), false), true, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(177f, 1831f, -2075f, 1312f))) + vec4<f32>(1365f, -1127f, -954f, 395f))))), arg_0);
    var_2 = arg_0;
    let var_3 = 1u;
    return StorageBuffer(reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(firstLeadingBit(-14668i), 17056i, _wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(0i, var_0.b.x, var_1.x, 1i))), abs(vec3<i32>(var_0.b.x, 34136i, -2147483647i)))), var_0.c, u_input.c, arg_1.c.x, vec4<f32>(585f, _wgslsmith_f_op_f32(func_3(abs(1198u), func_7(true, var_2.a, vec4<f32>(-447f, 226f, 705f, 1050f), Struct_1(true, u_input.c, arg_0.c)), true, func_2())), 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(arg_1.c.x, Struct_1(true, vec4<i32>(arg_1.b.x, u_input.d, var_2.b.x, 0i), vec3<u32>(21766u, 69228u, u_input.e)), arg_1.a, true))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-620f, 290f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstTrailingBit(~u_input.e);
    let var_1 = u_input.a;
    let x = u_input.a;
    s_output = func_8(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~var_1, ~u_input.a), 31u)], func_7(1i != u_input.d, all(select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false)), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true)), vec3<bool>(true, true, true))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2355f) + _wgslsmith_f_op_f32(func_1(vec3<f32>(263f, 903f, 107f)))), 131f, 1256f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1586f)))), Struct_1(!(u_input.c.x >= 0i), u_input.c, u_input.a.xyx)));
}

