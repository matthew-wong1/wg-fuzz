struct Struct_1 {
    a: i32,
    b: bool,
    c: vec3<bool>,
    d: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: vec2<i32>, arg_3: vec4<f32>) -> i32 {
    var var_0 = Struct_1(u_input.b.x, arg_0, !vec3<bool>(false & arg_0, all(vec3<bool>(false, true, false)) & arg_0, all(select(vec4<bool>(false, arg_0, arg_0, false), vec4<bool>(true, false, arg_0, arg_0), arg_0))), arg_2.x);
    var var_1 = vec2<i32>(~(~_wgslsmith_add_i32(-2147483647i, _wgslsmith_mod_i32(arg_2.x, -92206i))), -arg_2.x);
    var_1 = countOneBits(_wgslsmith_sub_vec2_i32(vec2<i32>(-38460i, 1i), firstLeadingBit(-arg_2))) | u_input.b.yz;
    let var_2 = Struct_1(-39918i, all(!vec4<bool>(true, true, any(var_0.c.zz), arg_0)), vec3<bool>(any(select(select(var_0.c, vec3<bool>(true, var_0.b, arg_0), vec3<bool>(var_0.b, true, var_0.b)), select(vec3<bool>(true, arg_0, var_0.b), vec3<bool>(var_0.b, true, var_0.b), var_0.c), vec3<bool>(var_0.b, true, var_0.c.x))), true, false), arg_2.x);
    let var_3 = arg_2.x;
    return -var_1.x;
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: u32) -> bool {
    let var_0 = vec2<i32>(u_input.b.x, ~_wgslsmith_mult_i32(-2147483647i & _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.d, -1i, -1i), vec3<i32>(-25365i, -44237i, 1i)), func_1(any(arg_1.c.zz), _wgslsmith_add_u32(46372u, 72283u), vec2<i32>(-1i, arg_1.a), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-886f, 320f, -970f, -400f))))));
    let var_1 = arg_0;
    var var_2 = -u_input.b;
    let var_3 = -446f;
    var_2 = (select(reverseBits(~vec3<i32>(var_2.x, var_2.x, -44448i)), abs(u_input.b), arg_1.c) >> (select(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(8515u, 94360u), vec2<u32>(arg_2, 4294967295u)), arg_2, ~u_input.a.x), u_input.a.zwx, all(arg_1.c)) % vec3<u32>(32u))) ^ u_input.b;
    return all(vec2<bool>(~_wgslsmith_dot_vec3_i32(vec3<i32>(15107i, var_2.x, -1i), vec3<i32>(1i, 1696i, 10163i)) < _wgslsmith_add_i32(i32(-1i) * -34167i, ~0i), arg_1.b));
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: vec2<bool>) -> Struct_1 {
    var var_0 = Struct_1(abs(u_input.b.x), !(false != !arg_2.x), !(!(!vec3<bool>(arg_0, true, arg_2.x))), -37510i);
    let var_1 = all(var_0.c) && all(select(!(!var_0.c), !vec3<bool>(arg_2.x, arg_2.x, arg_2.x), vec3<bool>(true, arg_0, true)));
    var_0 = Struct_1(u_input.b.x, true, !vec3<bool>(all(!arg_2), arg_2.x, !func_3(var_0.c.yz, Struct_1(27919i, false, vec3<bool>(arg_0, var_0.b, var_0.c.x), -66193i), 81738u)), _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(u_input.b.yz, _wgslsmith_sub_vec2_i32(~u_input.b.yz, _wgslsmith_div_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x), vec2<i32>(u_input.b.x, -9873i)))), (_wgslsmith_dot_vec2_i32(u_input.b.yy, u_input.b.xz) & _wgslsmith_add_i32(var_0.d, u_input.b.x)) & _wgslsmith_add_i32(min(1i, 2147483647i), abs(-1899i))));
    let var_2 = u_input.a.x;
    var_0 = Struct_1(firstTrailingBit(-2916i << (_wgslsmith_dot_vec2_u32(~u_input.a.yx, u_input.a.xx) % 32u)), !arg_2.x, vec3<bool>(true, true, arg_0), u_input.b.x);
    return Struct_1(min(2147483647i, 2147483647i), !any(vec4<bool>(var_1 | false, true | arg_0, all(var_0.c.zx), true)), vec3<bool>(!(var_0.a <= abs(14188i)), true, true | !(!var_0.c.x)), min(-2147483647i, var_0.d));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    let var_1 = true;
    let var_2 = Struct_1(func_1(var_1, ~u_input.a.x, ~vec2<i32>(u_input.b.x, u_input.b.x), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2154f, 170f, -1002f, 1177f))))), any(select(!select(vec4<bool>(true, true, var_0, false), vec4<bool>(var_0, false, true, false), vec4<bool>(false, true, var_1, true)), !(!vec4<bool>(true, var_1, var_0, false)), !vec4<bool>(true, var_1, var_0, var_0))), vec3<bool>(false, !any(!vec2<bool>(false, var_0)), (_wgslsmith_mult_u32(u_input.a.x, u_input.a.x) << (~1u % 32u)) <= 36478u), _wgslsmith_mod_i32(u_input.b.x, _wgslsmith_clamp_i32(-1i, -u_input.b.x, -u_input.b.x)));
    var var_3 = Struct_1((i32(-1i) * -(~u_input.b.x)) >> ((u_input.a.x | 4294967295u) % 32u), !(!any(vec3<bool>(true, var_0, false)) | (_wgslsmith_dot_vec2_i32(u_input.b.zz, vec2<i32>(var_2.a, 1i)) < -967i)), vec3<bool>(var_0, all(select(vec2<bool>(false, var_1), select(vec2<bool>(var_2.c.x, false), vec2<bool>(var_0, false), false), !var_1)), false), u_input.b.x);
    var_3 = func_2(all(select(vec3<bool>(false, true, false), !var_3.c, var_2.c.x)), u_input.a.x, select(var_2.c.xx, !select(var_2.c.xz, !var_3.c.xx, true), !all(vec2<bool>(true, true))));
    var_3 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, vec3<u32>(u_input.a.x, reverseBits(_wgslsmith_dot_vec3_u32(u_input.a.yxx, _wgslsmith_mult_vec3_u32(vec3<u32>(12425u, 4294967295u, u_input.a.x), vec3<u32>(1u, u_input.a.x, 0u)))), u_input.a.x));
}

