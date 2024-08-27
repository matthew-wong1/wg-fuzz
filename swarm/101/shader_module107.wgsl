struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: vec3<i32>,
    d: vec4<f32>,
    e: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec4<bool>, 1> = array<vec4<bool>, 1>(vec4<bool>(true, true, false, true));

var<private> global2: array<Struct_1, 10>;

var<private> global3: array<i32, 32>;

var<private> global4: array<vec3<bool>, 16>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> u32 {
    let var_0 = global0.d.yw;
    let var_1 = ~(-(-66638i & global3[_wgslsmith_index_u32(max(_wgslsmith_mult_u32(80048u, 1u), select(4294967295u, 36235u, false)), 32u)]));
    var var_2 = select(global4[_wgslsmith_index_u32(u_input.b, 16u)], !select(global4[_wgslsmith_index_u32(global0.b, 16u)], select(vec3<bool>(true, true, true), select(vec3<bool>(false, global0.e, global0.e), global4[_wgslsmith_index_u32(global0.b, 16u)], global4[_wgslsmith_index_u32(u_input.b, 16u)]), global4[_wgslsmith_index_u32(~u_input.b, 16u)]), any(!vec2<bool>(true, global0.e))), global0.e);
    global4 = array<vec3<bool>, 16>();
    global1 = array<vec4<bool>, 1>();
    return _wgslsmith_dot_vec3_u32(~_wgslsmith_mod_vec3_u32(~firstTrailingBit(u_input.d), vec3<u32>(~global0.b, global0.b, 0u)), vec3<u32>(~0u >> (u_input.b % 32u), global0.b, _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, global0.b, u_input.a.x), u_input.d), ~0u) ^ ~u_input.d.x));
}

fn func_2(arg_0: bool, arg_1: i32, arg_2: vec4<bool>, arg_3: Struct_1) -> u32 {
    global1 = array<vec4<bool>, 1>();
    let var_0 = global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(793u, _wgslsmith_sub_u32(u_input.b, arg_3.b)), 10u)];
    var var_1 = 1i < firstTrailingBit(select(global3[_wgslsmith_index_u32(81777u, 32u)], 0i, arg_0));
    var_1 = !(_wgslsmith_f_op_f32(369f + _wgslsmith_f_op_f32(f32(-1f) * -129f)) > _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)))));
    var var_2 = vec4<u32>(select(global0.b, _wgslsmith_mult_u32(global0.b, 13754u), select(false, true, false)), ~_wgslsmith_dot_vec4_u32((u_input.a & u_input.a) & vec4<u32>(52748u, var_0.b, 4294967295u, global0.b), min(countOneBits(vec4<u32>(0u, arg_3.b, 14917u, var_0.b)), u_input.a)), func_3(), ~min(var_0.b, arg_3.b | 1u));
    return 1u;
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    global4 = array<vec3<bool>, 16>();
    global4 = array<vec3<bool>, 16>();
    let var_0 = true;
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-arg_2.d.xy), ~_wgslsmith_add_u32(arg_2.b, _wgslsmith_mult_u32(~arg_2.b, arg_2.b)), -vec3<i32>(_wgslsmith_mod_i32(2147483647i, -30700i), countOneBits(38282i) >> (func_2(var_0, arg_1.c.x, global1[_wgslsmith_index_u32(12736u, 1u)], Struct_1(arg_1.a, 1u, global0.c, vec4<f32>(792f, -421f, arg_2.d.x, global0.a.x), arg_0)) % 32u), _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(2859i, 0i, global0.c.x), vec3<i32>(43423i, 0i, -1i)), -arg_1.c.x)), arg_1.d, true);
    var var_2 = u_input.a.wy;
    return all(select(vec2<bool>(!global0.e, !any(vec3<bool>(var_0, arg_2.e, false))), vec2<bool>(!arg_2.e, global0.e), !(!vec2<bool>(var_0, false))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(u_input.c == _wgslsmith_clamp_i32(~(-global0.c.x), 53078i >> (u_input.b % 32u), _wgslsmith_clamp_i32(1i, u_input.c ^ global3[_wgslsmith_index_u32(global0.b, 32u)], global0.c.x << (51605u % 32u))));
    let var_1 = vec3<bool>(func_1(true, Struct_1(_wgslsmith_f_op_vec2_f32(global0.a + global0.a), abs(u_input.a.x), vec3<i32>(global0.c.x, global3[_wgslsmith_index_u32(u_input.b, 32u)], global0.c.x), _wgslsmith_f_op_vec4_f32(global0.d + vec4<f32>(228f, 719f, 688f, -2468f)), true), Struct_1(vec2<f32>(global0.a.x, 1043f), _wgslsmith_clamp_u32(global0.b, global0.b, global0.b), firstTrailingBit(global0.c), vec4<f32>(global0.a.x, -384f, global0.d.x, global0.d.x), !global0.e)) | false, all(vec3<bool>(true, true, any(vec2<bool>(false, false)))), _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(global0.c, global0.c), _wgslsmith_mod_i32(_wgslsmith_mod_i32(global3[_wgslsmith_index_u32(7812u, 32u)], global0.c.x), -19559i)) == ~1067i);
    let var_2 = vec2<u32>(global0.b, abs(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(u_input.d.x, 0u, 74487u, 15744u)) ^ u_input.b) ^ countOneBits(_wgslsmith_add_u32(~global0.b, u_input.a.x)));
    var var_3 = !select(vec4<bool>(true, true, var_1.x, var_1.x), vec4<bool>(var_0, ~2147483647i > ~u_input.c, false, all(vec2<bool>(false, var_0))), (true || !global0.e) | !any(var_1));
    global2 = array<Struct_1, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(~abs(u_input.b >> (var_2.x % 32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(round(global0.d)))) - vec4<f32>(global0.d.x, global0.a.x, _wgslsmith_f_op_f32(-global0.d.x), _wgslsmith_div_f32(-931f, 1242f)))), var_2.x & _wgslsmith_mult_u32(func_3(), ~0u));
}

