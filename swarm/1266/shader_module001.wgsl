struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: vec2<f32>,
    d: bool,
    e: u32,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<f32>,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: array<u32, 12>;

var<private> global2: vec3<f32>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2(arg_0: vec3<u32>, arg_1: i32, arg_2: vec4<f32>, arg_3: u32) -> f32 {
    global0 = vec3<u32>(global0.x, _wgslsmith_dot_vec3_u32(~_wgslsmith_sub_vec3_u32(firstLeadingBit(arg_0), arg_0), _wgslsmith_div_vec3_u32(vec3<u32>(~4294967295u, arg_3 & arg_3, _wgslsmith_sub_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global0.x, 12u)], 12u)], 0u)), abs(arg_0))), _wgslsmith_dot_vec2_u32(arg_0.yz, ~global0.xx));
    var var_0 = ~(~(~_wgslsmith_div_vec4_u32(vec4<u32>(arg_0.x, 49u, global0.x, 49122u), ~vec4<u32>(21547u, global0.x, 48500u, 53400u))));
    var var_1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_2)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(arg_2, vec4<f32>(508f, global2.x, arg_2.x, 370f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(860f, 337f, -771f, -541f) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(474f, -250f, 240f, -753f), arg_2))))))));
    let var_2 = 2147483647i;
    global0 = ~arg_0;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(1483f)), global2.x);
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> f32 {
    global0 = ~vec3<u32>(~4294967295u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, arg_1, 0u, global1[_wgslsmith_index_u32(arg_1, 12u)]) & vec4<u32>(global0.x, 9916u, 11981u, arg_1), ~vec4<u32>(4294967295u, arg_1, 0u, global0.x)), _wgslsmith_add_u32(arg_1, 67082u & global1[_wgslsmith_index_u32(88648u, 12u)]) & u_input.a);
    var var_0 = _wgslsmith_div_i32(max(u_input.b.x, -60599i), abs(_wgslsmith_dot_vec4_i32(~vec4<i32>(0i, -51724i, 2147483647i, u_input.b.x), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, 34663i) >> (vec4<u32>(0u, 1u, global0.x, 1u) % vec4<u32>(32u))))) >> (49363u % 32u);
    global2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, global2.x, global2.x)))) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2.x, global2.x, global2.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(258f, global2.x, 2110f) + vec3<f32>(1878f, global2.x, -471f)), false))))));
    let var_1 = u_input.b.x;
    return -543f;
}

fn func_1() -> Struct_3 {
    var var_0 = global1[_wgslsmith_index_u32(u_input.a, 12u)] ^ 2997u;
    var var_1 = Struct_3(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(global2.x)), _wgslsmith_f_op_f32(step(-1260f, global2.x)))), all(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), false), vec3<bool>(true, false, true))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(vec3<u32>(16921u, 1u, 1u), u_input.b.x, vec4<f32>(global2.x, 1304f, global2.x, 1988f), global1[_wgslsmith_index_u32(global0.x, 12u)])) + _wgslsmith_f_op_f32(func_3(Struct_1(false), global0.x))), global2.x), true, ~_wgslsmith_clamp_u32(1u, ~global0.x, global1[_wgslsmith_index_u32(10993u, 12u)])));
    global0 = max(vec3<u32>(_wgslsmith_add_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.a.e, 87890u, var_1.a.e), vec3<u32>(global1[_wgslsmith_index_u32(var_1.a.e, 12u)], global1[_wgslsmith_index_u32(var_1.a.e, 12u)], 1u)), ~_wgslsmith_mod_u32(1u, var_1.a.e)), global0.x, 0u >> (0u % 32u)), select(abs(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 61372u, 17138u, u_input.a), vec4<u32>(63933u, 4294967295u, 1u, u_input.a)), 33555u, 70005u)), vec3<u32>(global1[_wgslsmith_index_u32(~u_input.a, 12u)], max(firstLeadingBit(30668u), firstTrailingBit(35237u)), ~(global0.x & var_1.a.e)), false));
    global0 = ~_wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(72567u, global0.x, 36332u), vec3<u32>(5614u, global0.x, global1[_wgslsmith_index_u32(4294967295u, 12u)])), min(~vec3<u32>(u_input.a, var_1.a.e, 4294967295u), ~vec3<u32>(u_input.a, 1u, u_input.a)), firstLeadingBit(vec3<u32>(u_input.a, 7426u, 0u)) ^ abs(vec3<u32>(u_input.a, global0.x, var_1.a.e))), vec3<u32>(u_input.a, abs(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(0u, 12u)], 12u)], 12u)]), var_1.a.e));
    var_0 = 4294967295u;
    return Struct_3(var_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 12>();
    var var_0 = Struct_3(Struct_2(-1104f, false, vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(global2.x, -328f, true)))), global2.x), false && select(all(vec3<bool>(false, true, true)), u_input.a != global0.x, -483f > global2.x), _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(global0.xz, vec2<u32>(1u, u_input.a)), global0.xy), _wgslsmith_div_vec2_u32(vec2<u32>(63636u, 4294967295u), global0.zz))));
    var_0 = func_1();
    var var_1 = select(u_input.b.x & -1i, _wgslsmith_mod_i32(1i, countOneBits(countOneBits(u_input.b.x))), all(!select(select(vec4<bool>(var_0.a.d, var_0.a.b, false, var_0.a.b), vec4<bool>(false, false, false, false), vec4<bool>(var_0.a.b, var_0.a.d, var_0.a.d, false)), vec4<bool>(true, var_0.a.b, false, var_0.a.d), !vec4<bool>(true, var_0.a.d, var_0.a.d, var_0.a.d))));
    let var_2 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global2.x, var_0.a.a)) - _wgslsmith_f_op_f32(var_0.a.c.x + var_0.a.a)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(global2.x - global2.x), var_0.a.b)), global2.x), var_0.a.c.x)));
    global1 = array<u32, 12>();
    var_0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(abs(global1[_wgslsmith_index_u32(u_input.a, 12u)]), _wgslsmith_div_f32(global2.x, 563f), var_2, min(min(~(~vec3<i32>(0i, u_input.b.x, -35161i)), abs(vec3<i32>(u_input.b.x, 1i, -17223i))), firstLeadingBit(-firstTrailingBit(vec3<i32>(u_input.b.x, u_input.b.x, 2147483647i)))), -790f);
}

