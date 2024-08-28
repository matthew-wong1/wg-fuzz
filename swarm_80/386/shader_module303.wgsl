struct Struct_1 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: u32,
    d: vec2<i32>,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1 = Struct_1(vec3<bool>(false, true, true), vec4<bool>(false, false, false, true), 40387u, vec2<i32>(10588i, 1i), 88902u);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    let var_0 = any(global1.b);
    let var_1 = 1f;
    let var_2 = vec2<bool>(true, !(!(!(!var_0))));
    let var_3 = Struct_1(!(!global1.b.ywy), vec4<bool>(abs(~global0.d.x) < global0.d.x, !var_0, false, true), global1.e, vec2<i32>(~global0.d.x | firstLeadingBit(2147483647i), ~((2898i >> (global1.c % 32u)) << (~global1.e % 32u))), 0u);
    global1 = Struct_1(vec3<bool>(var_2.x, select(global0.b.x && (global1.c != 43299u), true, select(true, var_3.a.x, true)), global1.a.x), global1.b, _wgslsmith_clamp_u32(52836u, 1u & ~(global1.e ^ var_3.e), global1.e), _wgslsmith_mult_vec2_i32(vec2<i32>(var_3.d.x, max(_wgslsmith_clamp_i32(global1.d.x, var_3.d.x, u_input.a), 23008i)), _wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(-vec2<i32>(2147483647i, 2147483647i), _wgslsmith_mult_vec2_i32(var_3.d, var_3.d)), global0.d, global0.d)), var_3.c);
    return 4294967295u;
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    global1 = Struct_1(!vec3<bool>(global0.a.x, !(!arg_0.a.x), !arg_0.a.x && global0.a.x), !global1.b, ~firstLeadingBit(_wgslsmith_sub_u32(130804u, 39093u)), _wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, _wgslsmith_sub_i32(global0.d.x, -2147483647i)), vec2<i32>(abs(global0.d.x), 17706i >> (global1.c % 32u))), abs(-global1.d)), 52343u >> (global1.e % 32u));
    var var_0 = Struct_1(!(!select(select(vec3<bool>(true, true, false), vec3<bool>(global0.b.x, true, false), vec3<bool>(global1.a.x, true, true)), select(vec3<bool>(false, true, global1.b.x), vec3<bool>(arg_0.a.x, true, global1.a.x), false), all(vec2<bool>(false, global0.b.x)))), select(!select(vec4<bool>(global1.b.x, false, global0.a.x, false), select(global1.b, vec4<bool>(global0.a.x, false, global0.a.x, global1.a.x), true), global1.b), select(global1.b, arg_0.b, !arg_0.b), arg_0.b), ~(global0.c >> (firstTrailingBit(firstLeadingBit(909u)) % 32u)), global0.d, func_3());
    var var_1 = Struct_1(vec3<bool>(true, true, all(!vec4<bool>(global1.b.x, arg_0.a.x, var_0.a.x, global1.a.x))), global0.b, arg_0.e, arg_0.d, global1.c);
    var var_2 = -541f;
    let var_3 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(756f, -735f, 784f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -656f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(125f, -783f, 905f, -147f) - vec4<f32>(-1044f, -599f, -958f, 346f))))))));
    return arg_0;
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> vec3<bool> {
    global1 = func_2(func_2(func_2(arg_2)));
    global0 = Struct_1(select(select(!func_2(Struct_1(vec3<bool>(global0.b.x, global0.b.x, arg_2.a.x), global1.b, global0.c, arg_2.d, global0.e)).a, !select(vec3<bool>(true, arg_1.b.x, global0.a.x), vec3<bool>(global0.b.x, global0.b.x, false), arg_1.a.x), !(!arg_2.b.x)), arg_2.a, true), !arg_2.b, firstTrailingBit(firstTrailingBit(global0.e)), arg_1.d, ~(~_wgslsmith_clamp_u32(arg_1.e, _wgslsmith_clamp_u32(0u, arg_1.c, global1.c), min(0u, arg_1.c))));
    global1 = func_2(arg_1);
    var var_0 = _wgslsmith_mult_vec2_i32(global1.d | arg_1.d, ~global0.d);
    var var_1 = ~reverseBits(_wgslsmith_mult_vec2_u32(reverseBits(vec2<u32>(0u, global1.e)), ~vec2<u32>(0u, arg_2.e)) & max(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(arg_1.e, arg_1.c)));
    return select(!func_2(Struct_1(select(vec3<bool>(global0.a.x, global1.b.x, global1.b.x), vec3<bool>(arg_2.b.x, false, arg_1.a.x), arg_2.b.x), arg_1.b, 55680u, firstTrailingBit(global1.d), _wgslsmith_mult_u32(1u, global1.e))).a, !vec3<bool>(arg_2.a.x | true, !all(arg_2.a.xy), false), select(arg_2.a, !global1.a, arg_1.b.x));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32, arg_3: f32) -> Struct_1 {
    global0 = Struct_1(vec3<bool>(true || !(true && arg_1.a.x), !(reverseBits(global1.e) != (1u & arg_0.c)), true & arg_0.b.x), select(!select(select(vec4<bool>(false, false, arg_1.a.x, arg_1.a.x), arg_1.b, arg_0.b.x), vec4<bool>(true, true, true, arg_1.a.x), vec4<bool>(false, true, arg_1.b.x, false)), arg_0.b, arg_1.b), ~(_wgslsmith_mod_u32(func_3(), 6082u) & 6596u), _wgslsmith_add_vec2_i32(select(firstLeadingBit(vec2<i32>(u_input.a, -1i)), vec2<i32>(34536i, global1.d.x) >> (vec2<u32>(global1.e, arg_0.e) % vec2<u32>(32u)), global1.a.x || false) & arg_0.d, arg_0.d), arg_0.e);
    var var_0 = func_2(func_2(Struct_1(global0.a, global1.b, global0.c, max(vec2<i32>(0i, -64173i), vec2<i32>(-13169i, global1.d.x)) | -global0.d, _wgslsmith_add_u32(~1u, global1.c))));
    var_0 = arg_1;
    var_0 = Struct_1(!select(vec3<bool>(false, arg_3 > arg_3, !arg_0.a.x), arg_0.a, func_4(func_2(arg_0).e, arg_1, func_2(arg_1))), var_0.b, 8866u, var_0.d, func_2(arg_0).c);
    var_0 = Struct_1(global1.a, select(vec4<bool>(true, _wgslsmith_f_op_f32(trunc(arg_3)) != arg_3, ~4294967295u < global1.c, all(vec4<bool>(var_0.b.x, global1.a.x, true, global1.b.x))), global0.b, true), ~_wgslsmith_sub_u32(~2818u, 1u), min(abs(_wgslsmith_mult_vec2_i32(vec2<i32>(global1.d.x, 1i), vec2<i32>(2147483647i, u_input.a))) ^ vec2<i32>(-1546i, _wgslsmith_mod_i32(23906i, global1.d.x)), vec2<i32>(-1766i, _wgslsmith_add_i32(~global1.d.x, -u_input.b))), 0u);
    return Struct_1(arg_1.a, arg_1.b, min(30878u, ~firstLeadingBit(~arg_0.c)), -firstLeadingBit(global1.d), ~0u);
}

fn func_6(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: u32) -> Struct_1 {
    var var_0 = Struct_1(vec3<bool>(!(!func_2(arg_0).b.x), false, func_5(arg_0, Struct_1(global1.b.wwy, vec4<bool>(arg_0.a.x, arg_0.b.x, false, true), 1u, vec2<i32>(u_input.a, arg_1.x), global1.c), ~global0.e, _wgslsmith_f_op_f32(f32(-1f) * -1000f)).c != global1.c), global0.b, global0.c, vec2<i32>(-2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(-u_input.b, global1.d.x ^ global1.d.x, ~global0.d.x, -1i), ~vec4<i32>(u_input.a, arg_1.x, -2147483647i, global0.d.x) << (min(vec4<u32>(arg_2, global0.c, 22569u, arg_0.e), vec4<u32>(0u, 18716u, arg_2, global1.e)) % vec4<u32>(32u)))), _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(min(vec2<u32>(43039u, arg_2), vec2<u32>(arg_2, arg_0.c)), firstTrailingBit(vec2<u32>(arg_0.c, arg_2))), ~select(vec2<u32>(1u, 4294967295u), vec2<u32>(global1.c, 1u), true)), ~(~vec2<u32>(94159u, 4294967295u)) | _wgslsmith_mult_vec2_u32(vec2<u32>(21988u, global0.c), ~vec2<u32>(global1.e, arg_0.e))));
    let var_1 = firstLeadingBit(~(-50776i & arg_0.d.x));
    let var_2 = Struct_1(!func_4(~func_3(), func_5(arg_0, func_5(Struct_1(vec3<bool>(var_0.a.x, global1.a.x, arg_0.a.x), global0.b, 30732u, vec2<i32>(-54379i, global0.d.x), arg_0.c), Struct_1(vec3<bool>(false, true, false), vec4<bool>(arg_0.a.x, global1.a.x, true, false), 82371u, arg_0.d, global1.c), 35568u, -344f), 55855u, _wgslsmith_f_op_f32(f32(-1f) * -928f)), Struct_1(vec3<bool>(true, false, global1.b.x), !var_0.b, var_0.e, reverseBits(vec2<i32>(-1i, arg_1.x)), _wgslsmith_div_u32(var_0.c, 71402u))), vec4<bool>(func_5(func_2(arg_0), func_2(func_2(Struct_1(vec3<bool>(false, true, false), vec4<bool>(var_0.a.x, true, global0.b.x, global0.b.x), 1u, global0.d, 28039u))), min(6479u, 1u), -1094f).b.x, true, any(global0.b), func_5(Struct_1(vec3<bool>(false, global1.a.x, var_0.b.x), vec4<bool>(false, global1.a.x, global0.a.x, true), global0.e, global0.d, ~var_0.c), Struct_1(select(vec3<bool>(false, arg_0.b.x, true), vec3<bool>(var_0.a.x, false, global1.a.x), vec3<bool>(true, global0.a.x, true)), vec4<bool>(var_0.b.x, global0.a.x, var_0.a.x, global0.b.x), arg_0.e, ~arg_0.d, ~4294967295u), ~(~0u), -934f).a.x), ~57351u, var_0.d, ~1u);
    let var_3 = 22002i;
    var var_4 = ~(var_0.d.x << (~0u % 32u));
    return func_2(func_5(Struct_1(!vec3<bool>(true, true, var_0.b.x), vec4<bool>(true, true, !arg_0.a.x, !var_2.a.x), ~abs(1u), var_0.d >> (_wgslsmith_mod_vec2_u32(vec2<u32>(8056u, 0u), vec2<u32>(arg_2, 0u)) % vec2<u32>(32u)), _wgslsmith_div_u32(22420u, ~var_2.c)), func_5(Struct_1(!var_0.b.wzy, !global1.b, func_2(var_2).c, _wgslsmith_mod_vec2_i32(vec2<i32>(0i, -10128i), global1.d), 1u), func_2(arg_0), abs(global1.c & 18560u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1155f, 1000f)) + 502f)), 1u, _wgslsmith_f_op_f32(-1f)));
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: u32) -> f32 {
    global1 = func_6(func_5(Struct_1(func_4(countOneBits(172u), Struct_1(global1.b.xwx, vec4<bool>(true, true, false, global0.b.x), global1.e, vec2<i32>(-2147483647i, -1i), arg_2), func_2(Struct_1(global1.a, vec4<bool>(true, false, true, true), global0.e, vec2<i32>(-2147483647i, global0.d.x), global1.c))), select(global0.b, select(global1.b, vec4<bool>(global0.b.x, true, global0.b.x, true), vec4<bool>(global0.a.x, global1.b.x, global0.a.x, global0.a.x)), !global1.b.x), select(~arg_2, arg_2, false & global1.b.x), _wgslsmith_mult_vec2_i32(global1.d, _wgslsmith_add_vec2_i32(global1.d, vec2<i32>(2147483647i, arg_1))), firstTrailingBit(global1.e)), Struct_1(vec3<bool>(true, true, true), global1.b, min(9313u, firstLeadingBit(17591u)), reverseBits(countOneBits(vec2<i32>(arg_1, 2147483647i))), global1.c), 1u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -846f) - _wgslsmith_f_op_f32(ceil(-533f)))), vec3<i32>(~(-5892i), -2147483647i, u_input.b), arg_2);
    global1 = func_2(Struct_1(vec3<bool>(global0.a.x, false, global0.a.x | (arg_0 < arg_0)), global1.b, ~(~(~global1.e)), global0.d, ~4294967295u));
    let var_0 = abs(vec4<u32>(global1.e, 1u, global1.c, 13932u));
    global1 = Struct_1(vec3<bool>(global0.b.x, false, global1.b.x), global0.b, _wgslsmith_add_u32(abs(28063u), _wgslsmith_sub_u32(~1u, ~10167u)), global1.d, abs(~global0.c));
    let var_1 = var_0;
    return _wgslsmith_f_op_f32(round(arg_0));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_1(-1942f, -2147483647i, global0.e)))), 587f)));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1035f) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-1286f, -129f)), -999f)), _wgslsmith_f_op_f32(-984f + 2131f))))));
    let var_2 = func_5(func_2(func_6(Struct_1(global1.a, vec4<bool>(global0.a.x, false, true, global1.a.x), 68285u, ~vec2<i32>(29678i, global0.d.x), ~global1.e), countOneBits(max(vec3<i32>(global0.d.x, 1i, -1i), vec3<i32>(u_input.b, global1.d.x, global1.d.x))), abs(1u))), Struct_1(!vec3<bool>(func_5(Struct_1(vec3<bool>(global0.a.x, true, global0.b.x), global0.b, 1u, vec2<i32>(global1.d.x, 2147483647i), global1.c), Struct_1(global0.a, vec4<bool>(true, true, false, global1.a.x), global0.c, vec2<i32>(4275i, global1.d.x), 1u), 39358u, var_1).a.x, global1.b.x & global0.b.x, true), vec4<bool>(global1.a.x, false, true, global1.a.x), ~1u, _wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(u_input.a, 32323i), select(-2147483647i, global0.d.x, true)), _wgslsmith_mult_vec2_i32(vec2<i32>(global1.d.x, 13453i), vec2<i32>(global1.d.x, 10775i) << (vec2<u32>(0u, 1u) % vec2<u32>(32u)))), ~global0.c), ~global1.c, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(424f)), _wgslsmith_f_op_f32(exp2(var_1)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1, var_1)))), !(!global0.a.x != true))));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(195f)) - var_1);
    let var_3 = func_6(var_2, ~(vec3<i32>(_wgslsmith_div_i32(var_2.d.x, -1i), abs(var_2.d.x), var_2.d.x & -1i) >> (~select(vec3<u32>(1u, global0.e, 81006u), vec3<u32>(1u, global1.e, global1.e), global1.b.zzx) % vec3<u32>(32u))), ~(~(~var_2.e)));
    let var_4 = func_2(var_3);
    global1 = Struct_1(func_4(reverseBits(29172u), Struct_1(vec3<bool>(true, var_1 >= var_1, false), vec4<bool>(global0.b.x, false, all(vec2<bool>(global0.b.x, var_2.a.x)), func_5(var_4, var_2, 0u, -358f).b.x), func_2(func_2(Struct_1(vec3<bool>(true, global1.b.x, var_4.a.x), vec4<bool>(false, false, true, global1.a.x), 53899u, vec2<i32>(var_2.d.x, var_3.d.x), 43454u))).e, vec2<i32>(~u_input.b, var_3.d.x), 33913u), var_3), func_6(Struct_1(func_6(var_3, -vec3<i32>(global0.d.x, u_input.a, u_input.b), _wgslsmith_add_u32(10165u, global1.e)).a, var_2.b, _wgslsmith_div_u32(35891u, _wgslsmith_add_u32(global0.e, 7252u)), vec2<i32>(var_4.d.x, ~global1.d.x), _wgslsmith_dot_vec3_u32(vec3<u32>(22140u, var_2.e, global1.e) ^ vec3<u32>(var_4.e, 4294967295u, 4294967295u), vec3<u32>(25130u, 1u, var_4.e))), vec3<i32>(select(-20739i, 1i, !var_3.b.x), (global1.d.x | -3951i) ^ _wgslsmith_sub_i32(var_4.d.x, var_4.d.x), _wgslsmith_clamp_i32(-1i, 33263i, u_input.b)), ~(~var_2.e)).b, var_4.c, vec2<i32>(-(-8516i << (~global1.e % 32u)), _wgslsmith_sub_i32(var_2.d.x, global0.d.x)), 55567u);
    global0 = func_5(var_3, Struct_1(func_2(Struct_1(vec3<bool>(false, false, var_3.a.x), !vec4<bool>(global0.b.x, true, var_3.a.x, global1.b.x), 1u, _wgslsmith_add_vec2_i32(vec2<i32>(var_4.d.x, u_input.b), var_3.d), func_6(var_3, vec3<i32>(u_input.a, global0.d.x, -9810i), 1u).e)).b.xww, select(func_6(func_6(var_2, vec3<i32>(29597i, 0i, -2147483647i), global0.c), ~vec3<i32>(var_3.d.x, var_3.d.x, 2147483647i), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_2.c, 67164u), vec3<u32>(1u, var_4.e, var_4.e))).b, var_3.b, false), ~(~_wgslsmith_mult_u32(global0.c, global1.e)), _wgslsmith_mod_vec2_i32(var_4.d, _wgslsmith_add_vec2_i32(select(vec2<i32>(var_4.d.x, global1.d.x), var_4.d, var_2.a.zz), vec2<i32>(1i, 47355i))), ~4294967295u), ~_wgslsmith_mod_u32(_wgslsmith_clamp_u32(var_4.e, var_3.c << (1u % 32u), var_3.e), ~global1.e), _wgslsmith_f_op_f32(max(var_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1205f + var_1))) - var_1))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(2147483647i));
}

