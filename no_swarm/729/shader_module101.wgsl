struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: vec2<u32>,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 24> = array<vec2<u32>, 24>(vec2<u32>(0u, 98961u), vec2<u32>(58202u, 1u), vec2<u32>(37885u, 124382u), vec2<u32>(1u, 1144u), vec2<u32>(32155u, 0u), vec2<u32>(46262u, 0u), vec2<u32>(24001u, 0u), vec2<u32>(1u, 1u), vec2<u32>(42730u, 25447u), vec2<u32>(75686u, 1u), vec2<u32>(0u, 49704u), vec2<u32>(1u, 28471u), vec2<u32>(4294967295u, 40856u), vec2<u32>(4743u, 22625u), vec2<u32>(63673u, 4294967295u), vec2<u32>(10177u, 55094u), vec2<u32>(34680u, 7357u), vec2<u32>(1u, 97288u), vec2<u32>(56017u, 27077u), vec2<u32>(42270u, 24522u), vec2<u32>(73201u, 19343u), vec2<u32>(112785u, 0u), vec2<u32>(24930u, 1u), vec2<u32>(4294967295u, 4294967295u));

var<private> global1: vec4<i32>;

var<private> global2: array<u32, 31>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: vec3<u32>) -> f32 {
    var var_0 = -28298i;
    global1 = vec4<i32>(~_wgslsmith_div_i32(countOneBits(global1.x >> (4294967295u % 32u)), reverseBits(min(-1i, u_input.a))), _wgslsmith_dot_vec4_i32(-(vec4<i32>(-54894i, global1.x, 1i, 0i) & ~vec4<i32>(65949i, arg_0.a, 0i, 30163i)), reverseBits(countOneBits(vec4<i32>(global1.x, 1i, 0i, arg_0.a)) | firstTrailingBit(vec4<i32>(1i, -22116i, arg_0.a, -24059i)))), ~global1.x, _wgslsmith_mod_i32(max(arg_0.a, u_input.a) ^ -arg_0.a, global1.x));
    global0 = array<vec2<u32>, 24>();
    var var_1 = ~(4294967295u >> (_wgslsmith_div_u32(arg_0.b.x, 4294967295u) % 32u));
    global2 = array<u32, 31>();
    return _wgslsmith_f_op_f32(floor(arg_0.c.x));
}

fn func_2() -> f32 {
    global2 = array<u32, 31>();
    var var_0 = Struct_2(u_input.a != abs(28147i), Struct_1(~countOneBits(-520i), select(vec4<u32>(4294967295u, u_input.c.x & 4294967295u, ~u_input.b, 42827u), ~(~vec4<u32>(222u, u_input.b, global2[_wgslsmith_index_u32(1u, 31u)], 48800u)), -global1.x >= _wgslsmith_clamp_i32(u_input.a, 40804i, global1.x)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_1(-997i, vec4<u32>(global2[_wgslsmith_index_u32(26029u, 31u)], 1u, 1u, 51680u), vec3<f32>(344f, -1000f, -330f)), vec3<u32>(4294967295u, u_input.c.x, global2[_wgslsmith_index_u32(4271u, 31u)]))) * -169f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1267f + -604f)), _wgslsmith_f_op_f32(-600f - -734f))), Struct_1(9735i, reverseBits(firstTrailingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, global2[_wgslsmith_index_u32(70583u, 31u)], u_input.b, 69947u), vec4<u32>(1u, global2[_wgslsmith_index_u32(0u, 31u)], global2[_wgslsmith_index_u32(1u, 31u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b, 31u)], 31u)])))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(296f, -332f, 730f), vec3<f32>(-468f, -284f, 1429f), vec3<bool>(true, false, false)))))))), max(reverseBits(~min(u_input.c, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 31u)], 24u)])), ~u_input.c));
    var_0 = Struct_2((var_0.a || all(vec3<bool>(false, var_0.a, true))) & (_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.b.a, var_0.b.a, 15079i, u_input.a), _wgslsmith_div_vec4_i32(vec4<i32>(global1.x, global1.x, 0i, -39224i), vec4<i32>(-2147483647i, var_0.c.a, u_input.a, 0i))) == 26603i), Struct_1(reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, var_0.b.a, -4191i), vec3<i32>(0i, var_0.c.a, var_0.b.a))) | -(1i << (var_0.b.b.x % 32u)), vec4<u32>(max(1u, ~10877u), _wgslsmith_dot_vec2_u32(~vec2<u32>(14241u, 0u), _wgslsmith_clamp_vec2_u32(vec2<u32>(68589u, global2[_wgslsmith_index_u32(u_input.b, 31u)]), global0[_wgslsmith_index_u32(u_input.c.x, 24u)], global0[_wgslsmith_index_u32(1u, 24u)])), _wgslsmith_add_u32(0u, global2[_wgslsmith_index_u32(~57907u, 31u)]), var_0.d.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c.c.x, _wgslsmith_f_op_f32(var_0.c.c.x - var_0.b.c.x), -167f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-765f, -1000f, var_0.b.c.x) - vec3<f32>(var_0.c.c.x, var_0.c.c.x, var_0.b.c.x))))), Struct_1(var_0.c.a, ~var_0.b.b, vec3<f32>(788f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.c.c.x))), _wgslsmith_f_op_f32(var_0.b.c.x * var_0.c.c.x))), global0[_wgslsmith_index_u32(1u, 24u)]);
    var var_1 = Struct_4(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1568f, var_0.b.c.x, var_0.b.c.x, 633f))), vec4<f32>(var_0.b.c.x, var_0.c.c.x, var_0.c.c.x, 1805f)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.c.x, var_0.b.c.x, 686f, var_0.c.c.x)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-689f, -2207f, var_0.b.c.x, var_0.b.c.x), vec4<f32>(-683f, var_0.b.c.x, -334f, 580f))), !vec4<bool>(false, var_0.a, var_0.a, var_0.a))), false)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-var_0.b.c.x), _wgslsmith_f_op_f32(-var_0.c.c.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f), -429f))))), Struct_3(select(select(select(vec2<bool>(var_0.a, var_0.a), vec2<bool>(true, var_0.a), true), select(vec2<bool>(var_0.a, false), vec2<bool>(false, true), vec2<bool>(var_0.a, var_0.a)), var_0.a), select(vec2<bool>(var_0.a, true), select(vec2<bool>(var_0.a, var_0.a), vec2<bool>(true, false), vec2<bool>(var_0.a, true)), select(vec2<bool>(var_0.a, var_0.a), vec2<bool>(false, var_0.a), var_0.a)), !var_0.a | true)));
    let var_2 = vec2<bool>(~(~_wgslsmith_mod_u32(33963u, u_input.b)) != 32888u, !(!var_1.b.a.x));
    return var_0.c.c.x;
}

fn func_4(arg_0: vec2<f32>) -> Struct_1 {
    let var_0 = max(-_wgslsmith_clamp_i32(-(global1.x & global1.x), ~countOneBits(5172i), global1.x), u_input.a);
    var var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(u_input.a, vec4<u32>(global2[_wgslsmith_index_u32(1u, 31u)], global2[_wgslsmith_index_u32(u_input.c.x, 31u)], 12639u, u_input.c.x), vec3<f32>(arg_0.x, arg_0.x, arg_0.x)), vec3<u32>(0u, 64153u, global2[_wgslsmith_index_u32(29224u, 31u)]))))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-277f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-2014f)))))), (_wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 31u)], 31u)], 0u), 31u)], _wgslsmith_dot_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(12072u, 31u)], global2[_wgslsmith_index_u32(28517u, 31u)], u_input.c.x), vec3<u32>(1u, u_input.c.x, u_input.b)), 27117u) >= _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(3900u, u_input.c.x, u_input.c.x, u_input.b), vec4<u32>(1569u, 4871u, u_input.c.x, 1u)), vec4<u32>(32448u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(11750u, 31u)], 31u)], 31u)], u_input.b, u_input.c.x) ^ vec4<u32>(u_input.b, 0u, u_input.c.x, global2[_wgslsmith_index_u32(50595u, 31u)]))) & true));
    global0 = array<vec2<u32>, 24>();
    let var_2 = Struct_3(vec2<bool>(select(true, any(vec2<bool>(false, true)), u_input.c.x != _wgslsmith_add_u32(740u, 0u)), false));
    let var_3 = Struct_3(vec2<bool>(u_input.c.x > u_input.b, !var_2.a.x));
    return Struct_1(-1i, vec4<u32>(u_input.b, _wgslsmith_add_u32(abs(~u_input.c.x), countOneBits(~u_input.c.x)), firstTrailingBit(_wgslsmith_sub_u32(1u, u_input.c.x)), 1u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(arg_0.x, arg_0.x), _wgslsmith_div_f32(-110f, arg_0.x), _wgslsmith_div_f32(-741f, -1286f)))));
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> u32 {
    var var_0 = !arg_1;
    var_0 = arg_1;
    let var_1 = func_4(vec2<f32>(_wgslsmith_f_op_f32(-arg_0.c.x), _wgslsmith_f_op_f32(func_2())));
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1000f) > _wgslsmith_f_op_f32(-arg_0.c.x);
    let var_2 = _wgslsmith_add_i32(min(-2147483647i & u_input.a, ~(-8169i)) ^ -1i, -15163i << (u_input.b % 32u)) ^ u_input.a;
    return 1u;
}

fn func_5(arg_0: vec3<bool>, arg_1: f32, arg_2: Struct_4) -> Struct_1 {
    global1 = -(vec4<i32>(min(~(-74101i), 1i), firstTrailingBit(-22398i), _wgslsmith_div_i32(global1.x, _wgslsmith_mult_i32(global1.x, -8484i)), abs(abs(u_input.a))) << (func_4(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(arg_2.a.zw, arg_2.a.xy, vec2<bool>(true, arg_0.x)))))).b % vec4<u32>(32u)));
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_2.a.x)));
    var var_1 = Struct_3(arg_2.b.a);
    global0 = array<vec2<u32>, 24>();
    var var_2 = ~73723u;
    return func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.a.x, arg_2.a.x) + vec2<f32>(arg_1, arg_1))) - arg_2.a.yz));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<u32, 31>();
    global0 = array<vec2<u32>, 24>();
    let var_0 = Struct_3(select(vec2<bool>(true, true), vec2<bool>(false, false), !select(vec2<bool>(true, true), vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(true, false), true))));
    global0 = array<vec2<u32>, 24>();
    var var_1 = func_5(vec3<bool>((_wgslsmith_dot_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 31u)], 31u)], 37318u, 1u), vec3<u32>(11889u, 4294967295u, global2[_wgslsmith_index_u32(u_input.c.x, 31u)])) > func_1(Struct_1(6916i, vec4<u32>(u_input.b, 39228u, 38693u, 0u), vec3<f32>(-398f, -405f, 1683f)), false)) != true, false, true | any(select(vec3<bool>(true, false, var_0.a.x), vec3<bool>(var_0.a.x, true, var_0.a.x), vec3<bool>(false, var_0.a.x, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(func_4(vec2<f32>(-566f, -101f)), ~vec3<u32>(22011u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(54421u, 31u)], 31u)], 31u)], global2[_wgslsmith_index_u32(u_input.b, 31u)]))) * _wgslsmith_f_op_f32(-466f - _wgslsmith_f_op_f32(-510f * 738f)))), Struct_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-450f, 260f, _wgslsmith_f_op_f32(f32(-1f) * -1091f), 629f)), var_0));
    let var_2 = all(select(select(vec2<bool>(true, true), select(select(var_0.a, vec2<bool>(false, var_0.a.x), vec2<bool>(var_0.a.x, true)), vec2<bool>(var_0.a.x, true), vec2<bool>(var_0.a.x, var_0.a.x)), false), vec2<bool>(false || (false || var_0.a.x), true), true));
    let x = u_input.a;
    s_output = StorageBuffer(global1.xz);
}

