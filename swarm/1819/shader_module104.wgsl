struct Struct_1 {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: vec4<i32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec3<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<bool>,
    c: vec3<f32>,
    d: vec2<i32>,
    e: i32,
}

struct Struct_5 {
    a: u32,
    b: vec3<bool>,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: u32, arg_1: Struct_5) -> vec4<bool> {
    var var_0 = _wgslsmith_sub_vec4_u32(abs(_wgslsmith_add_vec4_u32(firstLeadingBit(vec4<u32>(67305u, 82944u, 1u, arg_1.a) & vec4<u32>(0u, arg_0, 0u, 1u)), vec4<u32>(arg_0, _wgslsmith_sub_u32(u_input.a.x, 1u), u_input.a.x, 4294967295u))), vec4<u32>(arg_1.a, 4294967295u, ~arg_0, arg_0));
    var_0 = vec4<u32>(~(~(~var_0.x)), u_input.a.x, (firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, u_input.a.x, 31534u), vec3<u32>(u_input.a.x, arg_1.a, arg_1.a))) << (~arg_1.a % 32u)) ^ arg_0, 1u);
    let var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(min(-606f, -1060f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1105f - 156f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -105f)))))), arg_1.b);
    var var_2 = vec4<bool>(false, 672f != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.a.x))) - 1000f), !arg_1.b.x, var_1.b.x == (var_1.a.x >= var_1.a.x));
    var_2 = select(select(!(!(!arg_1.c)), !(!vec4<bool>(true, arg_1.c.x, false, var_2.x)), !(!(!vec4<bool>(false, false, var_2.x, arg_1.b.x)))), arg_1.c, select(!select(select(vec4<bool>(arg_1.c.x, true, var_2.x, var_1.b.x), arg_1.c, vec4<bool>(false, var_1.b.x, false, true)), vec4<bool>(true, var_2.x, true, true), true), vec4<bool>(arg_1.c.x, var_1.b.x, var_1.b.x, true), any(select(vec2<bool>(arg_1.c.x, false), var_2.wz, var_2.xw)) || var_1.b.x));
    return vec4<bool>(var_1.b.x, true, !any(!(!vec2<bool>(var_2.x, var_2.x))), true);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_4, arg_2: Struct_2, arg_3: f32) -> u32 {
    let var_0 = arg_0;
    let var_1 = select(!select(!func_3(74594u, Struct_5(var_0.a, arg_1.a.b, vec4<bool>(arg_1.b.x, arg_1.b.x, arg_1.a.b.x, arg_1.a.b.x))).zww, vec3<bool>(arg_1.a.b.x, arg_1.b.x || true, !arg_1.a.b.x), all(vec2<bool>(false, arg_1.a.b.x))), select(!vec3<bool>(arg_1.b.x && arg_1.b.x, var_0.c.x == arg_1.d.x, arg_1.a.b.x), func_3(abs(11412u), Struct_5(~arg_0.a, select(arg_1.a.b, arg_1.a.b, arg_1.a.b), !vec4<bool>(false, true, false, arg_1.a.b.x))).yww, vec3<bool>(!(arg_1.b.x || arg_1.a.b.x), true & (arg_3 == var_0.e.x), arg_1.b.x || true)), arg_1.a.b);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.e.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.e.x - 479f)))));
    let var_3 = firstLeadingBit(_wgslsmith_div_i32(arg_2.a, ~_wgslsmith_mod_i32(arg_0.d.x, 23509i)));
    let var_4 = u_input.a & _wgslsmith_mod_vec2_u32(~(~vec2<u32>(11155u, 40697u)) & ~_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, var_0.a), u_input.a), reverseBits(u_input.a >> (firstTrailingBit(u_input.a) % vec2<u32>(32u))));
    return max(_wgslsmith_clamp_u32(~reverseBits(~var_4.x), arg_0.a, _wgslsmith_mod_u32(var_0.a, ~var_0.a)), _wgslsmith_mod_u32(~4294967295u >> (~(~var_0.a) % 32u), var_4.x));
}

fn func_2() -> bool {
    var var_0 = func_4(Struct_1(1u, u_input.b.x, select(vec4<i32>(u_input.c.x, 1i, -50444i, u_input.c.x) ^ vec4<i32>(-43093i, u_input.b.x, 0i, u_input.b.x), vec4<i32>(u_input.b.x, u_input.c.x, u_input.b.x, u_input.c.x) & vec4<i32>(-58712i, 1i, u_input.c.x, u_input.c.x), func_3(u_input.a.x, Struct_5(0u, vec3<bool>(true, true, true), vec4<bool>(true, false, true, true)))), -min(vec4<i32>(29940i, u_input.c.x, u_input.b.x, -1i), vec4<i32>(-1i, 1i, 13224i, u_input.c.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(559f, 325f)) * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1550f, -3037f))))), Struct_4(Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-204f, -1000f, -1000f)), vec3<bool>(true, false, true)), vec2<bool>(true, true), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1866f, -1239f, 1069f) - vec3<f32>(430f, 1056f, -1253f)) * vec3<f32>(406f, -1803f, 158f)), abs(vec2<i32>(-12692i, u_input.c.x)), ~(u_input.b.x >> (1u % 32u))), Struct_2(_wgslsmith_dot_vec2_i32(-u_input.b.zz, u_input.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(-183f, -141f)), _wgslsmith_div_f32(-875f, -1199f))))) << (firstLeadingBit(1u) % 32u);
    var_0 = firstLeadingBit(_wgslsmith_add_u32(firstLeadingBit(~(~u_input.a.x)), 113155u));
    var var_1 = ~u_input.a.x;
    var_1 = 1u;
    var_0 = 4294967295u;
    return (true & any(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true)))) || all(func_3(countOneBits(~u_input.a.x), Struct_5(1u, vec3<bool>(true, true, true), vec4<bool>(true, false, false, false))).wyw);
}

fn func_1(arg_0: vec3<u32>) -> Struct_5 {
    var var_0 = Struct_3(vec3<f32>(-2110f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + -1427f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1104f))))), 127f), vec3<bool>(false, false && (func_2() | true), true));
    let var_1 = vec3<bool>((countOneBits(2147483647i) << (~4294967295u % 32u)) <= u_input.c.x, !(!(!any(var_0.b))), _wgslsmith_mod_u32(~u_input.a.x | u_input.a.x, 4294967295u) == u_input.a.x);
    let var_2 = !vec3<bool>(_wgslsmith_mult_u32(u_input.a.x >> (u_input.a.x % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, arg_0.x, 1u, arg_0.x), vec4<u32>(21040u, 29925u, 1u, u_input.a.x))) >= _wgslsmith_add_u32(firstLeadingBit(0u), u_input.a.x), all(vec2<bool>(true, var_0.a.x != var_0.a.x)), true & var_0.b.x);
    let var_3 = Struct_4(Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(var_0.a))), !vec3<bool>(!var_2.x, arg_0.x == u_input.a.x, var_0.b.x)), !(!select(select(vec2<bool>(var_2.x, var_1.x), vec2<bool>(var_0.b.x, var_1.x), var_0.b.x), vec2<bool>(var_0.b.x, var_2.x), vec2<bool>(var_0.b.x, var_1.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(352f, var_0.a.x, -907f))) + _wgslsmith_f_op_vec3_f32(floor(var_0.a))) + var_0.a)), ~(~(-_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.c.x, u_input.c.x), u_input.c))), abs(u_input.c.x));
    let var_4 = Struct_3(_wgslsmith_f_op_vec3_f32(ceil(var_0.a)), var_1);
    return Struct_5(firstLeadingBit(~0u), !vec3<bool>(var_3.a.b.x, false, var_4.b.x | (u_input.a.x >= arg_0.x)), vec4<bool>(var_3.a.b.x, var_4.b.x, !var_2.x, !(!var_2.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -u_input.c >> (_wgslsmith_div_vec2_u32(vec2<u32>(countOneBits(~64415u), u_input.a.x), _wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(u_input.a, vec2<u32>(u_input.a.x, 2683u), ~vec2<u32>(0u, 92928u)), ~(~u_input.a))) % vec2<u32>(32u));
    let var_1 = abs(vec4<u32>(_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(42399u, u_input.a.x, 1u, u_input.a.x)), select(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4294967295u), vec4<u32>(u_input.a.x, u_input.a.x, 85254u, 0u), vec4<bool>(true, false, true, true))), _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a.x, u_input.a.x, 16733u), select(vec3<u32>(4294967295u, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<bool>(true, true, false))), _wgslsmith_div_u32(abs(u_input.a.x), 1u ^ u_input.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 1u) << (vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, u_input.a.x) % vec4<u32>(32u)), ~vec4<u32>(u_input.a.x, 112163u, 4294967295u, u_input.a.x)))) | vec4<u32>(62u, 0u << ((u_input.a.x | ~1u) % 32u), _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 1u), vec3<u32>(26156u, 1u, 30593u)), vec3<u32>(4294967295u, u_input.a.x, u_input.a.x)), _wgslsmith_div_vec3_u32(vec3<u32>(4944u, 0u, 30570u), ~vec3<u32>(37272u, u_input.a.x, u_input.a.x))), u_input.a.x);
    var var_2 = func_1(reverseBits(vec3<u32>(firstLeadingBit(var_1.x), ~var_1.x, 1u) << (var_1.zyz % vec3<u32>(32u))));
    var_2 = func_1(reverseBits(~select(vec3<u32>(var_1.x, 720u, u_input.a.x), var_1.yyz, var_2.c.xww)) << (~var_1.xyz % vec3<u32>(32u)));
    let var_3 = var_2.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.yx, ~var_2.a, ~var_0, _wgslsmith_sub_i32(u_input.b.x, u_input.b.x));
}

