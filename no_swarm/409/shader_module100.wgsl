struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_2,
    c: Struct_2,
    d: u32,
    e: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_2,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: vec3<i32>;

var<private> global2: Struct_5;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_2) -> vec4<i32> {
    let var_0 = _wgslsmith_mult_vec3_u32(vec3<u32>(87586u, countOneBits(41665u), ~1u), u_input.b.yyw & (vec3<u32>(1u, 23865u, ~4294967295u) << (reverseBits(u_input.b.wwz) % vec3<u32>(32u))));
    var var_1 = vec3<f32>(428f, _wgslsmith_f_op_f32(f32(-1f) * -467f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(-arg_1.a.a.x))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-2387f, arg_0.x)) + arg_1.a.a.x)), -1150f));
    var var_2 = _wgslsmith_div_i32(global1.x, max(firstLeadingBit(firstLeadingBit(-1i)), global0.x)) | select(~global0.x, global1.x, _wgslsmith_f_op_f32(floor(arg_0.x)) <= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_1.a.a.x * 1169f))));
    let var_3 = true;
    let var_4 = Struct_3(max(u_input.b, ~vec4<u32>(min(u_input.b.x, 4294967295u), ~var_0.x, abs(var_0.x), _wgslsmith_mod_u32(u_input.a, var_0.x))), arg_1, arg_1, ~max(firstTrailingBit(global2.a), _wgslsmith_add_u32(global2.a, 190u)) & ~(~u_input.a), false);
    return -((_wgslsmith_mod_vec4_i32(~vec4<i32>(global0.x, -292i, 6390i, -29994i), abs(vec4<i32>(global0.x, -4936i, global1.x, global0.x))) >> (~vec4<u32>(1u, 0u, u_input.a, global2.a) % vec4<u32>(32u))) & -(~select(vec4<i32>(10058i, global1.x, global1.x, global0.x), vec4<i32>(global0.x, global1.x, 2147483647i, global1.x), vec4<bool>(false, true, var_3, var_3))));
}

fn func_4(arg_0: vec4<i32>, arg_1: f32) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(arg_1)), _wgslsmith_f_op_f32(-arg_1), true))), -266f)) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1), -529f, true)));
    let var_1 = _wgslsmith_mod_u32(~u_input.b.x, global2.a);
    var var_2 = !(!(var_1 <= ~(1u | global2.a)));
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1060f, -1357f))))))));
    let var_4 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-277f, 2052f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-722f, -774f))))));
    return arg_0;
}

fn func_2() -> vec2<f32> {
    var var_0 = func_4(func_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(571f, 432f), vec2<f32>(1131f, -1337f)))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1301f, -203f) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(672f, 178f), vec2<f32>(-235f, -212f), vec2<bool>(true, false))))), Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-588f, 239f), vec2<f32>(-1353f, -240f)))))), -441f);
    let var_1 = Struct_4(Struct_1(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-287f, -502f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-2560f, -404f) + vec2<f32>(-1322f, 1390f)), true))))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(429f, 419f, _wgslsmith_f_op_f32(1000f - 2330f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1956f, 2158f, -762f)), any(select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true))))))), Struct_2(Struct_1(vec2<f32>(1f, _wgslsmith_f_op_f32(1164f - 815f)))));
    let var_2 = -1255f;
    var var_3 = abs(~(u_input.b.x >> (global2.a % 32u)));
    var_0 = min(reverseBits(_wgslsmith_sub_vec4_i32(vec4<i32>(global0.x, -18675i, global0.x, var_0.x) >> (select(u_input.b, u_input.b, false) % vec4<u32>(32u)), (vec4<i32>(28993i, global1.x, 67293i, -1i) ^ vec4<i32>(-2147483647i, global0.x, var_0.x, -32417i)) ^ ~vec4<i32>(-1i, -1i, -2147483647i, 1i))), -vec4<i32>(var_0.x, ~global1.x, 1i, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(global0.x, var_0.x, global1.x, -37959i)), ~vec4<i32>(global0.x, 38721i, global0.x, global1.x))));
    return _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2, _wgslsmith_div_f32(var_2, var_2)) * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a.a.x, -1249f) * vec2<f32>(var_1.c.a.a.x, var_2)), vec2<f32>(-873f, -1136f)))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.a.a - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(var_1.a.a, vec2<f32>(608f, -917f), vec2<bool>(false, false)))))), vec2<f32>(264f, _wgslsmith_f_op_f32(trunc(-1000f)))), !(all(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true))) || (_wgslsmith_f_op_f32(var_1.c.a.a.x + var_1.c.a.a.x) > -1721f))));
}

fn func_5(arg_0: vec2<f32>, arg_1: u32) -> vec3<i32> {
    let var_0 = func_4(vec4<i32>(i32(-1i) * -(~global0.x), select(countOneBits(global0.x), _wgslsmith_mod_i32(global1.x, -global1.x), any(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false)))), global0.x, ~firstTrailingBit(global1.x)), 564f);
    let var_1 = vec3<f32>(993f, _wgslsmith_f_op_f32(ceil(arg_0.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_vec2_f32(func_2()).x)));
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, arg_0.x)) * _wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_0.x, 841f))))));
    let var_3 = _wgslsmith_div_f32(var_1.x, arg_0.x);
    let var_4 = ~abs(_wgslsmith_mod_u32(arg_1, abs(u_input.a)));
    return _wgslsmith_div_vec3_i32(-vec3<i32>(func_4(vec4<i32>(13325i, -2147483647i, var_0.x, var_0.x), _wgslsmith_f_op_f32(-740f * 239f)).x, global1.x, ~_wgslsmith_dot_vec4_i32(var_0, vec4<i32>(2147483647i, global1.x, -1369i, -11398i))), var_0.xxx);
}

fn func_1(arg_0: Struct_5) -> Struct_5 {
    global2 = arg_0;
    global1 = vec3<i32>(-2147483647i & _wgslsmith_mod_i32(global1.x, ~(~2147483647i)), global0.x, _wgslsmith_add_i32(global0.x, -global1.x));
    var var_0 = -_wgslsmith_add_vec3_i32(-(~vec3<i32>(-14237i, global1.x, 0i)), vec3<i32>(~global1.x, global1.x ^ -20564i, global0.x)) | -reverseBits(min(countOneBits(vec3<i32>(-54909i, global1.x, -2147483647i)), vec3<i32>(global0.x, -1i, global0.x) ^ vec3<i32>(-24101i, global0.x, global1.x)));
    let var_1 = ~reverseBits(func_5(_wgslsmith_f_op_vec2_f32(func_2()), ~arg_0.a) | vec3<i32>(i32(-1i) * -2175i, ~global0.x, _wgslsmith_mult_i32(global0.x, 3527i)));
    var var_2 = Struct_2(Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(221f, -645f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(2768f, 800f) + vec2<f32>(-982f, -991f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(263f, 1000f), vec2<f32>(348f, -1000f), vec2<bool>(true, false))) * _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1071f, 1246f)))))));
    return Struct_5(max(41739u, ~69335u & arg_0.a));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_1(Struct_5(abs(52067u)));
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - 591f)))) - 1219f);
    var var_1 = _wgslsmith_f_op_f32(max(-184f, 2544f));
    global0 = vec3<i32>(global0.x, 22343i, global0.x ^ _wgslsmith_mult_i32(-_wgslsmith_mult_i32(-1i, -2147483647i), select(-1i, -global1.x, any(vec3<bool>(false, true, false)))));
    var var_2 = 505f;
    var var_3 = u_input.b.x;
    var var_4 = Struct_5(1178u);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit((global2.a | ~global2.a) & 1u));
}

