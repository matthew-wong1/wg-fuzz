struct Struct_1 {
    a: vec4<f32>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: vec4<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 14> = array<vec2<f32>, 14>(vec2<f32>(414f, -900f), vec2<f32>(516f, -321f), vec2<f32>(-241f, -1392f), vec2<f32>(480f, -514f), vec2<f32>(1260f, -616f), vec2<f32>(-561f, 689f), vec2<f32>(-1000f, 239f), vec2<f32>(-844f, 1221f), vec2<f32>(920f, 971f), vec2<f32>(-1261f, -838f), vec2<f32>(981f, 430f), vec2<f32>(-2346f, 362f), vec2<f32>(539f, -246f), vec2<f32>(636f, -742f));

var<private> global1: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(vec4<f32>(1799f, 2013f, 1422f, 157f), vec4<f32>(758f, -116f, 483f, -687f)), Struct_1(vec4<f32>(-456f, 207f, 539f, 1616f), vec4<f32>(188f, -1000f, 2728f, 1931f)), Struct_1(vec4<f32>(781f, 368f, -321f, -1216f), vec4<f32>(107f, -294f, -857f, 208f)), Struct_1(vec4<f32>(1000f, 173f, 164f, -157f), vec4<f32>(-222f, -493f, 1752f, 935f)), Struct_1(vec4<f32>(1022f, -860f, 339f, 721f), vec4<f32>(1000f, -869f, -408f, 534f)));

var<private> global2: Struct_1 = Struct_1(vec4<f32>(1656f, -705f, -1000f, 1393f), vec4<f32>(512f, 604f, -184f, -1000f));

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: u32) -> bool {
    var var_0 = global0[_wgslsmith_index_u32(~1u, 14u)];
    global1 = array<Struct_1, 5>();
    var var_1 = vec4<f32>(_wgslsmith_div_f32(1667f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -177f)))))), _wgslsmith_f_op_f32(-global2.a.x), _wgslsmith_f_op_f32(-global2.a.x), -1001f);
    global1 = array<Struct_1, 5>();
    let var_2 = global2.b.x;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(127f, 897f))) + _wgslsmith_f_op_f32(trunc(1f))) >= _wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -224f)))));
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: vec3<u32>) -> Struct_1 {
    let var_0 = vec4<bool>(false, true, all(select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), -1000f != global2.a.x), vec3<bool>(any(vec2<bool>(true, false)), true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true))), func_3(u_input.e.x));
    global0 = array<vec2<f32>, 14>();
    global1 = array<Struct_1, 5>();
    var var_1 = global1[_wgslsmith_index_u32(arg_2.x, 5u)];
    global1 = array<Struct_1, 5>();
    return Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.b) + var_1.a), _wgslsmith_f_op_vec4_f32(-global2.b));
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> Struct_1 {
    let var_0 = global1[_wgslsmith_index_u32(firstLeadingBit(u_input.e.x), 5u)];
    let var_1 = _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e.x << (max(u_input.d.x, u_input.d.x) % 32u), ~u_input.d.x), ~u_input.d.yx) >> (abs(4294967295u) % 32u);
    global1 = array<Struct_1, 5>();
    let var_2 = func_2(arg_1.b.x, global1[_wgslsmith_index_u32(_wgslsmith_div_u32(reverseBits(34404u), (var_1 & ~var_1) ^ u_input.e.x), 5u)], vec3<u32>(var_1, _wgslsmith_sub_u32(_wgslsmith_clamp_u32(16473u, u_input.e.x, var_1), 4294967295u), countOneBits(firstLeadingBit(4294967295u))) ^ u_input.d.wzz);
    let var_3 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(0u | ~min(8824u, select(6306u, 43447u, false)), u_input.d.x), 5u)];
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(global2.a, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-209f, 879f, -155f, -148f) * vec4<f32>(1548f, 837f, 921f, global2.b.x)), global2.a))))));
    global0 = array<vec2<f32>, 14>();
    var var_1 = 723f;
    let var_2 = vec3<i32>(28201i, u_input.c, u_input.b);
    let var_3 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~(~u_input.d.x), u_input.e.x), 5u)];
    global2 = var_0;
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-500f - 861f)), var_0.a.x, true))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.x * var_0.a.x) - var_0.b.x));
    var var_4 = var_0;
    var var_5 = func_1(_wgslsmith_dot_vec2_i32(vec2<i32>(14996i | _wgslsmith_sub_i32(-1i, u_input.b), _wgslsmith_mult_i32(u_input.a.x, ~u_input.c)), select(-u_input.a.yx, select(~u_input.a.yw, ~vec2<i32>(0i, -2147483647i), true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)))), var_0);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(u_input.a, u_input.a, u_input.a), u_input.a), u_input.d.xww);
}

