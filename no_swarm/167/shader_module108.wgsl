struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: u32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec3<u32>,
    e: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> vec2<bool> {
    let var_0 = all(vec4<bool>(true, select(true, true, true), false, ~u_input.b.x < u_input.c.x));
    let var_1 = max(-4060i | _wgslsmith_sub_i32(_wgslsmith_mod_i32(firstTrailingBit(u_input.a.x), u_input.a.x), 1i), -1i);
    var var_2 = -13172i;
    var var_3 = 33422u;
    var_3 = 19145u;
    return vec2<bool>(var_0, true);
}

fn func_2(arg_0: Struct_2, arg_1: f32, arg_2: i32) -> u32 {
    var var_0 = vec3<bool>(all(select(vec2<bool>(true, true), vec2<bool>(true, false), true)) & true, all(select(select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false)), select(vec2<bool>(true, true), vec2<bool>(true, true), true), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true))), select(func_3(), func_3(), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true))), false)), true);
    let var_1 = arg_0.a;
    var_0 = !select(vec3<bool>(112764u <= var_1.b.x, arg_0.b.a >= -711f, !select(var_0.x, true, true)), !select(!vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(true, true, true), var_0.x), !vec3<bool>(var_0.x, false, true));
    var var_2 = _wgslsmith_dot_vec3_i32(~vec3<i32>(2147483647i, -1i | reverseBits(arg_0.c.d.x), -abs(27740i)), ~vec3<i32>(~(-1i), 2147483647i, i32(-1i) * -1792i) & vec3<i32>(abs(arg_2), -max(arg_0.b.d.x, -2147483647i), 1i));
    let var_3 = min(1u, 3401u);
    return select(_wgslsmith_dot_vec4_u32(select(abs(vec4<u32>(var_1.c, 17703u, var_3, var_1.c)), ~(~vec4<u32>(var_3, var_3, 34776u, arg_0.d.x)), true), _wgslsmith_mod_vec4_u32(firstTrailingBit(vec4<u32>(var_3, 4294967295u, 4294967295u, var_1.b.x)), select(vec4<u32>(55859u, var_3, var_3, 2201u), vec4<u32>(var_3, 4294967295u, var_1.c, 91530u), vec4<bool>(var_0.x, false, true, false)) & _wgslsmith_add_vec4_u32(vec4<u32>(var_3, 0u, 41265u, var_1.c), vec4<u32>(0u, var_3, arg_0.c.c, var_1.b.x)))), arg_0.a.c, !(!var_0.x));
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: vec3<u32>, arg_3: Struct_1) -> f32 {
    let var_0 = _wgslsmith_div_vec2_u32(vec2<u32>(arg_3.b.x, func_2(Struct_2(Struct_1(-794f, vec3<u32>(14103u, 25522u, arg_1), 2005u, vec4<i32>(u_input.c.x, u_input.b.x, 6125i, arg_3.d.x)), arg_3, Struct_1(1001f, vec3<u32>(arg_0, arg_1, 59641u), arg_2.x, vec4<i32>(arg_3.d.x, u_input.c.x, 14675i, u_input.c.x)), arg_2, arg_0), -880f, u_input.b.x) ^ arg_3.c), _wgslsmith_mod_vec2_u32(select(vec2<u32>(1u, arg_2.x), arg_3.b.yx, true), vec2<u32>(0u, arg_0))) >> (vec2<u32>(~arg_1, 4294967295u) % vec2<u32>(32u));
    var var_1 = ~abs(vec2<u32>(4294967295u, arg_0 >> (select(32667u, arg_2.x, true) % 32u)));
    var var_2 = arg_3;
    var var_3 = Struct_2(arg_3, Struct_1(589f, ~_wgslsmith_div_vec3_u32(arg_3.b, abs(var_2.b)), arg_3.c, _wgslsmith_div_vec4_i32(min(vec4<i32>(0i, 1i, u_input.c.x, -2147483647i) & var_2.d, _wgslsmith_mod_vec4_i32(vec4<i32>(31775i, var_2.d.x, var_2.d.x, -49254i), vec4<i32>(var_2.d.x, arg_3.d.x, 35394i, arg_3.d.x))), _wgslsmith_sub_vec4_i32(var_2.d, vec4<i32>(u_input.a.x, arg_3.d.x, 0i, -12150i)))), arg_3, abs(~countOneBits(select(arg_2, vec3<u32>(1u, arg_2.x, arg_2.x), false))), var_2.c);
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.a - -109f) + _wgslsmith_f_op_f32(round(1661f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec4<bool>(1382f < _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_1(0u, 36749u, vec3<u32>(1u, 33998u, 0u), Struct_1(-475f, vec3<u32>(4294967295u, 81179u, 105543u), 1u, u_input.a))))), any(vec3<bool>(true, true, true)), true, false);
    var_0 = !(!select(select(vec4<bool>(true, var_0.x, false, false), vec4<bool>(true, var_0.x, var_0.x, false), var_0.x != var_0.x), !(!vec4<bool>(var_0.x, false, true, true)), select(true, true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1201f, _wgslsmith_f_op_f32(-640f * 1512f))), _wgslsmith_f_op_f32(-365f * _wgslsmith_f_op_f32(634f - 688f))) + -256f));
}

