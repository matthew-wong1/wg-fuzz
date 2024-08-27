struct Struct_1 {
    a: vec2<bool>,
    b: vec4<i32>,
    c: u32,
}

struct Struct_2 {
    a: bool,
    b: vec2<f32>,
    c: Struct_1,
    d: u32,
    e: vec2<bool>,
}

struct Struct_3 {
    a: i32,
    b: bool,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: vec3<i32>,
    b: u32,
    c: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<vec2<u32>, 19> = array<vec2<u32>, 19>(vec2<u32>(0u, 17160u), vec2<u32>(36364u, 44430u), vec2<u32>(0u, 66164u), vec2<u32>(4294967295u, 26416u), vec2<u32>(1u, 0u), vec2<u32>(4294967295u, 16115u), vec2<u32>(0u, 30894u), vec2<u32>(567u, 15541u), vec2<u32>(4294967295u, 30028u), vec2<u32>(33634u, 36655u), vec2<u32>(1u, 20801u), vec2<u32>(0u, 0u), vec2<u32>(38993u, 31621u), vec2<u32>(304u, 32169u), vec2<u32>(1u, 1u), vec2<u32>(0u, 21529u), vec2<u32>(1u, 122071u), vec2<u32>(58988u, 4294967295u), vec2<u32>(18951u, 0u));

var<private> global2: array<Struct_3, 24>;

var<private> global3: vec3<bool>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_4) -> u32 {
    global0 = vec3<bool>(false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(arg_1.a * arg_0.x)) - 1054f) <= arg_1.a, false);
    global3 = !vec3<bool>(!all(select(vec2<bool>(global3.x, true), vec2<bool>(false, global3.x), true)), all(vec4<bool>(true, global3.x, all(vec4<bool>(global0.x, global0.x, false, false)), global3.x)), global0.x);
    global3 = select(!select(!select(vec3<bool>(true, true, global3.x), vec3<bool>(true, true, global3.x), vec3<bool>(global3.x, true, global0.x)), select(!vec3<bool>(global3.x, false, global3.x), select(vec3<bool>(global3.x, global0.x, true), vec3<bool>(global0.x, false, true), false), vec3<bool>(global0.x, global0.x, false)), global3.x), select(select(!(!vec3<bool>(global3.x, global3.x, global3.x)), vec3<bool>(any(vec2<bool>(global0.x, global0.x)), global0.x, global3.x), vec3<bool>(global3.x, false, global3.x)), !vec3<bool>(true, !global0.x, global3.x), ((u_input.e < u_input.a.x) & true) || true), -_wgslsmith_clamp_i32(firstLeadingBit(u_input.a.x), u_input.a.x, countOneBits(u_input.a.x)) <= max(u_input.e, _wgslsmith_div_i32(~9171i, -28855i)));
    global3 = select(vec3<bool>(true, true, any(vec4<bool>(!global0.x, global0.x | true, any(vec3<bool>(global0.x, false, global3.x)), select(true, true, false)))), !(!vec3<bool>(global3.x, arg_0.x >= arg_0.x, all(vec2<bool>(true, global0.x)))), true);
    var var_0 = 390f;
    return select(0u << (0u % 32u), min(3701u, _wgslsmith_div_u32(~_wgslsmith_sub_u32(0u, u_input.b), ~abs(u_input.c))), global0.x);
}

fn func_2() -> Struct_3 {
    var var_0 = Struct_1(global3.zy, _wgslsmith_div_vec4_i32(-vec4<i32>(_wgslsmith_dot_vec3_i32(u_input.a.wzy, u_input.a.yzx), _wgslsmith_mod_i32(4939i, -1i), 1i, 3334i & u_input.e), ~abs(vec4<i32>(2147483647i, -5211i, 24225i, -1i))), abs(_wgslsmith_div_u32(u_input.c, select(min(57898u, 0u), 1u, !global0.x))));
    var var_1 = Struct_1(global3.yx, u_input.a, ~abs(~func_3(vec4<f32>(1182f, 759f, -837f, -666f), Struct_4(-1370f))));
    var var_2 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(456f, -1639f, 345f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1835f, 122f, 251f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1751f, -1000f, -390f) + vec3<f32>(-860f, -872f, -894f)))))));
    global1 = array<vec2<u32>, 19>();
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x - var_2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-704f - 265f) - 775f)), var_2.x, false)));
    return Struct_3(1i, !(!(!(42446u <= u_input.c))));
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: bool, arg_3: Struct_2) -> i32 {
    var var_0 = reverseBits(abs(~u_input.d.wz) & ~(~vec2<u32>(u_input.c, arg_3.c.c))) >> ((_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b, u_input.b), u_input.d.zz) << (global1[_wgslsmith_index_u32(~0u, 19u)] % vec2<u32>(32u))) % vec2<u32>(32u));
    let var_1 = func_2();
    global1 = array<vec2<u32>, 19>();
    let var_2 = _wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_0.x, max(8436u, 9094u) ^ (u_input.b << (var_0.x % 32u)), func_3(vec4<f32>(arg_3.b.x, arg_3.b.x, 301f, 1163f), Struct_4(arg_3.b.x)) << (4294967295u % 32u)), vec4<u32>(1u, _wgslsmith_dot_vec2_u32(select(vec2<u32>(arg_3.d, arg_3.d), u_input.d.xx, arg_3.c.a), global1[_wgslsmith_index_u32(~4294967295u, 19u)]), 60996u, min(~u_input.d.x, 1u))) & _wgslsmith_mult_u32(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(21741u, var_0.x), _wgslsmith_mod_vec2_u32(u_input.d.yx, vec2<u32>(u_input.b, 52874u)))), ~min(var_0.x, abs(arg_3.c.c)));
    let var_3 = ~abs(_wgslsmith_mult_vec2_u32(~reverseBits(vec2<u32>(0u, 7846u)), ~u_input.d.zw));
    return ~(-_wgslsmith_dot_vec2_i32(vec2<i32>(~(-2147483647i), abs(1i)), ~u_input.a.zy));
}

fn func_4(arg_0: Struct_4, arg_1: vec4<i32>, arg_2: i32, arg_3: vec2<u32>) -> Struct_3 {
    var var_0 = 0u;
    let var_1 = Struct_3(2147483647i, global0.x);
    var var_2 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.a + 1397f), _wgslsmith_f_op_f32(-1000f + -1491f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a) * _wgslsmith_f_op_f32(arg_0.a + 1010f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0.a)) * arg_0.a)), _wgslsmith_f_op_f32(step(307f, _wgslsmith_f_op_f32(arg_0.a - _wgslsmith_f_op_f32(-arg_0.a))))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(404f))), _wgslsmith_div_f32(-320f, _wgslsmith_f_op_f32(abs(arg_0.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a)), -467f))), select(!(!vec4<bool>(false, true, false, global3.x)), !vec4<bool>(var_1.b, select(var_1.b, false, true), true, true), true)));
    let var_3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_2.x - var_2.x)));
    global2 = array<Struct_3, 24>();
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_u32(u_input.d.x, 92517u);
    global1 = array<vec2<u32>, 19>();
    var var_1 = u_input.a.x;
    var var_2 = _wgslsmith_mult_vec2_u32(u_input.d.yy, abs(~_wgslsmith_mult_vec2_u32(~vec2<u32>(u_input.c, var_0), u_input.d.xx)));
    let var_3 = -687f;
    var var_4 = func_4(Struct_4(-1646f), vec4<i32>(u_input.e, -2147483647i, _wgslsmith_mod_i32(~(i32(-1i) * -90278i), u_input.a.x), countOneBits(func_1(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e, u_input.e, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, 0i, u_input.a.x)), global0.x, global0.x, Struct_2(global3.x, vec2<f32>(var_3, var_3), Struct_1(global0.zz, u_input.a, var_2.x), 4294967295u, global0.zx)))), firstLeadingBit(u_input.e) << (func_3(vec4<f32>(_wgslsmith_f_op_f32(-var_3), _wgslsmith_f_op_f32(-var_3), 1024f, var_3), Struct_4(var_3)) % 32u), u_input.d.yw);
    let x = u_input.a;
    s_output = StorageBuffer(var_0, countOneBits(_wgslsmith_mod_u32(var_2.x, ~1u)), u_input.a.yz);
}

