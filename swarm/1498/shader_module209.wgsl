struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: vec4<i32>,
    d: vec3<u32>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_1(arg_0: f32) -> vec2<f32> {
    return vec2<f32>(-1034f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-565f + -510f) * arg_0))))));
}

fn func_3(arg_0: vec3<i32>, arg_1: bool, arg_2: u32) -> vec3<bool> {
    let var_0 = !(!select(!vec4<bool>(true, arg_1, false, false), vec4<bool>(any(vec3<bool>(false, arg_1, false)), !arg_1, all(vec2<bool>(arg_1, false)), arg_1 || arg_1), true));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -720f), !select(vec4<bool>(true, true, true, any(var_0)), !var_0, true), select(min(-(vec4<i32>(arg_0.x, arg_0.x, 0i, arg_0.x) | vec4<i32>(-1i, 0i, arg_0.x, 7159i)), ~countOneBits(vec4<i32>(-29754i, u_input.b, arg_0.x, -28438i))), ~_wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, -1i, u_input.b, 33616i), vec4<i32>(-53510i, 47813i, 2147483647i, u_input.b)), vec4<i32>(1i, -338i, -2147483647i, -21257i)), var_0), ~min(~vec3<u32>(arg_2, 4294967295u, arg_2), vec3<u32>(u_input.d.x, 1u, arg_2) & _wgslsmith_mult_vec3_u32(u_input.d, u_input.d)), !var_0.zxz);
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1170f + 1000f) + _wgslsmith_f_op_f32(-var_1.a)), _wgslsmith_f_op_f32(sign(655f))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(1f, 1f, 1f), vec3<f32>(_wgslsmith_f_op_f32(min(var_1.a, var_1.a)), 1000f, _wgslsmith_div_f32(var_1.a, 1000f)))))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-909f, -665f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a))) * vec3<f32>(_wgslsmith_f_op_f32(var_1.a + _wgslsmith_f_op_f32(-var_1.a)), var_1.a, var_1.a)));
    let var_3 = _wgslsmith_mod_i32(abs(abs(var_1.c.x >> (arg_2 % 32u))), ~min(var_1.c.x, -28081i) ^ -70811i) ^ arg_0.x;
    var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.a, var_1.a) - -704f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1555f))), -489f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a, -196f, 1000f) + vec3<f32>(var_2.x, 1378f, 1937f)))), vec3<bool>(var_1.e.x, true, var_0.x))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, 1000f, -1223f)))))));
    return vec3<bool>(~0u < _wgslsmith_dot_vec3_u32(~(u_input.d << (vec3<u32>(37586u, u_input.e, 1u) % vec3<u32>(32u))), ~var_1.d), any(select(!vec4<bool>(arg_1, true, true, var_0.x), !var_0, var_1.b)), any(var_0.yw));
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> Struct_1 {
    let var_0 = arg_0.b.x;
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a, -1620f) + vec2<f32>(-1351f, arg_2.a)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a, arg_2.a))), vec2<f32>(_wgslsmith_div_f32(arg_0.a, arg_0.a), _wgslsmith_f_op_f32(-arg_0.a))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-1000f, arg_0.a))))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a, arg_0.a) + vec2<f32>(arg_0.a, arg_2.a)))))));
    let var_2 = arg_0;
    var var_3 = Struct_1(var_2.a, arg_0.b, min(vec4<i32>(3947i, var_2.c.x, -arg_0.c.x, _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(4483i, u_input.b, var_2.c.x, 52511i), var_2.c), vec4<i32>(-1i, var_2.c.x, -2147483647i, -34535i))), -_wgslsmith_mult_vec4_i32(-arg_0.c, select(arg_2.c, arg_2.c, var_2.b))), var_2.d, select(!vec3<bool>(all(vec4<bool>(arg_2.b.x, arg_0.e.x, false, true)), true, var_0 & arg_0.b.x), !func_3(arg_2.c.zyx, 1i <= u_input.b, u_input.c), !func_3(var_2.c.zwy, true, 4294967295u | var_2.d.x)));
    let var_4 = var_2;
    return var_4;
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<f32>) -> i32 {
    var var_0 = firstLeadingBit(~_wgslsmith_sub_i32(-arg_0.x, i32(-1i) * -1i));
    var var_1 = countOneBits(2147483647i);
    let var_2 = u_input.b;
    let var_3 = func_2(arg_1, 87967u, func_2(func_2(arg_2, 41151u, Struct_1(-1822f, select(arg_1.b, vec4<bool>(arg_2.e.x, arg_2.e.x, arg_2.e.x, arg_2.e.x), arg_2.b), vec4<i32>(0i, 1i, 0i, 9202i), arg_1.d, !arg_1.e)), u_input.c, Struct_1(_wgslsmith_f_op_f32(-arg_2.a), arg_2.b, arg_1.c, ~_wgslsmith_sub_vec3_u32(arg_2.d, u_input.d), func_3(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b, -1i, arg_1.c.x), arg_2.c.zyy, vec3<i32>(0i, -63683i, arg_0.x)), true, select(u_input.d.x, arg_2.d.x, false)))));
    let var_4 = Struct_1(_wgslsmith_div_f32(arg_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.a)))), arg_2.b, vec4<i32>(-_wgslsmith_clamp_i32(-1i, -55891i, var_3.c.x), ~(-u_input.b), 59217i, 0i), arg_1.d, func_3(arg_2.c.xwy, func_2(Struct_1(arg_1.a, vec4<bool>(false, true, var_3.e.x, arg_1.b.x), arg_2.c, arg_1.d, vec3<bool>(false, var_3.b.x, arg_1.e.x)), 2299u, arg_2).a > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a) * arg_3.x), ~1u));
    return 2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-192f, -510f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1577f, 1733f))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1192f, -369f), vec2<f32>(1860f, 1030f))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-424f, -149f))))), !any(vec2<bool>(true, true)))), _wgslsmith_f_op_vec2_f32(func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1319f - 1000f) + _wgslsmith_f_op_f32(ceil(1145f))))))));
    var_0 = !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(716f, var_1.x) + -1690f) + -697f) != -1052f);
    let var_2 = Struct_1(var_1.x, vec4<bool>(false, min(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 73889u, 4294967295u), vec3<u32>(u_input.a.x, 52759u, 1u))) <= ~33236u, true, !all(vec2<bool>(true, true))), abs(vec4<i32>(i32(-1i) * -u_input.b, -1i, func_4(~vec3<i32>(9872i, u_input.b, -2178i), func_2(Struct_1(var_1.x, vec4<bool>(false, false, false, false), vec4<i32>(u_input.b, u_input.b, -43354i, u_input.b), vec3<u32>(0u, u_input.a.x, 4294967295u), vec3<bool>(false, false, true)), 47880u, Struct_1(-1828f, vec4<bool>(false, true, true, true), vec4<i32>(34765i, u_input.b, 2147483647i, u_input.b), u_input.d, vec3<bool>(false, true, true))), Struct_1(var_1.x, vec4<bool>(false, true, false, false), vec4<i32>(u_input.b, u_input.b, -24737i, 14061i), vec3<u32>(71108u, 0u, 0u), vec3<bool>(true, true, true)), _wgslsmith_f_op_vec2_f32(var_1 - var_1)), -(u_input.b >> (u_input.d.x % 32u)))), u_input.d, vec3<bool>(false, (i32(-1i) * -2147483647i) <= u_input.b, any(vec2<bool>(true, true))));
    var var_3 = var_2.a;
    var_3 = _wgslsmith_f_op_f32(-263f * var_1.x);
    let var_4 = vec3<bool>(select(!var_2.e.x, all(vec3<bool>(var_2.b.x, var_2.b.x, var_2.b.x)) && (_wgslsmith_dot_vec2_i32(vec2<i32>(var_2.c.x, u_input.b), var_2.c.yz) != var_2.c.x), var_2.e.x), var_2.b.x, var_2.d.x >= ~66026u);
    let var_5 = func_2(Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_vec2_f32(func_1(_wgslsmith_f_op_f32(f32(-1f) * -1000f))).x, var_2.a)), select(select(!var_2.b, !var_2.b, vec4<bool>(var_2.e.x, var_2.b.x, var_2.e.x, var_4.x)), !select(var_2.b, vec4<bool>(false, var_2.e.x, var_2.e.x, false), false), vec4<bool>(func_3(var_2.c.wwy, var_4.x, 1u).x, any(var_2.b), true, var_4.x)), select(abs(_wgslsmith_add_vec4_i32(var_2.c, vec4<i32>(u_input.b, 2147483647i, u_input.b, -1i))), _wgslsmith_div_vec4_i32(var_2.c, abs(vec4<i32>(u_input.b, u_input.b, u_input.b, -20959i))), func_2(func_2(var_2, u_input.c, Struct_1(var_1.x, vec4<bool>(var_2.b.x, true, false, true), vec4<i32>(u_input.b, 2147483647i, 42925i, 49134i), vec3<u32>(20181u, 0u, 1u), var_4)), _wgslsmith_mod_u32(u_input.a.x, 42004u), func_2(var_2, u_input.c, var_2)).b), firstLeadingBit(var_2.d), var_4), ~func_2(Struct_1(-546f, vec4<bool>(var_4.x, var_2.b.x, var_2.b.x, var_2.b.x), vec4<i32>(u_input.b, var_2.c.x, var_2.c.x, 26572i), var_2.d, var_4), var_2.d.x << (var_2.d.x % 32u), var_2).d.x | _wgslsmith_dot_vec2_u32(abs(~vec2<u32>(0u, 25176u)), u_input.d.yz), func_2(func_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1173f), !vec4<bool>(false, true, var_2.e.x, var_2.e.x), vec4<i32>(u_input.b, var_2.c.x, u_input.b, 43649i), countOneBits(vec3<u32>(u_input.e, 61061u, 9083u)), var_2.e), abs(~var_2.d.x), var_2), _wgslsmith_dot_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(0u, var_2.d.x, 4164u, u_input.e), vec4<u32>(u_input.a.x, var_2.d.x, 4294967295u, var_2.d.x)), vec4<u32>(1u, 7152u ^ var_2.d.x, ~u_input.d.x, var_2.d.x)), func_2(func_2(func_2(Struct_1(696f, var_2.b, vec4<i32>(u_input.b, var_2.c.x, -1i, var_2.c.x), vec3<u32>(18457u, 1596u, u_input.e), var_4), 0u, var_2), max(0u, 62602u), Struct_1(var_1.x, var_2.b, var_2.c, u_input.d, var_2.e)), ~var_2.d.x, func_2(func_2(var_2, 18765u, Struct_1(603f, var_2.b, vec4<i32>(u_input.b, var_2.c.x, var_2.c.x, 53257i), vec3<u32>(0u, u_input.e, 102099u), vec3<bool>(false, true, var_2.b.x))), _wgslsmith_dot_vec2_u32(u_input.d.zx, vec2<u32>(0u, 1u)), var_2))));
    let x = u_input.a;
    s_output = StorageBuffer(max(var_2.d.x, var_2.d.x));
}

