struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: bool,
    c: vec3<u32>,
    d: i32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec3<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec2<u32>, 32>;

var<private> global2: vec2<i32>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> vec3<i32> {
    let var_0 = ~(~u_input.a.x);
    let var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(930f, 1641f))), _wgslsmith_f_op_f32(sign(-674f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1512f + 932f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-495f + 1080f) + _wgslsmith_f_op_f32(trunc(596f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-858f, -1105f, -597f, -985f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-677f, 1313f, 2434f, -1024f))))));
    let var_2 = var_1.x;
    let var_3 = Struct_1(global2.x, reverseBits(~(~_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 0u, 0u, var_0), vec4<u32>(u_input.b, var_0, u_input.b, 17987u)))), _wgslsmith_f_op_vec2_f32(var_1.xx - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.wz))));
    let var_4 = any(select(vec4<bool>(all(vec4<bool>(false, true, true, true)) && true, var_0 >= ~4294967295u, true, select(true, true, true)), vec4<bool>(false, !(var_3.a < 0i), false, all(vec4<bool>(true, false, false, false))), all(vec4<bool>(true, true, true, true))));
    return _wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(abs(~vec3<i32>(2147483647i, 10519i, var_3.a) << (_wgslsmith_sub_vec3_u32(vec3<u32>(13309u, 1u, var_3.b.x), var_3.b.wzy) % vec3<u32>(32u))), vec3<i32>(~firstLeadingBit(var_3.a), var_3.a, global2.x)), (vec3<i32>(-1i) * -(vec3<i32>(var_3.a, -22929i, 27063i) | vec3<i32>(-2147483647i, var_3.a, global2.x))) & min(vec3<i32>(62498i, var_3.a, global2.x) << (abs(vec3<u32>(var_3.b.x, var_0, var_3.b.x)) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_i32(vec3<i32>(var_3.a, global2.x, var_3.a) >> (var_3.b.yyx % vec3<u32>(32u)), abs(vec3<i32>(-17872i, 0i, var_3.a)), ~vec3<i32>(global2.x, global2.x, var_3.a))), vec3<i32>(~(1i << (~var_0 % 32u)), 0i, _wgslsmith_dot_vec3_i32(~countOneBits(vec3<i32>(-1i, var_3.a, var_3.a)), max(vec3<i32>(-56487i, var_3.a, 2147483647i) ^ vec3<i32>(1i, -2147483647i, global2.x), vec3<i32>(9743i, var_3.a, 25331i) >> (var_3.b.yzz % vec3<u32>(32u))))));
}

fn func_2() -> vec2<i32> {
    var var_0 = func_3();
    let var_1 = vec4<i32>(max(-(~_wgslsmith_add_i32(global2.x, 2147483647i)), firstLeadingBit(abs(-25087i) ^ min(-1i, var_0.x))), 9215i, firstTrailingBit(_wgslsmith_sub_i32(-7721i, -global2.x)), global2.x);
    var var_2 = Struct_2(vec2<i32>((-1i << (_wgslsmith_sub_u32(u_input.b, u_input.a.x) % 32u)) >> (u_input.b % 32u), ~_wgslsmith_dot_vec4_i32(-var_1, -vec4<i32>(var_1.x, -44638i, 1i, -9095i))), !any(select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(false, false))), _wgslsmith_add_vec3_u32(vec3<u32>(~7726u, u_input.a.x, u_input.b), abs(vec3<u32>(33602u, abs(1u), u_input.b))), countOneBits(countOneBits(var_1.x)), Struct_1(var_1.x, _wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.a.x, u_input.a.x, u_input.b, 28441u), select(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, 73924u, u_input.b, 42842u), vec4<u32>(9928u, u_input.a.x, u_input.b, 21640u)), ~vec4<u32>(u_input.a.x, u_input.a.x, u_input.b, 14264u), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-123f, -391f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(488f, -2421f) + _wgslsmith_div_vec2_f32(vec2<f32>(795f, 714f), vec2<f32>(687f, -139f))))));
    var var_3 = max(~20800i, var_0.x);
    global2 = vec2<i32>(var_1.x, 2147483647i);
    return firstTrailingBit(-select(_wgslsmith_div_vec2_i32(var_0.yy, _wgslsmith_div_vec2_i32(vec2<i32>(0i, var_2.d), vec2<i32>(-14577i, global2.x))), var_2.a, true && (var_0.x < var_0.x)));
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: u32) -> Struct_1 {
    global2 = ~(vec2<i32>(87557i, global2.x) & (~(-vec2<i32>(1i, 2147483647i)) << (~(~global1[_wgslsmith_index_u32(4294967295u, 32u)]) % vec2<u32>(32u))));
    global1 = array<vec2<u32>, 32>();
    let var_0 = Struct_2(_wgslsmith_clamp_vec2_i32(vec2<i32>(-(~global2.x), global2.x), func_2(), _wgslsmith_div_vec2_i32(vec2<i32>(global2.x, global2.x) >> (u_input.a % vec2<u32>(32u)), abs(vec2<i32>(1i, global2.x))) & func_3().yx), true, countOneBits(vec3<u32>(~u_input.b, 1u, arg_2)) >> ((~(~vec3<u32>(arg_2, 1u, 1u)) & vec3<u32>(_wgslsmith_add_u32(0u, 62529u), ~arg_2, u_input.b & 16359u)) % vec3<u32>(32u)), _wgslsmith_sub_i32(_wgslsmith_sub_i32(24116i, ~(~0i)), -46514i), Struct_1((-global2.x >> (4706u % 32u)) & -(-36338i << (0u % 32u)), _wgslsmith_div_vec4_u32(~vec4<u32>(6761u, 4747u, 51014u, u_input.a.x), ~_wgslsmith_div_vec4_u32(vec4<u32>(arg_2, 0u, 1u, u_input.b), vec4<u32>(arg_2, 5075u, arg_0, arg_0))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1000f, 1360f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - -478f)))));
    var var_1 = -1584f;
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.e.c.x) - _wgslsmith_f_op_f32(-var_0.e.c.x)), _wgslsmith_f_op_f32(f32(-1f) * -1520f))));
    return var_0.e;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec2<f32>) -> Struct_1 {
    global0 = _wgslsmith_dot_vec3_u32(max(~vec3<u32>(74075u, arg_1.x, u_input.b) >> ((~arg_0.b.xyw & arg_0.b.xxx) % vec3<u32>(32u)), firstTrailingBit(vec3<u32>(arg_0.b.x, _wgslsmith_sub_u32(u_input.b, 10992u), 70334u))), ~vec3<u32>(_wgslsmith_mult_u32(~4294967295u, arg_0.b.x), reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 12599u, arg_0.b.x), vec3<u32>(4294967295u, 31963u, arg_1.x))), _wgslsmith_add_u32(_wgslsmith_div_u32(53490u, arg_0.b.x), ~32827u)));
    global0 = 4294967295u;
    let var_0 = ~u_input.a.x;
    global2 = vec2<i32>(global2.x ^ _wgslsmith_add_i32(-firstTrailingBit(-1i), -global2.x), global2.x);
    var var_1 = Struct_2(abs(_wgslsmith_sub_vec2_i32(vec2<i32>(global2.x, -global2.x), func_3().yz)), true, arg_1.yyz, _wgslsmith_dot_vec2_i32(max(func_3().xz | max(vec2<i32>(-67852i, arg_0.a), vec2<i32>(global2.x, global2.x)), vec2<i32>(func_2().x, 26327i)), reverseBits(_wgslsmith_add_vec2_i32(vec2<i32>(arg_0.a, 2147483647i), vec2<i32>(global2.x, -21073i)) ^ (vec2<i32>(global2.x, 0i) ^ vec2<i32>(arg_0.a, global2.x)))), Struct_1(~(~1i), abs(reverseBits(max(vec4<u32>(var_0, 7607u, 62109u, u_input.a.x), arg_0.b))), _wgslsmith_f_op_vec2_f32(arg_2 + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.c) * vec2<f32>(-1000f, arg_2.x)))));
    return Struct_1(_wgslsmith_div_i32(2147483647i, global2.x), arg_0.b, vec2<f32>(-375f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-491f + _wgslsmith_f_op_f32(arg_2.x - 1035f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1(u_input.a.x, true, _wgslsmith_add_u32(min(u_input.a.x, _wgslsmith_div_u32(55027u, u_input.a.x)), _wgslsmith_mult_u32(~21415u, u_input.b))), vec4<u32>(_wgslsmith_mod_u32(func_1(u_input.a.x, global2.x <= global2.x, u_input.a.x ^ u_input.a.x).b.x, 1u), 1u, 4294967295u, _wgslsmith_sub_u32(4294967295u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(33956u, u_input.a.x, u_input.a.x, 1u), vec4<u32>(1u, u_input.a.x, 4294967295u, u_input.a.x)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(577f - -203f), 174f) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-957f)) * -2089f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(467f, 523f)))));
    var_0 = Struct_1(var_0.a, abs(_wgslsmith_sub_vec4_u32(~var_0.b, vec4<u32>(66355u, var_0.b.x, 92691u, 58091u))) << (reverseBits(vec4<u32>(0u, var_0.b.x, 1u, ~9993u)) % vec4<u32>(32u)), var_0.c);
    var var_1 = Struct_2(~abs(-vec2<i32>(var_0.a, -1i)), true, countOneBits(var_0.b.wzw | var_0.b.xxx), var_0.a, func_1(var_0.b.x, true, 4294967295u >> (var_0.b.x % 32u)));
    let var_2 = _wgslsmith_add_i32(var_1.d, func_1(firstLeadingBit(u_input.b & _wgslsmith_sub_u32(3124u, 1u)), all(select(select(vec4<bool>(false, var_1.b, false, true), vec4<bool>(var_1.b, var_1.b, false, var_1.b), var_1.b), select(vec4<bool>(var_1.b, false, false, true), vec4<bool>(var_1.b, var_1.b, var_1.b, true), true), true)), ~68974u).a);
    let var_3 = func_4(func_4(var_1.e, reverseBits(_wgslsmith_div_vec4_u32(var_1.e.b, var_1.e.b)) & ~_wgslsmith_sub_vec4_u32(vec4<u32>(var_1.e.b.x, u_input.a.x, 4294967295u, 10241u), vec4<u32>(var_0.b.x, var_0.b.x, var_0.b.x, 4294967295u)), _wgslsmith_f_op_vec2_f32(var_0.c * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(trunc(var_0.c)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c.x, -578f)))))), vec4<u32>(var_1.c.x & var_1.e.b.x, var_1.e.b.x, ~8684u, _wgslsmith_clamp_u32(firstLeadingBit(var_1.e.b.x), 12702u, _wgslsmith_mod_u32(4294967295u, var_0.b.x))) | func_4(func_1(var_1.e.b.x, var_1.b, ~32188u), ~(~vec4<u32>(21241u, 0u, u_input.a.x, 0u)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_1.e.c.x, -425f)))))).b, var_1.e.c).c.x;
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -842f));
    let var_5 = Struct_2(var_1.a, false, var_0.b.wzw, var_0.a, Struct_1(i32(-1i) * -51572i, vec4<u32>(~(~0u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, var_1.c.x, var_1.e.b.x), var_0.b.yyw), 61989u, _wgslsmith_dot_vec2_u32(~vec2<u32>(var_1.c.x, var_0.b.x), func_1(var_0.b.x, false, var_0.b.x).b.yw)), var_1.e.c));
    let x = u_input.a;
    s_output = StorageBuffer(-var_5.a, ~_wgslsmith_clamp_vec3_u32(vec3<u32>(~1u, 1u, 73843u), max(vec3<u32>(var_5.e.b.x, u_input.a.x, 43535u), select(var_0.b.xxw, var_0.b.wwz, var_5.b)), var_1.c), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_5.e.c.x, 1040f, func_4(func_4(var_5.e, vec4<u32>(1u, 1u, 18227u, var_0.b.x), vec2<f32>(-1000f, var_4)), ~var_0.b, _wgslsmith_f_op_vec2_f32(var_5.e.c - var_0.c)).c.x), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_4, -130f, 1999f))))), select(true, !(true && var_1.b), false))), ~(~31718u) >> (1u % 32u));
}

