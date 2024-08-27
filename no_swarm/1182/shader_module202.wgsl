struct Struct_1 {
    a: vec2<f32>,
    b: vec4<bool>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec3<f32>) -> f32 {
    return -502f;
}

fn func_4(arg_0: vec3<f32>, arg_1: u32, arg_2: u32, arg_3: f32) -> vec4<bool> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.yz * arg_0.zy)), _wgslsmith_f_op_vec2_f32(-arg_0.xx))), !vec4<bool>(_wgslsmith_add_u32(0u, arg_2) == firstTrailingBit(arg_1), !any(vec4<bool>(false, true, true, false)), true, select(true, true, -502f <= arg_0.x)), u_input.c.zx);
    var var_1 = u_input.d.x;
    var_1 = -_wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(u_input.a.x, -u_input.a.x)), _wgslsmith_clamp_vec2_i32(u_input.a.xx, u_input.a.yy, vec2<i32>(-1i) * -u_input.d.wx));
    var var_2 = Struct_1(vec2<f32>(arg_3, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3 - var_0.a.x)))), vec4<bool>(all(select(!var_0.b.xyy, var_0.b.wzz, true && var_0.b.x)), all(vec3<bool>(var_0.b.x == true, true, select(var_0.b.x, true, true))), any(!select(var_0.b, var_0.b, var_0.b)), !var_0.b.x), abs(~_wgslsmith_add_vec2_u32(~var_0.c, ~u_input.c.ww)));
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1000f, var_2.a.x))) * _wgslsmith_div_vec2_f32(arg_0.yy, var_0.a)))), !(!select(vec4<bool>(var_2.b.x, true, var_0.b.x, true), select(vec4<bool>(false, true, var_2.b.x, true), vec4<bool>(true, var_0.b.x, true, var_0.b.x), true), !var_2.b.x)), firstLeadingBit(vec2<u32>(abs(~u_input.b), ~arg_2)));
    return select(vec4<bool>(true, !var_2.b.x, var_3.b.x, !var_0.b.x && !var_0.b.x), vec4<bool>(false, true, !select(any(vec2<bool>(true, var_2.b.x)), any(vec2<bool>(true, var_0.b.x)), var_0.b.x), true), select(vec4<bool>(true, false, var_0.b.x || (u_input.d.x == -2147483647i), true | any(vec4<bool>(false, var_3.b.x, var_2.b.x, false))), var_3.b, !vec4<bool>(true, true, var_2.b.x, select(true, var_3.b.x, false))));
}

fn func_2(arg_0: Struct_1) -> bool {
    var var_0 = all(select(vec4<bool>(arg_0.b.x, true, !(u_input.d.x == u_input.d.x), true), func_4(vec3<f32>(_wgslsmith_f_op_f32(func_3(arg_0.a, Struct_1(arg_0.a, vec4<bool>(arg_0.b.x, false, true, false), u_input.c.zx), vec3<f32>(arg_0.a.x, 1000f, arg_0.a.x))), -1087f, _wgslsmith_f_op_f32(trunc(arg_0.a.x))), 1u, ~1u, _wgslsmith_f_op_f32(f32(-1f) * -1297f)), select(!arg_0.b, arg_0.b, true)));
    return !arg_0.b.x;
}

fn func_1(arg_0: vec3<f32>, arg_1: f32, arg_2: vec3<i32>, arg_3: Struct_1) -> vec3<bool> {
    var var_0 = vec4<bool>(arg_2.x <= ~((i32(-1i) * -38263i) ^ u_input.a.x), !(any(vec3<bool>(arg_3.b.x, arg_3.b.x, arg_3.b.x)) & !(arg_3.b.x || true)), !all(vec2<bool>(func_2(arg_3), true & arg_3.b.x)), !arg_3.b.x);
    let var_1 = vec3<u32>(u_input.b, arg_3.c.x ^ abs(u_input.c.x), select(47658u, u_input.b, true));
    let var_2 = arg_0.x;
    var_0 = !arg_3.b;
    let var_3 = select(max(_wgslsmith_div_i32(u_input.a.x, arg_2.x), arg_2.x), select(~_wgslsmith_add_i32(u_input.d.x, 1i), ~arg_2.x, func_4(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-2268f, var_2, arg_3.a.x))), 1u, ~var_1.x, -1000f).x) & (_wgslsmith_div_i32(i32(-1i) * -50622i, -15316i) << (arg_3.c.x % 32u)), false);
    return arg_3.b.wyx;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(func_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1f, 1f, 1f))), vec3<bool>(true, true, true))), -451f, u_input.a, Struct_1(vec2<f32>(_wgslsmith_f_op_f32(528f - 1000f), -553f), vec4<bool>(true, true, false, u_input.c.x >= u_input.c.x), vec2<u32>(4294967295u, 1u))));
    var var_1 = u_input.c.x;
    var_1 = 4294967295u << (u_input.c.x % 32u);
    var var_2 = min(_wgslsmith_mod_vec4_i32(vec4<i32>(~2147483647i, reverseBits(u_input.a.x), firstTrailingBit(u_input.a.x), 81597i), ~(~u_input.d)) ^ _wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, -9088i, u_input.d.x, -2147483647i), u_input.d), _wgslsmith_mod_vec4_i32(firstTrailingBit(vec4<i32>(u_input.a.x, u_input.a.x, u_input.d.x, u_input.a.x)), u_input.d)), ~u_input.d);
    var_1 = ~20421u;
    var_1 = ~13901u;
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1553f, -1060f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-118f, -448f)), !var_0))))), !(!(!select(vec4<bool>(var_0, true, true, true), vec4<bool>(false, true, true, var_0), var_0))), ~vec2<u32>(u_input.b, ~50685u));
    var_2 = u_input.d;
    let var_4 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.x, _wgslsmith_dot_vec2_i32(var_2.zz >> (var_3.c % vec2<u32>(32u)), -var_2.zx), ~(~(~_wgslsmith_sub_u32(50218u, 0u))));
}

