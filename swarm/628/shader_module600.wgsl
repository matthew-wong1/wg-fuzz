struct Struct_1 {
    a: u32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec2<i32>,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: vec4<bool>,
    d: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: i32,
    c: u32,
}

struct Struct_5 {
    a: Struct_2,
    b: i32,
}

struct UniformBuffer {
    a: i32,
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

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec3<u32>, arg_2: Struct_3) -> i32 {
    let var_0 = arg_2;
    var var_1 = arg_0.x;
    var_1 = !(64204u < ~arg_1.x);
    let var_2 = arg_2.a;
    let var_3 = all(arg_2.c.xxy) | !var_0.c.x;
    return u_input.a;
}

fn func_3(arg_0: vec3<bool>, arg_1: vec4<i32>, arg_2: Struct_5) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-218f + _wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    var var_1 = ~(~vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(52868u, 4294967295u, 38551u), vec3<u32>(16819u, 9856u, arg_2.a.a.a)), _wgslsmith_add_u32(arg_2.a.b.a, arg_2.a.c.a)));
    let var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -466f)), _wgslsmith_f_op_f32(f32(-1f) * -1237f)))))));
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -316f);
    var_0 = var_2;
    return select(arg_0, select(vec3<bool>(all(vec3<bool>(arg_0.x, true, arg_2.a.a.b.x)), arg_2.a.b.b.x || arg_0.x, !arg_2.a.b.b.x), arg_0, arg_2.a.b.b.x), (u_input.a >> (~_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.x, 24364u, var_1.x), vec3<u32>(var_1.x, 20028u, var_1.x)) % 32u)) == (~34061i << (~_wgslsmith_dot_vec2_u32(vec2<u32>(15631u, 46155u), vec2<u32>(arg_2.a.a.a, 33613u)) % 32u)));
}

fn func_4(arg_0: vec3<bool>, arg_1: bool, arg_2: vec4<u32>, arg_3: f32) -> f32 {
    var var_0 = Struct_1(~firstLeadingBit(arg_2.x), select(arg_0, vec3<bool>(arg_0.x, !arg_1 | !arg_0.x, all(arg_0.yy)), select(vec3<bool>(!arg_0.x, !arg_0.x, false), arg_0, any(vec4<bool>(true, false, arg_0.x, arg_0.x)))));
    let var_1 = vec4<bool>(func_3(vec3<bool>(!(!var_0.b.x), arg_1, !arg_0.x), ~abs(vec4<i32>(u_input.a, u_input.a, u_input.a, -1i)), Struct_5(Struct_2(Struct_1(var_0.a, vec3<bool>(arg_1, var_0.b.x, false)), Struct_1(15712u, var_0.b), Struct_1(1u, vec3<bool>(arg_1, true, arg_1)), max(vec2<i32>(1i, -18906i), vec2<i32>(u_input.a, 8730i))), 1i)).x, func_3(select(vec3<bool>(true, true, var_0.b.x && arg_0.x), arg_0, false), vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-13612i, -15019i, 75322i), vec3<i32>(9076i, 21340i, 0i)), u_input.a), i32(-1i) * -32642i, -countOneBits(1i), select(firstTrailingBit(u_input.a), u_input.a, all(vec3<bool>(var_0.b.x, arg_1, arg_0.x)))), Struct_5(Struct_2(Struct_1(arg_2.x, vec3<bool>(var_0.b.x, arg_0.x, arg_0.x)), Struct_1(4294967295u, vec3<bool>(true, true, arg_1)), Struct_1(1u, vec3<bool>(arg_0.x, true, var_0.b.x)), vec2<i32>(u_input.a, u_input.a)), 1i)).x, !any(!(!var_0.b)), true);
    var_0 = Struct_1(4294967295u, select(!vec3<bool>(!var_0.b.x, var_0.b.x, all(vec4<bool>(arg_0.x, true, var_0.b.x, false))), vec3<bool>(!arg_1, select(true, false && var_0.b.x, true), any(vec3<bool>(true, arg_0.x, var_0.b.x))), func_3(vec3<bool>(var_0.b.x | true, false, true), _wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, 1i), vec4<i32>(u_input.a, -8315i, -2147483647i, u_input.a)), min(vec4<i32>(4175i, -2147483647i, -1i, 23344i), vec4<i32>(-3404i, u_input.a, u_input.a, -1i))), Struct_5(Struct_2(Struct_1(var_0.a, vec3<bool>(false, false, arg_1)), Struct_1(var_0.a, vec3<bool>(true, false, var_0.b.x)), Struct_1(4294967295u, var_0.b), vec2<i32>(u_input.a, u_input.a)), u_input.a))));
    var_0 = Struct_1(arg_2.x, !(!func_3(arg_0, firstLeadingBit(vec4<i32>(57692i, -2147483647i, u_input.a, u_input.a)), Struct_5(Struct_2(Struct_1(var_0.a, vec3<bool>(arg_1, true, arg_1)), Struct_1(1u, vec3<bool>(true, true, arg_1)), Struct_1(1u, vec3<bool>(arg_0.x, arg_1, true)), vec2<i32>(-2147483647i, 0i)), -3565i))));
    var_0 = Struct_1(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(arg_2, arg_2), max(vec4<u32>(1u, 1u, 0u, arg_2.x), vec4<u32>(4294967295u, 1u, arg_2.x, arg_2.x)), _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_2.x, var_0.a, var_0.a, 1u), vec4<u32>(var_0.a, 43853u, arg_2.x, arg_2.x), vec4<u32>(arg_2.x, var_0.a, var_0.a, 4294967295u))) | arg_2, ~(~arg_2)), select(vec3<bool>(true, -369f != _wgslsmith_f_op_f32(-arg_3), arg_0.x), vec3<bool>(false | (var_0.b.x & false), true & any(var_1), true), vec3<bool>(func_3(var_0.b, vec4<i32>(2147483647i, -2147483647i, -2147483647i, -2147483647i), Struct_5(Struct_2(Struct_1(0u, vec3<bool>(true, arg_0.x, true)), Struct_1(64917u, vec3<bool>(true, true, false)), Struct_1(74879u, var_0.b), vec2<i32>(u_input.a, u_input.a)), -35095i)).x, all(!vec4<bool>(false, true, var_0.b.x, false)), false)));
    return 573f;
}

fn func_1(arg_0: vec3<f32>, arg_1: bool, arg_2: bool, arg_3: u32) -> vec3<bool> {
    let var_0 = _wgslsmith_add_u32(~_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(arg_3, arg_3, 0u, 1u), ~vec4<u32>(4294967295u, 10876u, 27226u, 0u)), abs(vec4<u32>(arg_3, arg_3, 1u, arg_3)) >> ((vec4<u32>(arg_3, 13132u, 56681u, arg_3) & vec4<u32>(1u, arg_3, arg_3, 0u)) % vec4<u32>(32u))), arg_3);
    let var_1 = vec2<u32>(arg_3, select(arg_3, 4294967295u, !arg_2 & any(vec2<bool>(arg_2, false))) >> (var_0 % 32u));
    var var_2 = ~(-(~vec4<i32>(~0i, func_2(vec2<bool>(false, arg_1), vec3<u32>(48958u, 4294967295u, 53371u), Struct_3(false, 7519u, vec4<bool>(arg_1, arg_2, false, false), Struct_2(Struct_1(arg_3, vec3<bool>(true, arg_2, arg_1)), Struct_1(var_1.x, vec3<bool>(arg_1, arg_1, false)), Struct_1(arg_3, vec3<bool>(arg_2, false, arg_2)), vec2<i32>(67510i, -2147483647i)))), u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, u_input.a, 0i), vec3<i32>(39368i, u_input.a, u_input.a)))));
    var var_3 = _wgslsmith_f_op_f32(func_4(func_3(vec3<bool>(true, true, !arg_2), vec4<i32>(0i, u_input.a, var_2.x, 7597i) ^ (vec4<i32>(57417i, 6846i, u_input.a, u_input.a) << (vec4<u32>(var_1.x, arg_3, 11493u, arg_3) % vec4<u32>(32u))), Struct_5(Struct_2(Struct_1(var_1.x, vec3<bool>(arg_2, false, arg_2)), Struct_1(1u, vec3<bool>(arg_2, true, arg_1)), Struct_1(38802u, vec3<bool>(true, false, false)), vec2<i32>(-22376i, -1i)), u_input.a & u_input.a)), all(!select(vec4<bool>(arg_1, arg_2, true, false), vec4<bool>(arg_2, arg_1, arg_2, false), vec4<bool>(false, false, arg_2, false))), ~vec4<u32>(1u, 0u, var_1.x, var_1.x) & (_wgslsmith_add_vec4_u32(vec4<u32>(arg_3, 0u, var_1.x, var_0), vec4<u32>(var_1.x, arg_3, arg_3, 0u)) | ~vec4<u32>(76602u, arg_3, arg_3, var_1.x)), -230f)) == arg_0.x;
    let var_4 = var_1.x;
    return vec3<bool>(!(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1102f)), _wgslsmith_f_op_f32(exp2(arg_0.x))) == arg_0.x), false, all(vec4<bool>(arg_1, false | arg_2, true, !(u_input.a == 2147483647i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = !(!func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 1166f, 170f)), max(-1i, u_input.a) <= (2147483647i >> (1u % 32u)), all(vec2<bool>(var_0, true)), 0u));
    var var_2 = abs(reverseBits(_wgslsmith_mult_u32(33549u, 0u)));
    var var_3 = vec2<i32>(select(0i, u_input.a, false), select(u_input.a, abs(_wgslsmith_div_i32(-1i, u_input.a) >> (select(0u, 0u, var_1.x) % 32u)), (all(vec3<bool>(true, true, false)) & var_1.x) | false));
    let var_4 = Struct_2(Struct_1(~1u, vec3<bool>(false, true, !var_1.x)), Struct_1(0u, vec3<bool>(!func_3(vec3<bool>(false, false, var_0), vec4<i32>(-48484i, u_input.a, u_input.a, -18958i), Struct_5(Struct_2(Struct_1(0u, vec3<bool>(var_1.x, false, false)), Struct_1(4294967295u, vec3<bool>(var_0, var_1.x, var_0)), Struct_1(13007u, vec3<bool>(true, var_0, true)), vec2<i32>(-78968i, u_input.a)), u_input.a)).x, true, !(!var_0))), Struct_1(countOneBits(min(1u, ~39446u)), !(!vec3<bool>(false, var_1.x, false))), -_wgslsmith_mod_vec2_i32((vec2<i32>(var_3.x, var_3.x) << (vec2<u32>(28847u, 0u) % vec2<u32>(32u))) >> (~vec2<u32>(23232u, 0u) % vec2<u32>(32u)), vec2<i32>(var_3.x, func_2(vec2<bool>(var_0, true), vec3<u32>(45989u, 56617u, 4294967295u), Struct_3(true, 4294967295u, vec4<bool>(var_1.x, var_0, false, var_0), Struct_2(Struct_1(8511u, vec3<bool>(true, var_1.x, var_0)), Struct_1(5296u, vec3<bool>(var_0, false, true)), Struct_1(4294967295u, vec3<bool>(var_0, true, false)), vec2<i32>(u_input.a, u_input.a)))))));
    let var_5 = var_4.d | var_4.d;
    var_2 = ~1u;
    let x = u_input.a;
    s_output = StorageBuffer(~(~select(vec4<i32>(u_input.a, u_input.a, 0i, -2147483647i), vec4<i32>(-4283i, 2147483647i, 55882i, -1i), false)) >> (~reverseBits(firstLeadingBit(vec4<u32>(43377u, 3868u, 4294967295u, var_4.c.a))) % vec4<u32>(32u)));
}

