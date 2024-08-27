struct Struct_1 {
    a: vec3<bool>,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(vec3<bool>(false, false, true), vec3<bool>(false, false, false)), Struct_1(vec3<bool>(false, true, true), vec3<bool>(true, false, true)), Struct_1(vec3<bool>(true, true, true), vec3<bool>(false, false, false)));

var<private> global1: array<Struct_1, 26>;

var<private> global2: array<vec4<bool>, 32>;

var<private> global3: array<i32, 7> = array<i32, 7>(-5666i, 0i, i32(-2147483648), -31714i, 1i, 12785i, -5440i);

var<private> global4: i32 = i32(-2147483648);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: vec4<i32>) -> u32 {
    let var_0 = true;
    global0 = array<Struct_1, 3>();
    global2 = array<vec4<bool>, 32>();
    global1 = array<Struct_1, 26>();
    let var_1 = global0[_wgslsmith_index_u32(~(~(71436u << (1u % 32u))), 3u)];
    return 1u;
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: f32) -> i32 {
    var var_0 = arg_1;
    var var_1 = ~(~firstLeadingBit(vec3<u32>(1u, ~1u, 14878u)));
    global4 = -20052i;
    let var_2 = select(!(!global2[_wgslsmith_index_u32(var_1.x, 32u)]), vec4<bool>(!any(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(0u, var_1.x), 32u)]), any(var_0.b.yy), !(!var_0.a.x && var_0.b.x), var_0.a.x), global3[_wgslsmith_index_u32(~(~(~var_1.x)), 7u)] > _wgslsmith_dot_vec4_i32(vec4<i32>(~global3[_wgslsmith_index_u32(16147u, 7u)], 1i, ~arg_0.x, arg_0.x), ~(-vec4<i32>(-26933i, u_input.a, 3338i, u_input.b))));
    var_1 = _wgslsmith_div_vec3_u32(~firstLeadingBit(~_wgslsmith_add_vec3_u32(vec3<u32>(var_1.x, var_1.x, 6208u), vec3<u32>(var_1.x, 4294967295u, var_1.x))), vec3<u32>(~var_1.x, var_1.x, min(~(~1u), 4294967295u)));
    return reverseBits(u_input.b) | _wgslsmith_sub_i32(arg_0.x, 1i);
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: vec2<f32>) -> i32 {
    global0 = array<Struct_1, 3>();
    var var_0 = vec3<u32>(~(~select(1u, 1u, arg_1.b.x) & func_2(~vec4<i32>(1i, -2147483647i, global3[_wgslsmith_index_u32(30465u, 7u)], u_input.b))), _wgslsmith_clamp_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(14314u, select(0u, 1u, true)), 16175u), _wgslsmith_sub_u32(1u, _wgslsmith_div_u32(1u, _wgslsmith_add_u32(2028u, 43252u))), _wgslsmith_mult_u32(0u, 0u)), ~_wgslsmith_mod_u32(countOneBits(50216u), 4811u));
    global4 = reverseBits(-_wgslsmith_mult_i32(_wgslsmith_add_i32(global3[_wgslsmith_index_u32(0u, 7u)] & 11453i, -1i), _wgslsmith_clamp_i32(global3[_wgslsmith_index_u32(min(var_0.x, 1u), 7u)], func_3(vec4<i32>(0i, 0i, u_input.b, global3[_wgslsmith_index_u32(1u, 7u)]), Struct_1(arg_1.b, vec3<bool>(true, true, true)), 261f), _wgslsmith_add_i32(global3[_wgslsmith_index_u32(68355u, 7u)], 14270i))));
    var var_1 = ~(~29383u) | var_0.x;
    var_0 = ~abs(~vec3<u32>(var_0.x, 82306u, 1u) << (vec3<u32>(var_0.x, var_0.x, var_0.x) % vec3<u32>(32u))) ^ countOneBits(reverseBits(abs(vec3<u32>(var_0.x, 4294967295u, 32394u) ^ vec3<u32>(var_0.x, 15384u, 4294967295u))));
    return func_3(select(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.b, 1900i, 1i), countOneBits(vec4<i32>(u_input.b, 1i, u_input.b, u_input.b))), -1i, global3[_wgslsmith_index_u32(0u, 7u)], countOneBits(u_input.a) ^ -global3[_wgslsmith_index_u32(1u, 7u)]), vec4<i32>(-22444i, -u_input.b ^ ~(-24024i), -abs(46214i), u_input.a), vec4<bool>(arg_1.b.x, arg_1.b.x, true, arg_1.b.x)), Struct_1(!vec3<bool>(-7666i >= global3[_wgslsmith_index_u32(var_0.x, 7u)], 70902i < global3[_wgslsmith_index_u32(var_0.x, 7u)], arg_0 < arg_2.x), select(arg_1.a, arg_1.a, true)), _wgslsmith_f_op_f32(min(arg_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(arg_0, arg_2.x), _wgslsmith_f_op_f32(-arg_0))) + _wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(arg_2.x * 381f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = func_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(108f - -337f))), -683f), global0[_wgslsmith_index_u32(firstTrailingBit(~52022u), 3u)], _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1000f, 432f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 269f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(-230f)), _wgslsmith_f_op_f32(step(1007f, -1995f))) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2238f), _wgslsmith_f_op_f32(f32(-1f) * -2631f)))));
    var var_0 = !(!global2[_wgslsmith_index_u32(24592u, 32u)]);
    global3 = array<i32, 7>();
    global2 = array<vec4<bool>, 32>();
    var var_1 = global1[_wgslsmith_index_u32(~firstLeadingBit(_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 1u, 1u), _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 1u, 19227u), ~vec3<u32>(1u, 0u, 57547u)))), 26u)];
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~0u, 4294967295u, 1u, _wgslsmith_sub_u32(1u, abs(0u))) ^ select(~vec4<u32>(4294967295u, 31630u, 1u, 1u), ~countOneBits(vec4<u32>(57714u, 0u, 51415u, 237u)), vec4<bool>(all(global2[_wgslsmith_index_u32(32889u, 32u)]), true, var_0.x, any(vec4<bool>(var_1.a.x, var_0.x, var_0.x, var_1.a.x)))), 26348u);
}

