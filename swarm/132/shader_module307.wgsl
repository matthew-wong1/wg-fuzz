struct Struct_1 {
    a: vec4<i32>,
    b: vec4<bool>,
    c: vec2<i32>,
    d: f32,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 16>;

var<private> global1: Struct_1 = Struct_1(vec4<i32>(-14113i, 2147483647i, 7339i, -11388i), vec4<bool>(true, false, true, false), vec2<i32>(1i, 29001i), 913f, vec4<bool>(false, true, true, false));

var<private> global2: f32 = 407f;

var<private> global3: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(vec4<i32>(0i, 0i, 4704i, 2147483647i), vec4<bool>(true, true, false, false), vec2<i32>(2147483647i, 13652i), -1000f, vec4<bool>(true, false, true, false)), Struct_1(vec4<i32>(0i, i32(-2147483648), -17201i, i32(-2147483648)), vec4<bool>(false, false, false, true), vec2<i32>(i32(-2147483648), 2147483647i), 468f, vec4<bool>(false, true, false, false)), Struct_1(vec4<i32>(-44476i, 10635i, -39230i, -1i), vec4<bool>(false, true, false, true), vec2<i32>(0i, 4870i), 3055f, vec4<bool>(false, true, true, false)), Struct_1(vec4<i32>(-68202i, 12877i, -25074i, -17966i), vec4<bool>(true, true, false, true), vec2<i32>(-36063i, 2147483647i), -456f, vec4<bool>(true, false, true, true)), Struct_1(vec4<i32>(11062i, 23102i, -5477i, -26427i), vec4<bool>(true, true, false, true), vec2<i32>(0i, i32(-2147483648)), -1000f, vec4<bool>(false, true, true, false)), Struct_1(vec4<i32>(8020i, -40912i, 1i, i32(-2147483648)), vec4<bool>(false, false, false, false), vec2<i32>(-29356i, 2147483647i), -1126f, vec4<bool>(false, false, true, true)), Struct_1(vec4<i32>(0i, 13998i, 63347i, 2147483647i), vec4<bool>(true, true, true, true), vec2<i32>(-117603i, -3111i), 594f, vec4<bool>(false, false, false, true)), Struct_1(vec4<i32>(2147483647i, -26711i, -1i, i32(-2147483648)), vec4<bool>(true, true, true, false), vec2<i32>(10521i, 1i), 268f, vec4<bool>(true, true, true, true)), Struct_1(vec4<i32>(0i, 36471i, 2147483647i, 20614i), vec4<bool>(true, false, true, false), vec2<i32>(2147483647i, 2147483647i), -308f, vec4<bool>(false, true, false, false)), Struct_1(vec4<i32>(14070i, -37487i, -55178i, 8399i), vec4<bool>(true, false, false, false), vec2<i32>(16062i, -73455i), 1998f, vec4<bool>(false, true, false, false)));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    let var_0 = u_input.a.zz;
    var var_1 = !(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(u_input.a.x << (30916u % 32u), _wgslsmith_clamp_u32(90866u, var_0.x, var_0.x), firstLeadingBit(u_input.a.x), 0u)) == _wgslsmith_mod_u32(1u ^ var_0.x, ~u_input.a.x));
    global0 = array<vec3<i32>, 16>();
    var var_2 = global1.b.wz;
    var_2 = !vec2<bool>(!((u_input.a.x << (var_0.x % 32u)) > u_input.a.x), all(global1.b.www));
    return firstTrailingBit(arg_1.a.x);
}

fn func_2(arg_0: f32, arg_1: Struct_1) -> vec2<i32> {
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.d * 412f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + global1.d)));
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(306f + _wgslsmith_f_op_f32(-arg_0)));
    let var_0 = true;
    global0 = array<vec3<i32>, 16>();
    var var_1 = select(!arg_1.e.yxx, !(!vec3<bool>(global1.d > arg_0, true, global1.b.x)), arg_1.b.wyy);
    return -vec2<i32>(_wgslsmith_clamp_i32(36648i, func_3(Struct_1(vec4<i32>(-51029i, 21271i, 1i, global1.a.x), vec4<bool>(true, false, arg_1.e.x, true), global1.a.yw, global1.d, vec4<bool>(false, true, false, arg_1.e.x)), Struct_1(vec4<i32>(-23997i, global1.a.x, arg_1.a.x, 28711i), vec4<bool>(global1.e.x, true, true, var_1.x), vec2<i32>(-18974i, arg_1.c.x), -1000f, vec4<bool>(var_1.x, false, arg_1.e.x, false))), arg_1.a.x | (arg_1.a.x >> (1u % 32u))), 0i);
}

fn func_1() -> Struct_1 {
    var var_0 = vec2<i32>(min(global1.c.x, global1.a.x), -(countOneBits(-47707i) | (0i >> (~u_input.a.x % 32u))));
    global1 = global3[_wgslsmith_index_u32(19152u, 10u)];
    global0 = array<vec3<i32>, 16>();
    let var_1 = Struct_1(firstTrailingBit(vec4<i32>(-50301i, -1i, select(abs(global1.a.x), global1.a.x, true), firstTrailingBit(0i))), global1.e, func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(286f))), global3[_wgslsmith_index_u32(firstLeadingBit(~reverseBits(40551u)), 10u)]), -394f, select(!global1.b, vec4<bool>(_wgslsmith_f_op_f32(-global1.d) <= -350f, true, !any(global1.e.zx), true), false));
    let var_2 = ~(select(_wgslsmith_mult_vec4_u32(vec4<u32>(28844u, u_input.a.x, 1765u, 1u), vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x) ^ u_input.a), u_input.a, any(vec4<bool>(var_1.b.x, false, global1.b.x, true)) & global1.e.x) | ~u_input.a);
    return Struct_1(abs(select(-var_1.a, global1.a, vec4<bool>(!global1.e.x, var_1.e.x & global1.b.x, true, true))), var_1.e, firstLeadingBit(vec2<i32>(-9536i, var_0.x)), _wgslsmith_f_op_f32(abs(-1000f)), var_1.e);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<i32>, 16>();
    global3 = array<Struct_1, 10>();
    var var_0 = func_1();
    global0 = array<vec3<i32>, 16>();
    global0 = array<vec3<i32>, 16>();
    let var_1 = select(!var_0.e.yyy, global1.b.zzz, vec3<bool>(select(var_0.b.x, any(global1.b), true), true, false));
    global2 = var_0.d;
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.d))) - -474f), var_0.d);
    let var_3 = reverseBits(vec4<u32>(u_input.a.x, abs(~u_input.a.x), 0u, 0u));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x);
}

