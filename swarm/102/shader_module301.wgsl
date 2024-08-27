struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: i32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec4<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
    c: u32,
    d: vec3<i32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 14> = array<u32, 14>(66351u, 4294967295u, 54180u, 0u, 1u, 28516u, 52256u, 1u, 4294967295u, 2539u, 4236u, 1u, 37926u, 17512u);

var<private> global1: u32;

var<private> global2: u32 = 21386u;

var<private> global3: u32 = 52734u;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3) -> u32 {
    let var_0 = vec4<i32>(-1i) * -_wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(-vec4<i32>(0i, u_input.d, -26754i, u_input.a.x), vec4<i32>(u_input.d, 51280i, 0i, -2147483647i)), -(vec4<i32>(-2147483647i, -52605i, u_input.b, u_input.a.x) >> (arg_0.b % vec4<u32>(32u))));
    global2 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(arg_0.b, vec4<u32>(arg_0.a.x, 13449u, _wgslsmith_mod_u32(~u_input.c, 4294967295u), _wgslsmith_mult_u32(~global0[_wgslsmith_index_u32(59085u, 14u)], arg_0.b.x)) ^ ~((vec4<u32>(arg_0.a.x, global0[_wgslsmith_index_u32(0u, 14u)], 0u, u_input.c) & vec4<u32>(61283u, global0[_wgslsmith_index_u32(u_input.c, 14u)], 91627u, 4294967295u)) & vec4<u32>(u_input.c, 9575u, arg_0.a.x, u_input.c))), 14u)];
    let var_1 = -1i;
    let var_2 = global0[_wgslsmith_index_u32(~(arg_0.b.x >> (1u % 32u)), 14u)];
    let var_3 = !(!select(vec2<bool>(any(vec4<bool>(false, false, true, true)), any(vec3<bool>(true, false, false))), select(select(vec2<bool>(false, false), vec2<bool>(true, true), false), vec2<bool>(true, true), vec2<bool>(false, true)), ~18092u < u_input.c));
    return 4294967295u;
}

fn func_2(arg_0: Struct_3, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    global0 = array<u32, 14>();
    global3 = min(arg_0.b.x, min(_wgslsmith_mod_u32(~_wgslsmith_dot_vec2_u32(arg_0.b.xx, vec2<u32>(0u, arg_0.b.x)), _wgslsmith_add_u32(arg_0.a.x, u_input.c)), arg_0.b.x));
    let var_0 = vec2<u32>(func_3(arg_0), arg_0.a.x) ^ vec2<u32>(24932u, reverseBits(~13310u));
    global1 = _wgslsmith_mod_u32(4294967295u, var_0.x) ^ abs(_wgslsmith_sub_u32(126730u, arg_0.b.x));
    global1 = 328u;
    return arg_0.c;
}

fn func_4(arg_0: Struct_3) -> vec2<u32> {
    global0 = array<u32, 14>();
    let var_0 = ~_wgslsmith_mult_u32(0u, 3756u);
    let var_1 = arg_0;
    return firstTrailingBit(arg_0.b.wz);
}

fn func_5(arg_0: Struct_3) -> Struct_3 {
    var var_0 = Struct_2(func_2(arg_0, Struct_1(_wgslsmith_f_op_f32(-129f + _wgslsmith_f_op_f32(floor(-747f)))), -12164i ^ u_input.a.x), select(!vec3<bool>(any(vec2<bool>(false, false)), true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, any(vec2<bool>(true, false)))), vec3<bool>(false, false, all(vec2<bool>(true, true)))), -u_input.a.x);
    var var_1 = 87878u;
    var var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, arg_0.c.a) * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.c.a, 233f) - vec2<f32>(arg_0.c.a, -877f)), vec2<f32>(arg_0.c.a, var_0.a.a))) - _wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_0.c.a, arg_0.c.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c.a, 364f))))))));
    global2 = ~(~(arg_0.b.x << (_wgslsmith_mult_u32(arg_0.b.x, reverseBits(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 14u)], 14u)])) % 32u)));
    let var_3 = u_input.a.x > 1i;
    return Struct_3(_wgslsmith_add_vec2_u32(arg_0.a >> (select(arg_0.a, ~vec2<u32>(18065u, arg_0.b.x), var_0.c < 2147483647i) % vec2<u32>(32u)), abs(select(vec2<u32>(u_input.c, 3945u) | vec2<u32>(global0[_wgslsmith_index_u32(arg_0.a.x, 14u)], arg_0.b.x), firstLeadingBit(vec2<u32>(1u, 4294967295u)), var_3 | var_0.b.x))), select(_wgslsmith_add_vec4_u32((vec4<u32>(arg_0.b.x, 0u, global0[_wgslsmith_index_u32(0u, 14u)], global0[_wgslsmith_index_u32(u_input.c, 14u)]) & vec4<u32>(arg_0.a.x, arg_0.a.x, u_input.c, arg_0.b.x)) ^ (arg_0.b >> (vec4<u32>(u_input.c, 1u, 0u, 346u) % vec4<u32>(32u))), arg_0.b), arg_0.b, select(vec4<bool>(var_0.b.x, false, var_0.b.x, var_0.b.x | true), select(select(vec4<bool>(var_3, false, false, false), vec4<bool>(var_3, var_3, true, true), true), vec4<bool>(var_0.b.x, true, true, false), !vec4<bool>(false, var_3, var_0.b.x, var_0.b.x)), !vec4<bool>(true, true, var_0.b.x, var_3))), arg_0.c);
}

fn func_1() -> Struct_3 {
    global0 = array<u32, 14>();
    global2 = ~(~u_input.c);
    global0 = array<u32, 14>();
    var var_0 = func_5(Struct_3(func_4(Struct_3(vec2<u32>(21148u, u_input.c), vec4<u32>(global0[_wgslsmith_index_u32(36693u, 14u)], 1u, u_input.c, 4294967295u), func_2(Struct_3(vec2<u32>(global0[_wgslsmith_index_u32(u_input.c, 14u)], 0u), vec4<u32>(1u, global0[_wgslsmith_index_u32(u_input.c, 14u)], 0u, global0[_wgslsmith_index_u32(1u, 14u)]), Struct_1(-1005f)), Struct_1(-254f), -1i))), _wgslsmith_sub_vec4_u32(vec4<u32>(~u_input.c, u_input.c, 0u, 1u), countOneBits(vec4<u32>(u_input.c, 1u, 7594u, 4294967295u))), func_2(Struct_3(func_4(Struct_3(vec2<u32>(u_input.c, global0[_wgslsmith_index_u32(u_input.c, 14u)]), vec4<u32>(u_input.c, u_input.c, 25705u, u_input.c), Struct_1(1012f))), vec4<u32>(global0[_wgslsmith_index_u32(1u, 14u)], 47033u, 85032u, 4294967295u), Struct_1(922f)), func_2(Struct_3(vec2<u32>(u_input.c, 1u), vec4<u32>(43676u, 4294967295u, 4294967295u, u_input.c), Struct_1(1186f)), Struct_1(750f), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, 1i), vec2<i32>(172i, -38748i))), _wgslsmith_clamp_i32(u_input.a.x, ~(-1i), abs(u_input.b)))));
    let var_1 = func_2(func_5(func_5(func_5(Struct_3(vec2<u32>(31211u, global0[_wgslsmith_index_u32(var_0.a.x, 14u)]), vec4<u32>(17888u, global0[_wgslsmith_index_u32(1u, 14u)], 4294967295u, u_input.c), Struct_1(800f))))), var_0.c, _wgslsmith_mult_i32(35427i, u_input.d));
    return Struct_3(_wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(var_0.a, _wgslsmith_sub_vec2_u32(vec2<u32>(14164u, 0u), var_0.a) << (min(var_0.a, vec2<u32>(var_0.a.x, 1u)) % vec2<u32>(32u)), _wgslsmith_mult_vec2_u32(func_4(Struct_3(var_0.a, var_0.b, var_1)), vec2<u32>(global0[_wgslsmith_index_u32(16889u, 14u)], global0[_wgslsmith_index_u32(95635u, 14u)]))), firstTrailingBit(reverseBits(~var_0.b.xy))), vec4<u32>(954u, _wgslsmith_mod_u32(~53087u, ~var_0.b.x >> (~26904u % 32u)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.c, 4294967295u, var_0.b.x) | ~var_0.b, _wgslsmith_sub_vec4_u32(var_0.b, vec4<u32>(u_input.c, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 14u)], 14u)], 14u)], global0[_wgslsmith_index_u32(1u, 14u)], global0[_wgslsmith_index_u32(var_0.a.x, 14u)])) ^ ~var_0.b), 42113u << ((u_input.c << (_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(58694u, 14u)], 86412u) % 32u)) % 32u)), func_2(func_5(Struct_3(vec2<u32>(u_input.c, var_0.b.x) << (var_0.b.ww % vec2<u32>(32u)), var_0.b << (vec4<u32>(26345u, 16484u, 88347u, 13854u) % vec4<u32>(32u)), Struct_1(var_0.c.a))), Struct_1(_wgslsmith_f_op_f32(-var_1.a)), u_input.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1155f, 446f)) * vec2<f32>(var_0.c.a, var_0.c.a)))) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-581f, var_0.c.a)))), vec3<i32>(-40827i, 10518i, countOneBits(firstTrailingBit(min(u_input.d, u_input.b)))), ~abs(~global0[_wgslsmith_index_u32(21481u, 14u)]) << (0u % 32u), u_input.a, _wgslsmith_sub_vec3_u32(firstTrailingBit(~var_0.b.zwx), var_0.b.wzy));
}

