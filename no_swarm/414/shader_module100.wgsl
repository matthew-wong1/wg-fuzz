struct Struct_1 {
    a: vec2<u32>,
    b: vec4<bool>,
    c: vec4<bool>,
    d: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: f32, arg_1: vec2<u32>) -> vec4<bool> {
    var var_0 = Struct_1(arg_1, select(!vec4<bool>(all(vec3<bool>(true, false, true)), true, false, true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true), ~firstTrailingBit(max(arg_1.x & u_input.a, ~u_input.a)));
    let var_1 = -19562i;
    var_0 = Struct_1(var_0.a, var_0.c, vec4<bool>(all(!select(var_0.c.xxz, vec3<bool>(var_0.c.x, var_0.b.x, false), vec3<bool>(var_0.b.x, true, false))), true, !(!var_0.b.x), any(var_0.c.yx)), 1838u);
    let var_2 = ~(~vec2<u32>(~u_input.a, u_input.a));
    var var_3 = Struct_1(var_2, var_0.c, !select(var_0.c, var_0.b, select(vec4<bool>(true, var_0.c.x, var_0.c.x, false), var_0.c, var_0.b)), ~(~(~arg_1.x) >> (~u_input.a % 32u)));
    return select(vec4<bool>(var_3.c.x, !(var_0.b.x == false), min(~var_1, i32(-1i) * -67284i) > var_1, any(!var_0.c)), select(var_3.c, select(select(vec4<bool>(var_0.c.x, false, false, var_0.b.x), !var_0.b, var_0.b.x), select(!vec4<bool>(var_3.c.x, true, false, var_0.c.x), select(var_0.b, vec4<bool>(var_0.b.x, var_3.c.x, var_3.c.x, false), var_3.c), select(vec4<bool>(var_0.b.x, true, var_3.c.x, var_0.c.x), var_3.c, true)), true), var_3.c), !var_0.c);
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1) -> Struct_1 {
    var var_0 = -1i;
    let var_1 = arg_2;
    let var_2 = func_3(arg_1, countOneBits(firstLeadingBit(~(vec2<u32>(var_1.d, u_input.a) & arg_0.a))));
    var var_3 = var_2.x;
    var_3 = false;
    return var_1;
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1, arg_3: i32) -> bool {
    var var_0 = arg_2.c.zx;
    var var_1 = any(!func_3(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(arg_0, 1365f)), _wgslsmith_f_op_f32(f32(-1f) * -415f))), ~(~arg_1.a)).wxy);
    var var_2 = vec4<i32>(((firstTrailingBit(-2147483647i) ^ 0i) & 0i) << (~arg_1.d % 32u), ~22071i, select(-1i >> (0u % 32u), abs(~(i32(-1i) * -1i)), !(_wgslsmith_f_op_f32(trunc(701f)) != arg_0)), -35835i);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(arg_0, _wgslsmith_f_op_f32(ceil(arg_0)), select(true, !var_0.x, true))))));
    var var_4 = countOneBits(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(select(var_2.wz, -vec2<i32>(arg_3, -42807i), arg_2.c.zw), -var_2.zx), 2147483647i));
    return any(!(!arg_1.b.yzz));
}

fn func_1(arg_0: vec4<u32>) -> vec4<bool> {
    let var_0 = false;
    return !(!vec4<bool>(select(!var_0, true, !var_0), _wgslsmith_add_u32(52858u, 7111u) > u_input.a, func_4(-412f, func_2(Struct_1(vec2<u32>(33038u, 4294967295u), vec4<bool>(var_0, false, var_0, false), vec4<bool>(var_0, false, var_0, true), 53187u), -310f, Struct_1(vec2<u32>(arg_0.x, 82273u), vec4<bool>(false, var_0, var_0, false), vec4<bool>(false, false, var_0, var_0), 1u)), func_2(Struct_1(arg_0.zz, vec4<bool>(true, false, var_0, var_0), vec4<bool>(var_0, true, var_0, var_0), 0u), 1192f, Struct_1(vec2<u32>(0u, u_input.a), vec4<bool>(var_0, var_0, false, false), vec4<bool>(true, var_0, var_0, var_0), 8832u)), 1i), !var_0 | true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-912f)))) == _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(560f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(sign(-990f)))))));
    let var_1 = !select(!(!func_1(vec4<u32>(9845u, u_input.a, u_input.a, 52856u))), !func_1(~vec4<u32>(u_input.a, 4294967295u, u_input.a, 1u)), vec4<bool>(false, false, true, any(func_1(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)).yz)));
    var var_2 = func_1(countOneBits(vec4<u32>(u_input.a, u_input.a, ~u_input.a, _wgslsmith_add_u32(countOneBits(u_input.a), ~u_input.a)))).zwx;
    var_0 = any(!select(vec3<bool>(false, true, var_1.x), var_1.zxy, vec3<bool>(func_3(716f, vec2<u32>(u_input.a, 12540u)).x, true, true)));
    var var_3 = vec3<i32>(_wgslsmith_dot_vec2_i32(-_wgslsmith_sub_vec2_i32(firstLeadingBit(vec2<i32>(2147483647i, 42555i)), select(vec2<i32>(-2427i, 2147483647i), vec2<i32>(0i, -79417i), false)), _wgslsmith_div_vec2_i32(~abs(vec2<i32>(-2147483647i, -30890i)), select(_wgslsmith_mod_vec2_i32(vec2<i32>(19717i, -2147483647i), vec2<i32>(-2147483647i, 1i)), vec2<i32>(1i, -39540i), all(vec2<bool>(var_1.x, true))))), -2147483647i, firstLeadingBit(select(_wgslsmith_sub_i32(-834i, countOneBits(-23934i)), -(~(-1i)), !var_2.x)));
    var_2 = !var_1.yxx;
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(~u_input.a & 0u, ~1u), -min(vec2<i32>(-var_3.x, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, var_3.x, -2147483647i), vec3<i32>(73274i, var_3.x, -37131i))), abs(vec2<i32>(-1i, var_3.x))));
}

