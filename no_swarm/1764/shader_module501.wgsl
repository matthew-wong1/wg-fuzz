struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: bool,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec3<f32>,
    d: vec3<f32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 1> = array<bool, 1>(true);

var<private> global1: array<f32, 20>;

var<private> global2: Struct_1;

var<private> global3: vec4<i32>;

var<private> global4: Struct_1;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: vec4<f32>, arg_2: Struct_2) -> i32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(select(arg_2.c.a, vec2<f32>(arg_1.x, 1000f), !select(!global0[_wgslsmith_index_u32(30423u, 1u)], select(false, global0[_wgslsmith_index_u32(global4.d, 1u)], global2.e), true))), max(reverseBits(abs(arg_2.d.b ^ arg_0)), 1u), true, _wgslsmith_clamp_u32(select(~_wgslsmith_dot_vec3_u32(u_input.c.zxz, u_input.c.yxy), _wgslsmith_add_u32(~global4.b, 58676u), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(select(u_input.c.zy, vec2<u32>(18905u, 69493u), vec2<bool>(true, global4.c)), u_input.c.ww), 1u)]), ~24028u, 4294967295u), global4.e);
    global4 = Struct_1(arg_2.c.a, firstLeadingBit(1u), global0[_wgslsmith_index_u32(global2.d, 1u)], 4294967295u, u_input.c.x >= global2.b);
    var_0 = arg_2.d;
    global4 = arg_2.a;
    global0 = array<bool, 1>();
    return _wgslsmith_add_i32(-1i, _wgslsmith_dot_vec4_i32(max(-_wgslsmith_add_vec4_i32(vec4<i32>(-978i, -1i, u_input.a, global3.x), vec4<i32>(global3.x, 42528i, u_input.a, u_input.a)), firstTrailingBit(abs(vec4<i32>(1i, global3.x, global3.x, global3.x)))), vec4<i32>(~(~global3.x), ~global3.x, 1i, u_input.a)));
}

fn func_2() -> bool {
    let var_0 = true;
    let var_1 = Struct_1(global2.a, ~(~_wgslsmith_sub_u32(~30931u, reverseBits(1u))), any(select(!(!vec4<bool>(global0[_wgslsmith_index_u32(global2.b, 1u)], var_0, false, var_0)), select(select(vec4<bool>(true, true, false, global4.e), vec4<bool>(global0[_wgslsmith_index_u32(8795u, 1u)], true, global0[_wgslsmith_index_u32(1u, 1u)], global0[_wgslsmith_index_u32(940u, 1u)]), vec4<bool>(false, false, true, global4.e)), select(vec4<bool>(global2.c, true, global2.c, global4.e), vec4<bool>(global4.e, global0[_wgslsmith_index_u32(u_input.c.x, 1u)], var_0, global4.e), vec4<bool>(false, global0[_wgslsmith_index_u32(11623u, 1u)], global2.e, false)), all(vec3<bool>(global2.e, false, var_0))), !global0[_wgslsmith_index_u32(4294967295u, 1u)])), ~u_input.c.x, var_0);
    global2 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(var_1.a)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.a.x - -789f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global2.d, 20u)])))), global4.b, var_0, select(min(~firstTrailingBit(u_input.b), ~(1u << (1u % 32u))), ~max(131064u, global2.b), false), all(vec2<bool>(all(vec2<bool>(true, true)), all(!vec2<bool>(true, var_0)))));
    global2 = var_1;
    global3 = _wgslsmith_sub_vec4_i32(abs(-select(-vec4<i32>(2147483647i, -2147483647i, u_input.a, -78594i), vec4<i32>(u_input.a, global3.x, global3.x, global3.x), false)), ~(vec4<i32>(-49921i, func_3(0u, vec4<f32>(var_1.a.x, 690f, global2.a.x, var_1.a.x), Struct_2(var_1, var_1, var_1, Struct_1(global2.a, 31217u, true, 0u, true), vec4<f32>(global2.a.x, 516f, -419f, -297f))), -45519i, 1i) >> (abs(_wgslsmith_div_vec4_u32(u_input.c, u_input.c)) % vec4<u32>(32u))));
    return true;
}

fn func_1(arg_0: vec2<u32>, arg_1: u32, arg_2: f32) -> vec2<i32> {
    let var_0 = !select(!select(!vec2<bool>(false, global0[_wgslsmith_index_u32(1953u, 1u)]), vec2<bool>(false, true), select(vec2<bool>(global2.e, global0[_wgslsmith_index_u32(global4.b, 1u)]), vec2<bool>(global0[_wgslsmith_index_u32(6426u, 1u)], false), vec2<bool>(global2.c, global2.c))), vec2<bool>(all(vec4<bool>(true, global0[_wgslsmith_index_u32(arg_0.x, 1u)], true, global2.c)), func_2()), select(!(!vec2<bool>(true, global2.e)), !(!vec2<bool>(global0[_wgslsmith_index_u32(global2.d, 1u)], true)), vec2<bool>(global4.c, global2.e)));
    let var_1 = var_0.x;
    return ~firstTrailingBit(_wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_div_i32(8851i, 44354i), u_input.a), ~_wgslsmith_mult_vec2_i32(global3.zw, global3.xy)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(u_input.c.xw, ~24560u | ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, 2458u, u_input.b), u_input.c), global2.a.x);
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(sign(global4.a)), 4294967295u ^ abs(~global4.d), global4.c, _wgslsmith_clamp_u32(_wgslsmith_mod_u32(~_wgslsmith_mod_u32(u_input.b, 1u), 1u & _wgslsmith_sub_u32(u_input.c.x, 1u)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.c.x, global2.d), reverseBits(u_input.c.xyy)), 34912u), any(select(select(!vec3<bool>(false, global0[_wgslsmith_index_u32(1874u, 1u)], global4.c), !vec3<bool>(global2.e, global0[_wgslsmith_index_u32(50012u, 1u)], global2.e), true), !select(vec3<bool>(global0[_wgslsmith_index_u32(26054u, 1u)], false, true), vec3<bool>(global0[_wgslsmith_index_u32(global4.b, 1u)], false, global0[_wgslsmith_index_u32(u_input.b, 1u)]), vec3<bool>(global2.c, false, true)), global2.c)));
    let var_2 = abs(_wgslsmith_div_vec4_u32(abs(u_input.c), select(select(vec4<u32>(40800u, 0u, 1u, global4.b), ~u_input.c, true), u_input.c, vec4<bool>(!var_1.e, var_1.a.x != var_1.a.x, any(vec2<bool>(true, false)), all(vec3<bool>(global0[_wgslsmith_index_u32(global4.d, 1u)], true, true))))));
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.a.x + global1[_wgslsmith_index_u32(global2.d, 20u)]) - var_1.a.x), _wgslsmith_f_op_f32(689f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_1.a.x, var_1.a.x)) * _wgslsmith_f_op_f32(-global2.a.x))))), -2226f, _wgslsmith_f_op_f32(step(-705f, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_mod_u32(global2.d, u_input.b), _wgslsmith_mod_u32(global2.d, var_2.x) & var_2.x), 20u)])));
    var_0 = ~global3.zy;
    var_0 = select(_wgslsmith_sub_vec2_i32(func_1(u_input.c.zw & vec2<u32>(var_1.d, var_1.d), ~(~global2.b), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(global2.a.x, global2.a.x)), -801f, true))), countOneBits(_wgslsmith_div_vec2_i32(global3.xw, global3.yw))), vec2<i32>(abs(global3.x), max(1i, global3.x)), var_1.e);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-1i, 34440i, abs(_wgslsmith_div_i32(func_3(56741u, vec4<f32>(-288f, 464f, var_3.x, -891f), Struct_2(Struct_1(global2.a, global2.b, true, u_input.c.x, global4.e), var_1, var_1, var_1, vec4<f32>(var_3.x, 907f, var_1.a.x, 570f))), -1i))), global1[_wgslsmith_index_u32(1u, 20u)], _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.x, 1000f, 366f)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global4.a.x, -1733f, 1245f))))) - vec3<f32>(_wgslsmith_f_op_f32(floor(var_1.a.x)), _wgslsmith_f_op_f32(-global2.a.x), global1[_wgslsmith_index_u32(select(u_input.c.x, global2.d, global0[_wgslsmith_index_u32(var_2.x, 1u)]), 20u)])) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1000f, 1247f, 1691f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1504f, -198f, -231f)))))), ~var_2.zwx);
}

