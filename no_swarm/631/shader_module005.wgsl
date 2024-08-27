struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: bool,
    b: vec2<i32>,
    c: i32,
    d: vec2<bool>,
    e: f32,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: vec2<i32>,
    d: u32,
}

struct Struct_4 {
    a: vec3<f32>,
    b: i32,
    c: vec4<i32>,
    d: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: vec4<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 29> = array<vec3<u32>, 29>(vec3<u32>(4294967295u, 1u, 4294967295u), vec3<u32>(53470u, 1u, 4294967295u), vec3<u32>(32413u, 1u, 25202u), vec3<u32>(18788u, 28040u, 23631u), vec3<u32>(85635u, 0u, 9563u), vec3<u32>(1u, 19930u, 1u), vec3<u32>(52317u, 31145u, 72140u), vec3<u32>(105283u, 0u, 39064u), vec3<u32>(4294967295u, 4294967295u, 10946u), vec3<u32>(7534u, 65246u, 59881u), vec3<u32>(1419u, 49291u, 1u), vec3<u32>(70054u, 18159u, 5602u), vec3<u32>(112201u, 20499u, 1u), vec3<u32>(1u, 94599u, 7839u), vec3<u32>(72870u, 79965u, 27680u), vec3<u32>(0u, 0u, 34132u), vec3<u32>(43813u, 43216u, 1u), vec3<u32>(0u, 35022u, 4294967295u), vec3<u32>(78204u, 16316u, 16783u), vec3<u32>(0u, 4294967295u, 1u), vec3<u32>(4294967295u, 11689u, 3466u), vec3<u32>(1243u, 11620u, 54204u), vec3<u32>(53789u, 0u, 0u), vec3<u32>(0u, 4294967295u, 55506u), vec3<u32>(0u, 1u, 0u), vec3<u32>(1u, 48838u, 132157u), vec3<u32>(24226u, 1u, 1u), vec3<u32>(3332u, 1u, 29270u), vec3<u32>(12425u, 77345u, 61218u));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1(arg_0: u32, arg_1: vec3<u32>, arg_2: f32) -> u32 {
    global0 = array<vec3<u32>, 29>();
    let var_0 = ~((u_input.a & ~(~vec4<u32>(0u, arg_1.x, 22275u, 0u))) | reverseBits(u_input.a));
    global0 = array<vec3<u32>, 29>();
    global0 = array<vec3<u32>, 29>();
    global0 = array<vec3<u32>, 29>();
    return ~4294967295u;
}

fn func_3(arg_0: Struct_4, arg_1: vec4<u32>) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_f32(abs(-252f));
    var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(-1798f, -838f), _wgslsmith_f_op_f32(-arg_0.a.x)))))));
    global0 = array<vec3<u32>, 29>();
    let var_1 = Struct_2(false, select(firstTrailingBit(-abs(vec2<i32>(249i, 0i))), abs(_wgslsmith_add_vec2_i32(arg_0.c.xy, arg_0.c.zy)) | min(~vec2<i32>(59857i, 2147483647i), vec2<i32>(18388i, -4262i) ^ arg_0.c.xy), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0.a.x - arg_0.a.x), _wgslsmith_f_op_f32(step(arg_0.a.x, 378f)))) != 227f), 1i << (arg_1.x % 32u), vec2<bool>((arg_1.x & ~0u) < firstTrailingBit(abs(u_input.a.x)), ((u_input.b.x << (u_input.a.x % 32u)) ^ max(u_input.b.x, u_input.b.x)) == 27504i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -263f), _wgslsmith_f_op_f32(step(131f, 1000f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.x))));
    var var_2 = ~(1u >> (~(~(~arg_1.x)) % 32u));
    return ~_wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(u_input.a, arg_1, vec4<u32>(arg_1.x, arg_1.x, arg_1.x, u_input.a.x)), vec4<u32>(arg_1.x, 0u, select(arg_1.x, arg_1.x, false), reverseBits(u_input.a.x))), arg_1);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_4, arg_2: vec2<bool>) -> u32 {
    global0 = array<vec3<u32>, 29>();
    var var_0 = Struct_1(!arg_0.a, true, u_input.b.x);
    let var_1 = abs(select(min(arg_0.c, arg_0.c), firstLeadingBit(-33456i), all(vec4<bool>(arg_0.b || arg_0.a.x, false, true && var_0.b, true))));
    var_0 = arg_0;
    var_0 = arg_0;
    return 0u | _wgslsmith_dot_vec4_u32(firstTrailingBit(func_3(arg_1, vec4<u32>(23092u, u_input.a.x, u_input.a.x, 77599u))), vec4<u32>(58056u, u_input.a.x, 31757u, ~_wgslsmith_mult_u32(3335u, 47874u)));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: vec3<u32>) -> i32 {
    global0 = array<vec3<u32>, 29>();
    let var_0 = Struct_4(vec3<f32>(-1113f, arg_1.a, _wgslsmith_f_op_f32(arg_1.a * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_1.a))))), arg_1.c.x, vec4<i32>(-(~arg_1.c.x), _wgslsmith_sub_i32(arg_1.c.x, firstLeadingBit(1i)), (u_input.b.x ^ _wgslsmith_dot_vec4_i32(vec4<i32>(-171i, 1i, u_input.b.x, u_input.b.x), vec4<i32>(arg_1.c.x, u_input.b.x, arg_1.c.x, 21616i))) << (4294967295u % 32u), -_wgslsmith_clamp_i32(2147483647i, arg_1.c.x << (13103u % 32u), ~56377i)), (52759u != ~_wgslsmith_sub_u32(arg_0.x, 4294967295u)) || any(select(!vec4<bool>(arg_1.b, true, false, arg_1.b), vec4<bool>(arg_1.b, arg_1.b, arg_1.b, arg_1.b), all(vec3<bool>(arg_1.b, false, arg_1.b)))));
    let var_1 = Struct_1(vec4<bool>(false, true, (var_0.d || var_0.d) & !arg_1.b, all(vec4<bool>(any(vec2<bool>(false, true)), false | arg_1.b, any(vec2<bool>(var_0.d, true)), select(var_0.d, true, var_0.d)))), arg_1.b, _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(~vec3<i32>(-64350i, var_0.c.x, -8598i), max(vec3<i32>(arg_1.c.x, u_input.b.x, arg_1.c.x), vec3<i32>(var_0.c.x, arg_1.c.x, 20885i))), -1i & u_input.b.x));
    var var_2 = _wgslsmith_f_op_f32(trunc(-191f));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_1.a, _wgslsmith_f_op_f32(-var_0.a.x))) + 1f)) + _wgslsmith_f_op_f32(f32(-1f) * -587f));
    return 5130i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(_wgslsmith_mod_vec3_u32(vec3<u32>(~0u, u_input.a.x, u_input.a.x), vec3<u32>(4294967295u, ~u_input.a.x, func_1(4724u, vec3<u32>(u_input.a.x, 0u, u_input.a.x), -408f))) >> (vec3<u32>(1u, u_input.a.x, _wgslsmith_div_u32(func_2(Struct_1(vec4<bool>(true, false, false, true), false, u_input.b.x), Struct_4(vec3<f32>(1082f, 727f, 286f), 0i, vec4<i32>(1i, u_input.b.x, u_input.b.x, -37470i), false), vec2<bool>(false, true)), 4294967295u)) % vec3<u32>(32u)), Struct_3(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-327f)))), select(all(vec4<bool>(true, true, true, true)), true, false), _wgslsmith_mult_vec2_i32(abs(u_input.b), max(vec2<i32>(u_input.b.x, 0i), u_input.b) | select(vec2<i32>(u_input.b.x, 3666i), vec2<i32>(-24758i, -2147483647i), vec2<bool>(false, false))), ~func_2(Struct_1(vec4<bool>(true, true, true, false), false, u_input.b.x), Struct_4(vec3<f32>(-1800f, -1526f, -966f), 49360i, vec4<i32>(u_input.b.x, 2147483647i, u_input.b.x, -29682i), true), vec2<bool>(true, false)) >> (~select(u_input.a.x, 4942u, true) % 32u)), global0[_wgslsmith_index_u32(~(~u_input.a.x), 29u)]);
    var var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -434f), _wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(min(-1689f, _wgslsmith_f_op_f32(f32(-1f) * -1764f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -917f) + 1f), _wgslsmith_f_op_f32(-258f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -607f), -1000f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1577f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), -308f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-841f, -1371f)))) + vec4<f32>(1f, _wgslsmith_f_op_f32(max(165f, _wgslsmith_f_op_f32(f32(-1f) * -1127f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1265f * -212f) - _wgslsmith_f_op_f32(max(-140f, -1045f))), 150f)));
    var_1 = vec4<f32>(var_1.x, 669f, var_1.x, -1258f);
    global0 = array<vec3<u32>, 29>();
    let var_2 = vec3<i32>(15906i, 0i, -(func_4(vec3<u32>(1u, 45657u, 4294967295u), Struct_3(-814f, true, vec2<i32>(u_input.b.x, 724i), u_input.a.x), u_input.a.yxx) ^ (u_input.b.x | 40687i)) ^ _wgslsmith_mult_i32(u_input.b.x >> (0u % 32u), u_input.b.x));
    let var_3 = Struct_1(select(!vec4<bool>(all(vec3<bool>(true, false, true)), u_input.b.x < var_2.x, all(vec3<bool>(true, false, false)), true), vec4<bool>(true, all(vec4<bool>(true, true, true, true)), true, true), !(!select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false)))), true, _wgslsmith_mod_i32(var_2.x, _wgslsmith_sub_i32(-u_input.b.x, u_input.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(max(select(_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 1u), min(u_input.a, vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x))), select(u_input.a, vec4<u32>(68193u, 84901u, u_input.a.x, u_input.a.x) & vec4<u32>(21671u, u_input.a.x, 82292u, u_input.a.x), !var_3.a), !(!var_3.a.x)), vec4<u32>(~0u & ~u_input.a.x, 35788u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), ~vec2<u32>(4294967295u, u_input.a.x)), u_input.a.x)), u_input.a.x, select(abs(_wgslsmith_dot_vec2_i32(countOneBits(u_input.b), vec2<i32>(var_2.x, -2147483647i))), -2147483647i, true), _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, ~u_input.a.x | u_input.a.x, ~(~72224u), 69687u), u_input.a, _wgslsmith_clamp_vec4_u32(u_input.a, _wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.a.x, u_input.a.x, 21270u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4294967295u)), vec4<u32>(~30070u, 1u, u_input.a.x, u_input.a.x | 32606u))), ~(_wgslsmith_sub_i32(u_input.b.x, 20855i) ^ -2147483647i) << (_wgslsmith_div_u32(u_input.a.x, _wgslsmith_sub_u32(u_input.a.x >> (4294967295u % 32u), u_input.a.x)) % 32u));
}

