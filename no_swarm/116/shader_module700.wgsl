struct Struct_1 {
    a: vec2<f32>,
    b: vec4<bool>,
    c: vec4<f32>,
    d: vec3<u32>,
    e: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: u32,
    d: vec4<i32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
    c: u32,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_3,
    c: Struct_2,
}

struct Struct_5 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 8>;

var<private> global1: Struct_3 = Struct_3(vec3<i32>(1i, 2147483647i, -5140i), Struct_1(vec2<f32>(-491f, 1034f), vec4<bool>(true, false, true, true), vec4<f32>(-793f, 837f, -1150f, -719f), vec3<u32>(55318u, 0u, 1u), false), 56845u);

var<private> global2: array<Struct_2, 2>;

var<private> global3: Struct_2;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> f32 {
    let var_0 = ~_wgslsmith_add_vec3_u32(firstLeadingBit(_wgslsmith_mod_vec3_u32(reverseBits(vec3<u32>(50864u, 0u, 24987u)), ~global3.b.d)), firstLeadingBit(min(firstLeadingBit(global3.b.d), vec3<u32>(28577u, 23147u, global1.b.d.x))));
    var var_1 = Struct_5(vec2<i32>(global1.a.x, global3.d.x));
    let var_2 = global1.a.x;
    let var_3 = global3.d;
    global1 = Struct_3(~global1.a, global1.b, select(~(~(~u_input.a)), reverseBits(118465u), !(any(global1.b.b) | true)));
    return _wgslsmith_f_op_f32(trunc(global1.b.c.x));
}

fn func_2() -> Struct_3 {
    global2 = array<Struct_2, 2>();
    var var_0 = Struct_3(_wgslsmith_sub_vec3_i32(vec3<i32>(-1140i, _wgslsmith_dot_vec4_i32(vec4<i32>(9191i, global1.a.x, 2147483647i, global3.d.x), vec4<i32>(0i, 6602i, 0i, 13856i)), global1.a.x), global1.a), global1.b, global1.b.d.x);
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(func_3()), -429f, _wgslsmith_f_op_f32(1287f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(1u, 8u)])), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.b.c.x, global1.b.a.x) - _wgslsmith_f_op_f32(floor(912f)))))), _wgslsmith_f_op_f32(-195f + _wgslsmith_f_op_f32(f32(-1f) * -144f)));
    global1 = Struct_3(-var_0.a << (var_0.b.d % vec3<u32>(32u)), Struct_1(vec2<f32>(932f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(var_1.x, global0[_wgslsmith_index_u32(0u, 8u)])), global3.b.c.x, false))), select(select(var_0.b.b, var_0.b.b, select(global3.b.b, vec4<bool>(var_0.b.b.x, false, global3.a, global3.a), true)), !(!global3.b.b), true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(var_0.b.c * global1.b.c)))), global1.b.d, var_0.b.e), _wgslsmith_clamp_u32(~max(select(36707u, global3.b.d.x, global3.b.e), u_input.a), _wgslsmith_mod_u32(51061u, global1.c) >> (~26643u % 32u), _wgslsmith_div_u32(~(~93510u), 1u | ~var_0.c)));
    let var_2 = true;
    return Struct_3(_wgslsmith_mod_vec3_i32(global1.a, vec3<i32>(-1i, 1i, -(~global3.d.x))), global3.b, max(~_wgslsmith_clamp_u32(78673u, _wgslsmith_div_u32(0u, u_input.a), firstLeadingBit(u_input.a)), min(12187u, (0u | global3.b.d.x) & select(var_0.c, global1.b.d.x, global1.b.b.x))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: f32, arg_3: vec4<bool>) -> Struct_1 {
    global3 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(60872u, _wgslsmith_div_u32(0u, ~_wgslsmith_sub_u32(arg_1.d.x, 14976u))), 2u)];
    global2 = array<Struct_2, 2>();
    var var_0 = _wgslsmith_dot_vec4_i32(abs(vec4<i32>(~global1.a.x, -2147483647i, func_2().a.x, global3.d.x)) & ((vec4<i32>(-1i) * -vec4<i32>(global3.d.x, global3.d.x, -1i, arg_0.a.x)) | -(vec4<i32>(0i, 2147483647i, 2147483647i, 2147483647i) ^ vec4<i32>(-2147483647i, 2147483647i, global1.a.x, 0i))), -_wgslsmith_mult_vec4_i32(~vec4<i32>(4543i, -1i, global3.d.x, arg_0.a.x), global3.d));
    global3 = Struct_2(!any(vec3<bool>(func_2().b.b.x, !arg_3.x, global3.d.x >= 10946i)), arg_0.b, 0u, ~global3.d >> (vec4<u32>(arg_1.d.x << (~1768u % 32u), 73121u, _wgslsmith_mult_u32(arg_1.d.x, countOneBits(13741u)), ~1u) % vec4<u32>(32u)));
    global3 = Struct_2(any(vec3<bool>(true, true, true)), arg_0.b, ~_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.d.x, 1u, 27818u, global3.c), ~vec4<u32>(arg_1.d.x, 5924u, 5891u, 4294967295u)), ~58134u << (_wgslsmith_mult_u32(global3.c, global3.b.d.x) % 32u)), _wgslsmith_sub_vec4_i32(vec4<i32>(firstTrailingBit(-arg_0.a.x), abs(~global1.a.x), -(global1.a.x | -17897i), -_wgslsmith_dot_vec3_i32(global1.a, global3.d.ywz)), _wgslsmith_clamp_vec4_i32(vec4<i32>(46170i, -global1.a.x, -58014i, func_2().a.x), global3.d, abs(global3.d))));
    return Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(global1.b.c.ww, global1.b.c.zw) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.b.c.x, arg_1.c.x))))), select(vec4<bool>(select(true, !global1.b.e, !arg_1.b.x), (global3.c ^ 91633u) >= ~1u, false, true), vec4<bool>(!arg_0.b.e, true, 1u == func_2().c, all(vec2<bool>(arg_3.x, true))), (_wgslsmith_f_op_f32(492f + arg_2) != global3.b.c.x) && arg_3.x), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-arg_1.c))), ~_wgslsmith_sub_vec3_u32(~arg_0.b.d, ~vec3<u32>(global3.c, 51170u, 4294967295u)) << (select(reverseBits(vec3<u32>(u_input.a, 9666u, global3.b.d.x)), ~(~arg_1.d), arg_3.wxw) % vec3<u32>(32u)), true);
}

fn func_1() -> vec4<f32> {
    var var_0 = Struct_4(global3.b.c.wx, Struct_3(vec3<i32>(global1.a.x, 0i, -global1.a.x), func_4(func_2(), Struct_1(global3.b.c.zy, vec4<bool>(global1.b.b.x, global1.b.b.x, true, false), vec4<f32>(896f, global1.b.c.x, 1000f, -711f), ~global3.b.d, global3.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(918f, -2000f)) + 291f), vec4<bool>(!global1.b.b.x, select(global3.b.b.x, false, true), !global1.b.b.x, !global1.b.e)), select(_wgslsmith_dot_vec3_u32(global1.b.d, vec3<u32>(global1.b.d.x, 96586u, u_input.a)), global3.b.d.x, global3.b.c.x != global3.b.a.x) << (select(_wgslsmith_dot_vec2_u32(global3.b.d.xy, vec2<u32>(1u, 7071u)), reverseBits(u_input.a), false) % 32u)), global2[_wgslsmith_index_u32(u_input.a, 2u)]);
    var var_1 = var_0.b;
    var var_2 = var_0.b.b;
    global2 = array<Struct_2, 2>();
    global3 = Struct_2(var_1.b.e, global1.b, ~u_input.a, -vec4<i32>(var_0.c.d.x, 2147483647i, firstTrailingBit(var_0.c.d.x), i32(-1i) * -var_1.a.x));
    return vec4<f32>(var_0.b.b.c.x, -298f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-125f, 572f, 11251u > select(4294967295u, 0u, global1.b.b.x))) + 1000f), var_2.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_3(abs(global3.d.wxy), Struct_1(global1.b.a, global1.b.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global1.b.c - _wgslsmith_f_op_vec4_f32(-global3.b.c)) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(func_1()), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(74707u, 8u)], global3.b.a.x, 1474f, global1.b.a.x) + vec4<f32>(-945f, global0[_wgslsmith_index_u32(0u, 8u)], global0[_wgslsmith_index_u32(global1.b.d.x, 8u)], -1000f))))), ~(vec3<u32>(6393u, 1u, u_input.a) >> (global3.b.d % vec3<u32>(32u))), true), _wgslsmith_mod_u32(_wgslsmith_sub_u32(1999u, firstTrailingBit(26711u)), 50005u));
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global3.b.c.xx + global3.b.c.yw) * vec2<f32>(global1.b.a.x, global1.b.c.x)))) + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global3.b.c.zw)), global1.b.a)));
    global0 = array<f32, 8>();
    global0 = array<f32, 8>();
    global0 = array<f32, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(340f, -977f), vec2<f32>(global1.b.c.x, -1000f)), vec2<f32>(-329f, global0[_wgslsmith_index_u32(global3.b.d.x, 8u)])), _wgslsmith_f_op_vec2_f32(global3.b.a * global3.b.a)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-535f, global0[_wgslsmith_index_u32(global3.b.d.x, 8u)]))) * var_0))), (vec3<u32>(countOneBits(1u), ~global1.b.d.x, global3.c) ^ global1.b.d) | global3.b.d, global1.a, vec2<i32>(3378i << (1u % 32u), abs(-2147483647i)));
}

