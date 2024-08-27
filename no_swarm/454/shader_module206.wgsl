struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: vec4<bool>,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 28> = array<i32, 28>(-28897i, -8433i, -20284i, 37024i, -1i, i32(-2147483648), 4955i, -1i, 0i, 1i, 2147483647i, -1i, -30008i, 1i, -20241i, 14476i, -1i, -1i, -18422i, -29217i, 2147483647i, i32(-2147483648), i32(-2147483648), 1i, 2147483647i, -40061i, 968i, 2147483647i);

var<private> global1: array<f32, 11> = array<f32, 11>(-1845f, 708f, -721f, -654f, -1000f, 1562f, 277f, -125f, -387f, -1813f, -1995f);

var<private> global2: i32;

var<private> global3: i32;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_1(arg_0: bool, arg_1: Struct_1) -> u32 {
    global2 = _wgslsmith_mult_i32(-global0[_wgslsmith_index_u32(max(max(firstTrailingBit(u_input.b.x), _wgslsmith_dot_vec2_u32(vec2<u32>(20185u, u_input.b.x), vec2<u32>(arg_1.b.x, arg_1.b.x))), _wgslsmith_sub_u32(1u, select(u_input.b.x, arg_1.b.x, arg_0))), 28u)], arg_1.d);
    var var_0 = max(-1i, arg_1.d) > global0[_wgslsmith_index_u32(countOneBits(u_input.d), 28u)];
    let var_1 = Struct_1(_wgslsmith_mult_i32(-_wgslsmith_mod_i32(_wgslsmith_div_i32(arg_1.a, arg_1.a), min(arg_1.a, 0i)), ~(1i | firstTrailingBit(global0[_wgslsmith_index_u32(1u, 28u)]))), ~(vec2<u32>(u_input.c, u_input.c) << ((~arg_1.b | max(u_input.b.yx, arg_1.b)) % vec2<u32>(32u))), !arg_1.c, ~min(u_input.a, 1i));
    let var_2 = _wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, global0[_wgslsmith_index_u32(arg_1.b.x, 28u)]), ~vec2<i32>(var_1.a, -1i)), abs(49273i)), _wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(~vec3<i32>(14867i, u_input.a, global0[_wgslsmith_index_u32(20186u, 28u)]), vec3<i32>(0i, global0[_wgslsmith_index_u32(4294967295u, 28u)], -2147483647i) >> (u_input.b % vec3<u32>(32u))), firstLeadingBit(abs(vec3<i32>(var_1.d, 52929i, global0[_wgslsmith_index_u32(8743u, 28u)]))))), -vec3<i32>(_wgslsmith_div_i32(var_1.d, 9139i), ~3148i >> (arg_1.b.x % 32u), -2147483647i));
    let var_3 = arg_1.b.x;
    return 44953u;
}

fn func_3() -> bool {
    global0 = array<i32, 28>();
    global0 = array<i32, 28>();
    global1 = array<f32, 11>();
    let var_0 = firstTrailingBit(vec3<i32>(1i, 0i, abs(-2147483647i) << (u_input.c % 32u)));
    global1 = array<f32, 11>();
    return !all(vec2<bool>(all(vec3<bool>(false, true, true)), all(vec4<bool>(true, true, true, true))));
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_1) -> vec4<bool> {
    var var_0 = false;
    global0 = array<i32, 28>();
    let var_1 = countOneBits(~vec3<i32>(-2147483647i, 2100i, 2147483647i));
    var_0 = select(all(vec2<bool>(!(116722u > u_input.b.x), all(!arg_1.c.wyx))), arg_1.c.x, func_3());
    let var_2 = Struct_1((var_1.x << (8596u % 32u)) >> (reverseBits(arg_1.b.x) % 32u), ~countOneBits(~_wgslsmith_mult_vec2_u32(arg_1.b, arg_1.b)), arg_1.c, -27007i);
    return arg_1.c;
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    var var_0 = !arg_0.c.x;
    var var_1 = arg_0;
    global3 = arg_0.d;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_1(14819i, ~vec2<u32>(_wgslsmith_add_u32(4294967295u, u_input.b.x), func_1(true, Struct_1(21576i, vec2<u32>(0u, u_input.d), vec4<bool>(true, true, true, false), u_input.a))), select(vec4<bool>(true, 800f >= global1[_wgslsmith_index_u32(0u, 11u)], false, true), select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), false), func_2(vec2<bool>(true, false), Struct_1(2147483647i, vec2<u32>(u_input.d, u_input.d), vec4<bool>(false, true, false, true), 22735i)), vec4<bool>(false, false, true, false)), true), -firstLeadingBit(~1i)));
    let var_1 = vec4<i32>(u_input.a, 34676i, -global0[_wgslsmith_index_u32(var_0.b.x, 28u)], ~var_0.a) >> (vec4<u32>(~var_0.b.x | (_wgslsmith_add_u32(71784u, 42754u) & u_input.d), 14344u, ~(~(~21131u)), reverseBits(~9302u & u_input.b.x)) % vec4<u32>(32u));
    var var_2 = func_4(Struct_1(firstTrailingBit(1i), ~vec2<u32>(71180u, _wgslsmith_dot_vec2_u32(u_input.b.yx, u_input.b.yx)), !vec4<bool>(var_0.c.x, var_0.c.x, true, var_0.c.x), global0[_wgslsmith_index_u32(func_1(var_0.c.x, Struct_1(-25238i, select(vec2<u32>(var_0.b.x, u_input.b.x), vec2<u32>(1050u, 1u), false), vec4<bool>(true, true, var_0.c.x, var_0.c.x), ~2147483647i)), 28u)]));
    var var_3 = Struct_1(var_0.d | var_1.x, reverseBits(u_input.b.yx), var_2.c, global0[_wgslsmith_index_u32(var_2.b.x, 28u)]);
    var var_4 = Struct_1(var_0.d & ~countOneBits(-17146i), vec2<u32>(44405u, ~(~u_input.d)), vec4<bool>(var_2.c.x, !(false && func_3()), false, var_0.c.x), _wgslsmith_sub_i32(min(countOneBits(u_input.a), -var_0.a), -26979i));
    var_0 = Struct_1(min(26061i, (-var_0.a ^ global0[_wgslsmith_index_u32(~var_2.b.x, 28u)]) << (firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4302u), var_0.b)) % 32u)), (firstTrailingBit(abs(vec2<u32>(var_3.b.x, 1u))) & _wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, var_0.b.x), u_input.b.xy, vec2<u32>(0u, 36427u) << (vec2<u32>(1u, u_input.c) % vec2<u32>(32u)))) | var_3.b, !vec4<bool>(select(any(vec2<bool>(true, false)), true, true), false, false, select(true, all(var_4.c.xz), any(var_3.c))), _wgslsmith_dot_vec2_i32(var_1.xx, vec2<i32>(max(max(-2147483647i, var_2.d), -var_0.d), ~global0[_wgslsmith_index_u32(u_input.d, 28u)])));
    global2 = var_0.d;
    let var_5 = _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, ~(~var_0.b.x), _wgslsmith_sub_u32(~var_3.b.x, var_2.b.x)), ~vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(41839u, 32066u, 1u) ^ u_input.b, u_input.b), _wgslsmith_add_u32(_wgslsmith_sub_u32(var_4.b.x, 4294967295u), countOneBits(4294967295u)), ~(~4294967295u)));
    let var_6 = ~(~_wgslsmith_div_vec2_u32(~vec2<u32>(6345u, 1u), reverseBits(vec2<u32>(4294967295u, 29928u))) ^ _wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(var_4.b, var_4.b), ~(~vec2<u32>(46008u, var_4.b.x)), var_2.b));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(countOneBits(vec4<u32>(var_6.x, 0u, 32599u, 4294967295u)) ^ vec4<u32>(61258u, var_0.b.x, var_2.b.x, 0u))), -(~var_1.wx) & vec2<i32>((5598i ^ var_0.a) & -18693i, 51276i), -_wgslsmith_div_vec3_i32(select(vec3<i32>(2147483647i, 2147483647i, var_4.a), ~vec3<i32>(3526i, var_2.a, 1i), var_0.c.x), var_1.yzw), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-147f, -202f) * vec2<f32>(global1[_wgslsmith_index_u32(var_6.x, 11u)], global1[_wgslsmith_index_u32(var_0.b.x, 11u)])) + vec2<f32>(-522f, global1[_wgslsmith_index_u32(u_input.d, 11u)])), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(32626u, 11u)], 504f)))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1567f, 190f) - vec2<f32>(-239f, -148f)) * _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global1[_wgslsmith_index_u32(u_input.c, 11u)], global1[_wgslsmith_index_u32(var_0.b.x, 11u)])))))))));
}

