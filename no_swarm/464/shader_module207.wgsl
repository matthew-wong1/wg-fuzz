struct Struct_1 {
    a: u32,
    b: bool,
    c: bool,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec3<f32>,
    c: f32,
    d: i32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: bool,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec4<u32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: Struct_2) -> f32 {
    var var_0 = _wgslsmith_clamp_u32(~(~_wgslsmith_mult_u32(firstTrailingBit(0u), u_input.a.x)), ~_wgslsmith_clamp_u32(43973u, arg_0, _wgslsmith_sub_u32(67810u, 1492u)), reverseBits(0u));
    let var_1 = vec2<u32>(min(_wgslsmith_mult_u32(arg_1.a, ~(~1u)), 4294967295u), ~(~16735u));
    var_0 = ~(~max(88005u, ~u_input.a.x));
    var var_2 = Struct_3(vec4<bool>(all(select(vec2<bool>(true, arg_1.b), !vec2<bool>(true, arg_1.c), !vec2<bool>(arg_1.c, arg_1.b))), !select(!arg_1.c, !arg_1.c, arg_1.c), false, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(arg_2.b.x)), -2475f)) > arg_2.b.x), arg_1.b, Struct_2(_wgslsmith_f_op_vec2_f32(arg_2.a - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_2.b.xx * arg_2.b.xz), arg_2.a)), _wgslsmith_f_op_vec3_f32(arg_2.b - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(arg_2.b + arg_2.b)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -784f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1074f * -2647f), _wgslsmith_f_op_f32(trunc(-1055f))))), -1i));
    var_2 = Struct_3(vec4<bool>(select(false, true, true), !(!(717f > var_2.c.b.x)), var_2.b, var_2.b), false && any(!select(var_2.a, var_2.a, false)), Struct_2(arg_2.a, _wgslsmith_f_op_vec3_f32(trunc(arg_2.b)), _wgslsmith_div_f32(1162f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1743f))), _wgslsmith_mod_i32(select(1i, -arg_2.d, var_2.b), _wgslsmith_clamp_i32(min(1i, var_2.c.d), 46936i, _wgslsmith_sub_i32(arg_2.d, arg_2.d)))));
    return _wgslsmith_f_op_f32(ceil(arg_2.a.x));
}

fn func_4(arg_0: Struct_3, arg_1: u32, arg_2: Struct_3, arg_3: Struct_1) -> bool {
    let var_0 = arg_0.a.zww;
    return arg_0.a.x;
}

fn func_2(arg_0: vec3<i32>, arg_1: u32) -> Struct_3 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -135f), 551f)), vec3<f32>(-287f, _wgslsmith_f_op_f32(-270f * _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(f32(-1f) * -542f)), -675f, -1i);
    let var_1 = Struct_1(2543u, func_4(Struct_3(vec4<bool>(false, select(true, false, false), true, true), true, var_0), ~(~u_input.a.x) << (_wgslsmith_mod_u32(18474u, 37474u) % 32u), Struct_3(vec4<bool>(true, true, true, true), true, var_0), Struct_1(0u, !(-124f <= var_0.a.x), true, _wgslsmith_f_op_f32(func_3(abs(40829u), Struct_1(31564u, true, true, var_0.a.x, var_0.a.x), var_0)), -1177f)), 45986u == _wgslsmith_mod_u32(~_wgslsmith_div_u32(4294967295u, 7430u), u_input.a.x), -1709f, _wgslsmith_f_op_f32(-var_0.b.x));
    var var_2 = _wgslsmith_mod_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(abs(vec2<u32>(0u, u_input.a.x)), _wgslsmith_mod_vec2_u32(vec2<u32>(11174u, u_input.a.x), u_input.a.xy)), _wgslsmith_mod_vec2_u32(vec2<u32>(0u, 33840u) ^ vec2<u32>(4294967295u, arg_1), vec2<u32>(arg_1, u_input.a.x))), ~(~arg_1)), ~(_wgslsmith_div_u32(~46819u, ~u_input.a.x) & ~(~0u)));
    var_2 = ~_wgslsmith_clamp_u32(39512u, ~(~1u), abs(~(~1u)));
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-583f, var_0.c, var_1.b))))), var_1.d, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(round(3083f))))));
    return Struct_3(!(!vec4<bool>(false, false, !var_1.c, var_1.c)), !var_1.c, Struct_2(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1543f, var_1.d) + vec2<f32>(-1465f, var_0.a.x)))), _wgslsmith_f_op_vec3_f32(var_3 - _wgslsmith_f_op_vec3_f32(-var_3)), _wgslsmith_f_op_f32(var_0.c * var_1.d), -1i));
}

fn func_5(arg_0: vec3<f32>, arg_1: i32, arg_2: Struct_3) -> vec2<bool> {
    var var_0 = _wgslsmith_add_u32(_wgslsmith_sub_u32(~abs(select(u_input.a.x, u_input.a.x, arg_2.b)), 23326u), _wgslsmith_add_u32(~0u, ~u_input.a.x));
    var var_1 = arg_0;
    var var_2 = _wgslsmith_sub_i32(1i, arg_2.c.d);
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(arg_2.c.b, _wgslsmith_f_op_vec3_f32(-arg_0))));
    var_2 = firstTrailingBit(~reverseBits(~(-30289i)));
    return arg_2.a.zw;
}

fn func_1(arg_0: vec3<i32>, arg_1: vec4<f32>, arg_2: u32) -> vec3<bool> {
    var var_0 = _wgslsmith_sub_vec2_i32(~arg_0.xy, select(_wgslsmith_clamp_vec2_i32(vec2<i32>(2691i, arg_0.x) ^ (arg_0.yx >> (vec2<u32>(arg_2, 4294967295u) % vec2<u32>(32u))), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(14173i, arg_0.x, arg_0.x, -1i), vec4<i32>(arg_0.x, arg_0.x, -18766i, 0i)), _wgslsmith_mod_i32(-2147483647i, -2147483647i)), _wgslsmith_sub_vec2_i32(-arg_0.zy, vec2<i32>(arg_0.x, 20971i))), _wgslsmith_sub_vec2_i32(firstTrailingBit(arg_0.xy), _wgslsmith_div_vec2_i32(arg_0.xy, arg_0.xz)), !func_5(vec3<f32>(-601f, 452f, -912f), firstLeadingBit(arg_0.x), func_2(vec3<i32>(arg_0.x, 54041i, arg_0.x), 1u))));
    var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(352f, -1148f) * vec2<f32>(-518f, 344f)), arg_1.yw, func_5(arg_1.yzy, 0i, Struct_3(vec4<bool>(false, true, false, true), true, Struct_2(vec2<f32>(arg_1.x, arg_1.x), arg_1.zxy, arg_1.x, 11747i))).x))) * arg_1.xw), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(339f, arg_1.x, 1386f))))) - _wgslsmith_f_op_vec3_f32(-func_2(vec3<i32>(arg_0.x, 42660i, var_0.x), 4294967295u).c.b)) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(step(-722f, arg_1.x)), -128f, _wgslsmith_f_op_f32(-arg_1.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.x * arg_1.x), arg_1.x)))), _wgslsmith_clamp_i32(-arg_0.x, 0i, arg_0.x));
    var_1 = Struct_2(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.x, var_1.c)), -481f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.x)), -1280f)), func_2(firstTrailingBit(arg_0), ~countOneBits(~4294967295u)).c.b, _wgslsmith_f_op_f32(sign(-982f)), ~arg_0.x);
    var_0 = vec2<i32>(abs(_wgslsmith_sub_i32(select(var_0.x, max(30093i, arg_0.x), false), 1i)), -(-72321i << (~countOneBits(arg_2) % 32u)));
    let var_2 = vec3<i32>(-6212i, ~arg_0.x, var_1.d);
    return select(select(select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), false), !func_2(vec3<i32>(1i, 12908i, var_2.x), 0u).a.zxy, true), vec3<bool>(!func_5(vec3<f32>(var_1.b.x, arg_1.x, arg_1.x), var_0.x, Struct_3(vec4<bool>(true, true, true, false), true, Struct_2(vec2<f32>(143f, arg_1.x), var_1.b, var_1.c, var_1.d))).x, false, !func_4(Struct_3(vec4<bool>(false, true, true, true), false, Struct_2(arg_1.zz, var_1.b, var_1.b.x, 23188i)), 7066u, Struct_3(vec4<bool>(true, true, true, true), false, Struct_2(var_1.b.zx, var_1.b, arg_1.x, var_1.d)), Struct_1(29497u, true, true, arg_1.x, var_1.a.x))), vec3<bool>(true, true, true)), vec3<bool>(func_4(func_2(_wgslsmith_sub_vec3_i32(var_2, vec3<i32>(arg_0.x, arg_0.x, var_2.x)), reverseBits(u_input.a.x)), _wgslsmith_div_u32(4294967295u, _wgslsmith_dot_vec3_u32(u_input.a, u_input.a)), func_2(vec3<i32>(var_2.x, 12873i, var_0.x), u_input.a.x), Struct_1(1u, false, false, _wgslsmith_div_f32(arg_1.x, arg_1.x), arg_1.x)), reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(55590u, 1u, 810u, 3811u), vec4<u32>(u_input.a.x, u_input.a.x, 57381u, u_input.a.x))) >= ~(~u_input.a.x), !any(func_5(vec3<f32>(arg_1.x, -1000f, arg_1.x), arg_0.x, Struct_3(vec4<bool>(true, false, true, false), true, Struct_2(arg_1.zx, vec3<f32>(arg_1.x, -1749f, var_1.c), var_1.b.x, arg_0.x))))), any(vec4<bool>(~arg_2 <= _wgslsmith_mod_u32(1u, u_input.a.x), all(vec3<bool>(true, false, false)), true, all(vec3<bool>(true, true, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(func_1(vec3<i32>(0i, _wgslsmith_div_i32(-28067i, 37689i), 1i), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -545f), 1000f, _wgslsmith_f_op_f32(f32(-1f) * -251f), 293f), max(15308u, 30123u) | firstLeadingBit(u_input.a.x))) & true;
    var_0 = !(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(f32(-1f) * -107f)) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(426f))))));
    var var_1 = Struct_1(~4294967295u, true, !func_1(vec3<i32>(2147483647i, -24549i, 12442i) << (vec3<u32>(u_input.a.x, 36542u, 0u) % vec3<u32>(32u)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(155f, 1104f, -1091f, -1022f) * vec4<f32>(182f, 985f, -317f, 325f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1168f, 379f, -932f, -618f))), _wgslsmith_mult_u32(u_input.a.x, u_input.a.x)).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -154f))), _wgslsmith_f_op_f32(1000f * 1674f));
    var_1 = Struct_1(~u_input.a.x, (~_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 0i, 11917i, 0i), vec4<i32>(-46444i, 32247i, 30759i, -11111i)) << (u_input.a.x % 32u)) > min(1i, reverseBits(6135i)), select(true, var_1.b, var_1.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_1.d, var_1.e)))) + -560f), var_1.e);
    var_0 = func_5(vec3<f32>(var_1.e, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(158f, -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d))), _wgslsmith_div_i32(_wgslsmith_div_i32(_wgslsmith_mod_i32(725i, -1i), select(2147483647i, 0i, true)), 1i), Struct_3(vec4<bool>(true, true & var_1.b, var_1.b, true), var_1.b, Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.d, var_1.d)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1015f, 1137f, var_1.d)), _wgslsmith_div_f32(-383f, var_1.d), _wgslsmith_mod_i32(2147483647i, 5350i)))).x || var_1.c;
    let var_2 = vec3<bool>(var_1.b, !any(vec2<bool>(true, true)), var_1.c);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.d, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_1.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.e))), var_1.d))), firstTrailingBit(vec4<u32>(3313u, ~abs(var_1.a), 0u, var_1.a)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.d, var_1.d) - vec2<f32>(var_1.e, var_1.e)) + vec2<f32>(var_1.d, var_1.d)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(467f, var_1.d), vec2<f32>(523f, 419f))), vec2<f32>(var_1.e, 629f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_1.e, 1000f))))))));
}

