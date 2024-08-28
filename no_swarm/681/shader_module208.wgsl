struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: vec2<bool>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec4<bool>,
    c: vec4<bool>,
    d: Struct_1,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2) -> bool {
    var var_0 = vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.a.x, min(-5930i, 1i), _wgslsmith_add_i32(u_input.a.x, 0i), ~(-12271i)) >> (vec4<u32>(1u, abs(41204u), 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.b.x, u_input.b.x, 5301u), vec4<u32>(6893u, 35051u, arg_0.e.x, 0u))) % vec4<u32>(32u)), vec4<i32>(~(~0i), u_input.a.x, -u_input.a.x, -(arg_0.d.b.x ^ arg_0.a.x))), _wgslsmith_dot_vec4_i32(abs(vec4<i32>(~(-120i), max(arg_0.d.b.x, -55288i), firstTrailingBit(u_input.a.x), 1410i)), _wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(-vec4<i32>(arg_0.a.x, -34669i, u_input.a.x, arg_0.d.b.x), ~vec4<i32>(u_input.a.x, u_input.a.x, 1i, u_input.a.x), vec4<i32>(u_input.a.x, 2147483647i, u_input.a.x, 64865i) >> (vec4<u32>(51754u, arg_0.e.x, 0u, u_input.b.x) % vec4<u32>(32u))), countOneBits(max(vec4<i32>(1i, -28216i, arg_0.d.b.x, u_input.a.x), vec4<i32>(-2147483647i, u_input.a.x, -27510i, -13279i))))), u_input.a.x, -28286i);
    var_0 = -vec4<i32>(abs(_wgslsmith_div_i32(arg_0.a.x, u_input.a.x)), -_wgslsmith_mod_i32(~(-52634i), _wgslsmith_dot_vec2_i32(u_input.a.yz, vec2<i32>(-2147483647i, u_input.a.x))), u_input.a.x, _wgslsmith_mult_i32(min(u_input.a.x, ~arg_0.a.x), -2147483647i));
    var var_1 = _wgslsmith_f_op_f32(sign(614f));
    let var_2 = u_input.a;
    var var_3 = vec2<i32>(var_0.x, var_0.x);
    return var_0.x < var_3.x;
}

fn func_2(arg_0: u32, arg_1: vec4<bool>) -> vec4<i32> {
    var var_0 = Struct_1(true, select(u_input.a, firstTrailingBit(~u_input.a), !arg_1.wzy), vec2<bool>(!arg_1.x, arg_1.x == true), arg_1);
    var var_1 = all(vec2<bool>(true, !var_0.d.x || (true & (u_input.b.x > arg_0))));
    var_0 = Struct_1(true, ~(-firstTrailingBit(var_0.b)), select(select(vec2<bool>(var_0.a, select(var_0.a, var_0.c.x, var_0.c.x)), arg_1.xy, func_3(Struct_2(vec3<i32>(0i, u_input.a.x, u_input.a.x), vec4<bool>(var_0.d.x, arg_1.x, true, var_0.a), vec4<bool>(var_0.a, var_0.a, arg_1.x, var_0.a), Struct_1(true, vec3<i32>(var_0.b.x, u_input.a.x, 0i), var_0.d.yz, vec4<bool>(true, true, var_0.c.x, false)), vec3<u32>(1u, 1u, 0u)))), select(var_0.d.xx, vec2<bool>(true, false), select(var_0.d.xw, vec2<bool>(var_0.c.x, var_0.a), vec2<bool>(true, true))), var_0.c), !select(!select(vec4<bool>(false, true, var_0.a, true), vec4<bool>(false, true, arg_1.x, arg_1.x), var_0.d), !(!var_0.d), arg_1));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(488f + -1000f), -911f, all(arg_1.wy)))))) - -819f);
    var_2 = -1006f;
    return ~vec4<i32>(countOneBits(34420i), -var_0.b.x, -2147483647i, _wgslsmith_mult_i32(u_input.a.x, var_0.b.x ^ var_0.b.x) >> (1u % 32u));
}

fn func_1(arg_0: u32, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec4<bool>) -> f32 {
    let var_0 = arg_2.b;
    let var_1 = func_2(reverseBits(u_input.b.x), select(vec4<bool>(true, all(vec3<bool>(false, arg_1.d.d.x, false)), true, arg_1.e.x <= u_input.b.x), arg_2.d, true)) >> ((firstTrailingBit(_wgslsmith_mod_vec4_u32(abs(vec4<u32>(0u, 4294967295u, 9888u, 4294967295u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(292u, arg_1.e.x, 9948u, arg_1.e.x), vec4<u32>(101131u, 4294967295u, u_input.b.x, u_input.b.x), vec4<u32>(1u, arg_1.e.x, arg_0, arg_1.e.x)))) & ~(~vec4<u32>(4294967295u, 11223u, 0u, u_input.b.x))) % vec4<u32>(32u));
    let var_2 = ~_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_div_u32(17680u, 1u), u_input.b.x, arg_1.e.x, 0u), ~(~(vec4<u32>(29738u, u_input.b.x, u_input.b.x, arg_0) >> (vec4<u32>(81504u, u_input.b.x, 4294967295u, 36739u) % vec4<u32>(32u)))));
    let var_3 = -2175f;
    var var_4 = _wgslsmith_sub_vec2_i32(abs(~vec2<i32>(arg_2.b.x, 2147483647i) >> (_wgslsmith_clamp_vec2_u32(select(u_input.b, vec2<u32>(u_input.b.x, u_input.b.x), arg_2.c), vec2<u32>(arg_1.e.x, 4640u), select(vec2<u32>(var_2, arg_0), u_input.b, arg_3.yx)) % vec2<u32>(32u))), abs(~(reverseBits(arg_1.a.zz) >> (firstTrailingBit(arg_1.e.xy) % vec2<u32>(32u)))));
    return _wgslsmith_f_op_f32(-var_3);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1403f - _wgslsmith_f_op_f32(func_1(12511u, Struct_2(vec3<i32>(u_input.a.x, u_input.a.x, 20382i), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), Struct_1(false, vec3<i32>(u_input.a.x, u_input.a.x, 34069i), vec2<bool>(false, true), vec4<bool>(false, true, true, false)), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)), Struct_1(true, vec3<i32>(-2970i, 0i, -2147483647i), vec2<bool>(true, true), vec4<bool>(false, true, true, true)), vec4<bool>(false, false, false, false)))), 2072f))) * _wgslsmith_f_op_f32(f32(-1f) * -805f));
    var var_1 = Struct_1(all(vec2<bool>(1u < _wgslsmith_clamp_u32(1u, u_input.b.x, u_input.b.x), any(vec4<bool>(true, true, true, true)))), _wgslsmith_clamp_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(u_input.a.x, -43052i, 17855i), u_input.a, u_input.a) >> (~(~(~vec3<u32>(u_input.b.x, u_input.b.x, 4294967295u))) % vec3<u32>(32u)), vec2<bool>(true, any(vec2<bool>(true, true))), select(select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true)), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), false), func_3(Struct_2(u_input.a, vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), Struct_1(true, vec3<i32>(u_input.a.x, 2147483647i, -5906i), vec2<bool>(false, false), vec4<bool>(false, true, true, true)), vec3<u32>(u_input.b.x, u_input.b.x, 4294967295u)))), vec4<bool>(true, true, true, true), true & select(false, false, true)), vec4<bool>(false, true | all(vec4<bool>(true, true, false, true)), true, false), !vec4<bool>(-279f > var_0, true, true, true)));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -1000f, var_0, var_0))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(-1067f, 131f, -1000f, 1000f), vec4<f32>(var_0, var_0, var_0, -580f)))))));
    let var_3 = Struct_1(all(vec2<bool>(false, var_1.d.x)), _wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(var_1.b.x, var_1.b.x, u_input.a.x), vec3<i32>(var_1.b.x, -65781i, u_input.a.x)), firstTrailingBit(reverseBits(vec3<i32>(u_input.a.x, var_1.b.x, var_1.b.x)))) << (~reverseBits(_wgslsmith_sub_vec3_u32(vec3<u32>(5754u, u_input.b.x, u_input.b.x), vec3<u32>(4294967295u, u_input.b.x, u_input.b.x))) % vec3<u32>(32u)), select(select(var_1.c, select(select(var_1.d.zy, var_1.d.zx, true), vec2<bool>(true, false), any(vec2<bool>(var_1.a, var_1.c.x))), select(!var_1.c, var_1.c, var_1.c)), var_1.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)) == _wgslsmith_f_op_f32(ceil(1343f))), vec4<bool>(true, false, !any(var_1.d.zxz), func_3(Struct_2(_wgslsmith_clamp_vec3_i32(u_input.a, vec3<i32>(651i, 16525i, var_1.b.x), u_input.a), select(vec4<bool>(var_1.d.x, var_1.d.x, true, false), var_1.d, var_1.c.x), var_1.d, Struct_1(false, var_1.b, vec2<bool>(false, var_1.d.x), var_1.d), _wgslsmith_clamp_vec3_u32(vec3<u32>(12625u, u_input.b.x, 1u), vec3<u32>(1u, u_input.b.x, 1u), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x))))));
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_2.yxx * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, -359f, var_2.x)))));
    var_4 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_2.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-1000f, var_0, var_3.a)))), var_4.x), vec3<f32>(_wgslsmith_f_op_f32(var_0 - 416f), _wgslsmith_f_op_f32(sign(1000f)), var_4.x)))));
    let var_5 = Struct_2(reverseBits(~(~var_3.b)) | _wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(~var_3.b, ~vec3<i32>(u_input.a.x, u_input.a.x, var_3.b.x), _wgslsmith_div_vec3_i32(vec3<i32>(-3835i, var_3.b.x, u_input.a.x), u_input.a)), _wgslsmith_clamp_vec3_i32(~vec3<i32>(-44017i, 23759i, var_1.b.x), vec3<i32>(-2147483647i, 59717i, -84626i) & vec3<i32>(0i, -2147483647i, u_input.a.x), vec3<i32>(-41266i, -52979i, 436i))), var_1.d, var_3.d, var_3, vec3<u32>(_wgslsmith_add_u32(u_input.b.x, 4294967295u), u_input.b.x, _wgslsmith_mult_u32(0u, max(_wgslsmith_div_u32(u_input.b.x, u_input.b.x), u_input.b.x << (u_input.b.x % 32u)))));
    let var_6 = var_5.d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)), _wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)), var_0), vec4<f32>(_wgslsmith_f_op_f32(ceil(var_4.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(var_0 - var_4.x))), -834f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.x + var_2.x)))));
}

