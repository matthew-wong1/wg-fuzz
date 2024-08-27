struct Struct_1 {
    a: vec4<f32>,
    b: vec2<i32>,
    c: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec3<bool>,
    c: i32,
    d: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
    c: vec4<bool>,
    d: u32,
}

struct Struct_5 {
    a: u32,
    b: Struct_3,
    c: bool,
    d: Struct_2,
    e: Struct_4,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1592u;

var<private> global1: Struct_1;

var<private> global2: array<f32, 20>;

var<private> global3: Struct_3 = Struct_3(1598f, vec3<bool>(true, true, true), 2147483647i, Struct_1(vec4<f32>(-315f, -1569f, -1923f, -748f), vec2<i32>(0i, 2333i), 997f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: i32) -> u32 {
    return _wgslsmith_dot_vec2_u32(abs(vec2<u32>(_wgslsmith_mod_u32(1u, u_input.b >> (u_input.b % 32u)), u_input.b >> (~10635u % 32u))), ~(_wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.b, 1u), ~vec2<u32>(22963u, u_input.b)) ^ vec2<u32>(_wgslsmith_mod_u32(1u, 1u), u_input.b)));
}

fn func_3(arg_0: u32) -> vec4<bool> {
    var var_0 = _wgslsmith_clamp_i32(-30711i, ~(~(-50567i) ^ -global1.b.x), u_input.a.x << (arg_0 % 32u));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.a, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(0u, 20u)]), _wgslsmith_f_op_f32(-global3.d.c), _wgslsmith_f_op_f32(global1.a.x + 676f)) - vec4<f32>(global2[_wgslsmith_index_u32(abs(arg_0), 20u)], -711f, _wgslsmith_f_op_f32(f32(-1f) * -581f), _wgslsmith_f_op_f32(1912f - global1.c)))) - global1.a);
    global0 = min((~(~arg_0) >> (_wgslsmith_mult_u32(~12897u, ~4294967295u) % 32u)) >> (u_input.b % 32u), arg_0);
    var var_2 = _wgslsmith_add_i32(-1i, firstLeadingBit(firstLeadingBit(0i)));
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(global3.a, 1550f), vec2<f32>(var_1.x, -666f)), _wgslsmith_f_op_vec2_f32(-global3.d.a.zw)))) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1f, 1f)))));
    return !(!select(vec4<bool>(global3.b.x, !global3.b.x, any(vec3<bool>(true, false, true)), true), vec4<bool>(global3.b.x, true, true, !global3.b.x), select(vec4<bool>(false, false, global3.b.x, global3.b.x), select(vec4<bool>(false, global3.b.x, false, false), vec4<bool>(false, true, true, global3.b.x), vec4<bool>(global3.b.x, false, global3.b.x, false)), false == global3.b.x)));
}

fn func_2() -> f32 {
    global2 = array<f32, 20>();
    let var_0 = !func_3(5099u);
    let var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(global3.d.c)), 1188f, !global3.b.x)) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global3.d.a.x - 264f))))), var_0.zww, global1.b.x, Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-497f, 795f)) - global3.d.c), global1.a.x, global2[_wgslsmith_index_u32(u_input.b, 20u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1545f * -1847f))), select(-vec2<i32>(2147483647i, u_input.a.x), vec2<i32>(_wgslsmith_div_i32(-2147483647i, 64998i), _wgslsmith_dot_vec3_i32(vec3<i32>(global1.b.x, -38343i, u_input.a.x), vec3<i32>(global1.b.x, -1i, global3.d.b.x))), false | var_0.x), _wgslsmith_f_op_f32(global1.c * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(0u, 20u)] * 1356f) + _wgslsmith_div_f32(global2[_wgslsmith_index_u32(34161u, 20u)], 191f)))));
    global2 = array<f32, 20>();
    var var_2 = vec2<i32>(2147483647i | firstLeadingBit(global1.b.x), ~_wgslsmith_mod_i32(~24267i, reverseBits(32574i)) << (u_input.b % 32u));
    return 811f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = countOneBits(vec4<u32>(u_input.b, 93935u, u_input.b, select(1u, func_1(global3.b.zy, Struct_2(global3.b.x, global3.d, Struct_1(global1.a, global3.d.b, global3.a)), u_input.a.x), true)));
    global3 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())), vec3<bool>(var_0.x <= select(~98496u, u_input.b, !global3.b.x), any(select(global3.b.zz, !global3.b.yx, func_3(96023u).xw)), true), _wgslsmith_mod_i32(~global1.b.x, 4922i), Struct_1(global1.a, _wgslsmith_sub_vec2_i32(min(-global1.b, global3.d.b >> (vec2<u32>(u_input.b, 4294967295u) % vec2<u32>(32u))), countOneBits(reverseBits(global3.d.b))), _wgslsmith_f_op_f32(-global1.a.x)));
    var var_1 = _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(20628u, 20u)]);
    var var_2 = global3.b.x;
    var var_3 = Struct_1(global1.a, -_wgslsmith_mult_vec2_i32(abs(select(vec2<i32>(-2147483647i, -1i), u_input.a, global3.b.x)), -min(global1.b, u_input.a)), 1167f);
    let var_4 = _wgslsmith_sub_u32(max(0u, ~0u) << (_wgslsmith_sub_u32(4294967295u, ~firstTrailingBit(8679u)) % 32u), _wgslsmith_clamp_u32(abs(var_0.x), var_0.x, u_input.b));
    let var_5 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(813f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(var_0.x, 20u)]))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_3.c, 661f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.a.x)))), _wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(select(-10920i, var_3.b.x, false), global3.c), i32(-1i) * -63074i), ~(-reverseBits(vec2<i32>(var_3.b.x, 37416i))), _wgslsmith_mult_vec2_i32(u_input.a, max(firstTrailingBit(vec2<i32>(-2147483647i, global3.d.b.x)), ~global3.d.b))), 1191f);
    let var_6 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_3.a.x))), 638f);
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_mult_vec4_u32(~(vec4<u32>(73185u, 61358u, 7492u, var_0.x) | vec4<u32>(u_input.b, 0u, 4294967295u, u_input.b)), _wgslsmith_clamp_vec4_u32(vec4<u32>(3363u, var_0.x, 0u, var_0.x), ~vec4<u32>(2242u, var_4, u_input.b, u_input.b), ~vec4<u32>(var_4, 39766u, var_4, var_0.x))), max(firstLeadingBit(vec4<u32>(u_input.b, 0u, 3738u, 56128u) | vec4<u32>(1u, 4294967295u, u_input.b, 1u)), reverseBits(~vec4<u32>(48333u, var_4, 38293u, u_input.b)))));
}

