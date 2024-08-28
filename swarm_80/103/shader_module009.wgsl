struct Struct_1 {
    a: bool,
    b: f32,
    c: vec2<f32>,
    d: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 25>;

var<private> global1: array<vec3<i32>, 3> = array<vec3<i32>, 3>(vec3<i32>(1i, 47389i, 16850i), vec3<i32>(16275i, -1i, 2147483647i), vec3<i32>(3924i, 0i, 1i));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    global1 = array<vec3<i32>, 3>();
    global0 = array<Struct_1, 25>();
    global1 = array<vec3<i32>, 3>();
    global1 = array<vec3<i32>, 3>();
    global1 = array<vec3<i32>, 3>();
    return global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(1u, abs(~u_input.c.x)), 25u)];
}

fn func_3() -> u32 {
    var var_0 = func_1(func_1(global0[_wgslsmith_index_u32(select(_wgslsmith_sub_u32(u_input.c.x, u_input.c.x) & _wgslsmith_dot_vec2_u32(u_input.c.yy, vec2<u32>(u_input.c.x, 1u)), abs(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.c.x), vec2<u32>(u_input.c.x, 4294967295u))), true != (u_input.c.x <= 29753u)), 25u)]));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(1860f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-932f)))) + 544f);
    var_0 = Struct_1(~abs(var_0.d) > 27125u, -368f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(floor(var_0.c)))) - var_0.c), 0u);
    var var_2 = var_0.a;
    global1 = array<vec3<i32>, 3>();
    return func_1(global0[_wgslsmith_index_u32(var_0.d & reverseBits(countOneBits(1u)), 25u)]).d;
}

fn func_4(arg_0: bool, arg_1: vec4<bool>, arg_2: bool, arg_3: vec4<i32>) -> vec3<bool> {
    let var_0 = !arg_1.yx;
    var var_1 = abs(~0u);
    global1 = array<vec3<i32>, 3>();
    var var_2 = _wgslsmith_add_vec2_i32(abs(-firstLeadingBit(arg_3.xz)), vec2<i32>(arg_3.x, min(_wgslsmith_add_i32(_wgslsmith_div_i32(-18219i, -5403i), 17335i), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, arg_3.x), arg_3.yw) | (u_input.a.x & -2147483647i))));
    var var_3 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(632f, -1932f), vec2<f32>(-413f, 629f))))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 673f))))))));
    return select(vec3<bool>(arg_1.x, select(!arg_0 || (var_3.x != -726f), arg_0, true), arg_2), !arg_1.xyw, select(select(!arg_1.xxx, arg_1.wwz, true), arg_1.zxw, !vec3<bool>(any(arg_1), 1645f >= var_3.x, var_2.x != u_input.b.x)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: Struct_1) -> StorageBuffer {
    var var_0 = !(!func_4(all(!vec4<bool>(false, arg_0.a, false, arg_1.a)), vec4<bool>(u_input.b.x > u_input.a.x, arg_0.a, arg_0.a && arg_1.a, arg_3.a), ~1u != func_3(), firstTrailingBit(vec4<i32>(u_input.b.x, u_input.b.x, u_input.a.x, u_input.a.x)) | ~vec4<i32>(u_input.a.x, u_input.b.x, 29158i, u_input.a.x)));
    global0 = array<Struct_1, 25>();
    global1 = array<vec3<i32>, 3>();
    var_0 = vec3<bool>(true, !arg_1.a, !(!func_4(arg_0.a && true, !vec4<bool>(true, arg_1.a, arg_0.a, arg_3.a), var_0.x, reverseBits(vec4<i32>(2147483647i, u_input.d, u_input.d, u_input.d))).x));
    var var_1 = func_1(func_1(arg_0));
    return StorageBuffer(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.b, arg_0.c.x, -784f) + _wgslsmith_div_vec3_f32(vec3<f32>(1705f, -283f, 951f), vec3<f32>(arg_0.b, -517f, arg_1.b)))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(-1471f, 861f, -237f), vec3<f32>(arg_0.b, arg_3.c.x, 653f)))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-927f, 364f, -1000f) + vec3<f32>(var_1.c.x, -1481f, -571f)))))), select(select(select(vec3<bool>(true, true, arg_3.a), vec3<bool>(false, var_0.x, false), vec3<bool>(true, true, arg_3.a)), vec3<bool>(false, false, true), -1670f < arg_0.c.x), vec3<bool>(true, func_1(Struct_1(arg_1.a, arg_0.b, vec2<f32>(-1000f, arg_0.b), var_1.d)).a, true), false))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec4<i32>(-13334i, 31110i, u_input.d, min(24562i, u_input.a.x)), ~(-vec4<i32>(_wgslsmith_sub_i32(u_input.b.x, u_input.a.x), u_input.b.x, i32(-1i) * -12518i, u_input.b.x)), vec4<bool>(true, true, true, false));
    var var_1 = _wgslsmith_sub_vec2_u32(vec2<u32>(13145u, 4294967295u), u_input.c.xz) & (vec2<u32>(1u, _wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, u_input.c.x), u_input.c.ww)) >> (_wgslsmith_sub_vec2_u32(~countOneBits(u_input.c.wx), ~u_input.c.xy) % vec2<u32>(32u)));
    global1 = array<vec3<i32>, 3>();
    var var_2 = u_input.a;
    var var_3 = u_input.a.x;
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-232f * _wgslsmith_f_op_f32(f32(-1f) * -347f)), 1f, false)) + 393f));
    let x = u_input.a;
    s_output = func_2(global0[_wgslsmith_index_u32(u_input.c.x | select(var_1.x, ~u_input.c.x, u_input.c.x <= ~var_1.x), 25u)], func_1(global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(abs(u_input.c.x), 1u), 25u)]), u_input.c.zxz, func_1(func_1(Struct_1(true, _wgslsmith_f_op_f32(min(-1000f, 1033f)), vec2<f32>(566f, 1249f), 0u >> (var_1.x % 32u)))));
}

