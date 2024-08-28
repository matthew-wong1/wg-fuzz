struct Struct_1 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> vec4<i32> {
    let var_0 = Struct_1(vec4<bool>(true, true, !all(vec2<bool>(false, true)), false & !all(vec4<bool>(false, true, true, true))));
    var var_1 = _wgslsmith_clamp_i32(~2147483647i, _wgslsmith_add_i32(u_input.d.x, 1i), u_input.d.x);
    let var_2 = !(!select(var_0.a.xzx, var_0.a.zzw, select(select(vec3<bool>(false, true, false), var_0.a.yxy, vec3<bool>(true, var_0.a.x, false)), var_0.a.zyw, false)));
    var_1 = firstLeadingBit(_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d.x & u_input.d.x, ~u_input.d.x, u_input.d.x ^ u_input.d.x), vec3<i32>(-u_input.d.x, ~(-2147483647i), _wgslsmith_mult_i32(u_input.d.x, u_input.d.x))), ~(firstLeadingBit(u_input.d.x) ^ 0i), -11042i));
    var_1 = -2147483647i;
    return select(~(~vec4<i32>(~u_input.d.x, abs(2147483647i), 2147483647i, u_input.d.x)), vec4<i32>(~u_input.d.x, u_input.d.x, u_input.d.x, -(~_wgslsmith_mod_i32(u_input.d.x, -2147483647i))), !vec4<bool>(true, !var_0.a.x, all(select(var_0.a.wy, vec2<bool>(var_0.a.x, true), var_2.x)), all(vec4<bool>(true, var_0.a.x, true, var_0.a.x))));
}

fn func_2(arg_0: vec4<u32>) -> Struct_1 {
    var var_0 = func_3() ^ vec4<i32>(u_input.d.x, _wgslsmith_dot_vec2_i32(firstTrailingBit(min(vec2<i32>(-2147483647i, u_input.d.x), vec2<i32>(-2147483647i, 0i))), reverseBits(vec2<i32>(40715i, u_input.d.x))), _wgslsmith_mult_i32(u_input.d.x, -6728i), u_input.d.x);
    let var_1 = 0u;
    let var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -3325f) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(236f))))), 1f, (_wgslsmith_f_op_f32(f32(-1f) * -1012f) >= _wgslsmith_f_op_f32(trunc(622f))) || any(vec2<bool>(true, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1192f, 1134f, false))))) * 671f)));
    let var_3 = Struct_1(select(select(vec4<bool>(true, all(vec3<bool>(true, true, false)), true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false)), select(vec4<bool>(false, true, false, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false)), any(vec2<bool>(true, false)))), vec4<bool>(any(vec2<bool>(true, true)), false, false, all(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)))), true));
    var var_4 = Struct_1(var_3.a);
    return var_3;
}

fn func_1() -> Struct_1 {
    let var_0 = 2147483647i;
    let var_1 = Struct_1(vec4<bool>(!all(vec3<bool>(true, true, true)), false, any(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true))), all(vec4<bool>(true, false, true, true))));
    let var_2 = var_1;
    var var_3 = Struct_1(!(!select(var_2.a, vec4<bool>(var_2.a.x, true, var_2.a.x, false), select(vec4<bool>(var_2.a.x, true, true, var_1.a.x), var_1.a, true))));
    var var_4 = var_0;
    return func_2(abs(vec4<u32>(u_input.b, _wgslsmith_dot_vec3_u32(reverseBits(u_input.a), ~u_input.a), ~u_input.a.x, _wgslsmith_add_u32(0u, u_input.b))));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    let var_0 = func_1();
    let var_1 = _wgslsmith_mod_vec2_u32(firstLeadingBit(max(vec2<u32>(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, 4294967295u), vec2<u32>(64209u, 35042u))), u_input.a.xz)), _wgslsmith_mult_vec2_u32(select(vec2<u32>(select(u_input.b, u_input.b, true), 0u), vec2<u32>(~u_input.b, 1u), vec2<bool>(any(arg_2.a.xz), !arg_0.a.x)), _wgslsmith_mult_vec2_u32(~min(u_input.a.yx, u_input.c), ~u_input.c)));
    var var_2 = var_0;
    var_2 = arg_3;
    var var_3 = vec2<bool>(true, true);
    return -2610i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(~_wgslsmith_mult_u32(u_input.c.x, select(0u, u_input.c.x, true)), _wgslsmith_dot_vec2_u32(firstTrailingBit(u_input.a.zz), vec2<u32>(~34159u, u_input.b)), _wgslsmith_add_u32(max(4294967295u | u_input.b, _wgslsmith_mult_u32(u_input.b, 28763u)), u_input.c.x)) | u_input.a;
    var var_1 = i32(-1i) * -9637i;
    let var_2 = Struct_1(!select(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), true), vec4<bool>(true, true, true, true), !select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), true)));
    var_1 = func_4(func_1(), reverseBits(~_wgslsmith_div_vec3_i32(vec3<i32>(-11750i, u_input.d.x, u_input.d.x), vec3<i32>(15253i, -67161i, u_input.d.x))), var_2, Struct_1(!(!(!vec4<bool>(true, true, var_2.a.x, false)))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1485f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-681f)))))));
    var_1 = u_input.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(49340i, u_input.c, 4294967295u);
}

