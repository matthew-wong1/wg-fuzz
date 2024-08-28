struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: u32,
    b: vec4<bool>,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 5> = array<f32, 5>(754f, 286f, -622f, -937f, 946f);

var<private> global1: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(-6242i), Struct_1(i32(-2147483648)), Struct_1(-24910i), Struct_1(27883i), Struct_1(-1i), Struct_1(-15549i), Struct_1(51449i), Struct_1(-1i), Struct_1(2147483647i), Struct_1(0i), Struct_1(i32(-2147483648)), Struct_1(-1i), Struct_1(1i), Struct_1(i32(-2147483648)), Struct_1(2147483647i), Struct_1(-13506i), Struct_1(2147483647i));

var<private> global2: Struct_1 = Struct_1(-49415i);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: i32, arg_1: Struct_4, arg_2: u32) -> vec4<bool> {
    var var_0 = select(vec3<u32>(14741u, ~4294967295u, ~1u), vec3<u32>(1u, u_input.b.x & 28613u, abs(4950u)) ^ _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, u_input.b.x, arg_2), u_input.b), -1064f != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1374f * global0[_wgslsmith_index_u32(u_input.b.x, 5u)]) + _wgslsmith_f_op_f32(1032f + 1104f))) >> (~_wgslsmith_add_vec3_u32(~vec3<u32>(arg_2, arg_2, u_input.a), u_input.b) % vec3<u32>(32u));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1377f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(0u, 5u)], _wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(45830u, 5u)], -1000f)))))));
    global1 = array<Struct_1, 17>();
    global1 = array<Struct_1, 17>();
    global0 = array<f32, 5>();
    return vec4<bool>(arg_1.a.a, !arg_1.a.a, arg_1.a.a, arg_1.a.a);
}

fn func_2() -> vec4<i32> {
    let var_0 = global1[_wgslsmith_index_u32(36509u, 17u)];
    var var_1 = Struct_3(min(26551u, 1u), select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), func_3(1i, Struct_4(Struct_2(true)), ~0u), any(vec4<bool>(false, true, true, all(vec3<bool>(true, true, false))))));
    global1 = array<Struct_1, 17>();
    global0 = array<f32, 5>();
    var var_2 = vec4<bool>(true, false, false, true == var_1.b.x);
    return min(vec4<i32>(-reverseBits(-2147483647i), -2147483647i, -7476i, -1446i), firstLeadingBit(min(~(~vec4<i32>(global2.a, 10358i, 29841i, global2.a)), select(min(vec4<i32>(global2.a, -2147483647i, -4590i, -14521i), vec4<i32>(2147483647i, 2147483647i, var_0.a, global2.a)), firstLeadingBit(vec4<i32>(var_0.a, global2.a, 52741i, 2147483647i)), vec4<bool>(var_2.x, false, true, true)))));
}

fn func_4(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: i32, arg_3: i32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0[_wgslsmith_index_u32(5196u, 5u)], global0[_wgslsmith_index_u32(0u, 5u)], -693f, global0[_wgslsmith_index_u32(arg_0.a, 5u)]), vec4<f32>(global0[_wgslsmith_index_u32(0u, 5u)], global0[_wgslsmith_index_u32(arg_0.a, 5u)], global0[_wgslsmith_index_u32(u_input.a, 5u)], global0[_wgslsmith_index_u32(u_input.a, 5u)]))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1152f, -759f, 894f, global0[_wgslsmith_index_u32(arg_0.a, 5u)]) * vec4<f32>(global0[_wgslsmith_index_u32(0u, 5u)], global0[_wgslsmith_index_u32(0u, 5u)], -1734f, -681f))) * vec4<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(23107u, 5u)]), _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(11844u, 5u)])), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_0.a, 5u)]), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(arg_0.a, 5u)] - global0[_wgslsmith_index_u32(arg_0.a, 5u)]))))));
    var_0 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-496f, -1656f, -1664f, var_0.x) + vec4<f32>(1222f, -1006f, var_0.x, var_0.x)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1307f, global0[_wgslsmith_index_u32(10976u, 5u)], var_0.x, -1000f)) - vec4<f32>(var_0.x, -1388f, -764f, 1017f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, -1300f, 952f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(9806u, 5u)]))), 214f, global0[_wgslsmith_index_u32(~u_input.a, 5u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(u_input.a, 5u)])) + _wgslsmith_f_op_f32(f32(-1f) * -790f))))));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1f - -907f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~19928u, 5u)]), _wgslsmith_f_op_f32(-var_0.x)))), 1000f, var_0.x);
    global0 = array<f32, 5>();
    let var_2 = Struct_2(all(vec2<bool>(true, arg_0.b.x)));
    return var_2;
}

fn func_1(arg_0: bool, arg_1: f32) -> vec4<u32> {
    global2 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a, 4294967295u), 17u)];
    var var_0 = Struct_4(func_4(Struct_3(abs(~4294967295u), select(select(vec4<bool>(true, arg_0, arg_0, false), vec4<bool>(true, arg_0, arg_0, arg_0), vec4<bool>(false, arg_0, arg_0, arg_0)), vec4<bool>(arg_0, arg_0, arg_0, arg_0), any(vec2<bool>(arg_0, arg_0)))), select(-vec4<i32>(66828i, 0i, 1i, -15333i), select(vec4<i32>(-53334i, -23980i, 62156i, -1i), func_2(), !arg_0), true), global2.a, 0i));
    global0 = array<f32, 5>();
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1)));
    var var_2 = -1231f;
    return vec4<u32>(_wgslsmith_mult_u32(u_input.a, _wgslsmith_sub_u32(4294967295u, 15630u)) << (((1u & u_input.a) << (44892u % 32u)) % 32u), (~u_input.a >> (_wgslsmith_sub_u32(u_input.b.x, 1u) % 32u)) << ((38946u & _wgslsmith_dot_vec2_u32(u_input.b.yz, vec2<u32>(u_input.a, 4294967295u))) % 32u), 0u, 4294967295u) << (~vec4<u32>(1u, 0u, 49506u, ~(~0u)) % vec4<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = reverseBits(25303u >> (~u_input.a % 32u));
    global1 = array<Struct_1, 17>();
    global1 = array<Struct_1, 17>();
    let var_1 = -176f;
    var var_2 = Struct_1(_wgslsmith_add_i32(-_wgslsmith_sub_i32(global2.a, _wgslsmith_sub_i32(global2.a, global2.a)), 2147483647i));
    let var_3 = vec3<u32>(var_0 ^ _wgslsmith_dot_vec4_u32(abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, 1u, 47249u, 14342u), vec4<u32>(var_0, 1u, 61022u, var_0), vec4<u32>(u_input.b.x, var_0, u_input.a, var_0))), func_1(true, global0[_wgslsmith_index_u32(4294967295u, 5u)])), firstTrailingBit(var_0 << (var_0 % 32u)), countOneBits(_wgslsmith_sub_u32(u_input.b.x, var_0)));
    var var_4 = -180f;
    let x = u_input.a;
    s_output = StorageBuffer(~(~(func_1(false, 686f) ^ select(vec4<u32>(var_3.x, 42924u, 19366u, 25354u), vec4<u32>(1u, 43516u, var_0, 36749u), vec4<bool>(true, true, false, true)))));
}

