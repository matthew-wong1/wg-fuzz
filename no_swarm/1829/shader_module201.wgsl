struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<u32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: i32) -> vec3<u32> {
    var var_0 = !(!select(select(select(vec4<bool>(arg_1, arg_1, true, true), vec4<bool>(true, arg_1, true, false), arg_1), !vec4<bool>(false, false, arg_1, true), vec4<bool>(true, arg_1, arg_1, true)), select(select(vec4<bool>(true, arg_1, arg_1, arg_1), vec4<bool>(arg_1, arg_1, false, true), true), vec4<bool>(arg_1, true, arg_1, arg_1), select(vec4<bool>(false, arg_1, arg_1, arg_1), vec4<bool>(true, arg_1, false, arg_1), vec4<bool>(arg_1, false, false, false))), !(!vec4<bool>(arg_1, arg_1, arg_1, true))));
    let var_1 = _wgslsmith_f_op_f32(-516f - arg_0.c.x);
    var_0 = select(!vec4<bool>(arg_1, var_0.x, true, true), !select(!(!vec4<bool>(false, false, var_0.x, var_0.x)), vec4<bool>(!var_0.x, 2147483647i > arg_2, true, all(vec2<bool>(false, true))), vec4<bool>(arg_1, var_0.x, arg_1, var_0.x)), arg_2 < arg_2);
    var_0 = vec4<bool>(arg_1, reverseBits(~_wgslsmith_clamp_u32(0u, u_input.a.x, 14180u)) >= u_input.a.x, arg_1 | arg_1, true);
    let var_2 = arg_0;
    return reverseBits(~countOneBits(~select(vec3<u32>(1u, var_2.b.x, u_input.a.x), u_input.a.zzz, vec3<bool>(true, arg_1, var_0.x))));
}

fn func_2(arg_0: f32, arg_1: u32) -> vec3<u32> {
    var var_0 = Struct_1(reverseBits(~abs(arg_1)), ~(u_input.a.xz ^ ~u_input.a.zy), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(295f, arg_0) * vec2<f32>(arg_0, arg_0)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, arg_0) + vec2<f32>(-844f, 299f)), vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_0, 920f))))))));
    var_0 = Struct_1(_wgslsmith_dot_vec3_u32(min(_wgslsmith_sub_vec3_u32(vec3<u32>(var_0.b.x, 45235u, 0u) ^ u_input.a.xyx, _wgslsmith_div_vec3_u32(vec3<u32>(arg_1, 4294967295u, var_0.b.x), u_input.a.yzy)), u_input.a.xzx), _wgslsmith_sub_vec3_u32(func_3(Struct_1(arg_1, vec2<u32>(u_input.a.x, 8245u), var_0.c), true, ~(-67234i)), u_input.a.zxy)), vec2<u32>(max(79907u, _wgslsmith_mult_u32(arg_1, _wgslsmith_div_u32(arg_1, u_input.a.x))), var_0.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, -349f) + vec2<f32>(857f, var_0.c.x)))));
    var_0 = Struct_1(~(~(~u_input.a.x)) << (~firstTrailingBit(53631u) % 32u), select(~(~abs(var_0.b)), u_input.a.ww, vec2<bool>(true, true)), var_0.c);
    let var_1 = Struct_1(abs(~1u), abs(~u_input.a.ww ^ ~u_input.a.ww) ^ reverseBits(u_input.a.xw), vec2<f32>(var_0.c.x, 188f));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_0.c.x)), -263f) + _wgslsmith_f_op_f32(-var_0.c.x));
    return abs(~vec3<u32>(_wgslsmith_div_u32(firstTrailingBit(var_1.a), reverseBits(3770u)), ~35803u & arg_1, firstLeadingBit(~u_input.a.x)));
}

fn func_4(arg_0: vec3<u32>, arg_1: vec2<bool>, arg_2: u32, arg_3: Struct_1) -> Struct_1 {
    var var_0 = true;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(arg_3.c.x, arg_3.c.x)))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(290f, 1000f), arg_3.c.x)))));
    var var_2 = true;
    var var_3 = select(select(arg_1, select(select(vec2<bool>(arg_1.x, arg_1.x), arg_1, arg_3.b.x == u_input.a.x), !(!vec2<bool>(arg_1.x, arg_1.x)), arg_1.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(arg_3.c.x)), _wgslsmith_f_op_f32(172f + -2393f)) > _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_3.c.x)))), arg_1, select(vec2<bool>(any(arg_1), !(501f >= var_1)), !vec2<bool>(false & arg_1.x, true), arg_1));
    var var_4 = all(select(vec3<bool>(true, ~arg_2 >= _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 0u, 36344u), vec3<u32>(u_input.a.x, arg_3.a, 4294967295u)), arg_1.x), select(!vec3<bool>(var_3.x, var_3.x, arg_1.x), select(select(vec3<bool>(arg_1.x, true, false), vec3<bool>(false, false, true), arg_1.x), vec3<bool>(arg_1.x, arg_1.x, arg_1.x), select(vec3<bool>(arg_1.x, arg_1.x, false), vec3<bool>(arg_1.x, arg_1.x, true), vec3<bool>(true, var_3.x, arg_1.x))), var_1 > _wgslsmith_f_op_f32(f32(-1f) * -407f)), vec3<bool>(false, true, true)));
    return arg_3;
}

fn func_1() -> u32 {
    var var_0 = Struct_1(u_input.a.x, select(vec2<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(u_input.a, vec4<u32>(4294967295u, u_input.a.x, 0u, u_input.a.x)), _wgslsmith_mod_vec4_u32(u_input.a, u_input.a)), firstLeadingBit(_wgslsmith_add_u32(4294967295u, u_input.a.x))), u_input.a.wy, vec2<bool>(all(vec4<bool>(true, true, true, true)), true)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(648f - 1000f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1492f), -112f)) * vec2<f32>(_wgslsmith_f_op_f32(-299f - -295f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1000f)) - -1630f))));
    var var_1 = func_4(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1148f))), ~_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(u_input.a.zz, u_input.a.zw), _wgslsmith_div_u32(u_input.a.x, var_0.a), ~var_0.b.x)), !select(vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(true, var_0.c.x <= 405f)), 33922u, Struct_1(var_0.a, vec2<u32>(var_0.a, _wgslsmith_dot_vec2_u32(~vec2<u32>(var_0.b.x, 16634u), vec2<u32>(40260u, 4294967295u) | u_input.a.wy)), var_0.c));
    let var_2 = var_1.b;
    var_1 = func_4(u_input.a.xzw, vec2<bool>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1402f, var_0.c.x))) == 102f, any(vec2<bool>(true, true))), 7612u, Struct_1(var_0.a, ~u_input.a.zy, vec2<f32>(_wgslsmith_f_op_f32(round(var_1.c.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1385f))))));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.c.x)) + _wgslsmith_f_op_f32(-var_0.c.x)), var_1.c.x, var_1.c.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-1184f, var_1.c.x))))))));
    return var_1.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~1u);
    let var_1 = Struct_1(_wgslsmith_mod_u32(countOneBits(~var_0), _wgslsmith_dot_vec2_u32(u_input.a.yz, _wgslsmith_mult_vec2_u32(u_input.a.yx, u_input.a.zy))), countOneBits(vec2<u32>(4294967295u, _wgslsmith_mod_u32(u_input.a.x, firstTrailingBit(29793u)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1005f, 951f))))));
    let var_2 = !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_1.c.x * var_1.c.x))) + -1477f) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1746f, var_1.c.x, false))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_1.c.x - var_1.c.x)))));
    var var_3 = Struct_1(12933u, firstTrailingBit(countOneBits(vec2<u32>(var_1.b.x, u_input.a.x) << (u_input.a.xy % vec2<u32>(32u)))) << (vec2<u32>(select(1182u, ~0u, var_2), func_1()) % vec2<u32>(32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.c.x, var_1.c.x) * vec2<f32>(var_1.c.x, -1627f)))))));
    var var_4 = _wgslsmith_f_op_f32(-197f * var_3.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(13540i, max(-_wgslsmith_sub_i32(1i, -1i), 17554i), -reverseBits(16389i), 0i), var_3.a | max(~var_3.b.x, ~var_0), vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_add_u32(~50423u, u_input.a.x >> (var_3.a % 32u)), 0u), ~u_input.a.x), var_1.c.x, abs(_wgslsmith_dot_vec2_i32(~vec2<i32>(24643i, -2147483647i), firstTrailingBit(vec2<i32>(-27592i, 7300i))) ^ -22981i));
}

