struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: u32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec3<bool>,
    c: i32,
    d: vec2<bool>,
}

struct Struct_3 {
    a: bool,
    b: vec4<i32>,
    c: bool,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: f32,
    d: vec3<f32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: vec3<bool> = vec3<bool>(true, false, true);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: i32) -> f32 {
    var var_0 = -(~(~(~vec4<i32>(18181i, arg_0, arg_0, 1i) & ~vec4<i32>(u_input.b.x, arg_0, arg_0, -40439i))));
    var var_1 = Struct_3(select(true, global1.x, global1.x), _wgslsmith_clamp_vec4_i32(-(vec4<i32>(-1i) * -vec4<i32>(arg_0, -21199i, u_input.b.x, -19902i)), min(vec4<i32>(firstTrailingBit(-1925i), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0, arg_0), vec2<i32>(-12819i, var_0.x)), u_input.d.x, abs(arg_0)), -_wgslsmith_clamp_vec4_i32(vec4<i32>(39412i, 33094i, 30654i, 6961i), vec4<i32>(arg_0, 21493i, -2147483647i, arg_0), vec4<i32>(arg_0, -2147483647i, 11125i, var_0.x))), -vec4<i32>(var_0.x, arg_0, u_input.d.x, -59346i) & vec4<i32>(-1i, countOneBits(arg_0), -40439i, u_input.a.x)), select(abs(-arg_0) < select(arg_0, _wgslsmith_mod_i32(var_0.x, 37332i), false), all(global1.xx), true));
    var var_2 = var_1.b.x << (abs(17181u) % 32u);
    var_1 = Struct_3(true, vec4<i32>(var_0.x, var_1.b.x, abs(~(~(-1i))), var_1.b.x), var_1.c);
    var var_3 = ~var_0.x;
    return _wgslsmith_f_op_f32(-1023f - _wgslsmith_f_op_f32(-173f - _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1144f), -1000f)))));
}

fn func_2() -> Struct_3 {
    var var_0 = ~vec4<u32>(~31469u, _wgslsmith_clamp_u32(firstTrailingBit(_wgslsmith_add_u32(0u, 4294967295u)), 4294967295u, 0u), ~(~0u), 4294967295u);
    return Struct_3(all(select(select(global1.xx, select(vec2<bool>(global1.x, global1.x), global1.zz, global1.x), global1.x), !global1.xy, select(global1.xz, vec2<bool>(false, global1.x), any(vec4<bool>(global1.x, global1.x, false, global1.x))))), select(~vec4<i32>(_wgslsmith_add_i32(u_input.d.x, u_input.c.x), u_input.a.x, -2147483647i, 20324i), abs(-_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.b.x, u_input.c.x), vec4<i32>(14601i, 2147483647i, u_input.c.x, u_input.c.x))), vec4<bool>(!all(vec2<bool>(global1.x, global1.x)), true, true, all(!vec3<bool>(true, global1.x, global1.x)))), (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(223f * 1299f)) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(-25002i)))) | all(!vec2<bool>(global1.x, true)));
}

fn func_1(arg_0: Struct_4, arg_1: Struct_2) -> Struct_3 {
    return func_2();
}

fn func_4(arg_0: Struct_3, arg_1: Struct_4) -> vec4<bool> {
    global1 = select(!vec3<bool>(abs(arg_1.a) >= select(32690u, arg_1.a, global1.x), arg_0.a, true), select(!select(!vec3<bool>(arg_0.c, global1.x, arg_0.c), select(vec3<bool>(true, false, global1.x), vec3<bool>(false, arg_0.c, true), arg_0.c), vec3<bool>(arg_0.a, arg_0.c, true)), vec3<bool>(true, !(global1.x || true), all(select(vec4<bool>(true, false, true, true), vec4<bool>(global1.x, arg_0.c, false, arg_0.a), global1.x))), false), !vec3<bool>(!any(vec4<bool>(global1.x, true, true, true)), false, arg_0.c));
    var var_0 = Struct_1(!global1.x, arg_0.b.ywz, _wgslsmith_mult_u32(_wgslsmith_add_u32(~arg_1.a, max(arg_1.a, arg_1.a)), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, arg_1.a), abs(_wgslsmith_mult_vec2_u32(vec2<u32>(10613u, 5598u), vec2<u32>(arg_1.a, arg_1.a))))));
    global0 = !(~(~abs(var_0.c)) <= _wgslsmith_sub_u32(_wgslsmith_mod_u32(arg_1.a, 49908u), ~var_0.c));
    let var_1 = select(select(select(!select(vec4<bool>(var_0.a, var_0.a, true, var_0.a), vec4<bool>(false, var_0.a, var_0.a, global1.x), vec4<bool>(global1.x, arg_0.c, global1.x, true)), !vec4<bool>(false, false, true, global1.x), vec4<bool>(global1.x, true, all(vec2<bool>(true, arg_0.a)), true)), vec4<bool>(true, !(arg_0.c | global1.x), true, arg_0.c), vec4<bool>(any(!vec4<bool>(true, global1.x, arg_0.a, true)), (arg_1.a >> (1u % 32u)) < select(50690u, 1u, global1.x), false, true)), vec4<bool>(global1.x, false, all(vec4<bool>(true, false, !arg_0.a, false)), true), any(vec4<bool>(all(select(vec3<bool>(true, arg_0.c, arg_0.c), vec3<bool>(true, false, false), arg_0.c)), !(!global1.x), global1.x, all(select(vec2<bool>(var_0.a, var_0.a), vec2<bool>(false, global1.x), true)))));
    var var_2 = arg_1;
    return var_1;
}

fn func_5(arg_0: f32, arg_1: vec4<bool>, arg_2: vec2<u32>) -> Struct_2 {
    global0 = false;
    var var_0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-557f, _wgslsmith_f_op_f32(968f + 2358f), arg_0, 2221f) + vec4<f32>(_wgslsmith_f_op_f32(arg_0 + 1138f), arg_0, arg_0, arg_0)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(641f, arg_0, arg_0, -737f))))))));
    let var_1 = vec2<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))));
    let var_2 = u_input.d;
    let var_3 = vec2<f32>(arg_0, arg_0);
    return Struct_2(-_wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(var_2.x, 9463i, 1i, u_input.b.x), vec4<i32>(0i, 2147483647i, -1i, var_2.x)), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b.x, -92967i, 23581i, var_2.x), vec4<i32>(u_input.b.x, 2147483647i, 9226i, 17889i))), -vec4<i32>(u_input.b.x, -51115i, u_input.b.x, 0i)), select(vec3<bool>(func_4(func_2(), Struct_4(arg_2.x)).x, global1.x, !any(arg_1.xy)), vec3<bool>(true & select(false, global1.x, false), (u_input.b.x | u_input.d.x) >= -1568i, !global1.x | true), global1.x), 1i, vec2<bool>(true, !(global1.x != global1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~1u;
    let var_1 = ~(~reverseBits(min(_wgslsmith_clamp_u32(4294967295u, 32353u, 95492u), ~1u)));
    var var_2 = func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -487f) - _wgslsmith_div_f32(-1000f, 656f)) - 1000f)), select(vec4<bool>(global1.x, global1.x, !(u_input.b.x != 2147483647i), any(select(vec3<bool>(global1.x, global1.x, false), vec3<bool>(global1.x, true, false), vec3<bool>(false, false, false)))), select(!vec4<bool>(global1.x, false, global1.x, false), func_4(func_1(Struct_4(39181u), Struct_2(vec4<i32>(8625i, u_input.a.x, 2147483647i, u_input.b.x), vec3<bool>(global1.x, global1.x, false), u_input.c.x, global1.yx)), Struct_4(17834u)), vec4<bool>(true, global1.x, global1.x | true, global1.x == global1.x)), vec4<bool>(true, all(func_4(Struct_3(global1.x, vec4<i32>(3411i, u_input.b.x, u_input.a.x, 16523i), global1.x), Struct_4(4294967295u))), true && global1.x, true)), min(abs(vec2<u32>(var_1, 4294967295u)) | abs(vec2<u32>(0u, 14791u)), ~select(vec2<u32>(4294967295u, var_1), vec2<u32>(10926u, 47413u), global1.x)) >> (~_wgslsmith_div_vec2_u32(vec2<u32>(var_1, var_1), select(vec2<u32>(57523u, var_1), vec2<u32>(45129u, var_1), global1.x)) % vec2<u32>(32u)));
    let var_3 = false;
    let var_4 = vec2<i32>(var_2.c, min(_wgslsmith_div_i32(~(u_input.c.x | u_input.c.x), var_2.a.x), (i32(-1i) * -63696i) << (var_1 % 32u)));
    var var_5 = Struct_4(0u | var_1);
    var var_6 = Struct_1(!(true && var_3), vec3<i32>(~(-2339i) << (1u % 32u), func_2().b.x, ((45451i >> (var_5.a % 32u)) << (var_1 % 32u)) << (4294967295u % 32u)), _wgslsmith_mod_u32(select(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, 19382u, var_1), vec4<u32>(var_5.a, var_5.a, var_1, 53299u)), ~(~1u), !var_3 | select(var_2.b.x, var_2.b.x, true)), _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(~vec2<u32>(1u, 1u), max(vec2<u32>(22544u, var_1), vec2<u32>(0u, var_5.a)), vec2<u32>(13401u, var_1)), abs(~vec2<u32>(4294967295u, 21768u)))));
    let x = u_input.a;
    s_output = StorageBuffer(1i, -var_6.b.yy, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(419f - _wgslsmith_f_op_f32(select(1726f, 427f, var_3))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1524f), -2656f))) + 2834f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -1000f, _wgslsmith_f_op_f32(f32(-1f) * -268f))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1588f * -1165f)), -899f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(-117f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(106f, -1783f, -125f, 2092f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-381f, 1000f, -992f, 640f)))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-256f, -652f, 1198f, -683f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-635f, 170f, -1000f, -262f)), select(vec4<bool>(var_6.a, true, var_2.b.x, global1.x), vec4<bool>(var_3, global1.x, var_3, true), true))))));
}

