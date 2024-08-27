struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: bool,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: bool,
    b: u32,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: vec3<bool>,
    b: bool,
    c: vec3<u32>,
    d: vec4<i32>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<bool, 7>;

var<private> global2: i32 = 1i;

var<private> global3: vec3<u32> = vec3<u32>(1u, 9208u, 4294967295u);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: Struct_1, arg_3: Struct_3) -> vec3<bool> {
    let var_0 = Struct_4(!select(vec3<bool>(all(vec2<bool>(false, global0.b)), true, true), vec3<bool>(!arg_2.a.x, global3.x > arg_1, true), false), false, select(global0.c, global0.c, true), global0.d, _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1f, global0.e.x))));
    global0 = var_0;
    global1 = array<bool, 7>();
    global3 = global0.c;
    var var_1 = Struct_2(false, min(arg_0, _wgslsmith_mult_u32(min(firstTrailingBit(23204u), ~4294967295u), ~arg_1)));
    return vec3<bool>(false, false, var_0.a.x && any(var_0.a.xx));
}

fn func_2(arg_0: vec4<u32>, arg_1: bool) -> Struct_3 {
    global1 = array<bool, 7>();
    var var_0 = Struct_1(select(select(!func_3(global3.x, 0u, Struct_1(vec3<bool>(true, global1[_wgslsmith_index_u32(1u, 7u)], global0.a.x), -1132i, false, 232f, 1143f), Struct_3(false)), vec3<bool>(global1[_wgslsmith_index_u32(~26153u, 7u)], global0.a.x, !arg_1), global0.a), global0.a, true), (-u_input.b | -1i) >> (global0.c.x % 32u), global0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1009f * -1402f)))), _wgslsmith_f_op_f32(global0.e.x + global0.e.x));
    var var_1 = _wgslsmith_f_op_f32(step(-324f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-454f * -686f))))));
    let var_2 = u_input.a;
    let var_3 = _wgslsmith_f_op_f32(max(-1113f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.e.x))));
    return Struct_3(!var_0.c);
}

fn func_4(arg_0: vec3<u32>, arg_1: i32, arg_2: Struct_3, arg_3: i32) -> vec2<u32> {
    global3 = vec3<u32>(4294967295u, _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(4294967295u, 4294967295u), global3.x, _wgslsmith_sub_u32(global0.c.x, 0u)), ~global0.c), vec3<u32>(_wgslsmith_dot_vec3_u32(arg_0, global0.c), _wgslsmith_mod_u32(arg_0.x, 6590u) << (~arg_0.x % 32u), ~_wgslsmith_dot_vec3_u32(arg_0, global0.c))), arg_0.x);
    global2 = -abs(u_input.a.x);
    var var_0 = _wgslsmith_f_op_f32(step(global0.e.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.e.x - _wgslsmith_f_op_f32(step(global0.e.x, _wgslsmith_f_op_f32(-global0.e.x)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0.e.x * -1507f))))));
    global2 = 22642i;
    var var_1 = vec2<bool>(false, global0.a.x);
    return vec2<u32>(arg_0.x, _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(~countOneBits(global0.c), _wgslsmith_div_vec3_u32(firstLeadingBit(global0.c), firstLeadingBit(vec3<u32>(global3.x, global0.c.x, global3.x)))), vec3<u32>(_wgslsmith_dot_vec2_u32(~global0.c.zx, vec2<u32>(27868u, global0.c.x)), ~(~0u), ~(~arg_0.x))));
}

fn func_1(arg_0: vec4<f32>, arg_1: i32, arg_2: vec4<i32>, arg_3: u32) -> i32 {
    var var_0 = global0.d.x;
    var var_1 = func_4(~vec3<u32>(global3.x, ~30196u, 20131u), arg_2.x, func_2(~reverseBits(vec4<u32>(global0.c.x, global0.c.x, global0.c.x, global0.c.x)), !(arg_3 >= global0.c.x)), ~_wgslsmith_mod_i32(arg_1, -arg_2.x)) ^ _wgslsmith_mult_vec2_u32(global0.c.yx, vec2<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_3, global3.x, global0.c.x, 0u), vec4<u32>(arg_3, 33385u, 68325u, 11923u)), ~(~37265u)));
    let var_2 = global0.e.x;
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-arg_0))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(arg_0)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-209f, global0.e.x, global0.e.x, arg_0.x)))), !global0.a.x)), arg_0));
    let var_4 = Struct_3(((global0.e.x != _wgslsmith_f_op_f32(f32(-1f) * -252f)) || global0.a.x) & global0.a.x);
    return global0.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.e.x;
    var var_1 = Struct_4(!global0.a, true | (global3.x < (~global3.x ^ reverseBits(0u))), _wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(~global0.c, ~_wgslsmith_mult_vec3_u32(vec3<u32>(global3.x, global3.x, 14997u), global0.c)), vec3<u32>(abs(55699u), 0u, _wgslsmith_div_u32(~global0.c.x, global0.c.x))), ~vec4<i32>(2147483647i, select(global0.d.x, -2147483647i, true), ~global0.d.x, -23462i & u_input.b) & (vec4<i32>(func_1(vec4<f32>(-1242f, -828f, -1257f, -1302f), -3123i, global0.d, 14466u), _wgslsmith_add_i32(u_input.a.x, u_input.b), ~(-463i), ~(-30654i)) & vec4<i32>(global0.d.x, countOneBits(-18272i), _wgslsmith_mod_i32(1i, global0.d.x), 1i)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global0.e.x - global0.e.x), 934f) - _wgslsmith_f_op_vec2_f32(floor(global0.e))) - vec2<f32>(-1123f, global0.e.x)));
    global0 = Struct_4(var_1.a, !var_1.b != !(!func_2(vec4<u32>(global0.c.x, global0.c.x, 4294967295u, global0.c.x), global0.b).a), _wgslsmith_add_vec3_u32(global0.c, _wgslsmith_div_vec3_u32(global0.c | _wgslsmith_clamp_vec3_u32(vec3<u32>(88413u, global0.c.x, 4294967295u), global0.c, global0.c), vec3<u32>(~0u, global3.x ^ 12807u, 4294967295u))), var_1.d, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(global0.e, var_1.e))))));
    var var_2 = vec3<i32>(var_1.d.x, 35420i, u_input.a.x);
    var var_3 = _wgslsmith_f_op_f32(var_1.e.x + var_1.e.x);
    let x = u_input.a;
    s_output = StorageBuffer(min(-func_1(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(195f, -685f, 559f, var_1.e.x))), max(var_1.d.x, global0.d.x), max(var_1.d, vec4<i32>(var_2.x, 23921i, var_2.x, 17250i)), max(global0.c.x, 0u)), select(firstLeadingBit(global0.d.x), ~min(u_input.a.x, var_1.d.x), select(global1[_wgslsmith_index_u32(global3.x, 7u)] || global0.b, true, !var_1.b))), vec4<i32>(36778i, ~var_1.d.x, var_1.d.x, select(-14576i, 2147483647i, !global1[_wgslsmith_index_u32(62170u, 7u)]) << (max(abs(global0.c.x), global3.x ^ var_1.c.x) % 32u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(2023f - var_1.e.x), -1188f, _wgslsmith_f_op_f32(max(global0.e.x, global0.e.x)), var_1.e.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0.e.x, 2734f, 1738f, 128f)))), false)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(368f, var_1.e.x, -1119f, global0.e.x), vec4<f32>(var_1.e.x, -1000f, 457f, global0.e.x), vec4<bool>(true, false, global1[_wgslsmith_index_u32(28008u, 7u)], true))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.e.x, var_1.e.x, -162f, 398f) * vec4<f32>(485f, 315f, var_1.e.x, var_1.e.x))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.e.x, global0.e.x, -341f, global0.e.x)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1234f, var_1.e.x, var_1.e.x, global0.e.x) * vec4<f32>(737f, global0.e.x, global0.e.x, var_1.e.x))))));
}

