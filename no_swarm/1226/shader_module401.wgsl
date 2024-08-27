struct Struct_1 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec3<f32>,
    d: f32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 20> = array<i32, 20>(-29827i, 0i, 25393i, 2147483647i, -8749i, -32492i, 44756i, 1i, 2147483647i, 420i, 0i, 15301i, -10982i, 1i, -4943i, 2147483647i, 42997i, 37633i, i32(-2147483648), i32(-2147483648));

var<private> global1: array<vec3<u32>, 16>;

var<private> global2: array<vec3<i32>, 24> = array<vec3<i32>, 24>(vec3<i32>(0i, 471i, i32(-2147483648)), vec3<i32>(13476i, 1i, -28348i), vec3<i32>(20757i, 0i, 2147483647i), vec3<i32>(16373i, -12432i, 1i), vec3<i32>(0i, i32(-2147483648), 0i), vec3<i32>(-31013i, 11047i, 2147483647i), vec3<i32>(25113i, -1i, -31375i), vec3<i32>(-8599i, 1i, i32(-2147483648)), vec3<i32>(30977i, 2147483647i, 2147483647i), vec3<i32>(i32(-2147483648), 37285i, 1i), vec3<i32>(-1i, 18309i, 25828i), vec3<i32>(1i, 14263i, -1i), vec3<i32>(1i, 1i, -657i), vec3<i32>(27735i, -1i, 41713i), vec3<i32>(-19597i, 54123i, -1i), vec3<i32>(-26652i, -1i, -9903i), vec3<i32>(-8880i, 0i, i32(-2147483648)), vec3<i32>(-28917i, 0i, -1i), vec3<i32>(-32380i, 0i, i32(-2147483648)), vec3<i32>(-1i, i32(-2147483648), 2147483647i), vec3<i32>(-43205i, 0i, 2147483647i), vec3<i32>(18198i, 25487i, -19133i), vec3<i32>(2147483647i, -1i, i32(-2147483648)), vec3<i32>(-6564i, -69488i, 2147483647i));

var<private> global3: array<vec3<u32>, 13>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<bool>, arg_1: u32) -> bool {
    let var_0 = abs(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 16748u), vec2<u32>(14241u, u_input.c.x)) ^ arg_1));
    let var_1 = Struct_1(~global3[_wgslsmith_index_u32(_wgslsmith_add_u32(4294967295u, arg_1), 13u)]);
    let var_2 = Struct_1(u_input.c.xxx);
    global2 = array<vec3<i32>, 24>();
    let var_3 = Struct_1(~global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(select(~vec2<u32>(46486u, u_input.a.x), vec2<u32>(var_2.a.x, 84370u), vec2<bool>(arg_0.x, false)), ~(~vec2<u32>(var_1.a.x, var_2.a.x))), 16u)]);
    return true;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<u32>) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -698f) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * _wgslsmith_f_op_f32(f32(-1f) * -165f)))));
    global1 = array<vec3<u32>, 16>();
    global0 = array<i32, 20>();
    global1 = array<vec3<u32>, 16>();
    let var_1 = Struct_1(vec3<u32>(arg_0.a.x, 4294967295u, 32277u));
    return select(!vec2<bool>(true, func_3(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), false), ~4294967295u)), vec2<bool>(true, true), !(!vec2<bool>(true, arg_2.x < 4294967295u)));
}

fn func_1(arg_0: Struct_1, arg_1: u32) -> Struct_1 {
    let var_0 = vec3<i32>(global0[_wgslsmith_index_u32(~reverseBits(4294967295u), 20u)], -19940i, global0[_wgslsmith_index_u32(arg_0.a.x, 20u)]);
    global2 = array<vec3<i32>, 24>();
    global3 = array<vec3<u32>, 13>();
    var var_1 = !vec3<bool>(false, any(select(func_2(arg_0, arg_0, u_input.c), vec2<bool>(true, true), vec2<bool>(false, true))), true);
    global1 = array<vec3<u32>, 16>();
    return Struct_1(_wgslsmith_div_vec3_u32(abs(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.a.x, 0u, 8243u), vec3<u32>(u_input.a.x, arg_1, arg_1)), 1u, u_input.a.x >> (arg_1 % 32u))), ~countOneBits(~arg_0.a)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec3<u32>, 13>();
    var var_0 = func_1(Struct_1(~select(global1[_wgslsmith_index_u32(0u, 16u)], _wgslsmith_sub_vec3_u32(vec3<u32>(1u, 60989u, 0u), vec3<u32>(83398u, 15802u, u_input.c.x)), vec3<bool>(true, true, true))), u_input.a.x);
    var_0 = Struct_1(global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~_wgslsmith_mod_u32(u_input.a.x, var_0.a.x), ~(~4294967295u), u_input.a.x) & ~u_input.c.x, 13u)]);
    let var_1 = Struct_1(firstTrailingBit(~(~(~global3[_wgslsmith_index_u32(var_0.a.x, 13u)]))));
    var var_2 = Struct_1(max(_wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_0.a.x, u_input.a.x, 1u), vec4<u32>(90065u, u_input.c.x, 1u, var_1.a.x)), abs(var_0.a.x), var_0.a.x), select(~vec3<u32>(1u, u_input.a.x, 4294967295u), vec3<u32>(48931u, 99830u, var_1.a.x), any(vec2<bool>(false, true))), var_0.a), vec3<u32>(4294967295u, u_input.a.x, _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(u_input.c.zy, vec2<u32>(0u, 7443u)), 27084u))));
    let var_3 = max(-_wgslsmith_div_i32(_wgslsmith_mod_i32(abs(-54546i), 1i), 1i), 1i);
    global1 = array<vec3<u32>, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(global2[_wgslsmith_index_u32(1u, 24u)], ~var_0.a.yx, vec3<f32>(-539f, 281f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-367f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -132f)) + 807f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1000f - -704f)))), vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(313f, _wgslsmith_f_op_f32(min(-713f, 1445f)))), -242f, true)), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1433f, 676f)))));
}

