struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: f32) -> bool {
    let var_0 = Struct_2(Struct_1(vec4<bool>(all(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), false)), all(vec2<bool>(true, true)), any(vec3<bool>(true, false, true)) || (1i >= u_input.c), any(vec3<bool>(false, true, false)))), Struct_1(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), !select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), true))));
    var var_1 = var_0;
    let var_2 = 42801i;
    let var_3 = Struct_2(var_1.b, var_0.b);
    var var_4 = var_3;
    return true;
}

fn func_2(arg_0: bool, arg_1: vec4<i32>) -> bool {
    var var_0 = arg_0;
    var_0 = true;
    let var_1 = ~_wgslsmith_sub_vec4_u32(reverseBits(~vec4<u32>(u_input.b, u_input.b, 25612u, 1u)) >> (vec4<u32>(1u, 69904u, ~u_input.b, 3803u) % vec4<u32>(32u)), ~vec4<u32>(157166u, 0u, u_input.b >> (u_input.b % 32u), ~1u));
    var var_2 = Struct_1(!(!vec4<bool>(true, func_3(1000f), arg_0 | false, true)));
    let var_3 = _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 50705u, ~(~0u), 4294967295u), ~vec4<u32>(var_1.x, firstTrailingBit(_wgslsmith_mult_u32(1u, u_input.b)), 62631u, u_input.b));
    return !(!(!any(vec3<bool>(false, false, false)))) || (!(u_input.b > _wgslsmith_mult_u32(var_1.x, var_3)) | all(var_2.a.zw));
}

fn func_1(arg_0: f32, arg_1: Struct_2) -> Struct_2 {
    let var_0 = Struct_1(vec4<bool>(true, any(!arg_1.a.a.zxz) && !func_2(arg_1.b.a.x, vec4<i32>(10998i, u_input.a, u_input.a, u_input.c)), false, all(vec3<bool>(true, false, arg_1.a.a.x))));
    let var_1 = Struct_2(var_0, Struct_1(!vec4<bool>(var_0.a.x, func_3(314f), arg_1.b.a.x, 4294967295u > u_input.b)));
    let var_2 = vec2<u32>(~u_input.b, 10395u);
    var var_3 = vec4<u32>(~_wgslsmith_clamp_u32(var_2.x << (_wgslsmith_sub_u32(46474u, u_input.b) % 32u), _wgslsmith_add_u32(1u, var_2.x), u_input.b), _wgslsmith_dot_vec3_u32(~vec3<u32>(var_2.x, u_input.b, _wgslsmith_div_u32(var_2.x, 0u)), ~vec3<u32>(var_2.x, 53736u, 4294967295u)), ~(~var_2.x) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.x, abs(var_2.x)), _wgslsmith_mod_vec2_u32(max(vec2<u32>(4294967295u, 5327u), var_2), ~vec2<u32>(42419u, var_2.x))) % 32u), ~_wgslsmith_dot_vec3_u32(~(vec3<u32>(var_2.x, u_input.b, var_2.x) << (vec3<u32>(38518u, u_input.b, 61429u) % vec3<u32>(32u))), ~(~vec3<u32>(var_2.x, u_input.b, 1u))));
    var_3 = ~vec4<u32>(1u, u_input.b, var_2.x, _wgslsmith_dot_vec3_u32(var_3.zxw, _wgslsmith_mult_vec3_u32(abs(var_3.xzx), _wgslsmith_clamp_vec3_u32(var_3.wwz, var_3.wxy, vec3<u32>(30411u, 0u, var_2.x)))));
    return var_1;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: u32, arg_3: vec4<bool>) -> Struct_2 {
    let var_0 = arg_2;
    var var_1 = Struct_1(!select(select(!vec4<bool>(arg_3.x, arg_3.x, arg_0.a.a.x, arg_3.x), select(vec4<bool>(true, false, arg_1.a.a.x, true), arg_0.b.a, arg_0.b.a.x), false), vec4<bool>(20483i == u_input.a, 0u >= var_0, func_2(false, vec4<i32>(u_input.a, u_input.a, u_input.a, 0i)), true), firstTrailingBit(0u) >= 66831u));
    return Struct_2(Struct_1(func_1(1000f, Struct_2(func_1(-873f, arg_1).a, Struct_1(arg_3))).a.a), Struct_1(arg_1.b.a));
}

fn func_5(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: vec2<i32>, arg_3: vec4<i32>) -> bool {
    let var_0 = vec4<u32>(~(~0u), 4294967295u, abs(abs(countOneBits(u_input.b & 33609u))), u_input.b);
    let var_1 = _wgslsmith_dot_vec4_i32(vec4<i32>(-10646i, -10072i, 1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-arg_3.x, -1i, reverseBits(arg_3.x), _wgslsmith_mult_i32(19977i, 27847i)), _wgslsmith_mod_vec4_i32(-arg_3, arg_3))), vec4<i32>(~(_wgslsmith_sub_i32(arg_3.x, arg_3.x) >> (var_0.x % 32u)), arg_2.x, arg_3.x, ~_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 51455i), vec2<i32>(1i, 1i))));
    return true && arg_0.a.a.x;
}

fn func_6(arg_0: bool, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1848f, arg_2, 168f, arg_2), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1026f, arg_2, 880f, arg_2))), arg_1.a)))), vec4<f32>(-185f, _wgslsmith_f_op_f32(arg_2 + _wgslsmith_f_op_f32(sign(arg_2))), -637f, _wgslsmith_div_f32(arg_2, _wgslsmith_f_op_f32(sign(arg_2))))) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(1213f, arg_2, 1644f, arg_2), vec4<f32>(-1285f, -878f, arg_2, arg_2)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, arg_2, 279f, arg_2))))));
    var var_1 = u_input.b;
    let var_2 = ~vec3<i32>(32088i, -29245i, ~_wgslsmith_mod_i32(~u_input.c, u_input.c));
    let var_3 = ~vec3<i32>(u_input.c, min(~var_2.x, ~2147483647i), _wgslsmith_add_i32((var_2.x | var_2.x) | ~var_2.x, -21222i));
    let var_4 = ~4294967295u;
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = max(vec2<u32>(~_wgslsmith_div_u32(u_input.b ^ u_input.b, 4294967295u), 1u), select(countOneBits(_wgslsmith_add_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(41999u, 4294967295u), vec2<u32>(0u, 11822u)), ~vec2<u32>(u_input.b, u_input.b))), ~_wgslsmith_clamp_vec2_u32(~vec2<u32>(20158u, 0u), vec2<u32>(u_input.b, u_input.b), _wgslsmith_add_vec2_u32(vec2<u32>(1u, u_input.b), vec2<u32>(u_input.b, 1u))), !vec2<bool>(true, any(vec3<bool>(false, true, true)))));
    var var_1 = Struct_2(Struct_1(vec4<bool>(true, all(vec4<bool>(true, true, true, true)), all(vec3<bool>(true, true, false)), u_input.a != (-12225i << (u_input.b % 32u)))), func_6(func_5(func_4(func_1(1591f, Struct_2(Struct_1(vec4<bool>(false, true, false, false)), Struct_1(vec4<bool>(false, true, true, false)))), Struct_2(Struct_1(vec4<bool>(false, false, true, true)), Struct_1(vec4<bool>(false, true, false, true))), ~var_0.x, vec4<bool>(false, false, true, true)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -670f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(512f, 1000f) + vec2<f32>(340f, -304f))), select(select(vec2<i32>(u_input.c, 0i), vec2<i32>(u_input.a, u_input.a), true), firstTrailingBit(vec2<i32>(u_input.a, u_input.a)), func_2(true, vec4<i32>(u_input.c, u_input.a, 14028i, u_input.a))), abs(_wgslsmith_mult_vec4_i32(vec4<i32>(1i, -4193i, u_input.a, -2147483647i), vec4<i32>(u_input.a, u_input.c, u_input.a, u_input.c)))), Struct_1(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(548f, -1000f, func_5(Struct_2(Struct_1(vec4<bool>(true, false, true, false)), Struct_1(vec4<bool>(false, true, true, true))), vec2<f32>(216f, -1268f), vec2<i32>(1i, 1i), vec4<i32>(u_input.a, u_input.c, 0i, u_input.a)))), 666f)), func_4(Struct_2(func_4(Struct_2(Struct_1(vec4<bool>(true, true, true, false)), Struct_1(vec4<bool>(true, false, true, true))), Struct_2(Struct_1(vec4<bool>(false, false, false, false)), Struct_1(vec4<bool>(true, false, false, true))), 62910u, vec4<bool>(true, true, true, true)).a, Struct_1(vec4<bool>(true, false, false, false))), func_4(func_4(Struct_2(Struct_1(vec4<bool>(false, true, true, true)), Struct_1(vec4<bool>(false, true, true, false))), Struct_2(Struct_1(vec4<bool>(false, false, true, true)), Struct_1(vec4<bool>(true, true, false, true))), var_0.x, vec4<bool>(false, false, false, true)), Struct_2(Struct_1(vec4<bool>(true, true, false, false)), Struct_1(vec4<bool>(true, true, true, false))), var_0.x, select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true))), 3504u, select(func_4(Struct_2(Struct_1(vec4<bool>(false, true, true, false)), Struct_1(vec4<bool>(false, true, false, true))), Struct_2(Struct_1(vec4<bool>(false, true, false, false)), Struct_1(vec4<bool>(false, false, true, false))), var_0.x, vec4<bool>(true, true, true, false)).a.a, vec4<bool>(true, false, true, false), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true)))).b));
    let var_2 = vec3<u32>(reverseBits(27958u), ~(~19762u), 0u);
    var var_3 = ~vec4<i32>(u_input.a, countOneBits(-1i), 0i, _wgslsmith_add_i32(_wgslsmith_sub_i32(10646i, countOneBits(u_input.a)), u_input.a));
    var_3 = abs(select(firstTrailingBit(reverseBits(vec4<i32>(2147483647i, var_3.x, u_input.c, 28169i))) << (~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, 1u, 4294967295u, 55279u), vec4<u32>(109162u, 4294967295u, var_0.x, 4294967295u)) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_i32(abs(vec4<i32>(var_3.x, 19478i, var_3.x, u_input.c)), countOneBits(_wgslsmith_sub_vec4_i32(vec4<i32>(var_3.x, 2147483647i, 1i, 1i), vec4<i32>(1i, 29710i, -89492i, -2147483647i))), select(vec4<i32>(u_input.a, u_input.c, u_input.a, u_input.c) & vec4<i32>(-2147483647i, u_input.a, -4090i, -208i), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, var_3.x, 2147483647i, u_input.c), vec4<i32>(1i, 0i, 28320i, var_3.x)), func_5(Struct_2(var_1.a, Struct_1(vec4<bool>(var_1.a.a.x, var_1.a.a.x, var_1.b.a.x, var_1.b.a.x))), vec2<f32>(1263f, -595f), var_3.wx, vec4<i32>(u_input.c, var_3.x, u_input.c, u_input.c)))), var_1.a.a));
    var var_4 = abs(-4497i);
    var_1 = func_4(Struct_2(func_4(Struct_2(func_4(Struct_2(Struct_1(var_1.b.a), Struct_1(vec4<bool>(true, false, var_1.b.a.x, true))), Struct_2(Struct_1(vec4<bool>(var_1.a.a.x, var_1.b.a.x, var_1.b.a.x, var_1.a.a.x)), Struct_1(vec4<bool>(false, false, var_1.b.a.x, true))), var_0.x, vec4<bool>(var_1.b.a.x, var_1.a.a.x, var_1.b.a.x, true)).b, Struct_1(var_1.a.a)), func_4(func_4(Struct_2(Struct_1(vec4<bool>(var_1.b.a.x, true, var_1.b.a.x, var_1.a.a.x)), var_1.a), Struct_2(var_1.a, var_1.b), var_0.x, vec4<bool>(var_1.a.a.x, false, false, var_1.a.a.x)), func_4(Struct_2(Struct_1(var_1.a.a), var_1.a), Struct_2(Struct_1(var_1.b.a), Struct_1(var_1.a.a)), 1u, var_1.b.a), reverseBits(var_2.x), var_1.b.a), firstLeadingBit(u_input.b), func_6(var_1.b.a.x, Struct_1(var_1.b.a), _wgslsmith_f_op_f32(select(602f, 934f, var_1.b.a.x)), Struct_1(vec4<bool>(true, false, true, false))).a).b, var_1.b), func_4(func_1(-248f, func_1(-742f, func_1(-1000f, Struct_2(Struct_1(vec4<bool>(false, false, false, var_1.b.a.x)), var_1.b)))), Struct_2(Struct_1(var_1.b.a), Struct_1(var_1.a.a)), u_input.b, var_1.a.a), 13073u, func_6(!(_wgslsmith_f_op_f32(ceil(-235f)) == _wgslsmith_f_op_f32(min(-1452f, 1308f))), var_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-965f - 276f)))), Struct_1(var_1.b.a)).a);
    var_0 = select(~var_2.zy, ~_wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(var_2.xx, vec2<u32>(var_0.x, u_input.b)), min(var_2.zz, vec2<u32>(u_input.b, u_input.b)), vec2<u32>(1u, var_0.x)) & var_2.zx, select(func_6(var_1.a.a.x, var_1.a, _wgslsmith_f_op_f32(1000f * -108f), func_1(-614f, func_4(Struct_2(var_1.b, var_1.b), Struct_2(var_1.b, Struct_1(var_1.a.a)), u_input.b, var_1.a.a)).b).a.wz, vec2<bool>(func_6(all(var_1.b.a), Struct_1(vec4<bool>(true, var_1.a.a.x, var_1.a.a.x, var_1.b.a.x)), -1199f, var_1.a).a.x, false), var_1.b.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(~var_3.x >> (0u % 32u));
}

