struct Struct_1 {
    a: vec2<i32>,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: vec2<i32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32, arg_1: u32) -> vec2<i32> {
    let var_0 = Struct_1(countOneBits(_wgslsmith_sub_vec2_i32(vec2<i32>(1i, 1i), -firstTrailingBit(vec2<i32>(-29283i, -1i)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1463f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(153f)) - _wgslsmith_f_op_f32(round(-2502f)))))));
    var var_1 = var_0;
    var var_2 = var_1.b < _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -538f)) + var_1.b)));
    let var_3 = vec4<bool>(!(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1587f)) + var_1.b) < _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.b + var_0.b), _wgslsmith_f_op_f32(-var_0.b)))), true, true, any(select(vec4<bool>(any(vec3<bool>(true, false, false)), true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))));
    var_1 = Struct_1(vec2<i32>(var_1.a.x, var_0.a.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1000f)) * _wgslsmith_f_op_f32(-var_1.b))))));
    return vec2<i32>(11562i, var_0.a.x);
}

fn func_2() -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1624f, _wgslsmith_f_op_f32(ceil(-369f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-104f + 882f) + _wgslsmith_f_op_f32(abs(-1942f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-2091f - -101f), -741f)))));
    let var_1 = Struct_1(abs(_wgslsmith_add_vec2_i32(func_3(u_input.c.x, 36009u >> (u_input.d.x % 32u)), max(-vec2<i32>(-2971i, -43357i), -vec2<i32>(-1i, 1i)))), _wgslsmith_f_op_f32(abs(-1319f)));
    let var_2 = u_input.a;
    let var_3 = min(~(~var_2), var_2) | ~(~3099u);
    let var_4 = 4294967295u;
    return !(!vec4<bool>(all(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false))), all(select(vec2<bool>(false, false), vec2<bool>(false, true), false)), false, false));
}

fn func_4(arg_0: vec4<bool>) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_mod_vec2_i32(vec2<i32>(1i, -20009i), ~(~vec2<i32>(33235i, 23689i))) >> (_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, 1u | u_input.b.x), ~_wgslsmith_clamp_vec2_u32(u_input.b.yw, u_input.b.yy, vec2<u32>(111324u, 30630u))) % vec2<u32>(32u)), 1216f);
    let var_1 = Struct_1(var_0.a, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.b), var_0.b)));
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b) * _wgslsmith_div_f32(var_0.b, -854f)), -806f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - -386f)), -842f);
    let var_3 = var_0;
    let var_4 = ~select(~u_input.b, u_input.b, select(arg_0.x, arg_0.x, all(arg_0.zxw) && any(vec4<bool>(arg_0.x, false, true, false))));
    return var_1;
}

fn func_1(arg_0: u32, arg_1: f32, arg_2: vec2<i32>, arg_3: vec2<f32>) -> u32 {
    let var_0 = func_4(func_2());
    var var_1 = Struct_1(-(-arg_2 & var_0.a), _wgslsmith_f_op_f32(-var_0.b));
    var var_2 = func_4(vec4<bool>(any(vec3<bool>(true, true, any(vec3<bool>(true, false, false)))), select(true, all(vec4<bool>(true, false, true, false)), !(var_0.b < -129f)), false || all(vec4<bool>(true, true, true, true)), false));
    var var_3 = Struct_1(~(-(~var_2.a)), var_2.b);
    var_1 = func_4(!func_2());
    return arg_0;
}

fn func_5(arg_0: u32, arg_1: vec3<u32>, arg_2: vec2<bool>, arg_3: bool) -> vec4<u32> {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -203f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-790f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1201f + 1271f)) - 1f))), 846f);
    var var_1 = Struct_1(abs(vec2<i32>(reverseBits(abs(1703i)), 0i)), 701f);
    var_1 = func_4(select(!vec4<bool>(false, any(vec2<bool>(arg_2.x, false)), !arg_2.x, arg_2.x & arg_2.x), !(!(!vec4<bool>(arg_2.x, false, arg_3, true))), vec4<bool>(!(arg_2.x != arg_3), arg_3, -993f != _wgslsmith_f_op_f32(step(var_1.b, var_1.b)), !arg_2.x || arg_3)));
    var_1 = func_4(vec4<bool>(false, any(!func_2().yzy), any(!vec3<bool>(arg_3, arg_2.x, true)), arg_2.x));
    var var_2 = 0i;
    return vec4<u32>(_wgslsmith_sub_u32(firstLeadingBit(~49165u), ~(~_wgslsmith_sub_u32(u_input.b.x, 75930u))), ~(~u_input.c.x ^ arg_1.x), _wgslsmith_dot_vec3_u32(abs(u_input.c), firstTrailingBit(vec3<u32>(4294967295u, u_input.d.x, _wgslsmith_sub_u32(u_input.d.x, arg_0)))), _wgslsmith_dot_vec3_u32((vec3<u32>(arg_0, 4294967295u, 63666u) ^ arg_1) | ~select(vec3<u32>(arg_1.x, arg_1.x, u_input.c.x), u_input.b.zxz, vec3<bool>(arg_3, arg_2.x, true)), arg_1));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_clamp_vec4_u32(reverseBits(~vec4<u32>(~u_input.d.x, ~0u, ~35719u, _wgslsmith_mod_u32(0u, 38301u))), _wgslsmith_add_vec4_u32(~u_input.b >> (vec4<u32>(u_input.c.x, firstTrailingBit(2420u), firstLeadingBit(u_input.a), u_input.d.x) % vec4<u32>(32u)), vec4<u32>(1u & (u_input.d.x | u_input.d.x), reverseBits(_wgslsmith_mult_u32(u_input.d.x, 0u)), _wgslsmith_mod_u32(84733u, u_input.c.x), 43370u)), func_5(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, u_input.b.x, 36644u, 114742u), abs(vec4<u32>(u_input.b.x, 12066u, u_input.d.x, 4294967295u)), vec4<u32>(4294967295u, 27311u, 84942u, 42611u)), vec4<u32>(964u, ~85u, func_1(4294967295u, 1923f, vec2<i32>(48510i, 2147483647i), vec2<f32>(-922f, 198f)), max(48722u, u_input.c.x))), vec3<u32>(~7838u, u_input.b.x, u_input.b.x), select(func_2().zz, vec2<bool>(true, u_input.d.x > u_input.b.x), -11519i == (1i >> (u_input.c.x % 32u))), false));
    let var_1 = func_2().xw;
    var var_2 = Struct_1(~vec2<i32>(-1i, 68314i), -765f);
    var_2 = func_4(!select(!vec4<bool>(var_1.x, true, var_1.x, false), select(select(vec4<bool>(true, true, var_1.x, true), vec4<bool>(true, var_1.x, var_1.x, false), vec4<bool>(var_1.x, false, var_1.x, var_1.x)), !vec4<bool>(var_1.x, false, var_1.x, var_1.x), vec4<bool>(true, var_1.x, var_1.x, false)), any(!vec3<bool>(var_1.x, var_1.x, false))));
    var var_3 = Struct_1(var_2.a, _wgslsmith_f_op_f32(max(var_2.b, _wgslsmith_f_op_f32(-104f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b))))));
    var var_4 = func_4(!select(vec4<bool>(any(vec2<bool>(false, var_1.x)), any(var_1), true, false != var_1.x), vec4<bool>(true, !var_1.x, all(vec4<bool>(true, false, var_1.x, var_1.x)), true), !all(vec4<bool>(true, var_1.x, true, var_1.x))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(~(i32(-1i) * -var_4.a.x), _wgslsmith_sub_i32(var_2.a.x, 1i), 0i), _wgslsmith_sub_i32(-firstLeadingBit(abs(var_4.a.x)), _wgslsmith_dot_vec3_i32(vec3<i32>(var_4.a.x, var_2.a.x, var_3.a.x) | ~vec3<i32>(-49322i, var_2.a.x, var_2.a.x), firstLeadingBit(vec3<i32>(-2147483647i, var_3.a.x, -2147483647i)) | max(vec3<i32>(var_4.a.x, -14485i, var_3.a.x), vec3<i32>(0i, 39868i, 2147483647i)))), 55724u, vec2<i32>(-var_3.a.x, -45338i), firstTrailingBit(max(~u_input.b, vec4<u32>(_wgslsmith_clamp_u32(4294967295u, var_0.x, u_input.d.x), 10123u, ~u_input.d.x, _wgslsmith_mult_u32(23425u, 0u)))));
}

