struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<f32>,
    c: vec3<f32>,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: i32,
    b: i32,
}

struct Struct_5 {
    a: f32,
    b: Struct_2,
    c: vec3<i32>,
    d: vec2<u32>,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(-1i, 23467i);

var<private> global1: array<f32, 4> = array<f32, 4>(-1000f, -1874f, -1000f, 518f);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_2() -> Struct_5 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(39157u, 4u)], global1[_wgslsmith_index_u32(u_input.c.x, 4u)], -1804f, global1[_wgslsmith_index_u32(3501u, 4u)]) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(u_input.a, 4u)], 314f, global1[_wgslsmith_index_u32(u_input.a, 4u)], global1[_wgslsmith_index_u32(u_input.a, 4u)]) + vec4<f32>(global1[_wgslsmith_index_u32(1u, 4u)], global1[_wgslsmith_index_u32(1u, 4u)], 1375f, global1[_wgslsmith_index_u32(u_input.a, 4u)]))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(156f, global1[_wgslsmith_index_u32(48001u, 4u)], global1[_wgslsmith_index_u32(49616u, 4u)], 134f) * vec4<f32>(-390f, global1[_wgslsmith_index_u32(u_input.c.x, 4u)], -2015f, global1[_wgslsmith_index_u32(0u, 4u)]))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-263f, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, u_input.a), vec3<u32>(u_input.c.x, 41403u, 153566u)), 4u)], global1[_wgslsmith_index_u32(~u_input.a, 4u)], global1[_wgslsmith_index_u32(~30263u, 4u)]) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(13733u, 4u)], global1[_wgslsmith_index_u32(0u, 4u)], -1259f, global1[_wgslsmith_index_u32(124521u, 4u)]) + vec4<f32>(116f, global1[_wgslsmith_index_u32(6735u, 4u)], -674f, global1[_wgslsmith_index_u32(u_input.c.x, 4u)])) + _wgslsmith_div_vec4_f32(vec4<f32>(701f, global1[_wgslsmith_index_u32(u_input.c.x, 4u)], -241f, -1000f), vec4<f32>(693f, -1894f, 2020f, 2042f))))));
    var var_1 = Struct_1(max(abs(global0.b & u_input.b.x), ~u_input.b.x) != 21624i, var_0.x);
    var var_2 = var_1.a;
    global1 = array<f32, 4>();
    let var_3 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(f32(-1f) * -286f)), 175f), vec2<f32>(663f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(22694u, 4u)]))))));
    return Struct_5(global1[_wgslsmith_index_u32((~u_input.c.x << (~4294967295u % 32u)) >> (0u % 32u), 4u)], Struct_2(min(vec4<u32>(41806u | u_input.c.x, ~5901u, 43308u, countOneBits(u_input.a)), vec4<u32>(0u, u_input.c.x, u_input.c.x, 0u) & (vec4<u32>(u_input.a, u_input.c.x, u_input.a, u_input.a) | vec4<u32>(u_input.a, u_input.c.x, 4294967295u, u_input.a))), vec3<f32>(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(u_input.a, 4u)], _wgslsmith_f_op_f32(round(-455f))), 870f, global1[_wgslsmith_index_u32(1u, 4u)]), vec3<f32>(2434f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b - 289f) + _wgslsmith_f_op_f32(max(848f, -789f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.b))))), vec3<i32>(984i, -16249i, -9952i), ~vec2<u32>(~u_input.a, _wgslsmith_mult_u32(14896u, 0u << (u_input.a % 32u))), vec2<bool>(~_wgslsmith_clamp_i32(global0.b, u_input.d.x, global0.b) < _wgslsmith_clamp_i32(u_input.b.x ^ 43416i, _wgslsmith_clamp_i32(8644i, u_input.d.x, 2147483647i), _wgslsmith_div_i32(-38887i, 22936i)), any(select(vec2<bool>(var_1.a, true), vec2<bool>(var_1.a, var_1.a), vec2<bool>(true, var_1.a))) | (_wgslsmith_f_op_f32(-var_3.x) <= _wgslsmith_f_op_f32(-var_3.x))));
}

fn func_3(arg_0: Struct_2, arg_1: f32) -> vec3<f32> {
    let var_0 = u_input.d;
    var var_1 = Struct_5(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(1000f, 208f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.x))), Struct_2(arg_0.a, vec3<f32>(1001f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(405f, 591f) - -115f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_1)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-890f, global1[_wgslsmith_index_u32(3509u, 4u)]) + -103f), -1688f, arg_0.c.x)), countOneBits(_wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.x, 34697i, 1i), max(vec3<i32>(u_input.d.x, 0i, -38594i), vec3<i32>(-34012i, 2147483647i, 2147483647i)), _wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, 7756i, 2147483647i), vec3<i32>(0i, 0i, global0.a))), ~vec3<i32>(-1i, 756i, -2147483647i))), u_input.c, !(!vec2<bool>(true, any(vec2<bool>(false, false)))));
    let var_2 = Struct_4(var_0.x, _wgslsmith_sub_i32(~_wgslsmith_clamp_i32(8219i << (u_input.a % 32u), var_1.c.x, _wgslsmith_sub_i32(var_0.x, global0.b)), firstTrailingBit(global0.a)));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(242f, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.c.x), 1f)))));
    var var_4 = var_1.b.a.x | _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(~func_2().b.a, ~arg_0.a), min(95307u, func_2().d.x));
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -826f) - var_1.b.b.x), _wgslsmith_f_op_f32(trunc(arg_0.b.x))) * var_1.b.b);
}

fn func_1() -> i32 {
    let var_0 = 213f;
    var var_1 = func_2();
    let var_2 = Struct_2(var_1.b.a, _wgslsmith_f_op_vec3_f32(func_3(var_1.b, var_0)), var_1.b.c);
    global1 = array<f32, 4>();
    var var_3 = Struct_1(true, 407f);
    return (_wgslsmith_mod_i32(u_input.d.x, 32614i) ^ global0.a) >> (min(u_input.a, _wgslsmith_dot_vec3_u32(abs(~var_1.b.a.xwx), ~(vec3<u32>(1u, 1u, 62187u) ^ vec3<u32>(6912u, 4294967295u, u_input.c.x)))) % 32u);
}

fn func_4(arg_0: bool, arg_1: f32, arg_2: Struct_3, arg_3: Struct_3) -> Struct_1 {
    global0 = Struct_4(_wgslsmith_dot_vec2_i32((~arg_2.a.yz ^ _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.d.x, global0.b), arg_3.a.xx)) << (~(~vec2<u32>(44663u, 26102u)) % vec2<u32>(32u)), arg_3.a.yz), 0i);
    global1 = array<f32, 4>();
    var var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) - global1[_wgslsmith_index_u32(0u, 4u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -780f) * _wgslsmith_div_f32(1817f, -150f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1, arg_1) * -1000f))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_1, 235f, -2455f))), any(!select(!vec3<bool>(false, arg_0, true), vec3<bool>(arg_0, arg_0, arg_0), any(vec3<bool>(arg_0, false, true))))));
    var var_1 = func_2().c.xy;
    var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(func_2().b.b)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.x, 362f, -1305f))) * vec3<f32>(694f, arg_1, arg_1)))), vec3<f32>(_wgslsmith_f_op_f32(step(arg_1, _wgslsmith_f_op_f32(191f - -2356f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -555f), 1160f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-225f)) * arg_1)));
    return Struct_1(true, -201f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-321f * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-744f * global1[_wgslsmith_index_u32(u_input.c.x, 4u)]))))), Struct_3(~_wgslsmith_sub_vec3_i32(~vec3<i32>(-2147483647i, -1i, u_input.b.x), ~vec3<i32>(0i, global0.b, -48296i))), Struct_3(-vec3<i32>(func_1(), u_input.b.x, global0.a << (1u % 32u))));
    var var_1 = Struct_2(~reverseBits(_wgslsmith_div_vec4_u32(reverseBits(vec4<u32>(u_input.c.x, 15818u, u_input.c.x, u_input.c.x)), abs(vec4<u32>(0u, 1u, 1u, 0u)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(u_input.a, 4u)])), var_0.b, global1[_wgslsmith_index_u32(1u, 4u)])))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, 1484f, -548f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(688f, global1[_wgslsmith_index_u32(u_input.a, 4u)], -1760f), vec3<f32>(877f, 669f, -1044f))) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1998f, global1[_wgslsmith_index_u32(u_input.a, 4u)], 2891f), vec3<f32>(global1[_wgslsmith_index_u32(u_input.a, 4u)], global1[_wgslsmith_index_u32(u_input.c.x, 4u)], var_0.b))))) * vec3<f32>(global1[_wgslsmith_index_u32(abs(_wgslsmith_sub_u32(u_input.a, 37928u)), 4u)], -304f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1062f * var_0.b)))));
    var var_2 = Struct_3(_wgslsmith_mod_vec3_i32(~vec3<i32>(-2147483647i >> (u_input.c.x % 32u), global0.b, firstLeadingBit(-17260i)), vec3<i32>(_wgslsmith_mult_i32(-2147483647i, u_input.b.x) | -1520i, 1i >> (func_2().d.x % 32u), 34908i)));
    global1 = array<f32, 4>();
    var var_3 = -510f <= global1[_wgslsmith_index_u32(~firstLeadingBit(~(0u << (var_1.a.x % 32u))), 4u)];
    global1 = array<f32, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(~(~u_input.a), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d.x, 73146i, var_2.a.x), vec3<i32>(u_input.d.x, global0.b, var_2.a.x)) ^ -(i32(-1i) * -6259i), -1i, -(~_wgslsmith_sub_i32(var_2.a.x, -2147483647i)), _wgslsmith_dot_vec2_i32(~(~u_input.b), vec2<i32>(_wgslsmith_mult_i32(0i, global0.a), 2147483647i))));
}

