struct Struct_1 {
    a: vec4<f32>,
    b: f32,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: f32,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 17>;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: vec3<f32>, arg_3: u32) -> bool {
    var var_0 = !vec3<bool>(!(min(arg_3, 21687u) < ~u_input.d), any(vec3<bool>(true, true, true)), false);
    let var_1 = -203f;
    var_0 = !vec3<bool>(var_0.x, all(!(!global0[_wgslsmith_index_u32(11790u, 17u)])), true);
    let var_2 = _wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_div_i32(-8996i, ~2147483647i), u_input.a.x), -_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b, u_input.b), -u_input.a.zx, _wgslsmith_add_vec2_i32(u_input.a.xz, vec2<i32>(8254i, u_input.b)))) << (countOneBits(u_input.c) % vec2<u32>(32u));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) - 1008f);
    return var_0.x || ((var_0.x | var_0.x) || false);
}

fn func_2(arg_0: vec3<bool>, arg_1: i32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(969f, -605f, 1460f, -1000f))), vec4<f32>(_wgslsmith_f_op_f32(959f * 825f), _wgslsmith_f_op_f32(min(-1009f, 362f)), _wgslsmith_f_op_f32(f32(-1f) * -1246f), _wgslsmith_f_op_f32(step(-1074f, -1113f))), false))));
    global0 = array<vec3<bool>, 17>();
    var var_1 = any(arg_0.xz);
    var_1 = any(select(select(vec4<bool>(arg_0.x, true, true, arg_1 <= 0i), vec4<bool>(arg_0.x, !arg_0.x, arg_0.x, arg_0.x), func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, var_0.x, var_0.x, var_0.x)), Struct_2(var_0.yx), _wgslsmith_f_op_vec3_f32(var_0.zxz + var_0.ywz), 178u)), vec4<bool>(true, arg_0.x, true, arg_0.x), !vec4<bool>(false, true, false, arg_0.x)));
    let var_2 = Struct_2(var_0.wx);
    return Struct_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_2.a.x, 541f, var_0.x)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a.x, var_2.a.x, var_0.x, -1145f) + vec4<f32>(-1000f, var_2.a.x, 424f, var_0.x))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a.x, 600f, 298f, var_0.x)) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.a.x, var_0.x, -184f, 392f), vec4<f32>(1018f, 167f, var_0.x, -473f), arg_0.x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a.x, _wgslsmith_div_f32(307f, var_2.a.x), _wgslsmith_f_op_f32(3673f * var_0.x), -906f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_2.a.x)) * var_2.a.x), var_2.a.x));
}

fn func_4(arg_0: u32, arg_1: Struct_1) -> Struct_1 {
    global0 = array<vec3<bool>, 17>();
    var var_0 = ~(~(-max(vec4<i32>(u_input.b, 1i, u_input.a.x, -1i), vec4<i32>(u_input.b, u_input.a.x, -49395i, u_input.a.x))));
    var var_1 = Struct_2(_wgslsmith_div_vec2_f32(arg_1.a.xz, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(min(arg_1.a.zy, arg_1.a.wz)), vec2<f32>(arg_1.b, -1000f))), vec2<f32>(arg_1.b, arg_1.b), !select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false))))));
    var_0 = select(~vec4<i32>(28831i, 5372i << (arg_0 % 32u), _wgslsmith_add_i32(21717i, _wgslsmith_dot_vec3_i32(var_0.yyy, u_input.a)), _wgslsmith_clamp_i32(~u_input.a.x, -var_0.x, ~(-2627i))), ~(-vec4<i32>(~5042i, max(2147483647i, var_0.x), var_0.x, -var_0.x)), any(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, arg_0), 17u)]));
    let var_2 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(143f * _wgslsmith_f_op_f32(287f + arg_1.b)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-502f, 829f) + _wgslsmith_f_op_f32(-330f + var_1.a.x)))), var_1.a.x));
    return arg_1;
}

fn func_1(arg_0: vec4<bool>, arg_1: bool, arg_2: i32, arg_3: Struct_2) -> bool {
    global0 = array<vec3<bool>, 17>();
    var var_0 = ~abs(~vec2<i32>(-8741i, ~arg_2));
    let var_1 = func_4(2573u, func_2(select(!(!arg_0.ywx), vec3<bool>(arg_0.x, all(vec2<bool>(arg_0.x, false)), arg_1), select(vec3<bool>(true, true, true), select(vec3<bool>(true, arg_0.x, arg_1), arg_0.yyx, arg_0.x), !global0[_wgslsmith_index_u32(u_input.d, 17u)])), 1i));
    var var_2 = _wgslsmith_f_op_f32(step(1291f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(arg_3.a.x, 744f))))));
    var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_2(select(arg_0.yxx, select(vec3<bool>(arg_1, false, true), arg_0.yww, arg_0.x), vec3<bool>(arg_0.x, false, false)), 1i).a.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_3.a.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-388f)), _wgslsmith_f_op_f32(-var_1.a.x)), false));
    return select(arg_1, func_3(vec4<f32>(_wgslsmith_f_op_f32(sign(-1186f)), var_1.b, _wgslsmith_f_op_f32(f32(-1f) * -409f), var_1.a.x), arg_3, _wgslsmith_f_op_vec3_f32(var_1.a.xyy - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.a.x, var_1.b, arg_3.a.x))), 4294967295u), any(vec2<bool>(true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(1401f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1225f)));
    let var_1 = !select(!vec2<bool>(func_1(vec4<bool>(false, true, false, false), false, u_input.a.x, Struct_2(vec2<f32>(var_0, var_0))), any(global0[_wgslsmith_index_u32(4294967295u, 17u)])), select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), func_3(vec4<f32>(var_0, var_0, -609f, -556f), Struct_2(vec2<f32>(var_0, var_0)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, var_0, -1298f) - vec3<f32>(114f, -1000f, -424f)), ~0u)), select(vec2<bool>(true, true), vec2<bool>(true, false), any(vec4<bool>(false, false, true, true))));
    let var_2 = 32236u;
    let var_3 = 1u;
    let var_4 = var_0;
    let var_5 = i32(-1i) * -(~u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(var_2, 1u, countOneBits(79793u)), 2147483647i, var_3, u_input.a);
}

