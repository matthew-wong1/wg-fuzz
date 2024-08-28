struct Struct_1 {
    a: u32,
    b: i32,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 25>;

var<private> global1: vec2<i32> = vec2<i32>(-89251i, -1i);

var<private> global2: bool = false;

var<private> global3: array<f32, 29>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> u32 {
    global0 = array<Struct_1, 25>();
    let var_0 = global0[_wgslsmith_index_u32(2132u, 25u)];
    global2 = all(!(!select(vec4<bool>(true, true, true, false), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), true), any(vec4<bool>(false, false, true, false)))));
    var var_1 = Struct_1(~(~arg_0.a), ((40745i & (u_input.c.x >> (5873u % 32u))) ^ firstLeadingBit(_wgslsmith_dot_vec2_i32(u_input.c, vec2<i32>(u_input.c.x, 2147483647i)))) ^ -1i, -min(firstTrailingBit(max(var_0.c, global1.x)), -_wgslsmith_add_i32(global1.x, 11191i)));
    global2 = !(_wgslsmith_f_op_f32(f32(-1f) * -2560f) >= _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, arg_1, arg_1), reverseBits(vec3<u32>(arg_1, 7071u, 0u))), 29u)]));
    return 0u;
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_add_u32(92759u, ~(~(arg_0.a << (u_input.e % 32u)))), ~(-63709i >> (~_wgslsmith_sub_u32(u_input.d, arg_0.a) % 32u)), arg_0.b);
    global2 = false;
    global2 = select(!((_wgslsmith_f_op_f32(floor(global3[_wgslsmith_index_u32(arg_0.a, 29u)])) != _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(7371u, 29u)])) | true), true, any(vec2<bool>(true, true)));
    var var_1 = ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, func_3(Struct_1(4294967295u, u_input.b.x, arg_0.c), 1u), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.a, 58391u), vec2<u32>(var_0.a, 1u)), ~4294967295u) | select(min(vec4<u32>(arg_0.a, 1u, var_0.a, 10381u), vec4<u32>(0u, 1u, 1u, u_input.e)), firstTrailingBit(vec4<u32>(0u, u_input.d, 1u, 1u)), vec4<bool>(true, true, true, true)), vec4<u32>(var_0.a, abs(~var_0.a), arg_0.a, ~_wgslsmith_mod_u32(28561u, 1u)));
    var var_2 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global3[_wgslsmith_index_u32(u_input.d, 29u)], global3[_wgslsmith_index_u32(arg_0.a, 29u)])))))), vec2<f32>(_wgslsmith_f_op_f32(-156f - global3[_wgslsmith_index_u32(u_input.e >> (58641u % 32u), 29u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1046f) - _wgslsmith_div_f32(global3[_wgslsmith_index_u32(var_0.a, 29u)], -3821f)))))));
    return arg_0;
}

fn func_1(arg_0: vec3<u32>) -> vec4<bool> {
    let var_0 = func_2(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(firstLeadingBit(arg_0.x), 1u), 25u)]);
    let var_1 = max(_wgslsmith_mod_i32(max(i32(-1i) * -25964i, u_input.c.x), ~global1.x), max(min(countOneBits(u_input.b.x), -1i), firstLeadingBit(-1i))) & u_input.a;
    global1 = min(-u_input.c, vec2<i32>(~_wgslsmith_dot_vec3_i32(vec3<i32>(21480i, 1i, u_input.a), vec3<i32>(u_input.c.x, 11757i, global1.x)), u_input.c.x << ((arg_0.x ^ u_input.e) % 32u))) & u_input.b;
    let var_2 = global0[_wgslsmith_index_u32(~(~(~0u) & ((u_input.e ^ 1u) >> (arg_0.x % 32u))) & ~(~(~(arg_0.x | 4294967295u))), 25u)];
    let var_3 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~35348u, ~(~var_0.a) ^ ~(~_wgslsmith_div_u32(var_0.a, var_2.a))), 25u)];
    return vec4<bool>(!any(!select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false))), true, true, all(vec2<bool>(807f <= _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(arg_0.x, 29u)]), !all(vec4<bool>(false, false, false, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = true;
    var var_0 = !select(!func_1(vec3<u32>(0u, 0u, 7080u) << (vec3<u32>(1016u, 37598u, u_input.d) % vec3<u32>(32u))), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(select(false, true, false), true, true, true), vec4<bool>(true, true, true, global1.x >= -748i)));
    let x = u_input.a;
    s_output = StorageBuffer(~(~u_input.d), 1837f);
}

