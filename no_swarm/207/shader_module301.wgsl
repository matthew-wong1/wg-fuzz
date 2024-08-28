struct Struct_1 {
    a: f32,
    b: i32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: i32,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec4<u32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 286f;

var<private> global1: vec3<u32>;

var<private> global2: array<Struct_2, 20> = array<Struct_2, 20>(Struct_2(Struct_1(-635f, 9729i, vec2<bool>(true, false)), vec4<bool>(true, true, true, false), i32(-2147483648), vec3<i32>(114505i, 648i, -28427i)), Struct_2(Struct_1(1152f, 921i, vec2<bool>(false, true)), vec4<bool>(false, false, true, false), -1i, vec3<i32>(37783i, 2147483647i, i32(-2147483648))), Struct_2(Struct_1(-605f, 0i, vec2<bool>(false, false)), vec4<bool>(false, true, false, false), -1i, vec3<i32>(54105i, 0i, -1i)), Struct_2(Struct_1(2805f, 10072i, vec2<bool>(true, false)), vec4<bool>(true, true, false, true), -11634i, vec3<i32>(2147483647i, -17061i, -32245i)), Struct_2(Struct_1(1000f, 53787i, vec2<bool>(true, false)), vec4<bool>(false, true, true, false), 1i, vec3<i32>(1i, -1125i, 3236i)), Struct_2(Struct_1(3071f, 46566i, vec2<bool>(true, false)), vec4<bool>(false, false, false, true), -1i, vec3<i32>(0i, -1i, -1i)), Struct_2(Struct_1(-1021f, 70434i, vec2<bool>(false, false)), vec4<bool>(false, true, false, false), -25767i, vec3<i32>(0i, 2147483647i, 892i)), Struct_2(Struct_1(-1078f, 2720i, vec2<bool>(true, false)), vec4<bool>(false, true, false, true), 0i, vec3<i32>(11745i, i32(-2147483648), 0i)), Struct_2(Struct_1(260f, i32(-2147483648), vec2<bool>(false, false)), vec4<bool>(true, true, true, true), -1i, vec3<i32>(1i, -10552i, -16168i)), Struct_2(Struct_1(1559f, 48297i, vec2<bool>(false, true)), vec4<bool>(true, false, false, false), 26248i, vec3<i32>(-19232i, 82834i, -44511i)), Struct_2(Struct_1(302f, 1i, vec2<bool>(true, false)), vec4<bool>(true, false, true, false), -9110i, vec3<i32>(0i, 20352i, -17279i)), Struct_2(Struct_1(496f, -1i, vec2<bool>(true, true)), vec4<bool>(true, false, false, true), 20773i, vec3<i32>(-23461i, -2261i, 67616i)), Struct_2(Struct_1(982f, 11500i, vec2<bool>(false, false)), vec4<bool>(true, true, false, false), -73912i, vec3<i32>(-29469i, 9664i, 20979i)), Struct_2(Struct_1(-1742f, -32661i, vec2<bool>(true, true)), vec4<bool>(false, true, true, false), 42855i, vec3<i32>(-1i, -8824i, 1i)), Struct_2(Struct_1(-131f, -6032i, vec2<bool>(true, false)), vec4<bool>(false, false, true, true), 1i, vec3<i32>(16727i, 2848i, 0i)), Struct_2(Struct_1(1274f, i32(-2147483648), vec2<bool>(true, false)), vec4<bool>(true, true, true, true), -10721i, vec3<i32>(2147483647i, 20345i, -1i)), Struct_2(Struct_1(-1183f, 0i, vec2<bool>(false, false)), vec4<bool>(false, false, false, true), -21194i, vec3<i32>(-12054i, 2147483647i, -95409i)), Struct_2(Struct_1(-1187f, 0i, vec2<bool>(true, true)), vec4<bool>(true, false, true, false), -18334i, vec3<i32>(10602i, -13016i, -28678i)), Struct_2(Struct_1(-1000f, 1i, vec2<bool>(true, false)), vec4<bool>(false, false, true, true), 1i, vec3<i32>(14032i, 2147483647i, 1i)), Struct_2(Struct_1(1276f, -1i, vec2<bool>(true, true)), vec4<bool>(false, false, true, false), i32(-2147483648), vec3<i32>(12750i, -25637i, 34991i)));

var<private> global3: array<vec2<bool>, 21> = array<vec2<bool>, 21>(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false));

var<private> global4: array<u32, 10> = array<u32, 10>(32861u, 68432u, 1u, 4294967295u, 0u, 1u, 0u, 12487u, 2529u, 1u);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: bool) -> u32 {
    var var_0 = ~u_input.a;
    let var_1 = global2[_wgslsmith_index_u32(global1.x, 20u)];
    let var_2 = arg_0;
    var var_3 = global3[_wgslsmith_index_u32(_wgslsmith_add_u32(4294967295u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(select(~_wgslsmith_mod_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 10u)], 10u)], 55564u) | _wgslsmith_sub_u32(~global1.x, max(global1.x, 57400u)), _wgslsmith_dot_vec2_u32(select(vec2<u32>(91990u, 4294967295u), global1.yy, var_1.b.x) | vec2<u32>(92082u, 0u), global1.zy), true), 10u)], 10u)]), 21u)];
    let var_4 = global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(~global1.x, reverseBits(1u)), 10u)], 10u)];
    return ~(~(global4[_wgslsmith_index_u32(global1.x, 10u)] & (global4[_wgslsmith_index_u32(global1.x, 10u)] | 0u)) ^ 21520u);
}

fn func_2(arg_0: Struct_2, arg_1: f32) -> Struct_2 {
    let var_0 = -abs(abs(arg_0.d));
    let var_1 = all(select(arg_0.b, !(!(!vec4<bool>(arg_0.a.c.x, false, false, arg_0.a.c.x))), true));
    let var_2 = _wgslsmith_mult_u32(global4[_wgslsmith_index_u32(min(global1.x, ~func_3(all(vec4<bool>(arg_0.a.c.x, arg_0.b.x, arg_0.a.c.x, false)))), 10u)], func_3(!select(arg_0.b.x, arg_0.b.x, select(true, arg_0.a.c.x, false))));
    global1 = _wgslsmith_add_vec3_u32(vec3<u32>(abs(var_2), ~(55139u & global1.x), var_2) ^ ~_wgslsmith_add_vec3_u32(select(vec3<u32>(var_2, var_2, var_2), vec3<u32>(global1.x, global4[_wgslsmith_index_u32(var_2, 10u)], 4294967295u), vec3<bool>(var_1, true, var_1)), ~vec3<u32>(global4[_wgslsmith_index_u32(83096u, 10u)], 1u, 4294967295u)), _wgslsmith_div_vec3_u32(~firstLeadingBit(vec3<u32>(global1.x, global4[_wgslsmith_index_u32(83875u, 10u)], 0u) << (vec3<u32>(5117u, global1.x, 0u) % vec3<u32>(32u))), _wgslsmith_mod_vec3_u32(vec3<u32>(global1.x << (1u % 32u), select(25024u, 36789u, var_1), 1u ^ var_2), vec3<u32>(global1.x, var_2, 22456u) | _wgslsmith_mult_vec3_u32(vec3<u32>(23233u, 4294967295u, 0u), vec3<u32>(1u, 66412u, global4[_wgslsmith_index_u32(1u, 10u)])))));
    global3 = array<vec2<bool>, 21>();
    return Struct_2(arg_0.a, select(arg_0.b, arg_0.b, arg_0.c == arg_0.a.b), reverseBits(firstLeadingBit(_wgslsmith_mult_i32(abs(var_0.x), -32325i))), select(var_0, vec3<i32>(36949i, var_0.x, firstLeadingBit(-2147483647i) << (0u % 32u)), arg_0.b.wyy));
}

fn func_1(arg_0: vec4<i32>, arg_1: vec2<i32>, arg_2: vec3<f32>) -> Struct_1 {
    let var_0 = arg_2.x;
    let var_1 = _wgslsmith_clamp_u32(25925u, ~(~global1.x), ~global4[_wgslsmith_index_u32(_wgslsmith_div_u32(~(global1.x ^ 1u), ~global1.x), 10u)]);
    global3 = array<vec2<bool>, 21>();
    var var_2 = func_2(Struct_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -533f), ~(arg_1.x >> (0u % 32u)), global3[_wgslsmith_index_u32(68261u, 21u)]), vec4<bool>(true, true, true, true), u_input.a, ~arg_0.www), _wgslsmith_f_op_f32(arg_2.x * _wgslsmith_f_op_f32(-var_0)));
    var var_3 = ~global1.x;
    return func_2(Struct_2(Struct_1(var_2.a.a, -(~0i), var_2.a.c), vec4<bool>(~0u >= (var_1 | 52464u), var_2.b.x, !any(var_2.b.yyz), true), -53491i, countOneBits(vec3<i32>(_wgslsmith_mod_i32(-47969i, -1i), ~var_2.d.x, _wgslsmith_div_i32(-27418i, u_input.a)))), func_2(func_2(global2[_wgslsmith_index_u32(4294967295u ^ (global1.x ^ 32107u), 20u)], _wgslsmith_div_f32(arg_2.x, _wgslsmith_f_op_f32(sign(arg_2.x)))), func_2(Struct_2(var_2.a, var_2.b, ~(-2147483647i), vec3<i32>(arg_1.x, 9797i, arg_0.x)), -374f).a.a).a.a).a;
}

fn func_4(arg_0: Struct_1) -> u32 {
    let var_0 = arg_0;
    var var_1 = Struct_1(arg_0.a, 23362i, func_2(global2[_wgslsmith_index_u32(func_3(var_0.c.x), 20u)], func_1(-firstTrailingBit(vec4<i32>(arg_0.b, var_0.b, 2147483647i, var_0.b)), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, arg_0.b) << (global1.xx % vec2<u32>(32u)), vec2<i32>(var_0.b, u_input.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-740f, arg_0.a, arg_0.a)))).a).a.c);
    global1 = vec3<u32>(4294967295u, firstLeadingBit(global1.x), 25697u);
    let var_2 = select(!(!func_2(func_2(Struct_2(Struct_1(var_1.a, var_1.b, arg_0.c), vec4<bool>(var_1.c.x, true, true, var_1.c.x), var_1.b, vec3<i32>(var_0.b, 47553i, 23231i)), var_0.a), arg_0.a).b.zyy), select(vec3<bool>(func_2(Struct_2(arg_0, vec4<bool>(var_0.c.x, var_0.c.x, false, var_1.c.x), var_1.b, vec3<i32>(-2147483647i, 0i, 2147483647i)), var_0.a).a.c.x, func_1(vec4<i32>(var_0.b, 0i, u_input.a, u_input.a) & vec4<i32>(var_1.b, u_input.a, -1i, -17009i), reverseBits(vec2<i32>(u_input.a, -1i)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a, -397f, 501f) * vec3<f32>(1947f, var_0.a, var_1.a))).c.x, true), vec3<bool>(all(!vec3<bool>(true, arg_0.c.x, arg_0.c.x)), var_1.c.x, true), vec3<bool>(!(1132f >= arg_0.a), func_2(func_2(global2[_wgslsmith_index_u32(48848u, 20u)], -681f), _wgslsmith_f_op_f32(f32(-1f) * -1242f)).b.x, true)), vec3<bool>(!var_0.c.x, !(var_0.c.x & true), true));
    var var_3 = _wgslsmith_add_vec2_i32(min(~vec2<i32>(18160i, arg_0.b), _wgslsmith_clamp_vec2_i32(vec2<i32>(var_1.b, arg_0.b), vec2<i32>(-1i, 1i), vec2<i32>(-42471i, u_input.a))) ^ vec2<i32>(-2147483647i, 23169i), _wgslsmith_sub_vec2_i32(-(~vec2<i32>(1669i, 58077i)), _wgslsmith_add_vec2_i32(vec2<i32>(arg_0.b, u_input.a) << (global1.zy % vec2<u32>(32u)), firstLeadingBit(vec2<i32>(arg_0.b, u_input.a))))) << (_wgslsmith_add_vec2_u32(global1.zy, min(global1.zx, vec2<u32>(~global1.x, global1.x))) % vec2<u32>(32u));
    return max(_wgslsmith_clamp_u32(global1.x, ~(~0u), ~48232u), 44705u);
}

fn func_5(arg_0: u32, arg_1: vec3<i32>, arg_2: Struct_2, arg_3: vec4<u32>) -> Struct_2 {
    var var_0 = arg_2.d & ~(abs(arg_1) << (arg_3.xxz % vec3<u32>(32u)));
    global2 = array<Struct_2, 20>();
    var var_1 = (_wgslsmith_mult_u32(global4[_wgslsmith_index_u32(~_wgslsmith_sub_u32(0u, arg_3.x), 10u)], arg_3.x) >> (arg_3.x % 32u)) ^ 67327u;
    let var_2 = ~_wgslsmith_dot_vec4_u32(arg_3 ^ ~(~arg_3), firstLeadingBit(arg_3));
    global3 = array<vec2<bool>, 21>();
    return func_2(func_2(arg_2, 1638f), _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(arg_2.a.a - arg_2.a.a)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(abs(1420f));
    global1 = _wgslsmith_div_vec3_u32(~(~vec3<u32>(0u, 0u, 102113u) << ((vec3<u32>(global4[_wgslsmith_index_u32(0u, 10u)], global4[_wgslsmith_index_u32(78054u, 10u)], 45781u) << (vec3<u32>(111419u, global1.x, 0u) % vec3<u32>(32u))) % vec3<u32>(32u))) & ~vec3<u32>(4294967295u, 20723u, _wgslsmith_add_u32(global1.x, global4[_wgslsmith_index_u32(global1.x, 10u)])), countOneBits(vec3<u32>(abs(global1.x), global4[_wgslsmith_index_u32(47914u, 10u)], global4[_wgslsmith_index_u32(_wgslsmith_add_u32(global4[_wgslsmith_index_u32(global1.x, 10u)], global1.x), 10u)])) | ((vec3<u32>(51457u, global4[_wgslsmith_index_u32(4294967295u, 10u)], 107817u) << (vec3<u32>(global4[_wgslsmith_index_u32(global1.x, 10u)], global1.x, global4[_wgslsmith_index_u32(0u, 10u)]) % vec3<u32>(32u))) << (vec3<u32>(global4[_wgslsmith_index_u32(firstTrailingBit(global4[_wgslsmith_index_u32(global1.x, 10u)]), 10u)], _wgslsmith_add_u32(global1.x, global1.x), ~1u) % vec3<u32>(32u))));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-2127f)));
    global2 = array<Struct_2, 20>();
    var var_0 = func_5(~(~_wgslsmith_div_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global1.x, 10u)], 10u)], 1u)) | global4[_wgslsmith_index_u32(1u, 10u)], reverseBits(~select(vec3<i32>(u_input.a, 26784i, u_input.a) & vec3<i32>(2147483647i, u_input.a, u_input.a), select(vec3<i32>(-45755i, u_input.a, -1i), vec3<i32>(-15289i, u_input.a, u_input.a), false), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true)))), global2[_wgslsmith_index_u32(reverseBits(9670u), 20u)], max(vec4<u32>(~1u, 0u, 93080u, func_4(func_1(vec4<i32>(-13412i, -1i, 0i, 21992i), vec2<i32>(u_input.a, u_input.a), vec3<f32>(641f, 1137f, -2004f)))), vec4<u32>(global4[_wgslsmith_index_u32(4294967295u, 10u)], ~global1.x, global1.x | 0u, global4[_wgslsmith_index_u32(0u, 10u)])));
    global3 = array<vec2<bool>, 21>();
    let var_1 = func_2(global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(~reverseBits(40186u), 10u)], 20u)], _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -110f))));
    let x = u_input.a;
    s_output = StorageBuffer(48293i, vec3<i32>(firstTrailingBit(func_1(vec4<i32>(-20822i, 23263i, 2147483647i, -29858i), select(vec2<i32>(var_1.d.x, var_1.c), var_1.d.xy, var_0.b.xy), _wgslsmith_f_op_vec3_f32(vec3<f32>(-954f, var_0.a.a, -432f) * vec3<f32>(var_1.a.a, -847f, var_0.a.a))).b), (1i & -var_1.c) ^ func_2(global2[_wgslsmith_index_u32(func_4(Struct_1(var_0.a.a, -9949i, var_1.a.c)), 20u)], 243f).a.b, 1i), reverseBits(max(~(~vec4<u32>(global1.x, 43581u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(24244u, 10u)], 10u)], 10u)], global1.x)), ~vec4<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(43405u, 10u)], 10u)], 10u)], 22399u, global1.x, 4294967295u))), select(_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(firstTrailingBit(vec4<u32>(global1.x, global4[_wgslsmith_index_u32(42942u, 10u)], 71078u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(57210u, 10u)], 10u)], 10u)])), ~vec4<u32>(44038u, 0u, 1u, 27306u)), vec4<u32>(~global1.x, 0u, countOneBits(global1.x), ~29995u)), firstLeadingBit(~vec4<u32>(6962u, 0u, 4151u, 1u)) | ~reverseBits(vec4<u32>(1u, global4[_wgslsmith_index_u32(27181u, 10u)], global1.x, 15540u)), !(!var_0.a.c.x) != true), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.a, 1000f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(747f + var_0.a.a), _wgslsmith_f_op_f32(min(var_0.a.a, var_1.a.a)), true)), var_0.a.a) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, var_1.a.a, var_1.a.a, 1807f) + vec4<f32>(var_1.a.a, 1147f, -123f, var_1.a.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.a, 430f, var_1.a.a, var_1.a.a))))));
}

