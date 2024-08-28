struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: f32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(vec2<bool>(false, true), 39878u, 1262f), Struct_1(vec2<bool>(false, true), 9231u, -1000f), Struct_1(vec2<bool>(false, false), 68855u, 303f), Struct_1(vec2<bool>(true, true), 43416u, 1357f), Struct_1(vec2<bool>(true, false), 16866u, -601f), Struct_1(vec2<bool>(false, false), 52704u, 305f), Struct_1(vec2<bool>(true, false), 4294967295u, 1121f));

var<private> global2: vec3<f32> = vec3<f32>(-1000f, 1441f, -2066f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<u32>, arg_1: u32, arg_2: i32, arg_3: u32) -> vec2<bool> {
    var var_0 = _wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_div_u32(global0.b ^ arg_0.x, ~global0.b) & ~_wgslsmith_sub_u32(4294967295u, 6587u), 51575u), reverseBits(abs(vec2<u32>(reverseBits(global0.b), ~arg_1))));
    var var_1 = Struct_1(global0.a, arg_0.x, -693f);
    let var_2 = global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(countOneBits(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(32602u, global0.b), ~4294967295u, _wgslsmith_clamp_u32(u_input.a, 26471u, arg_3))), var_0.x), 7u)];
    var var_3 = Struct_1(select(var_1.a, select(vec2<bool>(all(vec3<bool>(true, global0.a.x, var_2.a.x)), true), var_2.a, true), var_2.a), _wgslsmith_dot_vec2_u32(min(vec2<u32>(var_0.x & 37110u, ~4010u), vec2<u32>(4717u, 1u)), arg_0.wx), _wgslsmith_f_op_f32(1521f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(177f * global0.c) * 210f))));
    var var_4 = -250f;
    return select(!vec2<bool>(all(select(global0.a, var_3.a, global0.a)), !any(vec4<bool>(false, false, true, true))), !select(var_2.a, select(select(var_2.a, vec2<bool>(false, var_2.a.x), vec2<bool>(var_2.a.x, true)), vec2<bool>(true, true), select(var_2.a.x, var_1.a.x, true)), var_2.a.x), vec2<bool>(true & (-30919i >= (u_input.c.x | -29223i)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_2.c)), -1000f) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.c + -1000f))));
}

fn func_2(arg_0: bool, arg_1: i32, arg_2: Struct_1) -> f32 {
    let var_0 = Struct_1(!global0.a, 4294967295u, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(global2.x, global2.x)), -1049f)))));
    let var_1 = ~(~vec4<u32>(global0.b, _wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, var_0.b), select(vec2<u32>(0u, 0u), vec2<u32>(4294967295u, u_input.a), global0.a.x)), var_0.b, _wgslsmith_sub_u32(global0.b, 4294967295u) & global0.b));
    global0 = Struct_1(select(!vec2<bool>(true, var_0.a.x), vec2<bool>(var_0.a.x, u_input.c.x != (i32(-1i) * -59515i)), !func_3(vec4<u32>(var_0.b, 4294967295u, arg_2.b, var_0.b), abs(68689u), 1i, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.b, global0.b, var_0.b), var_1.xyx))), abs(_wgslsmith_div_u32(~countOneBits(17257u), 4294967295u & (u_input.a & 1u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1906f)) + -1000f)))));
    let var_2 = vec2<i32>(7740i, -firstLeadingBit(-_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 2147483647i, u_input.c.x), vec3<i32>(u_input.c.x, u_input.c.x, 2147483647i))));
    global0 = global1[_wgslsmith_index_u32(abs(select(_wgslsmith_mod_u32(arg_2.b, 5761u) | ~u_input.b, _wgslsmith_add_u32(~1u, 0u), arg_0)), 7u)];
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global2.x))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(482f, arg_2.c), var_0.c)) - 782f));
}

fn func_1(arg_0: Struct_1) -> f32 {
    global2 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-234f, global2.x, _wgslsmith_f_op_f32(sign(-238f))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(global2.x, 1f, _wgslsmith_f_op_f32(718f - 2193f))))));
    global2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(1433f, global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x - global0.c))));
    global2 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(min(global0.c, global2.x))), -2018f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x - global0.c) - -802f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(166f, 1000f, -1691f)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-760f, global2.x, 1008f) + vec3<f32>(global0.c, 1350f, global0.c)))))))));
    global1 = array<Struct_1, 7>();
    let var_0 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-432f)), global2.x), _wgslsmith_f_op_f32(func_2(!(!global0.a.x | true), ~u_input.c.x, Struct_1(global0.a, _wgslsmith_div_u32(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(9939u, u_input.b, 0u), vec3<u32>(71767u, 18456u, 0u))), _wgslsmith_f_op_f32(trunc(global0.c))))));
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global2.x)) + _wgslsmith_f_op_f32(abs(105f))), 100f, true)) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1627f - _wgslsmith_f_op_f32(func_2(false, u_input.c.x, arg_0))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(true, 7301i, Struct_1(vec2<bool>(true, global0.a.x), 1u, global2.x))), -1000f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.c), _wgslsmith_f_op_f32(-420f * global2.x), global0.a.x)), global2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_1(vec2<bool>(global0.a.x, global0.a.x), u_input.b, global2.x)))), _wgslsmith_f_op_f32(-global0.c)));
    var var_0 = u_input.b;
    let var_1 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2.x, _wgslsmith_f_op_f32(max(1911f, _wgslsmith_f_op_f32(floor(global0.c)))), -639f, _wgslsmith_f_op_f32(select(1612f, global0.c, (global0.a.x & global0.a.x) && true))), vec4<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(634f - _wgslsmith_f_op_f32(f32(-1f) * -1000f)) - global0.c), -742f, global2.x), vec4<bool>(global0.a.x, !(!select(false, global0.a.x, global0.a.x)), global0.a.x, any(vec3<bool>(true, global0.a.x, false)))));
    let var_2 = _wgslsmith_div_u32(abs(reverseBits(u_input.b)), 0u | ~global0.b);
    var var_3 = 934f;
    var var_4 = vec4<u32>(reverseBits(var_2), var_2, _wgslsmith_div_u32(~(_wgslsmith_sub_u32(var_2, global0.b) ^ global0.b), 1u), 45242u);
    let var_5 = _wgslsmith_add_vec3_i32(~(~u_input.c), ~firstTrailingBit(reverseBits(select(vec3<i32>(u_input.c.x, u_input.c.x, -1025i), u_input.c, vec3<bool>(false, false, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, 95575u), vec2<u32>(global0.b, 1595u)) >> (select(var_4.zw, ~vec2<u32>(var_4.x, 0u), !global0.a) % vec2<u32>(32u)), ~var_4.xw, global0.a.x), i32(-1i) * -u_input.c.x, var_1.x, u_input.c.zy);
}

