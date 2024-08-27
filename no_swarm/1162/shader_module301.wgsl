struct Struct_1 {
    a: vec2<bool>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: f32,
    d: vec2<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 4> = array<vec4<i32>, 4>(vec4<i32>(0i, 10941i, 2147483647i, 39735i), vec4<i32>(10421i, 0i, 23245i, 13283i), vec4<i32>(2147483647i, 1i, 0i, -31222i), vec4<i32>(i32(-2147483648), 1i, 2338i, 25684i));

var<private> global1: array<Struct_1, 14>;

var<private> global2: array<vec3<bool>, 24>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: Struct_1, arg_3: vec2<u32>) -> bool {
    let var_0 = 1i;
    var var_1 = global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(0u, ~39759u), 14u)];
    return _wgslsmith_mult_u32(_wgslsmith_sub_u32(u_input.a, ~0u >> (~u_input.a % 32u)), ~max(firstTrailingBit(arg_3.x), arg_3.x)) == ~arg_3.x;
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: vec3<u32>) -> vec4<u32> {
    var var_0 = global1[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(~(~max(u_input.a, 24596u)), _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.x, arg_2.x), vec2<u32>(arg_2.x, 1u)) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(100421u, 0u, 66790u), arg_2) % 32u), max(79005u, reverseBits(arg_2.x))), _wgslsmith_add_u32(_wgslsmith_div_u32(arg_2.x & arg_2.x, 1u), _wgslsmith_clamp_u32(arg_2.x, 71355u, ~arg_2.x))), 14u)];
    var var_1 = Struct_1(!(!var_0.a), select(~(-(~arg_0.b)), vec3<i32>(-1i) * -vec3<i32>(-40422i, u_input.b, arg_0.b.x), !any(vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x)) | true));
    var var_2 = global1[_wgslsmith_index_u32(4294967295u, 14u)];
    var_0 = arg_0;
    var var_3 = ~(-51464i);
    return ~vec4<u32>(0u, _wgslsmith_add_u32(_wgslsmith_mod_u32(arg_2.x, arg_2.x) >> (~u_input.a % 32u), u_input.a), arg_2.x, u_input.a);
}

fn func_4(arg_0: vec4<u32>, arg_1: vec2<f32>) -> u32 {
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~(abs(arg_0.zx) >> (arg_0.zz % vec2<u32>(32u))), arg_0.yy) >> ((arg_0.x & arg_0.x) % 32u), 14u)];
    var var_1 = firstTrailingBit(-14653i);
    global1 = array<Struct_1, 14>();
    let var_2 = global1[_wgslsmith_index_u32(1u, 14u)];
    global1 = array<Struct_1, 14>();
    return abs(_wgslsmith_sub_u32(~arg_0.x, u_input.a));
}

fn func_2(arg_0: vec3<f32>) -> u32 {
    global2 = array<vec3<bool>, 24>();
    global2 = array<vec3<bool>, 24>();
    var var_0 = global0[_wgslsmith_index_u32(1u, 4u)];
    var var_1 = global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(func_4(~func_3(global1[_wgslsmith_index_u32(4294967295u, 14u)], u_input.b, vec3<u32>(u_input.a, u_input.a, 0u)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-837f, -238f) + _wgslsmith_div_vec2_f32(vec2<f32>(729f, arg_0.x), vec2<f32>(arg_0.x, arg_0.x)))), u_input.a), 14u)];
    let var_2 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_mod_u32(~abs(u_input.a), 0u), ~countOneBits(u_input.a)) & func_4(vec4<u32>(19206u, 1u, _wgslsmith_div_u32(0u, 4294967295u) >> (u_input.a % 32u), 1u), _wgslsmith_f_op_vec2_f32(round(arg_0.zz))), 14u)];
    return _wgslsmith_div_u32(54516u, 1u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec2<bool>(true, true), -u_input.c.yxz);
    var var_1 = vec4<bool>(!var_0.a.x, func_1(countOneBits(var_0.b.x), ~(-43671i), global1[_wgslsmith_index_u32(u_input.a, 14u)], ~vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 1u)), ~u_input.a)), func_2(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-822f, 1633f, -773f) + vec3<f32>(-1225f, 388f, 1000f)), vec3<f32>(1f, 1f, 1f)))) >= func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(606f, 1557f, 1895f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(884f, 780f, -1107f)))), select(all(global2[_wgslsmith_index_u32(1u, 24u)]), var_0.a.x && true, true));
    global0 = array<vec4<i32>, 4>();
    let var_2 = global1[_wgslsmith_index_u32(~min(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, 461u, u_input.a), vec4<u32>(u_input.a, u_input.a, 55459u, u_input.a))), u_input.a), 14u)];
    var var_3 = Struct_1(select(select(vec2<bool>(!var_2.a.x, var_0.a.x), !select(var_1.zx, var_1.xw, var_1.x), func_1(i32(-1i) * -1i, 1i, global1[_wgslsmith_index_u32(u_input.a << (1u % 32u), 14u)], vec2<u32>(u_input.a, 0u))), select(!select(var_1.yz, vec2<bool>(false, true), var_0.a.x), vec2<bool>(!var_2.a.x, select(var_0.a.x, var_0.a.x, false)), false), select(select(var_0.a, vec2<bool>(true, false), !vec2<bool>(false, var_1.x)), select(var_1.yz, select(var_0.a, vec2<bool>(var_0.a.x, var_1.x), var_1.x), !vec2<bool>(var_2.a.x, var_2.a.x)), select(vec2<bool>(true, var_1.x), vec2<bool>(false, var_2.a.x), vec2<bool>(var_0.a.x, true)))), vec3<i32>(2147483647i, 0i, _wgslsmith_add_i32(var_0.b.x, var_0.b.x) & (~var_0.b.x >> (0u % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(select(~reverseBits(vec4<u32>(u_input.a, 24203u, u_input.a, 2215u)), countOneBits(vec4<u32>(0u, 1u, ~0u, abs(u_input.a))), all(select(select(vec2<bool>(var_0.a.x, var_1.x), vec2<bool>(var_0.a.x, false), var_0.a.x), select(var_2.a, var_0.a, var_3.a), any(vec4<bool>(true, var_0.a.x, var_2.a.x, var_2.a.x))))), min(u_input.c.wxz, vec3<i32>(var_3.b.x, 0i, var_3.b.x & _wgslsmith_dot_vec2_i32(var_0.b.xy, var_2.b.xx))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(748f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - 492f) - _wgslsmith_f_op_f32(max(-422f, 273f))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-371f - 224f), _wgslsmith_f_op_f32(select(-407f, 441f, true))))))), ~vec2<u32>(_wgslsmith_sub_u32(1u, u_input.a), ~(~u_input.a)), ~u_input.a);
}

