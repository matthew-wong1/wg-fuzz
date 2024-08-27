struct Struct_1 {
    a: vec2<bool>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: bool,
    e: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: i32,
    d: i32,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: f32,
    d: i32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(vec2<bool>(true, false), vec3<i32>(0i, 1i, i32(-2147483648)), vec4<i32>(-60956i, 0i, -1i, 0i), false, vec4<i32>(29151i, -41206i, -1i, -1873i)), Struct_1(vec2<bool>(true, false), vec3<i32>(-13360i, -1i, -1i), vec4<i32>(-18901i, 2147483647i, -24254i, -23885i), false, vec4<i32>(30189i, i32(-2147483648), 60268i, -15771i)), Struct_1(vec2<bool>(true, false), vec3<i32>(22365i, 2881i, 35846i), vec4<i32>(16805i, 2147483647i, 2147483647i, i32(-2147483648)), false, vec4<i32>(i32(-2147483648), 1i, 29885i, -18844i)), Struct_1(vec2<bool>(false, false), vec3<i32>(0i, 0i, 0i), vec4<i32>(2147483647i, 27099i, i32(-2147483648), 38485i), true, vec4<i32>(-1i, 2147483647i, i32(-2147483648), -35943i)), Struct_1(vec2<bool>(true, false), vec3<i32>(27880i, 0i, 2147483647i), vec4<i32>(2147483647i, 14313i, 9168i, -1i), true, vec4<i32>(0i, 8478i, 16498i, 2147483647i)), Struct_1(vec2<bool>(true, false), vec3<i32>(10567i, 28700i, 0i), vec4<i32>(-31246i, 6019i, 45744i, i32(-2147483648)), true, vec4<i32>(40147i, -1i, -34499i, 2147483647i)), Struct_1(vec2<bool>(false, true), vec3<i32>(-35166i, 1i, -35854i), vec4<i32>(i32(-2147483648), -32244i, 18110i, 1i), false, vec4<i32>(1i, 26309i, -54258i, 31167i)), Struct_1(vec2<bool>(true, true), vec3<i32>(1i, -4829i, -1i), vec4<i32>(49661i, -1i, -11969i, 2147483647i), true, vec4<i32>(2147483647i, 0i, 0i, -52290i)), Struct_1(vec2<bool>(true, true), vec3<i32>(27235i, 1i, i32(-2147483648)), vec4<i32>(-22544i, 23165i, -29916i, 9034i), false, vec4<i32>(i32(-2147483648), 48007i, 1i, -55314i)), Struct_1(vec2<bool>(true, false), vec3<i32>(0i, -47954i, 35837i), vec4<i32>(2147483647i, 2147483647i, 2147483647i, i32(-2147483648)), false, vec4<i32>(i32(-2147483648), 2147483647i, 1i, 17594i)), Struct_1(vec2<bool>(true, false), vec3<i32>(1i, -10605i, 0i), vec4<i32>(-45820i, -27318i, 38033i, i32(-2147483648)), true, vec4<i32>(2147483647i, 9100i, -19557i, 0i)), Struct_1(vec2<bool>(false, true), vec3<i32>(1i, 27194i, 1i), vec4<i32>(26318i, -1i, 15638i, -20407i), false, vec4<i32>(27194i, 1i, 0i, 6135i)), Struct_1(vec2<bool>(true, false), vec3<i32>(2147483647i, -21669i, 2147483647i), vec4<i32>(3722i, 2147483647i, i32(-2147483648), -24763i), true, vec4<i32>(-3996i, 35426i, 1i, -1i)), Struct_1(vec2<bool>(false, false), vec3<i32>(1i, i32(-2147483648), 1i), vec4<i32>(40270i, i32(-2147483648), 7460i, -1i), true, vec4<i32>(30943i, 1i, 42900i, i32(-2147483648))), Struct_1(vec2<bool>(true, true), vec3<i32>(2147483647i, -1i, i32(-2147483648)), vec4<i32>(1i, -6630i, 68958i, 0i), false, vec4<i32>(1i, 2147483647i, 40711i, i32(-2147483648))), Struct_1(vec2<bool>(true, false), vec3<i32>(1i, -45476i, 1i), vec4<i32>(-13138i, 66583i, -14958i, 6242i), true, vec4<i32>(2147483647i, 1i, 13802i, i32(-2147483648))), Struct_1(vec2<bool>(true, false), vec3<i32>(-1i, -18254i, i32(-2147483648)), vec4<i32>(-15833i, i32(-2147483648), 0i, 17913i), true, vec4<i32>(i32(-2147483648), 37355i, i32(-2147483648), 24098i)), Struct_1(vec2<bool>(false, false), vec3<i32>(i32(-2147483648), 35452i, 23915i), vec4<i32>(-2589i, 4760i, 1284i, -25474i), false, vec4<i32>(-17238i, 26254i, 2147483647i, 0i)), Struct_1(vec2<bool>(false, false), vec3<i32>(1i, 0i, -4342i), vec4<i32>(-13688i, -1i, 35159i, 2147483647i), true, vec4<i32>(0i, -2727i, i32(-2147483648), i32(-2147483648))), Struct_1(vec2<bool>(false, true), vec3<i32>(i32(-2147483648), -1i, i32(-2147483648)), vec4<i32>(56699i, 49621i, 2147483647i, -1i), true, vec4<i32>(2147483647i, 0i, -1i, 12392i)), Struct_1(vec2<bool>(true, true), vec3<i32>(0i, 8544i, 931i), vec4<i32>(i32(-2147483648), -1i, 17988i, -67732i), true, vec4<i32>(-41788i, 2147483647i, 2147483647i, 0i)), Struct_1(vec2<bool>(false, false), vec3<i32>(-7408i, -30746i, -39694i), vec4<i32>(0i, 1i, i32(-2147483648), 394i), false, vec4<i32>(-53972i, 14525i, 1i, 4864i)), Struct_1(vec2<bool>(false, true), vec3<i32>(0i, 1217i, 32894i), vec4<i32>(26811i, -63584i, i32(-2147483648), -955i), false, vec4<i32>(i32(-2147483648), 2411i, -36465i, 2147483647i)), Struct_1(vec2<bool>(true, true), vec3<i32>(-2609i, -4837i, i32(-2147483648)), vec4<i32>(39810i, -33451i, 9237i, 1i), false, vec4<i32>(1i, -48466i, -24202i, 54096i)), Struct_1(vec2<bool>(true, false), vec3<i32>(1i, 18944i, 2147483647i), vec4<i32>(-23797i, 0i, -1i, -12948i), false, vec4<i32>(1i, 16936i, i32(-2147483648), 23684i)), Struct_1(vec2<bool>(true, true), vec3<i32>(4888i, -30612i, 4060i), vec4<i32>(0i, -1i, 12194i, 2147483647i), true, vec4<i32>(35983i, -41011i, 19317i, -17459i)), Struct_1(vec2<bool>(false, true), vec3<i32>(0i, 54748i, 0i), vec4<i32>(-13892i, 3685i, 27721i, 1i), true, vec4<i32>(20846i, 1i, 1i, i32(-2147483648))), Struct_1(vec2<bool>(false, true), vec3<i32>(33782i, i32(-2147483648), -22530i), vec4<i32>(-1i, 2147483647i, 1i, -14309i), true, vec4<i32>(18173i, 54556i, -18593i, -8107i)), Struct_1(vec2<bool>(false, false), vec3<i32>(2147483647i, -18349i, 0i), vec4<i32>(-40518i, 8277i, -50176i, -1i), true, vec4<i32>(1i, -12058i, 2147483647i, i32(-2147483648))));

var<private> global1: Struct_2;

var<private> global2: u32 = 83925u;

var<private> global3: array<f32, 15>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: Struct_3) -> vec2<bool> {
    var var_0 = _wgslsmith_mult_vec4_i32(reverseBits(reverseBits(~vec4<i32>(arg_0.a.c, global1.c, -2147483647i, -1i) | _wgslsmith_add_vec4_i32(vec4<i32>(arg_0.a.d, global1.c, -2147483647i, 25522i), vec4<i32>(arg_0.a.c, global1.d, -39463i, global1.d)))), vec4<i32>(min(1i, _wgslsmith_mod_i32(949i, max(1i, arg_0.a.c))), arg_0.a.d, -2147483647i & global1.d, _wgslsmith_clamp_i32(1i, -1i, -_wgslsmith_sub_i32(9795i, arg_0.a.c))));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global3[_wgslsmith_index_u32(4294967295u, 15u)]))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-443f)) * -232f));
    let var_2 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(global1.a)))) - _wgslsmith_f_op_f32(-arg_0.a.a)), 249f), arg_0.a.b, 0i, 0i);
    let var_3 = var_2.d ^ (countOneBits(~(0i << (u_input.b % 32u))) << ((17162u >> (~u_input.b % 32u)) % 32u));
    let var_4 = arg_0.a.b;
    return vec2<bool>(true, true);
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: vec3<f32>, arg_3: Struct_2) -> u32 {
    var var_0 = Struct_1(select(select(func_2(Struct_3(arg_3)), vec2<bool>(true, true), !vec2<bool>(false, global1.b)), select(vec2<bool>(arg_1.b, arg_3.b), vec2<bool>(true, true), false), select(vec2<bool>(any(vec4<bool>(false, true, arg_1.b, arg_1.b)), false), vec2<bool>(true, false), vec2<bool>(global1.b, all(vec4<bool>(true, arg_3.b, false, true))))), vec3<i32>(-1i) * -vec3<i32>(0i, global1.d, 0i), vec4<i32>(4318i, arg_3.c, firstTrailingBit(-20923i) << ((40535u ^ _wgslsmith_div_u32(arg_0.x, 1u)) % 32u), arg_1.d), true, ~(-vec4<i32>(22748i, min(arg_3.c, 56937i), arg_1.c | 0i, 0i)));
    var var_1 = vec3<u32>(u_input.a, ~_wgslsmith_sub_u32(_wgslsmith_div_u32(4294967295u, u_input.b | 1u), arg_0.x), ~arg_0.x);
    var_1 = select(vec3<u32>(42485u, arg_0.x, ~arg_0.x), vec3<u32>(arg_0.x, _wgslsmith_sub_u32(arg_0.x, 24650u), arg_0.x), !all(vec2<bool>(global1.b, true)));
    global2 = ~u_input.b;
    return ~abs(77214u);
}

fn func_4(arg_0: vec2<bool>, arg_1: vec4<u32>) -> Struct_2 {
    let var_0 = -_wgslsmith_sub_i32(max(global1.d ^ global1.d, abs(~global1.c)), ~global1.d);
    var var_1 = ~(vec3<u32>(firstLeadingBit(u_input.b), 4294967295u, 1u) >> (vec3<u32>(16288u, _wgslsmith_sub_u32(min(4294967295u, 51652u), firstTrailingBit(u_input.b)), arg_1.x) % vec3<u32>(32u)));
    let var_2 = Struct_3(Struct_2(_wgslsmith_f_op_f32(265f + _wgslsmith_f_op_f32(f32(-1f) * -969f)), _wgslsmith_dot_vec2_u32(arg_1.yz, vec2<u32>(17001u, var_1.x)) < select(1u, _wgslsmith_add_u32(var_1.x, 7703u), any(vec3<bool>(global1.b, global1.b, arg_0.x))), reverseBits(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(global1.c, var_0, -45372i), vec3<i32>(-19166i, global1.c, var_0)), ~(-2147483647i))), global1.d));
    var var_3 = var_2;
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global1.a))), !any(vec4<bool>(var_3.a.b, var_3.a.b, true, true)), ~max(abs(global1.c), var_2.a.d) | 2147483647i, _wgslsmith_add_i32(firstLeadingBit(-2147483647i) >> (0u % 32u), global1.d) & firstTrailingBit(_wgslsmith_dot_vec2_i32(select(vec2<i32>(var_2.a.d, var_2.a.d), vec2<i32>(0i, 13743i), vec2<bool>(global1.b, true)), -vec2<i32>(var_2.a.d, 53654i))));
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: Struct_2, arg_3: bool) -> vec3<i32> {
    var var_0 = Struct_3(func_4(!select(arg_1.a, select(vec2<bool>(arg_3, true), vec2<bool>(true, true), global1.b), func_2(Struct_3(arg_2))), vec4<u32>(u_input.a >> (func_3(vec3<u32>(u_input.a, u_input.a, 1u), Struct_2(123f, arg_1.d, -41244i, global1.d), vec3<f32>(arg_2.a, arg_0, arg_0), Struct_2(arg_0, false, global1.d, arg_1.b.x)) % 32u), 42853u, u_input.b, min(u_input.a, 1u) & _wgslsmith_add_u32(u_input.b, 40233u))));
    global1 = func_4(vec2<bool>(global1.b, global1.b), _wgslsmith_mod_vec4_u32(firstTrailingBit(vec4<u32>(u_input.b, 0u, u_input.b | 35182u, u_input.b)), vec4<u32>(u_input.a, 30778u, u_input.b, _wgslsmith_mult_u32(_wgslsmith_mult_u32(1u, u_input.a), ~1u))));
    let var_1 = u_input.a;
    global3 = array<f32, 15>();
    global0 = array<Struct_1, 29>();
    return ~vec3<i32>(abs(var_0.a.d ^ min(arg_2.d, 2147483647i)), _wgslsmith_dot_vec2_i32(vec2<i32>(abs(-33966i), 1i), -arg_1.c.yz & _wgslsmith_mod_vec2_i32(arg_1.c.zy, arg_1.b.yz)), abs(~_wgslsmith_div_i32(-1i, var_0.a.d)));
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_1) -> Struct_2 {
    let var_0 = Struct_3(Struct_2(840f, func_2(Struct_3(Struct_2(global3[_wgslsmith_index_u32(u_input.a, 15u)], global1.b, 0i, arg_1.e.x))).x, ~2147483647i, min(global1.c & global1.d, 0i) << (u_input.a % 32u)));
    let var_1 = var_0.a;
    global2 = _wgslsmith_add_u32(~u_input.a, ~(_wgslsmith_mult_u32(33291u, u_input.b) >> (reverseBits(_wgslsmith_clamp_u32(1u, 47453u, u_input.a)) % 32u)));
    global0 = array<Struct_1, 29>();
    var var_2 = Struct_3(func_4(!(!select(arg_1.a, vec2<bool>(global1.b, arg_1.a.x), vec2<bool>(global1.b, true))), _wgslsmith_add_vec4_u32(~vec4<u32>(21370u, u_input.b, u_input.a, u_input.b), ~vec4<u32>(u_input.a, 0u, u_input.b, 1u)) ^ max(vec4<u32>(4294967295u, u_input.a, u_input.b, u_input.a), min(vec4<u32>(u_input.b, 1u, u_input.b, u_input.b), vec4<u32>(u_input.b, 724u, 4294967295u, u_input.b)))));
    return func_4(arg_1.a, vec4<u32>(abs(u_input.b), select(_wgslsmith_add_u32(u_input.a ^ 0u, abs(1u)), u_input.a, true), ~_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b, 75260u), vec2<u32>(u_input.b, u_input.b) << (vec2<u32>(u_input.b, u_input.a) % vec2<u32>(32u))), select(func_3(~vec3<u32>(62410u, 40348u, 0u), var_0.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a, global3[_wgslsmith_index_u32(u_input.a, 15u)], global3[_wgslsmith_index_u32(15855u, 15u)])), Struct_2(1000f, true, global1.c, -2147483647i)), ~(~u_input.a), true)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(59937u, 15u)] * -1405f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.a, global1.a) * _wgslsmith_f_op_f32(min(1071f, -1414f))) - _wgslsmith_f_op_f32(global1.a - -272f))), select(true, global1.b, 4293i <= global1.d), firstTrailingBit(global1.d), -37345i | -global1.d);
    var var_0 = Struct_3(func_5(~func_1(2131f, Struct_1(vec2<bool>(global1.b, true), vec3<i32>(-2147483647i, global1.d, global1.d), vec4<i32>(global1.c, 15607i, -40457i, 45479i), global1.b, vec4<i32>(9088i, global1.d, global1.c, global1.d)), Struct_2(209f, true, global1.d, 1i), true), Struct_1(select(select(vec2<bool>(global1.b, global1.b), vec2<bool>(global1.b, true), true), vec2<bool>(true, true), any(vec4<bool>(false, global1.b, global1.b, global1.b))), select(vec3<i32>(0i, -28483i, 0i), _wgslsmith_div_vec3_i32(vec3<i32>(-73200i, -57933i, -2147483647i), vec3<i32>(37900i, global1.c, global1.d)), select(vec3<bool>(global1.b, global1.b, true), vec3<bool>(global1.b, global1.b, global1.b), vec3<bool>(global1.b, true, global1.b))), _wgslsmith_mult_vec4_i32(min(vec4<i32>(global1.c, global1.c, 49382i, 78194i), vec4<i32>(2147483647i, -2147483647i, -83071i, global1.c)), vec4<i32>(global1.c, 0i, 30462i, 0i) << (vec4<u32>(11727u, u_input.b, u_input.a, 82577u) % vec4<u32>(32u))), func_2(Struct_3(Struct_2(global3[_wgslsmith_index_u32(u_input.a, 15u)], true, 0i, global1.d))).x, ~countOneBits(vec4<i32>(global1.d, global1.d, global1.c, -18368i)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(~1u, 15u)] + _wgslsmith_f_op_f32(-1193f - global3[_wgslsmith_index_u32(75578u, 15u)])), global1.a)), global1.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.a + 1067f) * _wgslsmith_f_op_f32(round(var_0.a.a))))) + _wgslsmith_f_op_f32(-func_4(!vec2<bool>(var_0.a.b, true), vec4<u32>(u_input.b, u_input.a, u_input.a, 4294967295u) & vec4<u32>(u_input.a, 0u, 15615u, 1u)).a)), -4368i, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-696f, 1093f)));
}

