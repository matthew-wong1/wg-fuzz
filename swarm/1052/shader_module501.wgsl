struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: vec2<bool>,
    d: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<bool>,
}

struct Struct_3 {
    a: f32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: f32,
    e: f32,
}

struct Struct_4 {
    a: vec2<f32>,
    b: i32,
    c: i32,
    d: vec3<f32>,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 22>;

var<private> global1: vec4<bool>;

var<private> global2: f32;

var<private> global3: Struct_1 = Struct_1(vec4<u32>(0u, 15515u, 1u, 1u), 18214u, vec2<bool>(true, false), 1u);

var<private> global4: vec4<i32>;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: i32, arg_1: vec2<i32>) -> vec3<bool> {
    var var_0 = !vec4<bool>(true || all(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(global3.b, u_input.b), 22u)]), true, true, false);
    var var_1 = abs(u_input.a);
    global3 = Struct_1(vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(~global3.a, vec4<u32>(4294967295u, 1u, u_input.a, global3.a.x)), ~min(u_input.a, 4294967295u)), ~global3.b, global3.a.x, abs(52414u)), 1u, select(!select(select(vec2<bool>(true, false), vec2<bool>(true, global3.c.x), var_0.ww), var_0.yx, global3.c), select(!vec2<bool>(true, global1.x), global1.xx, vec2<bool>(var_0.x, all(global3.c))), var_0.x), _wgslsmith_div_u32(42259u, firstTrailingBit(~111978u)));
    global2 = _wgslsmith_f_op_f32(-1896f * -1000f);
    global0 = array<vec4<bool>, 22>();
    return select(vec3<bool>(global3.c.x, true, !(!all(global1.xw))), vec3<bool>(false, _wgslsmith_div_u32(u_input.a, u_input.b << (global3.b % 32u)) >= u_input.b, all(global3.c)), vec3<bool>(!(var_0.x & false), all(vec2<bool>(true & var_0.x, true)), all(select(select(vec2<bool>(global1.x, global3.c.x), vec2<bool>(global3.c.x, global1.x), vec2<bool>(true, global1.x)), select(vec2<bool>(false, global1.x), vec2<bool>(global3.c.x, global3.c.x), global3.c), !global3.c.x))));
}

fn func_2(arg_0: vec4<u32>) -> Struct_1 {
    let var_0 = !select(!(!vec3<bool>(global3.c.x, global3.c.x, global3.c.x)), select(global1.zxw, global1.zyw, func_3(~1i, -global4.zx)), global3.c.x);
    global2 = -1000f;
    return Struct_1(vec4<u32>(abs(abs(25775u)), _wgslsmith_dot_vec3_u32(abs(countOneBits(vec3<u32>(global3.b, 20326u, 50936u))), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(17674u, u_input.b, 39781u, 4294967295u), global3.a), 1u, _wgslsmith_mult_u32(1u, 4294967295u))), 1u, 0u), _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_add_u32(~107040u, arg_0.x), _wgslsmith_dot_vec2_u32(global3.a.yy, global3.a.yw), countOneBits(1u), ~18674u), select(max(~vec4<u32>(0u, 1u, 4294967295u, arg_0.x), ~vec4<u32>(global3.a.x, 81020u, global3.a.x, u_input.a)), global3.a, var_0.x)), vec2<bool>(firstLeadingBit(~arg_0.x) <= (_wgslsmith_clamp_u32(arg_0.x, 1u, global3.a.x) & ~31560u), true), ~u_input.b);
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: vec3<f32>) -> vec2<i32> {
    global0 = array<vec4<bool>, 22>();
    let var_0 = u_input.c;
    var var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_2)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.x, 282f, -1362f)))) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(abs(arg_2.x)), _wgslsmith_f_op_f32(arg_2.x + arg_2.x), _wgslsmith_f_op_f32(select(-329f, arg_2.x, true))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1000f, arg_2.x, arg_2.x), arg_2)) - vec3<f32>(arg_2.x, arg_2.x, 756f)), global1.wxy))), vec3<bool>(false, any(select(select(vec4<bool>(false, true, false, true), global0[_wgslsmith_index_u32(arg_1.b, 22u)], vec4<bool>(arg_1.c.x, true, global1.x, arg_1.c.x)), vec4<bool>(true, arg_1.c.x, true, true), false)), !global1.x));
    var var_2 = arg_1;
    return -max(_wgslsmith_clamp_vec2_i32(global4.yz, global4.wy, firstLeadingBit(global4.zz) >> (vec2<u32>(42672u, u_input.b) % vec2<u32>(32u))), abs(_wgslsmith_sub_vec2_i32(~vec2<i32>(u_input.c, var_0), -vec2<i32>(var_0, 0i))));
}

fn func_1() -> bool {
    global1 = global0[_wgslsmith_index_u32(4294967295u, 22u)];
    let var_0 = ~(func_4(min(0u, _wgslsmith_add_u32(9857u, u_input.b)), func_2(~vec4<u32>(global3.a.x, global3.b, u_input.b, global3.a.x)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-257f, -941f, 409f))))) & ~(vec2<i32>(-2239i, u_input.d) | min(vec2<i32>(-33844i, global4.x), vec2<i32>(-54320i, global4.x))));
    let var_1 = Struct_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)), u_input.c, global4.x, _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(sign(535f)), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1747f)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-166f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1320f, _wgslsmith_f_op_f32(max(589f, 853f)))))));
    global1 = global0[_wgslsmith_index_u32(u_input.a, 22u)];
    return true;
}

fn func_5(arg_0: vec3<bool>, arg_1: i32) -> Struct_1 {
    var var_0 = Struct_1(~(reverseBits(global3.a) & abs(global3.a)) >> ((vec4<u32>(~0u, firstLeadingBit(69911u), ~global3.b, _wgslsmith_add_u32(30372u, global3.b)) << (global3.a % vec4<u32>(32u))) % vec4<u32>(32u)), min(u_input.b, 4294967295u), global3.c, func_2(vec4<u32>(firstLeadingBit(0u), ~(~global3.d), abs(abs(global3.a.x)), _wgslsmith_dot_vec3_u32(~global3.a.zxz, _wgslsmith_div_vec3_u32(global3.a.ywx, vec3<u32>(0u, global3.d, global3.b))))).d);
    global4 = vec4<i32>(-1i) * -min(vec4<i32>(~global4.x, 1i, 1i, global4.x), _wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-47075i, u_input.e, -1058i, 19661i), vec4<i32>(global4.x, -2147483647i, -9569i, -16734i)), firstTrailingBit(vec4<i32>(-2147483647i, 19462i, 23057i, -46238i)), max(vec4<i32>(global4.x, u_input.d, -5893i, arg_1), vec4<i32>(1i, 0i, 27853i, 0i))));
    global1 = !select(!(!global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_0.b, global3.a.x), 22u)]), global0[_wgslsmith_index_u32(countOneBits(~9265u) & (8474u << ((u_input.b ^ var_0.a.x) % 32u)), 22u)], _wgslsmith_clamp_i32(arg_1, _wgslsmith_div_i32(arg_1, global4.x), -arg_1) == u_input.e);
    let var_1 = arg_1;
    global0 = array<vec4<bool>, 22>();
    return Struct_1(global3.a, ~(~var_0.b) << (global3.a.x % 32u), global1.yx, 1u);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = func_5(select(vec3<bool>(func_1(), global1.x, global3.c.x), !global1.yzz, false), -func_4(global3.a.x, Struct_1(~vec4<u32>(u_input.b, 11012u, u_input.b, 1u), max(4294967295u, 42964u), vec2<bool>(true, false), global3.d | 58849u), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-229f, -2504f, -519f), vec3<f32>(-2113f, 298f, 1374f), true))))).x);
    let var_0 = u_input.e;
    global2 = 1081f;
    global0 = array<vec4<bool>, 22>();
    let var_1 = ~global3.d;
    let var_2 = countOneBits(_wgslsmith_mult_u32(_wgslsmith_div_u32(1u, global3.d), ~_wgslsmith_dot_vec3_u32(abs(global3.a.xyz), vec3<u32>(40645u, global3.b, u_input.b) ^ global3.a.zzx)));
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(405f, _wgslsmith_f_op_f32(step(-912f, 465f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(321f, -1134f, -2012f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1534f, 360f, 675f)), true))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(690f, -222f, 658f)))))));
}

