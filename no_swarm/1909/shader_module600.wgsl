struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec4<u32>,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: f32,
    d: vec3<i32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
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

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_3, arg_3: Struct_3) -> vec3<i32> {
    let var_0 = any(!vec2<bool>(select(arg_1.a.x, arg_1.a.x, arg_1.a.x) & select(true, false, arg_1.a.x), arg_1.a.x));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(arg_3.a.zy, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_3.a.xz) * vec2<f32>(arg_2.a.x, arg_2.a.x)), vec2<f32>(arg_2.a.x, 1206f), !(!arg_1.a.xz))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_2.a.x, 1512f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.a.x, 679f))), arg_2.a.xy, true))));
    var var_2 = _wgslsmith_f_op_f32(arg_3.a.x * arg_3.a.x);
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-561f)))));
    var var_3 = arg_2;
    return arg_0.zxw;
}

fn func_2(arg_0: i32) -> Struct_1 {
    let var_0 = vec3<u32>(u_input.c & ~u_input.b.x, 17882u, ~11400u);
    let var_1 = _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(-_wgslsmith_mod_vec3_i32(func_3(vec4<i32>(1i, arg_0, arg_0, 1i), Struct_1(vec4<bool>(true, true, true, true)), Struct_3(vec3<f32>(-1000f, 886f, -121f)), Struct_3(vec3<f32>(1498f, -678f, 2297f))), -vec3<i32>(arg_0, 15833i, arg_0)), select(max(_wgslsmith_div_vec3_i32(vec3<i32>(0i, arg_0, 18438i), vec3<i32>(arg_0, 37018i, arg_0)), vec3<i32>(0i, arg_0, 13523i)), select(min(vec3<i32>(arg_0, 5212i, -172i), vec3<i32>(arg_0, arg_0, arg_0)), ~vec3<i32>(arg_0, arg_0, arg_0), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true)), vec3<bool>(false, all(vec3<bool>(false, false, true)), true)), ~(~vec3<i32>(1i, arg_0, 2147483647i))), select(vec3<i32>(1i, -1i, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, 22064i, 1i, 42733i) & vec4<i32>(arg_0, -59722i, arg_0, arg_0), -vec4<i32>(-2147483647i, 0i, -6936i, arg_0))), max(-vec3<i32>(arg_0, -14251i, 1i), countOneBits(vec3<i32>(1i, arg_0, 11778i))) << (select(~vec3<u32>(var_0.x, 4294967295u, 0u), var_0, true) % vec3<u32>(32u)), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false))), vec3<bool>(arg_0 < arg_0, true, all(vec2<bool>(false, false))), true)));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1245f, -1000f, 1000f, 1507f) - vec4<f32>(-473f, 311f, -295f, -1270f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1744f, -115f, 546f, 304f))), vec4<f32>(-414f, _wgslsmith_f_op_f32(f32(-1f) * -338f), _wgslsmith_div_f32(-992f, -1000f), _wgslsmith_div_f32(518f, -1514f)), !any(vec4<bool>(false, false, false, true))))));
    let var_3 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-var_2.xwy)))));
    var var_4 = var_3;
    return Struct_1(vec4<bool>(all(vec4<bool>(any(vec4<bool>(true, false, true, false)), all(vec2<bool>(true, false)), any(vec4<bool>(false, false, true, true)), -9796i > arg_0)), !select(false, true, true) != (_wgslsmith_add_i32(33945i, var_1) <= (var_1 ^ -21657i)), any(vec4<bool>(any(vec3<bool>(false, true, false)), select(true, true, false), true, u_input.a == u_input.c)), true));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_3, arg_2: Struct_2) -> Struct_3 {
    let var_0 = arg_1;
    let var_1 = true;
    var var_2 = !vec4<bool>(0i >= countOneBits(reverseBits(arg_2.b)), !arg_2.a.a.x, true, any(arg_2.a.a.zxw));
    let var_3 = Struct_3(arg_0);
    var var_4 = ~arg_2.c.x;
    return var_0;
}

fn func_5(arg_0: Struct_3) -> bool {
    var var_0 = Struct_2(Struct_1(vec4<bool>(true, true, true, true)), ~_wgslsmith_sub_i32(abs(_wgslsmith_dot_vec3_i32(vec3<i32>(27419i, -25723i, 14389i), vec3<i32>(0i, -680i, 15341i))), -func_3(vec4<i32>(-2147483647i, -2147483647i, -22187i, -76580i), Struct_1(vec4<bool>(false, false, false, true)), Struct_3(vec3<f32>(-757f, 755f, 1000f)), arg_0).x), u_input.b);
    let var_1 = func_2(var_0.b);
    var_0 = Struct_2(Struct_1(!(!(!var_0.a.a))), 1i, _wgslsmith_add_vec4_u32(vec4<u32>(firstTrailingBit(abs(67173u)), _wgslsmith_dot_vec2_u32(abs(vec2<u32>(4294967295u, 22576u)), var_0.c.yy), ~(~var_0.c.x), 34388u), vec4<u32>(u_input.b.x, 1u, 33954u, u_input.c)));
    var var_2 = var_0.a;
    let var_3 = vec4<bool>(true, var_1.a.x, _wgslsmith_div_u32(~abs(62473u), ~117853u) >= (~reverseBits(u_input.a) >> ((var_0.c.x >> (u_input.b.x % 32u)) % 32u)), false);
    return ~0u <= ~min(_wgslsmith_sub_u32(u_input.a, 4294967295u), 0u);
}

fn func_1() -> bool {
    let var_0 = vec4<u32>(u_input.b.x, 1u, _wgslsmith_mod_u32(firstTrailingBit(firstTrailingBit(max(0u, 15089u))), select(select(0u, 54430u, false) >> (~u_input.c % 32u), reverseBits(~0u), true)), ~0u);
    var var_1 = true;
    var_1 = func_5(func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-582f, 356f, 428f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(574f, 2209f, 2038f))) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(932f, -1196f, 590f))))), Struct_3(vec3<f32>(-705f, _wgslsmith_f_op_f32(max(-416f, -529f)), _wgslsmith_f_op_f32(-1403f - -1821f))), Struct_2(func_2(-23393i), firstLeadingBit(firstLeadingBit(0i)), (u_input.b | vec4<u32>(3329u, u_input.c, u_input.a, 0u)) & vec4<u32>(1u, u_input.c, 9621u, 0u))));
    var var_2 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1514f)), -308f, -207f));
    let var_3 = func_2(countOneBits(-(~abs(-14158i))));
    return false;
}

fn func_6(arg_0: bool, arg_1: vec2<bool>, arg_2: i32, arg_3: f32) -> vec4<bool> {
    let var_0 = Struct_2(func_2(~(~(-20073i))), -arg_2, firstLeadingBit(u_input.b));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-684f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3) * arg_3)));
    let var_2 = reverseBits(var_0.c.x);
    var var_3 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2025f), 1f, arg_3));
    var var_4 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(var_1)), 1965f, _wgslsmith_f_op_f32(f32(-1f) * -782f), func_4(var_3.a, Struct_3(vec3<f32>(-469f, arg_3, var_3.a.x)), Struct_2(var_0.a, var_0.b, var_0.c)).a.x) - vec4<f32>(var_1, _wgslsmith_f_op_f32(trunc(1191f)), 659f, _wgslsmith_f_op_f32(-var_1))))));
    return !var_0.a.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(select(vec3<bool>(!all(vec4<bool>(false, false, false, false)), !all(vec2<bool>(false, false)), true), vec3<bool>(true, select(true, true, true), u_input.a <= 1u), vec3<bool>(-617f > _wgslsmith_f_op_f32(sign(-771f)), any(vec2<bool>(false, true)) & true, true)));
    let var_1 = Struct_1(func_6(select(var_0, func_1(), 2707i != (1i >> (u_input.c % 32u))), vec2<bool>(false, var_0), i32(-1i) * -(i32(-1i) * -1i), -612f));
    let var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-634f, 1176f, -1000f), vec3<f32>(185f, -1579f, -1000f))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1785f, -331f, -669f), vec3<f32>(827f, -688f, 770f))))));
    var var_3 = Struct_1(vec4<bool>(any(!var_1.a.wx), all(select(vec3<bool>(var_1.a.x, true, var_1.a.x), select(var_1.a.xyy, vec3<bool>(var_1.a.x, false, var_1.a.x), vec3<bool>(var_0, true, false)), vec3<bool>(var_0, true, false))), all(func_6(true, !var_1.a.yy, 1i, 1274f)), true));
    var var_4 = select(~min(_wgslsmith_add_i32(firstLeadingBit(-25617i), min(1i, 29942i)), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), _wgslsmith_sub_vec3_i32(vec3<i32>(-17828i, 30365i, -6083i), vec3<i32>(1i, 0i, 1i)))), 23078i, !all(!func_2(-1i).a));
    let var_5 = func_6(var_1.a.x, vec2<bool>(var_1.a.x, false), _wgslsmith_dot_vec2_i32(select(-vec2<i32>(4074i, 1i), firstLeadingBit(~vec2<i32>(-2147483647i, 11305i)), false), -vec2<i32>(i32(-1i) * -41787i, _wgslsmith_add_i32(-1i, -40931i))), _wgslsmith_f_op_f32(-var_2.a.x));
    var var_6 = firstLeadingBit(select(~vec3<i32>(1i, 1i, 1i), select(~(vec3<i32>(6694i, -2147483647i, -1i) << (vec3<u32>(20117u, u_input.b.x, u_input.b.x) % vec3<u32>(32u))), -(vec3<i32>(0i, -2147483647i, 2147483647i) >> (u_input.b.xzw % vec3<u32>(32u))), !func_2(-2147483647i).a.yyw), var_5.x));
    var_6 = firstLeadingBit(_wgslsmith_mod_vec3_i32(~(~vec3<i32>(1i, 17177i, 2147483647i)), vec3<i32>(_wgslsmith_mod_i32(-2147483647i, var_6.x), var_6.x & -1i, 2147483647i ^ var_6.x))) & countOneBits(-reverseBits(vec3<i32>(var_6.x, var_6.x, var_6.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(1i, -_wgslsmith_dot_vec2_i32(vec2<i32>(var_6.x, var_6.x), countOneBits(vec2<i32>(0i, var_6.x)))), abs(~vec3<i32>(-var_6.x, var_6.x, select(var_6.x, 33511i, var_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.a.x), _wgslsmith_f_op_f32(-var_2.a.x)) + -681f)), min(select(_wgslsmith_mod_vec3_i32(max(vec3<i32>(var_6.x, var_6.x, 0i), vec3<i32>(var_6.x, var_6.x, var_6.x)), vec3<i32>(var_6.x, 68355i, 25378i)), _wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(0i, 2147483647i, 1i), vec3<i32>(-1i, -2147483647i, -7214i), vec3<i32>(var_6.x, var_6.x, var_6.x)), vec3<i32>(var_6.x, 2147483647i, -14969i), abs(vec3<i32>(-580i, var_6.x, 7158i))), true), ~(_wgslsmith_mult_vec3_i32(vec3<i32>(1i, 9877i, 39590i), vec3<i32>(var_6.x, 1i, 28004i)) & (vec3<i32>(-17580i, var_6.x, -16045i) ^ vec3<i32>(0i, var_6.x, 0i)))), vec4<u32>(u_input.c, _wgslsmith_add_u32(u_input.c ^ firstLeadingBit(u_input.a), u_input.a), u_input.a, _wgslsmith_div_u32(u_input.a, max(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(802u, u_input.a), u_input.b.zw)))));
}

