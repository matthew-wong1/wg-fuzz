struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: f32,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
    c: i32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, false, true);

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<bool>, arg_1: i32) -> vec3<bool> {
    let var_0 = vec4<f32>(-285f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(2361f))) - _wgslsmith_f_op_f32(ceil(-412f))) * _wgslsmith_f_op_f32(floor(-588f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-2321f, -1131f)) + _wgslsmith_f_op_f32(f32(-1f) * -925f)) + -2650f) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-429f - -128f) * 2101f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(933f)), _wgslsmith_f_op_f32(sign(-1383f)), global0.x)) - -1152f))));
    var var_1 = Struct_1(vec3<bool>(all(arg_0), any(vec4<bool>(global0.x, true, true, false)), false), arg_1, ~_wgslsmith_sub_vec2_i32(~(vec2<i32>(-7122i, arg_1) >> (u_input.b.xx % vec2<u32>(32u))), _wgslsmith_div_vec2_i32(-vec2<i32>(arg_1, arg_1), -vec2<i32>(0i, arg_1))));
    let var_2 = ~_wgslsmith_mult_vec2_u32(reverseBits(~u_input.b.yz), u_input.b.zy);
    var_1 = Struct_1(arg_0, abs(-82992i >> (var_2.x % 32u)), vec2<i32>(abs(arg_1), reverseBits(~countOneBits(-1i))));
    let var_3 = !vec4<bool>(any(select(var_1.a, var_1.a, arg_1 == arg_1)), all(vec3<bool>(true, true, true)), !select(true, true, var_1.a.x), !global0.x);
    return arg_0;
}

fn func_2(arg_0: vec2<u32>, arg_1: vec3<bool>, arg_2: Struct_2) -> vec3<bool> {
    var var_0 = arg_2;
    var var_1 = max(~(~arg_0.x), u_input.a);
    global0 = select(vec3<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -377f) - _wgslsmith_f_op_f32(var_0.d.x - -1000f)) < _wgslsmith_f_op_f32(min(arg_2.c, _wgslsmith_f_op_f32(exp2(arg_2.c)))), true, 1u >= _wgslsmith_sub_u32(69661u ^ arg_0.x, u_input.b.x)), func_3(arg_2.b.a, abs(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -442i, 2147483647i, -1i) << (vec4<u32>(0u, u_input.b.x, arg_0.x, arg_0.x) % vec4<u32>(32u)), vec4<i32>(-34872i, 13534i, var_0.b.b, arg_2.b.c.x) & vec4<i32>(arg_2.b.c.x, -1i, 44337i, 27386i)))), select(func_3(vec3<bool>(all(vec4<bool>(false, arg_1.x, var_0.b.a.x, false)), true, global0.x), _wgslsmith_add_i32(~arg_2.b.c.x, 51455i)), vec3<bool>(arg_2.b.a.x, arg_2.c <= var_0.c, arg_2.b.a.x), !arg_2.b.a));
    let var_2 = Struct_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-370f))), -825f)), var_0.b, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a)), 1082f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_2.d.x)))))), arg_2.d);
    global0 = arg_1;
    return select(var_2.b.a, select(var_0.b.a, func_3(!arg_1, -1i), arg_1.x), select(!(u_input.b.x != 4294967295u), true, false) && !var_0.b.a.x);
}

fn func_1(arg_0: vec2<u32>, arg_1: vec3<f32>, arg_2: f32, arg_3: Struct_2) -> vec3<bool> {
    global0 = select(!(!vec3<bool>(!arg_3.b.a.x, arg_3.b.a.x, arg_3.d.x <= -1963f)), arg_3.b.a, !func_2((u_input.b.zy >> (u_input.b.xz % vec2<u32>(32u))) >> (select(arg_0, u_input.b.zz, false) % vec2<u32>(32u)), arg_3.b.a, arg_3));
    global0 = select(func_3(!(!arg_3.b.a), -25733i), select(vec3<bool>(true, all(vec4<bool>(false, global0.x, global0.x, global0.x)) || all(vec4<bool>(arg_3.b.a.x, arg_3.b.a.x, arg_3.b.a.x, global0.x)), false), !(!func_2(arg_0, arg_3.b.a, Struct_2(arg_2, Struct_1(vec3<bool>(true, arg_3.b.a.x, global0.x), arg_3.b.b, vec2<i32>(arg_3.b.b, -3432i)), -2001f, arg_3.d))), arg_3.b.a.x && func_3(!vec3<bool>(global0.x, arg_3.b.a.x, global0.x), min(-1i, arg_3.b.c.x)).x), !arg_3.b.a);
    let var_0 = arg_3.b;
    var var_1 = -729f;
    let var_2 = Struct_1(vec3<bool>(false, !global0.x, arg_3.b.a.x), arg_3.b.b, -vec2<i32>(-16889i, var_0.b));
    return vec3<bool>(!(!(!var_0.a.x)), true, all(!vec3<bool>(arg_3.b.a.x, all(vec4<bool>(global0.x, false, arg_3.b.a.x, global0.x)), select(arg_3.b.a.x, true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !select(!(!func_1(vec2<u32>(1u, 0u), vec3<f32>(2483f, 652f, 285f), 364f, Struct_2(-408f, Struct_1(vec3<bool>(true, global0.x, false), 0i, vec2<i32>(-29089i, -2147483647i)), -647f, vec4<f32>(758f, -534f, -546f, 195f)))), func_1(vec2<u32>(u_input.b.x, 1u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(439f, 894f, -340f))), _wgslsmith_f_op_f32(min(-436f, _wgslsmith_f_op_f32(-526f + -223f))), Struct_2(-279f, Struct_1(vec3<bool>(false, global0.x, global0.x), -34439i, vec2<i32>(-6956i, 2147483647i)), _wgslsmith_f_op_f32(floor(1168f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -145f, -1310f, 177f) + vec4<f32>(457f, 460f, 1497f, -779f)))), vec3<bool>((38175i >> (u_input.a % 32u)) <= _wgslsmith_mod_i32(0i, -29083i), true, true));
    var var_0 = Struct_1(select(vec3<bool>(false, !func_3(vec3<bool>(true, false, true), 0i).x, false), func_1(max(u_input.b.yx, u_input.b.zy & u_input.b.yy), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1300f, -105f, -1210f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-467f * -1072f) + _wgslsmith_f_op_f32(trunc(-1000f))), Struct_2(423f, Struct_1(vec3<bool>(global0.x, global0.x, false), -2147483647i, vec2<i32>(10463i, -1i)), _wgslsmith_f_op_f32(f32(-1f) * -442f), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-2594f, -401f, -1090f, -1532f))))), !any(select(vec3<bool>(false, true, global0.x), vec3<bool>(global0.x, false, true), vec3<bool>(true, global0.x, true)))), ~max(countOneBits(~(-2147483647i)), 1i), reverseBits(~vec2<i32>(0i, 12190i) | select(firstTrailingBit(vec2<i32>(-21192i, 1i)), vec2<i32>(1i, 0i), global0.yy)));
    var_0 = Struct_1(var_0.a, var_0.b, _wgslsmith_div_vec2_i32(abs(var_0.c), vec2<i32>(-35216i, -abs(-2147483647i))));
    var_0 = Struct_1(select(!var_0.a, !(!(!var_0.a)), func_2(_wgslsmith_mod_vec2_u32(u_input.b.xx << (vec2<u32>(u_input.b.x, 4294967295u) % vec2<u32>(32u)), vec2<u32>(4294967295u, 4294967295u)), !var_0.a, Struct_2(1158f, Struct_1(var_0.a, 64828i, vec2<i32>(-74397i, var_0.c.x)), _wgslsmith_div_f32(570f, -421f), _wgslsmith_f_op_vec4_f32(vec4<f32>(641f, 1094f, 390f, 917f) * vec4<f32>(239f, -343f, -2503f, -375f)))).x), var_0.c.x, vec2<i32>(abs(1i), _wgslsmith_clamp_i32(_wgslsmith_div_i32(1i, var_0.b), 1i, -_wgslsmith_sub_i32(-2236i, 1i))));
    var var_1 = Struct_2(-1907f, Struct_1(func_3(func_1(_wgslsmith_div_vec2_u32(u_input.b.xx, vec2<u32>(34125u, 26375u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 817f, -892f)), _wgslsmith_f_op_f32(f32(-1f) * -1498f), Struct_2(-360f, Struct_1(vec3<bool>(var_0.a.x, global0.x, var_0.a.x), 0i, vec2<i32>(43109i, 1i)), -825f, vec4<f32>(-365f, 780f, -108f, 779f))), 23483i), var_0.b, var_0.c), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-166f + -1861f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -733f) + 135f)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1147f, 901f, -749f, 1629f)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-957f, -448f, 2243f, -315f), vec4<f32>(1214f, -170f, -2086f, 283f), vec4<bool>(var_0.a.x, false, true, global0.x))), vec4<f32>(509f, -1599f, 568f, 1921f), var_0.a.x)))))));
    global0 = !vec3<bool>(func_3(func_3(var_1.b.a, ~var_0.c.x), select(1i, -var_1.b.b, var_0.a.x)).x, func_2(_wgslsmith_div_vec2_u32(vec2<u32>(1u, u_input.a), u_input.b.yy), !(!var_0.a), Struct_2(_wgslsmith_f_op_f32(-1101f - -2036f), Struct_1(vec3<bool>(false, var_0.a.x, global0.x), 30910i, var_0.c), _wgslsmith_f_op_f32(var_1.c - var_1.d.x), _wgslsmith_f_op_vec4_f32(abs(var_1.d)))).x, !all(func_1(vec2<u32>(4294967295u, 4294967295u), var_1.d.zyx, var_1.c, Struct_2(-2363f, Struct_1(vec3<bool>(false, true, var_1.b.a.x), var_0.b, var_1.b.c), var_1.a, vec4<f32>(313f, var_1.c, var_1.c, -1311f)))));
    let var_2 = var_0.a.x;
    let var_3 = Struct_2(1983f, Struct_1(func_2(u_input.b.yy, vec3<bool>(false, true, any(vec4<bool>(false, var_1.b.a.x, true, false))), Struct_2(_wgslsmith_f_op_f32(step(var_1.a, -652f)), var_1.b, var_1.d.x, vec4<f32>(-425f, var_1.c, 347f, var_1.a))), 2147483647i, ~vec2<i32>(var_1.b.b, -var_0.c.x)), 1206f, var_1.d);
    var var_4 = Struct_2(-1223f, Struct_1(var_3.b.a, -(var_1.b.b << (u_input.a % 32u)), max(-select(vec2<i32>(-47563i, var_3.b.b), vec2<i32>(-1i, var_1.b.c.x), global0.x), ~var_3.b.c)), var_1.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_1.d + _wgslsmith_f_op_vec4_f32(select(var_1.d, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -340f, var_3.c, var_3.a)), true)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, ~1u, u_input.b.x) >> (u_input.b % vec3<u32>(32u)), vec3<u32>(firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 0u, u_input.c, u_input.c), vec4<u32>(u_input.c, u_input.c, 15010u, 28834u))), u_input.a, u_input.a), u_input.b), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1517f, var_1.a)), var_4.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(272f))), var_4.a, var_4.a)), var_0.c.x << (~max(firstLeadingBit(52025u), abs(u_input.b.x)) % 32u), ~(~abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_3.b.b, var_0.b, var_3.b.b, 25331i), vec4<i32>(var_1.b.b, var_4.b.b, -2147483647i, var_1.b.c.x), vec4<i32>(0i, -5707i, var_3.b.c.x, 1i)))));
}

