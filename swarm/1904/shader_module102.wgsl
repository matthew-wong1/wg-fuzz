struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec3<bool>,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -44317i;

var<private> global1: array<Struct_2, 29>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: vec2<bool>, arg_3: bool) -> f32 {
    global0 = 1i;
    var var_0 = Struct_1(_wgslsmith_add_i32(countOneBits(1i), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 16075i), vec2<i32>(u_input.a, u_input.a)) & -37765i) > _wgslsmith_div_i32(-u_input.a, _wgslsmith_mult_i32(firstTrailingBit(1i), countOneBits(u_input.a))));
    let var_1 = max(1u, 1u);
    global1 = array<Struct_2, 29>();
    var var_2 = countOneBits(0i);
    return arg_0;
}

fn func_2(arg_0: vec2<u32>, arg_1: vec2<u32>, arg_2: Struct_3) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(arg_2.a.x, _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(f32(-1f) * -409f), _wgslsmith_f_op_f32(1300f + arg_2.a.x), !vec2<bool>(arg_2.d.a, false), arg_2.d.a))), 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-795f + arg_2.a.x))) + arg_2.a.x), -473f) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.a.x, arg_2.a.x, -285f, -999f)), vec4<f32>(_wgslsmith_f_op_f32(select(arg_2.a.x, 888f, true)), _wgslsmith_div_f32(-776f, arg_2.a.x), arg_2.a.x, _wgslsmith_div_f32(-523f, -345f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(196f, _wgslsmith_f_op_f32(sign(arg_2.a.x)), _wgslsmith_div_f32(-295f, -749f), arg_2.a.x) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_2.a.x, 1283f, 1404f, arg_2.a.x), vec4<f32>(-252f, 1361f, arg_2.a.x, arg_2.a.x), vec4<bool>(false, arg_2.b.x, false, arg_2.d.a)))))), false)));
    return Struct_1(arg_2.b.x);
}

fn func_1(arg_0: vec2<f32>, arg_1: vec3<u32>, arg_2: vec2<i32>) -> vec3<bool> {
    var var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(f32(-1f) * -635f), _wgslsmith_f_op_f32(-566f * 844f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1853f, 369f, arg_0.x))) + _wgslsmith_div_vec3_f32(vec3<f32>(arg_0.x, -1391f, arg_0.x), vec3<f32>(arg_0.x, -281f, 1000f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_0.x, -372f, -717f))))), vec3<bool>(any(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false))) | select(true, 2147483647i >= arg_2.x, true), !(min(2147483647i, arg_2.x) >= 0i), select(arg_2.x > abs(u_input.a), all(vec2<bool>(true, true)), true)), 4294967295u, func_2(~((vec2<u32>(arg_1.x, 1u) << (arg_1.zz % vec2<u32>(32u))) << (vec2<u32>(arg_1.x, arg_1.x) % vec2<u32>(32u))), arg_1.zy, Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, arg_0.x, -453f)), vec3<bool>(true, true, true), ~0u, Struct_1(true))));
    let var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(-var_0.a.x)) * var_0.a), var_0.b, 4294967295u, var_0.d);
    var_0 = var_1;
    var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, var_0.a.x, var_0.a.x))) + vec3<f32>(-1316f, _wgslsmith_f_op_f32(step(-2590f, 700f)), _wgslsmith_div_f32(-958f, var_0.a.x))), _wgslsmith_f_op_vec3_f32(-var_0.a), vec3<bool>(true, select(true, true, var_0.b.x & var_1.b.x), !any(vec4<bool>(true, false, true, var_0.b.x))))), vec3<bool>(func_2(arg_1.zx, vec2<u32>(55900u, var_0.c), Struct_3(var_0.a, vec3<bool>(var_0.b.x, false, var_1.b.x), 71610u, Struct_1(false))).a & (1u < var_1.c), all(!(!vec4<bool>(true, var_1.b.x, var_1.d.a, var_1.b.x))), var_0.b.x), ~(~countOneBits(arg_1.x)), var_1.d);
    let var_2 = arg_1;
    return vec3<bool>(!(36572i >= u_input.a), true, !(_wgslsmith_clamp_u32(~4294967295u, 1u | var_2.x, firstTrailingBit(var_1.c)) >= firstTrailingBit(~4294967295u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = u_input.a;
    let var_0 = select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), !func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(871f, 220f), vec2<f32>(-2584f, 152f))), vec3<u32>(1u, 1u, 1u), (vec2<i32>(u_input.a, -1i) >> (vec2<u32>(5933u, 63250u) % vec2<u32>(32u))) >> (vec2<u32>(4294967295u, 49723u) % vec2<u32>(32u))), false);
    global1 = array<Struct_2, 29>();
    var var_1 = Struct_1(true);
    global1 = array<Struct_2, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(2869i, u_input.a | (1i & _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(u_input.a, -38353i, u_input.a)))));
}

