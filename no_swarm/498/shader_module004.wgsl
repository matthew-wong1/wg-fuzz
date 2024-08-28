struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: f32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: f32 = -405f;

var<private> global2: array<bool, 20> = array<bool, 20>(false, true, false, true, false, false, false, false, false, true, true, true, true, false, true, true, false, true, true, true);

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_2) -> i32 {
    global0 = 5200i;
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_1.c, -329f)));
    let var_0 = select(select(select(vec4<bool>(true, all(vec3<bool>(global2[_wgslsmith_index_u32(15212u, 20u)], false, false)), arg_1.b > arg_1.d.b.x, arg_1.a), !select(vec4<bool>(true, arg_1.a, false, global2[_wgslsmith_index_u32(u_input.b, 20u)]), vec4<bool>(arg_1.a, false, true, global2[_wgslsmith_index_u32(1929u, 20u)]), false), all(!vec2<bool>(false, arg_1.a))), !(!vec4<bool>(true, arg_1.a, true, arg_1.a)), vec4<bool>(!any(vec4<bool>(arg_1.a, global2[_wgslsmith_index_u32(39494u, 20u)], true, false)), all(!vec4<bool>(false, arg_1.a, true, false)), arg_1.a || (arg_1.a & true), true)), vec4<bool>(false, false, all(!vec3<bool>(global2[_wgslsmith_index_u32(0u, 20u)], false, false)), false), vec4<bool>(global2[_wgslsmith_index_u32(u_input.c.x ^ ~u_input.c.x, 20u)], false, ((u_input.c.x | 4294967295u) <= 60126u) | true, !all(vec2<bool>(true, false)) != global2[_wgslsmith_index_u32(~_wgslsmith_div_u32(91671u, 36071u), 20u)]));
    var var_1 = !var_0.x;
    var var_2 = Struct_2(false, _wgslsmith_div_f32(-1081f, _wgslsmith_div_f32(arg_1.b, arg_1.d.b.x)), 1445f, arg_1.d);
    return -firstLeadingBit(~arg_0.x & u_input.a.x);
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: f32) -> f32 {
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-233f - arg_1.d.x) - -1000f)))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.b - arg_3) - _wgslsmith_f_op_f32(floor(1000f))))));
    global2 = array<bool, 20>();
    let var_0 = max(u_input.b | (min(u_input.b, _wgslsmith_clamp_u32(1u, u_input.c.x, 12907u)) ^ 4294967295u), ~39631u);
    global1 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    var var_1 = Struct_2(any(!vec4<bool>(any(vec3<bool>(global2[_wgslsmith_index_u32(u_input.b, 20u)], arg_2.a, true)), global2[_wgslsmith_index_u32(min(20937u, u_input.c.x), 20u)], true, !arg_2.a)), _wgslsmith_f_op_f32(ceil(arg_2.c)), arg_2.b, arg_2.d);
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(min(var_1.d.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_3))))))));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = Struct_2(!(!global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(14978u, u_input.c.x, 4294967295u) << (vec3<u32>(13138u, 1u, u_input.b) % vec3<u32>(32u)), vec3<u32>(u_input.b, u_input.c.x, u_input.c.x)), 20u)]), _wgslsmith_f_op_f32(-arg_0.d.x), _wgslsmith_f_op_f32(func_4(vec4<i32>(-u_input.a.x ^ min(-1i, -19321i), _wgslsmith_sub_i32(arg_0.a >> (1u % 32u), -1580i >> (0u % 32u)), _wgslsmith_dot_vec4_i32(u_input.a << (u_input.c % vec4<u32>(32u)), select(u_input.a, vec4<i32>(arg_0.a, 10584i, arg_0.a, -2147483647i), vec4<bool>(true, global2[_wgslsmith_index_u32(0u, 20u)], false, global2[_wgslsmith_index_u32(u_input.b, 20u)]))), -firstTrailingBit(38011i)), arg_0, Struct_2(true, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -707f))), arg_0.d.x, Struct_1(func_3(vec3<i32>(arg_0.a, u_input.d.x, u_input.d.x), Struct_2(true, 1796f, arg_0.d.x, Struct_1(-5406i, arg_0.b, arg_0.b.x, vec2<f32>(arg_0.d.x, arg_0.b.x)))), _wgslsmith_f_op_vec4_f32(-arg_0.b), -235f, _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_0.d.x, arg_0.b.x))))), _wgslsmith_f_op_f32(arg_0.b.x + _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(arg_0.c)), _wgslsmith_div_f32(1224f, arg_0.b.x))))), arg_0);
    let var_1 = firstLeadingBit(abs(arg_0.a));
    global1 = var_0.b;
    return Struct_1(arg_0.a, _wgslsmith_f_op_vec4_f32(var_0.d.b + var_0.d.b), -2613f, arg_0.d);
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: f32) -> Struct_2 {
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-492f * -626f), arg_2)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.d.x) + arg_2))));
    global1 = -1566f;
    var var_0 = func_2(Struct_1(43560i, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_0.b.x + -486f), arg_0.c, _wgslsmith_f_op_f32(abs(arg_0.b.x)), arg_0.c)), 1213f, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(174f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_0.b.x, -1349f)) - _wgslsmith_f_op_f32(f32(-1f) * -696f)))));
    let var_1 = Struct_2(false, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 * -475f)), arg_2), _wgslsmith_f_op_f32(min(arg_0.d.x, var_0.d.x)), arg_0);
    let var_2 = vec4<bool>(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~min(u_input.c.yx, ~u_input.c.wx), _wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(u_input.c, u_input.c), 47743u), countOneBits(u_input.c.zy), ~(~u_input.c.zy))), 20u)], var_1.a, global2[_wgslsmith_index_u32(u_input.b, 20u)], all(!select(vec3<bool>(var_1.a, var_1.a, var_1.a), vec3<bool>(var_1.a, false, true), any(vec3<bool>(true, global2[_wgslsmith_index_u32(1u, 20u)], var_1.a)))));
    return Struct_2(false, _wgslsmith_f_op_f32(exp2(var_0.d.x)), -776f, Struct_1(~arg_0.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, -517f, var_1.c, 1370f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(vec4<i32>(u_input.d.x, -4974i, 1i, var_0.a), func_2(var_1.d), var_1, _wgslsmith_f_op_f32(f32(-1f) * -664f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.b.xy + vec2<f32>(var_1.d.b.x, var_1.b)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(242f, arg_0.b.x))) + var_1.d.b.xw)));
}

fn func_5(arg_0: Struct_2, arg_1: u32) -> bool {
    let var_0 = func_1(func_2(arg_0.d), arg_1 ^ abs(47314u), -125f);
    var var_1 = Struct_2(any(!vec4<bool>(arg_0.a, true, arg_0.a, global2[_wgslsmith_index_u32(3665u, 20u)])) && false, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(637f + var_0.b)), _wgslsmith_f_op_f32(sign(-988f)))), arg_0.c, Struct_1(-func_1(var_0.d, 0u, arg_0.d.b.x).d.a >> (_wgslsmith_dot_vec3_u32(~vec3<u32>(arg_1, 1608u, 1u), vec3<u32>(55557u, arg_1, 4294967295u)) % 32u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.d.b - vec4<f32>(1000f, arg_0.c, -519f, var_0.c)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b, 138f, 942f, var_0.c)))), 299f, _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(func_2(Struct_1(var_0.d.a, vec4<f32>(arg_0.c, arg_0.d.c, 1758f, 1251f), arg_0.b, var_0.d.d)).c, _wgslsmith_f_op_f32(select(-599f, 212f, false)))))));
    let var_2 = arg_0.d.a;
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b;
    global2 = array<bool, 20>();
    global0 = 1i;
    global2 = array<bool, 20>();
    global1 = 720f;
    var var_1 = select(vec2<bool>(true, !func_5(func_1(Struct_1(62388i, vec4<f32>(-2048f, -1000f, -165f, -2275f), 364f, vec2<f32>(1576f, 593f)), 4294967295u, 608f), ~u_input.b)), vec2<bool>(false, all(select(vec2<bool>(true, true), select(vec2<bool>(global2[_wgslsmith_index_u32(1u, 20u)], global2[_wgslsmith_index_u32(u_input.c.x, 20u)]), vec2<bool>(global2[_wgslsmith_index_u32(var_0, 20u)], false), global2[_wgslsmith_index_u32(u_input.b, 20u)]), !vec2<bool>(global2[_wgslsmith_index_u32(0u, 20u)], global2[_wgslsmith_index_u32(31364u, 20u)])))), select(select(select(vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 20u)], global2[_wgslsmith_index_u32(4294967295u, 20u)]), !vec2<bool>(global2[_wgslsmith_index_u32(74063u, 20u)], false), vec2<bool>(global2[_wgslsmith_index_u32(u_input.b, 20u)], global2[_wgslsmith_index_u32(22790u, 20u)])), select(!vec2<bool>(global2[_wgslsmith_index_u32(var_0, 20u)], false), vec2<bool>(global2[_wgslsmith_index_u32(var_0, 20u)], false), select(vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 20u)], global2[_wgslsmith_index_u32(651u, 20u)]), vec2<bool>(true, false), global2[_wgslsmith_index_u32(0u, 20u)])), select(select(vec2<bool>(false, global2[_wgslsmith_index_u32(u_input.b, 20u)]), vec2<bool>(global2[_wgslsmith_index_u32(0u, 20u)], false), vec2<bool>(true, true)), vec2<bool>(false, false), vec2<bool>(true, true))), select(!select(vec2<bool>(true, false), vec2<bool>(true, true), true), !select(vec2<bool>(global2[_wgslsmith_index_u32(17839u, 20u)], global2[_wgslsmith_index_u32(4294967295u, 20u)]), vec2<bool>(true, global2[_wgslsmith_index_u32(var_0, 20u)]), vec2<bool>(global2[_wgslsmith_index_u32(u_input.c.x, 20u)], global2[_wgslsmith_index_u32(279u, 20u)])), true), all(vec4<bool>(all(vec4<bool>(false, global2[_wgslsmith_index_u32(var_0, 20u)], true, global2[_wgslsmith_index_u32(u_input.c.x, 20u)])), true, any(vec4<bool>(false, true, false, global2[_wgslsmith_index_u32(5488u, 20u)])), false))));
    let x = u_input.a;
    s_output = StorageBuffer(-min(select(u_input.a, vec4<i32>(-34280i, -1i, u_input.a.x, u_input.a.x), vec4<bool>(false, var_1.x, var_1.x, false)), vec4<i32>(u_input.d.x, -73560i, u_input.a.x, u_input.a.x) | vec4<i32>(u_input.a.x, -27229i, 40085i, 0i)) & vec4<i32>(26091i, u_input.d.x, func_3(u_input.a.yxz, Struct_2(var_1.x, 1887f, 1063f, Struct_1(35103i, vec4<f32>(-923f, 511f, 1930f, 104f), 408f, vec2<f32>(-695f, 417f)))) & max(-1i, u_input.d.x), 1i));
}

