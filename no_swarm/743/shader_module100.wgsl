struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: bool,
    d: vec2<bool>,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: vec4<f32>,
    d: i32,
    e: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
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

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: f32, arg_1: bool) -> u32 {
    let var_0 = Struct_2(20503i, _wgslsmith_clamp_i32(u_input.b.x, u_input.b.x, -_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, 26799i, u_input.b.x), -vec3<i32>(u_input.b.x, u_input.b.x, 4054i))), vec4<f32>(arg_0, _wgslsmith_f_op_f32(select(arg_0, _wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_f_op_f32(-arg_0) == -176f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1449f))), 225f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1261f, arg_0))))), 4139i, _wgslsmith_dot_vec3_u32(u_input.a, ~(~u_input.a) << (firstLeadingBit(u_input.c << (vec3<u32>(74665u, u_input.c.x, u_input.a.x) % vec3<u32>(32u))) % vec3<u32>(32u))));
    let var_1 = !select(!(!(!vec3<bool>(arg_1, arg_1, true))), !(!select(vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(true, arg_1, false), true)), !(!(!vec3<bool>(arg_1, arg_1, false))));
    let var_2 = var_0;
    let var_3 = vec3<bool>(any(select(select(!var_1, !vec3<bool>(false, var_1.x, arg_1), var_1), vec3<bool>(var_1.x, arg_1, true), !var_1)), any(select(!select(var_1, vec3<bool>(true, false, arg_1), arg_1), var_1, true)), arg_1);
    var var_4 = var_2.c.x;
    return _wgslsmith_dot_vec2_u32(u_input.a.xz, u_input.c.xz);
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: vec4<i32>, arg_3: f32) -> i32 {
    let var_0 = arg_3;
    var var_1 = Struct_1(_wgslsmith_add_u32(abs(func_3(_wgslsmith_f_op_f32(-arg_3), false)), _wgslsmith_mod_u32(firstLeadingBit(_wgslsmith_dot_vec3_u32(u_input.c, u_input.c)), arg_1)), vec2<bool>(all(vec3<bool>(false, true, true)) && (_wgslsmith_f_op_f32(-arg_3) <= -878f), !select(any(vec4<bool>(false, false, false, true)), all(vec2<bool>(true, true)), -1616f < arg_3)), true, select(vec2<bool>(true, true), vec2<bool>(false, true), select(vec2<bool>(true, true), !select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false)), select(true, true, false))));
    let var_2 = select(!(!(!select(vec3<bool>(var_1.c, false, false), vec3<bool>(var_1.b.x, var_1.d.x, var_1.b.x), vec3<bool>(var_1.b.x, true, var_1.d.x)))), select(!vec3<bool>(var_1.d.x || var_1.b.x, true | var_1.d.x, true), vec3<bool>(select(any(vec2<bool>(true, false)), select(var_1.c, true, var_1.c), true), true, any(vec4<bool>(var_1.c, var_1.c, var_1.c, true))), vec3<bool>(true, any(!vec3<bool>(var_1.b.x, var_1.d.x, var_1.b.x)), !(var_1.d.x && true))), select(!vec3<bool>(!var_1.c, var_1.b.x | true, all(vec4<bool>(false, var_1.b.x, true, true))), !select(vec3<bool>(var_1.d.x, var_1.c, var_1.d.x), !vec3<bool>(true, var_1.d.x, var_1.c), !var_1.c), !(!all(vec4<bool>(var_1.c, false, var_1.c, var_1.d.x)))));
    var var_3 = Struct_2(firstTrailingBit(u_input.b.x), arg_2.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(1181f)), _wgslsmith_f_op_f32(arg_3 * -968f), 1f, 1225f) * _wgslsmith_div_vec4_f32(vec4<f32>(arg_3, arg_0, var_0, arg_0), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3, arg_3, 233f, arg_3)))) * vec4<f32>(-193f, 2518f, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-556f, 1699f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(var_0)), _wgslsmith_f_op_f32(f32(-1f) * -1793f))))), ~_wgslsmith_mult_i32(41098i, abs(reverseBits(-1i))), 0u);
    let var_4 = Struct_1(abs(1u) << (u_input.c.x % 32u), select(select(select(select(vec2<bool>(false, false), var_1.d, true), var_1.b, false), !var_2.zy, _wgslsmith_dot_vec4_i32(arg_2, u_input.b) >= firstLeadingBit(arg_2.x)), !var_1.d, false), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)))) > _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(step(1430f, var_3.c.x)))))), vec2<bool>(false, false));
    return ~(-16384i);
}

fn func_4(arg_0: Struct_2) -> i32 {
    var var_0 = !select(select(select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), false), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true)), vec4<bool>(true, false, true, true)), vec4<bool>(true, false, true, true), all(vec3<bool>(false, true, false))), vec4<bool>(true, true, true, true), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)));
    let var_1 = Struct_1(u_input.a.x, !select(vec2<bool>(true, true), select(select(var_0.yx, var_0.xw, vec2<bool>(false, var_0.x)), !vec2<bool>(true, var_0.x), select(vec2<bool>(var_0.x, var_0.x), var_0.wz, var_0.x)), ~arg_0.a >= arg_0.a), true, select(select(!select(var_0.yz, var_0.yx, var_0.wx), var_0.yx, any(select(var_0.yxz, var_0.wzw, var_0.zyx))), var_0.zy, !select(select(var_0.yx, vec2<bool>(true, var_0.x), true), select(var_0.yz, var_0.xx, false), vec2<bool>(var_0.x, var_0.x))));
    let var_2 = true;
    let var_3 = firstTrailingBit(u_input.c.xx);
    var_0 = vec4<bool>(false, true, ~u_input.b.x != _wgslsmith_add_i32(_wgslsmith_clamp_i32(arg_0.b | u_input.b.x, _wgslsmith_sub_i32(u_input.b.x, -1i), arg_0.d), _wgslsmith_sub_i32(2147483647i | arg_0.b, arg_0.a)), any(!select(select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, true, true, false), true), !vec4<bool>(var_2, var_1.d.x, var_0.x, true), vec4<bool>(true, var_0.x, var_2, var_1.d.x))));
    return -8407i;
}

fn func_1() -> Struct_2 {
    var var_0 = func_4(Struct_2(-53689i, ~_wgslsmith_div_i32(func_2(-1406f, 729u, vec4<i32>(-2623i, -36380i, 2147483647i, u_input.b.x), -1000f), select(-5052i, 0i, true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1089f, 1101f, -1303f, 1421f))))), select(~(~(-989i)), _wgslsmith_div_i32(~u_input.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.b.x, u_input.b.x, u_input.b.x), vec4<i32>(1i, u_input.b.x, 6259i, u_input.b.x))), any(vec2<bool>(true, true))), ~u_input.a.x));
    var var_1 = _wgslsmith_sub_u32(func_3(_wgslsmith_f_op_f32(ceil(-1142f)), true & all(vec2<bool>(false, true))), u_input.a.x);
    var_0 = _wgslsmith_sub_i32(max(1i | ~_wgslsmith_dot_vec4_i32(vec4<i32>(54915i, 44488i, u_input.b.x, u_input.b.x), u_input.b), 11113i), 1i);
    var_1 = 64677u;
    var_1 = 38304u;
    return Struct_2(-1i, -(~36091i), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-782f, -434f, 859f, 1091f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-2291f, 282f, 126f, 1261f), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-3755f, 1000f, 1000f, -2501f))))))), firstLeadingBit(-(~5028i) << (select(~76100u, u_input.c.x << (u_input.c.x % 32u), u_input.c.x != u_input.c.x) % 32u)), min(37670u, _wgslsmith_sub_u32(u_input.a.x, ~1u)));
}

fn func_5(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: Struct_2) -> Struct_1 {
    let var_0 = -u_input.b.x;
    var var_1 = func_1();
    var_1 = func_1();
    var var_2 = var_0 | var_0;
    var_1 = arg_0;
    return Struct_1(~_wgslsmith_div_u32(1u, select(var_1.e, 1517u & arg_2.e, arg_1.x)), vec2<bool>(!arg_1.x, _wgslsmith_mult_u32(1u, _wgslsmith_div_u32(4294967295u, 27520u)) != _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(8831u, 1u, arg_0.e), u_input.a), _wgslsmith_mod_vec3_u32(vec3<u32>(arg_0.e, var_1.e, arg_0.e), vec3<u32>(arg_2.e, arg_2.e, arg_0.e)))), !any(!vec4<bool>(arg_1.x, arg_1.x, false, false)), vec2<bool>(false, any(!(!vec4<bool>(arg_1.x, true, false, arg_1.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-165f, -289f))))))), _wgslsmith_f_op_f32(round(-1320f)));
    var var_1 = func_5(func_1(), vec2<bool>(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - var_0.x)) <= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -487f)))), func_1());
    var_1 = func_5(func_1(), select(vec2<bool>(true, _wgslsmith_f_op_f32(f32(-1f) * -971f) < _wgslsmith_f_op_f32(abs(var_0.x))), !var_1.d, vec2<bool>(true, true)), func_1());
    let var_2 = vec3<u32>(_wgslsmith_dot_vec3_u32(u_input.a, ~countOneBits(reverseBits(vec3<u32>(u_input.a.x, 0u, 41176u)))), abs(u_input.a.x), _wgslsmith_dot_vec2_u32(max(~(vec2<u32>(89610u, 4294967295u) | u_input.c.xy), ~vec2<u32>(4294967295u, 0u)), ~_wgslsmith_mult_vec2_u32(u_input.a.zx, u_input.a.yx) << (select(vec2<u32>(u_input.c.x, var_1.a), u_input.a.xz ^ u_input.a.xx, vec2<bool>(var_1.b.x, var_1.c)) % vec2<u32>(32u))));
    let var_3 = vec3<bool>(var_1.b.x, true, any(select(select(select(vec4<bool>(true, var_1.d.x, true, false), vec4<bool>(var_1.d.x, false, false, true), vec4<bool>(var_1.d.x, var_1.c, var_1.c, var_1.b.x)), !vec4<bool>(var_1.b.x, var_1.c, true, false), !vec4<bool>(true, false, true, var_1.d.x)), !vec4<bool>(true, var_1.d.x, true, var_1.d.x), vec4<bool>(any(vec4<bool>(var_1.b.x, var_1.d.x, false, var_1.d.x)), any(var_1.b), var_1.c, true))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(486f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(995f * 367f))))), _wgslsmith_f_op_f32(exp2(var_0.x)));
}

