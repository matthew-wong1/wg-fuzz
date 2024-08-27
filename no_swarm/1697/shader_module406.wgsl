struct Struct_1 {
    a: i32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: vec2<i32>,
}

struct Struct_3 {
    a: f32,
    b: vec2<u32>,
    c: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: u32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = i32(-2147483648);

var<private> global1: array<vec4<i32>, 25> = array<vec4<i32>, 25>(vec4<i32>(0i, 271i, i32(-2147483648), -42769i), vec4<i32>(-25387i, 2147483647i, -51684i, i32(-2147483648)), vec4<i32>(0i, -18277i, 2147483647i, -1i), vec4<i32>(-2243i, 0i, -17552i, i32(-2147483648)), vec4<i32>(64843i, -8847i, 26267i, 19137i), vec4<i32>(73169i, -31967i, 12607i, 0i), vec4<i32>(1i, -4131i, 34035i, 2147483647i), vec4<i32>(14730i, 27386i, 65165i, 40159i), vec4<i32>(-9313i, -1i, -4744i, -12015i), vec4<i32>(i32(-2147483648), 2147483647i, 0i, 0i), vec4<i32>(-130812i, -10263i, 1i, -1i), vec4<i32>(0i, 51647i, -1i, 0i), vec4<i32>(0i, 2147483647i, -1457i, -1i), vec4<i32>(5911i, 1i, 1i, 38406i), vec4<i32>(-20544i, 2147483647i, -67269i, 69807i), vec4<i32>(-30679i, -27724i, -3935i, 20888i), vec4<i32>(43099i, 1i, 0i, 1i), vec4<i32>(1i, 1i, 11721i, 1i), vec4<i32>(i32(-2147483648), 2147483647i, 16189i, -34311i), vec4<i32>(-64914i, 6338i, -21408i, 34996i), vec4<i32>(14392i, 22338i, -24011i, -1i), vec4<i32>(-1i, 9395i, 41745i, 5970i), vec4<i32>(61559i, 58363i, 29372i, -49783i), vec4<i32>(0i, -1i, i32(-2147483648), 2147483647i), vec4<i32>(-12049i, -1i, -4491i, -3329i));

var<private> global2: Struct_1;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec3<bool>, arg_2: vec4<i32>) -> Struct_3 {
    let var_0 = Struct_3(410f, u_input.a.yy, -(~(~countOneBits(-79430i))));
    var var_1 = Struct_1(var_0.c, arg_1);
    var var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1155f - 1466f)));
    var_2 = _wgslsmith_f_op_f32(f32(-1f) * -594f);
    global1 = array<vec4<i32>, 25>();
    return Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -499f), vec2<u32>(_wgslsmith_mult_u32(1u, u_input.b.x), var_0.b.x), firstLeadingBit(-11937i));
}

fn func_3(arg_0: vec4<i32>) -> vec2<i32> {
    global1 = array<vec4<i32>, 25>();
    global0 = global2.a & 1i;
    global1 = array<vec4<i32>, 25>();
    global2 = Struct_1(firstTrailingBit(-_wgslsmith_sub_i32(~global2.a, -31948i)), select(!vec3<bool>(global2.b.x && global2.b.x, !global2.b.x, !global2.b.x), vec3<bool>(all(!global2.b), u_input.a.x >= 1u, true), any(select(vec2<bool>(true, true), select(vec2<bool>(false, global2.b.x), global2.b.xy, global2.b.x), select(vec2<bool>(true, global2.b.x), vec2<bool>(true, true), vec2<bool>(true, false))))));
    let var_0 = Struct_1(arg_0.x, !(!vec3<bool>(true, global2.b.x, all(global2.b.xy))));
    return min(-(~vec2<i32>(~arg_0.x, global2.a >> (4294967295u % 32u))), vec2<i32>(max(global2.a, var_0.a), global2.a));
}

fn func_2(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: vec2<f32>) -> Struct_1 {
    let var_0 = u_input.b.x;
    let var_1 = min(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(~var_0, 1u, ~u_input.b.x), select(vec3<u32>(u_input.b.x, 27227u, 0u) >> (vec3<u32>(4294967295u, arg_0.b.x, var_0) % vec3<u32>(32u)), vec3<u32>(104611u, 1u, 4294967295u) << (vec3<u32>(4294967295u, arg_0.b.x, u_input.a.x) % vec3<u32>(32u)), !global2.b))), ~1u);
    let var_2 = Struct_2(Struct_1(global2.a, !select(!global2.b, global2.b, all(global2.b))), !global2.b.x, Struct_1(global2.a, global2.b), -firstLeadingBit(func_3(vec4<i32>(1i, 1i, 0i, -460i) | vec4<i32>(36312i, 1i, arg_0.c, global2.a))));
    let var_3 = reverseBits((~(-vec2<i32>(2147483647i, -2147483647i)) >> (((vec2<u32>(u_input.a.x, var_0) >> (vec2<u32>(4294967295u, u_input.a.x) % vec2<u32>(32u))) >> (arg_0.b % vec2<u32>(32u))) % vec2<u32>(32u))) << (~vec2<u32>(~11420u, 90439u) % vec2<u32>(32u)));
    var var_4 = var_2.c;
    return var_2.c;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec3<f32>, arg_3: Struct_3) -> bool {
    var var_0 = vec4<bool>(firstTrailingBit(arg_0.a) < -13911i, true, !any(vec3<bool>(arg_3.b.x != arg_1.b.x, global2.b.x, all(vec2<bool>(true, arg_0.b.x)))), (~(~1u) < (countOneBits(33120u) | u_input.b.x)) || true);
    global1 = array<vec4<i32>, 25>();
    let var_1 = Struct_2(arg_0, func_2(func_1(vec3<i32>(3003i, _wgslsmith_mod_i32(arg_1.c, 0i), arg_1.c), var_0.zyx, abs(global1[_wgslsmith_index_u32(45125u, 25u)]) | -vec4<i32>(0i, arg_0.a, -1i, 2147483647i)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1088f, 559f), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-arg_2.yy))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_2.yx))).b.x, func_2(arg_3, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(-181f, arg_2.x), arg_2.xx), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-arg_2.zx))), !vec2<bool>(global2.b.x, var_0.x))), arg_2.zz), reverseBits(((vec2<i32>(global2.a, arg_3.c) | vec2<i32>(2147483647i, global2.a)) & vec2<i32>(arg_1.c, 1i)) & vec2<i32>(2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -1i), vec2<i32>(arg_1.c, arg_0.a)))));
    global0 = _wgslsmith_div_i32(arg_3.c, -1i);
    let var_2 = 1u;
    return !func_2(func_1(_wgslsmith_mod_vec3_i32(-vec3<i32>(17851i, arg_3.c, arg_1.c), select(vec3<i32>(arg_0.a, 0i, -40139i), vec3<i32>(1i, 1i, -1i), var_1.c.b.x)), !var_0.xwx, global1[_wgslsmith_index_u32(~u_input.b.x, 25u)]), _wgslsmith_f_op_vec2_f32(select(arg_2.xy, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_1.a, 206f))), _wgslsmith_f_op_vec2_f32(arg_2.xx + vec2<f32>(1188f, -136f)), select(var_1.a.b.yy, vec2<bool>(global2.b.x, true), var_1.a.b.x))), false)), _wgslsmith_f_op_vec2_f32(max(arg_2.zz, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-arg_2.zx)))))).b.x;
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: vec4<f32>) -> Struct_3 {
    let var_0 = arg_1;
    global1 = array<vec4<i32>, 25>();
    let var_1 = func_2(func_1(_wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(arg_1.a, arg_1.a, 47255i), vec3<i32>(2147483647i, var_0.a, 2147483647i)), ~vec3<i32>(var_0.a, var_0.a, var_0.a)), abs(vec3<i32>(global2.a, var_0.a, 1i))), select(arg_1.b, vec3<bool>(false, false, arg_1.b.x), func_2(Struct_3(795f, vec2<u32>(u_input.a.x, u_input.b.x), arg_1.a), vec2<f32>(-1278f, arg_2.x), _wgslsmith_f_op_vec2_f32(step(arg_2.xx, arg_2.xw))).b), global1[_wgslsmith_index_u32(34281u, 25u)]), arg_2.wz, arg_2.xz);
    global1 = array<vec4<i32>, 25>();
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1644f - _wgslsmith_f_op_f32(round(arg_2.x))) + -1110f) * 660f));
    return func_1(-(~(~vec3<i32>(arg_1.a, var_0.a, 1i))), !arg_1.b, -firstLeadingBit(select(abs(global1[_wgslsmith_index_u32(0u, 25u)]), vec4<i32>(var_1.a, arg_1.a, -1i, var_0.a) ^ vec4<i32>(arg_1.a, var_1.a, 0i, global2.a), !arg_1.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = func_5(!func_4(func_2(func_1(vec3<i32>(12103i, global2.a, 71061i), global2.b, vec4<i32>(global2.a, -20775i, global2.a, 21737i)), vec2<f32>(-444f, 1211f), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-319f, 1498f)))), func_1(vec3<i32>(1i, global2.a, global2.a) >> (u_input.b % vec3<u32>(32u)), vec3<bool>(true, false, global2.b.x), vec4<i32>(global2.a, -11663i, global2.a, global2.a)), vec3<f32>(-1000f, _wgslsmith_f_op_f32(-2079f - 1675f), 1106f), func_1(_wgslsmith_mult_vec3_i32(vec3<i32>(38945i, global2.a, global2.a), vec3<i32>(global2.a, 0i, global2.a)), vec3<bool>(var_0, false, true), vec4<i32>(-2147483647i, -26598i, global2.a, global2.a))), func_2(Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1805f + -483f), _wgslsmith_f_op_f32(f32(-1f) * -355f)), _wgslsmith_add_vec2_u32(abs(u_input.b.yy), _wgslsmith_div_vec2_u32(u_input.b.zx, vec2<u32>(4294967295u, u_input.a.x))), global2.a & 22654i), vec2<f32>(_wgslsmith_f_op_f32(floor(-873f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1391f)) * _wgslsmith_div_f32(-219f, 847f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -895f) - vec2<f32>(-1326f, -955f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-964f * 520f) + _wgslsmith_f_op_f32(step(-1498f, 185f))), 100f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(379f * 106f)), 1042f), var_0)));
    global2 = func_2(var_1, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-214f, var_1.a)))))), vec2<f32>(var_1.a, _wgslsmith_f_op_f32(-802f - func_1(~vec3<i32>(0i, 0i, var_1.c), func_2(var_1, vec2<f32>(1070f, var_1.a), vec2<f32>(-166f, -1000f)).b, _wgslsmith_add_vec4_i32(vec4<i32>(1i, var_1.c, global2.a, global2.a), global1[_wgslsmith_index_u32(u_input.b.x, 25u)])).a)));
    let var_2 = Struct_1(min(~1i, countOneBits(abs(~var_1.c))), !(!select(global2.b, select(global2.b, vec3<bool>(var_0, global2.b.x, true), false), !global2.b)));
    global0 = ~abs((-global2.a & (var_1.c ^ -51050i)) >> (~(12440u ^ u_input.a.x) % 32u));
    var var_3 = Struct_1(-12997i >> (var_1.b.x % 32u), vec3<bool>(~global2.a <= -2147483647i, false, true));
    let var_4 = _wgslsmith_f_op_f32(2859f * 953f);
    let var_5 = var_3.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(ceil(var_4)), var_4, _wgslsmith_f_op_f32(-var_4)))), ~(~vec4<u32>(0u, ~91397u, 1u, 1u)), ~_wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(firstTrailingBit(vec4<u32>(var_1.b.x, 9195u, var_1.b.x, 0u)), _wgslsmith_div_vec4_u32(vec4<u32>(var_1.b.x, 17923u, var_1.b.x, var_1.b.x), vec4<u32>(61713u, u_input.b.x, 1u, 12944u))), vec4<u32>(firstTrailingBit(14341u), firstTrailingBit(var_1.b.x), 1u, 9655u)), 1u, vec2<u32>(~abs(u_input.b.x), _wgslsmith_sub_u32(~1u, max(63678u, func_5(var_0, Struct_1(1i, vec3<bool>(var_2.b.x, var_3.b.x, true)), vec4<f32>(748f, var_4, var_4, var_4)).b.x))));
}

