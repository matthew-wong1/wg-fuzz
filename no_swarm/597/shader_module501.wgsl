struct Struct_1 {
    a: vec2<bool>,
    b: vec4<bool>,
    c: i32,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: u32,
    b: vec4<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: i32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_5 {
    a: bool,
    b: i32,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
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

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_4) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1163f + -632f))))), 1051f));
    var var_1 = arg_1.d.b;
    var_1 = !select(arg_1.a.b, arg_1.e.b, arg_1.e.b);
    let var_2 = _wgslsmith_sub_i32(-_wgslsmith_add_i32(~(-2147483647i), arg_1.a.c), ~arg_0.x);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -491f), _wgslsmith_f_op_f32(1170f * var_0.x))));
    return Struct_3(~reverseBits(~(~0u)), arg_1.e.b);
}

fn func_3(arg_0: Struct_5, arg_1: vec4<i32>, arg_2: Struct_5) -> vec4<bool> {
    var var_0 = ~vec2<u32>(54291u & _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, 26331u, u_input.a, 28204u), vec4<u32>(0u, u_input.a, 4294967295u, u_input.a) & vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.a)), ~u_input.b & 1u);
    let var_1 = !arg_0.a;
    var var_2 = func_1(min(abs(-vec3<i32>(-2147483647i, 1i, 61781i)), arg_1.ywx), Struct_4(Struct_1(!select(vec2<bool>(arg_0.a, arg_0.a), vec2<bool>(arg_0.a, true), false), vec4<bool>(arg_2.a, true, true, 2147483647i != arg_0.b), 34001i), reverseBits(1u), ~_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_2.b, arg_2.b, 0i), arg_1.zwz), _wgslsmith_mod_i32(arg_2.b, -1i)), Struct_1(select(select(vec2<bool>(true, true), vec2<bool>(arg_2.a, true), arg_2.a), !vec2<bool>(false, arg_0.a), vec2<bool>(true, true)), !select(vec4<bool>(arg_2.a, true, arg_2.a, false), vec4<bool>(arg_0.a, false, true, arg_2.a), vec4<bool>(true, arg_0.a, arg_0.a, false)), ~(-1i)), Struct_1(vec2<bool>(true && arg_0.a, arg_0.a), select(!vec4<bool>(var_1, arg_2.a, arg_0.a, arg_2.a), vec4<bool>(arg_0.a, var_1, false, true), true), arg_2.b))).b;
    let var_3 = Struct_4(Struct_1(select(func_1(arg_1.xzx, Struct_4(Struct_1(var_2.zy, vec4<bool>(var_2.x, false, true, false), 31219i), 0u, -66446i, Struct_1(vec2<bool>(var_1, var_1), vec4<bool>(false, var_1, true, false), arg_1.x), Struct_1(var_2.zz, vec4<bool>(arg_0.a, var_2.x, false, true), 20661i))).b.yy, var_2.yx, true), vec4<bool>(any(select(vec3<bool>(false, false, false), vec3<bool>(arg_2.a, false, false), false)), true, var_2.x, all(vec3<bool>(true, true, true))), (_wgslsmith_dot_vec3_i32(arg_1.xyx, vec3<i32>(25635i, arg_0.b, -1i)) | ~(-14533i)) | arg_1.x), ~_wgslsmith_add_u32(53623u, _wgslsmith_clamp_u32(~37638u, 1u, _wgslsmith_div_u32(57682u, 4294967295u))), arg_2.b, Struct_1(func_1(~arg_1.ywy, Struct_4(Struct_1(var_2.yw, vec4<bool>(arg_2.a, var_1, true, var_2.x), -2147483647i), _wgslsmith_sub_u32(0u, 0u), arg_0.b >> (u_input.b % 32u), Struct_1(var_2.xx, vec4<bool>(false, var_1, var_1, arg_0.a), arg_0.b), Struct_1(vec2<bool>(var_2.x, false), vec4<bool>(false, arg_0.a, true, false), arg_2.b))).b.zz, !(!vec4<bool>(arg_2.a, true, true, false)), -_wgslsmith_add_i32(~arg_2.b, 0i)), Struct_1(func_1(~vec3<i32>(0i, arg_1.x, -2147483647i), Struct_4(Struct_1(vec2<bool>(true, true), vec4<bool>(var_2.x, arg_2.a, true, var_2.x), arg_0.b), ~9967u, 2147483647i, Struct_1(var_2.yy, vec4<bool>(var_2.x, true, true, true), arg_2.b), Struct_1(var_2.xz, vec4<bool>(true, arg_2.a, true, arg_2.a), arg_2.b))).b.ww, !vec4<bool>(0u != u_input.a, true, false, all(vec2<bool>(var_2.x, false))), firstTrailingBit(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(arg_1.xx, arg_1.zx), -29348i))));
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(810f, -285f, 544f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-594f, arg_0.c, -813f), vec3<f32>(arg_0.c, arg_2.c, 870f), arg_0.a)) * vec3<f32>(-1082f, 1397f, 1569f))))));
    return !var_3.e.b;
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_3) -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(trunc(174f)), _wgslsmith_f_op_f32(1566f * -263f)), vec2<f32>(_wgslsmith_div_f32(354f, -1036f), _wgslsmith_f_op_f32(-1000f - 913f)), select(arg_1.b.zx, vec2<bool>(true, true), all(vec2<bool>(arg_1.b.x, true))))) + _wgslsmith_div_vec2_f32(vec2<f32>(850f, _wgslsmith_f_op_f32(-1471f - 857f)), vec2<f32>(1f, 1f)))));
    let var_1 = Struct_1(select(arg_1.b.yy, !func_1(-vec3<i32>(arg_0.x, 1i, -34653i), Struct_4(Struct_1(vec2<bool>(true, true), vec4<bool>(arg_1.b.x, true, arg_1.b.x, arg_1.b.x), arg_0.x), arg_1.a, -12968i, Struct_1(arg_1.b.wy, arg_1.b, 11599i), Struct_1(vec2<bool>(true, arg_1.b.x), vec4<bool>(arg_1.b.x, arg_1.b.x, false, arg_1.b.x), arg_0.x))).b.yw, all(vec2<bool>(true, arg_1.b.x))), func_3(Struct_5(all(select(arg_1.b, arg_1.b, vec4<bool>(arg_1.b.x, false, arg_1.b.x, true))), ~arg_0.x, var_0.x), ~vec4<i32>(arg_0.x, _wgslsmith_clamp_i32(arg_0.x, arg_0.x, arg_0.x), arg_0.x, arg_0.x), Struct_5(true, min(39824i, firstTrailingBit(arg_0.x)), -721f)), -(~arg_0.x));
    var var_2 = _wgslsmith_f_op_vec2_f32(min(var_0, var_0));
    var_2 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0.x, var_0.x), var_0)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, 546f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0 * vec2<f32>(-1000f, var_2.x)) + var_0)))), _wgslsmith_f_op_vec2_f32(-var_0)));
    var var_3 = arg_0.yyx << ((~(vec3<u32>(36991u, 4294967295u, 4294967295u) | ~vec3<u32>(arg_1.a, u_input.b, arg_1.a)) >> (vec3<u32>(arg_1.a, u_input.b, func_1(arg_0.xyx & vec3<i32>(var_1.c, -13836i, 6131i), Struct_4(Struct_1(arg_1.b.yw, vec4<bool>(arg_1.b.x, true, arg_1.b.x, true), var_1.c), 4294967295u, -2147483647i, var_1, var_1)).a) % vec3<u32>(32u))) % vec3<u32>(32u));
    return _wgslsmith_clamp_u32(reverseBits(1u) ^ select(_wgslsmith_dot_vec2_u32(vec2<u32>(69239u, u_input.a), select(vec2<u32>(u_input.a, 33337u), vec2<u32>(arg_1.a, arg_1.a), arg_1.b.x)), _wgslsmith_clamp_u32(reverseBits(6088u), _wgslsmith_add_u32(arg_1.a, arg_1.a), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.a, 69407u, u_input.a), vec3<u32>(27925u, u_input.b, 9532u))), true), arg_1.a, 4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~func_2(firstLeadingBit(vec4<i32>(0i, 33184i, -2147483647i, 36788i)), func_1(vec3<i32>(1i, 1i, 1i), Struct_4(Struct_1(vec2<bool>(false, true), vec4<bool>(true, true, true, false), 1i), u_input.b, 2147483647i, Struct_1(vec2<bool>(true, false), vec4<bool>(true, false, false, false), -2147483647i), Struct_1(vec2<bool>(false, true), vec4<bool>(true, true, true, true), 18607i)))));
    var var_1 = Struct_2(_wgslsmith_mult_vec3_u32(~select(vec3<u32>(16865u, var_0, 31725u) ^ vec3<u32>(1u, u_input.b, var_0), vec3<u32>(65042u, 25427u, 4098u), true), ~(firstLeadingBit(vec3<u32>(50860u, var_0, 4294967295u)) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, 4294967295u, u_input.b), vec3<u32>(u_input.a, var_0, var_0)) % vec3<u32>(32u)))));
    var_1 = Struct_2(var_1.a);
    var var_2 = vec3<bool>(select(any(!select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false))), true && !all(vec2<bool>(true, true)), true), true, all(vec2<bool>(all(vec2<bool>(true, false)), true)));
    var var_3 = 1u;
    var_1 = Struct_2(~(~(~var_1.a)));
    var_3 = _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(var_1.a.x, 45248u), select(_wgslsmith_div_u32(var_0, 0u), 1u, !var_2.x), _wgslsmith_clamp_u32(22997u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_1.a.x, 7121u), vec3<u32>(var_1.a.x, var_1.a.x, u_input.b)), var_0)), _wgslsmith_sub_vec3_u32(~(vec3<u32>(48370u, 2205u, var_0) << (var_1.a % vec3<u32>(32u))), countOneBits(vec3<u32>(u_input.b, var_1.a.x, u_input.a)))) ^ u_input.b;
    var_1 = Struct_2(max(_wgslsmith_mod_vec3_u32(~vec3<u32>(var_1.a.x, u_input.a, 4294967295u), var_1.a), max(vec3<u32>(var_0 ^ 0u, var_1.a.x & var_1.a.x, _wgslsmith_clamp_u32(4294967295u, u_input.b, var_0)), _wgslsmith_mod_vec3_u32(~vec3<u32>(0u, u_input.a, var_1.a.x), _wgslsmith_mod_vec3_u32(vec3<u32>(610u, u_input.b, var_0), vec3<u32>(55955u, 4294967295u, 2341u))))));
    let x = u_input.a;
    s_output = StorageBuffer(-min(_wgslsmith_add_i32(min(-53584i, -7959i), 1i), _wgslsmith_mult_i32(countOneBits(1i), firstLeadingBit(-12881i))), var_1.a, 0u);
}

