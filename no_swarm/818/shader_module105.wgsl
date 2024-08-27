struct Struct_1 {
    a: vec3<bool>,
    b: vec2<f32>,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: u32,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: vec4<i32>,
    d: i32,
    e: bool,
}

struct Struct_5 {
    a: Struct_1,
    b: f32,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 18>;

var<private> global1: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(vec3<bool>(true, false, true), vec2<f32>(-1700f, 867f), 4294967295u, 44376u), Struct_1(vec3<bool>(true, true, true), vec2<f32>(-1000f, 1295f), 38428u, 4294967295u), Struct_1(vec3<bool>(false, true, false), vec2<f32>(-707f, 589f), 0u, 4294967295u), Struct_1(vec3<bool>(false, true, true), vec2<f32>(1053f, -1000f), 7017u, 27507u), Struct_1(vec3<bool>(true, false, false), vec2<f32>(312f, -1751f), 4294967295u, 0u), Struct_1(vec3<bool>(false, true, true), vec2<f32>(-1000f, -1523f), 26229u, 18776u), Struct_1(vec3<bool>(true, false, false), vec2<f32>(-1324f, 1893f), 4294967295u, 39222u), Struct_1(vec3<bool>(false, true, true), vec2<f32>(1000f, 1216f), 1u, 34303u), Struct_1(vec3<bool>(true, false, false), vec2<f32>(1491f, -434f), 71973u, 78824u), Struct_1(vec3<bool>(true, true, true), vec2<f32>(-215f, -1462f), 0u, 28335u), Struct_1(vec3<bool>(true, false, true), vec2<f32>(-911f, 552f), 49002u, 1u), Struct_1(vec3<bool>(true, true, true), vec2<f32>(-343f, 1020f), 4294967295u, 33454u), Struct_1(vec3<bool>(false, true, false), vec2<f32>(-272f, -242f), 12788u, 63107u), Struct_1(vec3<bool>(true, false, false), vec2<f32>(420f, 117f), 4294967295u, 40643u), Struct_1(vec3<bool>(true, false, false), vec2<f32>(247f, 592f), 1u, 51391u), Struct_1(vec3<bool>(true, false, true), vec2<f32>(650f, 332f), 4294967295u, 23462u), Struct_1(vec3<bool>(false, true, false), vec2<f32>(-1335f, 1687f), 4294967295u, 4294967295u), Struct_1(vec3<bool>(true, true, true), vec2<f32>(256f, -465f), 4294967295u, 22856u), Struct_1(vec3<bool>(true, true, true), vec2<f32>(-1000f, -1000f), 54582u, 4294967295u), Struct_1(vec3<bool>(true, true, false), vec2<f32>(-1400f, 1512f), 30556u, 29938u));

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: vec2<u32>, arg_1: f32, arg_2: vec3<u32>) -> f32 {
    global0 = array<Struct_2, 18>();
    let var_0 = arg_2.x <= ~firstLeadingBit(4294967295u);
    return _wgslsmith_f_op_f32(arg_1 + arg_1);
}

fn func_3(arg_0: vec3<u32>, arg_1: vec3<i32>, arg_2: f32) -> Struct_3 {
    global1 = array<Struct_1, 20>();
    let var_0 = true;
    global0 = array<Struct_2, 18>();
    let var_1 = arg_0.x;
    let var_2 = arg_1.x;
    return Struct_3(select(select(vec2<bool>(var_0 || var_0, true), !select(vec2<bool>(false, true), vec2<bool>(true, var_0), vec2<bool>(var_0, var_0)), all(!vec3<bool>(var_0, true, false))), vec2<bool>(!any(vec2<bool>(true, true)), true), select(!(!vec2<bool>(true, var_0)), select(vec2<bool>(true, false), select(vec2<bool>(var_0, false), vec2<bool>(var_0, false), vec2<bool>(true, var_0)), any(vec4<bool>(var_0, var_0, false, var_0))), u_input.c.x >= 25540i)));
}

fn func_1(arg_0: vec4<f32>) -> vec2<bool> {
    let var_0 = func_3(vec3<u32>(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(4294967295u, u_input.b.x, u_input.d.x, u_input.b.x)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.d.x, 6939u, 0u, 4294967295u), ~vec4<u32>(26451u, 1u, u_input.d.x, u_input.d.x))), 53004u, _wgslsmith_dot_vec3_u32(abs(vec3<u32>(u_input.d.x, u_input.b.x, u_input.d.x)) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.d.x, 1u, u_input.b.x), vec3<u32>(56575u, u_input.b.x, 0u), vec3<u32>(u_input.d.x, u_input.d.x, 0u)) % vec3<u32>(32u)), _wgslsmith_mod_vec3_u32(vec3<u32>(104650u, 0u, u_input.b.x), vec3<u32>(u_input.d.x, 10469u, 12157u)))), vec3<i32>(~(i32(-1i) * -u_input.a), -1i, -u_input.e.x), _wgslsmith_f_op_f32(func_2(_wgslsmith_div_vec2_u32((u_input.d << (u_input.b % vec2<u32>(32u))) >> (vec2<u32>(0u, 4294967295u) % vec2<u32>(32u)), ~_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b.x, u_input.d.x), u_input.d)), _wgslsmith_f_op_f32(292f * _wgslsmith_f_op_f32(1321f * _wgslsmith_f_op_f32(arg_0.x * 468f))), select(vec3<u32>(u_input.d.x, 4294967295u, u_input.b.x) >> (~vec3<u32>(u_input.d.x, 0u, 107600u) % vec3<u32>(32u)), vec3<u32>(max(91090u, 3723u), u_input.d.x, ~43220u), vec3<bool>(true, false, any(vec3<bool>(true, false, true)))))));
    let var_1 = func_3(firstTrailingBit(vec3<u32>(_wgslsmith_div_u32(~u_input.d.x, 17599u), 4294967295u, ~1u)), select(u_input.e.xyx, vec3<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.a, 1i, u_input.a), select(u_input.e.ywz, u_input.e.yxz, vec3<bool>(var_0.a.x, true, true))), _wgslsmith_mod_i32(0i, ~(-5374i)), -(u_input.c.x ^ u_input.a)), vec3<bool>(true, !var_0.a.x, true)), 256f);
    var var_2 = global0[_wgslsmith_index_u32(firstLeadingBit(u_input.d.x), 18u)];
    global1 = array<Struct_1, 20>();
    global1 = array<Struct_1, 20>();
    return select(!vec2<bool>(func_3(vec3<u32>(0u, 135074u, 29162u), -u_input.e.ywz, var_2.b.x).a.x, var_2.a.a.x), !(!vec2<bool>(true, any(vec3<bool>(false, true, var_1.a.x)))), var_1.a.x);
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: Struct_2) -> Struct_4 {
    let var_0 = Struct_5(Struct_1(vec3<bool>(false, _wgslsmith_f_op_f32(trunc(arg_0.x)) > _wgslsmith_f_op_f32(-arg_1.b.x), true), arg_1.b, ~(~1u), ~(~10494u & arg_3.a.d)), arg_3.b.x, ~11899u);
    global0 = array<Struct_2, 18>();
    global0 = array<Struct_2, 18>();
    var var_1 = Struct_4(Struct_1(!arg_1.a, vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(2925f, var_0.a.b.x)), _wgslsmith_f_op_f32(145f * var_0.a.b.x)), _wgslsmith_f_op_f32(trunc(1000f))), countOneBits(16295u), arg_3.c), 42414u, ~_wgslsmith_mult_vec4_i32(select(-u_input.e, vec4<i32>(2147483647i, 3839i, u_input.c.x, -2147483647i) >> (vec4<u32>(arg_3.a.d, 57787u, u_input.d.x, arg_1.d) % vec4<u32>(32u)), vec4<bool>(var_0.a.a.x, true, false, false)), vec4<i32>(_wgslsmith_dot_vec3_i32(u_input.e.wxx, vec3<i32>(-11548i, u_input.e.x, 0i)), -4584i, 5784i, u_input.c.x)), u_input.c.x, !any(vec2<bool>(var_0.c == 6266u, false)));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1408f, -636f, -991f, _wgslsmith_f_op_f32(f32(-1f) * -997f)) - arg_3.b))));
    return Struct_4(Struct_1(select(select(arg_1.a, !vec3<bool>(arg_1.a.x, false, arg_1.a.x), var_1.e), var_0.a.a, _wgslsmith_f_op_f32(-arg_1.b.x) == _wgslsmith_div_f32(var_0.a.b.x, 483f)), _wgslsmith_f_op_vec2_f32(-arg_0.zy), 4294967295u, firstTrailingBit(8566u)), var_1.b, vec4<i32>(u_input.a, _wgslsmith_dot_vec3_i32(countOneBits(-var_1.c.yzy), u_input.e.yxy), -9242i, var_1.d), 2147483647i, countOneBits(_wgslsmith_sub_i32(var_1.c.x, _wgslsmith_div_i32(var_1.d, u_input.c.x))) <= u_input.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 20>();
    var var_0 = Struct_2(Struct_1(!select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false)), vec3<bool>(true, true, true), all(vec4<bool>(false, true, false, false))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(427f, 306f) * vec2<f32>(1000f, 1361f)), vec2<f32>(459f, 210f), true)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -1507f) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(462f, 629f))))), u_input.d.x & u_input.d.x, reverseBits(firstLeadingBit(u_input.b.x)) << (805u % 32u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(-147f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-596f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-958f))), _wgslsmith_f_op_f32(f32(-1f) * -1236f))), ~4294967295u);
    let var_1 = func_4(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -468f)), var_0.b.x, var_0.b.x), global1[_wgslsmith_index_u32(u_input.d.x, 20u)], func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(var_0.b, vec4<f32>(-834f, var_0.b.x, var_0.b.x, var_0.a.b.x)), vec4<f32>(var_0.a.b.x, var_0.b.x, 1155f, var_0.a.b.x))))), global0[_wgslsmith_index_u32(max(u_input.d.x, ~(1u & min(var_0.c, 59678u))), 18u)]);
    global0 = array<Struct_2, 18>();
    global1 = array<Struct_1, 20>();
    var var_2 = func_1(var_0.b).x;
    var var_3 = -_wgslsmith_add_vec4_i32(-u_input.e, var_1.c);
    let var_4 = vec4<u32>(1u, var_1.a.d, u_input.b.x, ~var_1.b);
    let var_5 = 9528u;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c, _wgslsmith_f_op_vec3_f32(exp2(var_0.b.xzw)), reverseBits(9404u));
}

