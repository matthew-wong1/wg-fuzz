struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<i32, 7>;

var<private> global2: Struct_1 = Struct_1(818f);

var<private> global3: array<vec2<i32>, 22>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1(arg_0: Struct_2) -> Struct_2 {
    var var_0 = ~vec2<i32>(_wgslsmith_add_i32(global1[_wgslsmith_index_u32(~861u, 7u)], -11553i), global1[_wgslsmith_index_u32(u_input.a | reverseBits(abs(46923u)), 7u)]);
    global1 = array<i32, 7>();
    var var_1 = countOneBits(global1[_wgslsmith_index_u32(44168u, 7u)]);
    global1 = array<i32, 7>();
    global1 = array<i32, 7>();
    return arg_0;
}

fn func_3() -> Struct_2 {
    var var_0 = abs(select(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~4294967295u, ~u_input.a, u_input.a), 7u)] & _wgslsmith_dot_vec4_i32(-vec4<i32>(global1[_wgslsmith_index_u32(53864u, 7u)], 5219i, -50571i, global1[_wgslsmith_index_u32(u_input.a, 7u)]), _wgslsmith_clamp_vec4_i32(vec4<i32>(-12796i, 2147483647i, global1[_wgslsmith_index_u32(1u, 7u)], 2147483647i), vec4<i32>(2147483647i, global1[_wgslsmith_index_u32(0u, 7u)], global1[_wgslsmith_index_u32(1u, 7u)], global1[_wgslsmith_index_u32(40550u, 7u)]), vec4<i32>(global1[_wgslsmith_index_u32(u_input.a, 7u)], -1i, global1[_wgslsmith_index_u32(u_input.a, 7u)], global1[_wgslsmith_index_u32(77102u, 7u)]))), 1i, all(select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, true), vec2<bool>(true, true)))));
    let var_1 = ~global1[_wgslsmith_index_u32(~0u, 7u)];
    let var_2 = -2147483647i;
    let var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + global2.a)));
    global1 = array<i32, 7>();
    return func_1(func_1(func_1(func_1(func_1(Struct_2(var_3, Struct_1(var_3.a), -117f))))));
}

fn func_2(arg_0: i32, arg_1: Struct_2, arg_2: vec3<i32>) -> Struct_2 {
    global3 = array<vec2<i32>, 22>();
    global0 = true;
    global1 = array<i32, 7>();
    let var_0 = global2.a;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.c - _wgslsmith_f_op_f32(sign(arg_1.c))));
    return func_3();
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: vec2<bool>) -> Struct_1 {
    var var_0 = arg_1.a;
    global3 = array<vec2<i32>, 22>();
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1219f, -674f, 1519f) + vec3<f32>(-423f, 1414f, arg_1.a.a))) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(444f, -1000f, arg_1.c))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-918f, arg_1.b.a, global2.a))))))));
    var var_2 = func_3().b;
    global0 = all(arg_2);
    return func_3().a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_4(true, func_2(global1[_wgslsmith_index_u32(min(u_input.a, u_input.a), 7u)], func_1(Struct_2(Struct_1(429f), Struct_1(global2.a), global2.a)), vec3<i32>(_wgslsmith_mod_i32(global1[_wgslsmith_index_u32(4294967295u, 7u)], global1[_wgslsmith_index_u32(19210u, 7u)]), -global1[_wgslsmith_index_u32(u_input.a, 7u)], countOneBits(1i))), vec2<bool>(true, true)), func_3().a, -706f);
    let var_1 = ~(abs(~vec4<u32>(26861u, u_input.a, u_input.a, u_input.a)) << ((vec4<u32>(52420u, ~u_input.a, ~0u, u_input.a ^ u_input.a) >> (vec4<u32>(~1u, min(u_input.a, 1u), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a)), ~u_input.a) % vec4<u32>(32u))) % vec4<u32>(32u)));
    let var_2 = func_4(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(259f)), _wgslsmith_f_op_f32(var_0.a.a - 578f)), 1416f)) == var_0.a.a, func_3(), vec2<bool>(!(4294967295u >= u_input.a), select(true, select(all(vec3<bool>(true, false, true)), true, true), true)));
    global2 = Struct_1(_wgslsmith_f_op_f32(-var_0.b.a));
    var var_3 = false;
    global0 = any(vec2<bool>(true, !any(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), false))));
    var var_4 = func_2(2147483647i, Struct_2(var_0.b, var_0.a, -1000f), min(vec3<i32>(select(-global1[_wgslsmith_index_u32(var_1.x, 7u)], 3528i, true), _wgslsmith_mult_i32(~global1[_wgslsmith_index_u32(var_1.x, 7u)], 65631i), 3883i), -(~vec3<i32>(global1[_wgslsmith_index_u32(12437u, 7u)], global1[_wgslsmith_index_u32(var_1.x, 7u)], 28317i))));
    let var_5 = Struct_2(func_2(14664i, func_3(), abs(vec3<i32>(2147483647i, global1[_wgslsmith_index_u32(212u, 7u)], 1i) << (~var_1.zwz % vec3<u32>(32u)))).a, Struct_1(func_1(Struct_2(var_0.a, func_1(Struct_2(var_0.b, var_2, var_2.a)).a, -416f)).b.a), var_0.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.a.a, _wgslsmith_div_f32(var_4.a.a, _wgslsmith_f_op_f32(exp2(var_4.a.a))), _wgslsmith_div_f32(var_0.c, _wgslsmith_f_op_f32(var_4.b.a + var_5.a.a)), 604f)), ~_wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(max(vec3<i32>(global1[_wgslsmith_index_u32(70308u, 7u)], global1[_wgslsmith_index_u32(var_1.x, 7u)], -38948i), vec3<i32>(7759i, 0i, global1[_wgslsmith_index_u32(52363u, 7u)])), select(vec3<i32>(global1[_wgslsmith_index_u32(var_1.x, 7u)], 0i, 3481i), vec3<i32>(global1[_wgslsmith_index_u32(var_1.x, 7u)], global1[_wgslsmith_index_u32(0u, 7u)], -1i), true)), firstTrailingBit(vec3<i32>(57663i, -1i, -30148i)) | (vec3<i32>(24245i, 994i, global1[_wgslsmith_index_u32(u_input.a, 7u)]) & vec3<i32>(global1[_wgslsmith_index_u32(99029u, 7u)], global1[_wgslsmith_index_u32(4294967295u, 7u)], -1i))));
}

