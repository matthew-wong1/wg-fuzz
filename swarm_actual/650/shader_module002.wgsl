struct Struct_1 {
    a: i32,
    b: i32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec2<bool>,
    d: vec2<bool>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: u32,
    c: vec3<bool>,
    d: vec3<i32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_2,
    c: vec4<f32>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec3<i32>,
    e: u32,
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

var<private> global0: array<Struct_3, 13> = array<Struct_3, 13>(Struct_3(vec3<i32>(0i, -37549i, 0i), 78214u, vec3<bool>(false, true, false), vec3<i32>(1i, i32(-2147483648), -23146i)), Struct_3(vec3<i32>(38339i, -1i, 1i), 33543u, vec3<bool>(true, false, true), vec3<i32>(32989i, i32(-2147483648), -5120i)), Struct_3(vec3<i32>(1i, i32(-2147483648), 1i), 0u, vec3<bool>(true, false, true), vec3<i32>(17059i, -1i, 0i)), Struct_3(vec3<i32>(12774i, 2147483647i, -44722i), 69386u, vec3<bool>(false, true, true), vec3<i32>(i32(-2147483648), -1i, 1i)), Struct_3(vec3<i32>(2147483647i, 1i, 897i), 4294967295u, vec3<bool>(false, true, true), vec3<i32>(32495i, -3452i, i32(-2147483648))), Struct_3(vec3<i32>(0i, 13860i, 13350i), 32871u, vec3<bool>(true, false, false), vec3<i32>(2147483647i, i32(-2147483648), -41818i)), Struct_3(vec3<i32>(-57173i, -45861i, i32(-2147483648)), 91091u, vec3<bool>(false, true, false), vec3<i32>(20654i, 771i, -18961i)), Struct_3(vec3<i32>(i32(-2147483648), -51658i, 0i), 21038u, vec3<bool>(true, false, false), vec3<i32>(-60722i, 49573i, 2147483647i)), Struct_3(vec3<i32>(i32(-2147483648), 2147483647i, i32(-2147483648)), 0u, vec3<bool>(false, false, true), vec3<i32>(-7426i, -1i, 22669i)), Struct_3(vec3<i32>(i32(-2147483648), 1i, 4880i), 1u, vec3<bool>(true, false, false), vec3<i32>(0i, -3670i, -17673i)), Struct_3(vec3<i32>(-11607i, i32(-2147483648), -48694i), 97066u, vec3<bool>(false, false, false), vec3<i32>(2147483647i, 4273i, -20558i)), Struct_3(vec3<i32>(-7240i, 2147483647i, 0i), 41599u, vec3<bool>(true, false, false), vec3<i32>(15330i, 41464i, -27414i)), Struct_3(vec3<i32>(2147483647i, -5628i, 2147483647i), 0u, vec3<bool>(false, false, true), vec3<i32>(2147483647i, 57352i, i32(-2147483648))));

var<private> global1: i32;

var<private> global2: bool;

var<private> global3: f32 = 1082f;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: f32) -> bool {
    let var_0 = Struct_3(-(~vec3<i32>(-2147483647i, u_input.c.x, u_input.a)), ~1u, vec3<bool>(true, any(vec2<bool>(true, true)), true), _wgslsmith_add_vec3_i32(vec3<i32>(1i, u_input.c.x, u_input.d.x), ~(~vec3<i32>(u_input.d.x, -7218i, 31457i))));
    let var_1 = var_0.b << (firstLeadingBit(~abs(_wgslsmith_dot_vec2_u32(vec2<u32>(112162u, var_0.b), vec2<u32>(79336u, 68833u)))) % 32u);
    let var_2 = !(1i != _wgslsmith_clamp_i32(-1i, var_0.a.x, var_0.d.x));
    let var_3 = _wgslsmith_sub_vec4_i32(vec4<i32>(abs(u_input.c.x), u_input.c.x, -_wgslsmith_div_i32(firstLeadingBit(-2147483647i), 1i), _wgslsmith_div_i32(-1i, ~2147483647i)), select(u_input.b, vec4<i32>(_wgslsmith_mod_i32(-32112i, firstLeadingBit(u_input.a)), _wgslsmith_add_i32(-var_0.d.x, ~2147483647i), -1i, ~_wgslsmith_dot_vec2_i32(vec2<i32>(-68811i, u_input.d.x), u_input.c)), true));
    var var_4 = Struct_1(~select((0i << (0u % 32u)) << (firstTrailingBit(var_1) % 32u), -select(14935i, var_0.d.x, true), any(!vec4<bool>(true, var_0.c.x, false, false))), u_input.c.x, ~vec4<i32>(var_3.x, _wgslsmith_sub_i32(var_0.a.x, max(3503i, var_0.d.x)), var_3.x, var_0.d.x));
    return true;
}

fn func_2() -> Struct_4 {
    var var_0 = -616f;
    let var_1 = !(!select(vec2<bool>(true, func_3(215f)), vec2<bool>(false, u_input.b.x >= u_input.d.x), vec2<bool>(true, any(vec2<bool>(true, false)))));
    let var_2 = -1086f;
    let var_3 = all(!(!select(!vec3<bool>(var_1.x, false, true), !vec3<bool>(false, var_1.x, var_1.x), select(vec3<bool>(var_1.x, var_1.x, false), vec3<bool>(false, false, var_1.x), vec3<bool>(true, false, var_1.x)))));
    let var_4 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2 - _wgslsmith_f_op_f32(f32(-1f) * -801f)) * _wgslsmith_div_f32(-362f, var_2)), -1881f, !any(select(!vec2<bool>(var_1.x, var_1.x), !vec2<bool>(var_1.x, var_3), vec2<bool>(var_1.x, false)))));
    return Struct_4(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2, var_4, -1891f, var_4) * vec4<f32>(-420f, -226f, var_2, var_4)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, var_4, 1337f, var_4))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-667f, var_2, var_2, 1000f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-382f, var_2, var_4, var_4) * vec4<f32>(-1000f, var_4, var_4, var_2)))))), Struct_2(Struct_1(_wgslsmith_dot_vec4_i32(-u_input.b, ~vec4<i32>(71567i, u_input.d.x, -2147483647i, u_input.a)), _wgslsmith_div_i32(~u_input.b.x, min(2147483647i, 2537i)), ~_wgslsmith_mod_vec4_i32(u_input.b, u_input.b)), 6924u, var_1, var_1), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2, var_2, -1521f, -1044f), _wgslsmith_f_op_vec4_f32(vec4<f32>(1100f, var_2, 1000f, var_4) + vec4<f32>(151f, -1285f, var_2, var_4)), select(vec4<bool>(true, var_1.x, var_3, false), vec4<bool>(var_3, false, var_3, false), var_3)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(233f + -333f), _wgslsmith_f_op_f32(-2163f + 505f), var_2, var_2))), vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-1856f, var_4)), _wgslsmith_div_f32(1000f, var_2))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2 * var_2) - var_4) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_4 * var_4) - 1136f))));
}

fn func_4(arg_0: i32, arg_1: Struct_4, arg_2: Struct_3) -> Struct_1 {
    let var_0 = arg_1.d.x;
    global1 = _wgslsmith_sub_i32(_wgslsmith_add_i32(2147483647i, ~19131i), 2147483647i);
    global1 = ~_wgslsmith_dot_vec4_i32(select(countOneBits(vec4<i32>(-1i, 2147483647i, 21164i, arg_2.a.x)), arg_1.b.a.c, arg_2.c.x), ~firstLeadingBit(vec4<i32>(arg_1.b.a.a, 10759i, arg_1.b.a.c.x, 4725i)));
    var var_1 = !select(!(!(!vec2<bool>(arg_1.b.c.x, false))), vec2<bool>(true, false), !arg_2.c.zx);
    let var_2 = _wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.b, u_input.e), vec2<u32>(9181u, u_input.e)) | max(arg_1.b.b, 68522u), 1152u, ~62372u) >> (vec3<u32>(u_input.e, select(reverseBits(arg_1.b.b), u_input.e, all(arg_1.b.c)), _wgslsmith_sub_u32(4294967295u, ~1u)) % vec3<u32>(32u)), firstTrailingBit(~(~vec3<u32>(4294967295u, u_input.e, arg_2.b)) | vec3<u32>(_wgslsmith_mult_u32(arg_2.b, arg_2.b), ~54032u, ~1u)));
    return arg_1.b.a;
}

fn func_1(arg_0: u32, arg_1: Struct_3) -> Struct_1 {
    global0 = array<Struct_3, 13>();
    let var_0 = func_4(_wgslsmith_add_i32(-2147483647i, reverseBits(u_input.b.x)), func_2(), Struct_3(select(vec3<i32>(13186i, _wgslsmith_mult_i32(u_input.b.x, 1i), -2147483647i), vec3<i32>(~(-1i), firstTrailingBit(50141i), select(u_input.c.x, -1i, false)), select(!vec3<bool>(false, arg_1.c.x, true), !vec3<bool>(arg_1.c.x, true, arg_1.c.x), true)), arg_0, select(vec3<bool>(all(vec2<bool>(arg_1.c.x, arg_1.c.x)), any(vec4<bool>(false, false, false, arg_1.c.x)), false), !select(vec3<bool>(true, true, arg_1.c.x), arg_1.c, arg_1.c), vec3<bool>(false, arg_1.c.x, func_3(1109f))), _wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(min(vec3<i32>(-4926i, u_input.b.x, 2147483647i), vec3<i32>(u_input.c.x, 30408i, -61260i)), abs(arg_1.a)), -firstLeadingBit(vec3<i32>(-2492i, 75963i, 33502i)))));
    var var_1 = 2053f;
    global0 = array<Struct_3, 13>();
    let var_2 = func_4(~7736i >> (1u % 32u), func_2(), Struct_3(select(vec3<i32>(u_input.a, 0i, _wgslsmith_add_i32(arg_1.d.x, arg_1.d.x)), max(max(arg_1.a, u_input.b.wzx), max(vec3<i32>(var_0.b, 1i, 21482i), arg_1.a)), arg_1.c), 10782u, !select(select(arg_1.c, vec3<bool>(arg_1.c.x, true, false), arg_1.c), vec3<bool>(true, false, arg_1.c.x), true), _wgslsmith_add_vec3_i32(func_4(_wgslsmith_clamp_i32(2147483647i, 0i, var_0.b), func_2(), arg_1).c.wyz, abs(vec3<i32>(-2147483647i, -1i, 10493i)) | countOneBits(vec3<i32>(u_input.b.x, arg_1.d.x, 11763i)))));
    return Struct_1(-64392i, ~u_input.a, -var_2.c);
}

fn func_5(arg_0: Struct_2, arg_1: u32, arg_2: bool, arg_3: vec3<u32>) -> f32 {
    global0 = array<Struct_3, 13>();
    global0 = array<Struct_3, 13>();
    let var_0 = Struct_4(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1967f))), -1386f, true && (u_input.d.x >= arg_0.a.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-119f, _wgslsmith_f_op_f32(-330f - 204f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-378f)))), _wgslsmith_f_op_f32(f32(-1f) * -650f)), arg_0, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-423f, 733f), -1658f, _wgslsmith_f_op_f32(min(141f, -1166f)), _wgslsmith_f_op_f32(sign(-1365f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1508f, 746f, -123f, 1006f) - vec4<f32>(-1228f, -388f, 163f, -817f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(843f, -1015f, 1823f, 431f) + vec4<f32>(1721f, -315f, -530f, -1000f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(2524f, -968f), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1000f, 105f)))))));
    global3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x + 375f)) + -846f)), var_0.a.x));
    var var_1 = -2147483647i;
    return _wgslsmith_f_op_f32(1481f + _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1353f * var_0.d.x) + var_0.a.x), var_0.c.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-637f * _wgslsmith_f_op_f32(-1000f - -215f))))));
    var var_0 = countOneBits(vec3<u32>(~(~_wgslsmith_sub_u32(u_input.e, u_input.e)), 0u, u_input.e));
    let var_1 = Struct_4(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1803f, _wgslsmith_f_op_f32(select(1404f, -1481f, false)))) - -467f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(515f - 1000f))), _wgslsmith_f_op_f32(func_5(Struct_2(func_1(37295u, global0[_wgslsmith_index_u32(var_0.x, 13u)]), _wgslsmith_mult_u32(var_0.x, 60356u), select(vec2<bool>(true, true), vec2<bool>(true, true), false), vec2<bool>(false, true)), ~(~var_0.x), true, vec3<u32>(var_0.x, 1u << (var_0.x % 32u), var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -124f))), func_2().b, vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1260f + 1486f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-384f * 770f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -295f), _wgslsmith_f_op_f32(ceil(1089f)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-738f - 107f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -328f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(1000f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(940f + 1105f)))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(1053f, 1000f, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-833f))))));
    global1 = _wgslsmith_mult_i32(-2147483647i, _wgslsmith_clamp_i32(2147483647i, u_input.b.x, ~0i));
    var var_2 = select(var_1.b.c, vec2<bool>(true, true), true);
    var var_3 = ~(~countOneBits(~select(vec3<u32>(var_1.b.b, 54086u, var_1.b.b), vec3<u32>(var_1.b.b, var_0.x, u_input.e), true)));
    let x = u_input.a;
    s_output = StorageBuffer(-2573i);
}

