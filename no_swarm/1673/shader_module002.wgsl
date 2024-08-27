struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(i32(-2147483648), -8850i, 29468i, -1384i);

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: vec3<bool>, arg_3: bool) -> u32 {
    let var_0 = u_input.b;
    global0 = abs(select(abs(vec4<i32>(var_0, u_input.b, var_0, var_0) & vec4<i32>(5448i, arg_1.c.a, -22497i, -42031i)) ^ ~(~vec4<i32>(global0.x, -2147483647i, var_0, 1i)), -vec4<i32>(-8849i, -u_input.b, _wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, -1i, -1i, 7146i), vec4<i32>(-1i, var_0, -2147483647i, var_0)), _wgslsmith_div_i32(u_input.b, -1i)), !select(select(vec4<bool>(true, arg_0, arg_2.x, false), vec4<bool>(arg_2.x, true, true, true), vec4<bool>(false, arg_2.x, true, true)), !vec4<bool>(false, true, true, arg_0), any(vec4<bool>(true, arg_0, false, arg_3)))));
    var var_1 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-804f - 813f) * _wgslsmith_f_op_f32(-209f + -768f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-144f * _wgslsmith_f_op_f32(max(-464f, 979f))))), _wgslsmith_f_op_f32(step(-525f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f)))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)), select(vec3<bool>(arg_3, true, !all(arg_2)), vec3<bool>(all(!vec3<bool>(arg_0, true, false)), 119000u <= ~u_input.a.x, true), select(select(select(arg_2, arg_2, vec3<bool>(true, arg_2.x, arg_3)), arg_2, arg_2.x), arg_2, arg_2.x))));
    var var_2 = abs(reverseBits(1u));
    var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1.x - var_1.x)))), var_1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_1.x, -302f)), _wgslsmith_f_op_f32(max(var_1.x, _wgslsmith_f_op_f32(-var_1.x))))) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-152f, var_1.x, var_1.x))))));
    return ~min(~4294967295u, min(~0u >> (_wgslsmith_sub_u32(u_input.a.x, u_input.a.x) % 32u), u_input.a.x));
}

fn func_2(arg_0: vec4<f32>) -> vec4<u32> {
    return vec4<u32>(func_3(true, Struct_2(Struct_1(2147483647i), Struct_1(~46128i), Struct_1(~u_input.b)), vec3<bool>(true, any(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), false)), false), true), u_input.a.x, 10899u, _wgslsmith_sub_u32(~u_input.a.x, ~abs(~u_input.a.x)));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec2<u32>, arg_2: f32, arg_3: vec3<i32>) -> i32 {
    var var_0 = vec4<u32>(arg_1.x, arg_1.x, arg_0.x, 4294967295u);
    var var_1 = _wgslsmith_mult_vec4_u32(func_2(vec4<f32>(arg_2, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_2))), arg_2, arg_2)), _wgslsmith_add_vec4_u32(~select(u_input.a, vec4<u32>(21356u, 11406u, 22712u, 5315u), true), select(func_2(vec4<f32>(-660f, arg_2, arg_2, 850f)), ~u_input.a, any(vec4<bool>(false, false, false, false)))) >> (~u_input.a % vec4<u32>(32u)));
    var_1 = ~(~u_input.a);
    var_0 = min(select(_wgslsmith_mult_vec4_u32(vec4<u32>(~8703u, countOneBits(7585u), 1u, 4294967295u), select(vec4<u32>(43262u, 4294967295u, var_0.x, 1u), firstLeadingBit(u_input.a), true)), ~(~vec4<u32>(0u, var_0.x, arg_0.x, var_1.x) ^ min(vec4<u32>(8158u, 31533u, arg_1.x, 1u), vec4<u32>(arg_0.x, 1u, arg_0.x, arg_1.x))), true), vec4<u32>(~arg_1.x, arg_0.x, 4294967295u & _wgslsmith_mult_u32(arg_0.x, arg_0.x), 80459u));
    let var_2 = Struct_1(1i);
    return _wgslsmith_div_i32((reverseBits(-18497i) << (func_3(true, Struct_2(Struct_1(var_2.a), Struct_1(1i), Struct_1(23259i)), select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), true), true) % 32u)) ^ abs(_wgslsmith_div_i32(~arg_3.x, max(arg_3.x, 1i))), min(-(~1i & _wgslsmith_add_i32(var_2.a, 46602i)), arg_3.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(true, true, ((global0.x & ~global0.x) <= select(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.b, global0.x, global0.x), vec4<i32>(2606i, u_input.b, global0.x, u_input.b)), func_1(u_input.a.xw, u_input.a.zx, -698f, global0.yxw), true)) & true);
    let var_1 = global0.x;
    let var_2 = select(global0.xyy, global0.xwz, var_0.x);
    var_0 = select(vec3<bool>(!var_0.x, select(false, var_0.x, _wgslsmith_f_op_f32(floor(2290f)) <= _wgslsmith_f_op_f32(round(941f))), true), !(!vec3<bool>(var_2.x != var_2.x, var_0.x, all(var_0.xy))), vec3<bool>(true, any(!(!vec4<bool>(var_0.x, true, false, false))), any(select(select(vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(var_0.x, true, true), var_0.x), !vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(true, true, var_0.x)))));
    let var_3 = u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(global0.zz, _wgslsmith_add_i32(6540i, -abs(-45834i)), 2147483647i);
}

