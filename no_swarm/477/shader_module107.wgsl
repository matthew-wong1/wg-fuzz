struct Struct_1 {
    a: u32,
    b: i32,
    c: bool,
    d: f32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_3, arg_1: i32) -> bool {
    let var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.b, arg_0.b)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b, var_0.b, arg_0.b))), vec3<f32>(-342f, 1000f, _wgslsmith_f_op_f32(abs(var_0.b))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false)))));
    var var_2 = true;
    var_2 = true;
    var var_3 = any(vec4<bool>(true, true, (var_1.x > _wgslsmith_f_op_f32(-var_0.b)) && true, false));
    return false | all(select(vec2<bool>(true, true), vec2<bool>(true, any(vec4<bool>(false, false, true, true))), true));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_2(Struct_1(0u, -(i32(-1i) * -1622i), all(select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), true), vec3<bool>(false, false, true), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1570f, 1769f), _wgslsmith_f_op_f32(-191f + -1352f), false))), select(vec3<bool>(true, true, u_input.a <= u_input.a), vec3<bool>(true, func_3(Struct_3(vec4<u32>(u_input.a, 7527u, u_input.a, u_input.a), 1321f), -22268i), true), true)), _wgslsmith_f_op_f32(select(541f, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_div_f32(434f, 627f), 1f))), false)), Struct_1(19677u, -1i, any(vec2<bool>(all(vec4<bool>(true, true, true, false)), any(vec2<bool>(false, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-315f, _wgslsmith_f_op_f32(ceil(1180f))))), vec3<bool>(true, true, true)), Struct_1(_wgslsmith_mult_u32(~u_input.a, u_input.a) >> (27912u % 32u), 40921i, true, -101f, !select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), false), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), false))), _wgslsmith_div_u32(1u, abs(select(0u, 0u, false))) << (_wgslsmith_clamp_u32(firstLeadingBit(select(4294967295u, u_input.a, true)), 21499u, u_input.a) % 32u));
    return var_0.a;
}

fn func_1(arg_0: vec3<bool>, arg_1: f32) -> Struct_1 {
    return func_2();
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    var var_0 = Struct_3(~((max(vec4<u32>(44398u, u_input.a, u_input.a, arg_0.a), vec4<u32>(u_input.a, arg_0.a, 66002u, u_input.a)) ^ max(vec4<u32>(u_input.a, 44424u, u_input.a, arg_0.a), vec4<u32>(u_input.a, arg_0.a, 1u, 96139u))) ^ vec4<u32>(firstTrailingBit(arg_0.a), 78146u, 1u, 22969u | u_input.a)), 107f);
    var var_1 = Struct_2(arg_0, 1771f, Struct_1((var_0.a.x | _wgslsmith_dot_vec3_u32(var_0.a.yxx, vec3<u32>(var_0.a.x, 6112u, 7275u))) >> (~arg_0.a % 32u), _wgslsmith_mod_i32(-28594i, -2147483647i), false, 1000f, vec3<bool>(arg_0.c, !arg_0.c, arg_0.e.x)), func_2(), 0u);
    var var_2 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(150f, var_1.d.d, var_1.a.d, _wgslsmith_f_op_f32(exp2(var_0.b))))))));
    let var_3 = true;
    var_0 = Struct_3(firstLeadingBit(_wgslsmith_sub_vec4_u32(var_0.a, ~firstTrailingBit(var_0.a))), _wgslsmith_f_op_f32(-400f + var_2.x));
    return func_2();
}

fn func_5(arg_0: Struct_2) -> Struct_1 {
    var var_0 = func_4(func_2());
    let var_1 = ~arg_0.d.a;
    var var_2 = -270f;
    var var_3 = vec3<bool>(arg_0.c.c, any(!select(vec3<bool>(arg_0.a.e.x, arg_0.d.e.x, var_0.e.x), func_1(var_0.e, -743f).e, vec3<bool>(false, arg_0.c.e.x, true))), all(vec3<bool>(!arg_0.d.c, var_0.c, arg_0.d.c)));
    var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, 541f) - arg_0.d.d) * 919f))));
    return func_1(var_0.e, var_0.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_5(Struct_2(func_4(func_1(vec3<bool>(true, false, true), 108f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1686f, 495f)), Struct_1(max(54251u, u_input.a), 1i, true, _wgslsmith_f_op_f32(min(1317f, 239f)), vec3<bool>(true, true, true)), Struct_1(_wgslsmith_add_u32(u_input.a, u_input.a), 0i, true, 317f, select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true)), u_input.a)), -305f, Struct_1(firstTrailingBit(~u_input.a), i32(-1i) * -func_1(vec3<bool>(false, false, false), 235f).b, all(select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), false), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), true), true)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + 102f)), 1758f)), vec3<bool>(true, true, true)), Struct_1(reverseBits(0u), -(i32(-1i) * -50317i), func_4(func_1(vec3<bool>(true, true, false), -249f)).e.x || select(false, false, true), -704f, vec3<bool>(true, true, true)), _wgslsmith_div_u32(4294967295u, ~_wgslsmith_add_u32(countOneBits(48973u), _wgslsmith_sub_u32(u_input.a, 4294967295u))));
    var_0 = Struct_2(func_4(Struct_1(16740u, var_0.c.b, func_2().e.x, var_0.d.d, vec3<bool>(var_0.a.e.x, var_0.d.e.x, any(vec3<bool>(var_0.a.e.x, var_0.d.c, false))))), var_0.a.d, Struct_1(_wgslsmith_div_u32(func_2().a, ~(~4294967295u)), var_0.a.b, true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.a.d, _wgslsmith_f_op_f32(-1345f + var_0.c.d))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1513f + var_0.a.d))), select(select(var_0.a.e, var_0.c.e, select(var_0.c.e.x, var_0.c.c, var_0.d.c)), !func_2().e, any(var_0.d.e.xx) | true)), Struct_1(0u, _wgslsmith_sub_i32(reverseBits(var_0.a.b), -1i) << (u_input.a % 32u), func_4(func_5(Struct_2(Struct_1(4294967295u, 2147483647i, false, var_0.d.d, var_0.a.e), var_0.d.d, var_0.c, var_0.d, var_0.d.a))).e.x, 846f, func_4(var_0.d).e), func_5(Struct_2(Struct_1(firstTrailingBit(var_0.c.a), var_0.d.b, false, _wgslsmith_div_f32(-326f, -607f), !var_0.d.e), func_1(!var_0.c.e, 105f).d, Struct_1(var_0.c.a >> (9962u % 32u), 2147483647i, var_0.a.e.x, var_0.d.d, func_4(var_0.c).e), Struct_1(~4294967295u, -66004i, false, _wgslsmith_f_op_f32(f32(-1f) * -2537f), !var_0.d.e), abs(u_input.a))).a);
    var_0 = Struct_2(func_5(Struct_2(func_5(Struct_2(Struct_1(var_0.c.a, -28535i, var_0.d.e.x, 1586f, vec3<bool>(var_0.d.c, var_0.d.c, true)), -1741f, var_0.a, Struct_1(30394u, -20471i, true, -876f, vec3<bool>(false, true, false)), var_0.c.a)), -1083f, var_0.a, var_0.a, func_1(!vec3<bool>(var_0.d.e.x, var_0.a.e.x, true), var_0.c.d).a)), -194f, func_2(), var_0.c, 12233u);
    var var_1 = func_5(Struct_2(var_0.c, _wgslsmith_f_op_f32(811f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d.d - -159f))), Struct_1(max(var_0.e, 1u), select(var_0.d.b, -var_0.c.b, true), func_5(Struct_2(var_0.a, var_0.a.d, var_0.d, var_0.d, 31490u)).c, func_5(Struct_2(Struct_1(1u, var_0.c.b, var_0.c.c, var_0.d.d, var_0.a.e), var_0.d.d, var_0.c, var_0.c, u_input.a)).d, var_0.c.e), Struct_1(u_input.a, ~var_0.d.b, var_0.a.c, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -552f))), !var_0.a.e), func_4(Struct_1(countOneBits(var_0.d.a), -50069i, true, _wgslsmith_f_op_f32(-188f * var_0.c.d), var_0.c.e)).a));
    var var_2 = true;
    var var_3 = func_5(Struct_2(func_4(var_0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1.d))), func_5(Struct_2(func_4(Struct_1(u_input.a, 2147483647i, var_1.e.x, var_0.a.d, vec3<bool>(var_1.c, true, true))), _wgslsmith_f_op_f32(-var_1.d), func_5(Struct_2(var_0.d, var_0.c.d, Struct_1(var_1.a, 21665i, var_1.c, -263f, var_0.c.e), var_0.d, var_0.e)), var_0.a, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 1u), vec2<u32>(u_input.a, 68762u)))), var_0.a, var_1.a));
    let var_4 = select(select(vec4<bool>(var_3.c, func_1(vec3<bool>(true, false, var_0.d.c), var_3.d).d == var_1.d, !select(true, var_1.e.x, false), false), select(!(!vec4<bool>(false, false, false, var_0.d.e.x)), !vec4<bool>(var_1.e.x, var_0.a.c, var_3.c, false), select(vec4<bool>(var_1.e.x, var_3.c, var_1.e.x, var_1.c), !vec4<bool>(true, false, var_0.d.e.x, false), vec4<bool>(true, var_0.d.e.x, var_1.e.x, var_1.c))), (false | var_0.d.c) || any(vec4<bool>(false, true, var_1.e.x, true))), vec4<bool>(false, false, !var_3.c, func_4(func_1(var_3.e, _wgslsmith_f_op_f32(1000f - var_3.d))).e.x), func_5(Struct_2(var_0.d, 1071f, func_5(Struct_2(var_0.d, var_1.d, var_0.d, Struct_1(var_1.a, 2147483647i, false, var_0.c.d, vec3<bool>(var_1.e.x, var_1.c, var_0.d.c)), var_1.a)), Struct_1(u_input.a, var_3.b, var_1.e.x, var_1.d, vec3<bool>(true, var_3.e.x, var_0.c.c)), 102402u)).c || var_3.c);
    let x = u_input.a;
    s_output = StorageBuffer(-vec3<i32>(_wgslsmith_div_i32(var_3.b, var_1.b), _wgslsmith_dot_vec3_i32(vec3<i32>(var_3.b, var_1.b, -2147483647i), vec3<i32>(14529i, var_1.b, var_3.b)), _wgslsmith_sub_i32(0i, 14915i)) << ((~select(vec3<u32>(var_3.a, 42742u, var_0.d.a), vec3<u32>(u_input.a, 44072u, var_1.a), false) << (((vec3<u32>(u_input.a, 1u, var_1.a) >> (vec3<u32>(var_1.a, 14945u, 39798u) % vec3<u32>(32u))) >> (vec3<u32>(var_3.a, var_3.a, var_1.a) % vec3<u32>(32u))) % vec3<u32>(32u))) % vec3<u32>(32u)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_1.d, var_0.d.d, -1738f), vec3<f32>(-523f, -768f, -1272f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.d.d, -1510f, -1139f)))))), _wgslsmith_mult_vec4_i32(reverseBits(~(vec4<i32>(-5171i, 51180i, var_0.a.b, var_0.c.b) & vec4<i32>(var_0.a.b, -1945i, 0i, -16681i))), ~vec4<i32>(1i, 2147483647i, 60921i, var_0.a.b) >> (~vec4<u32>(u_input.a, var_0.a.a, 125430u, var_0.a.a) % vec4<u32>(32u))));
}

