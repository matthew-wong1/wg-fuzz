struct Struct_1 {
    a: f32,
    b: bool,
    c: i32,
    d: i32,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1() -> i32 {
    let var_0 = false;
    let var_1 = min(max(select(max(23698u, min(16768u, 4294967295u)), min(~0u, u_input.b), any(select(vec2<bool>(true, true), vec2<bool>(false, var_0), true))), u_input.d.x), u_input.b);
    let var_2 = true;
    let var_3 = u_input.a;
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-526f, 783f), 1800f, 825f) - vec3<f32>(-1000f, _wgslsmith_f_op_f32(-102f + 1398f), _wgslsmith_f_op_f32(ceil(-217f)))))));
    return var_3.x;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> bool {
    global0 = -(reverseBits(vec4<i32>(_wgslsmith_add_i32(45479i, -66366i), _wgslsmith_add_i32(global0.x, 1i), global0.x, -global0.x)) & ~_wgslsmith_mult_vec4_i32(u_input.a, -vec4<i32>(arg_0.c, 0i, 2147483647i, arg_2)));
    let var_0 = arg_1;
    global0 = vec4<i32>(arg_2, _wgslsmith_mult_i32(firstTrailingBit(abs(-8287i ^ var_0.c)), _wgslsmith_mult_i32(_wgslsmith_clamp_i32(-8852i, 1i, 52874i) ^ abs(arg_0.d), -1i)), countOneBits(_wgslsmith_mult_i32(max(_wgslsmith_sub_i32(arg_1.d, 18751i), u_input.c.x), firstLeadingBit(_wgslsmith_div_i32(arg_2, -2147483647i)))), -(19911i & -firstTrailingBit(2147483647i)));
    global0 = ~vec4<i32>(~2147483647i, 37145i, -max(u_input.a.x, max(arg_2, arg_1.d)), _wgslsmith_mod_i32(arg_1.c, -71783i));
    var var_1 = ~(~(~select(~vec4<u32>(0u, 4294967295u, u_input.b, 38606u), ~vec4<u32>(u_input.b, 0u, 4294967295u, 1u), arg_0.b)));
    return 801f == arg_1.e.x;
}

fn func_3(arg_0: vec2<u32>, arg_1: vec3<bool>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = arg_2;
    var_0 = arg_2;
    let var_1 = ~_wgslsmith_sub_i32(var_0.c, abs(_wgslsmith_dot_vec3_i32(select(global0.wyy, global0.www, true), global0.zyw & vec3<i32>(-16510i, var_0.d, -25662i))));
    var_0 = arg_2;
    global0 = _wgslsmith_mod_vec4_i32(~vec4<i32>(abs(41042i), _wgslsmith_clamp_i32(arg_2.d, arg_2.d, var_1), _wgslsmith_sub_i32(33411i, 29217i), _wgslsmith_dot_vec4_i32(u_input.a, u_input.a)), ~vec4<i32>(2147483647i, i32(-1i) * -2616i, _wgslsmith_mod_i32(58186i, var_0.d), max(arg_2.d, u_input.a.x))) ^ _wgslsmith_div_vec4_i32(max(u_input.a, vec4<i32>(25361i, var_0.c, 6059i, var_0.d << (arg_0.x % 32u))), _wgslsmith_clamp_vec4_i32(-(~vec4<i32>(var_1, var_0.d, arg_2.d, -962i)), _wgslsmith_mod_vec4_i32(-vec4<i32>(32982i, global0.x, 1i, var_1), ~vec4<i32>(var_1, -2147483647i, -1i, 26120i)), max(abs(vec4<i32>(arg_2.d, 2147483647i, -2147483647i, 0i)), reverseBits(u_input.a))));
    return Struct_1(_wgslsmith_f_op_f32(-214f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_2.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.e.x) + var_0.e.x)))), true, i32(-1i) * -32206i, _wgslsmith_mult_i32(~_wgslsmith_div_i32(53540i, 1i), _wgslsmith_mult_i32(abs(_wgslsmith_div_i32(arg_2.c, u_input.c.x)), ~(-1i))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(max(var_0.e, vec3<f32>(-1000f, -1000f, var_0.a))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(414f, var_0.e.x, 342f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(var_0.e, vec3<f32>(var_0.e.x, arg_2.a, var_0.a), arg_2.b)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = -(vec4<i32>(_wgslsmith_dot_vec4_i32(firstTrailingBit(u_input.a), ~vec4<i32>(u_input.c.x, global0.x, global0.x, -29735i)), global0.x, func_1(), u_input.c.x) ^ u_input.a);
    var var_0 = func_3(vec2<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(max(vec3<u32>(13304u, 45011u, 21370u), vec3<u32>(u_input.d.x, u_input.d.x, u_input.d.x)), ~vec3<u32>(u_input.d.x, 7988u, u_input.b), vec3<u32>(4294967295u, u_input.d.x, 4294967295u) ^ vec3<u32>(22619u, u_input.d.x, 14842u)), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, 1u, 0u), vec3<u32>(1u, 1u, 1u))), u_input.b), !vec3<bool>(func_2(Struct_1(978f, false, u_input.a.x, 21837i, vec3<f32>(595f, -187f, 1000f)), Struct_1(-1849f, true, u_input.c.x, u_input.a.x, vec3<f32>(1414f, -978f, 232f)), global0.x), global0.x <= 2147483647i, false), Struct_1(-865f, any(select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true)), vec3<bool>(true, true, true), true)), _wgslsmith_clamp_i32(_wgslsmith_sub_i32(firstLeadingBit(global0.x), -u_input.a.x), _wgslsmith_mod_i32(-6424i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, -2147483647i, global0.x, u_input.a.x), u_input.a)), -u_input.a.x), func_1(), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-317f, 749f, -1000f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(514f, 711f, -454f))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.x, _wgslsmith_dot_vec4_i32(-(~u_input.a), vec4<i32>(select(_wgslsmith_dot_vec3_i32(vec3<i32>(49332i, 1167i, -2147483647i), vec3<i32>(var_0.c, 3858i, global0.x)), var_0.d, true), -(u_input.a.x << (57243u % 32u)), -var_0.d, u_input.c.x)));
}

