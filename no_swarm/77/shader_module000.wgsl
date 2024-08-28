struct Struct_1 {
    a: vec4<u32>,
    b: vec3<bool>,
    c: vec2<f32>,
    d: i32,
}

struct Struct_2 {
    a: i32,
    b: vec4<bool>,
    c: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: i32,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct Struct_5 {
    a: vec3<f32>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: u32,
    d: vec2<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec4<i32>, arg_3: f32) -> f32 {
    var var_0 = arg_0.a.b.xw;
    var var_1 = vec4<u32>(arg_0.b.a.x, ~98604u, _wgslsmith_dot_vec4_u32(u_input.a ^ _wgslsmith_mod_vec4_u32(u_input.a, ~vec4<u32>(arg_0.b.a.x, 0u, arg_0.b.a.x, 13935u)), u_input.a), 21134u);
    var_0 = vec2<bool>(!(!select(arg_0.a.b.x, true, true)), arg_1.c.x);
    var_1 = vec4<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(arg_0.b.a.zw, _wgslsmith_mult_vec2_u32(arg_0.b.a.xy, vec2<u32>(429u, var_1.x))), _wgslsmith_div_vec2_u32(~arg_0.b.a.wz, ~var_1.yz)), abs(_wgslsmith_add_u32(abs(u_input.a.x), ~var_1.x)), _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(u_input.a, arg_0.b.a) | (u_input.c << (95792u % 32u)), _wgslsmith_mult_u32(~1u, var_1.x)), 4294967295u) << (_wgslsmith_sub_vec4_u32(firstLeadingBit(vec4<u32>(16975u, arg_0.b.a.x, ~27576u, arg_0.b.a.x)), arg_0.b.a) % vec4<u32>(32u));
    var var_2 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_3, arg_0.b.c.x, 1499f, -1829f), vec4<f32>(119f, -185f, 1054f, -239f), vec4<bool>(false, arg_1.c.x, var_0.x, false)))))))));
    return -1677f;
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_3(Struct_2(u_input.b.x, select(vec4<bool>(all(vec4<bool>(false, true, true, false)), true, all(vec4<bool>(false, false, true, true)), any(vec4<bool>(false, false, true, false))), vec4<bool>(true, true, true, true), !select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false))), vec3<bool>(!all(vec4<bool>(true, false, true, false)), !any(vec4<bool>(true, false, false, false)), true)), Struct_1(reverseBits(min(min(vec4<u32>(u_input.e.x, 70463u, 4294967295u, 786u), vec4<u32>(12365u, 4294967295u, 4294967295u, 5310u)), u_input.a)), !vec3<bool>(true, true, all(vec2<bool>(false, false))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(2373f, 337f)))), vec2<f32>(-380f, _wgslsmith_f_op_f32(sign(738f))))), -2147483647i), ~(~(-(i32(-1i) * -41334i))));
    let var_1 = Struct_5(vec3<f32>(_wgslsmith_f_op_f32(func_3(Struct_3(Struct_2(-9588i, vec4<bool>(var_0.a.b.x, false, var_0.a.b.x, false), var_0.a.b.xzx), Struct_1(vec4<u32>(u_input.c, var_0.b.a.x, 49914u, 4294967295u), vec3<bool>(var_0.a.c.x, var_0.a.b.x, var_0.a.c.x), var_0.b.c, u_input.b.x), 25106i), var_0.a, vec4<i32>(0i, u_input.b.x, var_0.c, 2147483647i) & (vec4<i32>(-1282i, u_input.b.x, var_0.a.a, -39678i) | vec4<i32>(-1i, 2147483647i, 23150i, -34837i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.b.c.x, var_0.b.c.x))))), var_0.b.c.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1224f) + var_0.b.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -997f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.c.x, var_0.b.c.x, 1406f, -1005f))))));
    var_0 = Struct_3(Struct_2(abs(var_0.b.d >> (~1u % 32u)), select(select(!vec4<bool>(var_0.b.b.x, var_0.a.c.x, false, false), select(var_0.a.b, vec4<bool>(false, true, true, true), vec4<bool>(var_0.a.b.x, var_0.a.b.x, var_0.a.b.x, false)), false), select(vec4<bool>(var_0.b.b.x, var_0.a.b.x, false, true), select(vec4<bool>(var_0.b.b.x, true, var_0.b.b.x, var_0.b.b.x), var_0.a.b, vec4<bool>(var_0.a.b.x, false, var_0.b.b.x, var_0.a.c.x)), var_0.b.b.x), var_0.a.b), var_0.b.b), Struct_1((~u_input.a & (vec4<u32>(u_input.c, 16986u, var_0.b.a.x, u_input.c) | u_input.a)) & _wgslsmith_add_vec4_u32(vec4<u32>(var_0.b.a.x, var_0.b.a.x, 4294967295u, u_input.d.x), _wgslsmith_clamp_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, u_input.d.x, var_0.b.a.x, 18066u), vec4<u32>(u_input.a.x, 69102u, 47932u, 0u))), vec3<bool>(var_0.b.b.x, true, true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(var_0.b.c + vec2<f32>(var_0.b.c.x, 1533f)))) + var_0.b.c), 0i), ~46079i);
    let var_2 = -40163i;
    var_0 = Struct_3(var_0.a, var_0.b, var_0.b.d);
    return Struct_2(-6144i, select(vec4<bool>(var_0.b.b.x, false, var_0.b.b.x, any(var_0.b.b) & any(var_0.b.b.xx)), vec4<bool>(var_0.a.c.x, select(true, true, true), true, reverseBits(var_0.b.a.x) == var_0.b.a.x), var_0.a.c.x), select(var_0.b.b, !var_0.b.b, false));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec4<f32>, arg_3: vec4<f32>) -> bool {
    let var_0 = vec4<bool>(true, true, all(!(!vec4<bool>(arg_0.a.b.x, true, arg_0.a.c.x, arg_1.b.b.x))), arg_0.a.b.x);
    var var_1 = ~(vec2<u32>(~u_input.a.x, 0u) ^ (arg_1.b.a.xz | vec2<u32>(arg_0.b.a.x, u_input.a.x))) ^ vec2<u32>(_wgslsmith_add_u32(4294967295u >> (firstLeadingBit(1u) % 32u), ~12008u), 1u);
    var_1 = ~(~(~_wgslsmith_mult_vec2_u32(firstTrailingBit(vec2<u32>(arg_0.b.a.x, 0u)), max(arg_1.b.a.zw, arg_1.b.a.zx))));
    var var_2 = func_2();
    var_2 = func_2();
    return var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(any(!select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), false), vec4<bool>(true, true, true, false), true)), any(vec2<bool>(true, select(true, true, true))), all(vec3<bool>(-u_input.b.x >= _wgslsmith_add_i32(0i, u_input.b.x), true, u_input.a.x < 4294967295u)), any(select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), false | func_1(Struct_3(Struct_2(u_input.b.x, vec4<bool>(true, false, true, true), vec3<bool>(false, false, true)), Struct_1(u_input.a, vec3<bool>(false, false, true), vec2<f32>(-1156f, 358f), 2147483647i), u_input.b.x), Struct_3(Struct_2(u_input.b.x, vec4<bool>(true, true, false, false), vec3<bool>(false, false, true)), Struct_1(vec4<u32>(119643u, u_input.a.x, 34341u, 1u), vec3<bool>(true, false, true), vec2<f32>(990f, 1479f), 1i), u_input.b.x), vec4<f32>(437f, 969f, 568f, 1019f), vec4<f32>(-296f, 1501f, -1000f, -309f)))));
    var var_1 = true;
    var_0 = !(!(!select(func_2().b, !vec4<bool>(var_0.x, var_0.x, false, var_0.x), !var_0.x)));
    var var_2 = Struct_3(Struct_2(19238i, !(!vec4<bool>(var_0.x, true, var_0.x, var_0.x)), func_2().b.wyx), Struct_1(~(~vec4<u32>(u_input.a.x, u_input.d.x, 31680u, u_input.d.x)), !vec3<bool>(true, var_0.x | true, !var_0.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(261f, 1182f) * vec2<f32>(1485f, -125f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-231f, -518f), vec2<f32>(-1585f, -1191f), var_0.zy)))), u_input.b.x), 1i);
    var var_3 = ~_wgslsmith_mod_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(33216u, 9633u), vec2<u32>(32573u, var_2.b.a.x)), var_2.b.a.x);
    let var_4 = var_2.b.c;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b);
}

