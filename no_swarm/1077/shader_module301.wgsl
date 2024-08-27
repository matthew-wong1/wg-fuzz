struct Struct_1 {
    a: i32,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec2<u32>, arg_1: u32) -> vec4<i32> {
    var var_0 = Struct_1(_wgslsmith_mult_i32(countOneBits(-2147483647i), u_input.a.x), min(~(select(vec4<u32>(arg_1, 4294967295u, 22540u, 58705u), vec4<u32>(arg_1, arg_0.x, u_input.b, 0u), true) << (~vec4<u32>(arg_1, u_input.b, arg_0.x, 1u) % vec4<u32>(32u))), min(~reverseBits(vec4<u32>(0u, 4294967295u, 23598u, 0u)), vec4<u32>(arg_0.x << (arg_1 % 32u), _wgslsmith_dot_vec2_u32(arg_0, vec2<u32>(u_input.b, arg_1)), arg_0.x & 29521u, 1536u))));
    var var_1 = Struct_1(u_input.a.x, _wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(~var_0.b.yz, vec2<u32>(1u, var_0.b.x)), ~(27676u >> (u_input.b % 32u)), 4294967295u, var_0.b.x), ~(~var_0.b)));
    let var_2 = Struct_1(_wgslsmith_clamp_i32(_wgslsmith_add_i32(-2147483647i, min(abs(u_input.a.x), countOneBits(57461i))), _wgslsmith_div_i32(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(22139i, var_0.a, var_1.a), -u_input.a.x), max(-2147483647i, 0i)), firstLeadingBit(abs(-u_input.a.x))), var_0.b);
    let var_3 = vec2<i32>(2147483647i, var_2.a << (firstLeadingBit(abs(var_0.b.x)) % 32u)) << (vec2<u32>(u_input.b, 0u) % vec2<u32>(32u));
    var var_4 = Struct_1(_wgslsmith_add_i32(reverseBits(var_3.x), ~9508i), _wgslsmith_mod_vec4_u32(vec4<u32>(~var_1.b.x, 85374u, ~(~var_2.b.x), _wgslsmith_clamp_u32(0u, _wgslsmith_mod_u32(u_input.b, 0u), 1u)), var_2.b));
    return reverseBits(min(vec4<i32>(-1i) * -vec4<i32>(0i, -36897i, var_2.a, -29733i), min(firstLeadingBit(vec4<i32>(10307i, -36756i, var_4.a, var_0.a)), select(vec4<i32>(1i, var_2.a, 2008i, -1i), vec4<i32>(-14953i, u_input.a.x, 0i, var_4.a), vec4<bool>(true, false, false, true))))) << (select(var_4.b, vec4<u32>(~max(var_0.b.x, 1188u), var_0.b.x, ~var_1.b.x, arg_1), false || !all(vec3<bool>(true, false, true))) % vec4<u32>(32u));
}

fn func_2(arg_0: Struct_1) -> vec2<bool> {
    let var_0 = vec4<u32>(arg_0.b.x, abs(~(~(~9344u))), ~(~_wgslsmith_add_u32(1u, arg_0.b.x & u_input.b)), 4294967295u);
    var var_1 = firstLeadingBit(func_3(arg_0.b.xw, 31582u));
    let var_2 = _wgslsmith_sub_i32(-(u_input.a.x | firstLeadingBit(var_1.x)), 0i);
    let var_3 = all(vec4<bool>(true, true, true, true));
    var_1 = _wgslsmith_div_vec4_i32(vec4<i32>(~(~(~var_2)), -4747i, -1062i, -var_2), (vec4<i32>(-1i, var_1.x, u_input.a.x, func_3(var_0.xx, 2125u).x) >> (var_0 % vec4<u32>(32u))) << (~(var_0 | select(vec4<u32>(u_input.b, u_input.b, arg_0.b.x, 1u), vec4<u32>(var_0.x, 0u, var_0.x, 17006u), true)) % vec4<u32>(32u)));
    return select(select(select(select(select(vec2<bool>(false, true), vec2<bool>(false, var_3), vec2<bool>(true, var_3)), select(vec2<bool>(var_3, true), vec2<bool>(true, false), vec2<bool>(var_3, var_3)), vec2<bool>(true, true)), select(vec2<bool>(true, var_3), vec2<bool>(true, true), true), vec2<bool>(true, true)), vec2<bool>(any(vec4<bool>(var_3, var_3, true, var_3)), true), select(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(var_3, var_3)), !var_3), select(select(vec2<bool>(var_3, true), vec2<bool>(var_3, false), true), select(vec2<bool>(var_3, var_3), vec2<bool>(true, false), vec2<bool>(var_3, var_3)), false), vec2<bool>(all(vec2<bool>(var_3, false)), var_2 < var_2))), vec2<bool>(true, true), all(vec3<bool>(any(vec3<bool>(true, true, true)), all(vec2<bool>(var_3, var_3)), false)));
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_1) -> f32 {
    var var_0 = vec4<bool>(any(select(!select(vec2<bool>(true, false), vec2<bool>(true, false), true), select(func_2(arg_1), vec2<bool>(false, true), arg_1.a != arg_1.a), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false)), arg_1.a < 12187i))), all(func_2(Struct_1(1i, ~vec4<u32>(arg_1.b.x, u_input.b, u_input.b, u_input.b)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-100f)) - -541f))) == _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(787f, _wgslsmith_f_op_f32(1000f + -977f))))), func_2(Struct_1(12160i, firstLeadingBit(arg_1.b & vec4<u32>(arg_1.b.x, 4294967295u, arg_0.x, 77222u)))).x);
    var_0 = select(!select(vec4<bool>(var_0.x, var_0.x, true, true), select(vec4<bool>(false, var_0.x, var_0.x, false), vec4<bool>(false, var_0.x, true, var_0.x), !vec4<bool>(true, var_0.x, true, true)), vec4<bool>(true, true, func_2(arg_1).x, !var_0.x)), !select(!select(vec4<bool>(false, var_0.x, var_0.x, false), vec4<bool>(true, false, false, var_0.x), vec4<bool>(var_0.x, true, var_0.x, var_0.x)), vec4<bool>(all(vec2<bool>(false, var_0.x)), any(var_0.yw), true, var_0.x), vec4<bool>(var_0.x, !var_0.x, true, false)), select(select(select(!vec4<bool>(var_0.x, true, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, false), vec4<bool>(var_0.x, var_0.x, false, var_0.x)), select(!vec4<bool>(true, true, true, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), var_0.x), select(!vec4<bool>(var_0.x, true, false, var_0.x), !vec4<bool>(false, var_0.x, var_0.x, var_0.x), false)), vec4<bool>(var_0.x, true, true, 21595u > _wgslsmith_dot_vec2_u32(arg_1.b.ww, arg_0)), false));
    var_0 = select(vec4<bool>(var_0.x, false | !all(vec4<bool>(false, var_0.x, var_0.x, true)), false, true), vec4<bool>(all(func_2(Struct_1(1i, vec4<u32>(47652u, 1531u, 77646u, 1411u)))), true, var_0.x, !(!var_0.x && true)), true);
    var_0 = vec4<bool>(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1628f + -786f)) <= _wgslsmith_f_op_f32(select(-854f, 2166f, true)), func_2(Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(-79045i, -29799i, 2147483647i), abs(u_input.a)), vec4<u32>(arg_1.b.x, _wgslsmith_dot_vec3_u32(arg_1.b.zzy, arg_1.b.zwx), arg_0.x, _wgslsmith_mult_u32(arg_1.b.x, u_input.b)))).x, (0i << (~arg_1.b.x % 32u)) <= reverseBits(select(_wgslsmith_div_i32(arg_1.a, arg_1.a), _wgslsmith_clamp_i32(-39521i, 2147483647i, -21412i), var_0.x)));
    var_0 = vec4<bool>(!(!var_0.x), var_0.x, select(!(var_0.x | all(vec3<bool>(var_0.x, var_0.x, true))), var_0.x && var_0.x, true), true);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -509f), -1798f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -453f), -1084f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec2<u32>(u_input.b, 4294967295u), Struct_1(51940i, vec4<u32>(u_input.b, 66013u, 3167u, u_input.b)))))) + 1f));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-415f - _wgslsmith_f_op_f32(-534f - 1159f))))));
    var var_1 = ~(~vec4<u32>(4294967295u, u_input.b, ~u_input.b, _wgslsmith_clamp_u32(1u, u_input.b, u_input.b) | 4294967295u));
    var var_2 = max(min(vec4<u32>(_wgslsmith_mult_u32(1u, 0u), 10749u, 46575u, u_input.b), vec4<u32>(_wgslsmith_mult_u32(u_input.b, _wgslsmith_mult_u32(var_1.x, 4294967295u)), ~(~1u), 4294967295u, u_input.b)), min(_wgslsmith_sub_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, 21936u, 19013u, 53994u), vec4<u32>(1u, u_input.b, var_1.x, u_input.b)), select(vec4<u32>(0u, u_input.b, 60983u, 0u), vec4<u32>(u_input.b, 40740u, var_1.x, u_input.b), vec4<bool>(true, false, true, true)) | (vec4<u32>(0u, u_input.b, var_1.x, 4294967295u) ^ vec4<u32>(u_input.b, u_input.b, var_1.x, 1850u))), firstTrailingBit(select(firstTrailingBit(vec4<u32>(var_1.x, u_input.b, u_input.b, u_input.b)), firstLeadingBit(vec4<u32>(u_input.b, u_input.b, 0u, 11855u)), all(vec2<bool>(false, false))))));
    var_1 = vec4<u32>(select(abs(var_1.x), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, var_2.x, 1u, 1u), vec4<u32>(u_input.b, 0u, u_input.b, 36041u)) ^ var_1.x, all(select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), true))), 0u, ~_wgslsmith_sub_u32(_wgslsmith_div_u32(36247u, u_input.b), 0u), var_1.x) ^ ~(~_wgslsmith_div_vec4_u32(~vec4<u32>(58106u, 25981u, 2849u, var_1.x), _wgslsmith_div_vec4_u32(vec4<u32>(var_2.x, 4294967295u, var_1.x, u_input.b), vec4<u32>(28654u, 4294967295u, u_input.b, 0u))));
    var_0 = -815f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-336f, -1000f, -410f, 1210f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1568f, 1106f, -491f, 1542f) * vec4<f32>(-371f, -724f, 823f, -126f))))), u_input.a);
}

