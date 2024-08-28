struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 30> = array<u32, 30>(1u, 4294967295u, 4294967295u, 38126u, 4294967295u, 1u, 91856u, 24746u, 11888u, 68505u, 16675u, 11206u, 4155u, 1u, 0u, 1u, 1u, 15558u, 1u, 37725u, 60524u, 4258u, 72257u, 1u, 28670u, 30165u, 22398u, 1u, 0u, 0u);

var<private> global1: array<Struct_1, 26>;

var<private> global2: array<Struct_1, 16>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: f32, arg_3: bool) -> f32 {
    let var_0 = false;
    var var_1 = (!var_0 & arg_0) || true;
    let var_2 = Struct_1(u_input.d.x, select(!vec2<bool>(arg_3, select(true, true, var_0)), !select(select(vec2<bool>(true, var_0), vec2<bool>(false, arg_3), vec2<bool>(false, true)), vec2<bool>(true, false), false), u_input.c.x <= 1i), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_clamp_u32(~global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(22726u, 30u)], 30u)], select(u_input.d.x, 4294967295u, true), firstLeadingBit(u_input.d.x) ^ 1u), ~global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.d.yzz, select(u_input.d.xzy, vec3<u32>(41704u, global0[_wgslsmith_index_u32(u_input.d.x, 30u)], global0[_wgslsmith_index_u32(u_input.d.x, 30u)]), vec3<bool>(var_0, arg_3, false))), 30u)]), 30u)]);
    global2 = array<Struct_1, 16>();
    global2 = array<Struct_1, 16>();
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1079f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -524f) * arg_2)));
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 + arg_0) * _wgslsmith_f_op_f32(f32(-1f) * -927f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(true, u_input.a.x, 2327f, arg_1.b.x)), _wgslsmith_f_op_f32(select(1926f, 512f, true)))), _wgslsmith_f_op_f32(select(1638f, _wgslsmith_div_f32(-885f, 1234f), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, 331f, 109f) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_0, arg_0, arg_0), vec3<f32>(-593f, -340f, arg_0))))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(arg_0)), arg_0, var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.x)))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1300f, 896f, var_0.x, var_0.x)) + vec4<f32>(arg_0, -282f, var_0.x, -1935f)), vec4<f32>(_wgslsmith_f_op_f32(abs(1000f)), var_0.x, -187f, 796f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, arg_0, arg_0)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 2102f, 713f, arg_0)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, var_0.x, 190f, arg_0))))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1718f), _wgslsmith_f_op_f32(-957f + 1000f), var_0.x, _wgslsmith_div_f32(var_0.x, 939f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-692f, 1000f, 1532f, var_0.x))))));
    let var_2 = arg_1;
    var var_3 = Struct_1(_wgslsmith_add_u32((~0u | _wgslsmith_mult_u32(u_input.d.x, 4294967295u)) ^ 74794u, countOneBits(_wgslsmith_clamp_u32(var_2.c & 496u, var_2.c, global0[_wgslsmith_index_u32(max(global0[_wgslsmith_index_u32(arg_1.a, 30u)], 4294967295u), 30u)]))), vec2<bool>(all(vec3<bool>(true, true, true)), select(false, abs(global0[_wgslsmith_index_u32(arg_1.a, 30u)]) >= countOneBits(arg_2.c), all(vec4<bool>(var_2.b.x, var_2.b.x, false, arg_1.b.x)))), 1u);
    return var_3.b.x;
}

fn func_1(arg_0: vec2<bool>) -> vec2<bool> {
    return select(select(select(arg_0, select(select(vec2<bool>(arg_0.x, true), arg_0, vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, arg_0.x), arg_0.x), true), true | (27056i <= u_input.a.x)), arg_0, vec2<bool>(true, true)), !select(select(arg_0, arg_0, func_2(865f, Struct_1(50771u, vec2<bool>(true, arg_0.x), global0[_wgslsmith_index_u32(u_input.d.x, 30u)]), Struct_1(global0[_wgslsmith_index_u32(93837u, 30u)], arg_0, u_input.d.x))), vec2<bool>(0i <= u_input.b.x, arg_0.x), arg_0.x), -1866f > _wgslsmith_f_op_f32(func_3(true, u_input.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(arg_0.x, -8120i, -446f, arg_0.x)) - _wgslsmith_f_op_f32(sign(1561f))), arg_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 26>();
    var var_0 = Struct_1(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(~(~u_input.d.x), 30u)] << (~(~30694u) % 32u), 45617u), select(vec2<bool>(true & (1i <= u_input.b.x), any(vec4<bool>(false, true, true, false))), select(vec2<bool>(true, select(true, true, false)), func_1(vec2<bool>(true, true)), false), (1u << (_wgslsmith_dot_vec2_u32(vec2<u32>(33071u, 37559u), vec2<u32>(u_input.d.x, u_input.d.x)) % 32u)) <= abs(u_input.d.x)), _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(~u_input.d.xxx, min(vec3<u32>(4294967295u, 44147u, u_input.d.x), u_input.d.xxz)), ~_wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 30u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.d.x, 30u)], 30u)]), u_input.d.zw)));
    let var_1 = global2[_wgslsmith_index_u32(firstLeadingBit(reverseBits(abs(8937u))), 16u)];
    global0 = array<u32, 30>();
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-180f + 495f)), _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(681f, -3547f))))));
    global1 = array<Struct_1, 26>();
    var var_3 = true;
    var var_4 = global1[_wgslsmith_index_u32(4294967295u, 26u)];
    let var_5 = Struct_1(~(~(4294967295u & _wgslsmith_div_u32(var_0.c, var_1.c))), vec2<bool>(any(vec4<bool>(true, any(var_1.b), var_4.b.x, var_4.c != 4294967295u)), var_0.b.x), ~_wgslsmith_add_u32(_wgslsmith_mult_u32(var_4.c, var_4.c ^ global0[_wgslsmith_index_u32(var_0.a, 30u)]), min(~var_4.c, ~0u)));
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<i32>(u_input.b.x, _wgslsmith_add_i32(~u_input.a.x, firstLeadingBit(2147483647i)), u_input.a.x));
}

