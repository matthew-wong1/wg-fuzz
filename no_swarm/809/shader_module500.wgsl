struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: vec3<u32>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: vec3<f32>) -> vec2<bool> {
    let var_0 = arg_1;
    var var_1 = vec4<u32>(~var_0.b, var_0.b, ~0u ^ ~(~_wgslsmith_dot_vec3_u32(var_0.c, var_0.c)), arg_1.c.x);
    let var_2 = ~(~select(~vec3<u32>(u_input.d, u_input.d, 59143u), ~var_0.c, arg_0));
    let var_3 = Struct_1(var_0.a, var_1.x, select(vec3<u32>(abs(u_input.d << (18822u % 32u)), 93640u, _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(var_0.c, var_1.zyw), 1u)), ~var_1.zxw, vec3<bool>(arg_1.a.x | true, true, arg_1.a.x)), _wgslsmith_f_op_vec2_f32(arg_1.d * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-arg_2.x), -1271f), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1728f, arg_1.d.x), vec2<f32>(var_0.d.x, var_0.d.x), false)), _wgslsmith_f_op_vec2_f32(ceil(arg_1.d)), var_0.a))))));
    var_1 = vec4<u32>(abs(4294967295u), _wgslsmith_sub_u32(var_2.x & ~(~1u), _wgslsmith_sub_u32(~(var_1.x ^ var_1.x), 1u)), _wgslsmith_mod_u32(countOneBits(1673u), _wgslsmith_sub_u32(var_1.x, _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(var_1.yz, var_1.xx), ~64669u))), 34822u);
    return select(!select(var_3.a, vec2<bool>(false, arg_0), !select(vec2<bool>(var_0.a.x, var_0.a.x), vec2<bool>(var_0.a.x, true), vec2<bool>(true, arg_1.a.x))), vec2<bool>(var_3.a.x, var_3.a.x), true | (41403i >= min(u_input.a, _wgslsmith_add_i32(2147483647i, u_input.c.x))));
}

fn func_2(arg_0: vec4<f32>, arg_1: i32, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    var var_0 = -860f;
    var var_1 = Struct_1(select(vec2<bool>(~51374u < ~arg_2.b, true), func_3(!(-1i > arg_1), Struct_1(select(vec2<bool>(arg_2.a.x, arg_2.a.x), arg_3.a, arg_2.a), 4294967295u, arg_2.c, _wgslsmith_f_op_vec2_f32(arg_2.d - arg_3.d)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(arg_0.yxy, arg_0.xyz)) - vec3<f32>(-416f, -2068f, arg_0.x))), vec2<bool>(arg_3.a.x, any(!vec4<bool>(arg_3.a.x, true, true, arg_3.a.x)))), _wgslsmith_mod_u32(arg_3.c.x, arg_3.b), abs(vec3<u32>(~13771u, select(arg_2.c.x, abs(u_input.d), func_3(arg_2.a.x, Struct_1(arg_3.a, arg_2.c.x, arg_2.c, vec2<f32>(arg_0.x, 555f)), arg_0.xzw).x), 1u)), vec2<f32>(_wgslsmith_f_op_f32(250f - _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(arg_0.x, arg_2.d.x)))), arg_0.x));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -278f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-726f - _wgslsmith_f_op_f32(floor(var_1.d.x))), _wgslsmith_f_op_f32(abs(var_1.d.x))))));
    let var_2 = arg_2;
    let var_3 = var_2;
    return var_2;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1218f, _wgslsmith_f_op_f32(arg_1.d.x * arg_0.d.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_0.d.x, 1718f)) * 152f), arg_1.d.x));
    var var_1 = func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.d.x, _wgslsmith_f_op_f32(f32(-1f) * -629f), -376f, _wgslsmith_f_op_f32(abs(451f)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(-396f)), var_0.x, _wgslsmith_f_op_f32(exp2(var_0.x)), _wgslsmith_f_op_f32(min(-1750f, arg_0.d.x))))), 24132i, Struct_1(!func_2(vec4<f32>(-445f, arg_0.d.x, arg_1.d.x, 855f), u_input.a, func_2(vec4<f32>(-1000f, var_0.x, var_0.x, -460f), u_input.c.x, arg_1, Struct_1(vec2<bool>(arg_0.a.x, arg_1.a.x), 4294967295u, vec3<u32>(28342u, 32332u, 4294967295u), var_0.zz)), func_2(vec4<f32>(123f, var_0.x, -605f, 334f), -1218i, Struct_1(vec2<bool>(arg_1.a.x, true), arg_0.c.x, vec3<u32>(4294967295u, 0u, u_input.d), var_0.yy), Struct_1(vec2<bool>(arg_1.a.x, arg_0.a.x), u_input.d, vec3<u32>(1u, arg_1.b, 0u), vec2<f32>(1251f, arg_1.d.x)))).a, u_input.d, countOneBits(_wgslsmith_sub_vec3_u32(~arg_1.c, reverseBits(vec3<u32>(arg_0.b, 31668u, 1u)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(func_2(vec4<f32>(763f, arg_0.d.x, 229f, arg_1.d.x), 38522i, arg_1, arg_1).d.x, -1597f))), Struct_1(!(!(!vec2<bool>(arg_0.a.x, arg_0.a.x))), countOneBits(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, u_input.d), arg_0.c.yz), firstLeadingBit(arg_0.b))), arg_1.c, arg_1.d));
    let var_2 = ~45449u;
    var var_3 = firstLeadingBit(select(0u, _wgslsmith_dot_vec3_u32(arg_1.c, abs(vec3<u32>(1u, 21180u, u_input.d)) & vec3<u32>(63508u, 1u, 97997u)), (firstLeadingBit(u_input.a) != -2147483647i) & arg_1.a.x));
    var_1 = func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.d.x, _wgslsmith_f_op_f32(f32(-1f) * -207f), var_1.d.x, -579f)), 0i, Struct_1(!vec2<bool>(!var_1.a.x, arg_1.a.x), ~countOneBits(1u), var_1.c, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1349f + var_0.x)), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1007f, -951f), _wgslsmith_f_op_f32(trunc(-833f)))))), Struct_1(vec2<bool>(var_1.a.x, true), min(var_2, 1u), var_1.c, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1137f + 833f), _wgslsmith_div_f32(arg_0.d.x, var_1.d.x)) + var_1.d)));
    return all(select(!(!(!vec4<bool>(true, var_1.a.x, false, false))), vec4<bool>(false, func_3(true, arg_0, _wgslsmith_f_op_vec3_f32(-var_0)).x, arg_0.a.x, arg_1.a.x), vec4<bool>(false, var_1.a.x, false && all(vec3<bool>(false, arg_1.a.x, false)), true)));
}

fn func_1() -> Struct_1 {
    let var_0 = -366f;
    let var_1 = Struct_1(vec2<bool>(func_4(Struct_1(vec2<bool>(true, true), ~u_input.d, vec3<u32>(u_input.d, u_input.d, u_input.d), _wgslsmith_div_vec2_f32(vec2<f32>(-1562f, -258f), vec2<f32>(1507f, var_0))), func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(152f, -1063f, 283f, var_0) * vec4<f32>(var_0, var_0, var_0, var_0)), -27056i & u_input.c.x, Struct_1(vec2<bool>(true, false), 1u, vec3<u32>(u_input.d, u_input.d, 0u), vec2<f32>(-1410f, var_0)), Struct_1(vec2<bool>(false, false), u_input.d, vec3<u32>(6455u, u_input.d, u_input.d), vec2<f32>(733f, var_0)))), ~(-4278i) < (u_input.a >> (max(1u, u_input.d) % 32u))), func_2(vec4<f32>(var_0, -526f, _wgslsmith_f_op_f32(ceil(1099f)), var_0), u_input.c.x, func_2(vec4<f32>(var_0, 2502f, var_0, var_0), -1i, func_2(vec4<f32>(var_0, 284f, 229f, var_0), -7000i, Struct_1(vec2<bool>(false, true), 1u, vec3<u32>(0u, u_input.d, u_input.d), vec2<f32>(var_0, var_0)), Struct_1(vec2<bool>(true, true), 40807u, vec3<u32>(u_input.d, u_input.d, 29821u), vec2<f32>(var_0, var_0))), Struct_1(vec2<bool>(true, true), 0u, vec3<u32>(1u, u_input.d, 17281u), vec2<f32>(var_0, 695f))), Struct_1(func_3(false, Struct_1(vec2<bool>(true, true), 64297u, vec3<u32>(u_input.d, 22612u, 0u), vec2<f32>(var_0, 117f)), vec3<f32>(var_0, var_0, 187f)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, u_input.d, u_input.d, u_input.d), vec4<u32>(u_input.d, u_input.d, 0u, u_input.d)), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.d, 72041u, 48396u), vec3<u32>(0u, 86114u, 0u)), func_2(vec4<f32>(-1090f, var_0, var_0, 1825f), 2147483647i, Struct_1(vec2<bool>(false, true), u_input.d, vec3<u32>(1u, 56236u, u_input.d), vec2<f32>(1000f, -1000f)), Struct_1(vec2<bool>(false, true), 1u, vec3<u32>(u_input.d, u_input.d, 1u), vec2<f32>(var_0, var_0))).d)).c.x & (~1u << (_wgslsmith_mod_u32(14387u, _wgslsmith_sub_u32(24308u, u_input.d)) % 32u)), ~vec3<u32>(~u_input.d, ~u_input.d, ~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(u_input.d, 32897u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0, 1476f), vec2<f32>(var_0, -1282f)))))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0, var_0))))), vec2<f32>(_wgslsmith_f_op_f32(-1605f * -502f), -1265f))));
    let var_2 = select(_wgslsmith_clamp_vec2_u32(vec2<u32>(func_2(vec4<f32>(-299f, -841f, -465f, 631f), -2147483647i, Struct_1(vec2<bool>(true, var_1.a.x), 33023u, vec3<u32>(var_1.c.x, 1u, var_1.b), vec2<f32>(var_1.d.x, -376f)), Struct_1(var_1.a, 1u, var_1.c, vec2<f32>(225f, var_0))).c.x, u_input.d), ~(~var_1.c.xy), ~select(vec2<u32>(var_1.b, u_input.d), vec2<u32>(u_input.d, u_input.d), var_1.a)) | firstLeadingBit(var_1.c.zy), var_1.c.yz, !vec2<bool>(var_1.d.x == 1413f, var_1.a.x && all(vec4<bool>(var_1.a.x, var_1.a.x, false, var_1.a.x))));
    var var_3 = var_1;
    var var_4 = Struct_1(!(!vec2<bool>(var_1.a.x || var_3.a.x, true)), ~var_3.b, firstLeadingBit(min(_wgslsmith_div_vec3_u32(var_1.c, _wgslsmith_add_vec3_u32(vec3<u32>(var_1.b, var_2.x, var_1.b), var_3.c)), _wgslsmith_mod_vec3_u32(var_3.c, vec3<u32>(u_input.d, 1u, 1u) ^ var_1.c))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.d.x * var_3.d.x)))));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = vec3<i32>(u_input.b.x, u_input.b.x, 1i);
    let var_2 = Struct_1(select(vec2<bool>(true, var_1.x > var_1.x), var_0.a, var_0.a), abs(u_input.d), func_1().c, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.d), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.d.x, var_0.d.x) * _wgslsmith_f_op_vec2_f32(min(var_0.d, vec2<f32>(var_0.d.x, -1408f))))))));
    var_1 = vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, -8721i, countOneBits(u_input.c.x)), firstLeadingBit(vec3<i32>(i32(-1i) * -30912i, i32(-1i) * -37342i, u_input.c.x))), var_1.x >> (12342u % 32u), u_input.c.x);
    let var_3 = true;
    let var_4 = var_0.c.xy;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(var_2.b, 61884u), var_1.zz, -(-(~u_input.c.x) << (_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(30681u, var_0.b, var_2.c.x, 4294967295u), vec4<u32>(var_4.x, 34654u, var_4.x, var_2.b), vec4<u32>(var_4.x, 0u, 47349u, u_input.d)), ~vec4<u32>(u_input.d, 1u, 9399u, u_input.d)) % 32u)), _wgslsmith_dot_vec4_i32(vec4<i32>(~(-2147483647i) ^ _wgslsmith_sub_i32(-5597i, var_1.x), var_1.x, _wgslsmith_sub_i32(max(var_1.x, u_input.a), var_1.x), _wgslsmith_mod_i32(_wgslsmith_mod_i32(u_input.c.x, 0i), var_1.x)), ~(abs(vec4<i32>(var_1.x, var_1.x, u_input.c.x, 23894i)) << ((vec4<u32>(var_0.c.x, var_4.x, var_2.c.x, 4294967295u) >> (vec4<u32>(84098u, 7339u, 4294967295u, 45016u) % vec4<u32>(32u))) % vec4<u32>(32u)))), -615f);
}

