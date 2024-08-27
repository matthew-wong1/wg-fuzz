struct Struct_1 {
    a: f32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: f32,
    c: vec4<u32>,
    d: vec3<bool>,
    e: bool,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: f32;

var<private> global2: array<f32, 23> = array<f32, 23>(265f, -1899f, -1855f, -374f, 605f, 675f, 475f, -1141f, -330f, -1156f, -805f, 788f, -453f, -1146f, -1122f, -225f, -586f, 241f, 968f, -331f, 1169f, -300f, -981f);

var<private> global3: array<vec3<f32>, 27>;

var<private> global4: bool;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: u32, arg_3: u32) -> vec2<i32> {
    global3 = array<vec3<f32>, 27>();
    var var_0 = vec2<u32>(arg_2, arg_2);
    global1 = -101f;
    global3 = array<vec3<f32>, 27>();
    global3 = array<vec3<f32>, 27>();
    return -reverseBits(vec2<i32>(_wgslsmith_sub_i32(-2147483647i, countOneBits(arg_0)), ~(~10598i)));
}

fn func_2(arg_0: i32, arg_1: Struct_2) -> Struct_1 {
    global2 = array<f32, 23>();
    let var_0 = Struct_1(_wgslsmith_f_op_f32(1016f * global2[_wgslsmith_index_u32(~(~u_input.a.x >> (_wgslsmith_div_u32(4294967295u, u_input.a.x) % 32u)), 23u)]), vec2<i32>(arg_0, 31053i));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -542f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(trunc(-254f))))));
    global3 = array<vec3<f32>, 27>();
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_1.b)) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.x)), global2[_wgslsmith_index_u32(u_input.a.x, 23u)]))), countOneBits(func_3(50681i, ~(~6255u), ~reverseBits(4294967295u), arg_1.c.x)));
    return Struct_1(global2[_wgslsmith_index_u32(countOneBits(firstTrailingBit(_wgslsmith_mult_u32(~14576u, ~arg_1.c.x))), 23u)], firstLeadingBit(var_1.b));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    global2 = array<f32, 23>();
    var var_0 = Struct_2(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_sub_u32(~0u, firstTrailingBit(2656u)) >> (~4965u % 32u), _wgslsmith_div_u32(u_input.a.x & (u_input.a.x & 36748u), 1u)), 27u)], -532f, ~vec4<u32>(26196u, u_input.a.x, 4294967295u, max(0u, u_input.a.x)), select(vec3<bool>(any(vec3<bool>(true, true, true)), true, true), select(vec3<bool>(all(vec2<bool>(true, true)), true, true), vec3<bool>(true, true, true), true), !(!select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), false))), any(vec2<bool>(true, select(all(vec2<bool>(true, true)), all(vec3<bool>(true, false, false)), true))));
    let var_1 = Struct_3(4294967295u, arg_0, Struct_1(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(countOneBits(u_input.a.x), var_0.c.x | 0u, max(1u, var_0.c.x)), 23u)], _wgslsmith_f_op_f32(f32(-1f) * -240f)), arg_0.b), Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(18697u, 23u)] * arg_0.a) + arg_0.a))), -arg_0.b), Struct_2(var_0.a, var_0.a.x, var_0.c & vec4<u32>(_wgslsmith_sub_u32(u_input.a.x, u_input.a.x), _wgslsmith_dot_vec4_u32(var_0.c, vec4<u32>(var_0.c.x, u_input.a.x, 1u, 0u)), min(0u, 14285u), ~0u), !vec3<bool>(var_0.d.x, var_0.e, false), var_0.e));
    global0 = false;
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.b.a, _wgslsmith_f_op_f32(f32(-1f) * -771f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-836f, _wgslsmith_f_op_f32(-150f + arg_0.a))))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.d.a, _wgslsmith_div_f32(arg_0.a, var_1.c.a)) * _wgslsmith_f_op_f32(sign(450f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-653f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(var_1.a, 23u)])))))))));
    return func_2(arg_0.b.x, Struct_2(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global3[_wgslsmith_index_u32(var_0.c.x, 27u)]), var_0.a))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(var_1.a >> (u_input.a.x % 32u), 23u)], _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(44309u, 23u)]), !var_0.e)), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(93017u, 23u)] * global2[_wgslsmith_index_u32(firstTrailingBit(0u), 23u)])), vec4<u32>(reverseBits(11782u), var_1.a, ~_wgslsmith_dot_vec3_u32(vec3<u32>(7991u, 57394u, 19887u), var_0.c.xyy), ~var_1.e.c.x), select(!select(var_1.e.d, var_1.e.d, false), vec3<bool>(true, true, !var_0.d.x), select(vec3<bool>(var_1.e.d.x, var_1.e.d.x, true), !var_0.d, var_0.e)), any(!select(var_0.d.yy, vec2<bool>(false, var_0.e), vec2<bool>(false, false)))));
}

fn func_1(arg_0: vec2<i32>) -> Struct_3 {
    let var_0 = func_4(func_2(~(i32(-1i) * -1i), Struct_2(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2273f, 1000f, 1578f) + vec3<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 23u)], -2449f, global2[_wgslsmith_index_u32(u_input.a.x, 23u)])), vec3<f32>(global2[_wgslsmith_index_u32(92671u, 23u)], -665f, global2[_wgslsmith_index_u32(5335u, 23u)]))), 2064f, ~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.a.x)), select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true), vec3<bool>(true, true, true), true), global2[_wgslsmith_index_u32(0u, 23u)] >= _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(4294967295u, 23u)]))));
    global4 = false;
    global3 = array<vec3<f32>, 27>();
    let var_1 = Struct_3(abs(9099u), Struct_1(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_div_u32(1u, u_input.a.x), 0u) << (4832u % 32u), 23u)], var_0.b), Struct_1(-502f, vec2<i32>(0i, _wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(var_0.b.x, -2147483647i, arg_0.x)), firstTrailingBit(vec3<i32>(1i, arg_0.x, -38526i))))), var_0, Struct_2(_wgslsmith_f_op_vec3_f32(global3[_wgslsmith_index_u32(66074u, 27u)] * global3[_wgslsmith_index_u32(u_input.a.x, 27u)]), -1641f, vec4<u32>(~(~4294967295u), ~46051u, ~_wgslsmith_mod_u32(u_input.a.x, 1u), _wgslsmith_dot_vec3_u32(~vec3<u32>(82667u, 23848u, u_input.a.x), countOneBits(vec3<u32>(u_input.a.x, u_input.a.x, 1u)))), !(!select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false))), 107f <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.a)))));
    return Struct_3(abs(u_input.a.x), Struct_1(var_0.a, vec2<i32>(select(var_0.b.x, _wgslsmith_mod_i32(arg_0.x, 0i), true), _wgslsmith_sub_i32(firstTrailingBit(var_0.b.x), _wgslsmith_div_i32(var_1.d.b.x, 0i)))), var_0, Struct_1(var_0.a, abs(vec2<i32>(-var_0.b.x, var_1.b.b.x))), var_1.e);
}

fn func_5(arg_0: Struct_3, arg_1: vec3<bool>, arg_2: Struct_3, arg_3: vec4<i32>) -> vec3<i32> {
    return vec3<i32>(min(1i, ~arg_2.b.b.x), arg_0.b.b.x, ~_wgslsmith_div_i32(arg_0.d.b.x, func_1(vec2<i32>(arg_2.b.b.x, arg_3.x)).c.b.x) | arg_2.c.b.x);
}

fn func_6(arg_0: vec3<i32>) -> Struct_3 {
    let var_0 = -984f;
    global0 = !(firstTrailingBit(max(arg_0.x, arg_0.x) ^ _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.x, arg_0.x), vec2<i32>(0i, arg_0.x))) == arg_0.x);
    let var_1 = func_1(arg_0.zx);
    let var_2 = vec4<i32>(-1i) * -vec4<i32>(_wgslsmith_add_i32(min(arg_0.x, -2147483647i), i32(-1i) * -1i), var_1.c.b.x, _wgslsmith_clamp_i32(min(arg_0.x, -1i), -2147483647i | var_1.c.b.x, var_1.d.b.x), -1i);
    global4 = _wgslsmith_mod_u32(~var_1.e.c.x, _wgslsmith_add_u32(1u, var_1.a)) < 19317u;
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(firstTrailingBit(func_5(func_1(vec2<i32>(-31655i, -20509i)), vec3<bool>(true, true, true), func_1(vec2<i32>(27173i, 23414i)), -vec4<i32>(-2147483647i, 1i, -2147483647i, 1i))) << (~max(_wgslsmith_div_vec3_u32(vec3<u32>(45463u, 95819u, u_input.a.x), vec3<u32>(8314u, 0u, 29134u)), abs(vec3<u32>(u_input.a.x, u_input.a.x, 70521u))) % vec3<u32>(32u)));
    var var_1 = var_0.c.a;
    let var_2 = -func_6(vec3<i32>(~5355i, ~var_0.b.b.x, var_0.c.b.x) & abs(~vec3<i32>(36269i, var_0.d.b.x, 1i))).b.b;
    var var_3 = var_0.e.c;
    global2 = array<f32, 23>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.b.a * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.a) - var_0.c.a)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.b.a))), _wgslsmith_mult_u32(~var_0.e.c.x, 0u), -12547i, global2[_wgslsmith_index_u32(reverseBits(36423u), 23u)]);
}

