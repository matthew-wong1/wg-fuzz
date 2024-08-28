struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: u32,
    c: vec3<bool>,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: i32,
    c: Struct_2,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: i32, arg_1: vec2<f32>, arg_2: i32) -> vec3<i32> {
    var var_0 = vec2<bool>(!(!all(vec4<bool>(true, true, true, true))), any(vec3<bool>(true, true, true)));
    let var_1 = Struct_1(_wgslsmith_div_vec3_i32(-vec3<i32>(arg_0, 17543i, _wgslsmith_mod_i32(1i, arg_2)), max(min(vec3<i32>(arg_2, arg_0, 0i), select(vec3<i32>(13974i, arg_0, arg_0), vec3<i32>(arg_2, -1i, u_input.b), vec3<bool>(true, var_0.x, true))), vec3<i32>(-25730i, _wgslsmith_mult_i32(arg_0, arg_2), abs(u_input.b)))));
    var_0 = select(!vec2<bool>(true, var_0.x), select(!vec2<bool>(any(vec2<bool>(var_0.x, false)), true), select(select(select(vec2<bool>(var_0.x, false), vec2<bool>(var_0.x, false), vec2<bool>(false, var_0.x)), select(vec2<bool>(true, var_0.x), vec2<bool>(true, var_0.x), false), !var_0.x), select(select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, false)), vec2<bool>(false, true), select(vec2<bool>(false, var_0.x), vec2<bool>(var_0.x, var_0.x), vec2<bool>(true, var_0.x))), vec2<bool>(true, false)), var_0.x), select(!select(vec2<bool>(true, true), !vec2<bool>(false, var_0.x), vec2<bool>(var_0.x, false)), vec2<bool>(_wgslsmith_f_op_f32(abs(arg_1.x)) <= _wgslsmith_f_op_f32(step(-1000f, arg_1.x)), all(vec2<bool>(var_0.x, var_0.x))), !(u_input.a >= ~1u)));
    var_0 = vec2<bool>(!var_0.x, !var_0.x);
    var var_2 = countOneBits(~max(vec4<u32>(~u_input.a, _wgslsmith_mult_u32(1u, 28798u), u_input.a, 12870u), countOneBits(~vec4<u32>(u_input.a, 13974u, 4294967295u, u_input.a))));
    return _wgslsmith_mod_vec3_i32(abs(~var_1.a), vec3<i32>(1i, 1232i, var_1.a.x)) & ~vec3<i32>(firstTrailingBit(arg_2), -2147483647i, ~0i);
}

fn func_4(arg_0: i32, arg_1: Struct_3, arg_2: Struct_1, arg_3: vec3<i32>) -> f32 {
    let var_0 = ~vec4<i32>(u_input.b, abs(~arg_2.a.x | u_input.b), 1i, arg_1.c.d.a.x);
    var var_1 = Struct_2(arg_1.c.c.zy, ~_wgslsmith_sub_u32(abs(7473u), 1u) | firstTrailingBit(abs(max(arg_1.d, arg_1.d))), select(select(vec3<bool>(all(vec2<bool>(arg_1.c.c.x, false)), arg_1.c.c.x, true), arg_1.c.c, !select(arg_1.c.c, arg_1.c.c, vec3<bool>(true, arg_1.c.a.x, false))), vec3<bool>(!arg_1.c.c.x || all(arg_1.c.c), arg_1.c.c.x, false), select(!select(vec3<bool>(arg_1.c.c.x, false, arg_1.c.a.x), vec3<bool>(false, true, true), true), select(!arg_1.c.c, select(arg_1.c.c, arg_1.c.c, arg_1.c.a.x), !vec3<bool>(false, arg_1.c.c.x, false)), arg_1.c.a.x)), Struct_1(vec3<i32>(0i, arg_0, _wgslsmith_dot_vec4_i32(var_0 | var_0, var_0))), -232f);
    var_1 = Struct_2(select(arg_1.c.c.zy, vec2<bool>(select(false, var_1.c.x, var_1.c.x), all(var_1.c)), var_1.c.zz), _wgslsmith_sub_u32(firstLeadingBit(arg_1.d), var_1.b), !(!vec3<bool>(var_1.c.x, all(vec2<bool>(true, false)), any(vec4<bool>(arg_1.c.c.x, arg_1.c.a.x, arg_1.c.c.x, arg_1.c.a.x)))), arg_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.c.e) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.c.e - var_1.e), 769f)) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.c.e + 935f))))));
    return var_1.e;
}

fn func_2() -> u32 {
    var var_0 = vec2<bool>(all(select(vec3<bool>(all(vec3<bool>(true, false, true)), all(vec4<bool>(false, true, true, true)), true), vec3<bool>(true, true, true), false)), _wgslsmith_f_op_f32(func_4(i32(-1i) * -27730i, Struct_3(vec2<i32>(u_input.b, -1i) ^ vec2<i32>(10003i, u_input.b), countOneBits(-30296i), Struct_2(vec2<bool>(false, false), 3856u, vec3<bool>(true, true, false), Struct_1(vec3<i32>(u_input.b, 0i, -4944i)), -748f), ~u_input.a, Struct_1(vec3<i32>(2090i, u_input.b, u_input.b))), Struct_1(vec3<i32>(40171i, 56633i, u_input.b) ^ vec3<i32>(1i, u_input.b, -5484i)), func_3(u_input.b, _wgslsmith_div_vec2_f32(vec2<f32>(498f, -1206f), vec2<f32>(-1542f, -1000f)), countOneBits(-2147483647i)))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-365f - -162f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    var_0 = vec2<bool>(!(firstTrailingBit(4721u) <= 1u), true);
    var_0 = select(select(select(!vec2<bool>(var_0.x, var_0.x), vec2<bool>(!var_0.x, var_0.x), any(select(vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(var_0.x, var_0.x, false), var_0.x))), vec2<bool>(false, true), vec2<bool>(true, true)), !vec2<bool>(var_0.x, var_0.x), select(vec2<bool>(true, var_0.x), vec2<bool>(true, var_0.x), vec2<bool>(!(false & var_0.x), true)));
    var var_1 = false;
    var_0 = vec2<bool>(var_0.x, true);
    return u_input.a;
}

fn func_1() -> StorageBuffer {
    let var_0 = _wgslsmith_mult_i32(u_input.b, u_input.b);
    var var_1 = Struct_2(vec2<bool>(any(vec4<bool>(true, any(vec2<bool>(false, true)), true, true)), true), u_input.a, select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), true)), !select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), false)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), u_input.a <= firstTrailingBit(8350u)), select(vec3<bool>(true, true, true), vec3<bool>(any(vec3<bool>(false, true, true)), 113791u < u_input.a, any(vec3<bool>(false, false, true))), select(true, true, false))), Struct_1(-(~vec3<i32>(1i, 1i, -11858i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(125f * -2888f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(806f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(1017f)))))));
    var_1 = Struct_2(vec2<bool>(true, true), ~u_input.a | u_input.a, !var_1.c, Struct_1(var_1.d.a), 818f);
    var var_2 = _wgslsmith_mult_i32(26603i, firstTrailingBit(var_1.d.a.x));
    var_2 = ~(i32(-1i) * -4054i);
    return StorageBuffer(_wgslsmith_sub_vec4_u32(vec4<u32>(func_2(), 8129u, ~_wgslsmith_mod_u32(53630u, 39621u), reverseBits(~var_1.b)), ~(vec4<u32>(1u, 21129u, var_1.b, u_input.a) & vec4<u32>(0u, 18316u, u_input.a, 48537u))), _wgslsmith_add_u32(firstLeadingBit(func_2()), 10539u), _wgslsmith_f_op_f32(-var_1.e));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

