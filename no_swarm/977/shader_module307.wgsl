struct Struct_1 {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3() -> bool {
    var var_0 = !select(false, !(u_input.c.x >= u_input.c.x) == true, false);
    var var_1 = !vec4<bool>(!any(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false))), true, true, all(select(vec2<bool>(true, true), vec2<bool>(true, true), u_input.a <= 83610u)));
    var_1 = vec4<bool>(true, select(var_1.x, true, !((u_input.a >> (1u % 32u)) > ~u_input.a)), !(!(~u_input.d.x == -1i)), false);
    var_1 = select(select(!select(!vec4<bool>(var_1.x, var_1.x, var_1.x, false), vec4<bool>(true, true, var_1.x, var_1.x), vec4<bool>(false, false, true, false)), !vec4<bool>(all(vec2<bool>(var_1.x, true)), !var_1.x, var_1.x && false, !var_1.x), var_1.x), vec4<bool>(var_1.x, var_1.x, !((u_input.c.x >= u_input.d.x) | (true & var_1.x)), true), select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -543f)) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -189f) * _wgslsmith_f_op_f32(select(-275f, -1067f, var_1.x))), var_1.x, any(var_1.zzx)));
    var var_2 = !select(var_1.xwy, !(!(!vec3<bool>(false, var_1.x, true))), select(var_1.xzx, select(vec3<bool>(true, false, true), !var_1.zzz, u_input.d.x == u_input.c.x), u_input.d.x >= firstTrailingBit(1i)));
    return all(vec3<bool>(var_1.x, true, any(!vec4<bool>(false, true, var_1.x, false))));
}

fn func_2(arg_0: vec2<u32>) -> Struct_1 {
    var var_0 = Struct_2(Struct_1(~u_input.d.yw, vec2<i32>(_wgslsmith_mod_i32(0i, -41960i), ~u_input.c.x) << (select(u_input.b.zz, _wgslsmith_sub_vec2_u32(u_input.b.xy, arg_0), func_3()) % vec2<u32>(32u))));
    let var_1 = Struct_2(var_0.a);
    var_0 = var_1;
    var_0 = var_1;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -763f), -1406f) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-803f + -252f), -600f))) + _wgslsmith_div_f32(-420f, -1051f)));
    return Struct_1(-vec2<i32>(_wgslsmith_dot_vec4_i32(u_input.d, ~vec4<i32>(-16529i, -5248i, -1i, u_input.c.x)), ~0i), var_1.a.b);
}

fn func_1() -> bool {
    let var_0 = u_input.d;
    let var_1 = func_2(max(u_input.b.yz, _wgslsmith_div_vec2_u32(~vec2<u32>(16996u, u_input.b.x), vec2<u32>(_wgslsmith_clamp_u32(u_input.a, u_input.a, 0u), u_input.a))));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-281f, -488f)), _wgslsmith_div_f32(_wgslsmith_div_f32(-1000f, -1440f), _wgslsmith_div_f32(1495f, 1482f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-501f)) * _wgslsmith_f_op_f32(f32(-1f) * -1418f)))) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(411f, 1f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -319f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1000f, 1306f, 1122f), vec3<f32>(-1000f, 1000f, -719f))))), vec3<f32>(-666f, -1000f, _wgslsmith_f_op_f32(trunc(878f)))))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(1549f, 1000f))))) * var_2.x) > _wgslsmith_f_op_f32(abs(var_2.x));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1) -> vec2<bool> {
    let var_0 = arg_1;
    let var_1 = ~_wgslsmith_mult_u32(u_input.a, max(~(~u_input.b.x), min(30545u, 4294967295u)));
    let var_2 = Struct_2(var_0);
    return vec2<bool>(arg_0.x, any(vec2<bool>(all(select(vec4<bool>(true, arg_0.x, arg_0.x, true), vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x))), true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    let var_1 = -max(-(u_input.c.yz ^ -u_input.c.zz), u_input.c.zx);
    let var_2 = vec4<bool>(false, true, true, true);
    var_0 = true;
    var var_3 = func_4(!select(var_2.ywy, !var_2.xyy, var_2.ywx), Struct_1(u_input.c.wy, max(select(-vec2<i32>(u_input.c.x, -19978i), -u_input.d.wz, func_1()), _wgslsmith_mod_vec2_i32(firstLeadingBit(vec2<i32>(u_input.d.x, var_1.x)), func_2(vec2<u32>(u_input.a, u_input.b.x)).b))));
    let var_4 = 8662u;
    var_3 = select(func_4(vec3<bool>(false, any(select(var_2, var_2, false)), true), Struct_1(reverseBits(-vec2<i32>(u_input.c.x, var_1.x)), -u_input.c.wz >> (_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, u_input.b.x), u_input.b.xz) % vec2<u32>(32u)))), var_2.wx, true);
    var_0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(select(-abs(_wgslsmith_add_vec2_i32(var_1, u_input.d.zy)), var_1, func_4(var_2.zzw, Struct_1(var_1 << (vec2<u32>(var_4, u_input.b.x) % vec2<u32>(32u)), vec2<i32>(2147483647i, 35189i)))));
}

