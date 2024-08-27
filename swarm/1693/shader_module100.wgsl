struct Struct_1 {
    a: vec4<i32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: u32,
    b: Struct_2,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 30>;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3() -> i32 {
    global0 = array<f32, 30>();
    global0 = array<f32, 30>();
    global0 = array<f32, 30>();
    global0 = array<f32, 30>();
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-706f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(25276u, 30u)], -247f), global0[_wgslsmith_index_u32(25150u, 30u)])))));
    return min(-15797i, _wgslsmith_clamp_i32(1i, _wgslsmith_dot_vec3_i32(firstLeadingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, 2147483647i, 14569i), vec3<i32>(-1i, 2147483647i, 2147483647i))), abs(vec3<i32>(-14246i, -1i, -7322i))), 3492i));
}

fn func_2(arg_0: f32) -> Struct_3 {
    global0 = array<f32, 30>();
    let var_0 = Struct_1(vec4<i32>(func_3() >> (97988u % 32u), _wgslsmith_dot_vec3_i32(-vec3<i32>(1i, 1i, 1i), vec3<i32>(abs(-10290i), ~2147483647i, ~2147483647i)), -12566i, 1i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 30u)], arg_0, global0[_wgslsmith_index_u32(u_input.a.x, 30u)]))))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.b.x, arg_0))), 1f))));
    let var_2 = Struct_5(0u, Struct_2(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), !vec2<bool>(any(vec4<bool>(true, false, true, false)), arg_0 <= -1356f)), Struct_1(firstTrailingBit(vec4<i32>(~var_0.a.x, 2147483647i, -1i, _wgslsmith_dot_vec3_i32(vec3<i32>(43258i, 22247i, 27258i), var_0.a.xyy))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(abs(var_0.b))))));
    var_1 = _wgslsmith_f_op_f32(ceil(var_0.b.x));
    return Struct_3(Struct_2(vec3<bool>(var_2.b.a.x, false, false), var_2.b.b));
}

fn func_1() -> Struct_2 {
    var var_0 = func_2(_wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(countOneBits(~reverseBits(1u)), 30u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(36430u, 30u)]))))));
    var var_1 = ~((1u | u_input.a.x) >> (u_input.a.x % 32u));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1485f, _wgslsmith_f_op_f32(-334f - _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a.x, 30u)] * 263f)), global0[_wgslsmith_index_u32(4294967295u, 30u)]))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 30u)], global0[_wgslsmith_index_u32(u_input.a.x, 30u)], 875f))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 30u)], global0[_wgslsmith_index_u32(14293u, 30u)], global0[_wgslsmith_index_u32(1033u, 30u)]) * vec3<f32>(global0[_wgslsmith_index_u32(31361u, 30u)], global0[_wgslsmith_index_u32(u_input.a.x, 30u)], global0[_wgslsmith_index_u32(4294967295u, 30u)])))), !(firstLeadingBit(u_input.a.x) >= u_input.a.x))));
    let var_3 = func_2(-1068f);
    let var_4 = Struct_3(func_2(global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(u_input.a & vec3<u32>(0u, 4294967295u, u_input.a.x), ~u_input.a), 30u)]).a);
    return func_2(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a.x, 1u), 30u)]).a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_5(_wgslsmith_div_u32(~(~17919u) | _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 5163u, 1u, 24868u), vec4<u32>(83702u, 18678u, u_input.a.x, 23166u)), u_input.a.x), func_1(), Struct_1(select(vec4<i32>(1i, -61507i, firstLeadingBit(25698i), -10027i), vec4<i32>(max(25984i, 0i), _wgslsmith_mult_i32(-1i, 2147483647i), 7138i, max(-2147483647i, 1i)), true), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(156f, -1647f)), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(960u, 30u)]), 1201f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-315f, 1618f, global0[_wgslsmith_index_u32(u_input.a.x, 30u)]) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 30u)], global0[_wgslsmith_index_u32(u_input.a.x, 30u)], global0[_wgslsmith_index_u32(u_input.a.x, 30u)]), vec3<f32>(258f, global0[_wgslsmith_index_u32(0u, 30u)], 207f)))))));
    var var_1 = !var_0.b.b;
    var var_2 = u_input.a;
    var var_3 = func_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.c.b.x + var_0.c.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_2.x, 30u)]) + _wgslsmith_div_f32(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(21226u, u_input.a.x), 30u)], _wgslsmith_f_op_f32(f32(-1f) * -2421f))))));
    var var_4 = Struct_5(_wgslsmith_mod_u32(~(~(var_0.a & var_2.x)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(23057u, 1u, 32670u), ~u_input.a)), func_1(), var_0.c);
    let var_5 = firstLeadingBit(abs(u_input.a)) | u_input.a;
    let var_6 = _wgslsmith_clamp_vec2_u32(~(~reverseBits(vec2<u32>(0u, var_2.x))), _wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(1u, 59047u), ~(u_input.a.xz << (vec2<u32>(u_input.a.x, var_2.x) % vec2<u32>(32u)))), ~u_input.a.yx), _wgslsmith_mult_vec2_u32(var_2.yx, var_5.zy));
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(_wgslsmith_mod_u32(~12141u, u_input.a.x), ~(~var_5.x), ~_wgslsmith_div_u32(var_4.a, var_6.x), 4294967295u), _wgslsmith_div_vec2_i32((vec2<i32>(2147483647i, var_4.c.a.x) & vec2<i32>(var_4.c.a.x, var_0.c.a.x)) | ~abs(vec2<i32>(var_0.c.a.x, 0i)), var_0.c.a.yx));
}

