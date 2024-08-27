struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
}

struct Struct_5 {
    a: f32,
    b: vec2<f32>,
    c: f32,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> f32 {
    var var_0 = true;
    let var_1 = (vec3<u32>(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.b.x, u_input.b.x, u_input.a), u_input.c), 1u) | abs(vec3<u32>(~u_input.d.x, 26658u, u_input.d.x >> (u_input.a % 32u)))) << (vec3<u32>(4294967295u, 25724u, ~(~u_input.c.x)) % vec3<u32>(32u));
    var_0 = all(!select(vec2<bool>(true, true), vec2<bool>(true, true), 1u <= u_input.a)) && true;
    let var_2 = select(select(select(vec3<bool>(all(vec3<bool>(true, false, true)), false, any(vec3<bool>(false, true, true))), vec3<bool>(true, true, false), vec3<bool>(true, all(vec3<bool>(true, false, true)), false)), vec3<bool>(true, any(vec3<bool>(true, true, true)), any(vec3<bool>(true, true, true))), true | (_wgslsmith_f_op_f32(ceil(1517f)) < 499f)), !vec3<bool>(_wgslsmith_mult_u32(4294967295u, 1u) == firstTrailingBit(1u), !select(true, true, false), true), !any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), all(vec4<bool>(false, false, true, true)))));
    var var_3 = _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(6538i, 26398i), ~vec2<i32>(0i, -91388i)), ~(-65390i), _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(5680i, 0i), vec2<i32>(-2147483647i, -406i)), -45278i)), ~vec3<i32>(~(-18114i), ~1i, 0i)), vec3<i32>(-1i) * -_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, 18909i, -1i), reverseBits(vec3<i32>(-2147483647i, 2147483647i, 48478i))));
    return 2510f;
}

fn func_2() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-850f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-951f, _wgslsmith_f_op_f32(f32(-1f) * -1109f)) * -1374f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1302f)) * _wgslsmith_f_op_f32(f32(-1f) * -835f)), _wgslsmith_f_op_f32(-1426f - _wgslsmith_f_op_f32(max(190f, 2011f))))));
    var var_1 = Struct_2(Struct_1(vec2<u32>(4294967295u, 110371u) & (min(u_input.d.zy, u_input.d.xy) >> (firstTrailingBit(vec2<u32>(u_input.c.x, 35600u)) % vec2<u32>(32u)))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(-109f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.x, -526f, true)) - _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(-881f * var_0.x), false))));
    var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -164f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - var_0.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_2.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -746f))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_2.x, _wgslsmith_f_op_f32(var_2.x + var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -793f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-577f, var_2.x, var_2.x, -165f), vec4<f32>(var_2.x, -1000f, var_2.x, var_0.x), vec4<bool>(true, true, true, false))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, var_0.x, var_0.x, 1089f) + vec4<f32>(176f, -354f, -1706f, 783f)), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1152f, var_2.x, -397f, -1189f)))));
    return Struct_2(Struct_1(var_1.a.a));
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: Struct_1, arg_3: vec4<u32>) -> i32 {
    var var_0 = (arg_3 >> (arg_3 % vec4<u32>(32u))) >> (vec4<u32>(41244u, _wgslsmith_sub_u32(~0u >> (1u % 32u), _wgslsmith_mult_u32(arg_2.a.x, u_input.c.x)), arg_2.a.x, ~(~u_input.d.x) | 25419u) % vec4<u32>(32u));
    let var_1 = func_2();
    var var_2 = Struct_3(any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))));
    var var_3 = any(!select(vec2<bool>(true, true), !select(vec2<bool>(false, var_2.a), vec2<bool>(false, true), false), true));
    var_0 = ~(~arg_3);
    return 1i >> ((~39675u | select(arg_3.x, firstLeadingBit(var_0.x), select(var_2.a, false, var_2.a))) % 32u);
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: vec4<f32>) -> Struct_3 {
    let var_0 = Struct_4(func_2(), u_input.c.x);
    var var_1 = _wgslsmith_dot_vec2_i32(arg_1.xz, vec2<i32>(_wgslsmith_div_i32(i32(-1i) * -arg_1.x, -(~(-19382i))), arg_1.x));
    let var_2 = !vec4<bool>(any(select(select(vec2<bool>(true, true), vec2<bool>(true, false), false), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)), arg_2.x > arg_2.x)), true, true, !all(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), true)));
    var_1 = arg_1.x;
    let var_3 = true;
    return Struct_3(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_2.x - arg_2.x), _wgslsmith_f_op_f32(func_3()))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_2.x)) - -798f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_1(min(~u_input.b.zz, vec2<u32>(~u_input.c.x, ~24391u))), vec4<i32>(_wgslsmith_clamp_i32(-9738i, func_1(28237i, 2147483647i, Struct_1(u_input.d.zx), u_input.c) >> (u_input.c.x % 32u), countOneBits(i32(-1i) * -1439i)), -20254i, select(countOneBits(-24043i), 1i, true) | select(_wgslsmith_add_i32(38749i, -5983i), _wgslsmith_mod_i32(0i, 2147483647i), true), _wgslsmith_mod_i32(-1i, _wgslsmith_add_i32(_wgslsmith_sub_i32(1i, 46973i), 1i))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-595f, 1199f)) + _wgslsmith_div_f32(191f, 491f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1691f - 479f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, 1619f) - _wgslsmith_f_op_f32(abs(104f))), 431f) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-225f, -195f, -204f, -925f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1028f, 736f, -312f, 2270f)))))));
    var var_1 = firstTrailingBit(abs(~_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -2147483647i), vec2<i32>(46157i, 1i)), ~0i)));
    var_0 = Struct_3(var_0.a);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(34768i, -1i, -max(-2147483647i, 733i), 2147483647i >> (u_input.d.x % 32u)) >> (u_input.c % vec4<u32>(32u)), u_input.b.x, ~1u, 2147483647i, _wgslsmith_dot_vec3_i32(firstLeadingBit(-(~vec3<i32>(2147483647i, 2147483647i, 0i))), _wgslsmith_sub_vec3_i32(~countOneBits(vec3<i32>(0i, 3256i, 2147483647i)), -vec3<i32>(0i, -8420i, 2147483647i) >> ((u_input.d ^ vec3<u32>(u_input.d.x, 4294967295u, 1u)) % vec3<u32>(32u)))));
}

