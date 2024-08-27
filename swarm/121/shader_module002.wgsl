struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: bool,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 2> = array<vec4<u32>, 2>(vec4<u32>(69189u, 1u, 25245u, 1u), vec4<u32>(54278u, 0u, 0u, 4294967295u));

var<private> global1: array<Struct_5, 28> = array<Struct_5, 28>(Struct_5(Struct_3(Struct_2(vec3<f32>(553f, 104f, -1311f), false, true, Struct_1(206f)), 115f)), Struct_5(Struct_3(Struct_2(vec3<f32>(1231f, 880f, 1347f), false, true, Struct_1(-1206f)), -201f)), Struct_5(Struct_3(Struct_2(vec3<f32>(363f, 111f, 140f), true, false, Struct_1(237f)), -251f)), Struct_5(Struct_3(Struct_2(vec3<f32>(1081f, 1098f, -2034f), false, true, Struct_1(1848f)), -1304f)), Struct_5(Struct_3(Struct_2(vec3<f32>(548f, 998f, -1585f), false, false, Struct_1(-1308f)), -1016f)), Struct_5(Struct_3(Struct_2(vec3<f32>(-741f, -332f, -1000f), true, false, Struct_1(444f)), 511f)), Struct_5(Struct_3(Struct_2(vec3<f32>(-957f, -1000f, -797f), true, true, Struct_1(2107f)), 139f)), Struct_5(Struct_3(Struct_2(vec3<f32>(148f, -1363f, 663f), false, true, Struct_1(-1612f)), 635f)), Struct_5(Struct_3(Struct_2(vec3<f32>(-590f, -248f, 434f), false, false, Struct_1(-780f)), -1411f)), Struct_5(Struct_3(Struct_2(vec3<f32>(-1000f, 637f, 377f), true, true, Struct_1(390f)), -2205f)), Struct_5(Struct_3(Struct_2(vec3<f32>(-759f, -134f, 306f), false, true, Struct_1(-546f)), -1716f)), Struct_5(Struct_3(Struct_2(vec3<f32>(-1245f, -232f, 464f), true, true, Struct_1(-697f)), -334f)), Struct_5(Struct_3(Struct_2(vec3<f32>(-1972f, -1149f, 997f), true, false, Struct_1(-147f)), -168f)), Struct_5(Struct_3(Struct_2(vec3<f32>(939f, 1040f, 1000f), false, false, Struct_1(-990f)), -139f)), Struct_5(Struct_3(Struct_2(vec3<f32>(-419f, -1000f, 678f), true, false, Struct_1(-943f)), 1265f)), Struct_5(Struct_3(Struct_2(vec3<f32>(-1165f, -400f, -504f), false, true, Struct_1(890f)), 145f)), Struct_5(Struct_3(Struct_2(vec3<f32>(1000f, 241f, 291f), false, false, Struct_1(175f)), -982f)), Struct_5(Struct_3(Struct_2(vec3<f32>(1115f, 396f, 1733f), true, false, Struct_1(382f)), 1167f)), Struct_5(Struct_3(Struct_2(vec3<f32>(622f, -333f, 755f), false, false, Struct_1(-1035f)), -291f)), Struct_5(Struct_3(Struct_2(vec3<f32>(689f, -871f, -1000f), true, true, Struct_1(-805f)), 957f)), Struct_5(Struct_3(Struct_2(vec3<f32>(-1463f, -1245f, 119f), true, true, Struct_1(-256f)), -649f)), Struct_5(Struct_3(Struct_2(vec3<f32>(-652f, 846f, 161f), true, true, Struct_1(-1244f)), -235f)), Struct_5(Struct_3(Struct_2(vec3<f32>(114f, 908f, 208f), true, false, Struct_1(620f)), 340f)), Struct_5(Struct_3(Struct_2(vec3<f32>(536f, -1183f, -971f), false, false, Struct_1(335f)), 1128f)), Struct_5(Struct_3(Struct_2(vec3<f32>(1722f, -601f, -1000f), false, true, Struct_1(-460f)), -143f)), Struct_5(Struct_3(Struct_2(vec3<f32>(-392f, -1132f, 1153f), true, true, Struct_1(2136f)), -2292f)), Struct_5(Struct_3(Struct_2(vec3<f32>(-1000f, 1895f, -1000f), true, false, Struct_1(2467f)), -1461f)), Struct_5(Struct_3(Struct_2(vec3<f32>(-975f, 262f, -128f), false, false, Struct_1(-476f)), -1953f)));

var<private> global2: array<vec3<f32>, 22>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2() -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -406f), -639f)) - 722f));
    let var_1 = firstTrailingBit(min(u_input.a, -u_input.a) & (u_input.a & ~u_input.a)) == ~(_wgslsmith_mult_i32(-1i, 2147483647i | u_input.a) ^ _wgslsmith_mult_i32(u_input.a ^ -2147483647i, ~u_input.a));
    var var_2 = Struct_3(Struct_2(global2[_wgslsmith_index_u32(abs(1u) >> (0u % 32u), 22u)], var_1, true, Struct_1(-741f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1119f + 585f)))))));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.a.d.a + _wgslsmith_f_op_f32(f32(-1f) * -785f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_2.b, -694f)) - _wgslsmith_f_op_f32(f32(-1f) * -1764f)))));
    var var_4 = vec3<f32>(_wgslsmith_f_op_f32(-var_2.b), -595f, var_2.b);
    return var_2.a.d.a;
}

fn func_3(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec2<f32>) -> Struct_4 {
    let var_0 = arg_1.a.d;
    var var_1 = vec3<i32>(4245i << (abs(1u << (_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 0u), vec3<u32>(27476u, 192u, 0u)) % 32u)) % 32u), reverseBits(-1i), u_input.a);
    var_1 = _wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(min(countOneBits(vec3<i32>(u_input.a, 59741i, 0i)), max(vec3<i32>(-2147483647i, -2147483647i, var_1.x), vec3<i32>(u_input.a, u_input.a, var_1.x))), -(vec3<i32>(-31745i, var_1.x, var_1.x) & vec3<i32>(2147483647i, -2147483647i, 1i))) << (vec3<u32>(4294967295u, ~(~82878u), firstTrailingBit(~1u)) % vec3<u32>(32u)), -reverseBits(select(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(399i, 66312i, u_input.a), vec3<bool>(arg_1.a.b, arg_1.a.b, true)) ^ abs(vec3<i32>(u_input.a, var_1.x, var_1.x))));
    let var_2 = !select(vec4<bool>(!select(arg_1.a.c, true, true), arg_1.a.c, true, true), vec4<bool>(any(select(vec2<bool>(true, arg_0.b), vec2<bool>(true, false), arg_0.b)), arg_1.a.c, select(true, true, arg_1.a.b) == true, true || arg_1.a.b), true);
    let var_3 = true;
    return Struct_4(arg_0.d);
}

fn func_1() -> Struct_1 {
    let var_0 = func_3(Struct_2(_wgslsmith_f_op_vec3_f32(max(global2[_wgslsmith_index_u32(~27241u, 22u)], _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global2[_wgslsmith_index_u32(1u, 22u)] + vec3<f32>(-338f, 997f, 933f))))), all(!select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true))), true, Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-957f)), _wgslsmith_f_op_f32(func_2()))))), Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(250f, 464f, 499f), vec3<f32>(859f, 1174f, -2089f))), false, true, Struct_1(_wgslsmith_f_op_f32(-496f + 523f))), -1000f), vec2<f32>(_wgslsmith_div_f32(270f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1186f - 876f))), -381f));
    let var_1 = Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-865f, var_0.a.a, var_0.a.a) - vec3<f32>(var_0.a.a, var_0.a.a, var_0.a.a)) + _wgslsmith_f_op_vec3_f32(exp2(global2[_wgslsmith_index_u32(1u, 22u)]))))), all(vec2<bool>(true, true)), true, func_3(Struct_2(global2[_wgslsmith_index_u32(~1u, 22u)], false, false, var_0.a), Struct_3(Struct_2(global2[_wgslsmith_index_u32(22850u, 22u)], true, true, Struct_1(var_0.a.a)), _wgslsmith_f_op_f32(trunc(var_0.a.a))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1524f, 1439f), vec2<f32>(var_0.a.a, 284f), false))))).a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1206f + _wgslsmith_f_op_f32(var_0.a.a - var_0.a.a)))));
    let var_2 = var_1.a.b;
    var var_3 = Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(global2[_wgslsmith_index_u32(4294967295u, 22u)], vec3<f32>(var_1.b, 856f, -710f))))), var_1.a.a), false, true, Struct_1(725f));
    let var_4 = var_0;
    return func_3(Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_1.b - 660f), _wgslsmith_f_op_f32(-1000f - 183f), _wgslsmith_f_op_f32(-var_1.b))), var_2, true, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.a.x + var_1.a.d.a) + _wgslsmith_div_f32(365f, var_3.d.a)))), Struct_3(Struct_2(var_3.a, true, !var_3.c, Struct_1(var_0.a.a)), _wgslsmith_f_op_f32(max(203f, 502f))), var_1.a.a.yy).a;
}

fn func_4(arg_0: bool, arg_1: Struct_4, arg_2: vec4<i32>) -> StorageBuffer {
    var var_0 = arg_1;
    var_0 = arg_1;
    global0 = array<vec4<u32>, 2>();
    global0 = array<vec4<u32>, 2>();
    var var_1 = _wgslsmith_dot_vec4_i32(vec4<i32>(~(-arg_2.x), 2147483647i, reverseBits(_wgslsmith_div_i32(2147483647i, u_input.a ^ 57252i)), abs(arg_2.x ^ arg_2.x)), -firstLeadingBit(vec4<i32>(-2147483647i, 48128i, _wgslsmith_div_i32(arg_2.x, 81798i), min(2147483647i, u_input.a))));
    return StorageBuffer(vec4<i32>(1i, 0i, u_input.a, _wgslsmith_add_i32(firstTrailingBit(-1i), abs(arg_2.x))), _wgslsmith_mod_i32(1i, firstTrailingBit(arg_2.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_5, 28>();
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1525f * 1264f), _wgslsmith_f_op_f32(894f * _wgslsmith_f_op_f32(-1f))));
    let var_1 = !(!select(!select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false)), vec3<bool>(true, true, true), any(select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), true))));
    let x = u_input.a;
    s_output = func_4(false, Struct_4(func_1()), _wgslsmith_mult_vec4_i32(vec4<i32>(-12502i, 46009i, u_input.a ^ -13820i, 21406i), firstTrailingBit(vec4<i32>(u_input.a >> (52769u % 32u), u_input.a, -2147483647i, u_input.a))));
}

