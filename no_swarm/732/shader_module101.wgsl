struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: bool,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_4 {
    a: vec4<u32>,
    b: i32,
}

struct Struct_5 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<vec4<bool>, 24> = array<vec4<bool>, 24>(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: i32) -> u32 {
    var var_0 = select(false, any(vec2<bool>(true, true)), !all(vec3<bool>(true, true, true))) || !any(global1[_wgslsmith_index_u32(u_input.b.x, 24u)]);
    let var_1 = ~(abs(select(vec3<u32>(57374u, 0u, arg_1), ~vec3<u32>(arg_1, 4294967295u, u_input.b.x), vec3<bool>(true, true, true))) & reverseBits(~vec3<u32>(u_input.b.x, u_input.b.x, arg_1) >> (max(vec3<u32>(u_input.b.x, arg_1, 78013u), vec3<u32>(u_input.b.x, arg_1, 73233u)) % vec3<u32>(32u))));
    var var_2 = var_1.x;
    global0 = true;
    var var_3 = 0u;
    return ~25125u;
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_3) -> Struct_5 {
    var var_0 = vec3<u32>(33670u, 1u, 1u) >> (~_wgslsmith_mult_vec3_u32(max(vec3<u32>(40666u, u_input.b.x, 115885u), ~arg_1.e.a), vec3<u32>(countOneBits(0u), 1u, 0u)) % vec3<u32>(32u));
    var var_1 = Struct_4(_wgslsmith_div_vec4_u32(vec4<u32>(1u, func_3(Struct_1(arg_0), arg_1.e.a.x ^ 38449u, ~(-12145i)), ~u_input.b.x >> (arg_1.e.a.x % 32u), ~u_input.b.x), vec4<u32>(4294967295u, ~var_0.x | 4294967295u, 4294967295u, _wgslsmith_add_u32(4294967295u, u_input.b.x))), min(countOneBits(-64269i << (arg_1.e.a.x % 32u)) & ~_wgslsmith_mult_i32(u_input.a.x, 31859i), 30605i));
    var_0 = abs(vec3<u32>(4294967295u, ~var_1.a.x, 0u));
    var_1 = Struct_4(var_1.a << (var_1.a % vec4<u32>(32u)), 1i);
    global0 = select(any(select(!select(vec2<bool>(false, true), vec2<bool>(false, false), true), vec2<bool>(false, arg_1.c), !(!vec2<bool>(arg_1.c, true)))), arg_1.c || (any(global1[_wgslsmith_index_u32(var_1.a.x << (arg_1.e.a.x % 32u), 24u)]) && all(!global1[_wgslsmith_index_u32(arg_1.e.a.x, 24u)])), arg_1.b);
    return Struct_5(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(653f, arg_0.x, 124f, 1875f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(763f, arg_0.x, arg_1.e.c.a.x, 1595f))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(275f, arg_1.e.c.a.x))), 328f, _wgslsmith_f_op_f32(select(arg_1.a.a.x, arg_1.e.c.a.x, true)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1082f, arg_1.d.a.x))), false)));
}

fn func_4(arg_0: Struct_5, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: f32) -> f32 {
    let var_0 = _wgslsmith_div_vec2_u32(~max(vec2<u32>(0u, ~45511u), ~arg_2.yw), vec2<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(~vec3<u32>(19305u, arg_2.x, 1u), arg_2.wyz, vec3<u32>(0u, 57454u, arg_2.x)), vec3<u32>(func_3(arg_1, arg_2.x, 2147483647i), 21640u, u_input.b.x)), arg_2.x));
    global0 = true;
    var var_1 = select(select(!select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), false)), select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), false), any(vec3<bool>(false, true, true))), vec2<bool>(true, any(vec3<bool>(false, true, false))), vec2<bool>(false, false)), select(vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(true, false), all(global1[_wgslsmith_index_u32(26861u, 24u)])), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)))), !vec2<bool>(true, any(vec2<bool>(true, true))), all(!(!global1[_wgslsmith_index_u32(min(arg_2.x, var_0.x), 24u)])));
    global0 = u_input.b.x >= u_input.b.x;
    let var_2 = arg_0;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(arg_1.a.x, -526f))))));
}

fn func_1() -> f32 {
    let var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1958f, _wgslsmith_f_op_f32(f32(-1f) * -930f)), 250f, false)), _wgslsmith_f_op_f32(1546f + _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1000f, 1000f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(534f, _wgslsmith_div_f32(-1000f, -1544f))), _wgslsmith_f_op_f32(func_4(func_2(vec3<f32>(-1000f, 519f, -525f), Struct_3(Struct_1(vec3<f32>(811f, 961f, 610f)), false, false, Struct_1(vec3<f32>(1063f, 1613f, 131f)), Struct_2(vec3<u32>(0u, u_input.b.x, u_input.b.x), Struct_1(vec3<f32>(-996f, 792f, -956f)), Struct_1(vec3<f32>(-631f, 746f, -265f))))), Struct_1(vec3<f32>(-1340f, 981f, 1000f)), ~vec4<u32>(u_input.b.x, 94899u, u_input.b.x, u_input.b.x), _wgslsmith_f_op_f32(max(624f, 192f)))))));
    let var_1 = (select(any(vec3<bool>(true, false, true)), true, true) | (_wgslsmith_f_op_f32(func_4(func_2(var_0.a, Struct_3(Struct_1(vec3<f32>(var_0.a.x, var_0.a.x, -1250f)), false, true, Struct_1(vec3<f32>(var_0.a.x, var_0.a.x, -534f)), Struct_2(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), Struct_1(vec3<f32>(var_0.a.x, -316f, var_0.a.x)), var_0))), Struct_1(vec3<f32>(var_0.a.x, var_0.a.x, -554f)), vec4<u32>(u_input.b.x, 18395u, u_input.b.x, 0u), 1252f)) > 613f)) & any(!vec4<bool>(true, true, true, any(vec3<bool>(false, true, true))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -411f) + _wgslsmith_f_op_f32(f32(-1f) * -1405f)) + var_0.a.x)) * func_2(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.a * vec3<f32>(var_0.a.x, 1000f, var_0.a.x))), _wgslsmith_f_op_vec3_f32(var_0.a - var_0.a))), Struct_3(var_0, true, true, Struct_1(vec3<f32>(var_0.a.x, var_0.a.x, -1173f)), Struct_2(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x) << (vec3<u32>(4294967295u, 1u, 25409u) % vec3<u32>(32u)), var_0, Struct_1(vec3<f32>(-1361f, -504f, 289f))))).a.x);
    let var_3 = -_wgslsmith_div_i32(~(-2147483647i), u_input.a.x) <= 0i;
    global0 = true;
    return _wgslsmith_f_op_f32(trunc(-415f));
}

fn func_5(arg_0: i32, arg_1: vec3<f32>, arg_2: vec4<i32>, arg_3: i32) -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-arg_1.xy);
    global0 = false;
    let var_1 = min(~vec2<i32>(5683i, _wgslsmith_mult_i32(arg_2.x, ~0i)), arg_2.xw & _wgslsmith_mult_vec2_i32(arg_2.yw, select(select(vec2<i32>(arg_3, 1i), arg_2.zz, vec2<bool>(false, true)), _wgslsmith_mult_vec2_i32(vec2<i32>(12373i, arg_3), vec2<i32>(42721i, -2147483647i)), true)));
    var var_2 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-238f - var_0.x), 1213f, 966f));
    global1 = array<vec4<bool>, 24>();
    return 771f;
}

fn func_6(arg_0: f32) -> Struct_3 {
    global1 = array<vec4<bool>, 24>();
    let var_0 = vec4<bool>(false, all(vec2<bool>(all(select(global1[_wgslsmith_index_u32(12024u, 24u)], global1[_wgslsmith_index_u32(u_input.b.x, 24u)], false)), arg_0 > _wgslsmith_f_op_f32(-arg_0))), !any(!global1[_wgslsmith_index_u32(32500u, 24u)]) || !(u_input.b.x == abs(0u)), any(vec2<bool>(any(select(vec2<bool>(false, false), vec2<bool>(true, false), true)), ~u_input.b.x >= (u_input.b.x & u_input.b.x))));
    var var_1 = ~vec3<u32>(~u_input.b.x, min(~abs(30461u), 12678u), u_input.b.x);
    global1 = array<vec4<bool>, 24>();
    var var_2 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_0, arg_0))))))));
    return Struct_3(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-305f + _wgslsmith_f_op_f32(-var_2.x)), _wgslsmith_f_op_f32(f32(-1f) * -114f), -1437f)), any(var_0.ww), (_wgslsmith_mod_i32(-1i, u_input.a.x) == (-u_input.a.x ^ (u_input.a.x << (u_input.b.x % 32u)))) || false, Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1140f, arg_0, 752f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, var_2.x, -886f))))), Struct_2(firstLeadingBit(~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b.x, 1u, 0u), vec3<u32>(u_input.b.x, var_1.x, 0u))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, 307f, arg_0)))), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(545f, var_2.x, 1542f) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1050f, arg_0, arg_0), vec3<f32>(1068f, 1292f, arg_0)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(_wgslsmith_f_op_f32(func_5(~select(u_input.a.x, -20636i, true) << ((firstTrailingBit(24995u) ^ u_input.b.x) % 32u), vec3<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + -1042f) * _wgslsmith_f_op_f32(func_4(Struct_5(vec4<f32>(-1995f, 1833f, -199f, 474f)), Struct_1(vec3<f32>(-2042f, -1464f, 846f)), vec4<u32>(10540u, 4294967295u, u_input.b.x, u_input.b.x), 983f)))), -firstLeadingBit(~vec4<i32>(-2147483647i, 1i, 1i, -1i)), _wgslsmith_div_i32(_wgslsmith_add_i32(u_input.a.x, -2147483647i), 20396i) << (u_input.b.x % 32u))));
    var_0 = func_6(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -224f)));
    global0 = var_0.c != any(vec2<bool>(true, var_0.b));
    var_0 = func_6(_wgslsmith_f_op_f32(step(-219f, _wgslsmith_f_op_f32(-var_0.a.a.x))));
    global0 = !var_0.c;
    var var_1 = var_0.e;
    var_1 = func_6(-207f).e;
    global1 = array<vec4<bool>, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(u_input.b.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1000f)) + _wgslsmith_f_op_f32(var_1.c.a.x * _wgslsmith_f_op_f32(f32(-1f) * -1055f))), abs(select(u_input.b.x, _wgslsmith_clamp_u32(var_1.a.x | 16129u, ~0u, select(u_input.b.x, var_0.e.a.x, var_0.b)), var_0.b)), _wgslsmith_f_op_f32(1293f - var_1.c.a.x));
}

