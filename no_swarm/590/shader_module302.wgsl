struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec4<f32>,
    d: i32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 8>;

var<private> global1: vec3<i32>;

var<private> global2: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(1u), Struct_1(1u), Struct_1(111402u), Struct_1(15476u), Struct_1(1u), Struct_1(40046u), Struct_1(4294967295u), Struct_1(0u), Struct_1(1u), Struct_1(22915u), Struct_1(0u), Struct_1(25165u), Struct_1(19116u), Struct_1(0u), Struct_1(1u), Struct_1(4294967295u), Struct_1(21663u), Struct_1(3018u), Struct_1(39251u), Struct_1(71956u), Struct_1(4294967295u));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> u32 {
    global0 = array<bool, 8>();
    var var_0 = vec4<f32>(1336f, _wgslsmith_f_op_f32(sign(-146f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1359f * 765f)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(694f - 1000f) + _wgslsmith_f_op_f32(f32(-1f) * -566f)))), 1f));
    global0 = array<bool, 8>();
    let var_1 = Struct_2(u_input.b.x & ~22676i);
    let var_2 = vec4<u32>(_wgslsmith_mod_u32(~(~u_input.c.x), reverseBits(u_input.c.x)), 19393u, 1u, ~(4294967295u | u_input.c.x));
    return firstTrailingBit(var_2.x);
}

fn func_3() -> u32 {
    global2 = array<Struct_1, 21>();
    var var_0 = ~(~firstTrailingBit(_wgslsmith_sub_u32(56276u, u_input.c.x)));
    let var_1 = Struct_2(_wgslsmith_dot_vec3_i32(~vec3<i32>(-u_input.a, 1i, ~(-1i)), vec3<i32>(-_wgslsmith_div_i32(global1.x, u_input.b.x), global1.x, _wgslsmith_clamp_i32(u_input.b.x, _wgslsmith_mod_i32(25136i, 58795i), -u_input.a))));
    var_0 = ~(~_wgslsmith_sub_u32(_wgslsmith_sub_u32(u_input.c.x, 1u), 43942u));
    var var_2 = !(!vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 8u)], (2147483647i >> (u_input.c.x % 32u)) >= _wgslsmith_add_i32(var_1.a, u_input.b.x)));
    return reverseBits(0u);
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: Struct_2) -> u32 {
    global0 = array<bool, 8>();
    let var_0 = _wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.c, vec3<u32>(u_input.c.x, 12336u, u_input.c.x), vec3<u32>(18796u, arg_1.a, u_input.c.x)), _wgslsmith_sub_vec3_u32(arg_0, vec3<u32>(0u, 0u, arg_0.x)), vec3<u32>(u_input.c.x, arg_1.a, 4294967295u)), ~(~u_input.c), ~max(u_input.c, arg_0)), countOneBits(vec3<u32>(func_2(), 4765u, arg_1.a))), ~u_input.c);
    let var_1 = !vec4<bool>(false, !all(!vec4<bool>(false, true, true, global0[_wgslsmith_index_u32(arg_1.a, 8u)])), global0[_wgslsmith_index_u32(~func_3(), 8u)], any(!vec4<bool>(false, global0[_wgslsmith_index_u32(0u, 8u)], true, true)));
    let var_2 = Struct_2(11122i);
    var var_3 = min(u_input.a, 22253i);
    return _wgslsmith_add_u32(u_input.c.x, min(5870u << (select(arg_1.a, _wgslsmith_clamp_u32(u_input.c.x, var_0.x, 16687u), var_1.x) % 32u), func_2()));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(u_input.c.x);
    var var_1 = func_1(u_input.c, Struct_1(select(~1u, ~var_0.a ^ u_input.c.x, any(select(vec3<bool>(false, false, global0[_wgslsmith_index_u32(1u, 8u)]), vec3<bool>(global0[_wgslsmith_index_u32(42379u, 8u)], true, true), true)))), Struct_2(-global1.x));
    let var_2 = -countOneBits(-((vec4<i32>(1i, 0i, 0i, u_input.a) | vec4<i32>(-54753i, u_input.b.x, u_input.b.x, u_input.b.x)) >> (select(vec4<u32>(u_input.c.x, var_0.a, 33130u, u_input.c.x), vec4<u32>(u_input.c.x, 48602u, 45031u, 79347u), global0[_wgslsmith_index_u32(var_0.a, 8u)]) % vec4<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(1186f, _wgslsmith_clamp_vec4_i32(vec4<i32>(var_2.x, -countOneBits(2147483647i), -4180i, firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(105i, var_2.x), vec2<i32>(u_input.a, u_input.b.x)))), vec4<i32>(firstLeadingBit(_wgslsmith_clamp_i32(global1.x, -2147483647i, var_2.x)), ~_wgslsmith_clamp_i32(0i, var_2.x, 2339i), _wgslsmith_dot_vec2_i32(-vec2<i32>(var_2.x, 14549i), vec2<i32>(var_2.x, 0i)), ~(-1i)), vec4<i32>(firstTrailingBit(~var_2.x), u_input.a, global1.x >> ((u_input.c.x >> (4294967295u % 32u)) % 32u), max(max(-30686i, 33240i), 1i))), vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -329f)))), 400f, _wgslsmith_f_op_f32(f32(-1f) * -1558f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(157f, 993f) * _wgslsmith_f_op_f32(-897f * -388f)), _wgslsmith_f_op_f32(abs(157f))))), 0i, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2010f, 862f, -809f, 1000f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(369f, 1326f, 1028f, -392f) * vec4<f32>(233f, -2949f, 910f, 977f))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(157f, -341f, 263f, 652f))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(1000f, 268f), _wgslsmith_f_op_f32(1290f + -508f), _wgslsmith_div_f32(432f, -499f), _wgslsmith_f_op_f32(ceil(-550f))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(2354f, -942f, -102f, -818f), vec4<f32>(1336f, 884f, 621f, 1000f))))))));
}

