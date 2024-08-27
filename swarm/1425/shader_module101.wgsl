struct Struct_1 {
    a: vec4<bool>,
    b: vec3<i32>,
    c: u32,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: u32,
    d: Struct_1,
    e: vec2<bool>,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: vec3<i32>,
    d: u32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec2<i32>,
}

struct Struct_5 {
    a: f32,
    b: Struct_3,
    c: vec4<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
    c: f32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 21> = array<u32, 21>(44886u, 3009u, 4294967295u, 4294967295u, 3140u, 4294967295u, 28689u, 4294967295u, 11071u, 4294967295u, 40564u, 0u, 24303u, 3128u, 4294967295u, 88885u, 14217u, 30477u, 69306u, 22935u, 65706u);

var<private> global1: array<vec4<i32>, 21> = array<vec4<i32>, 21>(vec4<i32>(-1i, i32(-2147483648), -24709i, -1i), vec4<i32>(-14153i, -4624i, 2147483647i, 1i), vec4<i32>(-34554i, 0i, -1i, 3406i), vec4<i32>(49886i, 1i, -41084i, 0i), vec4<i32>(2147483647i, 1i, -41357i, 1374i), vec4<i32>(38922i, 2147483647i, i32(-2147483648), 32278i), vec4<i32>(37898i, 13669i, 89347i, 26748i), vec4<i32>(-13931i, -994i, 31678i, -1i), vec4<i32>(i32(-2147483648), -22161i, i32(-2147483648), -1i), vec4<i32>(-26359i, -33723i, -1i, -36555i), vec4<i32>(2147483647i, 1i, -21765i, -1609i), vec4<i32>(0i, 2147483647i, 2147483647i, -71081i), vec4<i32>(-65392i, -50853i, -15951i, -1i), vec4<i32>(12832i, 2147483647i, 2147483647i, -1782i), vec4<i32>(-75337i, -8828i, 15516i, -19110i), vec4<i32>(-1i, 84159i, -23303i, 1i), vec4<i32>(14929i, 0i, -8805i, -26172i), vec4<i32>(-1i, -1i, i32(-2147483648), 51340i), vec4<i32>(2147483647i, -41427i, -16602i, -1i), vec4<i32>(2147483647i, 1i, 4105i, i32(-2147483648)), vec4<i32>(0i, i32(-2147483648), 0i, -1i));

var<private> global2: array<vec2<bool>, 29>;

var<private> global3: array<u32, 17>;

var<private> global4: array<vec4<i32>, 26> = array<vec4<i32>, 26>(vec4<i32>(-18910i, -19278i, -54712i, 1i), vec4<i32>(6853i, 13197i, -34447i, 2147483647i), vec4<i32>(-1i, -6084i, -1i, 48986i), vec4<i32>(3929i, 48286i, i32(-2147483648), 0i), vec4<i32>(-1i, 0i, i32(-2147483648), 9789i), vec4<i32>(67406i, 2147483647i, -1i, -1i), vec4<i32>(-11988i, i32(-2147483648), 37244i, 2147483647i), vec4<i32>(-1i, -43476i, i32(-2147483648), -13401i), vec4<i32>(-31988i, 0i, 40854i, -9920i), vec4<i32>(2147483647i, 1i, 0i, -1i), vec4<i32>(-41264i, -48389i, -19453i, 1i), vec4<i32>(1i, -58703i, i32(-2147483648), 55691i), vec4<i32>(8785i, -28619i, 11420i, -1i), vec4<i32>(47623i, 2147483647i, 2147483647i, -1i), vec4<i32>(14581i, 0i, 6437i, 18521i), vec4<i32>(11151i, -1i, 1i, 1i), vec4<i32>(1i, -29816i, 0i, 2147483647i), vec4<i32>(-5031i, -70496i, -1i, -1i), vec4<i32>(2147483647i, 4673i, 2147483647i, -31076i), vec4<i32>(i32(-2147483648), 1i, -4093i, 2147483647i), vec4<i32>(2147483647i, 33522i, 0i, 1i), vec4<i32>(0i, i32(-2147483648), 33477i, 8349i), vec4<i32>(i32(-2147483648), -11017i, i32(-2147483648), -7445i), vec4<i32>(-25637i, 2147483647i, -11279i, 1i), vec4<i32>(i32(-2147483648), 0i, 30930i, 20404i), vec4<i32>(i32(-2147483648), -1i, i32(-2147483648), 24976i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
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

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> f32 {
    global2 = array<vec2<bool>, 29>();
    var var_0 = Struct_3(select(-24419i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, -2147483647i) ^ vec2<i32>(1i, 1i), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.b, 2147483647i), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.b, 28607i), vec2<i32>(u_input.b, -2147483647i)))), false), Struct_1(!select(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), false), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true)), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), false)), vec3<i32>(-1i, _wgslsmith_add_i32(u_input.b, u_input.b) ^ -2147483647i, u_input.b), ~2521u, all(!global2[_wgslsmith_index_u32(1u, 29u)]) && (all(vec3<bool>(false, false, true)) || true), !select(all(vec4<bool>(true, true, true, true)), true, true)), firstLeadingBit(max(-firstLeadingBit(vec3<i32>(-2147483647i, u_input.b, u_input.b)), _wgslsmith_clamp_vec3_i32(firstLeadingBit(vec3<i32>(19857i, -61133i, u_input.b)), vec3<i32>(u_input.b, u_input.b, u_input.b) & vec3<i32>(4583i, u_input.b, u_input.b), max(vec3<i32>(-1i, 8053i, u_input.b), vec3<i32>(0i, 65671i, u_input.b))))), ~global3[_wgslsmith_index_u32(1u, 17u)] | _wgslsmith_mod_u32(max(1u, ~0u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 1u, 15790u), _wgslsmith_div_vec3_u32(vec3<u32>(8060u, 4294967295u, u_input.a), vec3<u32>(1607u, 68444u, u_input.a)))));
    let var_1 = 33271u;
    let var_2 = any(!(!var_0.b.a));
    var var_3 = abs(vec2<i32>(_wgslsmith_dot_vec2_i32(var_0.c.xz, vec2<i32>(min(1i, u_input.b), ~53013i)), -2147483647i));
    return -1485f;
}

fn func_2() -> i32 {
    var var_0 = Struct_2(7257i, Struct_1(!select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false)), ~_wgslsmith_add_vec3_i32(-vec3<i32>(u_input.b, 1i, u_input.b), select(vec3<i32>(u_input.b, 70561i, u_input.b), vec3<i32>(10718i, -2147483647i, 2147483647i), false)), 34939u, _wgslsmith_div_f32(_wgslsmith_div_f32(1711f, 294f), _wgslsmith_f_op_f32(func_3())) != _wgslsmith_f_op_f32(f32(-1f) * -1818f), true), ~countOneBits(_wgslsmith_div_u32(40756u, 1u)), Struct_1(vec4<bool>(true, true, true, true), _wgslsmith_mod_vec3_i32(max(vec3<i32>(u_input.b, u_input.b, 65001i), vec3<i32>(u_input.b, 41123i, -3936i)) ^ vec3<i32>(1520i, u_input.b, -2147483647i), -abs(vec3<i32>(u_input.b, 2147483647i, u_input.b))), ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(select(~global3[_wgslsmith_index_u32(u_input.a, 17u)], abs(84367u), all(vec3<bool>(false, true, false))), 21u)], 21u)], any(vec3<bool>(true, true, true)), 39404u >= (_wgslsmith_clamp_u32(39514u, 0u, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(30787u, 21u)], 21u)], 17u)]) | 4294967295u)), select(global2[_wgslsmith_index_u32(u_input.a, 29u)], !global2[_wgslsmith_index_u32(53906u, 29u)], vec2<bool>(true || select(true, true, true), false)));
    global1 = array<vec4<i32>, 21>();
    let var_1 = global4[_wgslsmith_index_u32(var_0.b.c, 26u)];
    let var_2 = var_0.d.b;
    var var_3 = _wgslsmith_div_vec4_i32(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, firstLeadingBit(global3[_wgslsmith_index_u32(u_input.a, 17u)]), 62424u), max(~vec3<u32>(global0[_wgslsmith_index_u32(u_input.a, 21u)], global0[_wgslsmith_index_u32(46746u, 21u)], 1u), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, 0u, 18544u), _wgslsmith_add_vec3_u32(vec3<u32>(1752u, var_0.b.c, 24267u), vec3<u32>(85570u, 1u, 43753u)), vec3<u32>(11307u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 17u)], 17u)], var_0.b.c)))), 26u)], global1[_wgslsmith_index_u32(var_0.c, 21u)]);
    return 29042i;
}

fn func_1(arg_0: Struct_3, arg_1: vec3<f32>, arg_2: f32) -> vec4<bool> {
    var var_0 = _wgslsmith_div_i32((i32(-1i) * -_wgslsmith_clamp_i32(-1i, u_input.b, 2541i)) ^ ~_wgslsmith_div_i32(-61075i, i32(-1i) * -7510i), func_2());
    let var_1 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x - -180f)), Struct_3(-1i, Struct_1(vec4<bool>(true, true, true, true), -vec3<i32>(-68840i, 33761i, u_input.b), 92558u, arg_0.b.a.x, true), -(-arg_0.b.b ^ abs(arg_0.c)), firstTrailingBit(50316u)), arg_0.b.a, arg_0.b);
    let var_2 = Struct_2(var_1.d.b.x, var_1.b.b, firstLeadingBit(firstLeadingBit(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(0u, 53758u), vec2<u32>(0u, arg_0.d)), vec2<u32>(global3[_wgslsmith_index_u32(1u, 17u)], 25201u)))), arg_0.b, global2[_wgslsmith_index_u32(0u, 29u)]);
    let var_3 = Struct_1(vec4<bool>(any(select(select(vec4<bool>(var_1.d.d, true, var_2.b.e, arg_0.b.e), var_1.c, var_1.b.b.e), var_2.d.a, var_1.b.b.a)), !(true || var_1.b.b.a.x), true, true), var_1.b.c, 4294967295u, var_1.b.b.d, true);
    return var_3.a;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<bool>, 29>();
    let var_0 = Struct_1(select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, all(vec2<bool>(false, false))), false), select(vec4<bool>(false, true, true, all(vec4<bool>(false, true, false, true))), select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false), false), func_1(Struct_3(2147483647i, Struct_1(vec4<bool>(false, true, true, true), vec3<i32>(u_input.b, 2147483647i, 51698i), 53884u, true, true), vec3<i32>(51312i, 8548i, u_input.b), 0u), vec3<f32>(317f, 371f, -1573f), -1342f), true), vec4<bool>(all(global2[_wgslsmith_index_u32(84141u, 29u)]), true, true, true)), vec4<bool>(all(vec4<bool>(false, false, false, false)), false, false, all(func_1(Struct_3(-18125i, Struct_1(vec4<bool>(true, false, false, false), vec3<i32>(5986i, u_input.b, 1i), 35753u, false, false), vec3<i32>(u_input.b, u_input.b, u_input.b), u_input.a), vec3<f32>(518f, 1048f, 1193f), 836f)))), ~(~vec3<i32>(_wgslsmith_mod_i32(u_input.b, -2147483647i), ~u_input.b, u_input.b | 2147483647i)), _wgslsmith_dot_vec3_u32(max(vec3<u32>(~3533u, ~7417u, 78619u), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(u_input.a, 17u)], 91110u, 0u), vec3<u32>(0u, 30043u, u_input.a)), 15671u, 7644u)), _wgslsmith_add_vec3_u32(~vec3<u32>(global3[_wgslsmith_index_u32(0u, 17u)], 11239u, u_input.a), abs(vec3<u32>(29917u, u_input.a, 32907u))) >> (vec3<u32>(62351u, u_input.a | global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 21u)], 17u)], 4294967295u) % vec3<u32>(32u))), !(firstLeadingBit(0u) < ~_wgslsmith_dot_vec4_u32(vec4<u32>(4247u, global0[_wgslsmith_index_u32(18292u, 21u)], global0[_wgslsmith_index_u32(u_input.a, 21u)], global0[_wgslsmith_index_u32(1u, 21u)]), vec4<u32>(u_input.a, global0[_wgslsmith_index_u32(4294967295u, 21u)], u_input.a, u_input.a))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1053f))), -1000f)) < -1994f);
    global1 = array<vec4<i32>, 21>();
    let var_1 = Struct_1(func_1(Struct_3(firstTrailingBit(-95251i) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 25521u, 0u), vec3<u32>(u_input.a, 13848u, 1u)) % 32u), Struct_1(var_0.a, vec3<i32>(5933i, -1i, u_input.b), reverseBits(u_input.a), true, true), vec3<i32>(-u_input.b, func_2(), var_0.b.x >> (u_input.a % 32u)), abs(abs(u_input.a))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-481f, -1112f, 1476f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(278f, -1406f, -1580f))))), 247f), var_0.b, ~(~var_0.c) & (~1u ^ u_input.a), true, false);
    global0 = array<u32, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1904f, 886f, -608f)))))), vec3<i32>(2147483647i, ~_wgslsmith_dot_vec3_i32(-var_0.b, _wgslsmith_add_vec3_i32(var_0.b, vec3<i32>(var_0.b.x, var_0.b.x, -2147483647i))), firstLeadingBit(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(var_0.b, var_1.b), _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.b.x, var_0.b.x), var_0.b.yx)))), 279f, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(680f, 1230f) * vec2<f32>(-714f, -467f))))), vec2<f32>(-651f, _wgslsmith_f_op_f32(f32(-1f) * -1534f)))));
}

