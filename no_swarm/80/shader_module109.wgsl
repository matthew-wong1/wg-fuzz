struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: i32,
    d: i32,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: vec2<u32>,
    b: bool,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec3<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 27334u;

var<private> global1: vec3<bool> = vec3<bool>(true, true, true);

var<private> global2: vec2<f32> = vec2<f32>(-251f, 311f);

var<private> global3: array<i32, 4> = array<i32, 4>(80055i, 40848i, -1i, 1i);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_4, arg_1: f32, arg_2: f32) -> u32 {
    var var_0 = arg_0;
    global1 = vec3<bool>(global1.x, all(vec3<bool>(any(!vec4<bool>(false, var_0.b, true, var_0.b)), var_0.b, any(!vec4<bool>(false, arg_0.b, false, global1.x)))), true);
    var_0 = Struct_4(firstTrailingBit(arg_0.a), all(vec4<bool>(-640f == arg_2, all(vec2<bool>(var_0.b, var_0.b)), global1.x, global1.x)) | (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -342f)) != _wgslsmith_f_op_f32(arg_2 * _wgslsmith_f_op_f32(-global2.x))), var_0.c);
    let var_1 = Struct_3(abs(max(var_0.c.x >> ((0u ^ arg_0.c.x) % 32u), _wgslsmith_mult_u32(u_input.d.x, var_0.c.x))));
    let var_2 = reverseBits(_wgslsmith_div_u32(_wgslsmith_mod_u32(abs(~var_1.a), ~var_1.a), _wgslsmith_dot_vec2_u32(vec2<u32>(~var_1.a, max(arg_0.c.x, 20571u)), u_input.d.zz << ((arg_0.a | vec2<u32>(var_0.a.x, 24161u)) % vec2<u32>(32u)))));
    return ~(~var_1.a);
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: Struct_2, arg_3: Struct_4) -> vec2<i32> {
    let var_0 = Struct_1(35721u);
    let var_1 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, global2.x, global2.x, global2.x) * vec4<f32>(global2.x, 1243f, global2.x, -1462f)))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, 1448f, global2.x, 937f) - vec4<f32>(-604f, -540f, global2.x, global2.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-330f, global2.x, 1000f, -785f)))) * vec4<f32>(_wgslsmith_f_op_f32(268f * global2.x), _wgslsmith_f_op_f32(-global2.x), -1360f, 453f))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.x, global2.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-438f)))), _wgslsmith_f_op_f32(step(-401f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(1576f)), _wgslsmith_f_op_f32(sign(global2.x)))))), _wgslsmith_f_op_f32(-global2.x))));
    global2 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(223f, 1000f)))), _wgslsmith_f_op_f32(-global2.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -214f), global2.x) * _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(var_1.x + global2.x))))));
    let var_2 = 1290f;
    let var_3 = -(-vec3<i32>(~arg_2.d, _wgslsmith_add_i32(u_input.b.x, u_input.b.x), u_input.c.x) | (vec3<i32>(arg_2.d, -3047i ^ arg_2.b, 1i) & _wgslsmith_div_vec3_i32(select(u_input.b.wwz, u_input.b.yyw, vec3<bool>(arg_3.b, arg_3.b, true)), abs(vec3<i32>(arg_2.c, arg_2.d, u_input.e.x)))));
    return ~vec2<i32>(~arg_2.c ^ (~u_input.c.x | var_3.x), u_input.b.x);
}

fn func_2(arg_0: vec2<i32>) -> Struct_2 {
    let var_0 = Struct_1(1u);
    let var_1 = 181997u;
    let var_2 = func_4(u_input.d, Struct_3(~u_input.a.x), Struct_2(var_0, -20596i, 1i >> (~(var_0.a ^ u_input.d.x) % 32u), global3[_wgslsmith_index_u32(26053u << ((~4294967295u >> (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 42174u), u_input.a.wx) % 32u)) % 32u), 4u)]), Struct_4(_wgslsmith_sub_vec2_u32(u_input.a.wy, ~(~vec2<u32>(var_0.a, 3895u))), true, vec2<u32>(~110162u, func_3(Struct_4(u_input.a.ww, true, u_input.a.yw), 1884f, global2.x))));
    global0 = ~abs(1u);
    let var_3 = global1.x;
    return Struct_2(Struct_1(var_0.a ^ 1u), arg_0.x, _wgslsmith_mod_i32(-_wgslsmith_dot_vec3_i32(u_input.b.yxw ^ vec3<i32>(3028i, arg_0.x, u_input.e.x), u_input.b.zxz), ~_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, 2147483647i, arg_0.x), u_input.b.zxw, vec3<i32>(arg_0.x, 36437i, -14064i)), u_input.e.zzy)), -_wgslsmith_dot_vec2_i32(-u_input.c, vec2<i32>(-2147483647i >> (u_input.d.x % 32u), arg_0.x)));
}

fn func_5(arg_0: Struct_2, arg_1: u32) -> i32 {
    global0 = 1u;
    let var_0 = 84961u;
    var var_1 = _wgslsmith_sub_vec2_i32(vec2<i32>(-u_input.c.x, -(max(u_input.c.x, -1i) ^ min(global3[_wgslsmith_index_u32(31298u, 4u)], global3[_wgslsmith_index_u32(u_input.a.x, 4u)]))), _wgslsmith_clamp_vec2_i32(select(u_input.e.wz, _wgslsmith_div_vec2_i32(-vec2<i32>(global3[_wgslsmith_index_u32(53403u, 4u)], -1i), u_input.e.zx ^ u_input.c), (u_input.b.x <= -2147483647i) | (global1.x | true)), vec2<i32>(~(-global3[_wgslsmith_index_u32(1u, 4u)]), 1i), u_input.c));
    var var_2 = global3[_wgslsmith_index_u32(arg_0.a.a, 4u)];
    var var_3 = Struct_4(u_input.a.xz, !global1.x, u_input.d.xy);
    return -abs(_wgslsmith_div_i32(14467i, ~global3[_wgslsmith_index_u32(68744u, 4u)]) << (_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(4294967295u, arg_1)), select(vec2<u32>(34547u, arg_0.a.a), u_input.a.zz, false)) % 32u));
}

fn func_1(arg_0: i32) -> i32 {
    var var_0 = vec4<i32>(73675i, min(func_5(func_2(vec2<i32>(arg_0, u_input.b.x)), _wgslsmith_clamp_u32(12861u, firstLeadingBit(0u), 21519u)), global3[_wgslsmith_index_u32(~u_input.a.x, 4u)]), ~(-58166i) << ((func_3(Struct_4(vec2<u32>(1u, 4294967295u), false, vec2<u32>(1u, u_input.a.x)), -940f, _wgslsmith_f_op_f32(global2.x - -1012f)) ^ u_input.d.x) % 32u), 1i);
    let var_1 = global2.x;
    var var_2 = vec3<u32>(~(~min(u_input.a.x, 4294967295u)) << (u_input.a.x % 32u), u_input.d.x, func_2(countOneBits(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.b.x, var_0.x), var_0.wzz), func_2(u_input.b.zz).d))).a.a);
    var var_3 = func_2(u_input.c);
    global2 = _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global2.x, global2.x)));
    return var_3.c;
}

fn func_6(arg_0: vec2<bool>, arg_1: vec4<i32>, arg_2: vec2<bool>, arg_3: Struct_1) -> Struct_3 {
    global2 = vec2<f32>(_wgslsmith_f_op_f32(select(global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global2.x, _wgslsmith_f_op_f32(global2.x + global2.x), true))), false)), -748f);
    var var_0 = vec4<bool>(true, arg_0.x, !(!(!(!arg_2.x))), true);
    let var_1 = countOneBits(~(_wgslsmith_mod_u32(~0u, min(68763u, 1u)) >> (arg_3.a % 32u)));
    global3 = array<i32, 4>();
    let var_2 = ~u_input.e.x;
    return Struct_3(~u_input.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(global1.yx, _wgslsmith_add_vec4_i32(max(vec4<i32>(global3[_wgslsmith_index_u32(u_input.d.x | u_input.a.x, 4u)], 57037i, func_1(-56129i), ~0i), ~u_input.b), u_input.e), vec2<bool>(0i >= reverseBits(_wgslsmith_add_i32(2147483647i, u_input.b.x)), !any(select(vec4<bool>(true, global1.x, global1.x, true), vec4<bool>(global1.x, global1.x, true, global1.x), false))), Struct_1(u_input.d.x << (~u_input.a.x % 32u)));
    let var_1 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, global2.x, -1000f) - vec3<f32>(global2.x, -1166f, -601f)))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, 1113f, _wgslsmith_f_op_f32(-global2.x)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-222f, global2.x, global2.x))))));
    var_0 = func_6(select(global1.yz, global1.yy, vec2<bool>(-1i > global3[_wgslsmith_index_u32(~u_input.d.x, 4u)], true)), ~u_input.e, global1.xy, Struct_1(_wgslsmith_div_u32(_wgslsmith_clamp_u32(select(55240u, 32322u, false), var_0.a >> (var_0.a % 32u), var_0.a | 1u), ~(var_0.a << (1u % 32u)))));
    var var_2 = Struct_4(vec2<u32>(4294967295u, func_3(Struct_4(countOneBits(vec2<u32>(1u, u_input.a.x)), global1.x & global1.x, abs(u_input.a.xy)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global2.x))))), global1.x, ~(~abs(vec2<u32>(var_0.a, var_0.a) << (u_input.a.wy % vec2<u32>(32u)))));
    var var_3 = !vec4<bool>(true, any(vec4<bool>(!var_2.b, !var_2.b, any(vec4<bool>(true, true, true, global1.x)), 0u <= u_input.a.x)), var_2.b, _wgslsmith_mod_u32(0u, _wgslsmith_mod_u32(u_input.d.x, var_0.a)) > 59295u);
    let var_4 = -1000f;
    var_3 = select(!select(vec4<bool>(any(vec3<bool>(var_2.b, false, var_3.x)), var_3.x, global1.x, any(vec4<bool>(global1.x, var_3.x, true, var_3.x))), !(!vec4<bool>(false, false, true, var_3.x)), false), vec4<bool>(global1.x, all(vec4<bool>(true, var_2.b, var_3.x, true)), all(!select(vec3<bool>(true, false, false), vec3<bool>(false, global1.x, false), global1.x)), true), vec4<bool>(global1.x, false, global1.x, _wgslsmith_div_f32(705f, var_1.x) == 1057f));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(1i >> (var_0.a % 32u), _wgslsmith_mod_i32(1i & firstTrailingBit(40033i), firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.b.x, u_input.c.x, 1i), vec4<i32>(58613i, u_input.e.x, global3[_wgslsmith_index_u32(u_input.d.x, 4u)], -1i)))), i32(-1i) * -(0i << (var_0.a % 32u)), global3[_wgslsmith_index_u32(1u & ~var_0.a, 4u)]));
}

