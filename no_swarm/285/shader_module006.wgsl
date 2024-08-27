struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: u32,
    d: bool,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 22>;

var<private> global1: array<f32, 20>;

var<private> global2: vec4<bool>;

var<private> global3: i32;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec4<f32>) -> vec4<f32> {
    var var_0 = 1000f;
    let var_1 = vec2<bool>(1000f > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, 1u), vec3<u32>(38166u, u_input.a, 27675u)), 20u)])) * 273f), false);
    var var_2 = vec2<u32>(~(~select(u_input.a, ~62894u, !var_1.x)), _wgslsmith_div_u32(_wgslsmith_mult_u32(11570u, _wgslsmith_add_u32(u_input.a << (u_input.a % 32u), u_input.a)), 43490u));
    var var_3 = max(var_2.x, var_2.x);
    global3 = _wgslsmith_div_i32(20803i, 1i) | _wgslsmith_add_i32(-(~min(0i, 0i)), _wgslsmith_mult_i32(u_input.b, -13383i));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0.x, arg_0.x, arg_0.x, 1372f), vec4<f32>(-1157f, global1[_wgslsmith_index_u32(u_input.a, 20u)], -163f, -598f))))), _wgslsmith_f_op_vec4_f32(exp2(arg_0)))));
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: f32, arg_3: bool) -> i32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_2 + -1434f), arg_2, _wgslsmith_f_op_f32(min(128f, _wgslsmith_f_op_f32(arg_2 + _wgslsmith_f_op_f32(-815f * arg_2)))), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, _wgslsmith_add_u32(8494u, 22556u)), 20u)])));
    let var_1 = countOneBits(vec3<i32>(-1i) * -(~vec3<i32>(u_input.b, u_input.b, u_input.b)));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(561f, arg_2, global1[_wgslsmith_index_u32(arg_1, 20u)], 641f), vec4<f32>(-495f, -2324f, global1[_wgslsmith_index_u32(arg_1, 20u)], 465f), vec4<bool>(true, false, false, global2.x))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-923f, -737f, -1000f, arg_2), vec4<f32>(235f, -672f, arg_2, var_0.x)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1024f, var_0.x, 1095f, 1000f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_2, global1[_wgslsmith_index_u32(arg_1, 20u)], var_0.x, 667f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(arg_1, 20u)], 604f, -338f, arg_2)))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, arg_2, _wgslsmith_f_op_f32(485f * 1501f), _wgslsmith_f_op_f32(arg_2 * var_0.x)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -1130f, var_0.x, arg_2) + vec4<f32>(-2557f, -799f, -722f, -311f)) - _wgslsmith_f_op_vec4_f32(func_3(vec4<f32>(arg_2, var_0.x, -441f, global1[_wgslsmith_index_u32(45267u, 20u)])))))));
    global2 = !select(vec4<bool>(global2.x, !(global1[_wgslsmith_index_u32(5244u, 20u)] > var_0.x), (arg_0 == var_1.x) & true, !(!arg_3)), vec4<bool>(!arg_3, true, all(select(vec4<bool>(arg_3, true, true, global2.x), vec4<bool>(global2.x, global2.x, true, global2.x), vec4<bool>(true, global2.x, global2.x, true))), arg_3), true);
    var var_2 = -1i;
    return select(var_1.x, ~u_input.b, global2.x);
}

fn func_1() -> StorageBuffer {
    let var_0 = u_input.b;
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(max(1434f, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(u_input.a, 49516u)), vec2<u32>(0u, 68536u)), 20u)] * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1[_wgslsmith_index_u32(28216u, 20u)], -531f))))), 1158f);
    global1 = array<f32, 20>();
    let var_2 = -836f;
    var var_3 = _wgslsmith_sub_vec2_i32(-vec2<i32>(func_2(countOneBits(u_input.b), max(u_input.a, u_input.a), var_1.x, all(vec4<bool>(true, true, global2.x, false))), -7644i), abs(~vec2<i32>(var_0, var_0)));
    return StorageBuffer(~vec2<u32>(max(~0u, 1u), u_input.a | u_input.a), firstLeadingBit(~(~(vec4<u32>(92435u, u_input.a, u_input.a, 4294967295u) ^ vec4<u32>(4294967295u, u_input.a, 14312u, u_input.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 20>();
    let var_0 = vec2<i32>(_wgslsmith_mult_i32(countOneBits(2147483647i ^ u_input.b), _wgslsmith_sub_i32(i32(-1i) * -22574i, 0i << (u_input.a % 32u))), 60349i & ~u_input.b) << (vec2<u32>(_wgslsmith_mult_u32(u_input.a, _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(1u, 5848u, 31995u, 1u), vec4<u32>(u_input.a, u_input.a, 0u, u_input.a)), _wgslsmith_add_vec4_u32(vec4<u32>(47230u, u_input.a, 37939u, u_input.a), vec4<u32>(u_input.a, 0u, 23194u, u_input.a)))), 0u) % vec2<u32>(32u));
    let var_1 = ~countOneBits(_wgslsmith_sub_i32(_wgslsmith_mod_i32(-2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -1i), vec2<i32>(-27401i, -17457i))), u_input.b));
    global3 = firstTrailingBit(var_0.x);
    var var_2 = (countOneBits(_wgslsmith_mult_u32(u_input.a >> (18507u % 32u), ~u_input.a)) == (_wgslsmith_sub_u32(_wgslsmith_mult_u32(u_input.a, 21936u), _wgslsmith_mod_u32(0u, u_input.a)) >> (1u % 32u))) && any(global2.xw);
    global0 = array<Struct_1, 22>();
    global0 = array<Struct_1, 22>();
    let x = u_input.a;
    s_output = func_1();
}

