struct Struct_1 {
    a: vec3<i32>,
    b: vec3<bool>,
    c: vec4<bool>,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: Struct_1,
    d: i32,
    e: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 29> = array<u32, 29>(1u, 18547u, 0u, 4294967295u, 28662u, 65955u, 0u, 16204u, 4294967295u, 22402u, 99047u, 1u, 4294967295u, 4294967295u, 11625u, 65391u, 1u, 28531u, 0u, 61676u, 23724u, 18860u, 38693u, 3490u, 1132u, 53112u, 51371u, 55176u, 4294967295u);

var<private> global1: Struct_2;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec2<bool>) -> vec3<bool> {
    let var_0 = Struct_2(global1.a, global1.b, global1.c, 1i, 12353u);
    var var_1 = ~_wgslsmith_sub_i32(1i, select(-_wgslsmith_dot_vec3_i32(vec3<i32>(global1.c.a.x, -1i, u_input.b.x), vec3<i32>(var_0.c.a.x, -61587i, var_0.b.a.x)), var_0.c.a.x, global1.c.b.x));
    let var_2 = Struct_2(select(vec3<bool>(!arg_0.x, true, false), var_0.c.c.yxw, false), global1.b, Struct_1(vec3<i32>(select(u_input.a.x, var_0.b.a.x, global1.c.b.x), 1i, _wgslsmith_div_i32(-9641i, 1i)) & ~global1.b.a, select(vec3<bool>(false, any(vec2<bool>(var_0.a.x, arg_0.x)), true), !global1.c.c.wxy, !any(vec3<bool>(global1.c.c.x, true, true))), !(!global1.c.c), -1231f, ~(~(92723u >> (global1.b.e % 32u)))), 0i, ~reverseBits(countOneBits(4294967295u)) << (~(~(~var_0.b.e)) % 32u));
    var var_3 = var_0.b;
    global1 = Struct_2(var_3.b, Struct_1(-vec3<i32>(_wgslsmith_div_i32(17832i, global1.c.a.x), 14474i, ~var_0.c.a.x), global1.b.b, !global1.b.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b.d * var_2.c.d))), var_3.e), var_0.b, var_3.a.x, 4294967295u);
    return vec3<bool>(var_0.a.x, any(!(!var_3.c.zxz)), true);
}

fn func_2() -> vec3<i32> {
    let var_0 = Struct_2(global1.a, global1.b, Struct_1(-(u_input.b >> (vec3<u32>(global0[_wgslsmith_index_u32(global1.b.e, 29u)], 4109u, 3014u) % vec3<u32>(32u))) ^ -_wgslsmith_div_vec3_i32(u_input.b, global1.b.a), vec3<bool>(true, _wgslsmith_f_op_f32(-global1.c.d) > _wgslsmith_f_op_f32(select(-1114f, 114f, false)), true), global1.b.c, _wgslsmith_f_op_f32(global1.c.d + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(223f * global1.c.d) * _wgslsmith_f_op_f32(-global1.c.d))), global0[_wgslsmith_index_u32(select(~global1.e, 54030u, !global1.a.x), 29u)] >> (119185u % 32u)), global1.b.a.x, 55255u);
    global0 = array<u32, 29>();
    var var_1 = Struct_1(global1.c.a | vec3<i32>((u_input.a.x ^ 1i) | ~global1.c.a.x, global1.c.a.x, _wgslsmith_dot_vec2_i32(u_input.b.zy, _wgslsmith_mod_vec2_i32(var_0.b.a.xy, vec2<i32>(-20895i, 48187i)))), select(global1.a, select(global1.a, global1.a, func_3(select(vec2<bool>(var_0.b.c.x, false), vec2<bool>(var_0.c.c.x, global1.a.x), false))), !(!vec3<bool>(false, var_0.b.b.x, false))), !vec4<bool>(!(true & global1.b.b.x), true, var_0.b.c.x, !(var_0.c.c.x && var_0.a.x)), -863f, ~(max(var_0.e, 10997u) & 0u) | ~_wgslsmith_add_u32(4294967295u, 0u));
    let var_2 = ~(~_wgslsmith_div_u32(86295u, var_0.b.e >> (75443u % 32u)));
    let var_3 = 1u;
    return vec3<i32>(u_input.b.x, 2147483647i, var_0.d);
}

fn func_1(arg_0: vec2<i32>) -> vec4<bool> {
    var var_0 = vec2<f32>(global1.b.d, _wgslsmith_f_op_f32(f32(-1f) * -1251f));
    var var_1 = -_wgslsmith_mod_vec3_i32(u_input.b, max(vec3<i32>(_wgslsmith_div_i32(u_input.a.x, u_input.a.x), countOneBits(-45750i), -2147483647i), select(func_2(), max(vec3<i32>(-17710i, arg_0.x, global1.b.a.x), vec3<i32>(u_input.a.x, -21575i, arg_0.x)), vec3<bool>(true, true, true))));
    global1 = Struct_2(vec3<bool>(true, true, !(!all(vec4<bool>(global1.a.x, global1.a.x, global1.a.x, global1.a.x)))), global1.c, Struct_1(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(26394i, u_input.b.x, arg_0.x), global1.b.a), var_1.x, ~max(var_1.x, var_1.x)), vec3<bool>(false, global1.b.c.x & false, !(!global1.a.x)), !global1.c.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), 109450u), ~0i << (~_wgslsmith_dot_vec2_u32(vec2<u32>(global1.b.e, 0u), vec2<u32>(9517u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(47843u, 29u)], 29u)])) % 32u), ~abs(min(~4294967295u, 51677u)));
    let var_2 = 2147483647i;
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(global1.c.d)), _wgslsmith_f_op_f32(select(349f, -1709f, global1.b.b.x)))), 969f, -331f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-756f, var_0.x, -794f, global1.c.d), vec4<f32>(global1.c.d, var_0.x, global1.b.d, var_0.x))))))));
    return global1.c.c;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 29>();
    var var_0 = global1.b;
    let var_1 = global1.c;
    var var_2 = ~(~(~abs(vec4<u32>(1u, 4294967295u, var_0.e, global1.b.e)))) | _wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(firstTrailingBit(vec4<u32>(global1.e, 41844u, 3837u, 4294967295u)), _wgslsmith_mod_vec4_u32(vec4<u32>(global1.c.e, 1u, var_1.e, 0u), ~vec4<u32>(2951u, 4294967295u, global1.e, global0[_wgslsmith_index_u32(19278u, 29u)]))), _wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(0u, var_1.e), 58385u, min(17279u, 0u), var_1.e), vec4<u32>(1u, 9683u, var_1.e, 13080u) ^ firstTrailingBit(vec4<u32>(global1.c.e, 0u, global1.c.e, var_1.e))));
    global1 = Struct_2(select(global1.a, vec3<bool>(true, true, false), select(!(!var_1.c.xww), var_0.c.xwx, var_0.b.x)), Struct_1(global1.c.a | u_input.a.xzx, select(!select(global1.c.b, vec3<bool>(var_1.b.x, var_0.b.x, true), false), vec3<bool>(false, all(var_0.c), true), global1.b.c.x | all(vec2<bool>(true, var_0.b.x))), select(func_1(vec2<i32>(var_1.a.x, var_0.a.x) ^ vec2<i32>(-40854i, var_1.a.x)), var_1.c, vec4<bool>(var_0.c.x, true, var_0.c.x, 1334f >= global1.c.d)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d)) + 1f), firstLeadingBit(global0[_wgslsmith_index_u32(min(~1u, abs(var_0.e)), 29u)])), Struct_1(vec3<i32>(-13463i | (0i << (var_1.e % 32u)), firstTrailingBit(_wgslsmith_sub_i32(var_1.a.x, var_0.a.x)), -2147483647i), !global1.c.c.zzx, select(vec4<bool>(!var_1.b.x, var_1.c.x, true, true), var_0.c, vec4<bool>(true, false, false, false)), _wgslsmith_f_op_f32(floor(global1.b.d)), ~(~var_1.e)), var_0.a.x, _wgslsmith_div_u32(~_wgslsmith_mod_u32(var_0.e, 73793u), global1.c.e));
    let x = u_input.a;
    s_output = StorageBuffer(max(~(var_2.yyz | var_2.zwy), countOneBits(_wgslsmith_mult_vec3_u32(~vec3<u32>(69051u, var_2.x, var_1.e), vec3<u32>(1u, var_1.e, global0[_wgslsmith_index_u32(0u, 29u)])))));
}

