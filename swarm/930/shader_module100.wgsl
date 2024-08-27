struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
}

struct Struct_4 {
    a: u32,
    b: vec3<bool>,
    c: vec2<bool>,
}

struct Struct_5 {
    a: vec4<f32>,
    b: Struct_4,
    c: vec4<u32>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 6> = array<bool, 6>(false, false, false, true, false, true);

var<private> global1: array<i32, 14>;

var<private> global2: u32 = 72973u;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: Struct_4, arg_1: f32) -> u32 {
    let var_0 = max(99281u, ~(~54957u));
    let var_1 = Struct_5(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(190f, arg_1, -139f, arg_1)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 411f, -673f, 620f) * vec4<f32>(arg_1, arg_1, arg_1, -1462f)))))), Struct_4(_wgslsmith_sub_u32(15686u, u_input.a), select(select(!vec3<bool>(global0[_wgslsmith_index_u32(arg_0.a, 6u)], false, true), select(vec3<bool>(arg_0.b.x, false, arg_0.b.x), vec3<bool>(true, global0[_wgslsmith_index_u32(arg_0.a, 6u)], global0[_wgslsmith_index_u32(var_0, 6u)]), vec3<bool>(true, global0[_wgslsmith_index_u32(15586u, 6u)], global0[_wgslsmith_index_u32(arg_0.a, 6u)])), arg_0.b), vec3<bool>(arg_0.b.x && arg_0.b.x, true, true), true), !vec2<bool>(arg_0.c.x, arg_1 < -1964f)), vec4<u32>(~var_0, 28037u, abs(var_0), _wgslsmith_sub_u32(u_input.b, _wgslsmith_add_u32(82155u, var_0))) ^ u_input.d, !select(!vec4<bool>(true, global0[_wgslsmith_index_u32(0u, 6u)], arg_0.b.x, false), !vec4<bool>(true, false, global0[_wgslsmith_index_u32(arg_0.a, 6u)], false), false));
    let var_2 = Struct_4(u_input.d.x, arg_0.b, arg_0.c);
    global1 = array<i32, 14>();
    let var_3 = arg_0;
    return 15854u;
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_4) -> bool {
    var var_0 = _wgslsmith_mod_i32(-1i, -select(-8722i, firstTrailingBit(_wgslsmith_clamp_i32(arg_0.b.a.x, 12707i, 31770i)), arg_0.b.c.x));
    var_0 = arg_1.a.x;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-213f * 664f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(248f, 629f))))));
    var_0 = 1i;
    global2 = 0u;
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -221f)))) != -539f;
}

fn func_1(arg_0: Struct_4, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: Struct_4) -> u32 {
    var var_0 = func_3(Struct_2(func_2(arg_3, -475f), arg_1), Struct_1(arg_1.a, arg_2.x, arg_1.c), Struct_2(66499u, Struct_1(~arg_1.a | vec3<i32>(-8005i, 11285i, global1[_wgslsmith_index_u32(u_input.d.x, 14u)]), -27455i, !arg_1.c)), arg_0);
    global2 = func_2(Struct_4(arg_0.a, vec3<bool>(arg_3.c.x, true, arg_3.c.x), vec2<bool>(func_3(Struct_2(20459u, arg_1), Struct_1(arg_1.a, arg_2.x, arg_1.c), Struct_2(0u, arg_1), arg_0), global0[_wgslsmith_index_u32(~(arg_0.a >> (4294967295u % 32u)), 6u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-692f - 223f) - 1279f))));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-372f, -1095f)) - -353f)))), 1570f, _wgslsmith_f_op_f32(f32(-1f) * -489f));
    var var_2 = ~u_input.d.zw >> (u_input.d.yx % vec2<u32>(32u));
    var var_3 = false;
    return var_2.x;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: u32, arg_3: vec2<bool>) -> Struct_2 {
    let var_0 = Struct_3(Struct_1(vec3<i32>(_wgslsmith_sub_i32(~(-36697i), ~(-26077i)), select(-30050i, u_input.c, false), 11938i), -arg_1.a.b, !(!arg_0.c)), select(u_input.a, firstTrailingBit(~(~arg_2)), arg_1.a.c.x));
    global1 = array<i32, 14>();
    global1 = array<i32, 14>();
    global2 = _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(abs(abs(vec3<u32>(0u, 0u, arg_2))) << (vec3<u32>(countOneBits(0u), countOneBits(arg_2), _wgslsmith_dot_vec3_u32(u_input.d.zyx, vec3<u32>(2945u, 3655u, arg_1.b))) % vec3<u32>(32u)), vec3<u32>(u_input.d.x, ~(~0u), 49004u)), ~u_input.d.wyz);
    var var_1 = !global0[_wgslsmith_index_u32(~30500u, 6u)];
    return Struct_2(_wgslsmith_mult_u32(0u, ~(~arg_2)), arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_1(_wgslsmith_clamp_vec3_i32(-_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, global1[_wgslsmith_index_u32(u_input.d.x, 14u)], u_input.c), vec3<i32>(-19755i, 37025i, -21306i)), -vec3<i32>(u_input.c, global1[_wgslsmith_index_u32(u_input.d.x, 14u)], 2147483647i) << (u_input.d.zwx % vec3<u32>(32u)), vec3<i32>(global1[_wgslsmith_index_u32(15951u, 14u)], -32691i, 16616i) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, u_input.d.x, u_input.a), vec3<u32>(68281u, u_input.a, 37634u), u_input.d.zww) % vec3<u32>(32u))), ~0i, select(vec4<bool>(select(global0[_wgslsmith_index_u32(u_input.b, 6u)], global0[_wgslsmith_index_u32(4294967295u, 6u)], false), global0[_wgslsmith_index_u32(func_1(Struct_4(u_input.d.x, vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 6u)], global0[_wgslsmith_index_u32(u_input.a, 6u)], false), vec2<bool>(false, false)), Struct_1(vec3<i32>(-1i, -1i, u_input.c), global1[_wgslsmith_index_u32(u_input.a, 14u)], vec4<bool>(false, global0[_wgslsmith_index_u32(2277u, 6u)], false, global0[_wgslsmith_index_u32(1u, 6u)])), vec3<i32>(-2147483647i, u_input.c, 0i), Struct_4(14364u, vec3<bool>(false, false, global0[_wgslsmith_index_u32(u_input.b, 6u)]), vec2<bool>(global0[_wgslsmith_index_u32(u_input.b, 6u)], global0[_wgslsmith_index_u32(u_input.b, 6u)]))), 6u)], 0u <= u_input.b, global0[_wgslsmith_index_u32(~u_input.d.x, 6u)]), !select(vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.d.x, 6u)], global0[_wgslsmith_index_u32(1u, 6u)], global0[_wgslsmith_index_u32(u_input.b, 6u)]), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 6u)], global0[_wgslsmith_index_u32(u_input.d.x, 6u)], global0[_wgslsmith_index_u32(0u, 6u)], true), true), vec4<bool>(global0[_wgslsmith_index_u32(u_input.b, 6u)], select(global0[_wgslsmith_index_u32(10712u, 6u)], global0[_wgslsmith_index_u32(u_input.a, 6u)], true), false, all(vec2<bool>(global0[_wgslsmith_index_u32(36020u, 6u)], global0[_wgslsmith_index_u32(22146u, 6u)]))))), Struct_3(Struct_1(vec3<i32>(-u_input.c, u_input.c, ~(-1i)), global1[_wgslsmith_index_u32((1u | u_input.b) << (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.d.x, 70023u, 1u), vec4<u32>(u_input.b, u_input.a, u_input.b, 46825u)) % 32u), 14u)], !vec4<bool>(global0[_wgslsmith_index_u32(15791u, 6u)], global0[_wgslsmith_index_u32(25612u, 6u)], global0[_wgslsmith_index_u32(u_input.a, 6u)], global0[_wgslsmith_index_u32(62408u, 6u)])), ~u_input.a), func_2(Struct_4(u_input.a, !select(vec3<bool>(global0[_wgslsmith_index_u32(12256u, 6u)], true, true), vec3<bool>(global0[_wgslsmith_index_u32(1u, 6u)], false, global0[_wgslsmith_index_u32(u_input.d.x, 6u)]), vec3<bool>(true, global0[_wgslsmith_index_u32(0u, 6u)], true)), select(select(vec2<bool>(global0[_wgslsmith_index_u32(1u, 6u)], true), vec2<bool>(false, false), true), vec2<bool>(false, true), select(vec2<bool>(global0[_wgslsmith_index_u32(70375u, 6u)], true), vec2<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 6u)], global0[_wgslsmith_index_u32(37711u, 6u)]), true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -103f) + _wgslsmith_f_op_f32(-1177f * 1157f)))), select(vec2<bool>(global0[_wgslsmith_index_u32(~u_input.a, 6u)], global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(func_1(Struct_4(u_input.d.x, vec3<bool>(global0[_wgslsmith_index_u32(20962u, 6u)], true, true), vec2<bool>(global0[_wgslsmith_index_u32(0u, 6u)], global0[_wgslsmith_index_u32(u_input.d.x, 6u)])), Struct_1(vec3<i32>(u_input.c, u_input.c, u_input.c), -2147483647i, vec4<bool>(false, global0[_wgslsmith_index_u32(25617u, 6u)], global0[_wgslsmith_index_u32(u_input.d.x, 6u)], true)), vec3<i32>(global1[_wgslsmith_index_u32(u_input.a, 14u)], global1[_wgslsmith_index_u32(u_input.b, 14u)], global1[_wgslsmith_index_u32(1u, 14u)]), Struct_4(77440u, vec3<bool>(false, true, false), vec2<bool>(false, global0[_wgslsmith_index_u32(1u, 6u)]))), _wgslsmith_sub_u32(u_input.b, u_input.d.x)), 6u)]), !select(vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.d.x, 6u)]), vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 6u)], false), true), all(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a | 0u, 6u)], all(vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.d.x, 6u)], global0[_wgslsmith_index_u32(4294967295u, 6u)])), global0[_wgslsmith_index_u32(21619u, 6u)]))));
    global0 = array<bool, 6>();
    global1 = array<i32, 14>();
    global2 = ~_wgslsmith_div_u32(16724u, countOneBits(74309u));
    global1 = array<i32, 14>();
    var var_1 = _wgslsmith_dot_vec4_u32(u_input.d, vec4<u32>(firstTrailingBit(~u_input.a), u_input.d.x, 1886u, ~countOneBits(3685u)));
    let var_2 = Struct_5(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(-825f - -855f)), -444f, _wgslsmith_f_op_f32(-1777f - -1094f), -1910f))), Struct_4(0u, select(var_0.b.c.zwx, vec3<bool>(false, all(vec4<bool>(var_0.b.c.x, false, true, var_0.b.c.x)), true), !(50325u == u_input.d.x)), var_0.b.c.yz), vec4<u32>(var_0.a, max(var_0.a, ~_wgslsmith_add_u32(0u, 0u)), ~abs(u_input.b), 1u), !(!vec4<bool>(true, true, var_0.b.c.x && true, any(var_0.b.c.xy))));
    let var_3 = ~firstLeadingBit(~(~(~33791u)));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.xw, vec2<i32>(-u_input.c, var_0.b.a.x));
}

