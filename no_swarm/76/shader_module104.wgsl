struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 7>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: i32, arg_1: u32) -> u32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-445f * -305f), _wgslsmith_f_op_f32(floor(-1123f)))), (i32(-1i) * -u_input.b) ^ _wgslsmith_sub_i32(max(arg_0 >> (31430u % 32u), reverseBits(0i)), 29130i), abs(~select(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c, 4294967295u, u_input.c, 0u), vec4<u32>(1u, 27691u, 92331u, 1u)), ~vec4<u32>(4294967295u, 0u, 6035u, u_input.c), true)));
    var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-var_0.a))), arg_0, ~countOneBits(vec4<u32>(var_0.c.x, 45178u, ~u_input.c, 59543u)));
    var var_1 = u_input.c;
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-403f, 548f, var_0.a.x) * _wgslsmith_f_op_vec3_f32(-var_0.a))) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(max(var_0.a.x, var_0.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -1887f), _wgslsmith_f_op_f32(-var_0.a.x)), var_0.a))), var_0.b, ~var_0.c);
    var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-488f, 446f, -946f)), -55869i, ~(~(~(~vec4<u32>(var_2.c.x, 14899u, 0u, 34913u)))));
    return ~(~_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, arg_1, u_input.c) << (vec3<u32>(u_input.c, u_input.c, 4294967295u) % vec3<u32>(32u)), ~var_2.c.zwz & var_0.c.yzz));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> vec2<bool> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.x, -697f, arg_0.a.x)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, arg_1.a.x, -1516f))))) - _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_0.a.x + arg_0.a.x), -250f, arg_1.a.x), vec3<f32>(-463f, arg_0.a.x, arg_0.a.x))), 172i, vec4<u32>(4294967295u, countOneBits(~_wgslsmith_clamp_u32(2309u, 4294967295u, 4171u)), countOneBits(34854u), max(_wgslsmith_div_u32(arg_0.c.x, 16378u) << (arg_0.c.x % 32u), _wgslsmith_clamp_u32(func_3(u_input.a, 26996u), arg_0.c.x, 4294967295u))));
    let var_1 = arg_1;
    var var_2 = 1i;
    var_2 = select(-1i, 1i, global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(var_1.c.x, ~arg_1.c.x, ~_wgslsmith_dot_vec2_u32(abs(vec2<u32>(83334u, u_input.c)), countOneBits(var_1.c.ww))), 7u)]);
    var var_3 = 1228f;
    return select(select(vec2<bool>(true, true), select(select(select(vec2<bool>(true, global0[_wgslsmith_index_u32(arg_1.c.x, 7u)]), vec2<bool>(global0[_wgslsmith_index_u32(arg_1.c.x, 7u)], global0[_wgslsmith_index_u32(4294967295u, 7u)]), vec2<bool>(arg_2, true)), !vec2<bool>(global0[_wgslsmith_index_u32(17688u, 7u)], arg_2), 23448u == u_input.c), vec2<bool>(arg_2, all(vec4<bool>(arg_2, false, global0[_wgslsmith_index_u32(3492u, 7u)], false))), select(select(vec2<bool>(false, true), vec2<bool>(arg_2, false), arg_2), vec2<bool>(true, false), true)), vec2<bool>(false, true)), !select(!select(vec2<bool>(arg_2, global0[_wgslsmith_index_u32(var_0.c.x, 7u)]), vec2<bool>(false, arg_2), arg_2), !vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.c, 7u)]), vec2<bool>(true && arg_2, true)), arg_2);
}

fn func_1(arg_0: Struct_1, arg_1: u32) -> vec2<f32> {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.a.x, _wgslsmith_div_f32(253f, _wgslsmith_f_op_f32(-arg_0.a.x)))), _wgslsmith_f_op_f32(step(arg_0.a.x, _wgslsmith_f_op_f32(exp2(arg_0.a.x)))));
    let var_1 = select(vec2<bool>(select(any(select(vec2<bool>(global0[_wgslsmith_index_u32(829u, 7u)], false), vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 7u)], true), vec2<bool>(global0[_wgslsmith_index_u32(arg_0.c.x, 7u)], global0[_wgslsmith_index_u32(10627u, 7u)]))), false & global0[_wgslsmith_index_u32(~arg_0.c.x, 7u)], any(!vec3<bool>(false, global0[_wgslsmith_index_u32(118564u, 7u)], true))), !(_wgslsmith_f_op_f32(var_0.x * arg_0.a.x) <= _wgslsmith_div_f32(var_0.x, 691f))), !select(select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.c, 7u)], global0[_wgslsmith_index_u32(arg_0.c.x, 7u)]), func_2(arg_0, Struct_1(arg_0.a, 2147483647i, vec4<u32>(arg_1, 4294967295u, arg_1, arg_0.c.x)), global0[_wgslsmith_index_u32(4294967295u, 7u)]), !vec2<bool>(global0[_wgslsmith_index_u32(13526u, 7u)], true)), vec2<bool>(true, global0[_wgslsmith_index_u32(~arg_1, 7u)]), select(select(vec2<bool>(true, global0[_wgslsmith_index_u32(1u, 7u)]), vec2<bool>(global0[_wgslsmith_index_u32(33364u, 7u)], global0[_wgslsmith_index_u32(45825u, 7u)]), global0[_wgslsmith_index_u32(1u, 7u)]), vec2<bool>(true, true), !global0[_wgslsmith_index_u32(arg_1, 7u)])), vec2<bool>(true, true));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a.x, -936f) * var_0))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.x, var_0.x))), var_0.x), false)));
}

fn func_4(arg_0: u32, arg_1: f32, arg_2: vec2<f32>) -> vec2<bool> {
    let var_0 = _wgslsmith_add_i32(reverseBits(u_input.a), ~u_input.b) == -1i;
    var var_1 = any(vec2<bool>(var_0, any(vec2<bool>(true, true))));
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.x, -258f, arg_1) - vec3<f32>(arg_2.x, arg_1, 138f))) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, arg_1, arg_1) - vec3<f32>(arg_2.x, 478f, arg_1))))) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(ceil(-191f)), arg_2.x, arg_1), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, arg_1, 458f) + vec3<f32>(arg_2.x, -191f, 293f)) + _wgslsmith_div_vec3_f32(vec3<f32>(202f, 1506f, arg_2.x), vec3<f32>(-693f, -1049f, arg_1)))))), ~u_input.b, vec4<u32>(0u, 1u & max(arg_0 >> (1u % 32u), 4294967295u & u_input.c), countOneBits(0u), ~0u));
    let var_3 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_1, arg_1), _wgslsmith_f_op_vec2_f32(-arg_2))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(217f, arg_2.x))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(var_2.a.xz + vec2<f32>(-865f, 2170f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_2)))))));
    let var_4 = true;
    return !vec2<bool>(var_4, all(!vec3<bool>(var_0, false, var_4)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~select(_wgslsmith_clamp_vec3_u32(min(abs(vec3<u32>(u_input.c, 0u, 59182u)), vec3<u32>(4294967295u, u_input.c, u_input.c)), firstLeadingBit(vec3<u32>(u_input.c, u_input.c, u_input.c)), vec3<u32>(u_input.c, 1u, 1u) << (_wgslsmith_add_vec3_u32(vec3<u32>(u_input.c, 10233u, 61918u), vec3<u32>(u_input.c, 4294967295u, u_input.c)) % vec3<u32>(32u))), ~reverseBits(vec3<u32>(u_input.c, u_input.c, 1u)), select(vec3<bool>(all(vec2<bool>(global0[_wgslsmith_index_u32(u_input.c, 7u)], global0[_wgslsmith_index_u32(26964u, 7u)])), true, global0[_wgslsmith_index_u32(75311u, 7u)] && global0[_wgslsmith_index_u32(u_input.c, 7u)]), vec3<bool>(true, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.c, u_input.c), 7u)], global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(4294967295u, 4294967295u, 4294967295u), 7u)]), !global0[_wgslsmith_index_u32(6667u, 7u)]));
    let var_1 = vec4<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 7u)], select(false != !global0[_wgslsmith_index_u32(81013u, 7u)], any(!(!vec3<bool>(true, false, global0[_wgslsmith_index_u32(0u, 7u)]))), all(func_4(96046u, _wgslsmith_f_op_f32(round(-378f)), _wgslsmith_f_op_vec2_f32(func_1(Struct_1(vec3<f32>(-598f, 926f, -1000f), u_input.b, vec4<u32>(var_0.x, 15463u, var_0.x, 20216u)), u_input.c))))), global0[_wgslsmith_index_u32(~(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 43099u, 0u, u_input.c), vec4<u32>(var_0.x, var_0.x, 4294967295u, u_input.c)))), 7u)]);
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(374f, -535f) + vec2<f32>(-1000f, 434f)))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-281f, 1213f), vec2<f32>(876f, -158f)) + _wgslsmith_div_vec2_f32(vec2<f32>(-617f, 1290f), vec2<f32>(-603f, 179f)))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-269f, 423f)))))));
    var var_3 = firstTrailingBit(_wgslsmith_div_u32(57791u, abs(u_input.c)));
    var var_4 = 2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.xx);
}

