struct Struct_1 {
    a: i32,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 24> = array<f32, 24>(405f, -857f, 931f, -849f, 1323f, -241f, 659f, -2301f, -332f, -1000f, 938f, 117f, 1050f, -1687f, -703f, -860f, -2771f, 1000f, 1053f, -1701f, 838f, -659f, 103f, 214f);

var<private> global1: array<vec4<u32>, 8>;

var<private> global2: array<bool, 27>;

var<private> global3: vec3<bool>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2(arg_0: Struct_1) -> vec3<bool> {
    var var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(var_0.b)))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0.b)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b)))));
    global2 = array<bool, 27>();
    let var_2 = true;
    var var_3 = -_wgslsmith_dot_vec3_i32(~(~(-vec3<i32>(arg_0.a, arg_0.a, 1643i))), ~countOneBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_0.a, -1i, u_input.b), vec3<i32>(69645i, -1i, var_0.a), vec3<i32>(var_0.a, -34385i, u_input.b))));
    return select(!vec3<bool>(true, (global3.x == global3.x) == (49340i >= u_input.b), false), !vec3<bool>(any(!vec4<bool>(global3.x, true, true, var_2)), any(vec4<bool>(true, true, true, true)), any(!vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 27u)], global2[_wgslsmith_index_u32(u_input.a, 27u)], false, var_2))), global2[_wgslsmith_index_u32(~(~u_input.a), 27u)]);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>) -> f32 {
    var var_0 = ~1u;
    var var_1 = firstLeadingBit(_wgslsmith_div_i32(max(_wgslsmith_clamp_i32(i32(-1i) * -35207i, min(-2147483647i, arg_1.x), ~(-53999i)), 2147483647i), 1i >> (0u % 32u)));
    return _wgslsmith_f_op_f32(-arg_0.b);
}

fn func_1() -> u32 {
    global3 = !(!func_2(Struct_1(u_input.b, _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    var var_0 = Struct_1(~firstTrailingBit(1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(2570u, 24u)]), _wgslsmith_f_op_f32(func_3(Struct_1(u_input.b, global0[_wgslsmith_index_u32(106691u, 24u)]), vec4<i32>(u_input.b, u_input.b, u_input.b, 1i)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(0u, 24u)], global0[_wgslsmith_index_u32(u_input.a, 24u)])) * _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(57158u, 24u)] - global0[_wgslsmith_index_u32(u_input.a, 24u)])))));
    global3 = vec3<bool>(global2[_wgslsmith_index_u32(1u & u_input.a, 27u)], any(!select(vec4<bool>(false, false, global3.x, global2[_wgslsmith_index_u32(102609u, 27u)]), vec4<bool>(global3.x, global3.x, true, true), vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.a, 27u)], true, true))) || !global3.x, global2[_wgslsmith_index_u32(max(u_input.a, 55128u), 27u)]);
    return ~(~_wgslsmith_add_u32(~reverseBits(4294967295u), abs(~u_input.a)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<u32>, 8>();
    var var_0 = ~(~0u);
    var var_1 = u_input.a;
    var var_2 = Struct_1(~(-65719i), global0[_wgslsmith_index_u32(~(u_input.a | func_1()), 24u)]);
    var_1 = _wgslsmith_mod_u32(28593u, ~1u);
    var var_3 = Struct_1(-_wgslsmith_dot_vec3_i32(vec3<i32>(firstTrailingBit(u_input.b), -28594i, firstTrailingBit(42161i)), vec3<i32>(u_input.b, -1i, u_input.b) << (_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, 133113u, 1u), vec3<u32>(u_input.a, u_input.a, u_input.a)) % vec3<u32>(32u))), _wgslsmith_f_op_f32(floor(1956f)));
    var var_4 = ~(_wgslsmith_clamp_u32(~(u_input.a << (1u % 32u)), ~17500u, ~0u) & _wgslsmith_dot_vec2_u32(~(~vec2<u32>(u_input.a, 64668u)), ~vec2<u32>(16445u, u_input.a)));
    global2 = array<bool, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(trunc(1885f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_3.b * -912f), _wgslsmith_div_f32(var_2.b, var_3.b))))));
}

