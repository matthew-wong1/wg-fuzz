struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec3<bool>,
    c: i32,
    d: bool,
}

struct Struct_5 {
    a: vec3<bool>,
    b: bool,
    c: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 5> = array<Struct_5, 5>(Struct_5(vec3<bool>(true, true, true), true, Struct_3(Struct_1(0u, vec2<u32>(45891u, 19225u), 2147483647i, 469f))), Struct_5(vec3<bool>(false, false, false), true, Struct_3(Struct_1(14273u, vec2<u32>(58873u, 26372u), 0i, 1705f))), Struct_5(vec3<bool>(true, true, true), false, Struct_3(Struct_1(0u, vec2<u32>(40618u, 4294967295u), -1i, 625f))), Struct_5(vec3<bool>(false, true, false), false, Struct_3(Struct_1(7748u, vec2<u32>(4294967295u, 1u), -10781i, 534f))), Struct_5(vec3<bool>(false, false, false), false, Struct_3(Struct_1(0u, vec2<u32>(4294967295u, 9520u), -21150i, -1123f))));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool) -> vec4<bool> {
    global0 = array<Struct_5, 5>();
    let var_0 = u_input.c;
    let var_1 = Struct_2(vec3<u32>(var_0.x, reverseBits(1u), ~(~1u)) ^ select(var_0, min(u_input.c, vec3<u32>(var_0.x, var_0.x, var_0.x)), !select(vec3<bool>(arg_0, false, arg_0), vec3<bool>(true, arg_0, true), true)));
    var var_2 = all(!select(!(!vec4<bool>(arg_0, arg_0, arg_0, arg_0)), vec4<bool>(true, any(vec3<bool>(arg_0, true, false)), arg_0, true), !vec4<bool>(false, true, arg_0, arg_0)));
    var var_3 = vec2<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(945f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -397f) + _wgslsmith_f_op_f32(floor(-1096f))))));
    return !vec4<bool>(any(select(vec3<bool>(false, true, arg_0), select(vec3<bool>(false, arg_0, arg_0), vec3<bool>(true, arg_0, true), arg_0), select(vec3<bool>(false, false, arg_0), vec3<bool>(arg_0, false, arg_0), vec3<bool>(false, arg_0, true)))), true, (any(vec3<bool>(true, false, arg_0)) | all(vec4<bool>(true, arg_0, false, false))) || arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x)) <= _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1251f), _wgslsmith_f_op_f32(var_3.x * var_3.x))));
}

fn func_2(arg_0: vec4<u32>, arg_1: i32) -> f32 {
    let var_0 = !func_3(true);
    global0 = array<Struct_5, 5>();
    var var_1 = select(!var_0, select(vec4<bool>(select(var_0.x, true, var_0.x) || any(var_0), var_0.x, true, u_input.a >= -2147483647i), var_0, select(vec4<bool>(var_0.x, !var_0.x, !var_0.x, arg_0.x >= 33261u), var_0, var_0.x && false)), var_0);
    var var_2 = all(select(vec3<bool>(!all(var_0.zxx), true, true), vec3<bool>(select(var_0.x, var_1.x | false, all(vec2<bool>(var_0.x, false))), !var_0.x, !var_0.x), true));
    var var_3 = vec3<u32>(arg_0.x, 1608u, arg_0.x) & (_wgslsmith_div_vec3_u32(~vec3<u32>(u_input.b, arg_0.x, 37362u) >> (min(vec3<u32>(55676u, arg_0.x, arg_0.x), arg_0.xxy) % vec3<u32>(32u)), arg_0.yxy) | select(vec3<u32>(1u, _wgslsmith_mod_u32(9027u, arg_0.x), ~5168u), select(vec3<u32>(u_input.c.x, 28824u, 71908u), reverseBits(vec3<u32>(u_input.b, 29540u, 19931u)), arg_0.x == 1u), select(vec3<bool>(true, var_1.x, var_0.x), vec3<bool>(var_1.x, false, false), vec3<bool>(var_0.x, var_1.x, false))));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1808f, 649f, var_0.x)) - 1293f), _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-1315f + 408f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-584f))));
}

fn func_4(arg_0: f32, arg_1: vec4<f32>, arg_2: f32) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_f32(546f * _wgslsmith_div_f32(1206f, arg_0));
    let var_1 = vec4<bool>(true, !func_3(true).x || true, true, true);
    var var_2 = Struct_4(vec3<u32>(max(u_input.c.x, u_input.b), u_input.b >> (u_input.c.x % 32u), ~_wgslsmith_mod_u32(29287u, u_input.b) << ((u_input.c.x >> (u_input.b % 32u)) % 32u)), vec3<bool>(!any(vec2<bool>(true, var_1.x)) == !all(vec3<bool>(var_1.x, true, var_1.x)), var_1.x, all(vec2<bool>(true, true))), ~13960i, true);
    let var_3 = 0u;
    var_2 = Struct_4(u_input.c, var_2.b, -((var_2.c << (var_2.a.x % 32u)) ^ min(6703i, 29278i)) & max(var_2.c, -(~u_input.a)), all(func_3(var_1.x)));
    return Struct_4(u_input.c, var_2.b, abs((_wgslsmith_add_i32(-1i, var_2.c) >> (~39850u % 32u)) | ~20186i), false == var_2.d);
}

fn func_1(arg_0: u32) -> bool {
    let var_0 = func_4(-219f, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(-1198f, -981f, true)), _wgslsmith_f_op_f32(1000f - -1225f), _wgslsmith_f_op_f32(floor(415f)), _wgslsmith_f_op_f32(step(166f, 795f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(551f, 1590f, 1153f, -336f) * vec4<f32>(809f, -1562f, 1506f, 770f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, _wgslsmith_f_op_f32(func_2(vec4<u32>(1u, arg_0, 3109u, 50103u), u_input.a)), _wgslsmith_div_f32(1299f, -1021f), _wgslsmith_f_op_f32(f32(-1f) * -945f)) - vec4<f32>(315f, _wgslsmith_f_op_f32(310f + 148f), _wgslsmith_f_op_f32(f32(-1f) * -1329f), _wgslsmith_f_op_f32(trunc(-564f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_2(vec4<u32>(4294967295u, u_input.b, 4294967295u, arg_0) >> (vec4<u32>(u_input.c.x, u_input.b, u_input.c.x, 9410u) % vec4<u32>(32u)), min(1i, 53333i))))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(-1354f, 584f))));
    global0 = array<Struct_5, 5>();
    var var_1 = Struct_3(Struct_1(~countOneBits(arg_0), vec2<u32>(var_0.a.x, ~(~var_0.a.x)), -33454i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-762f, -1649f, var_0.b.x)) - _wgslsmith_f_op_f32(f32(-1f) * -442f)) - 901f)));
    global0 = array<Struct_5, 5>();
    return any(!var_0.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(!func_1(reverseBits(u_input.c.x)), all(!select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true)), vec4<bool>(false, false, false, true), all(vec3<bool>(true, false, false)))), true, func_3(true).x || all(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), true))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-786f)))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2421f)))));
    let var_2 = ~0u;
    let var_3 = Struct_2(select(firstLeadingBit(select(u_input.c, _wgslsmith_mult_vec3_u32(u_input.c, u_input.c), true)), vec3<u32>(var_2, u_input.c.x, firstTrailingBit(1u)), any(func_4(-951f, _wgslsmith_f_op_vec4_f32(vec4<f32>(232f, 626f, 1080f, -499f) * vec4<f32>(298f, 223f, -1976f, -1217f)), _wgslsmith_f_op_f32(1065f * -669f)).b)));
    var_0 = func_3(any(func_3(true)));
    var var_4 = Struct_2(max(var_3.a, _wgslsmith_mod_vec3_u32(~var_3.a, var_3.a)) | vec3<u32>(func_4(_wgslsmith_f_op_f32(func_2(vec4<u32>(1u, var_2, 1u, 98007u), u_input.a)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-552f, 771f, 669f, 1283f), vec4<f32>(1010f, -438f, -949f, -1313f))), 548f).a.x, 1u, ~abs(var_3.a.x)));
    var var_5 = ~abs(vec3<i32>(~(~u_input.a), u_input.a, countOneBits(i32(-1i) * -9853i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(2147483647i, firstLeadingBit(0i)), _wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(select(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, var_5.x, 2147483647i, 6205i), vec4<i32>(1i, -184i, 1i, 2147483647i)), vec4<i32>(u_input.a, -2147483647i, u_input.a, 2147483647i), true), ~vec4<i32>(var_5.x, 14937i, u_input.a, -1i)), -vec4<i32>(var_5.x, ~u_input.a, -9548i, 2147483647i)), i32(-1i) * -_wgslsmith_mod_i32(~var_5.x, -28274i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1736f, 381f, 2158f) * vec3<f32>(-1084f, 1527f, -350f)))) + vec3<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-403f - 1523f)), 2137f)));
}

