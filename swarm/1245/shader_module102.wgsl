struct Struct_1 {
    a: bool,
    b: i32,
    c: u32,
    d: bool,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec3<f32>;

var<private> global2: vec4<i32>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<bool>) -> u32 {
    global0 = false & (arg_0.x & true);
    global0 = false;
    global1 = vec3<f32>(787f, global1.x, -104f);
    var var_0 = u_input.a.x;
    let var_1 = vec3<i32>(0i, firstTrailingBit(global2.x), -2147483647i);
    return 0u;
}

fn func_2(arg_0: Struct_4, arg_1: vec3<bool>, arg_2: Struct_2, arg_3: vec3<i32>) -> u32 {
    let var_0 = abs(0u) & _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(func_3(vec4<bool>(true, arg_1.x, arg_2.a.d, false)), _wgslsmith_sub_u32(u_input.b, arg_2.a.e.x), 1u, u_input.b)), vec4<u32>(arg_2.a.e.x, ~(~u_input.b), ~arg_2.a.c, 0u));
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(-global1.x)) < _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global1.x + global1.x), 1f)), ~(-_wgslsmith_dot_vec4_i32(arg_2.b, arg_2.b)), 4294967295u, true | (!arg_1.x == true), _wgslsmith_sub_vec2_u32(reverseBits(vec2<u32>(u_input.c.x, var_0)), vec2<u32>(arg_2.a.e.x >> (arg_2.a.e.x % 32u), ~u_input.c.x))), _wgslsmith_clamp_vec4_i32(-vec4<i32>(-1i, arg_2.a.b, -1i, arg_3.x) | _wgslsmith_mod_vec4_i32(vec4<i32>(-4270i, arg_3.x, 1i, 0i), vec4<i32>(u_input.a.x, -2147483647i, 0i, 1i)), _wgslsmith_mod_vec4_i32(vec4<i32>(min(u_input.a.x, arg_3.x), global2.x, _wgslsmith_sub_i32(arg_3.x, u_input.a.x), 17454i), vec4<i32>(1i & u_input.a.x, global2.x, global2.x, ~4912i)), vec4<i32>(15265i, u_input.a.x, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(u_input.a.x, arg_3.x, global2.x, arg_2.a.b)), arg_2.b >> (vec4<u32>(58881u, 1u, u_input.c.x, arg_0.a) % vec4<u32>(32u))), max(2147483647i, global2.x) ^ 1i)));
    var var_2 = vec2<f32>(793f, global1.x);
    global0 = arg_1.x;
    var var_3 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(1924f, var_2.x, -395f, 287f) + vec4<f32>(3289f, global1.x, global1.x, var_2.x)))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, var_2.x, var_2.x, 1068f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(603f, 778f, var_2.x, var_2.x) - vec4<f32>(global1.x, 737f, 980f, global1.x))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, global1.x, -926f, -1025f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, -105f, var_2.x, var_2.x) - vec4<f32>(-441f, global1.x, 922f, var_2.x)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global1.x, -667f, -551f, -1097f)))), vec4<f32>(_wgslsmith_f_op_f32(var_2.x + global1.x), _wgslsmith_f_op_f32(459f * -722f), _wgslsmith_f_op_f32(-679f * 475f), -476f))), vec4<bool>(firstTrailingBit(arg_2.b.x) > ~arg_3.x, select(var_1.a.a && arg_2.a.d, true, var_2.x != 383f), all(select(arg_1, vec3<bool>(true, false, arg_2.a.d), vec3<bool>(var_1.a.d, false, true))), var_2.x < 333f)))));
    return func_3(select(vec4<bool>(all(select(arg_1, vec3<bool>(arg_2.a.a, true, true), vec3<bool>(true, true, arg_2.a.d))), true, var_1.a.d, 45034u < _wgslsmith_add_u32(arg_0.a, var_0)), vec4<bool>(false, all(arg_1), true, arg_2.a.d), arg_1.x));
}

fn func_1(arg_0: Struct_2, arg_1: f32) -> vec4<f32> {
    let var_0 = ~(~(_wgslsmith_dot_vec2_u32(arg_0.a.e, u_input.c) & u_input.d) >> ((70732u ^ func_2(Struct_4(u_input.b), !vec3<bool>(arg_0.a.d, arg_0.a.a, false), Struct_2(Struct_1(true, 6873i, u_input.b, arg_0.a.d, vec2<u32>(u_input.b, 1u)), arg_0.b), countOneBits(global2.zxz))) % 32u));
    var var_1 = !(!vec4<bool>(arg_0.a.d, arg_0.a.d | (arg_0.a.c == 40239u), any(vec3<bool>(arg_0.a.a, arg_0.a.d, true)), !arg_0.a.d));
    var_1 = vec4<bool>(select(all(select(vec2<bool>(var_1.x, true), !var_1.yz, var_1.zy)), (u_input.a.x < max(-1i, global2.x)) == true, ~(~6201u) < u_input.c.x), true, !var_1.x, true);
    let var_2 = Struct_3(arg_0.a);
    global0 = any(var_1.zz) | !arg_0.a.d;
    return _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-438f, -212f, arg_1, arg_1)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = any(!vec2<bool>(true, true && (global1.x != global1.x)));
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(508f, 731f, -1954f))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-811f, global1.x, global1.x), vec3<f32>(-1710f, -1708f, global1.x))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, global1.x, global1.x) + vec3<f32>(global1.x, 368f, -295f))) - vec3<f32>(167f, _wgslsmith_f_op_f32(-global1.x), -381f))));
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, -1490f, 1277f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(func_1(Struct_2(Struct_1(false, -85270i, u_input.c.x, true, vec2<u32>(u_input.c.x, u_input.d)), vec4<i32>(global2.x, -1i, 12971i, -2147483647i)), global1.x)), _wgslsmith_f_op_vec4_f32(func_1(Struct_2(Struct_1(true, u_input.a.x, 1u, false, u_input.c), vec4<i32>(-15537i, u_input.a.x, 18554i, global2.x)), global1.x)), vec4<bool>(true, true, any(vec3<bool>(false, false, true)), true))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), 4294967295u >= firstTrailingBit(59478u)))) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global1.x, _wgslsmith_f_op_f32(f32(-1f) * -1174f), -1034f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.x, -1254f) + _wgslsmith_f_op_f32(abs(-1041f)))))));
    var var_1 = -1065f;
    global0 = any(select(vec3<bool>(true, select(true, any(vec4<bool>(false, false, true, false)), select(true, true, true)), true), vec3<bool>(any(vec3<bool>(true, true, true)), false, true), -(u_input.a.x << (u_input.d % 32u)) != global2.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(179f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.x)) - _wgslsmith_f_op_vec4_f32(func_1(Struct_2(Struct_1(true, u_input.a.x, 0u, false, u_input.c), vec4<i32>(u_input.a.x, global2.x, u_input.a.x, global2.x)), global1.x)).x))), (u_input.a.x ^ abs(global2.x)) ^ ~(~(-20162i)));
}

