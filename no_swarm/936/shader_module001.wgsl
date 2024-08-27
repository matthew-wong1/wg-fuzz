struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: u32,
    c: bool,
    d: vec2<i32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 29>;

var<private> global1: array<i32, 26>;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: vec3<f32>) -> i32 {
    var var_0 = Struct_1(-14215i, select(select(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true), vec3<bool>(any(vec4<bool>(false, true, true, true)), true, true), true), !vec3<bool>(true, all(vec3<bool>(true, true, true)), true), true), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x))) + vec4<f32>(arg_0.x, -801f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) + _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.x))))));
    let var_1 = 0u;
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-218f, 1f, arg_0.x)), _wgslsmith_f_op_vec3_f32(-var_0.c.zxx), var_0.b.x)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.c.www * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-270f, arg_0.x, arg_0.x))))));
    var var_3 = Struct_4(vec4<f32>(841f, _wgslsmith_f_op_f32(-var_0.c.x), var_0.c.x, _wgslsmith_f_op_f32(round(-666f))), Struct_1(6776i, select(select(var_0.b, var_0.b, select(vec3<bool>(false, var_0.b.x, var_0.b.x), vec3<bool>(true, true, var_0.b.x), false)), !vec3<bool>(true, var_0.b.x, var_0.b.x), !var_0.b.x & !var_0.b.x), vec4<f32>(1f, -632f, _wgslsmith_f_op_f32(f32(-1f) * -806f), _wgslsmith_f_op_f32(-arg_0.x))));
    global0 = array<Struct_3, 29>();
    return ~(-1i);
}

fn func_3(arg_0: vec3<f32>, arg_1: bool, arg_2: vec3<bool>) -> f32 {
    global0 = array<Struct_3, 29>();
    global0 = array<Struct_3, 29>();
    let var_0 = vec4<bool>(false, true, !(~59993u > (_wgslsmith_clamp_u32(15080u, 59144u, 66054u) | 1u)), arg_1);
    let var_1 = ~(~select(min(14576u, select(5752u, 1u, true)), 0u, any(vec2<bool>(true, true))));
    let var_2 = ~_wgslsmith_sub_vec4_i32(firstTrailingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(1u, 26u)], -1i, u_input.b.x, global1[_wgslsmith_index_u32(0u, 26u)]) ^ vec4<i32>(-1i, 1278i, 38135i, u_input.a), -vec4<i32>(u_input.b.x, global1[_wgslsmith_index_u32(var_1, 26u)], global1[_wgslsmith_index_u32(1u, 26u)], global1[_wgslsmith_index_u32(var_1, 26u)]))), vec4<i32>(1i, global1[_wgslsmith_index_u32(var_1, 26u)], ~(~(-7352i)), -25238i));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) - arg_0.x);
}

fn func_2() -> i32 {
    global1 = array<i32, 26>();
    global1 = array<i32, 26>();
    let var_0 = true;
    let var_1 = Struct_4(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-397f, 152f, -487f, 397f), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-507f, 2315f, -787f, 606f), vec4<f32>(-423f, -776f, 1566f, 176f))))) + vec4<f32>(1f, _wgslsmith_f_op_f32(select(-592f, -1865f, false)), _wgslsmith_f_op_f32(ceil(1209f)), _wgslsmith_f_op_f32(abs(-454f)))))), Struct_1(countOneBits(u_input.b.x), !vec3<bool>(true, true, var_0 || true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(476f, -357f, -548f, -1293f) + vec4<f32>(-429f, -290f, -197f, 849f)))));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1999f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1261f)) + _wgslsmith_f_op_f32(f32(-1f) * -1316f)), -498f) + -1188f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3(var_1.b.c.zzy, false, select(vec3<bool>(true, true, true), !vec3<bool>(false, var_0, true), true))))));
    return -(~(~_wgslsmith_clamp_i32(var_1.b.a << (0u % 32u), abs(global1[_wgslsmith_index_u32(4294967295u, 26u)]), _wgslsmith_sub_i32(u_input.c.x, global1[_wgslsmith_index_u32(1u, 26u)]))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(vec3<bool>(true, true, true));
    let var_1 = vec4<i32>(~func_1(vec3<f32>(-671f, _wgslsmith_f_op_f32(round(882f)), 1f)), (-func_2() >> (4294967295u % 32u)) << (_wgslsmith_dot_vec3_u32(select(~vec3<u32>(21529u, 38443u, 1u), vec3<u32>(1u, 1u, 1u), true), vec3<u32>(1u, 1u, 1u) << (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u))) % 32u), 1i, 0i);
    var var_2 = firstTrailingBit(~_wgslsmith_div_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 7496u), vec2<u32>(32953u, 22425u)), select(~18010u, 1u, true)));
    var var_3 = !select(vec2<bool>(true, true), select(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true)), true), vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), false), true)), vec2<bool>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, 23897u), vec3<u32>(1u, 37763u, 1u)) != _wgslsmith_dot_vec4_u32(vec4<u32>(30827u, 0u, 1u, 33725u), vec4<u32>(1u, 0u, 4294967295u, 0u)), select(true, false, true) != true));
    var var_4 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec3<f32>(-708f, 2334f, -2968f), true, vec3<bool>(var_3.x, false, var_3.x))))))));
    let var_5 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) - vec4<f32>(-922f, _wgslsmith_f_op_f32(select(364f, -617f, var_3.x)), -1110f, _wgslsmith_f_op_f32(ceil(-747f)))))), vec4<f32>(-1100f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-152f)) * _wgslsmith_f_op_f32(974f + 811f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * 265f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-306f)) + -462f)))));
    var_2 = 0u;
    let var_6 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_5.wy)) - var_5.xw), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-var_5.x), -1505f), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_5.x, var_5.x), vec2<f32>(var_5.x, -249f))), _wgslsmith_f_op_vec2_f32(exp2(var_5.wx)))))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -641f), _wgslsmith_f_op_f32(-var_5.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_5.zx * var_5.ww), _wgslsmith_f_op_vec2_f32(-vec2<f32>(992f, 897f))) * var_5.xx), all(!(!vec4<bool>(true, var_3.x, var_3.x, var_3.x))))), select(vec2<bool>(true, !(-9107i >= global1[_wgslsmith_index_u32(0u, 26u)])), !(!(!vec2<bool>(var_3.x, var_3.x))), all(!(!vec2<bool>(var_3.x, true))))));
    let x = u_input.a;
    s_output = StorageBuffer(-1000f);
}

