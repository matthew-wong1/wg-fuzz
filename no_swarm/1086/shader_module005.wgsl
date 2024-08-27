struct Struct_1 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 2> = array<vec4<u32>, 2>(vec4<u32>(1u, 0u, 4294967295u, 59708u), vec4<u32>(4294967295u, 1u, 0u, 23264u));

var<private> global1: array<vec3<i32>, 25>;

var<private> global2: Struct_1 = Struct_1(vec4<u32>(1u, 0u, 57173u, 1u));

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> u32 {
    let var_0 = Struct_1(abs(_wgslsmith_mult_vec4_u32(vec4<u32>(global2.a.x, ~0u, global2.a.x, 1u), global2.a)));
    global2 = var_0;
    var var_1 = -6377i;
    var var_2 = ~countOneBits(vec4<i32>(-1i, firstLeadingBit(select(-2147483647i, -30178i, false)), -57175i, 2147483647i | _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 17512i, -1155i, 20700i), vec4<i32>(1i, 33884i, -2147483647i, 0i))));
    let var_3 = var_0.a.x ^ u_input.a;
    return abs(1u);
}

fn func_2(arg_0: bool) -> Struct_1 {
    var var_0 = Struct_1(vec4<u32>(abs(func_3()), u_input.a, ~(~u_input.a), min(~22511u, ~global2.a.x)) & firstLeadingBit(vec4<u32>(_wgslsmith_add_u32(69233u, global2.a.x), ~4294967295u, 22209u, ~4294967295u)));
    let var_1 = -571f;
    var_0 = Struct_1(vec4<u32>(global2.a.x, ~u_input.a, _wgslsmith_clamp_u32(~min(u_input.a, 30111u), ~abs(global2.a.x), 0u), ~_wgslsmith_clamp_u32(reverseBits(0u), _wgslsmith_mult_u32(global2.a.x, 2920u), _wgslsmith_add_u32(u_input.a, u_input.a))));
    var var_2 = Struct_1(~abs(~(~vec4<u32>(global2.a.x, u_input.a, 98954u, u_input.a))));
    let var_3 = ~firstLeadingBit(~var_0.a.x);
    return Struct_1(vec4<u32>(abs(~firstLeadingBit(24232u)), ~8243u, var_2.a.x, _wgslsmith_add_u32(~var_0.a.x, u_input.a)));
}

fn func_1() -> u32 {
    global0 = array<vec4<u32>, 2>();
    global2 = func_2(any(vec4<bool>(true, false, !any(vec3<bool>(false, false, true)), any(vec2<bool>(true, false)) & all(vec2<bool>(false, true)))));
    var var_0 = Struct_1((vec4<u32>(global2.a.x, _wgslsmith_mult_u32(u_input.a, 0u), 53684u, max(global2.a.x, u_input.a)) ^ (_wgslsmith_mult_vec4_u32(global0[_wgslsmith_index_u32(u_input.a, 2u)], global2.a) << (~global0[_wgslsmith_index_u32(global2.a.x, 2u)] % vec4<u32>(32u)))) ^ global2.a);
    var var_1 = func_2(all(vec4<bool>(any(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true))), true, true, false)));
    global0 = array<vec4<u32>, 2>();
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec4<u32>(u_input.a, 4294967295u, min(0u, func_1()), _wgslsmith_clamp_u32(~4294967295u, _wgslsmith_add_u32(~1u, ~4294967295u), global2.a.x)));
    var var_1 = firstLeadingBit(~_wgslsmith_mult_vec2_u32(global2.a.yy, vec2<u32>(var_0.a.x, 4616u))) & reverseBits(_wgslsmith_div_vec2_u32(var_0.a.yx << (~var_0.a.yw % vec2<u32>(32u)), global2.a.yw));
    var var_2 = Struct_1(global0[_wgslsmith_index_u32(~8321u, 2u)]);
    let var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1294f, _wgslsmith_f_op_f32(f32(-1f) * -109f)))));
    let var_4 = func_2(!(!(-419f != _wgslsmith_f_op_f32(step(-446f, var_3)))));
    var_2 = Struct_1(var_4.a);
    var var_5 = var_4;
    var_1 = var_4.a.xx;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_3, 1329f))), -reverseBits(-abs(2147483647i)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3) + _wgslsmith_f_op_f32(abs(-268f))))))), -1802f);
}

