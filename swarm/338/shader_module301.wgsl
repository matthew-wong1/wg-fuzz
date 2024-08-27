struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<f32>,
    d: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: i32,
    d: i32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 351f;

var<private> global1: array<vec2<bool>, 30>;

var<private> global2: array<vec2<f32>, 22> = array<vec2<f32>, 22>(vec2<f32>(368f, 263f), vec2<f32>(-1008f, 302f), vec2<f32>(-1353f, -632f), vec2<f32>(-1394f, 2756f), vec2<f32>(1290f, -618f), vec2<f32>(1166f, 666f), vec2<f32>(-1000f, -1000f), vec2<f32>(-210f, -1023f), vec2<f32>(1000f, -1420f), vec2<f32>(1518f, 2115f), vec2<f32>(-631f, -1002f), vec2<f32>(-168f, 1436f), vec2<f32>(1193f, 1254f), vec2<f32>(-1000f, 714f), vec2<f32>(296f, 1832f), vec2<f32>(-302f, -2106f), vec2<f32>(541f, 1071f), vec2<f32>(-917f, -118f), vec2<f32>(-1000f, -842f), vec2<f32>(-594f, 971f), vec2<f32>(1000f, -199f), vec2<f32>(-643f, 1000f));

var<private> global3: vec4<u32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2() -> i32 {
    return u_input.c;
}

fn func_1(arg_0: vec4<bool>) -> vec2<u32> {
    var var_0 = 22902u;
    var var_1 = _wgslsmith_div_u32(~0u, u_input.a);
    global2 = array<vec2<f32>, 22>();
    let var_2 = ~((vec3<i32>(-u_input.b.x, -14733i, u_input.c) << (global3.wxz % vec3<u32>(32u))) ^ ~(_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, u_input.b.x, u_input.b.x), vec3<i32>(27385i, u_input.c, u_input.d)) >> (max(global3.xzw, vec3<u32>(global3.x, 1u, 4294967295u)) % vec3<u32>(32u))));
    let var_3 = Struct_1(func_2(), _wgslsmith_div_vec4_i32(-min(vec4<i32>(-2147483647i, -5035i, 0i, var_2.x) | vec4<i32>(u_input.d, var_2.x, 5780i, 70587i), vec4<i32>(u_input.b.x, var_2.x, u_input.b.x, 2147483647i) | vec4<i32>(1i, u_input.d, u_input.b.x, -2147483647i)), vec4<i32>(var_2.x, _wgslsmith_dot_vec2_i32(~u_input.b.xx, vec2<i32>(-65710i, -1i)), _wgslsmith_add_i32(select(-2147483647i, 0i, false), -13246i), max(var_2.x & -1i, var_2.x))), 1u, vec3<bool>(arg_0.x, arg_0.x, all(vec4<bool>(true, true, arg_0.x, true)) && (any(arg_0) | (u_input.a <= global3.x))));
    return ~global3.wy;
}

fn func_3() -> bool {
    let var_0 = Struct_1(u_input.c, countOneBits(-(~(vec4<i32>(u_input.b.x, u_input.d, u_input.b.x, u_input.c) << (vec4<u32>(u_input.a, 61852u, 0u, 8572u) % vec4<u32>(32u))))), 75557u, select(select(vec3<bool>(true, true, true), vec3<bool>(all(global1[_wgslsmith_index_u32(80738u, 30u)]), true, true), select(select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), true)), select(select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), true), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true)), true), select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false)), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false)), true), max(u_input.c, u_input.c) == (u_input.d << (u_input.a % 32u))), select(true, all(!global1[_wgslsmith_index_u32(0u, 30u)]), reverseBits(7166u) > (u_input.a ^ global3.x))));
    var var_1 = _wgslsmith_f_op_f32(step(-756f, 748f));
    global2 = array<vec2<f32>, 22>();
    var var_2 = var_0;
    let var_3 = Struct_1(reverseBits(1i), abs(vec4<i32>(-2109i, _wgslsmith_clamp_i32(-46770i, var_2.a, -38855i), ~(-var_0.b.x), -34461i)), 54095u, vec3<bool>(false, all(select(var_0.d, vec3<bool>(false, var_2.d.x, true), !var_2.d.x)), any(var_0.d)));
    return false;
}

fn func_4(arg_0: vec2<u32>, arg_1: bool) -> Struct_2 {
    var var_0 = firstTrailingBit(vec4<u32>(32885u, u_input.a, firstTrailingBit(_wgslsmith_mult_u32(countOneBits(1u), _wgslsmith_mult_u32(arg_0.x, arg_0.x))), _wgslsmith_add_u32(reverseBits(global3.x ^ u_input.a), u_input.a)));
    let var_1 = -364f;
    let var_2 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(911f + var_1), _wgslsmith_f_op_f32(abs(-409f)), _wgslsmith_f_op_f32(-var_1), var_1)) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(483f, var_1, var_1, -752f) + vec4<f32>(var_1, var_1, 1032f, 322f)) * vec4<f32>(var_1, var_1, var_1, 132f))))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(var_1, var_1), _wgslsmith_f_op_f32(f32(-1f) * -784f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)))))));
    let var_3 = Struct_2(Struct_1(func_2(), vec4<i32>(6404i, u_input.b.x, ~u_input.d, ~(-27654i)), 0u, select(vec3<bool>(any(vec3<bool>(arg_1, false, arg_1)), arg_1, 2118i <= u_input.b.x), select(vec3<bool>(true, arg_1, arg_1), !vec3<bool>(arg_1, arg_1, arg_1), arg_1), arg_1)), Struct_1(1i, _wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(countOneBits(vec4<i32>(u_input.d, 7161i, u_input.d, 1i)), max(vec4<i32>(u_input.b.x, u_input.d, 49142i, 2147483647i), vec4<i32>(u_input.d, -1i, 2147483647i, u_input.d))), -_wgslsmith_div_vec4_i32(vec4<i32>(45815i, 2147483647i, -6461i, u_input.c), vec4<i32>(46771i, -2147483647i, -10046i, u_input.c))), ~1u, vec3<bool>((u_input.b.x | -31697i) > firstTrailingBit(24450i), false, _wgslsmith_f_op_f32(step(-855f, -640f)) != _wgslsmith_f_op_f32(var_1 - var_2.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-246f - var_1) + _wgslsmith_f_op_f32(f32(-1f) * -222f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 + var_1)))), ~(-vec4<i32>(_wgslsmith_mult_i32(-15654i, -17528i), u_input.c, 7190i, -62720i)));
    var var_4 = u_input.b;
    return Struct_2(var_3.a, var_3.a, var_3.c, var_3.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(201f)), 1f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + 1f)) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -166f))))));
    var var_1 = _wgslsmith_f_op_f32(-1143f + -129f);
    var var_2 = func_4(~func_1(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), true)) << (_wgslsmith_add_vec2_u32(vec2<u32>(firstLeadingBit(global3.x), ~u_input.a), _wgslsmith_clamp_vec2_u32(global3.xw >> (vec2<u32>(4294967295u, 0u) % vec2<u32>(32u)), vec2<u32>(4294967295u, global3.x), vec2<u32>(33770u, 5878u))) % vec2<u32>(32u)), !func_3());
    var_2 = Struct_2(func_4(~global3.xy, var_2.b.d.x).b, var_2.a, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-771f * 144f), _wgslsmith_f_op_f32(abs(-691f))))), -954f, var_2.c.x), select(-firstTrailingBit(func_4(global3.yy, var_2.a.d.x).a.b), firstLeadingBit((var_2.b.b & var_2.a.b) << ((vec4<u32>(u_input.a, 43463u, 46401u, 58789u) & vec4<u32>(u_input.a, u_input.a, 1u, 1u)) % vec4<u32>(32u))), !var_2.b.d.x));
    var_1 = -447f;
    var var_3 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-242f, var_2.c.x, var_2.c.x, var_2.c.x))));
    var var_4 = u_input.b.x;
    var var_5 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(floor(-675f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.c.x - var_2.c.x), var_2.c.x), func_4(vec2<u32>(var_2.b.c, global3.x), true).c.x, -1488f), vec4<f32>(var_3.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(1000f)))), _wgslsmith_f_op_f32(-1124f * _wgslsmith_f_op_f32(var_2.c.x * 1034f)), _wgslsmith_f_op_f32(round(var_2.c.x))))) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-195f, -886f, var_2.c.x, -1025f))) - _wgslsmith_div_vec4_f32(vec4<f32>(552f, -142f, -2122f, 1468f), vec4<f32>(var_2.c.x, 1627f, 1376f, -310f))))));
    let x = u_input.a;
    s_output = StorageBuffer(func_4(vec2<u32>(_wgslsmith_clamp_u32(~7303u, var_2.a.c, var_2.b.c), 0u), var_2.a.d.x).c, _wgslsmith_f_op_f32(-var_2.c.x), var_2.d.x, 1i, _wgslsmith_div_vec2_f32(vec2<f32>(func_4(vec2<u32>(global3.x, 0u), false).c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(883f, 788f)))), _wgslsmith_div_vec2_f32(vec2<f32>(var_5.x, var_5.x), _wgslsmith_f_op_vec2_f32(exp2(global2[_wgslsmith_index_u32(~36039u, 22u)])))));
}

