struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 21>;

var<private> global1: vec2<f32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_2, arg_3: vec4<f32>) -> f32 {
    global0 = array<vec4<bool>, 21>();
    return global1.x;
}

fn func_3(arg_0: i32) -> vec2<f32> {
    var var_0 = select(abs(0i), _wgslsmith_dot_vec3_i32(vec3<i32>(countOneBits(arg_0) & arg_0, ~(-2147483647i), arg_0), u_input.b ^ reverseBits(u_input.d)), all(!(!select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false)))));
    var var_1 = global1.x;
    let var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(409f, _wgslsmith_f_op_f32(-global1.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(global1.x)), _wgslsmith_f_op_f32(round(-133f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global1.x, 376f, global1.x), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-2453f, global1.x, global1.x), vec3<f32>(global1.x, 655f, global1.x))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-475f, global1.x, global1.x) * vec3<f32>(global1.x, -155f, -410f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, 1789f, global1.x))))), Struct_1(1000f));
    var_0 = _wgslsmith_mod_i32(arg_0, arg_0);
    let var_3 = var_2;
    return _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_div_f32(300f, _wgslsmith_f_op_f32(max(var_3.b.a, _wgslsmith_f_op_f32(-470f * global1.x)))), 2620f), var_3.a.xy, !(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(-2147483647i, 0i, -61077i), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, arg_0, 1i, 0i), vec4<i32>(arg_0, 62762i, 73829i, 1i))) > (i32(-1i) * -54925i))));
}

fn func_2(arg_0: bool) -> vec3<bool> {
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(global1.x)), _wgslsmith_f_op_f32(1140f * -661f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1088f, -1161f))))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(func_3(u_input.c)))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(-578f, global1.x) * vec2<f32>(1291f, global1.x)))), select(vec2<bool>(arg_0, false), select(vec2<bool>(true, arg_0), !vec2<bool>(arg_0, false), true), true))));
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global1.x, global1.x, -785f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, 2239f, -2841f) + vec3<f32>(global1.x, global1.x, global1.x)), !arg_0)) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1602f - 320f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-270f, -1188f)), _wgslsmith_f_op_f32(-global1.x))), Struct_1(_wgslsmith_f_op_vec2_f32(func_3(max(~u_input.b.x, -1i))).x));
    var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(-678f, -1471f, arg_0)), _wgslsmith_f_op_f32(step(global1.x, global1.x)), -159f), var_0.a)), var_0.b);
    let var_1 = Struct_3(var_0.b);
    var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(1110f, 2329f), _wgslsmith_f_op_f32(f32(-1f) * -198f), _wgslsmith_f_op_f32(-317f + global1.x)))), var_0.b);
    return !select(select(select(select(vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(arg_0, arg_0, false), false), select(vec3<bool>(arg_0, false, false), vec3<bool>(false, true, true), arg_0), arg_0), !select(vec3<bool>(arg_0, false, arg_0), vec3<bool>(arg_0, arg_0, arg_0), false), arg_0), !(!(!vec3<bool>(arg_0, arg_0, arg_0))), arg_0);
}

fn func_4(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: vec3<bool>, arg_3: f32) -> bool {
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(min(arg_0.b.a, global1.x))))) - vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)))), arg_0.b.a));
    global0 = array<vec4<bool>, 21>();
    let var_0 = true;
    global1 = _wgslsmith_f_op_vec2_f32(-arg_0.a.yx);
    let var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(ceil(arg_1.xyy)), arg_0.b);
    return !arg_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1419f) - global1.x) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -405f), _wgslsmith_f_op_f32(-194f * global1.x))), _wgslsmith_f_op_f32(-1793f + global1.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, global1.x) * _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, -360f) - vec2<f32>(global1.x, -1000f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1000f, global1.x), vec2<f32>(-278f, 402f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, -504f))))))));
    var var_0 = true;
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global1.x))), _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x - global1.x)), _wgslsmith_div_f32(global1.x, global1.x)), global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_1(global1.x), Struct_3(Struct_1(global1.x)), Struct_2(vec3<f32>(global1.x, -103f, global1.x), Struct_1(-1446f)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global1.x, -1763f, -1184f, 505f))))))));
    var var_2 = vec3<bool>(select(!any(vec2<bool>(false, true)) && (all(vec2<bool>(false, false)) & true), !all(vec4<bool>(false, true, true, false)) && !(global1.x > var_1.x), !(~u_input.a != u_input.a)), false, !func_4(Struct_2(_wgslsmith_f_op_vec3_f32(floor(var_1.zyx)), Struct_1(-177f)), var_1, !func_2(false), 922f));
    var_2 = vec3<bool>(any(!func_2(var_2.x & true).yz), !(select(global1.x == -1000f, any(global0[_wgslsmith_index_u32(1u, 21u)]), func_4(Struct_2(vec3<f32>(var_1.x, -484f, 1000f), Struct_1(866f)), var_1, vec3<bool>(false, var_2.x, var_2.x), 2026f)) && any(global0[_wgslsmith_index_u32(u_input.a, 21u)])), var_2.x);
    var var_3 = vec4<u32>(min(0u, ~1u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(70993u, u_input.a, 48201u), ~vec3<u32>(u_input.a, 4294967295u, u_input.a) << ((vec3<u32>(62653u, u_input.a, 0u) & vec3<u32>(1u, u_input.a, 1u)) % vec3<u32>(32u))), u_input.a ^ select(u_input.a, u_input.a, var_2.x & any(vec2<bool>(var_2.x, false))), ~(~(16886u & ~u_input.a)));
    let var_4 = !(!select(func_2(var_2.x).zx, var_2.zx, _wgslsmith_f_op_f32(-global1.x) > _wgslsmith_f_op_f32(abs(842f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(var_1.x)), select(vec4<i32>(u_input.d.x, 12397i, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -9417i), vec2<i32>(-2147483647i, u_input.b.x)), _wgslsmith_add_i32(-1i, u_input.b.x)), select((vec4<i32>(u_input.c, u_input.c, -1i, 1i) & vec4<i32>(26288i, 2147483647i, u_input.d.x, -2147483647i)) & (vec4<i32>(u_input.d.x, -2784i, -63691i, u_input.d.x) | vec4<i32>(u_input.c, 2147483647i, u_input.c, u_input.d.x)), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.b.x, u_input.c, 1i, u_input.d.x), vec4<i32>(u_input.c, u_input.b.x, u_input.b.x, u_input.c)) | ~vec4<i32>(-1i, -42806i, u_input.c, 0i), var_4.x), any(!vec4<bool>(var_2.x, true, var_2.x, true))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-851f, 113f, global1.x) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-505f, -1134f, global1.x))))) + vec3<f32>(579f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x + -1659f) - global1.x), global1.x)));
}

