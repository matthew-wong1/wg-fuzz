struct Struct_1 {
    a: vec4<u32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec2<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_2,
    d: vec4<i32>,
    e: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 9>;

var<private> global1: vec4<i32> = vec4<i32>(1389i, 19743i, -1i, -1i);

var<private> global2: array<Struct_1, 22>;

var<private> global3: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(vec4<u32>(11155u, 169u, 8279u, 4294967295u), vec4<u32>(0u, 4294967295u, 1u, 4294967295u)), Struct_1(vec4<u32>(0u, 2435u, 1u, 52360u), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 0u)), Struct_1(vec4<u32>(0u, 14286u, 80628u, 0u), vec4<u32>(40181u, 15875u, 3674u, 4294967295u)), Struct_1(vec4<u32>(15995u, 76755u, 6257u, 60512u), vec4<u32>(32189u, 17208u, 1u, 38558u)), Struct_1(vec4<u32>(71056u, 0u, 0u, 0u), vec4<u32>(9443u, 63558u, 1u, 1u)), Struct_1(vec4<u32>(0u, 4294967295u, 80538u, 26326u), vec4<u32>(0u, 24412u, 1u, 1u)), Struct_1(vec4<u32>(24247u, 1u, 66571u, 1u), vec4<u32>(4294967295u, 19424u, 1u, 110540u)), Struct_1(vec4<u32>(13023u, 61671u, 1u, 24758u), vec4<u32>(12980u, 69383u, 19298u, 4294967295u)), Struct_1(vec4<u32>(9929u, 4572u, 11866u, 23582u), vec4<u32>(47897u, 17330u, 4294967295u, 0u)));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec3<i32>) -> vec2<f32> {
    let var_0 = ~global1.yz;
    global0 = array<Struct_1, 9>();
    global0 = array<Struct_1, 9>();
    global3 = array<Struct_1, 9>();
    global0 = array<Struct_1, 9>();
    return _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-831f)))), -169f)), true));
}

fn func_2(arg_0: vec2<i32>, arg_1: f32) -> vec4<i32> {
    var var_0 = vec2<f32>(-853f, -1000f);
    var_0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -1325f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, var_0.x) + _wgslsmith_f_op_vec2_f32(func_3(global1.xww)))) * _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(431f * var_0.x)), vec2<f32>(-1944f, _wgslsmith_f_op_f32(-892f * arg_1))))));
    global2 = array<Struct_1, 22>();
    var var_1 = _wgslsmith_clamp_vec4_i32(-(vec4<i32>(~global1.x, ~global1.x, -2147483647i, global1.x >> (38502u % 32u)) << ((u_input.a ^ vec4<u32>(u_input.a.x, 0u, 45853u, 44998u)) % vec4<u32>(32u))), _wgslsmith_div_vec4_i32(-(vec4<i32>(-2147483647i, global1.x, u_input.c.x, -59762i) >> (u_input.a % vec4<u32>(32u))) & firstLeadingBit(-vec4<i32>(u_input.c.x, u_input.c.x, global1.x, global1.x)), abs(vec4<i32>(arg_0.x, -32082i, firstTrailingBit(u_input.c.x), 76806i))), min(abs(select(-vec4<i32>(-11717i, 15023i, 0i, 32121i), -vec4<i32>(u_input.c.x, arg_0.x, 31016i, -2147483647i), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true)))), _wgslsmith_add_vec4_i32(abs(-vec4<i32>(4196i, u_input.c.x, u_input.c.x, 1i)), (vec4<i32>(u_input.c.x, arg_0.x, -2147483647i, arg_0.x) | vec4<i32>(u_input.c.x, global1.x, 2147483647i, u_input.c.x)) ^ max(vec4<i32>(7767i, -9012i, global1.x, 44410i), vec4<i32>(arg_0.x, 58067i, -23113i, global1.x)))));
    var var_2 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1, arg_1))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_3(var_1.yzx)).x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_3(vec3<i32>(arg_0.x, 40109i, global1.x) >> (vec3<u32>(4294967295u, 1u, 58566u) % vec3<u32>(32u)))).x)), global3[_wgslsmith_index_u32(0u, 9u)], Struct_2(_wgslsmith_add_vec2_u32(~(u_input.a.ww | vec2<u32>(11461u, u_input.a.x)), select(vec2<u32>(u_input.b, u_input.a.x), countOneBits(u_input.a.zz), vec2<bool>(true, true))), vec2<i32>(2147483647i, var_1.x << (_wgslsmith_div_u32(u_input.b, 0u) % 32u)), global3[_wgslsmith_index_u32(abs(reverseBits(~u_input.a.x)), 9u)]), select(vec4<i32>(global1.x, _wgslsmith_mod_i32(-13974i << (1u % 32u), var_1.x), _wgslsmith_add_i32(44309i, 1i), -_wgslsmith_clamp_i32(1i, -67323i, global1.x)), max(-select(vec4<i32>(arg_0.x, -19308i, var_1.x, 0i), vec4<i32>(global1.x, u_input.c.x, 2147483647i, arg_0.x), true), min(vec4<i32>(23194i, -94607i, var_1.x, 29016i) >> (vec4<u32>(u_input.a.x, 1u, 1u, 46234u) % vec4<u32>(32u)), vec4<i32>(u_input.c.x, global1.x, global1.x, u_input.c.x))), any(!select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true)))), _wgslsmith_dot_vec3_i32(abs(var_1.xxw), firstLeadingBit((vec3<i32>(-22585i, u_input.c.x, var_1.x) << (u_input.a.zww % vec3<u32>(32u))) >> (select(vec3<u32>(0u, 6413u, u_input.a.x), vec3<u32>(u_input.b, 1u, u_input.b), false) % vec3<u32>(32u)))));
    return vec4<i32>(((i32(-1i) * -u_input.c.x) & 1i) << (~var_2.c.a.x % 32u), select(-15278i, -_wgslsmith_clamp_i32(var_2.c.b.x, ~var_1.x, arg_0.x), false), -87493i, _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(-vec4<i32>(1554i, -2147483647i, var_2.d.x, var_2.e), ~max(vec4<i32>(2147483647i, 16623i, -13470i, arg_0.x), var_2.d)), _wgslsmith_sub_i32(abs(select(u_input.c.x, var_2.e, false)), -1i)));
}

fn func_1(arg_0: bool, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: vec3<u32>) -> f32 {
    global1 = firstTrailingBit(~(-countOneBits(vec4<i32>(-1i, 18874i, -24972i, -1i) << (vec4<u32>(u_input.b, 85061u, 4294967295u, 0u) % vec4<u32>(32u)))));
    global1 = ~firstTrailingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(0i, 0i, u_input.c.x, 40187i) << (u_input.a % vec4<u32>(32u)), reverseBits(_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, u_input.c.x, 2147483647i, -1i), vec4<i32>(u_input.c.x, 36027i, 1i, -54643i)))));
    global1 = -firstTrailingBit(func_2(select(u_input.c, ~vec2<i32>(47765i, global1.x), !vec2<bool>(arg_0, arg_0)), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1000f, -1064f), _wgslsmith_div_f32(1181f, -1000f)))));
    let var_0 = ~(~vec4<u32>(u_input.a.x, 34936u, _wgslsmith_add_u32(arg_3.x, u_input.b ^ 4294967295u), arg_1.x));
    let var_1 = false || select(arg_0 && arg_0, !all(vec2<bool>(true, true)), arg_0);
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(239f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-273f + _wgslsmith_f_op_f32(f32(-1f) * -172f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_1, 9>();
    let var_0 = (((~u_input.b >> (~u_input.b % 32u)) > u_input.a.x) | (false | !all(vec4<bool>(false, false, true, true)))) && true;
    let var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(768f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(var_0, u_input.a.zyy, global0[_wgslsmith_index_u32(u_input.a.x, 9u)], u_input.a.wxw)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(705f, -693f)) * 2139f))));
    var var_2 = var_0;
    global0 = array<Struct_1, 9>();
    let var_3 = -1i;
    let x = u_input.a;
    s_output = StorageBuffer(global1.zy, vec2<f32>(-699f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f))), max(37834u, _wgslsmith_clamp_u32(0u, _wgslsmith_mult_u32(~u_input.a.x, 1u), ~1u)));
}

