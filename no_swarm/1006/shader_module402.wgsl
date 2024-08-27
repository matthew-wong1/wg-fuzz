struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: vec3<f32>,
    d: i32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec4<bool>,
    c: vec4<f32>,
    d: vec3<f32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: f32,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: bool, arg_1: Struct_3, arg_2: Struct_1) -> i32 {
    let var_0 = Struct_3(vec3<bool>(all(select(arg_1.a, vec3<bool>(arg_2.a, false, false), !vec3<bool>(arg_2.a, true, arg_1.a.x))), !all(!vec4<bool>(arg_0, arg_1.a.x, arg_2.a, true)), false), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(arg_2.c, arg_2.c, arg_2.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(arg_1.c, vec3<f32>(arg_1.c.x, -1689f, -110f)))))));
    let var_1 = select(select(select(select(select(arg_1.a, vec3<bool>(arg_2.a, false, true), vec3<bool>(true, arg_0, false)), !vec3<bool>(var_0.a.x, var_0.a.x, arg_2.a), true), vec3<bool>(arg_2.d <= arg_2.d, select(arg_1.a.x, false, false), arg_1.a.x), !(!var_0.a.x)), select(var_0.a, arg_1.a, all(!vec3<bool>(true, var_0.a.x, arg_2.a))), true), vec3<bool>(arg_0, true, false), any(vec3<bool>(any(var_0.a), arg_2.a, true)));
    var var_2 = arg_2.c.x;
    var_2 = _wgslsmith_f_op_f32(f32(-1f) * -191f);
    var_2 = _wgslsmith_f_op_f32(f32(-1f) * -493f);
    return -2147483647i;
}

fn func_2(arg_0: vec3<f32>) -> vec2<bool> {
    var var_0 = reverseBits(~countOneBits(vec2<i32>(1i, 1i)));
    var_0 = ~vec2<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(var_0.x, -1647i), vec2<i32>(var_0.x, var_0.x)), reverseBits(vec2<i32>(6118i, var_0.x))) >> (u_input.b.x % 32u), func_3(true, Struct_3(vec3<bool>(false, false, true), _wgslsmith_f_op_f32(sign(arg_0.x)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_0.x, arg_0.x, arg_0.x), vec3<f32>(arg_0.x, arg_0.x, arg_0.x)))), Struct_1(true, _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b.x, 6271u), vec2<u32>(50183u, 1u)), _wgslsmith_f_op_vec3_f32(arg_0 + vec3<f32>(arg_0.x, -204f, -1696f)), 0i, vec3<u32>(u_input.b.x, u_input.c, u_input.c) & vec3<u32>(0u, 0u, u_input.b.x))));
    var_0 = vec2<i32>(~2147483647i, -22327i);
    var var_1 = arg_0.x;
    var_0 = firstTrailingBit(_wgslsmith_mod_vec2_i32(vec2<i32>(var_0.x, -47810i << (_wgslsmith_add_u32(173u, u_input.c) % 32u)), vec2<i32>(_wgslsmith_add_i32(1i, ~(-11138i)), func_3(true, Struct_3(vec3<bool>(false, false, true), 362f, vec3<f32>(-1384f, arg_0.x, 1000f)), Struct_1(false, vec2<u32>(0u, 4294967295u), vec3<f32>(arg_0.x, arg_0.x, arg_0.x), 1i, vec3<u32>(0u, u_input.a, 12820u))))));
    return vec2<bool>(true, true);
}

fn func_1(arg_0: vec4<i32>, arg_1: u32) -> f32 {
    var var_0 = !select(!select(vec2<bool>(true, true), vec2<bool>(false, true), u_input.a <= arg_1), vec2<bool>(true, true), func_2(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -763f, 608f) * vec3<f32>(-432f, 767f, 455f))))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1785f, -1011f)))), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1700f, -931f)), _wgslsmith_f_op_f32(f32(-1f) * -778f)), -1102f)));
    let var_2 = Struct_3(select(vec3<bool>(true, var_0.x, var_0.x || (var_0.x || true)), vec3<bool>(true, true, select(any(vec4<bool>(false, false, var_0.x, var_0.x)), !var_0.x, !var_0.x)), !select(vec3<bool>(var_0.x, true, var_0.x), !vec3<bool>(var_0.x, var_0.x, false), select(vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(false, false, false), vec3<bool>(var_0.x, var_0.x, true)))), var_1.x, vec3<f32>(_wgslsmith_f_op_f32(exp2(var_1.x)), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.x))) * var_1.x)));
    let var_3 = Struct_2((~(-1i) < func_3(all(vec2<bool>(true, true)), var_2, Struct_1(var_2.a.x, u_input.b, var_2.c, -1i, vec3<u32>(arg_1, u_input.c, u_input.c)))) & !func_2(vec3<f32>(var_2.b, 915f, var_2.c.x)).x, !select(vec4<bool>(true, !var_2.a.x, func_2(var_2.c).x, !var_0.x), vec4<bool>(any(vec4<bool>(false, var_2.a.x, false, var_2.a.x)), false, false, !var_2.a.x), var_2.a.x), vec4<f32>(_wgslsmith_f_op_f32(1285f * var_1.x), var_1.x, _wgslsmith_f_op_f32(-var_2.b), -143f), vec3<f32>(1598f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(302f, var_1.x, var_0.x)), 458f)), _wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(-var_1.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.c.x), var_2.c.x)));
    let var_4 = _wgslsmith_f_op_f32(-var_1.x);
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~4294967295u;
    var var_1 = Struct_2(_wgslsmith_f_op_f32(1f + 1f) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-759f + -706f))) - -986f), vec4<bool>(true, true, true, true), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -874f), _wgslsmith_f_op_f32(1736f - -1093f)))), _wgslsmith_f_op_f32(-1075f - _wgslsmith_f_op_f32(func_1(max(vec4<i32>(50134i, -2147483647i, -9966i, 0i), vec4<i32>(6705i, 878i, 20414i, -1i)), u_input.b.x))), _wgslsmith_f_op_f32(f32(-1f) * -217f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1856f)))), vec3<f32>(_wgslsmith_f_op_f32(trunc(1f)), _wgslsmith_f_op_f32(f32(-1f) * -1111f), _wgslsmith_f_op_f32(-410f * _wgslsmith_f_op_f32(min(-829f, _wgslsmith_f_op_f32(abs(531f)))))));
    var var_2 = -2147483647i;
    let var_3 = Struct_1(false, u_input.b, _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, _wgslsmith_f_op_f32(func_1(~vec4<i32>(1i, 36256i, 43777i, -2147483647i), ~0u)), 102f) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.d) * _wgslsmith_div_vec3_f32(vec3<f32>(var_1.c.x, -1014f, -1356f), var_1.d)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_1.d.x, 1364f, var_1.c.x)))))), _wgslsmith_dot_vec4_i32(-abs(vec4<i32>(30869i, -1i, -1i, -49961i)), -vec4<i32>(-2147483647i, 2147483647i, -36367i, 56841i)) ^ ~max(firstLeadingBit(5859i), countOneBits(16264i)), ~_wgslsmith_clamp_vec3_u32(~firstLeadingBit(vec3<u32>(u_input.c, u_input.c, u_input.c)), abs(countOneBits(vec3<u32>(1651u, 4783u, u_input.b.x))), select(~vec3<u32>(u_input.a, u_input.c, 15777u), min(vec3<u32>(36336u, u_input.c, u_input.c), vec3<u32>(u_input.b.x, 1u, u_input.c)), !var_1.b.x)));
    let var_4 = var_1.b.wxx;
    var_2 = max(-var_3.d, _wgslsmith_sub_i32(~_wgslsmith_clamp_i32(var_3.d, -2147483647i, var_3.d & var_3.d), -38166i));
    var var_5 = select(vec2<bool>(true, u_input.b.x > ~(~u_input.c)), !func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, var_1.c.x, 1000f))), !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + var_1.d.x)) <= _wgslsmith_f_op_f32(-var_1.c.x)));
    let x = u_input.a;
    s_output = StorageBuffer(~select(abs(vec4<u32>(var_3.e.x, 4294967295u, 4294967295u, 4294967295u)), vec4<u32>(var_3.e.x, 0u, var_3.e.x, var_3.b.x), vec4<bool>(false, true, true, false)) | _wgslsmith_mult_vec4_u32(select(vec4<u32>(var_3.b.x, 0u, u_input.a, u_input.c), ~vec4<u32>(u_input.b.x, var_3.b.x, var_3.e.x, u_input.b.x), vec4<bool>(true, var_5.x, var_1.a, var_4.x)), vec4<u32>(1u, ~u_input.b.x, _wgslsmith_mult_u32(u_input.c, 85635u), ~u_input.c)));
}

