struct Struct_1 {
    a: vec2<i32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec3<i32>,
}

struct Struct_3 {
    a: f32,
    b: vec2<u32>,
}

struct Struct_4 {
    a: u32,
    b: f32,
    c: Struct_3,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3() -> vec2<u32> {
    var var_0 = u_input.a.x;
    let var_1 = u_input.b;
    let var_2 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1665f, 833f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(426f)), -1395f)), any(vec3<bool>(false, true, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-633f)) + _wgslsmith_f_op_f32(-1171f + _wgslsmith_f_op_f32(-504f * 408f)))), _wgslsmith_f_op_f32(-1710f + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-223f, _wgslsmith_div_f32(1211f, 1071f), true)), -614f))));
    let var_3 = Struct_4(5100u, var_2, Struct_3(_wgslsmith_f_op_f32(var_2 + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2))), u_input.a.zy), Struct_2(Struct_1(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.b, -21868i), vec2<i32>(var_1, 0i)) | -vec2<i32>(-1i, var_1), select(u_input.a, vec3<u32>(14330u, u_input.a.x, 1u), vec3<bool>(false, false, true)) << (abs(vec3<u32>(0u, 50829u, 0u)) % vec3<u32>(32u))), vec2<bool>(false, any(vec4<bool>(true, false, true, false))), firstTrailingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(0i, -2147483647i, u_input.b), reverseBits(vec3<i32>(u_input.b, u_input.b, u_input.b)), vec3<i32>(-2147483647i, u_input.b, 13651i)))));
    var var_4 = i32(-1i) * -20720i;
    return _wgslsmith_add_vec2_u32(~(~var_3.d.a.b.xz), countOneBits(~vec2<u32>(var_3.c.b.x, ~u_input.a.x)));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_3) -> f32 {
    let var_0 = any(!select(vec2<bool>(all(vec3<bool>(true, false, false)), true), !select(vec2<bool>(true, true), vec2<bool>(true, false), true), 49336u > arg_1.b.x));
    var var_1 = Struct_4(_wgslsmith_dot_vec3_u32(~max(~vec3<u32>(57196u, u_input.a.x, arg_1.b.x), vec3<u32>(4294967295u, 27442u, u_input.a.x)), ~vec3<u32>(abs(u_input.a.x), 18178u, ~arg_1.b.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_1.a * 650f)))))), arg_1, Struct_2(Struct_1(vec2<i32>(abs(2147483647i), 1i), abs(u_input.a)), select(select(vec2<bool>(false, false), vec2<bool>(var_0, var_0), any(vec3<bool>(true, var_0, var_0))), !(!vec2<bool>(var_0, false)), var_0), _wgslsmith_sub_vec3_i32(~(-vec3<i32>(u_input.b, 45222i, 1i)), vec3<i32>(~2147483647i, u_input.b, u_input.b))));
    var var_2 = Struct_2(var_1.d.a, !select(vec2<bool>(true | var_0, var_0), vec2<bool>(!var_1.d.b.x, true), var_0), var_1.d.c);
    var_2 = Struct_2(Struct_1((max(var_1.d.c.yz, var_1.d.c.xx) << (vec2<u32>(u_input.a.x, 0u) % vec2<u32>(32u))) << (vec2<u32>(2271u, 1u) % vec2<u32>(32u)), var_1.d.a.b), select(vec2<bool>(true, max(4294967295u, u_input.a.x) >= 7159u), select(select(var_2.b, vec2<bool>(true, true), all(vec3<bool>(var_1.d.b.x, var_0, var_2.b.x))), select(select(var_1.d.b, vec2<bool>(true, var_2.b.x), true), !var_2.b, u_input.a.x > var_2.a.b.x), !vec2<bool>(true, var_0)), vec2<bool>(false, true)), var_2.c);
    let var_3 = vec4<bool>(_wgslsmith_f_op_f32(trunc(var_1.b)) <= _wgslsmith_f_op_f32(round(-114f)), select(all(select(!var_2.b, vec2<bool>(true, true), vec2<bool>(var_2.b.x, false))), any(select(select(vec3<bool>(var_0, var_1.d.b.x, true), vec3<bool>(var_0, true, var_2.b.x), vec3<bool>(var_0, var_2.b.x, var_0)), select(vec3<bool>(var_0, true, false), vec3<bool>(var_2.b.x, true, true), var_2.b.x), select(vec3<bool>(true, var_1.d.b.x, false), vec3<bool>(false, var_1.d.b.x, var_0), vec3<bool>(true, var_1.d.b.x, var_0)))), false), !var_1.d.b.x, var_2.b.x);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1154f))))) * arg_0.x);
}

fn func_2() -> bool {
    let var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-648f, 312f, -334f) * vec3<f32>(193f, 1490f, -603f)), _wgslsmith_div_vec3_f32(vec3<f32>(-693f, 468f, 1116f), vec3<f32>(-443f, -538f, -310f))))), Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-302f))), ~func_3())))));
    let var_1 = _wgslsmith_f_op_f32(-var_0) < var_0;
    var var_2 = true;
    var var_3 = Struct_3(1311f, ~(~(~vec2<u32>(9842u, 4294967295u))) | vec2<u32>(u_input.a.x, u_input.a.x));
    let var_4 = Struct_1(-select(max(max(vec2<i32>(-1i, u_input.b), vec2<i32>(-2147483647i, u_input.b)), vec2<i32>(u_input.b, u_input.b) ^ vec2<i32>(-2147483647i, -2147483647i)), firstLeadingBit(min(vec2<i32>(2679i, 1i), vec2<i32>(u_input.b, 2147483647i))), var_1), ~(~select(u_input.a, u_input.a, select(vec3<bool>(false, true, true), vec3<bool>(true, false, var_1), vec3<bool>(false, var_1, true)))));
    return !var_1 | true;
}

fn func_1(arg_0: u32, arg_1: u32) -> Struct_1 {
    let var_0 = select(any(vec3<bool>(u_input.b <= _wgslsmith_sub_i32(35302i, 1i), true & func_2(), true)), false, any(vec4<bool>(true, true, true, true)));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(232f, -1103f, -614f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(166f, 2007f, -189f), vec3<f32>(-597f, 281f, 289f), vec3<bool>(var_0, var_0, false))))), Struct_3(-1000f, u_input.a.zx ^ u_input.a.yy)))), -1718f, _wgslsmith_f_op_f32(f32(-1f) * -188f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(600f, -1000f)) * _wgslsmith_f_op_f32(f32(-1f) * -3139f)) * 1f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(824f - _wgslsmith_f_op_f32(abs(1294f))))))));
    let var_2 = select(select(select(vec3<bool>(true, true, true), select(!vec3<bool>(var_0, var_0, var_0), vec3<bool>(var_0, false, var_0), vec3<bool>(var_0, var_0, var_0)), any(select(vec4<bool>(false, false, var_0, var_0), vec4<bool>(var_0, var_0, var_0, var_0), true))), vec3<bool>(all(!vec3<bool>(true, false, var_0)), var_1.x < _wgslsmith_f_op_f32(f32(-1f) * -1109f), any(vec4<bool>(var_0, true, var_0, false))), all(select(!vec3<bool>(var_0, var_0, true), select(vec3<bool>(true, true, false), vec3<bool>(var_0, var_0, var_0), true), vec3<bool>(false, false, true)))), select(vec3<bool>(true, !(var_1.x >= 182f), true), !(!select(vec3<bool>(var_0, var_0, var_0), vec3<bool>(var_0, false, var_0), vec3<bool>(true, true, var_0))), select(vec3<bool>(all(vec3<bool>(var_0, var_0, var_0)), true, var_0), vec3<bool>(!var_0, true, !var_0), select(!vec3<bool>(var_0, var_0, true), vec3<bool>(var_0, true, var_0), all(vec2<bool>(true, true))))), !(!vec3<bool>(all(vec3<bool>(var_0, var_0, false)), !var_0, true)));
    let var_3 = var_1.x;
    var var_4 = 64042u;
    return Struct_1(_wgslsmith_add_vec2_i32(-(~vec2<i32>(1i, u_input.b) | max(vec2<i32>(2147483647i, u_input.b), vec2<i32>(1i, u_input.b))), _wgslsmith_clamp_vec2_i32(~(-vec2<i32>(u_input.b, u_input.b)), _wgslsmith_add_vec2_i32(reverseBits(vec2<i32>(u_input.b, -9275i)), vec2<i32>(u_input.b, u_input.b)), ~vec2<i32>(-2147483647i, u_input.b) ^ vec2<i32>(41890i, u_input.b))), _wgslsmith_add_vec3_u32(u_input.a, _wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(arg_0, 0u, arg_0) | vec3<u32>(arg_1, 82432u, arg_0), ~vec3<u32>(arg_1, 1u, 2426u)), countOneBits(u_input.a))));
}

fn func_5(arg_0: u32, arg_1: Struct_1) -> vec3<bool> {
    let var_0 = _wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(max(abs(vec2<i32>(arg_1.a.x, u_input.b)), reverseBits(arg_1.a)), vec2<i32>(-30657i, u_input.b) & max(vec2<i32>(-2147483647i, 40185i), vec2<i32>(u_input.b, -1i))), -vec2<i32>(-1i, arg_1.a.x)), vec2<i32>(u_input.b, (~u_input.b | arg_1.a.x) >> (_wgslsmith_dot_vec2_u32(arg_1.b.yx, select(arg_1.b.yx, u_input.a.xx, vec2<bool>(false, true))) % 32u)));
    let var_1 = arg_1;
    let var_2 = _wgslsmith_div_vec4_u32(~_wgslsmith_mult_vec4_u32(reverseBits(abs(vec4<u32>(1u, 5259u, 11911u, 1823u))), ~countOneBits(vec4<u32>(1u, 2584u, arg_0, u_input.a.x))), _wgslsmith_add_vec4_u32(~vec4<u32>(3642u << (1u % 32u), var_1.b.x << (var_1.b.x % 32u), 1u, _wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(arg_1.b.x, arg_1.b.x, 4294967295u))), abs(~(vec4<u32>(arg_0, arg_1.b.x, arg_0, 1u) ^ vec4<u32>(arg_0, 49345u, arg_1.b.x, 4993u)))));
    let var_3 = vec3<i32>(abs(firstLeadingBit(1i) >> (firstLeadingBit(_wgslsmith_mod_u32(arg_0, 4294967295u)) % 32u)), 27992i, max(arg_1.a.x, _wgslsmith_clamp_i32(abs(firstTrailingBit(2147483647i)), _wgslsmith_div_i32(countOneBits(2147483647i), _wgslsmith_div_i32(var_1.a.x, 43992i)), func_1(49866u, ~u_input.a.x).a.x)));
    var var_4 = _wgslsmith_sub_u32(_wgslsmith_sub_u32(~var_1.b.x, ~abs(arg_0)), _wgslsmith_dot_vec4_u32(var_2, _wgslsmith_add_vec4_u32(var_2, reverseBits(var_2))));
    return select(select(vec3<bool>(true, true, true), select(vec3<bool>(all(vec4<bool>(true, false, true, false)), select(false, false, true), true), vec3<bool>(select(true, false, false), true, false), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false)), 4294967295u >= arg_0)), true), select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), true), !select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true)), true), vec3<bool>(var_2.x != _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1231u, 12800u), vec3<u32>(28418u, 4294967295u, 1811u)), false, all(vec3<bool>(true, false, true))), true), !(!select(select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), true), vec3<bool>(true, true, true), true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!vec3<bool>(true, all(vec2<bool>(true, true)), true), !vec3<bool>(all(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false))), true | select(false, true, true), ~u_input.a.x < 4294967295u), select(!func_5(~31921u, func_1(25987u, 0u)), vec3<bool>(func_5(u_input.a.x, func_1(u_input.a.x, u_input.a.x)).x, any(vec4<bool>(true, true, false, true)), true), true));
    let var_1 = vec3<bool>(!var_0.x, var_0.x, all(select(vec4<bool>(false, true, var_0.x, true), select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, true, var_0.x), true), !(!vec4<bool>(var_0.x, false, var_0.x, var_0.x)))));
    let var_2 = func_1(_wgslsmith_mod_u32(12954u, ~(~1u) << (max(~1u, _wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(89128u, 1u, u_input.a.x))) % 32u)), ~1u >> ((~countOneBits(u_input.a.x) ^ reverseBits(u_input.a.x)) % 32u));
    let var_3 = vec3<i32>(abs(max(2147483647i, var_2.a.x) ^ func_1(var_2.b.x, 40663u).a.x), var_2.a.x >> (~(1u >> (var_2.b.x % 32u)) % 32u), -2147483647i) | _wgslsmith_mod_vec3_i32(vec3<i32>(select(-39012i, _wgslsmith_mult_i32(1i, u_input.b), true), _wgslsmith_div_i32(u_input.b, 2147483647i), ~(28252i >> (var_2.b.x % 32u))), vec3<i32>(i32(-1i) * -2147483647i, u_input.b << (25229u % 32u), ~u_input.b));
    let var_4 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -295f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(496f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -665f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(vec3<f32>(1339f, -1082f, -516f), Struct_3(-371f, u_input.a.xz))) * 1f))) + -1000f), -232f);
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, _wgslsmith_add_i32(var_3.x, -18903i));
}

