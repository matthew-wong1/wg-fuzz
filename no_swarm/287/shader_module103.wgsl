struct Struct_1 {
    a: u32,
    b: bool,
    c: vec2<bool>,
    d: u32,
}

struct Struct_2 {
    a: bool,
    b: bool,
}

struct Struct_3 {
    a: bool,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 10>;

var<private> global1: f32 = 178f;

var<private> global2: Struct_2 = Struct_2(false, true);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2(arg_0: Struct_3, arg_1: bool, arg_2: Struct_1) -> vec2<f32> {
    var var_0 = Struct_1(abs(arg_2.a), arg_0.a, select(!arg_2.c, arg_2.c, select(arg_2.c, vec2<bool>(true, true), !all(vec4<bool>(false, false, arg_1, arg_2.c.x)))), u_input.c.x);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.x));
    global2 = Struct_2(all(!(!select(vec4<bool>(var_0.c.x, true, arg_1, global2.a), vec4<bool>(global2.b, false, false, arg_0.a), arg_0.a))), select(reverseBits(8893i) >= _wgslsmith_clamp_i32(-21704i, -66839i | u_input.b, u_input.a.x), true, any(!vec2<bool>(arg_1, true))));
    var var_2 = !(!vec4<bool>(false, true, !all(vec4<bool>(var_0.b, true, false, true)), any(!vec2<bool>(true, arg_0.a))));
    var var_3 = var_2.yww;
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1319f + arg_0.b.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(arg_0.b.x)), _wgslsmith_f_op_f32(1333f * -253f)))));
}

fn func_3(arg_0: vec2<u32>, arg_1: u32, arg_2: vec2<f32>) -> vec2<f32> {
    global1 = arg_2.x;
    let var_0 = !select(!(!(!vec3<bool>(global2.a, global2.b, true))), !select(select(vec3<bool>(global2.a, false, false), vec3<bool>(true, true, global2.a), vec3<bool>(global2.a, global2.b, global2.b)), vec3<bool>(false, false, global2.b), global2.b & true), select(vec3<bool>(true, true, any(vec3<bool>(false, global2.b, global2.a))), !(!vec3<bool>(global2.a, false, global2.a)), vec3<bool>(global2.b, all(vec4<bool>(global2.b, false, global2.b, global2.a)), global2.b)));
    global1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_2.x + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.x, 659f)))));
    let var_1 = 353f;
    var var_2 = Struct_3(!(u_input.b <= min(-1i, 0i)), arg_2);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_2.b.x, 1f), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, 1099f) - vec2<f32>(-886f, 493f))), vec2<f32>(-475f, _wgslsmith_f_op_f32(-var_2.b.x)))));
}

fn func_1(arg_0: vec3<i32>) -> i32 {
    var var_0 = Struct_3(global2.b, _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-1632f, _wgslsmith_f_op_f32(min(-576f, 1056f))), -455f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(Struct_3(true, vec2<f32>(-567f, 1114f)), global2.a, Struct_1(global0[_wgslsmith_index_u32(1u, 10u)], global2.a, vec2<bool>(global2.b, true), 84243u)))) + _wgslsmith_f_op_vec2_f32(func_3(vec2<u32>(9411u, 39750u), global0[_wgslsmith_index_u32(u_input.c.x, 10u)], _wgslsmith_f_op_vec2_f32(-vec2<f32>(148f, -1010f)))))));
    var var_1 = global2.a;
    let var_2 = 0u;
    let var_3 = Struct_2(global2.b, false);
    var_0 = Struct_3(true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_0.b.x), 372f) - var_0.b)));
    return abs(reverseBits(arg_0.x));
}

fn func_4(arg_0: f32, arg_1: i32) -> Struct_2 {
    var var_0 = Struct_3(global2.a, vec2<f32>(_wgslsmith_f_op_f32(ceil(385f)), _wgslsmith_div_f32(-1131f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0)) * -419f))));
    global1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_vec2_f32(func_3(vec2<u32>(firstTrailingBit(u_input.c.x), abs(0u) << (_wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(1u, 10u)], 12114u, global0[_wgslsmith_index_u32(u_input.c.x, 10u)]), vec3<u32>(1u, global0[_wgslsmith_index_u32(0u, 10u)], u_input.d.x)) % 32u)), _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(firstTrailingBit(1u) << ((u_input.c.x ^ global0[_wgslsmith_index_u32(23278u, 10u)]) % 32u), 10u)], global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, u_input.c.x), 10u)]), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_0.b.x, arg_0), _wgslsmith_f_op_vec2_f32(min(var_0.b, vec2<f32>(var_0.b.x, arg_0))))))).x));
    var var_1 = global0[_wgslsmith_index_u32(u_input.c.x, 10u)];
    var var_2 = Struct_2(select(!var_0.a, !(any(vec4<bool>(var_0.a, true, global2.a, true)) && false), any(select(vec4<bool>(var_0.a, var_0.a, false, false), vec4<bool>(global2.a, global2.a, global2.b, global2.a), var_0.a)) & global2.b), global2.b);
    var var_3 = !vec4<bool>(global2.b, var_0.a, !(~1u >= _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, 4542u), u_input.c.wx)), global2.b);
    return Struct_2(var_0.a, !(!(!all(vec4<bool>(true, true, var_2.a, global2.b)))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_4(_wgslsmith_div_f32(1210f, _wgslsmith_f_op_f32(f32(-1f) * -852f)), func_1(abs(~select(vec3<i32>(0i, -38009i, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, 0i), global2.b))));
    let var_0 = _wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.d.zy, u_input.c.zw), vec2<u32>(u_input.c.x, global0[_wgslsmith_index_u32(u_input.d.x, 10u)])), ~select(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(50603u, 10u)], 10u)], global2.b)), ~vec2<u32>(u_input.d.x, 1u)), _wgslsmith_div_u32(max(~1u, ~_wgslsmith_add_u32(0u, 4294967295u)), ~(~(~u_input.d.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(806f, 1000f) - vec2<f32>(-2197f, 1807f)))))))).x;
    let var_1 = u_input.c.x;
    var var_2 = _wgslsmith_dot_vec4_u32(~max(min(u_input.c, vec4<u32>(var_1, global0[_wgslsmith_index_u32(1u, 10u)], var_1, 0u)), min(reverseBits(u_input.c), vec4<u32>(64919u, 74443u, u_input.c.x, 8153u))), _wgslsmith_div_vec4_u32(u_input.c, reverseBits(countOneBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_1, var_1, var_1, 4294967295u), vec4<u32>(40327u, 4294967295u, global0[_wgslsmith_index_u32(26758u, 10u)], 45439u), u_input.c)))));
    let var_3 = vec3<i32>(-1i) * -firstTrailingBit(select(vec3<i32>(u_input.b, u_input.b, u_input.a.x), vec3<i32>(748i, u_input.a.x, u_input.a.x) | vec3<i32>(-10193i, 1i, u_input.b), var_0 > var_0));
    var var_4 = -vec3<i32>(2147483647i << (_wgslsmith_mult_u32(u_input.d.x, 57639u) % 32u), -var_3.x, ~(-51062i)) & -((~vec3<i32>(5035i, u_input.a.x, u_input.b) & select(var_3, vec3<i32>(0i, var_3.x, u_input.a.x), global2.b)) << (countOneBits(u_input.c.xzy ^ u_input.d) % vec3<u32>(32u)));
    var_2 = ~0u;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(u_input.a), ~var_3);
}

