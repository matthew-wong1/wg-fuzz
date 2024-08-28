struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<f32>,
    d: vec4<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 21> = array<u32, 21>(1u, 1u, 1u, 5014u, 1u, 52183u, 3796u, 37619u, 12425u, 41626u, 26687u, 0u, 9240u, 18721u, 57399u, 4294967295u, 28849u, 4294967295u, 1u, 22440u, 20080u);

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: vec2<u32>) -> Struct_1 {
    let var_0 = arg_0.x;
    return Struct_1(arg_1.c.a);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec2<u32>) -> Struct_1 {
    global0 = array<u32, 21>();
    global0 = array<u32, 21>();
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(666f, -466f)) - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-887f, 1000f), vec2<f32>(-127f, -280f)))), vec2<f32>(_wgslsmith_div_f32(-891f, 290f), _wgslsmith_f_op_f32(1358f + -1000f)), select(vec2<bool>(true, false), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), true)))) - vec2<f32>(715f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-929f)))))), vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-867f + 1618f))), _wgslsmith_f_op_f32(round(-2088f)))), _wgslsmith_f_op_f32(sign(-330f))));
    var var_1 = arg_0;
    let var_2 = Struct_1(-countOneBits(_wgslsmith_sub_vec3_i32(arg_1.a, ~arg_1.a)));
    return func_2(vec3<bool>(false, !(select(false, true, true) | true), any(!select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), false))), arg_0, vec2<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(select(vec4<u32>(28056u, global0[_wgslsmith_index_u32(4133u, 21u)], global0[_wgslsmith_index_u32(18029u, 21u)], 33257u), vec4<u32>(30613u, 1u, 4294967295u, u_input.b.x), true), vec4<u32>(global0[_wgslsmith_index_u32(94976u, 21u)], 0u, 95725u, global0[_wgslsmith_index_u32(arg_2.x, 21u)])), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.a, 22207u), vec3<u32>(1u, 0u, u_input.b.x)), ~4294967295u, 1u, ~u_input.a)), _wgslsmith_mod_u32(~(~103844u), 4294967295u)));
}

fn func_4(arg_0: vec3<i32>, arg_1: f32, arg_2: vec3<u32>, arg_3: Struct_1) -> bool {
    global0 = array<u32, 21>();
    var var_0 = Struct_2(arg_3, func_3(Struct_2(func_2(vec3<bool>(true, false, false), Struct_2(Struct_1(arg_3.a), arg_3, Struct_1(vec3<i32>(1i, arg_0.x, arg_0.x))), vec2<u32>(4294967295u, 1u)), arg_3, Struct_1(_wgslsmith_mod_vec3_i32(vec3<i32>(arg_3.a.x, 24976i, arg_3.a.x), arg_3.a))), arg_3, _wgslsmith_clamp_vec2_u32(arg_2.zz, ~arg_2.yy, abs(~u_input.b))), arg_3);
    var var_1 = Struct_2(Struct_1(_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_0.x, arg_3.a.x, var_0.c.a.x), vec3<i32>(var_0.c.a.x, 73i, arg_0.x), var_0.b.a) & ~(~var_0.a.a)), arg_3, func_3(Struct_2(arg_3, var_0.a, func_3(Struct_2(Struct_1(vec3<i32>(var_0.b.a.x, 1i, -1i)), Struct_1(vec3<i32>(arg_3.a.x, 0i, arg_3.a.x)), arg_3), func_2(vec3<bool>(true, true, false), Struct_2(arg_3, var_0.b, Struct_1(var_0.a.a)), vec2<u32>(arg_2.x, 63311u)), abs(vec2<u32>(u_input.a, 1u)))), arg_3, abs(vec2<u32>(4294967295u, 4294967295u) << (_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 0u), arg_2.xy) % vec2<u32>(32u)))));
    var var_2 = Struct_1(_wgslsmith_sub_vec3_i32(~countOneBits(var_1.a.a), -(arg_3.a >> (arg_2 % vec3<u32>(32u)))));
    let var_3 = _wgslsmith_f_op_f32(-169f - _wgslsmith_f_op_f32(-arg_1));
    return all(vec4<bool>(!all(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), false)), -939f != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_1, -942f)) + _wgslsmith_f_op_f32(step(var_3, arg_1))), true, select(false, !any(vec3<bool>(false, false, true)), false)));
}

fn func_1() -> bool {
    let var_0 = select(func_4(-select(firstLeadingBit(vec3<i32>(2147483647i, -1i, 1i)), vec3<i32>(1i, 2147483647i, 602i), true), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -186f)), _wgslsmith_f_op_f32(-2140f * _wgslsmith_f_op_f32(select(-1162f, 1000f, false))))), ~vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(42310u, 21u)], 21u)], 4294967295u, _wgslsmith_add_u32(1u, u_input.b.x)), func_3(Struct_2(func_2(vec3<bool>(true, false, true), Struct_2(Struct_1(vec3<i32>(-18599i, 17991i, 18160i)), Struct_1(vec3<i32>(-69046i, 1i, -8807i)), Struct_1(vec3<i32>(0i, 1i, -32039i))), u_input.b), func_2(vec3<bool>(false, true, false), Struct_2(Struct_1(vec3<i32>(-57249i, 2147483647i, -37338i)), Struct_1(vec3<i32>(2147483647i, 27247i, 0i)), Struct_1(vec3<i32>(-25242i, 53467i, -3540i))), vec2<u32>(34947u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(5760u, 21u)], 21u)], 21u)], 21u)], 21u)], 21u)], 21u)])), func_2(vec3<bool>(true, false, false), Struct_2(Struct_1(vec3<i32>(-9965i, 57093i, 23925i)), Struct_1(vec3<i32>(1i, -38127i, 957i)), Struct_1(vec3<i32>(0i, -51040i, 2147483647i))), u_input.b)), Struct_1(vec3<i32>(1i, 1i, 1i)), vec2<u32>(abs(0u), 75568u))), false, true);
    let var_1 = func_3(Struct_2(Struct_1(abs(vec3<i32>(-2147483647i, 2147483647i, 35845i))), Struct_1(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, 51709i), vec2<i32>(-1023i, 3451i)), -1i, min(2147483647i, -39431i))), func_3(Struct_2(func_2(vec3<bool>(var_0, true, var_0), Struct_2(Struct_1(vec3<i32>(8164i, -1i, 39688i)), Struct_1(vec3<i32>(45649i, -2147483647i, -5676i)), Struct_1(vec3<i32>(-8394i, 2147483647i, -5107i))), u_input.b), func_3(Struct_2(Struct_1(vec3<i32>(62596i, -34981i, -48342i)), Struct_1(vec3<i32>(2147483647i, 71263i, 31580i)), Struct_1(vec3<i32>(0i, 2147483647i, 1i))), Struct_1(vec3<i32>(6630i, -61222i, -35066i)), vec2<u32>(u_input.b.x, 0u)), Struct_1(vec3<i32>(47325i, -26660i, 7935i))), func_3(Struct_2(Struct_1(vec3<i32>(-186i, -2937i, 1i)), Struct_1(vec3<i32>(1i, -3465i, 22451i)), Struct_1(vec3<i32>(9519i, 2147483647i, -2147483647i))), func_3(Struct_2(Struct_1(vec3<i32>(-2147483647i, 1i, 2147483647i)), Struct_1(vec3<i32>(27135i, -24684i, 21952i)), Struct_1(vec3<i32>(2147483647i, -16002i, 0i))), Struct_1(vec3<i32>(0i, 58876i, 0i)), u_input.b), ~u_input.b), vec2<u32>(global0[_wgslsmith_index_u32(~0u, 21u)], min(u_input.a, u_input.b.x)))), Struct_1(_wgslsmith_mod_vec3_i32(func_2(select(vec3<bool>(false, true, false), vec3<bool>(var_0, var_0, var_0), true), Struct_2(Struct_1(vec3<i32>(15682i, -8420i, 37069i)), Struct_1(vec3<i32>(-50180i, 0i, 1108i)), Struct_1(vec3<i32>(-20467i, 36181i, 14568i))), ~vec2<u32>(u_input.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 21u)], 21u)])).a, -countOneBits(vec3<i32>(-2147483647i, 25747i, -2147483647i)))), u_input.b);
    let var_2 = var_1.a;
    let var_3 = vec2<i32>(2840i, -245i);
    var var_4 = global0[_wgslsmith_index_u32(u_input.a, 21u)];
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 21>();
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(800f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1000f)), _wgslsmith_f_op_f32(select(-915f, 634f, false))), _wgslsmith_f_op_f32(trunc(-408f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1153f) * _wgslsmith_div_f32(-1000f, -1573f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(561f, 1000f, -704f, 879f)) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-679f, -1792f, -1013f, -786f)))) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-652f, -908f, 1080f, 1779f)))))));
    let var_1 = abs(firstTrailingBit(-23140i) << (~(~(~1963u)) % 32u));
    var var_2 = func_1();
    let var_3 = Struct_2(Struct_1(func_2(vec3<bool>(var_0.x <= -430f, true, false), Struct_2(func_2(vec3<bool>(false, true, true), Struct_2(Struct_1(vec3<i32>(var_1, -1185i, 2147483647i)), Struct_1(vec3<i32>(var_1, -2147483647i, 2147483647i)), Struct_1(vec3<i32>(var_1, -2147483647i, -2147483647i))), u_input.b), func_3(Struct_2(Struct_1(vec3<i32>(-41090i, 1i, var_1)), Struct_1(vec3<i32>(-15779i, 2147483647i, 3271i)), Struct_1(vec3<i32>(52749i, var_1, var_1))), Struct_1(vec3<i32>(var_1, var_1, 1i)), u_input.b), Struct_1(vec3<i32>(var_1, var_1, -38444i))), select(~vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.b.x, global0[_wgslsmith_index_u32(u_input.a, 21u)]), func_4(vec3<i32>(var_1, var_1, var_1), var_0.x, vec3<u32>(62827u, u_input.a, 23900u), Struct_1(vec3<i32>(var_1, var_1, 2147483647i))))).a), Struct_1(vec3<i32>(_wgslsmith_mult_i32(var_1, 0i) >> (_wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(u_input.b.x, global0[_wgslsmith_index_u32(u_input.a, 21u)])) % 32u), _wgslsmith_sub_i32(select(var_1, var_1, true), 0i), 1i)), Struct_1(vec3<i32>(var_1, _wgslsmith_add_i32(1i, var_1), -var_1)));
    var var_4 = ~countOneBits(select(_wgslsmith_mod_vec4_u32(~vec4<u32>(0u, 0u, global0[_wgslsmith_index_u32(u_input.b.x, 21u)], 49481u), vec4<u32>(global0[_wgslsmith_index_u32(1u, 21u)], 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(21528u, 21u)], 21u)], 12844u)), abs(vec4<u32>(47803u, u_input.b.x, global0[_wgslsmith_index_u32(1u, 21u)], 1u)) | ~vec4<u32>(0u, 22993u, global0[_wgslsmith_index_u32(u_input.b.x, 21u)], 4294967295u), (u_input.b.x & u_input.b.x) <= 4030u));
    global0 = array<u32, 21>();
    var var_5 = var_1 & func_2(vec3<bool>(any(vec3<bool>(true, true, true)), true, true), Struct_2(Struct_1(var_3.b.a ^ var_3.b.a), Struct_1(_wgslsmith_mult_vec3_i32(var_3.a.a, vec3<i32>(-1i, var_3.a.a.x, var_1))), var_3.a), vec2<u32>(~72888u, ~firstLeadingBit(global0[_wgslsmith_index_u32(25807u, 21u)]))).a.x;
    let var_6 = _wgslsmith_clamp_vec4_u32(select(~_wgslsmith_mult_vec4_u32(vec4<u32>(11127u, 8062u, u_input.a, 15362u), countOneBits(vec4<u32>(var_4.x, 4294967295u, u_input.b.x, 27451u))), vec4<u32>(1u, reverseBits(u_input.a), 14007u | u_input.a, u_input.a), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), false), true)), countOneBits(_wgslsmith_mult_vec4_u32(select(vec4<u32>(global0[_wgslsmith_index_u32(u_input.b.x, 21u)], 4294967295u, global0[_wgslsmith_index_u32(41589u, 21u)], var_4.x), vec4<u32>(1u, u_input.a, global0[_wgslsmith_index_u32(u_input.a, 21u)], 4294967295u), true), ~vec4<u32>(global0[_wgslsmith_index_u32(u_input.a, 21u)], 15753u, u_input.b.x, u_input.b.x)) >> (vec4<u32>(2368u, ~4294967295u, _wgslsmith_sub_u32(var_4.x, 0u), ~33907u) % vec4<u32>(32u))), countOneBits(vec4<u32>(var_4.x, ~(5655u >> (global0[_wgslsmith_index_u32(18435u, 21u)] % 32u)), 4294967295u, u_input.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(31026u, 1i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, 1795f, -822f), vec3<f32>(var_0.x, 406f, var_0.x)) * _wgslsmith_f_op_vec3_f32(exp2(var_0.yxz))))) * _wgslsmith_f_op_vec3_f32(-var_0.yxy)), min(var_6, vec4<u32>(~1u, 1u, 68300u, var_6.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -1088f)));
}

