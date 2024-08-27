struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: vec4<bool>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<i32>,
    c: vec2<bool>,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<f32, 23>;

var<private> global2: u32 = 50939u;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_2) -> vec4<u32> {
    global1 = array<f32, 23>();
    let var_0 = ~vec4<u32>(1u, ~_wgslsmith_mult_u32(arg_1.d.a, ~arg_1.d.a), ~arg_1.d.a, _wgslsmith_sub_u32(_wgslsmith_mult_u32(1u, arg_1.d.a), ~arg_1.d.a >> (2762u % 32u)));
    var var_1 = arg_1.d;
    var var_2 = arg_1.d;
    global1 = array<f32, 23>();
    return var_0;
}

fn func_3(arg_0: vec4<u32>) -> Struct_1 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32((max(arg_0.x, arg_0.x) | _wgslsmith_dot_vec3_u32(arg_0.zww, vec3<u32>(arg_0.x, arg_0.x, 4294967295u))) ^ firstTrailingBit(0u), 23u)], _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(floor(-1000f))))), _wgslsmith_mod_vec4_i32(-(~vec4<i32>(-2147483647i, u_input.a, u_input.a, u_input.a)), vec4<i32>(1i, ~23563i, reverseBits(max(47512i, -32846i)), u_input.a)), select(vec2<bool>(true, true), !(!vec2<bool>(global0.x, false)), select(vec2<bool>(!global0.x, arg_0.x != arg_0.x), vec2<bool>(false, global0.x && true), global1[_wgslsmith_index_u32(func_2(vec2<f32>(global1[_wgslsmith_index_u32(0u, 23u)], 722f), Struct_2(global1[_wgslsmith_index_u32(arg_0.x, 23u)], vec4<i32>(u_input.a, u_input.a, u_input.a, -3136i), vec2<bool>(false, global0.x), Struct_1(arg_0.x, vec2<bool>(global0.x, global0.x), vec4<bool>(false, true, global0.x, global0.x), vec4<i32>(u_input.a, 27688i, -14192i, u_input.a)), -1i)).x, 23u)] < _wgslsmith_f_op_f32(580f * global1[_wgslsmith_index_u32(arg_0.x, 23u)]))), Struct_1(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(arg_0.xw ^ vec2<u32>(arg_0.x, arg_0.x), vec2<u32>(1u, arg_0.x)), 30256u), vec2<bool>(any(vec3<bool>(true, false, true)), true), !vec4<bool>(false, any(vec3<bool>(global0.x, true, true)), true, true), vec4<i32>(~(-2147483647i) & u_input.a, -1i, u_input.a, -2147483647i)), ~abs(-2147483647i));
    var var_1 = ~(~_wgslsmith_dot_vec2_u32(~vec2<u32>(var_0.d.a, 79478u), arg_0.yw << (_wgslsmith_mod_vec2_u32(arg_0.wx, arg_0.wz) % vec2<u32>(32u))));
    global2 = abs(arg_0.x);
    let var_2 = _wgslsmith_add_vec3_i32(vec3<i32>(-(~var_0.d.d.x) ^ 14480i, -(~u_input.a), 2147483647i << (firstTrailingBit(~var_0.d.a) % 32u)), vec3<i32>(var_0.e | min(~37518i, u_input.a ^ -1i), var_0.b.x, u_input.a));
    global2 = 16536u;
    return Struct_1(123240u, select(vec2<bool>(any(var_0.d.c), !all(vec3<bool>(true, false, global0.x))), select(vec2<bool>(any(vec2<bool>(global0.x, true)), false | var_0.d.c.x), var_0.d.c.wz, var_0.c), true), vec4<bool>(true, !(var_0.c.x | var_0.c.x), var_0.a == _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(880f, -1029f)))), false), -(-vec4<i32>(var_0.d.d.x, var_0.b.x, u_input.a, 2147483647i) >> (arg_0 % vec4<u32>(32u))) << (vec4<u32>(arg_0.x ^ _wgslsmith_dot_vec2_u32(arg_0.xw, arg_0.xy), ~1u, ~(var_0.d.a << (arg_0.x % 32u)), ~14029u) % vec4<u32>(32u)));
}

fn func_1(arg_0: vec3<bool>, arg_1: i32) -> Struct_1 {
    global0 = arg_0.xx;
    global0 = !(!(!(!arg_0.zy)));
    let var_0 = _wgslsmith_f_op_f32(select(925f, global1[_wgslsmith_index_u32(116908u, 23u)], global0.x));
    var var_1 = -u_input.a;
    let var_2 = !(!(!vec2<bool>(!arg_0.x, any(vec4<bool>(arg_0.x, false, true, false)))));
    return func_3(select(vec4<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(70042u, 1u)), ~(~1u), ~(~4294967295u), ~(~0u)), vec4<u32>(1u, 20198u, 1u, abs(10403u)) ^ abs(func_2(vec2<f32>(var_0, -633f), Struct_2(global1[_wgslsmith_index_u32(4294967295u, 23u)], vec4<i32>(u_input.a, -2147483647i, 2147483647i, 2147483647i), vec2<bool>(false, var_2.x), Struct_1(55318u, vec2<bool>(arg_0.x, var_2.x), vec4<bool>(false, arg_0.x, arg_0.x, false), vec4<i32>(19514i, -2147483647i, u_input.a, u_input.a)), arg_1))), select(!select(vec4<bool>(false, true, arg_0.x, true), vec4<bool>(true, false, true, true), var_2.x), select(!vec4<bool>(var_2.x, arg_0.x, true, false), !vec4<bool>(true, true, arg_0.x, arg_0.x), vec4<bool>(false, false, global0.x, var_2.x)), any(select(var_2, arg_0.yy, global0.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(vec3<bool>(global0.x, !global0.x, any(vec3<bool>(true, true, global0.x))), u_input.a);
    let var_1 = Struct_1(abs(countOneBits(~14352u)) >> (_wgslsmith_sub_u32(27338u, abs(func_2(vec2<f32>(global1[_wgslsmith_index_u32(var_0.a, 23u)], global1[_wgslsmith_index_u32(1u, 23u)]), Struct_2(global1[_wgslsmith_index_u32(var_0.a, 23u)], vec4<i32>(var_0.d.x, -2147483647i, 0i, 2147483647i), var_0.c.xz, Struct_1(var_0.a, var_0.b, vec4<bool>(global0.x, global0.x, var_0.c.x, false), var_0.d), -2147483647i)).x)) % 32u), select(!select(!vec2<bool>(true, global0.x), vec2<bool>(var_0.c.x, false), var_0.c.yw), vec2<bool>(false, global0.x), true), !select(select(vec4<bool>(true, true, false, var_0.c.x), vec4<bool>(global0.x, false, var_0.c.x, global0.x), var_0.c.x), !vec4<bool>(global0.x, true, false, true), var_0.c), -vec4<i32>(-(~u_input.a), ~min(u_input.a, -1811i), u_input.a, _wgslsmith_clamp_i32(-u_input.a, countOneBits(1i), min(0i, -1i))));
    var var_2 = true;
    let var_3 = abs(~var_1.a);
    var var_4 = vec2<u32>(_wgslsmith_add_u32(var_0.a, ~(~45569u)), 1u);
    global2 = _wgslsmith_dot_vec2_u32(abs(firstTrailingBit(~vec2<u32>(var_0.a, 25237u) >> (_wgslsmith_sub_vec2_u32(vec2<u32>(var_4.x, 1u), vec2<u32>(36319u, 1u)) % vec2<u32>(32u)))), ~vec2<u32>(~var_1.a & ~42604u, min(~4294967295u, min(var_4.x, 1u))));
    let x = u_input.a;
    s_output = StorageBuffer(select(~(~(1u << (var_1.a % 32u))), select(_wgslsmith_mod_u32(25382u, var_0.a), 73811u, false), false), ~(~(~vec3<u32>(var_4.x, 29803u, var_3) & _wgslsmith_add_vec3_u32(vec3<u32>(9046u, 0u, 74024u), vec3<u32>(var_4.x, 0u, 52779u)))), func_1(select(!var_0.c.wzy, vec3<bool>(var_0.a >= var_4.x, true, !global0.x), !(!var_0.c.yxz)), 1i).d);
}

