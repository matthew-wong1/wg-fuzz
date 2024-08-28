struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: f32,
    d: u32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: bool,
    c: vec4<i32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<i32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: Struct_1) -> vec4<i32> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.a.x - arg_2.a.x), _wgslsmith_f_op_f32(ceil(arg_2.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.c - arg_2.a.x) - _wgslsmith_f_op_f32(-arg_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1884f + -2499f))), vec4<f32>(arg_0.a.x, 595f, _wgslsmith_f_op_f32(min(-380f, _wgslsmith_f_op_f32(-arg_1))), 425f))), 1u, !(!(!all(vec3<bool>(arg_2.c, true, arg_0.b.d)))), true);
    let var_1 = -7157i;
    let var_2 = var_0;
    var var_3 = -abs(-31923i);
    let var_4 = select(vec3<bool>(select(arg_2.c | true, false, any(vec2<bool>(false, var_0.c))), any(vec4<bool>(any(vec3<bool>(var_0.d, true, true)), false, true, var_2.c != false)), arg_2.c), vec3<bool>(true, false, all(!vec3<bool>(arg_2.c, false, arg_2.c)) & true), var_2.c);
    return _wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, _wgslsmith_add_i32(abs(_wgslsmith_dot_vec2_i32(u_input.c, u_input.c)), select(var_1, var_1 >> (var_0.b % 32u), true)), abs(1i), ~(-_wgslsmith_dot_vec2_i32(vec2<i32>(var_1, u_input.c.x), u_input.c))), ~abs(-firstTrailingBit(vec4<i32>(-1i, u_input.b, var_1, var_1))));
}

fn func_2() -> Struct_3 {
    let var_0 = Struct_3(u_input.c, false, select(-_wgslsmith_mult_vec4_i32(select(vec4<i32>(14799i, u_input.c.x, u_input.b, u_input.b), vec4<i32>(u_input.c.x, -64575i, u_input.b, u_input.b), false), vec4<i32>(u_input.c.x, u_input.b, u_input.b, u_input.b) ^ vec4<i32>(u_input.b, 13856i, u_input.b, 0i)), func_3(Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(200f, 923f, 1567f)), Struct_1(vec4<f32>(-179f, 1000f, 1300f, -384f), 41993u, false, true), _wgslsmith_f_op_f32(-435f + 307f), ~u_input.a.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1258f), _wgslsmith_f_op_f32(1166f - 290f)), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(1249f, 819f, 469f, -1354f) - vec4<f32>(1326f, 1418f, -665f, -357f)), ~1u, true, true)), !vec4<bool>(any(vec4<bool>(true, true, false, false)), any(vec4<bool>(true, false, false, true)), true, all(vec2<bool>(false, true)))), Struct_2(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2204f, -157f, -443f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-667f, 1993f, -390f) * vec3<f32>(-196f, -581f, 2477f))))), Struct_1(vec4<f32>(-2163f, 1f, _wgslsmith_f_op_f32(f32(-1f) * -982f), _wgslsmith_f_op_f32(598f * -904f)), u_input.a.x, true, !any(vec2<bool>(true, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-277f)), _wgslsmith_f_op_f32(min(-441f, -685f))))), 4294967295u));
    var var_1 = -(vec2<i32>(min(countOneBits(-10321i), u_input.b), _wgslsmith_dot_vec2_i32(var_0.a, var_0.c.zw)) | -(vec2<i32>(-1i) * -var_0.a));
    var var_2 = u_input.a;
    let var_3 = abs(_wgslsmith_mult_vec2_i32(vec2<i32>(-var_0.c.x, ~(-2147483647i)), vec2<i32>(-38837i, var_1.x) & _wgslsmith_mult_vec2_i32(u_input.c, var_0.a)) >> ((u_input.a ^ abs(~vec2<u32>(16098u, 64493u))) % vec2<u32>(32u)));
    let var_4 = ~(-(~vec3<i32>(_wgslsmith_sub_i32(var_0.a.x, var_1.x), reverseBits(1i), ~(-2147483647i))));
    return var_0;
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: Struct_3) -> Struct_1 {
    var var_0 = arg_2.d.c;
    var var_1 = func_2();
    let var_2 = all(!select(select(select(vec4<bool>(arg_0, arg_0, arg_0, true), vec4<bool>(var_1.d.b.c, true, arg_0, true), arg_2.d.b.c), !vec4<bool>(true, true, false, arg_2.b), !vec4<bool>(var_1.b, arg_0, arg_0, arg_0)), select(!vec4<bool>(arg_0, false, false, true), vec4<bool>(arg_0, arg_2.b, false, var_1.d.b.c), false & arg_0), !vec4<bool>(false, false, arg_0, arg_0)));
    var var_3 = _wgslsmith_add_vec2_u32(~firstLeadingBit(u_input.a), u_input.a);
    var_1 = Struct_3(-firstTrailingBit(~arg_2.a), all(select(vec3<bool>(true || arg_2.b, false, true), !(!vec3<bool>(var_2, true, arg_0)), select(vec3<bool>(true, false, var_1.d.b.c), select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(var_2, arg_2.d.b.d, false)), vec3<bool>(false, true, var_2)))), firstLeadingBit(vec4<i32>(u_input.c.x, arg_2.c.x, -6093i, var_1.a.x)), func_2().d);
    return func_2().d.b;
}

fn func_4(arg_0: u32, arg_1: i32, arg_2: Struct_1, arg_3: u32) -> bool {
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_2.a.x, arg_2.a.x, arg_2.a.x), vec3<f32>(arg_2.a.x, arg_2.a.x, 1000f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1997f, -1119f, 2097f))))), Struct_1(arg_2.a, reverseBits(arg_2.b ^ 1u), false, true | !func_2().b), -398f, ~(~countOneBits(~arg_2.b)));
    let var_1 = -889f;
    var var_2 = var_1;
    var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1000f, arg_2.a.x)))));
    var var_3 = func_2().d.b;
    return any(!(!(!vec2<bool>(var_3.c, true))));
}

fn func_5(arg_0: bool, arg_1: Struct_2, arg_2: bool, arg_3: vec4<i32>) -> Struct_3 {
    let var_0 = -579f;
    let var_1 = func_2().d.b;
    let var_2 = Struct_1(func_2().d.b.a, 4294967295u & var_1.b, true, true);
    var var_3 = u_input.c;
    var_3 = ~max(_wgslsmith_add_vec2_i32(-func_3(Struct_2(var_2.a.xzx, var_1, -974f, 43504u), 1245f, arg_1.b).yy, vec2<i32>(arg_3.x, var_3.x) ^ _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, -10355i), vec2<i32>(0i, -19741i))), ~vec2<i32>(u_input.c.x, -var_3.x));
    return func_2();
}

fn func_6(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_3, arg_3: Struct_1) -> Struct_1 {
    var var_0 = func_5(!select(all(select(arg_0.yw, arg_0.zy, arg_2.b)), arg_3.d, arg_0.x), arg_2.d, arg_2.b, select((arg_2.c | vec4<i32>(arg_2.a.x, arg_2.a.x, 0i, arg_2.c.x)) >> (max(~vec4<u32>(arg_2.d.d, 4294967295u, 0u, 4294967295u), select(vec4<u32>(4294967295u, 5578u, arg_2.d.b.b, 4294967295u), vec4<u32>(arg_1.b, 1u, arg_1.b, 8022u), arg_2.d.b.d)) % vec4<u32>(32u)), ~func_3(func_2().d, arg_1.a.x, func_1(arg_0.x, arg_3.a.x, Struct_3(vec2<i32>(u_input.c.x, -34330i), false, arg_2.c, arg_2.d))), true));
    return func_2().d.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(vec2<bool>(!any(vec4<bool>(false, true, false, false)), true), vec2<bool>(any(vec2<bool>(true, true)), any(vec4<bool>(true, false, true, true)) & true), any(vec2<bool>(false, true)));
    var var_1 = vec2<u32>(u_input.a.x, 82009u);
    let var_2 = func_6(select(vec4<bool>(true, var_0.x, !(u_input.a.x <= var_1.x), !(!var_0.x)), !(!vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)), vec4<bool>(false, !(!var_0.x), true, var_0.x | var_0.x)), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(265f, -1950f, -993f, -1613f))), vec4<f32>(-450f, -550f, -1207f, -545f))), 23065u, all(!(!vec4<bool>(true, var_0.x, false, var_0.x))), all(select(vec2<bool>(var_0.x, var_0.x), var_0, vec2<bool>(var_0.x, var_0.x)))), func_5(func_4(41065u, u_input.b, func_1(var_0.x, _wgslsmith_f_op_f32(step(257f, -512f)), Struct_3(vec2<i32>(u_input.b, u_input.c.x), var_0.x, vec4<i32>(-32655i, -1042i, u_input.c.x, u_input.c.x), Struct_2(vec3<f32>(-561f, -805f, -2408f), Struct_1(vec4<f32>(-361f, 251f, 301f, 265f), 2484u, var_0.x, true), 962f, u_input.a.x))), ~var_1.x), func_2().d, u_input.b < -16858i, func_3(func_2().d, _wgslsmith_f_op_f32(-func_1(var_0.x, -1696f, Struct_3(u_input.c, false, vec4<i32>(u_input.b, u_input.b, 1i, -22933i), Struct_2(vec3<f32>(365f, -398f, -127f), Struct_1(vec4<f32>(-1138f, 800f, -550f, -252f), u_input.a.x, var_0.x, var_0.x), 865f, u_input.a.x))).a.x), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(739f, 2147f, -366f, 748f) + vec4<f32>(-492f, 1283f, 208f, -1472f)), min(0u, 24651u), var_0.x, var_0.x || var_0.x))), func_2().d.b);
    var_1 = u_input.a;
    var_1 = u_input.a;
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(var_2.a * vec4<f32>(var_2.a.x, -1877f, 244f, -201f)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(514f, 448f, var_2.a.x, var_2.a.x))))))) * _wgslsmith_f_op_vec4_f32(var_2.a * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_2.a) + _wgslsmith_div_vec4_f32(var_2.a, var_2.a)))));
    var var_4 = i32(-1i) * -15602i;
    var var_5 = u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(1000f, _wgslsmith_clamp_i32(u_input.b, -2147483647i, func_3(Struct_2(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_3.x, 1000f, var_3.x))), Struct_1(var_2.a, 4294967295u, false, false), var_2.a.x, min(27805u, 53094u)), _wgslsmith_f_op_f32(abs(var_2.a.x)), Struct_1(_wgslsmith_f_op_vec4_f32(var_2.a + var_2.a), 3555u, var_2.d, var_2.c)).x), countOneBits(-max(vec4<i32>(0i, 2147483647i, 2147483647i, u_input.c.x), vec4<i32>(u_input.b, u_input.b, 5768i, var_5.x))) << (vec4<u32>(17888u, ~(~47339u), ~var_2.b, ~var_1.x) % vec4<u32>(32u)), u_input.c ^ ~(vec2<i32>(0i, -37896i) >> (u_input.a % vec2<u32>(32u))));
}

