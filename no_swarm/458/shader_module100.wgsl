struct Struct_1 {
    a: f32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(-1000f);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: i32, arg_1: vec4<f32>, arg_2: bool) -> f32 {
    var var_0 = 83574i;
    global0 = Struct_4(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(-800f * global0.a))))));
    var var_1 = Struct_1(global0.a, !select(select(vec2<bool>(true, true), vec2<bool>(arg_2, arg_2), vec2<bool>(arg_2, false)), vec2<bool>(false, arg_2), arg_2));
    var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -395f)), var_1.b);
    var var_2 = Struct_2(abs(vec2<i32>(~(~arg_0), arg_0)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_1.x - _wgslsmith_div_f32(global0.a, -802f)))));
}

fn func_2(arg_0: Struct_4, arg_1: vec4<f32>, arg_2: vec3<bool>, arg_3: f32) -> Struct_1 {
    var var_0 = !(!arg_2);
    global0 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(arg_3, arg_1.x))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(~(-31945i), _wgslsmith_f_op_vec4_f32(-arg_1), false)))));
    var var_1 = Struct_2(_wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(abs(~vec2<i32>(-61772i, 38779i)), ~_wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, -20834i), vec2<i32>(-38872i, -2147483647i), vec2<i32>(-8907i, -1i))), -abs(vec2<i32>(22277i, -1i))));
    var_0 = !select(!vec3<bool>(!arg_2.x, 4294967295u >= u_input.a, false), vec3<bool>(true, var_0.x & true, var_1.a.x <= 1i), false);
    var var_2 = global0.a;
    return Struct_1(_wgslsmith_f_op_f32(374f + _wgslsmith_f_op_f32(abs(global0.a))), !(!var_0.xz));
}

fn func_4(arg_0: Struct_1, arg_1: f32) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_f32(-739f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(714f)) * global0.a), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(-255f + -1408f))), arg_0.b.x)) * _wgslsmith_f_op_f32(func_3(1i, vec4<f32>(_wgslsmith_f_op_f32(round(1368f)), _wgslsmith_f_op_f32(round(arg_0.a)), _wgslsmith_div_f32(-2017f, 187f), -209f), false))));
    global0 = Struct_4(_wgslsmith_f_op_f32(-global0.a));
    let var_1 = select(select(!arg_0.b, func_2(Struct_4(-1716f), vec4<f32>(_wgslsmith_f_op_f32(global0.a + 1780f), _wgslsmith_f_op_f32(func_3(-11233i, vec4<f32>(-1000f, arg_1, arg_1, arg_1), arg_0.b.x)), arg_1, _wgslsmith_f_op_f32(-arg_1)), vec3<bool>(arg_0.b.x, true, true), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-748f))))).b, arg_0.b.x), select(arg_0.b, vec2<bool>(true, all(select(vec2<bool>(arg_0.b.x, arg_0.b.x), arg_0.b, true))), select(select(vec2<bool>(arg_0.b.x, arg_0.b.x), vec2<bool>(arg_0.b.x, arg_0.b.x), !arg_0.b), vec2<bool>(any(vec4<bool>(arg_0.b.x, arg_0.b.x, false, arg_0.b.x)), arg_0.b.x), false)), select(func_2(Struct_4(_wgslsmith_f_op_f32(-global0.a)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0.a, global0.a, global0.a, -1000f), vec4<f32>(-324f, arg_1, -242f, 366f))))), !(!vec3<bool>(arg_0.b.x, arg_0.b.x, false)), arg_0.a).b, vec2<bool>(arg_0.b.x, func_2(Struct_4(global0.a), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0.a, 1578f, 1121f, global0.a), vec4<f32>(826f, -1061f, -955f, global0.a))), vec3<bool>(true, arg_0.b.x, true), _wgslsmith_f_op_f32(arg_1 * 168f)).b.x), !select(arg_0.b, select(arg_0.b, vec2<bool>(false, arg_0.b.x), vec2<bool>(arg_0.b.x, false)), false)));
    global0 = Struct_4(arg_0.a);
    return countOneBits(countOneBits(~countOneBits(abs(vec3<u32>(0u, u_input.a, 52845u)))));
}

fn func_1(arg_0: vec2<bool>) -> vec3<f32> {
    var var_0 = _wgslsmith_mult_vec2_i32(max(countOneBits(~vec2<i32>(55485i, 4595i)), -(vec2<i32>(-1i) * -vec2<i32>(-73830i, -2147483647i))), vec2<i32>(1i, _wgslsmith_dot_vec2_i32(max(vec2<i32>(0i, 0i), countOneBits(vec2<i32>(5736i, 23887i))), _wgslsmith_sub_vec2_i32(vec2<i32>(1i, 1i), select(vec2<i32>(-2147483647i, 8178i), vec2<i32>(-1i, 32924i), vec2<bool>(arg_0.x, false))))));
    let var_1 = u_input.a;
    var var_2 = _wgslsmith_sub_vec3_u32(~(vec3<u32>(u_input.a, ~u_input.a, ~509u) | func_4(func_2(Struct_4(global0.a), vec4<f32>(468f, 382f, global0.a, -576f), vec3<bool>(arg_0.x, true, false), 706f), 1f)), (~vec3<u32>(var_1, 1u, var_1) >> (abs(vec3<u32>(var_1, 1u, 2799u)) % vec3<u32>(32u))) << (~((vec3<u32>(0u, 68415u, var_1) | vec3<u32>(u_input.a, var_1, 0u)) | _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, 0u, var_1), vec3<u32>(1u, u_input.a, 0u))) % vec3<u32>(32u)));
    var_0 = _wgslsmith_mult_vec2_i32(select(vec2<i32>(firstLeadingBit(var_0.x), countOneBits(~var_0.x)), reverseBits(abs(~vec2<i32>(var_0.x, -2147483647i))), vec2<bool>(false, any(vec4<bool>(false, false, true, true)) & !arg_0.x)), max(-_wgslsmith_mult_vec2_i32(vec2<i32>(-1i, 0i), vec2<i32>(var_0.x, var_0.x)) ^ vec2<i32>(~var_0.x, var_0.x), vec2<i32>(_wgslsmith_mult_i32(var_0.x, var_0.x) << (_wgslsmith_clamp_u32(50260u, 3355u, var_1) % 32u), var_0.x)));
    let var_3 = min(_wgslsmith_add_i32(10565i, ~4175i), _wgslsmith_add_i32(~_wgslsmith_sub_i32(1i | var_0.x, var_0.x | 3060i), select(~3913i, var_0.x, arg_0.x)));
    return _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1054f, global0.a, global0.a) - vec3<f32>(311f, global0.a, -1947f)))))));
}

fn func_5(arg_0: vec3<f32>, arg_1: i32, arg_2: bool, arg_3: vec4<bool>) -> bool {
    global0 = Struct_4(arg_0.x);
    global0 = Struct_4(2316f);
    var var_0 = Struct_4(global0.a);
    var var_1 = Struct_3(Struct_2(~(vec2<i32>(-38632i, 17033i) | vec2<i32>(arg_1, arg_1))));
    var_1 = Struct_3(Struct_2(firstTrailingBit(vec2<i32>(-1i) * -vec2<i32>(arg_1, arg_1))));
    return true;
}

fn func_6(arg_0: bool, arg_1: vec4<i32>, arg_2: u32, arg_3: bool) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.a)));
    var_0 = -1044f;
    var_0 = global0.a;
    global0 = Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -979f));
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(259f * global0.a), -197f, -271f));
    return func_2(Struct_4(_wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, -1000f, 623f, global0.a), vec4<f32>(-1705f, 174f, 1972f, -558f))) - vec4<f32>(_wgslsmith_f_op_vec3_f32(func_1(vec2<bool>(true, false))).x, _wgslsmith_f_op_f32(-global0.a), 1358f, global0.a)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(976f, 359f, 781f, 1569f) - vec4<f32>(816f, 714f, var_1.x, var_1.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1480f, 672f, var_1.x, var_1.x))) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -878f), global0.a, 296f, _wgslsmith_f_op_f32(global0.a + global0.a))), !select(vec4<bool>(true, arg_0, arg_3, arg_3), select(vec4<bool>(arg_0, arg_0, arg_3, arg_0), vec4<bool>(arg_0, true, false, true), arg_3), !arg_0))), !(!(!select(vec3<bool>(false, true, true), vec3<bool>(true, arg_3, arg_3), true))), _wgslsmith_div_f32(-553f, _wgslsmith_f_op_f32(-var_1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = func_6(!(!all(vec4<bool>(true, var_0, false, true))), vec4<i32>(min(1i, 12153i), -1i, 2147483647i, ~(-6571i)), ~(~_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(u_input.a, u_input.a)), ~vec2<u32>(u_input.a, 0u))), select(!var_0, func_5(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(vec2<bool>(true, var_0))), vec3<f32>(-756f, 765f, global0.a)), select(firstLeadingBit(24425i), 1i, all(vec4<bool>(var_0, var_0, false, var_0))), true, !(!vec4<bool>(false, var_0, var_0, true))), func_2(Struct_4(1270f), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1369f, 364f, global0.a, -344f))))), vec3<bool>(any(vec3<bool>(var_0, var_0, var_0)), u_input.a < u_input.a, var_0), -481f).b.x));
    global0 = Struct_4(_wgslsmith_f_op_f32(-1025f * _wgslsmith_f_op_f32(-164f + 851f)));
    let var_2 = vec2<u32>(firstTrailingBit(54170u) & ~0u, u_input.a);
    let var_3 = vec3<bool>(-2147483647i <= _wgslsmith_clamp_i32(-8330i, 2147483647i, _wgslsmith_div_i32(max(-2147483647i, 14628i), 1i)), false, !(!(!(var_0 & true))));
    global0 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-2106f, _wgslsmith_f_op_f32(-var_1.a)))));
    var var_4 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(1u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-974f, -628f)))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-504f, var_1.a)), _wgslsmith_f_op_vec2_f32(vec2<f32>(860f, -170f) * vec2<f32>(587f, var_1.a))))), var_2.x);
}

