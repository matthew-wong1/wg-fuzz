struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: bool,
    d: vec3<bool>,
}

struct Struct_2 {
    a: u32,
    b: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_2,
    d: bool,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_1(false, vec2<bool>(true, true), false, vec3<bool>(false, false, false)), vec3<u32>(43309u, 50777u, 4294967295u), Struct_2(79014u, 158f), true, Struct_2(4294967295u, -1187f));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: vec2<u32>) -> vec2<f32> {
    global0 = arg_1;
    var var_0 = _wgslsmith_f_op_f32(-1428f - _wgslsmith_f_op_f32(min(1321f, -273f)));
    var var_1 = global0.a;
    var_1 = Struct_1(false, arg_0.xz, false, select(select(arg_0, vec3<bool>(var_1.b.x, 1671f != arg_1.e.b, true), true), var_1.d, true));
    var var_2 = abs(vec2<i32>(-1i << (_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.x, u_input.a.x, 4294967295u, 1u), vec4<u32>(7157u, 0u, arg_1.e.a, arg_2.x)) % 32u), countOneBits(firstLeadingBit(-11680i)))) ^ -vec2<i32>(~(-9995i), _wgslsmith_mod_i32(_wgslsmith_mod_i32(-23315i, 5931i), select(16243i, -4888i, true)));
    return vec2<f32>(global0.e.b, _wgslsmith_f_op_f32(max(global0.c.b, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1275f + arg_1.c.b), _wgslsmith_f_op_f32(arg_1.c.b + arg_1.c.b))))))));
}

fn func_2(arg_0: vec2<bool>) -> bool {
    let var_0 = global0.c;
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(func_3(global0.a.d, Struct_3(global0.a, u_input.a >> (vec3<u32>(4294967295u, 37951u, var_0.a) % vec3<u32>(32u)), global0.c, true, Struct_2(4294967295u, var_0.b)), vec2<u32>(u_input.a.x, ~var_0.a))))));
    global0 = Struct_3(global0.a, global0.b, global0.e, all(select(!vec4<bool>(arg_0.x, arg_0.x, true, global0.a.c), select(vec4<bool>(false, false, true, arg_0.x), !vec4<bool>(false, false, arg_0.x, false), select(vec4<bool>(global0.a.b.x, global0.a.d.x, global0.a.b.x, false), vec4<bool>(true, global0.d, arg_0.x, false), false)), true)), Struct_2(~_wgslsmith_mod_u32(u_input.a.x, 94369u), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_3(vec3<bool>(arg_0.x, global0.d, global0.a.c), Struct_3(Struct_1(arg_0.x, vec2<bool>(true, true), false, global0.a.d), global0.b, Struct_2(var_0.a, global0.c.b), arg_0.x, global0.c), vec2<u32>(u_input.a.x, u_input.a.x))).x)))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_3(!global0.a.d, Struct_3(Struct_1(global0.a.d.x, global0.a.d.xy, true, global0.a.d), ~u_input.a, global0.c, !arg_0.x, global0.c), u_input.a.xx)).x) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(var_0.b)), _wgslsmith_f_op_f32(1024f - -1000f))), 297f)))));
    global0 = Struct_3(global0.a, ~vec3<u32>(_wgslsmith_dot_vec3_u32(countOneBits(u_input.a), ~u_input.a), var_0.a, (global0.e.a << (68132u % 32u)) & ~4294967295u), Struct_2(min(min(1u, 81424u), global0.c.a | firstTrailingBit(4294967295u)), _wgslsmith_f_op_f32(global0.c.b * _wgslsmith_f_op_f32(-var_0.b))), all(select(!vec2<bool>(global0.a.c, arg_0.x), global0.a.b, vec2<bool>(global0.a.c, arg_0.x))) & true, global0.c);
    return all(select(!vec4<bool>(true, any(global0.a.d), arg_0.x == arg_0.x, true), vec4<bool>(any(!vec2<bool>(global0.d, true)), _wgslsmith_f_op_f32(sign(736f)) != _wgslsmith_f_op_f32(max(var_0.b, var_1.x)), true, false), global0.d));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_1, arg_2: i32, arg_3: Struct_3) -> Struct_1 {
    global0 = Struct_3(Struct_1(!arg_0.d, vec2<bool>(true, func_2(vec2<bool>(true, global0.d))), select(all(!arg_0.a.b), all(arg_3.a.d), _wgslsmith_dot_vec2_u32(u_input.a.yz, arg_0.b.zx) >= arg_3.b.x), !arg_0.a.d), vec3<u32>(~4294967295u, 0u, _wgslsmith_clamp_u32(_wgslsmith_mod_u32(abs(global0.b.x), 4294967295u), abs(firstLeadingBit(arg_3.e.a)), arg_0.c.a & arg_0.e.a)), arg_0.e, !global0.d, Struct_2(~abs(50346u), _wgslsmith_div_f32(-541f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(205f)) + 549f))));
    let var_0 = arg_3.c;
    var var_1 = arg_2 << (40924u % 32u);
    global0 = Struct_3(Struct_1(!(_wgslsmith_div_f32(arg_3.c.b, 1451f) > arg_3.c.b), vec2<bool>(true, global0.d), arg_3.d, global0.a.d), u_input.a, Struct_2(_wgslsmith_clamp_u32(~4008u, var_0.a, firstTrailingBit(arg_3.b.x)), _wgslsmith_f_op_f32(min(987f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_3.c.b)))))), any(!(!select(vec4<bool>(true, global0.d, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, global0.d, false, arg_0.d)))), arg_3.e);
    let var_2 = select(~select(min(vec2<u32>(7116u, 44762u) >> (global0.b.xz % vec2<u32>(32u)), ~arg_0.b.zy), arg_3.b.yz, !arg_3.a.d.zy), reverseBits(arg_0.b.zz), (~abs(1511u) << (_wgslsmith_dot_vec2_u32(min(arg_3.b.zy, vec2<u32>(u_input.a.x, 0u)), countOneBits(global0.b.xx)) % 32u)) >= reverseBits(_wgslsmith_mod_u32(_wgslsmith_mod_u32(0u, 34574u), arg_3.c.a)));
    return global0.a;
}

fn func_4(arg_0: f32, arg_1: Struct_1) -> i32 {
    global0 = Struct_3(Struct_1(true, vec2<bool>(any(global0.a.d), !arg_1.c), global0.a.a, select(vec3<bool>(any(vec4<bool>(false, global0.d, false, global0.a.b.x)), true, all(vec4<bool>(arg_1.a, arg_1.a, arg_1.a, arg_1.b.x))), !select(arg_1.d, arg_1.d, arg_1.d), all(vec3<bool>(true, true, false)))), ~countOneBits(u_input.a), Struct_2(1u >> (_wgslsmith_add_u32(global0.b.x, _wgslsmith_div_u32(0u, 1u)) % 32u), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_0 * global0.e.b)))), false, global0.e);
    let var_0 = global0.a.a;
    var var_1 = vec4<u32>(_wgslsmith_dot_vec3_u32(~max(~vec3<u32>(global0.b.x, 1u, u_input.a.x), _wgslsmith_div_vec3_u32(global0.b, u_input.a)), global0.b), firstTrailingBit(1u << ((~17191u >> (global0.c.a % 32u)) % 32u)), 0u, ~_wgslsmith_mult_u32(~1u, u_input.a.x) >> (abs(~(~u_input.a.x)) % 32u));
    var var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-842f, _wgslsmith_f_op_f32(-649f + 740f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(217f))), _wgslsmith_f_op_f32(global0.c.b - global0.c.b)) + vec3<f32>(arg_0, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-417f, _wgslsmith_f_op_f32(max(global0.e.b, -144f))) + _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(global0.c.b - global0.e.b))), _wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(global0.c.b)))))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x));
    return -31499i;
}

fn func_5(arg_0: i32, arg_1: i32, arg_2: bool, arg_3: Struct_2) -> vec4<f32> {
    let var_0 = true;
    global0 = Struct_3(Struct_1(arg_2 & false, vec2<bool>(global0.d, true), all(!select(global0.a.d, vec3<bool>(true, arg_2, true), global0.a.d)), global0.a.d), vec3<u32>(countOneBits(1u), 1u, global0.e.a) ^ select(vec3<u32>(arg_3.a, 1u, u_input.a.x >> (1u % 32u)), ~vec3<u32>(arg_3.a, 5841u, u_input.a.x), any(func_1(Struct_3(Struct_1(true, vec2<bool>(global0.a.b.x, true), arg_2, global0.a.d), vec3<u32>(global0.c.a, u_input.a.x, u_input.a.x), Struct_2(arg_3.a, 693f), arg_2, arg_3), global0.a, arg_0, Struct_3(global0.a, vec3<u32>(u_input.a.x, global0.e.a, 0u), Struct_2(u_input.a.x, -1000f), global0.d, Struct_2(4218u, global0.c.b))).b)), arg_3, var_0, Struct_2(_wgslsmith_dot_vec3_u32(global0.b, global0.b), _wgslsmith_f_op_f32(exp2(global0.e.b))));
    global0 = Struct_3(global0.a, max(u_input.a, _wgslsmith_add_vec3_u32(global0.b, ~vec3<u32>(0u, arg_3.a, global0.b.x))), Struct_2(1u, -456f), true, Struct_2(_wgslsmith_div_u32(~(~u_input.a.x), ~(~3842u)), arg_3.b));
    var var_1 = !select(select(select(!vec4<bool>(global0.d, true, true, var_0), vec4<bool>(false, var_0, false, arg_2), vec4<bool>(global0.d, true, arg_2, global0.d)), select(vec4<bool>(arg_2, arg_2, arg_2, true), vec4<bool>(global0.a.d.x, global0.a.d.x, true, false), all(global0.a.d.zx)), !vec4<bool>(var_0, var_0, true, arg_2)), select(select(!vec4<bool>(global0.a.d.x, arg_2, true, false), vec4<bool>(arg_2, true, false, false), vec4<bool>(true, global0.a.d.x, arg_2, global0.a.a)), !select(vec4<bool>(true, global0.a.d.x, false, global0.a.c), vec4<bool>(arg_2, var_0, false, true), true), true), select(!(!vec4<bool>(true, arg_2, false, false)), vec4<bool>(!var_0, !global0.d, -251f >= arg_3.b, select(true, global0.a.c, global0.d)), !vec4<bool>(global0.a.d.x, false, arg_2, true)));
    var_1 = select(!select(!vec4<bool>(global0.a.d.x, false, var_0, true), vec4<bool>(true, global0.a.d.x, !var_1.x, var_1.x), !vec4<bool>(var_1.x, global0.a.c, false, true)), !(!select(select(vec4<bool>(global0.a.a, var_0, var_0, true), vec4<bool>(global0.d, true, var_1.x, var_1.x), var_1.x), vec4<bool>(true, global0.a.c, false, var_0), false)), false);
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.e.b, global0.e.b, global0.e.b, -1183f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.b, 1353f, 333f, global0.e.b))) + vec4<f32>(global0.e.b, _wgslsmith_f_op_f32(floor(319f)), _wgslsmith_f_op_f32(round(-551f)), _wgslsmith_f_op_vec2_f32(func_3(vec3<bool>(var_0, var_1.x, var_0), Struct_3(global0.a, vec3<u32>(51132u, arg_3.a, global0.b.x), global0.c, true, Struct_2(1u, -1000f)), vec2<u32>(arg_3.a, global0.e.a))).x))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.e.b, -185f, 672f, global0.c.b), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.e.b, global0.e.b, global0.e.b, -841f) * vec4<f32>(global0.c.b, -497f, arg_3.b, 1236f)), !vec4<bool>(var_1.x, global0.d, global0.d, true))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1223f, 1000f, 1000f, arg_3.b)), vec4<f32>(arg_3.b, -278f, -478f, arg_3.b)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.e.b, _wgslsmith_f_op_f32(max(-1291f, global0.e.b)), global0.e.b, global0.c.b)) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.c.b, global0.c.b, 1101f, global0.c.b), vec4<f32>(1403f, global0.c.b, global0.c.b, -331f))))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c.b, -497f, _wgslsmith_f_op_f32(f32(-1f) * -102f), global0.e.b)) * vec4<f32>(global0.e.b, 810f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(-524f)), global0.e.b)), _wgslsmith_f_op_f32(global0.c.b - global0.c.b))));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-158f, _wgslsmith_f_op_f32(-379f - 1149f), _wgslsmith_f_op_f32(sign(-441f)), var_0.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-525f, 620f, var_0.x, var_0.x)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1324f, 766f, 295f, 261f) - vec4<f32>(-1999f, var_0.x, -321f, 224f))))) * _wgslsmith_f_op_vec4_f32(func_5(firstLeadingBit(func_4(-694f, func_1(Struct_3(Struct_1(global0.d, vec2<bool>(global0.a.c, true), true, vec3<bool>(true, global0.d, global0.a.a)), vec3<u32>(38044u, 41854u, 29842u), global0.e, global0.a.d.x, global0.e), Struct_1(true, vec2<bool>(false, false), global0.a.d.x, vec3<bool>(true, global0.d, false)), 12659i, Struct_3(global0.a, u_input.a, Struct_2(u_input.a.x, var_0.x), global0.a.b.x, Struct_2(u_input.a.x, 511f))))), ~1i, !any(vec2<bool>(false, true)), global0.c)));
    var var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.e.b), -1610f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-371f + -105f) * _wgslsmith_f_op_f32(-1079f - 905f))), -2569f)) >= global0.e.b;
    let var_2 = vec4<f32>(global0.c.b, global0.e.b, _wgslsmith_f_op_f32(-var_0.x), var_0.x);
    var_1 = global0.d;
    var_1 = all(vec2<bool>(_wgslsmith_f_op_f32(select(-1256f, var_2.x, var_0.x <= var_0.x)) >= -2243f, any(!(!vec4<bool>(true, global0.a.c, global0.d, global0.a.d.x)))));
    var var_3 = Struct_1(true, !func_1(Struct_3(func_1(Struct_3(global0.a, vec3<u32>(global0.e.a, global0.c.a, u_input.a.x), Struct_2(86577u, global0.e.b), global0.a.c, global0.e), Struct_1(false, vec2<bool>(global0.a.c, global0.a.a), global0.a.a, vec3<bool>(global0.a.a, false, global0.d)), 26971i, Struct_3(Struct_1(true, vec2<bool>(global0.d, global0.d), global0.a.b.x, vec3<bool>(true, global0.a.c, false)), global0.b, Struct_2(0u, global0.c.b), true, Struct_2(u_input.a.x, global0.c.b))), vec3<u32>(global0.e.a, u_input.a.x, global0.b.x) << (vec3<u32>(4294967295u, global0.b.x, 0u) % vec3<u32>(32u)), Struct_2(41154u, var_2.x), global0.d, Struct_2(u_input.a.x, 234f)), func_1(Struct_3(Struct_1(global0.d, vec2<bool>(true, global0.d), global0.d, global0.a.d), vec3<u32>(global0.b.x, 46199u, 4294967295u), Struct_2(global0.b.x, var_0.x), global0.d, Struct_2(1u, -1000f)), Struct_1(false, vec2<bool>(true, false), global0.d, global0.a.d), -40943i, Struct_3(global0.a, vec3<u32>(u_input.a.x, 0u, u_input.a.x), global0.e, false, Struct_2(global0.c.a, -123f))), reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 2147483647i, 29507i, -1i), vec4<i32>(-51504i, 23626i, 0i, -31589i))), Struct_3(Struct_1(global0.a.b.x, vec2<bool>(global0.a.a, global0.d), false, global0.a.d), reverseBits(vec3<u32>(global0.b.x, 1u, 1u)), global0.c, true, global0.c)).b, false, func_1(Struct_3(Struct_1(false, !global0.a.d.yx, global0.d, !vec3<bool>(true, global0.d, global0.a.a)), ~countOneBits(global0.b), global0.e, any(vec3<bool>(true, global0.a.d.x, false)), global0.c), Struct_1(true, vec2<bool>(true, !global0.a.c), _wgslsmith_f_op_f32(-global0.e.b) <= _wgslsmith_f_op_f32(select(global0.c.b, var_2.x, true)), vec3<bool>(true, global0.d, !global0.d)), abs(_wgslsmith_sub_i32(1i, 0i)) >> ((firstLeadingBit(25520u) ^ min(global0.e.a, global0.c.a)) % 32u), Struct_3(Struct_1(true, func_1(Struct_3(Struct_1(global0.a.c, global0.a.d.zx, global0.d, global0.a.d), u_input.a, Struct_2(62650u, var_0.x), global0.d, global0.c), Struct_1(global0.a.b.x, vec2<bool>(false, global0.a.a), true, vec3<bool>(global0.d, global0.a.d.x, true)), 1i, Struct_3(global0.a, vec3<u32>(u_input.a.x, global0.c.a, u_input.a.x), global0.e, global0.a.b.x, Struct_2(4294967295u, var_2.x))).b, global0.d, select(vec3<bool>(false, global0.d, true), global0.a.d, global0.a.c)), vec3<u32>(1u, 1u, _wgslsmith_div_u32(global0.e.a, 14424u)), Struct_2(0u, _wgslsmith_f_op_f32(-global0.e.b)), true, global0.c)).d);
    let var_4 = Struct_1(global0.a.b.x, var_3.b, func_1(Struct_3(func_1(Struct_3(global0.a, u_input.a, Struct_2(19543u, -1813f), true, Struct_2(79741u, 282f)), Struct_1(global0.d, var_3.d.zy, false, global0.a.d), -764i, Struct_3(global0.a, u_input.a, Struct_2(global0.e.a, 431f), var_3.b.x, global0.e)), select(vec3<u32>(44748u, u_input.a.x, u_input.a.x), u_input.a, var_3.a), global0.e, all(vec3<bool>(false, var_3.d.x, var_3.b.x)), Struct_2(78556u, -1151f)), global0.a, 1i >> (u_input.a.x % 32u), Struct_3(func_1(Struct_3(global0.a, vec3<u32>(global0.c.a, 43145u, 30570u), global0.c, global0.d, Struct_2(u_input.a.x, var_0.x)), Struct_1(false, vec2<bool>(true, false), true, var_3.d), 6469i, Struct_3(global0.a, vec3<u32>(4294967295u, 1502u, global0.c.a), Struct_2(26041u, 1465f), true, Struct_2(u_input.a.x, 479f))), u_input.a, global0.e, true, global0.c)).b.x && func_2(global0.a.b), select(!vec3<bool>(false, true, all(vec2<bool>(false, var_3.c))), select(vec3<bool>(!var_3.b.x, func_2(vec2<bool>(true, global0.a.c)), global0.c.a == 4294967295u), !vec3<bool>(global0.a.a, false, false), all(select(global0.a.d.yz, vec2<bool>(true, var_3.b.x), var_3.b))), true));
    let var_5 = !(!(!vec4<bool>(var_3.b.x, true, true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(-416f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(var_2))));
}

