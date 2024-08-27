struct Struct_1 {
    a: i32,
    b: f32,
    c: vec4<i32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 6> = array<Struct_2, 6>(Struct_2(vec2<i32>(-21674i, 58896i), Struct_1(i32(-2147483648), 268f, vec4<i32>(9664i, 36358i, -5264i, 2465i), vec3<u32>(16351u, 69630u, 10604u))), Struct_2(vec2<i32>(i32(-2147483648), 20122i), Struct_1(8082i, -659f, vec4<i32>(-1i, 0i, 1i, i32(-2147483648)), vec3<u32>(4294967295u, 1u, 90118u))), Struct_2(vec2<i32>(0i, 10364i), Struct_1(-1i, 1406f, vec4<i32>(2147483647i, 37485i, -22797i, i32(-2147483648)), vec3<u32>(15844u, 4294967295u, 4294967295u))), Struct_2(vec2<i32>(-8306i, 12595i), Struct_1(33679i, 570f, vec4<i32>(39808i, -16676i, -1i, 2147483647i), vec3<u32>(0u, 14500u, 0u))), Struct_2(vec2<i32>(2147483647i, 2147483647i), Struct_1(0i, -107f, vec4<i32>(-16587i, -1i, 64409i, 83982i), vec3<u32>(1u, 4294967295u, 0u))), Struct_2(vec2<i32>(19768i, -54884i), Struct_1(-35432i, 1000f, vec4<i32>(8845i, 1i, -53794i, 2147483647i), vec3<u32>(0u, 4294967295u, 1u))));

var<private> global1: Struct_1;

var<private> global2: f32;

var<private> global3: Struct_1 = Struct_1(-7801i, 2257f, vec4<i32>(-1i, -1i, -1i, 1i), vec3<u32>(45727u, 40020u, 0u));

var<private> global4: array<Struct_1, 28>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec3<i32>, arg_2: bool, arg_3: u32) -> u32 {
    var var_0 = Struct_1(-3539i, 1585f, _wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, arg_1.x, 2147483647i, 0i), -global1.c) | vec4<i32>(~(-1i), ~global3.a, 1i, -2147483647i), ~global1.c), ~select(abs(~vec3<u32>(33561u, arg_3, arg_3)), firstTrailingBit(vec3<u32>(4294967295u, u_input.a.x, 1u) >> (global1.d % vec3<u32>(32u))), true));
    let var_1 = arg_2;
    var var_2 = var_0.c;
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_div_f32(177f, var_0.b), _wgslsmith_f_op_f32(round(global3.b)), global3.b, _wgslsmith_f_op_f32(step(global1.b, var_0.b))))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-global3.b), _wgslsmith_f_op_f32(-global1.b), -2947f, _wgslsmith_f_op_f32(global3.b - 145f))))));
    let var_4 = select(select(!select(vec2<bool>(var_1, false), vec2<bool>(false, arg_2), vec2<bool>(arg_2, var_1)), vec2<bool>(arg_2, true & any(vec4<bool>(arg_2, true, var_1, true))), select(!vec2<bool>(true, var_1), select(!vec2<bool>(arg_2, false), vec2<bool>(false, arg_2), arg_3 <= global1.d.x), !all(vec4<bool>(arg_2, arg_2, var_1, var_1)))), select(vec2<bool>(_wgslsmith_f_op_f32(-var_3.x) != _wgslsmith_f_op_f32(select(var_0.b, 1511f, false)), select(var_0.c.x, var_0.c.x, arg_2) >= 1i), vec2<bool>(var_1, var_1), arg_2), select(select(vec2<bool>(false, true), !(!vec2<bool>(arg_2, var_1)), true && arg_2), vec2<bool>(true, (arg_3 >> (arg_0.x % 32u)) == u_input.a.x), select(select(vec2<bool>(true, var_1), !vec2<bool>(arg_2, var_1), arg_2), !vec2<bool>(arg_2, false), vec2<bool>(global1.c.x >= 2147483647i, select(false, var_1, true)))));
    return _wgslsmith_div_u32(_wgslsmith_add_u32(arg_3, 1u & var_0.d.x), _wgslsmith_mod_u32(var_0.d.x, var_0.d.x ^ global3.d.x));
}

fn func_2(arg_0: u32) -> Struct_1 {
    var var_0 = _wgslsmith_div_f32(-1083f, -1000f);
    global3 = Struct_1(global1.c.x, -1662f, global1.c, vec3<u32>(u_input.a.x, arg_0 & ~1u, ~global3.d.x));
    var var_1 = global4[_wgslsmith_index_u32(~(u_input.a.x >> ((func_3(global3.d.xx, ~vec3<i32>(u_input.b, global3.a, global3.c.x), true, global3.d.x | u_input.a.x) & arg_0) % 32u)), 28u)];
    var var_2 = 29925u;
    var var_3 = select(~_wgslsmith_add_vec4_u32(vec4<u32>(1u, arg_0, global3.d.x, arg_0), vec4<u32>(10620u, global3.d.x, global1.d.x, var_1.d.x)) >> (select(vec4<u32>(global3.d.x, 1u, global3.d.x, u_input.a.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(global1.d.x, var_1.d.x, u_input.a.x, 35988u), vec4<u32>(arg_0, u_input.a.x, 41046u, u_input.a.x), vec4<u32>(u_input.a.x, global1.d.x, global1.d.x, 1u)), vec4<bool>(true, true, true, true)) % vec4<u32>(32u)), ~(~vec4<u32>(1u, var_1.d.x, arg_0, 29749u)) | abs(_wgslsmith_sub_vec4_u32(vec4<u32>(global1.d.x, arg_0, 0u, 0u), vec4<u32>(54363u, u_input.a.x, global1.d.x, 0u))), vec4<bool>(global1.b >= _wgslsmith_f_op_f32(exp2(global1.b)), true, any(vec3<bool>(true, true, false)), false)) | vec4<u32>(u_input.a.x, _wgslsmith_add_u32(global3.d.x, var_1.d.x), 4294967295u, _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(48851u, 59412u, u_input.a.x), ~vec3<u32>(6583u, 12540u, global3.d.x), global1.d), countOneBits(vec3<u32>(arg_0, 38398u, var_1.d.x))));
    return Struct_1(~max(global3.a, global3.a), _wgslsmith_f_op_f32(-225f + -249f), vec4<i32>(-39130i, _wgslsmith_add_i32(-1i, 1i), ~global3.a, -_wgslsmith_mod_i32(-4126i, global3.c.x)), var_1.d);
}

fn func_1(arg_0: vec3<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(global3.b - -590f), 1380f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(725f * global1.b)) + _wgslsmith_f_op_f32(-1581f * _wgslsmith_f_op_f32(sign(1000f)))))));
    let var_1 = u_input.b;
    global2 = global3.b;
    global4 = array<Struct_1, 28>();
    var var_2 = func_2(global3.d.x);
    return Struct_1(var_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + global1.b) * _wgslsmith_f_op_f32(min(var_2.b, _wgslsmith_f_op_f32(2046f * _wgslsmith_f_op_f32(min(global1.b, -674f)))))), vec4<i32>(-(~abs(-2147483647i)), _wgslsmith_dot_vec2_i32(select(-var_2.c.wx, vec2<i32>(var_1, global1.a), -2147483647i < var_2.a), global3.c.xz), global1.a, global3.c.x | ~var_1), vec3<u32>(27311u, u_input.a.x, var_2.d.x));
}

fn func_4(arg_0: Struct_1) -> f32 {
    var var_0 = 0u;
    let var_1 = arg_0;
    global4 = array<Struct_1, 28>();
    var var_2 = vec3<i32>(-1i) * -vec3<i32>(global1.a, _wgslsmith_add_i32(_wgslsmith_clamp_i32(u_input.b, u_input.b, -2147483647i), ~2147483647i), -62716i);
    let var_3 = !select(vec4<bool>(any(vec3<bool>(false, false, true)) && true, true, arg_0.d.x < _wgslsmith_dot_vec3_u32(vec3<u32>(25181u, 4294967295u, arg_0.d.x), global3.d), !any(vec2<bool>(true, false))), !select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false)), vec4<bool>(false, false, false, true), true), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -447f), _wgslsmith_f_op_f32(abs(-1000f)))) != -1000f);
    return global3.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_u32(12854u, ~(~1u));
    global2 = _wgslsmith_f_op_f32(-global3.b);
    var var_1 = Struct_1(u_input.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(func_1(vec3<u32>(11258u, var_0, 38902u))))), global1.c, ~(~vec3<u32>(firstLeadingBit(global1.d.x), _wgslsmith_dot_vec2_u32(u_input.a.xx, vec2<u32>(global1.d.x, 1u)), u_input.a.x)));
    let var_2 = vec2<i32>(global3.c.x, 0i);
    global2 = _wgslsmith_f_op_f32(425f - 186f);
    var var_3 = global0[_wgslsmith_index_u32(firstTrailingBit(23358u), 6u)];
    let var_4 = Struct_2(~var_3.b.c.xz, func_2(_wgslsmith_dot_vec3_u32(~firstTrailingBit(global1.d), abs(vec3<u32>(0u, 4294967295u, 1u)))));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(1u), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_3.b.b, global1.b, -978f, 783f))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(971f, 513f, 1000f, -704f))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b, -699f, var_1.b, global1.b))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b, 1312f, global3.b, var_1.b))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global1.b, -644f, 444f, var_1.b), vec4<f32>(-1000f, global1.b, -863f, global1.b)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-801f, global3.b, 951f, global3.b))))), true)), ~(~36466u));
}

