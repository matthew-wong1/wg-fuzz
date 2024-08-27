struct Struct_1 {
    a: vec3<f32>,
    b: vec4<u32>,
    c: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: i32,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: vec3<i32>,
    d: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, false, false, true);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_3, arg_2: Struct_1) -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_2.a)), arg_2.a)));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(arg_2.a, arg_2.a)), arg_2.a)))));
    let var_1 = Struct_3(global0.x, _wgslsmith_div_i32(-24099i, arg_1.c.x) >> (u_input.c % 32u), abs(_wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, -6177i, arg_1.c.x), arg_1.c) >> (vec3<u32>(u_input.c, 18178u, 4294967295u) % vec3<u32>(32u)), select(vec3<i32>(-4682i, arg_1.c.x, arg_1.d), arg_1.c, global0.wzz), -vec3<i32>(u_input.b, -2147483647i, arg_1.c.x))), u_input.d);
    let var_2 = Struct_2(!global0.zwy, -1i, arg_2, true);
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1622f + arg_2.a.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-384f + 999f) * _wgslsmith_f_op_f32(max(-446f, arg_2.a.x))) - _wgslsmith_f_op_f32(f32(-1f) * -1654f))), arg_2.a.x, _wgslsmith_f_op_f32(-var_0.x));
    return arg_0.x;
}

fn func_2() -> Struct_2 {
    var var_0 = _wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.c, 4294967295u, 35031u) | vec3<u32>(63904u, 33398u, 4294967295u), select(vec3<u32>(u_input.c, u_input.c, u_input.c), vec3<u32>(u_input.c, 0u, 4294967295u), false)) ^ (vec3<u32>(u_input.c, 4294967295u, 10629u) << (~vec3<u32>(u_input.c, 1u, 0u) % vec3<u32>(32u))), countOneBits(vec3<u32>(abs(17370u), ~10470u, func_3(vec2<u32>(u_input.c, u_input.c), Struct_3(true, -1i, vec3<i32>(0i, u_input.a.x, u_input.a.x), -19648i), Struct_1(vec3<f32>(-1195f, -360f, 1255f), vec4<u32>(u_input.c, u_input.c, 34622u, u_input.c), u_input.d)))), vec3<u32>(_wgslsmith_div_u32(u_input.c, u_input.c), 0u, u_input.c)) >> (_wgslsmith_clamp_vec3_u32(select(~(~vec3<u32>(32430u, u_input.c, 4294967295u)), _wgslsmith_clamp_vec3_u32(~vec3<u32>(1u, 1u, 0u), vec3<u32>(0u, 0u, u_input.c), countOneBits(vec3<u32>(u_input.c, u_input.c, u_input.c))), true), max(~select(vec3<u32>(1u, u_input.c, u_input.c), vec3<u32>(35418u, u_input.c, u_input.c), vec3<bool>(true, global0.x, global0.x)), ~vec3<u32>(u_input.c, u_input.c, 101213u) << (firstTrailingBit(vec3<u32>(u_input.c, u_input.c, 91700u)) % vec3<u32>(32u))), ~(~vec3<u32>(u_input.c, u_input.c, u_input.c) ^ reverseBits(vec3<u32>(4294967295u, 66748u, u_input.c)))) % vec3<u32>(32u));
    global0 = vec4<bool>(true, global0.x, global0.x, global0.x);
    var_0 = vec3<u32>(min(~max(u_input.c, u_input.c), 25686u), 5005u, var_0.x);
    global0 = !vec4<bool>(!(!global0.x & false), (true & !global0.x) & true, true, true);
    var var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(1887f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -2032f)))), 748f), abs(vec4<u32>(~var_0.x, u_input.c, _wgslsmith_add_u32(max(u_input.c, var_0.x), _wgslsmith_sub_u32(var_0.x, 53071u)), 54262u)), -2147483647i);
    return Struct_2(vec3<bool>(false || !(!global0.x), any(!(!vec4<bool>(global0.x, true, false, global0.x))), firstTrailingBit(countOneBits(1u)) != var_0.x), -1i, Struct_1(var_1.a, ~var_1.b, abs(var_1.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(var_1.a.x)), _wgslsmith_div_f32(1549f, 648f), true))) == _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-1108f)))), 667f));
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: Struct_2, arg_3: vec4<f32>) -> vec4<bool> {
    global0 = vec4<bool>(all(vec3<bool>(arg_1, true, arg_0.a.x)), arg_2.c.a.x <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(-798f * 597f), arg_0.c.a.x), func_2().a.x, !arg_0.d);
    var var_0 = Struct_3(true, _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(14057i, ~arg_0.b, 2147483647i, arg_2.c.c), -_wgslsmith_div_vec4_i32(vec4<i32>(-1i, 13742i, 27549i, arg_0.c.c), vec4<i32>(2147483647i, 763i, -36459i, arg_0.c.c))), vec4<i32>(max(func_2().b, u_input.d), firstTrailingBit(-1i), arg_2.b, _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, 9738i, u_input.b, -1i), vec4<i32>(-1i, -1i, -2147483647i, arg_0.c.c)), vec4<i32>(arg_0.c.c, u_input.b, u_input.d, 6917i) >> (arg_0.c.b % vec4<u32>(32u))))), _wgslsmith_clamp_vec3_i32(~abs(vec3<i32>(-22412i, 5554i, 61551i)), vec3<i32>(-12379i, arg_2.b, 24426i), max(reverseBits(vec3<i32>(11985i, arg_0.c.c, u_input.a.x)), reverseBits(vec3<i32>(-47200i, arg_0.c.c, arg_0.b)))) & _wgslsmith_div_vec3_i32(-(vec3<i32>(0i, 2147483647i, 59747i) & vec3<i32>(u_input.a.x, 2147483647i, arg_2.b)), vec3<i32>(2147483647i, 19773i, u_input.b) >> (_wgslsmith_add_vec3_u32(vec3<u32>(79692u, u_input.c, arg_0.c.b.x), vec3<u32>(0u, arg_0.c.b.x, arg_2.c.b.x)) % vec3<u32>(32u))), _wgslsmith_clamp_i32((i32(-1i) * -8988i) >> ((~arg_0.c.b.x << (_wgslsmith_dot_vec3_u32(arg_2.c.b.yxw, arg_0.c.b.wyz) % 32u)) % 32u), arg_0.c.c, arg_2.b));
    var_0 = Struct_3(arg_1, 44813i, (vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-10890i, -1i, -35196i, 9726i), vec4<i32>(0i, u_input.a.x, -25788i, 2147483647i)), -1i, -1i) ^ _wgslsmith_div_vec3_i32(vec3<i32>(arg_2.c.c, 1i, var_0.d), _wgslsmith_mult_vec3_i32(vec3<i32>(arg_0.b, arg_0.c.c, 0i), vec3<i32>(arg_2.c.c, var_0.b, var_0.d)))) ^ var_0.c, var_0.b);
    let var_1 = select(u_input.a, ~((select(vec2<i32>(u_input.b, u_input.b), vec2<i32>(arg_2.c.c, -2147483647i), arg_0.a.zy) ^ vec2<i32>(-45034i, 1i)) & -var_0.c.yz), !(!(!(!global0.yz))));
    var var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1323f - 134f)) * 1401f))) >= arg_3.x;
    return select(!select(select(select(vec4<bool>(arg_2.a.x, arg_1, arg_1, false), vec4<bool>(false, true, true, arg_0.d), vec4<bool>(true, false, false, false)), !vec4<bool>(arg_1, true, true, global0.x), arg_0.d), !select(vec4<bool>(arg_2.a.x, var_0.a, true, true), vec4<bool>(true, var_0.a, false, true), false), all(!vec4<bool>(var_0.a, arg_0.d, var_0.a, true))), select(vec4<bool>(arg_2.a.x, true, arg_1 && arg_2.a.x, !select(true, false, false)), select(select(!vec4<bool>(var_0.a, global0.x, arg_2.d, arg_1), !vec4<bool>(arg_0.d, true, arg_0.d, false), select(vec4<bool>(true, true, true, false), vec4<bool>(arg_1, arg_1, global0.x, arg_2.a.x), false)), !select(vec4<bool>(true, true, arg_1, var_0.a), vec4<bool>(arg_0.d, var_0.a, var_0.a, false), true), arg_2.a.x), global0.x), !vec4<bool>(arg_0.d, false || all(vec4<bool>(arg_1, arg_0.d, global0.x, true)), all(select(vec2<bool>(arg_0.a.x, false), vec2<bool>(true, false), global0.x)), (u_input.a.x << (4294967295u % 32u)) >= arg_2.b));
}

fn func_1(arg_0: bool) -> Struct_1 {
    let var_0 = !(!vec2<bool>(arg_0, true));
    global0 = vec4<bool>(true, arg_0, false, true);
    global0 = select(func_4(func_2(), true && select(true, var_0.x, true), Struct_2(select(!global0.wyx, global0.yyy, global0.x), u_input.d, func_2().c, false), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)))), vec4<bool>(true, !func_4(Struct_2(vec3<bool>(false, global0.x, true), u_input.d, Struct_1(vec3<f32>(1179f, 214f, 2265f), vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c), -36852i), true), any(vec4<bool>(true, global0.x, false, true)), func_2(), _wgslsmith_f_op_vec4_f32(vec4<f32>(952f, -171f, 1839f, -1158f) - vec4<f32>(-405f, 487f, 509f, -500f))).x, global0.x, true), select(!(!(!vec4<bool>(var_0.x, var_0.x, var_0.x, true))), vec4<bool>(~1u > _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c), vec4<u32>(u_input.c, u_input.c, 0u, 111025u)), !arg_0, (u_input.c >= u_input.c) != global0.x, all(!global0.xyy)), vec4<bool>(true, arg_0, false, true)));
    global0 = func_4(func_2(), (all(func_2().a) | func_4(func_2(), true, func_2(), _wgslsmith_f_op_vec4_f32(-vec4<f32>(772f, 1404f, -414f, 1000f))).x) == true, Struct_2(vec3<bool>(true, all(global0.xww), true), u_input.a.x, func_2().c, (u_input.c ^ _wgslsmith_mult_u32(u_input.c, 9187u)) >= (~71659u & (u_input.c >> (4294967295u % 32u)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(702f, 822f), _wgslsmith_f_op_f32(f32(-1f) * -573f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1088f)) * _wgslsmith_f_op_f32(select(1401f, -484f, false))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(468f, -1069f))))));
    global0 = !select(select(!vec4<bool>(true, arg_0, arg_0, arg_0), !(!vec4<bool>(true, global0.x, true, var_0.x)), select(func_4(Struct_2(global0.zww, u_input.a.x, Struct_1(vec3<f32>(-292f, 117f, -702f), vec4<u32>(u_input.c, 0u, u_input.c, u_input.c), -38017i), true), true, Struct_2(vec3<bool>(false, arg_0, true), u_input.a.x, Struct_1(vec3<f32>(-732f, -442f, -504f), vec4<u32>(4294967295u, u_input.c, 4294967295u, u_input.c), 4944i), false), vec4<f32>(-576f, -571f, -632f, 160f)), func_4(Struct_2(vec3<bool>(true, global0.x, true), u_input.b, Struct_1(vec3<f32>(-756f, -451f, 1000f), vec4<u32>(1u, u_input.c, 46788u, 1u), u_input.d), arg_0), true, Struct_2(vec3<bool>(arg_0, global0.x, false), u_input.a.x, Struct_1(vec3<f32>(-227f, -1702f, 906f), vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c), -74121i), true), vec4<f32>(-2226f, -871f, -1000f, 491f)), vec4<bool>(var_0.x, var_0.x, true, false))), !(!vec4<bool>(var_0.x, true, true, false)), select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(global0.x, true, arg_0, arg_0), vec4<bool>(arg_0, true, false, false), vec4<bool>(false, true, false, false)), vec4<bool>(false, var_0.x, false, true), var_0.x), !vec4<bool>(true, false, arg_0, true)));
    return func_2().c;
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: vec2<u32>, arg_3: f32) -> Struct_3 {
    var var_0 = func_2();
    let var_1 = Struct_3(!(!all(select(var_0.a, global0.yyz, vec3<bool>(false, global0.x, false)))), max(var_0.b, -_wgslsmith_clamp_i32(~(-2147483647i), arg_0.c, -var_0.c.c)), vec3<i32>(firstTrailingBit(2147483647i), 1i, u_input.d), _wgslsmith_mod_i32(select(u_input.d, firstLeadingBit(_wgslsmith_mod_i32(arg_0.c, 2147483647i)), select(global0.x, var_0.d & false, true)), -1i));
    let var_2 = _wgslsmith_f_op_vec3_f32(arg_0.a * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(func_1(false).a.x)), var_0.c.a.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -522f)))) * vec3<f32>(_wgslsmith_f_op_f32(ceil(656f)), arg_0.a.x, var_0.c.a.x)));
    var var_3 = Struct_2(!(!select(vec3<bool>(var_1.a, true, var_1.a), select(vec3<bool>(false, var_0.d, true), vec3<bool>(true, var_0.d, global0.x), true), var_0.a)), abs(~(~var_0.b) ^ -2147483647i), var_0.c, func_3(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 53058u), arg_2), var_1, func_2().c) == ~(~8613u));
    let var_4 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_3, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_2.x)) + var_2.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(323f)))), _wgslsmith_f_op_f32(451f + -585f), var_0.c.a.x)));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_1(global0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-392f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(484f, -1624f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-946f)))))), ~vec2<u32>(abs(1u), u_input.c), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1052f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(296f - -1310f), _wgslsmith_f_op_f32(273f * -260f))))), -349f));
    global0 = vec4<bool>(func_2().a.x, !(all(!vec4<bool>(true, global0.x, global0.x, global0.x)) | true), var_0.a, !func_4(Struct_2(vec3<bool>(global0.x, false, global0.x), u_input.a.x, Struct_1(vec3<f32>(1146f, 1000f, -992f), vec4<u32>(1846u, 24420u, 8620u, u_input.c), u_input.a.x), false), global0.x, func_2(), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1000f, -177f, -1064f, -728f), vec4<f32>(-2536f, -135f, 821f, -868f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -680f, 470f, 1377f) + vec4<f32>(414f, 1037f, -836f, 427f))))).x);
    var var_1 = Struct_3(false, _wgslsmith_dot_vec3_i32(var_0.c, reverseBits(_wgslsmith_sub_vec3_i32(vec3<i32>(var_0.d, var_0.c.x, 0i), vec3<i32>(var_0.d, u_input.b, u_input.d))) >> (countOneBits(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.c, 4294967295u, u_input.c), vec3<u32>(26616u, u_input.c, 0u))) % vec3<u32>(32u))), abs(-_wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(1i, var_0.d, u_input.b), vec3<i32>(var_0.d, u_input.b, -2147483647i), vec3<i32>(u_input.a.x, u_input.d, u_input.d)), vec3<i32>(u_input.b, -48231i, 56618i))), var_0.d);
    var_1 = Struct_3(!(var_1.c.x <= firstLeadingBit(-var_1.d)), 62564i, vec3<i32>(u_input.d, 23967i, _wgslsmith_mod_i32(32639i >> (1u % 32u), ~52098i)) ^ vec3<i32>(var_1.c.x, _wgslsmith_mult_i32(min(u_input.a.x, u_input.b), _wgslsmith_mult_i32(-2147483647i, var_1.d)), 14151i), -(~(~(~var_1.c.x))));
    let var_2 = ~select(vec3<u32>(_wgslsmith_clamp_u32(u_input.c, u_input.c, u_input.c), 23505u, u_input.c), vec3<u32>(1u, u_input.c, u_input.c) >> ((vec3<u32>(u_input.c, u_input.c, 67529u) & vec3<u32>(u_input.c, u_input.c, 29013u)) % vec3<u32>(32u)), func_5(Struct_1(vec3<f32>(-388f, 649f, -113f), vec4<u32>(u_input.c, 4294967295u, u_input.c, u_input.c), u_input.a.x), _wgslsmith_f_op_f32(sign(230f)), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c, 4294967295u), vec2<u32>(0u, u_input.c)), _wgslsmith_f_op_f32(406f + 1000f)).a) | (vec3<u32>(firstTrailingBit(u_input.c), 0u, _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, u_input.c, 15040u, u_input.c), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 57050u, 56677u, u_input.c), vec4<u32>(79589u, 0u, 48503u, u_input.c)))) << (~vec3<u32>(firstTrailingBit(u_input.c), reverseBits(u_input.c), ~4294967295u) % vec3<u32>(32u)));
    var_1 = func_5(Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(func_1(false).a.x, _wgslsmith_f_op_f32(-547f - 519f), 224f) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(193f, 111f, 2015f) + vec3<f32>(-352f, -1348f, -598f)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-878f, -698f, 1305f))), global0.x))), func_2().c.b, abs(~(~(-15912i)))), _wgslsmith_div_f32(func_2().c.a.x, _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-201f + -1773f)))), var_2.zz, _wgslsmith_div_f32(-295f, -915f));
    var_1 = Struct_3(all(!(!func_2().a)), _wgslsmith_sub_i32(func_2().c.c, _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(countOneBits(vec2<i32>(-50454i, var_1.c.x)), _wgslsmith_mod_vec2_i32(u_input.a, u_input.a)), vec2<i32>(var_1.b, ~13802i))), _wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(reverseBits(select(vec3<i32>(u_input.b, 1i, u_input.b), var_1.c, false)), ~(~vec3<i32>(17019i, u_input.a.x, var_0.d))), (var_0.c | vec3<i32>(-49041i, -1i, -2147483647i)) ^ ~(vec3<i32>(-17111i, u_input.d, u_input.a.x) >> (vec3<u32>(2150u, 44424u, 25067u) % vec3<u32>(32u)))), select(u_input.b, 2147483647i, func_5(func_2().c, _wgslsmith_f_op_f32(-1101f * -1530f), select(var_2.xx, var_2.xy, true), _wgslsmith_f_op_f32(1321f + -1083f)).a == var_1.a));
    var_1 = Struct_3(true, -1i, vec3<i32>(min(func_2().b, 1i), _wgslsmith_mult_i32(~(-4056i), var_0.d | countOneBits(40669i)), (max(var_1.b, 18391i) << (~0u % 32u)) | 19471i), ~var_1.c.x);
    global0 = func_4(Struct_2(vec3<bool>(false, (false && var_1.a) | any(vec4<bool>(true, var_0.a, global0.x, true)), true), _wgslsmith_clamp_i32(func_2().c.c, 0i, func_2().b) & -16636i, Struct_1(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(619f, -588f, -697f)))), func_1(any(vec3<bool>(false, true, global0.x))).b, u_input.d), true), all(!(!(!vec2<bool>(var_0.a, var_1.a)))), func_2(), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(528f, -3189f, 415f, 1058f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1186f, -1378f, -453f, -1510f) - vec4<f32>(-245f, 395f, -750f, -822f)))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -429f), func_1(global0.x).a.x, -133f, -727f), _wgslsmith_f_op_vec4_f32(vec4<f32>(3106f, -1434f, 798f, -644f) + vec4<f32>(-587f, -263f, 281f, -555f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2, ~_wgslsmith_add_u32(func_1(func_4(Struct_2(vec3<bool>(var_0.a, var_0.a, false), u_input.d, Struct_1(vec3<f32>(-337f, 543f, -147f), vec4<u32>(32540u, u_input.c, var_2.x, 4294967295u), -17392i), var_1.a), global0.x, Struct_2(vec3<bool>(false, false, var_0.a), u_input.d, Struct_1(vec3<f32>(2160f, -818f, -1000f), vec4<u32>(u_input.c, u_input.c, 4294967295u, 4294967295u), u_input.b), false), vec4<f32>(1000f, 585f, 1000f, 925f)).x).b.x, _wgslsmith_add_u32(_wgslsmith_add_u32(var_2.x, 75965u), ~u_input.c)));
}

