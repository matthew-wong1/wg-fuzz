struct Struct_1 {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 7> = array<u32, 7>(25601u, 1u, 0u, 79436u, 86121u, 65267u, 30216u);

var<private> global1: array<Struct_1, 10>;

var<private> global2: array<vec4<i32>, 25> = array<vec4<i32>, 25>(vec4<i32>(-235i, -1i, -9137i, -21215i), vec4<i32>(-11777i, -1i, 2147483647i, 22022i), vec4<i32>(-935i, i32(-2147483648), 0i, -1i), vec4<i32>(1i, -1i, 1i, -1i), vec4<i32>(2147483647i, i32(-2147483648), -10025i, 2147483647i), vec4<i32>(-47512i, -26181i, -1816i, 1i), vec4<i32>(22253i, 1i, -1i, i32(-2147483648)), vec4<i32>(-37528i, -2144i, 923i, 2147483647i), vec4<i32>(0i, 34647i, 28649i, -17795i), vec4<i32>(-1i, 0i, -19200i, -4433i), vec4<i32>(2147483647i, i32(-2147483648), 1i, 2147483647i), vec4<i32>(-62666i, 14178i, 62222i, 0i), vec4<i32>(20864i, 9988i, -50206i, -56248i), vec4<i32>(-42971i, -49352i, 0i, 1i), vec4<i32>(1i, 1i, i32(-2147483648), -19040i), vec4<i32>(i32(-2147483648), -49816i, 0i, 59937i), vec4<i32>(-1i, -15867i, 2147483647i, -1i), vec4<i32>(2771i, -3805i, -24575i, 1i), vec4<i32>(45809i, -14026i, 1i, 6211i), vec4<i32>(0i, -1i, -1i, 2147483647i), vec4<i32>(96639i, -24669i, 2147483647i, -18669i), vec4<i32>(-39853i, -62433i, 1i, -7617i), vec4<i32>(25269i, 22978i, 0i, 53789i), vec4<i32>(2147483647i, i32(-2147483648), i32(-2147483648), -36289i), vec4<i32>(i32(-2147483648), 2147483647i, 77053i, 0i));

var<private> global3: vec4<i32> = vec4<i32>(-1i, 58008i, -1i, 2147483647i);

var<private> global4: array<vec3<bool>, 9> = array<vec3<bool>, 9>(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_2() -> Struct_1 {
    global2 = array<vec4<i32>, 25>();
    global3 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~(~(~(vec4<u32>(0u, 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(64944u, 7u)], 7u)], 7u)], 1u) >> (vec4<u32>(global0[_wgslsmith_index_u32(2326u, 7u)], 1u, 19215u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 7u)], 7u)]) % vec4<u32>(32u))))), min(abs(vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, 4681u)), countOneBits(~(vec4<u32>(global0[_wgslsmith_index_u32(u_input.a.x, 7u)], u_input.a.x, 1u, 1u) | vec4<u32>(4294967295u, u_input.a.x, 0u, global0[_wgslsmith_index_u32(42176u, 7u)]))))), 25u)];
    let var_0 = Struct_1(~vec2<u32>(_wgslsmith_add_u32(0u, u_input.a.x), u_input.a.x), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, _wgslsmith_div_u32(1u, u_input.a.x), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(0u, 1u)), ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 7u)], 7u)]), vec4<u32>(79023u & u_input.a.x, 1u, ~1u, u_input.a.x | global0[_wgslsmith_index_u32(u_input.a.x, 7u)])) | ~firstLeadingBit(~vec4<u32>(u_input.a.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 7u)], 7u)], 58326u, 21844u)));
    let var_1 = _wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32((0u >> (global0[_wgslsmith_index_u32(0u, 7u)] % 32u)) << ((global0[_wgslsmith_index_u32(8504u, 7u)] ^ 4294967295u) % 32u), ~_wgslsmith_sub_u32(u_input.a.x, 35290u), ~13167u), _wgslsmith_dot_vec2_u32(~(~vec2<u32>(4294967295u, 61081u)), _wgslsmith_add_vec2_u32(~u_input.a.yz, max(vec2<u32>(7230u, 0u), vec2<u32>(1u, global0[_wgslsmith_index_u32(var_0.b.x, 7u)])))), ~(~(~var_0.b.x))), vec3<u32>(abs(_wgslsmith_add_u32(global0[_wgslsmith_index_u32(~u_input.a.x, 7u)], 18421u)), ~reverseBits(~u_input.a.x), var_0.b.x));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1897f + 1088f)) + 1000f)));
    return var_0;
}

fn func_3() -> u32 {
    global2 = array<vec4<i32>, 25>();
    let var_0 = select(!select(vec4<bool>(all(vec2<bool>(false, false)), true, true, true), select(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false)), vec4<bool>(true, false, false, true), true), false), vec4<bool>(global3.x <= firstTrailingBit(2147483647i ^ global3.x), true, all(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), true)), false), false);
    global4 = array<vec3<bool>, 9>();
    global0 = array<u32, 7>();
    var var_1 = var_0;
    return 4294967295u;
}

fn func_1(arg_0: bool, arg_1: vec3<f32>) -> Struct_2 {
    global4 = array<vec3<bool>, 9>();
    global0 = array<u32, 7>();
    global1 = array<Struct_1, 10>();
    let var_0 = arg_1.x;
    global2 = array<vec4<i32>, 25>();
    return Struct_2(func_2(), Struct_1(vec2<u32>(max(global0[_wgslsmith_index_u32(~0u, 7u)], u_input.a.x), func_3()), vec4<u32>(select(_wgslsmith_mod_u32(48173u, 26432u), global0[_wgslsmith_index_u32(1u, 7u)], false), ~(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 7u)], 7u)], 7u)], 7u)]), ~countOneBits(global0[_wgslsmith_index_u32(0u, 7u)]), ~(~0u))), firstLeadingBit(u_input.a.x));
}

fn func_4(arg_0: Struct_2) -> u32 {
    var var_0 = true;
    var var_1 = !(!(!select(global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(1u, 7u)], arg_0.c), 9u)], vec3<bool>(true, false, true), true)));
    var var_2 = Struct_1(reverseBits(vec2<u32>(~global0[_wgslsmith_index_u32(arg_0.a.a.x, 7u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 7u)], 7u)] | _wgslsmith_dot_vec4_u32(vec4<u32>(87583u, 1u, 1u, 1u), arg_0.a.b))), vec4<u32>(_wgslsmith_add_u32(~(arg_0.a.a.x ^ 43490u), ~func_2().a.x), ~_wgslsmith_sub_u32(func_2().a.x, max(4294967295u, 0u)), 0u, ~u_input.a.x));
    let var_3 = func_1(all(!vec4<bool>(var_1.x, true, true, false)) && true, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-154f, _wgslsmith_f_op_f32(min(997f, 579f)), _wgslsmith_f_op_f32(-1773f - 1000f)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(224f, 1272f, 936f) + vec3<f32>(-2245f, -651f, -1165f)))), vec3<bool>(true, true, false))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-358f, -2904f, -1121f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1786f, -759f, -453f) - vec3<f32>(-1551f, 105f, 574f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -668f, -120f)) * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(979f, -529f, -718f))))))).a;
    var var_4 = Struct_1(func_2().a, ~(_wgslsmith_clamp_vec4_u32(select(vec4<u32>(var_3.b.x, 0u, 32685u, u_input.a.x), var_2.b, true), firstLeadingBit(arg_0.a.b), ~vec4<u32>(0u, arg_0.c, 0u, u_input.a.x)) << (_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(var_2.b, vec4<u32>(0u, 80309u, var_3.b.x, 0u)), ~var_3.b) % vec4<u32>(32u))));
    return _wgslsmith_mod_u32(var_3.a.x, _wgslsmith_clamp_u32(4294967295u, 4294967295u, firstTrailingBit(85839u)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 10>();
    var var_0 = _wgslsmith_add_vec4_u32(reverseBits(~(~vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(49125u, 7u)], 7u)], u_input.a.x, u_input.a.x, 0u))), vec4<u32>(_wgslsmith_sub_u32(func_4(func_1(true, vec3<f32>(1000f, 282f, -175f))), u_input.a.x), func_2().b.x, ~global0[_wgslsmith_index_u32(0u, 7u)], ~func_4(Struct_2(global1[_wgslsmith_index_u32(u_input.a.x, 10u)], Struct_1(vec2<u32>(40088u, 36714u), vec4<u32>(105465u, global0[_wgslsmith_index_u32(4925u, 7u)], u_input.a.x, 39544u)), 44342u))));
    var var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -487f)))));
    global1 = array<Struct_1, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(global3.x, _wgslsmith_clamp_i32(min(global3.x, 1318i), 1i, -19462i >> (var_0.x % 32u)) << (abs(func_4(Struct_2(Struct_1(u_input.a.zx, vec4<u32>(global0[_wgslsmith_index_u32(0u, 7u)], 25814u, u_input.a.x, u_input.a.x)), Struct_1(u_input.a.zx, vec4<u32>(4294967295u, var_0.x, 97261u, global0[_wgslsmith_index_u32(56957u, 7u)])), global0[_wgslsmith_index_u32(40252u, 7u)]))) % 32u), global3.x, -2147483647i), _wgslsmith_sub_u32(var_0.x, min(_wgslsmith_add_u32(10269u, ~4294967295u), firstLeadingBit(89957u))));
}

