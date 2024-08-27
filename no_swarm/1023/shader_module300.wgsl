struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: vec2<u32>,
    d: f32,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec3<f32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 24>;

var<private> global1: array<Struct_2, 27>;

var<private> global2: array<vec4<i32>, 24>;

var<private> global3: array<Struct_2, 26>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: i32) -> bool {
    var var_0 = _wgslsmith_f_op_f32(max(-1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1108f))))), -547f)));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-527f, _wgslsmith_f_op_f32(f32(-1f) * -1622f))), _wgslsmith_f_op_f32(629f + _wgslsmith_f_op_f32(ceil(504f))))));
    global3 = array<Struct_2, 26>();
    let var_1 = global3[_wgslsmith_index_u32(u_input.a.x, 26u)];
    var var_2 = global3[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_sub_u32(_wgslsmith_sub_u32(abs(_wgslsmith_div_u32(var_1.a.b, var_1.a.c.x)), ~var_1.a.b >> (_wgslsmith_dot_vec2_u32(u_input.a.yz, vec2<u32>(0u, u_input.a.x)) % 32u)), 25578u), var_1.a.a.x), 26u)];
    return true;
}

fn func_2(arg_0: Struct_2) -> vec3<bool> {
    global0 = array<vec4<f32>, 24>();
    return !(!(!vec3<bool>(func_3(45079i), any(vec4<bool>(false, true, false, true)), any(vec3<bool>(true, true, true)))));
}

fn func_1(arg_0: vec2<f32>) -> u32 {
    let var_0 = !select(func_2(Struct_2(Struct_1(u_input.a, u_input.a.x, u_input.a.wy, 1621f, vec3<i32>(2147483647i, -2147483647i, 0i)))), select(func_2(global3[_wgslsmith_index_u32(~u_input.a.x, 26u)]), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, !all(vec2<bool>(false, true)), false));
    global0 = array<vec4<f32>, 24>();
    var var_1 = _wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(~(vec4<i32>(-28916i, -3239i, 52193i, 18728i) >> (~u_input.a % vec4<u32>(32u))), vec4<i32>(1i, -2147483647i, -39926i, reverseBits(_wgslsmith_sub_i32(-22053i, 1i))), global2[_wgslsmith_index_u32(~_wgslsmith_add_u32(8610u, ~4294967295u), 24u)]), ~abs(-vec4<i32>(-58736i, -2147483647i, 0i, -2147483647i)), global2[_wgslsmith_index_u32(~(~_wgslsmith_mult_u32(~0u, ~u_input.a.x)), 24u)]);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -882f))));
    var_1 = vec4<i32>(select(var_1.x, var_1.x, all(vec2<bool>(var_0.x, false))), var_1.x, -20571i, ~1i);
    return 1u;
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: bool, arg_3: vec2<bool>) -> StorageBuffer {
    global1 = array<Struct_2, 27>();
    global1 = array<Struct_2, 27>();
    var var_0 = vec3<f32>(arg_1.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(arg_1.d, arg_1.d), arg_1.d))))), _wgslsmith_f_op_f32(step(arg_1.d, arg_1.d)));
    var var_1 = select(!vec3<bool>(true, false, arg_3.x), !(!vec3<bool>(arg_2, arg_3.x, !arg_3.x)), true);
    var var_2 = ~(~vec3<u32>(_wgslsmith_mult_u32(abs(arg_0), ~arg_0), ~(~16397u), arg_0));
    return StorageBuffer(vec4<f32>(-1574f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.d) + _wgslsmith_f_op_f32(-arg_1.d)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-213f)))), _wgslsmith_f_op_f32(f32(-1f) * -1335f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(253f, _wgslsmith_f_op_f32(trunc(1152f)))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(arg_1.d, _wgslsmith_f_op_f32(select(var_0.x, 1000f, var_1.x))))), var_0.x, any(arg_3))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(452f * 1000f) * _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1333f, arg_1.d)) - _wgslsmith_f_op_f32(f32(-1f) * -576f)), var_0.x) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.x, var_0.x, 570f))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_1.d, var_0.x, 1109f))))))), vec2<i32>(-1i) * -arg_1.e.yy);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_2, 26>();
    global3 = array<Struct_2, 26>();
    global3 = array<Struct_2, 26>();
    global1 = array<Struct_2, 27>();
    global3 = array<Struct_2, 26>();
    let x = u_input.a;
    s_output = func_4(u_input.a.x, Struct_1(vec4<u32>(u_input.a.x, _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 27372u), vec2<u32>(u_input.a.x, 1u)), 69209u), 1u, select(func_1(vec2<f32>(903f, -996f)), 1u, all(vec2<bool>(false, false)))), u_input.a.x, min(u_input.a.wy, u_input.a.yw), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(451f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(1655f, -2815f))))), vec3<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(global2[_wgslsmith_index_u32(1u, 24u)], vec4<i32>(2557i, -21322i, 7278i, 1i)), 1i), abs(49823i), countOneBits(1i))), _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(u_input.a.zz ^ u_input.a.xz, firstTrailingBit(vec2<u32>(u_input.a.x, 29520u))), reverseBits(_wgslsmith_sub_vec2_u32(u_input.a.yz, u_input.a.xx))) < _wgslsmith_add_u32(~0u, (u_input.a.x & 0u) ^ u_input.a.x), vec2<bool>(select(false, all(vec3<bool>(true, true, true)), true), all(vec4<bool>(true, true, true, true))));
}

