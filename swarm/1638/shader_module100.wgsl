struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: vec3<f32>,
    d: u32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: u32,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: vec3<i32>,
    d: vec4<u32>,
    e: bool,
}

struct Struct_4 {
    a: bool,
    b: i32,
    c: bool,
}

struct Struct_5 {
    a: Struct_3,
    b: i32,
    c: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 9> = array<i32, 9>(8314i, 62304i, i32(-2147483648), 2147483647i, -1i, 2147483647i, -42195i, 0i, -15482i);

var<private> global1: Struct_3;

var<private> global2: array<Struct_4, 1>;

var<private> global3: array<Struct_5, 2> = array<Struct_5, 2>(Struct_5(Struct_3(-1000f, false, vec3<i32>(-3060i, -22466i, -1i), vec4<u32>(1u, 4294967295u, 3314u, 0u), true), -68463i, 84418u), Struct_5(Struct_3(-868f, true, vec3<i32>(0i, 2147483647i, 29232i), vec4<u32>(24595u, 1u, 4294967295u, 1u), false), 2147483647i, 4294967295u));

var<private> global4: array<vec2<u32>, 5> = array<vec2<u32>, 5>(vec2<u32>(4294967295u, 0u), vec2<u32>(50746u, 0u), vec2<u32>(1u, 1u), vec2<u32>(1u, 62153u), vec2<u32>(4294967295u, 39301u));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1() -> Struct_5 {
    global4 = array<vec2<u32>, 5>();
    let var_0 = vec2<bool>(!(all(select(vec2<bool>(true, global1.b), vec2<bool>(true, false), global1.b)) && false), global1.b);
    global3 = array<Struct_5, 2>();
    global4 = array<vec2<u32>, 5>();
    var var_1 = select(vec4<bool>(true, true, !global1.b, select(select(var_0.x, global1.b, false), true || (global1.b && global1.e), true)), vec4<bool>(true, global1.b, global1.a > global1.a, !(~global1.d.x < 0u)), any(!vec3<bool>(!var_0.x, !global1.e, true)));
    return Struct_5(Struct_3(-835f, true, u_input.a, global1.d, false), -26264i, global1.d.x);
}

fn func_3() -> vec3<bool> {
    let var_0 = global1.d.x;
    global4 = array<vec2<u32>, 5>();
    let var_1 = global1.c.x;
    let var_2 = Struct_3(_wgslsmith_f_op_f32(-global1.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a)) < global1.a, u_input.a, countOneBits(select(vec4<u32>(global1.d.x, 80518u, abs(58369u), min(global1.d.x, 0u)), _wgslsmith_mod_vec4_u32(vec4<u32>(45620u, 17550u, global1.d.x, 109754u), global1.d), select(vec4<bool>(global1.b, global1.e, false, true), select(vec4<bool>(true, global1.b, false, false), vec4<bool>(global1.e, global1.e, false, global1.b), vec4<bool>(true, global1.e, false, false)), func_1().a.e))), ~firstTrailingBit(~1u) < _wgslsmith_add_u32(abs(select(34564u, 0u, global1.b)), ~_wgslsmith_mult_u32(49768u, 3436u)));
    global4 = array<vec2<u32>, 5>();
    return !select(!vec3<bool>(1u <= var_2.d.x, global1.e, true), vec3<bool>(!var_2.e, global1.e, true), !select(3388u >= global1.d.x, all(vec3<bool>(var_2.b, var_2.b, var_2.e)), true));
}

fn func_4(arg_0: bool, arg_1: vec2<f32>, arg_2: vec3<bool>) -> i32 {
    global2 = array<Struct_4, 1>();
    global1 = Struct_3(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(163f))), _wgslsmith_f_op_f32(global1.a - global1.a)))), true, ~_wgslsmith_add_vec3_i32(select(global1.c, vec3<i32>(-12896i, u_input.a.x, -2147483647i), false), global1.c << (vec3<u32>(global1.d.x, global1.d.x, global1.d.x) % vec3<u32>(32u))) ^ select(firstLeadingBit(abs(global1.c)), u_input.a, true), global1.d, global1.e);
    let var_0 = _wgslsmith_add_u32(reverseBits(global1.d.x) ^ _wgslsmith_dot_vec2_u32(vec2<u32>(47048u, 18387u), vec2<u32>(global1.d.x, 110616u)), abs(min(_wgslsmith_dot_vec4_u32(vec4<u32>(15772u, global1.d.x, global1.d.x, global1.d.x), _wgslsmith_mod_vec4_u32(global1.d, vec4<u32>(63913u, 37122u, global1.d.x, global1.d.x))), _wgslsmith_dot_vec3_u32(vec3<u32>(61734u, global1.d.x, 4294967295u), ~vec3<u32>(global1.d.x, 1u, 1u)))));
    var var_1 = arg_1.x;
    let var_2 = Struct_4(true, ~(~(-1i)), func_1().a.b);
    return global1.c.x;
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_5, arg_2: Struct_5, arg_3: vec4<bool>) -> i32 {
    var var_0 = vec3<i32>(global0[_wgslsmith_index_u32(global1.d.x, 9u)] | func_4(!arg_3.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-488f, global1.a), vec2<f32>(arg_2.a.a, 1437f))), !func_3()), _wgslsmith_mod_i32(-(~(arg_0.x & 22281i)), firstTrailingBit(~abs(259i))), arg_1.b);
    global3 = array<Struct_5, 2>();
    let var_1 = Struct_1(arg_2.c, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.a) - -736f), global1.a) + vec2<f32>(-473f, 1f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(1000f * -725f), 1610f, 183f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.a.a, -1330f, -245f))), arg_3.xwx))), 4294967295u, arg_3);
    global1 = Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -230f), true, min(vec3<i32>(_wgslsmith_clamp_i32(~global0[_wgslsmith_index_u32(14579u, 9u)], -49771i >> (0u % 32u), -1i), global0[_wgslsmith_index_u32(arg_2.c, 9u)], reverseBits(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(global4[_wgslsmith_index_u32(global1.d.x, 5u)], vec2<u32>(57194u, 15236u)), 9u)])), global1.c), ~arg_2.a.d | arg_2.a.d, var_1.e.x);
    global2 = array<Struct_4, 1>();
    return _wgslsmith_add_i32(-17490i, ~(-29273i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec4<u32>(~(~global1.d.x), _wgslsmith_add_u32(_wgslsmith_div_u32(max(global1.d.x, global1.d.x), global1.d.x << (global1.d.x % 32u)), _wgslsmith_add_u32(6709u, 1u) | global1.d.x), _wgslsmith_dot_vec4_u32(~select(global1.d, global1.d, global1.b), min(vec4<u32>(0u, 4294967295u, global1.d.x, global1.d.x), vec4<u32>(global1.d.x, global1.d.x, 22849u, global1.d.x))), ~65167u);
    let var_1 = ~(func_2(u_input.a, global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(global1.d.x, ~61130u), 2u)], func_1(), select(!vec4<bool>(true, true, global1.b, global1.e), select(vec4<bool>(false, true, global1.e, false), vec4<bool>(false, global1.b, false, global1.e), vec4<bool>(false, true, false, false)), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, global1.b), false))) & _wgslsmith_dot_vec2_i32(global1.c.yy, ~vec2<i32>(2147483647i, u_input.a.x) ^ vec2<i32>(-41073i, -1i)));
    global1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1.a))), -485f)), global1.e, _wgslsmith_mod_vec3_i32(~(~vec3<i32>(-4703i, var_1, 13198i)), ~_wgslsmith_clamp_vec3_i32(vec3<i32>(-12011i, 39182i, var_1), vec3<i32>(u_input.b, global0[_wgslsmith_index_u32(4294967295u, 9u)], -2147483647i), global1.c)) << ((~(vec3<u32>(0u, 38261u, global1.d.x) & global1.d.zwz) & vec3<u32>(global1.d.x, ~0u, var_0.x)) % vec3<u32>(32u)), ~(vec4<u32>(min(var_0.x, 27074u), abs(38896u), 37169u, select(global1.d.x, global1.d.x, global1.e)) | ~var_0), !func_1().a.b);
    let var_2 = false;
    global1 = Struct_3(_wgslsmith_div_f32(global1.a, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -756f))))), global1.b | global1.e, reverseBits(select(min(-u_input.a, vec3<i32>(u_input.b, -42736i, global1.c.x)), -u_input.a, false)), vec4<u32>(_wgslsmith_mod_u32(1u, 35721u >> (min(var_0.x, var_0.x) % 32u)), 0u, _wgslsmith_sub_u32(global1.d.x, global1.d.x), global1.d.x), !global1.e);
    let var_3 = select(var_0.x, select(~(~_wgslsmith_add_u32(1u, global1.d.x)), 1u, false), !(!(!(!var_2))));
    let x = u_input.a;
    s_output = StorageBuffer(-var_1);
}

