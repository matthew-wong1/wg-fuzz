struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: vec2<bool>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    var var_0 = arg_2;
    let var_1 = countOneBits(_wgslsmith_dot_vec2_u32(~(~(arg_0.a.zz | arg_2.a.xx)), ~var_0.a.yy));
    var_0 = arg_2;
    var var_2 = _wgslsmith_div_vec3_u32(select(_wgslsmith_div_vec3_u32(~(~arg_2.a), _wgslsmith_div_vec3_u32(firstLeadingBit(vec3<u32>(arg_2.a.x, 1u, 50701u)), reverseBits(vec3<u32>(27581u, var_1, 66988u)))), vec3<u32>(arg_1.a.x, ~4294967295u, arg_1.b), !any(vec2<bool>(true, false))), arg_1.a >> (vec3<u32>(var_0.a.x, 0u, 100562u) % vec3<u32>(32u)));
    var var_3 = -1000f;
    return arg_2.c.x;
}

fn func_2(arg_0: vec4<i32>, arg_1: f32, arg_2: f32) -> Struct_1 {
    let var_0 = countOneBits(vec2<u32>(21945u, ~0u));
    var var_1 = Struct_1(u_input.a.wxy, 0u, select(!select(select(vec2<bool>(true, false), vec2<bool>(true, true), true), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(true != any(vec2<bool>(false, true)), (var_0.x <= var_0.x) | func_3(Struct_1(vec3<u32>(var_0.x, u_input.b, var_0.x), var_0.x, vec2<bool>(false, true), vec3<f32>(arg_2, -634f, arg_2)), Struct_1(vec3<u32>(4294967295u, 4294967295u, 0u), 31276u, vec2<bool>(false, true), vec3<f32>(169f, -1000f, arg_2)), Struct_1(vec3<u32>(103776u, u_input.b, var_0.x), u_input.d.x, vec2<bool>(false, true), vec3<f32>(arg_2, arg_1, -943f)))), select(select(vec2<bool>(true, true), vec2<bool>(false, true), false), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false)), any(vec3<bool>(false, true, false))), false)), vec3<f32>(2231f, _wgslsmith_f_op_f32(arg_2 * -1880f), arg_2));
    let var_2 = -1541f;
    let var_3 = arg_0.x << (49621u % 32u);
    var_1 = Struct_1(~u_input.a.xyz, u_input.a.x, var_1.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, _wgslsmith_f_op_f32(trunc(arg_1)), -1357f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(772f, var_2)), 229f, var_1.d.x) * _wgslsmith_f_op_vec3_f32(select(var_1.d, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, -1246f, var_2)), vec3<bool>(var_1.c.x, false, true))))));
    return Struct_1(~var_1.a, 43594u, vec2<bool>(var_3 > var_3, var_1.c.x), var_1.d);
}

fn func_4(arg_0: vec2<bool>, arg_1: u32, arg_2: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(vec3<u32>(61251u, 0u, ~max(~arg_1, 32277u)), ~((_wgslsmith_mod_u32(2933u, arg_1) >> (1u % 32u)) & arg_2.b), !select(vec2<bool>(arg_2.c.x, arg_0.x), !arg_2.c, _wgslsmith_clamp_i32(1i, -6679i, 2458i) > _wgslsmith_mod_i32(-31370i, 1i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_2.d.x, arg_2.d.x, -147f))) - vec3<f32>(arg_2.d.x, _wgslsmith_f_op_f32(arg_2.d.x * arg_2.d.x), _wgslsmith_f_op_f32(-arg_2.d.x)))));
    let var_1 = func_2(vec4<i32>(1i, ~(-_wgslsmith_dot_vec3_i32(vec3<i32>(-49207i, -56054i, -209i), vec3<i32>(-2147483647i, -16957i, -21592i))), ~(-26933i), _wgslsmith_sub_i32(-1i, 1i)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(arg_2.d.x, 575f)), _wgslsmith_f_op_f32(746f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.d.x)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(794f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.x))) + var_0.d.x)).b;
    let var_2 = var_0.d.x;
    let var_3 = func_2(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 37604i), vec2<i32>(1i, 34825i)), 1i, reverseBits(i32(-1i) * -2147483647i), 52758i) << (firstTrailingBit(vec4<u32>(max(10279u, 0u), ~var_0.b, 16955u, arg_1)) % vec4<u32>(32u)), -465f, var_0.d.x);
    let var_4 = !(!vec3<bool>(false | any(vec4<bool>(var_3.c.x, arg_0.x, arg_2.c.x, true)), true, all(!arg_2.c)));
    return Struct_1(firstLeadingBit(_wgslsmith_sub_vec3_u32(select(~var_3.a, var_0.a, vec3<bool>(true, true, true)), vec3<u32>(0u << (u_input.c % 32u), _wgslsmith_mod_u32(var_3.b, var_0.a.x), var_3.a.x))), ~var_0.b, !var_4.zz, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.d))));
}

fn func_1() -> vec2<bool> {
    let var_0 = func_4(select(select(select(vec2<bool>(true, true), vec2<bool>(false, false), false), vec2<bool>(true, true), true), !(!select(vec2<bool>(true, false), vec2<bool>(true, false), false)), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), 19592u, func_2(-(vec4<i32>(-1i) * -vec4<i32>(2147483647i, -27151i, 20829i, -2147483647i)), _wgslsmith_f_op_f32(step(-269f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(177f)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1598f)) - -325f), -787f)));
    let var_1 = 107f;
    var var_2 = -126f;
    var_2 = 1634f;
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(func_4(var_0.c, 16648u | _wgslsmith_dot_vec2_u32(u_input.d, var_0.a.zx), var_0).d.x)));
    return var_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(countOneBits(-6871i), i32(-1i) * -6484i, _wgslsmith_add_i32(~((-28447i << (u_input.d.x % 32u)) ^ 33119i), -select(~15481i, 0i, true)));
    var var_1 = Struct_1(vec3<u32>(u_input.c, 6597u, u_input.b), reverseBits(~min(41862u | u_input.c, 0u)), func_1(), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(405f, _wgslsmith_f_op_f32(f32(-1f) * -1401f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -525f) - _wgslsmith_f_op_f32(208f * -1020f))))));
    var_0 = select(countOneBits(vec3<i32>(i32(-1i) * -var_0.x, var_0.x, var_0.x)), vec3<i32>(~1i, countOneBits(countOneBits(_wgslsmith_dot_vec2_i32(var_0.yz, var_0.xy))), var_0.x & -6731i), var_1.c.x | (func_2(vec4<i32>(0i, -1i, 24827i, 2147483647i), _wgslsmith_f_op_f32(-var_1.d.x), _wgslsmith_f_op_f32(-1843f - -3188f)).c.x & func_3(func_4(var_1.c, var_1.b, Struct_1(vec3<u32>(4294967295u, 39998u, u_input.d.x), var_1.b, vec2<bool>(true, true), vec3<f32>(var_1.d.x, var_1.d.x, var_1.d.x))), Struct_1(u_input.a.xzw, u_input.b, vec2<bool>(var_1.c.x, true), var_1.d), func_4(var_1.c, 4294967295u, Struct_1(vec3<u32>(var_1.b, u_input.a.x, 256u), u_input.d.x, vec2<bool>(var_1.c.x, true), vec3<f32>(457f, var_1.d.x, 1079f))))));
    let var_2 = Struct_1(~(~vec3<u32>(1u, 42233u, u_input.d.x) ^ ~var_1.a), (23332u << (func_2(vec4<i32>(5564i, 2147483647i, 2147483647i, -70271i), _wgslsmith_f_op_f32(-var_1.d.x), _wgslsmith_f_op_f32(select(358f, var_1.d.x, false))).a.x % 32u)) << (_wgslsmith_dot_vec4_u32(vec4<u32>(0u, reverseBits(u_input.c), 13335u, ~var_1.b), firstTrailingBit(vec4<u32>(var_1.b, u_input.a.x, 1u, 59801u))) % 32u), select(select(vec2<bool>(var_1.c.x, select(true, false, var_1.c.x)), vec2<bool>(false, var_1.c.x), func_2(vec4<i32>(var_0.x, var_0.x, var_0.x, -1i), -784f, 661f).c), func_4(!vec2<bool>(var_1.c.x, var_1.c.x), _wgslsmith_dot_vec3_u32(var_1.a, countOneBits(vec3<u32>(0u, var_1.a.x, u_input.c))), func_4(var_1.c, ~1u, func_2(vec4<i32>(-1i, 2147483647i, 0i, 0i), -1314f, var_1.d.x))).c, var_1.c.x), var_1.d);
    var_1 = func_4(!var_2.c, 4254u, var_2);
    let var_3 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(func_2(vec4<i32>(-1i) * -(vec4<i32>(1i, var_0.x, -39013i, var_0.x) >> (vec4<u32>(var_3.b, var_1.a.x, var_1.a.x, var_3.b) % vec4<u32>(32u))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.d.x + -242f)), _wgslsmith_f_op_f32(-var_2.d.x)), _wgslsmith_f_op_f32(-var_3.d.x)).a.zx);
}

