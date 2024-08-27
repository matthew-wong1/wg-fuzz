struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: i32,
    c: vec4<bool>,
}

struct Struct_3 {
    a: bool,
    b: vec4<bool>,
    c: i32,
    d: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<i32>,
    c: f32,
    d: Struct_3,
}

struct Struct_5 {
    a: bool,
    b: f32,
    c: Struct_3,
    d: i32,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -648f;

var<private> global1: vec4<f32>;

var<private> global2: array<vec2<i32>, 19> = array<vec2<i32>, 19>(vec2<i32>(-15265i, 30865i), vec2<i32>(52591i, -30322i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(-39929i, 49697i), vec2<i32>(2967i, 2147483647i), vec2<i32>(i32(-2147483648), -20818i), vec2<i32>(i32(-2147483648), 34878i), vec2<i32>(38829i, 3980i), vec2<i32>(47446i, -28201i), vec2<i32>(8886i, 36602i), vec2<i32>(0i, 0i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(2147483647i, 57573i), vec2<i32>(0i, 1i), vec2<i32>(2147483647i, 38259i), vec2<i32>(2147483647i, 18379i), vec2<i32>(2147483647i, -1i), vec2<i32>(28287i, 0i), vec2<i32>(31060i, 2147483647i));

var<private> global3: f32;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: f32, arg_1: bool) -> f32 {
    return -480f;
}

fn func_3(arg_0: f32, arg_1: f32) -> vec4<f32> {
    var var_0 = _wgslsmith_sub_i32(~(-12172i), -20111i);
    let var_1 = !vec4<bool>(all(vec2<bool>(true, true)), -2181f >= _wgslsmith_f_op_f32(-global1.x), false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)) <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-738f, global1.x, true)), _wgslsmith_f_op_f32(-arg_0)));
    let var_2 = _wgslsmith_dot_vec4_i32(~abs(firstLeadingBit(vec4<i32>(18449i, 2147483647i, 2147483647i, 12013i))), vec4<i32>(u_input.d.x & 38416i, -(~0i), ~(-15972i), 2147483647i));
    global2 = array<vec2<i32>, 19>();
    let var_3 = Struct_4(Struct_2(_wgslsmith_div_vec3_f32(vec3<f32>(163f, _wgslsmith_f_op_f32(f32(-1f) * -517f), _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_vec3_f32(ceil(global1.wxx))), var_2, select(select(select(vec4<bool>(true, var_1.x, var_1.x, false), var_1, true), !var_1, all(vec2<bool>(false, var_1.x))), vec4<bool>(!var_1.x, var_1.x, global1.x == arg_0, any(vec2<bool>(var_1.x, false))), true)), ~(~select(-global2[_wgslsmith_index_u32(u_input.a.x, 19u)], select(vec2<i32>(var_2, -20751i), vec2<i32>(u_input.c.x, u_input.c.x), vec2<bool>(var_1.x, false)), select(vec2<bool>(var_1.x, var_1.x), vec2<bool>(true, var_1.x), var_1.x))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1000f)) - _wgslsmith_f_op_f32(arg_0 * 739f)), global1.x), _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1514f)), false)))), Struct_3(true, var_1, 44433i, -2176f));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_3.a.a.x, global1.x, global1.x, 434f))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_1, -1526f, -660f)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global1.x + arg_0), -562f, _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-arg_0)))));
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: f32, arg_3: Struct_4) -> f32 {
    global2 = array<vec2<i32>, 19>();
    global1 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_f32(func_2(arg_3.c, false)), arg_3.a.a.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(512f, global1.x, arg_3.d.d, arg_3.a.a.x))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(308f, arg_0, 958f, global1.x) * vec4<f32>(arg_0, -693f, global1.x, 1005f)) * _wgslsmith_div_vec4_f32(vec4<f32>(arg_2, 625f, arg_3.c, arg_3.c), vec4<f32>(arg_0, 411f, arg_2, 1157f)))))));
    let var_0 = Struct_5(_wgslsmith_sub_i32(1i, _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(arg_1.b, vec4<i32>(u_input.b, -905i, -2147483647i, 66618i), arg_1.b), countOneBits(arg_1.b))) <= abs(min(_wgslsmith_div_i32(u_input.d.x, 3272i), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.b.x, u_input.b, arg_3.a.b, arg_1.b.x), vec4<i32>(31749i, 30117i, arg_3.b.x, arg_3.b.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_2))) - _wgslsmith_f_op_f32(-arg_0))), arg_3.d, abs(45209i), vec3<u32>(u_input.a.x, arg_1.a, reverseBits(~9366u)));
    var var_1 = vec3<bool>(arg_3.d.a, var_0.a, false);
    let var_2 = Struct_3(any(select(arg_3.d.b, !arg_3.d.b, !all(arg_3.d.b))), !var_0.c.b, _wgslsmith_add_i32(_wgslsmith_add_i32(arg_1.b.x, -_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.b.x, arg_1.b.x, arg_1.b.x), vec3<i32>(arg_3.d.c, 2147483647i, var_0.c.c))), -1i), -354f);
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 23100u;
    global3 = _wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(-global1.x));
    global1 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(183f, global1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(579f, Struct_1(0u, vec4<i32>(u_input.c.x, -2147483647i, u_input.d.x, -11986i), vec4<u32>(14401u, u_input.a.x, u_input.a.x, u_input.a.x)), global1.x, Struct_4(Struct_2(vec3<f32>(-713f, 3038f, -195f), -13531i, vec4<bool>(false, false, true, true)), vec2<i32>(8746i, 1i), 670f, Struct_3(false, vec4<bool>(true, false, false, false), u_input.d.x, global1.x)))) - -652f), _wgslsmith_f_op_f32(1f * global1.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_div_f32(1893f, -595f)))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.x, global1.x, -2443f, global1.x), vec4<f32>(1839f, global1.x, 494f, 642f), vec4<bool>(true, false, false, false))) - vec4<f32>(-1000f, 711f, global1.x, global1.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(379f, 171f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, 197f, global1.x, global1.x))), vec4<bool>(true, true, true, true)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(global1.x, -1125f, global1.x, 1482f), vec4<f32>(407f, 1149f, global1.x, -2555f)))))))));
    let var_1 = min(u_input.d.x, -1i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x + global1.x))))), ~vec2<u32>(reverseBits(111559u), _wgslsmith_dot_vec4_u32(vec4<u32>(34510u, u_input.a.x, u_input.a.x, u_input.a.x), _wgslsmith_sub_vec4_u32(vec4<u32>(467u, u_input.a.x, 47820u, 0u), vec4<u32>(4294967295u, u_input.a.x, 24620u, u_input.a.x)))), _wgslsmith_f_op_f32(sign(global1.x)));
}

