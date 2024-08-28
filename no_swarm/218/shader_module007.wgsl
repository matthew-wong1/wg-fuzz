struct Struct_1 {
    a: vec4<i32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec3<u32>,
    d: Struct_1,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
    c: vec2<u32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> vec3<bool> {
    var var_0 = true;
    var_0 = true;
    let var_1 = u_input.a.x;
    let var_2 = Struct_1(-(~vec4<i32>(reverseBits(0i), _wgslsmith_sub_i32(56367i, 1i), -41685i, 3238i)), !vec3<bool>(true, true, select(true, true, true)));
    var_0 = any(vec4<bool>(true, true && !var_2.b.x, -_wgslsmith_sub_i32(var_2.a.x, var_2.a.x) == (reverseBits(1i) & _wgslsmith_sub_i32(-67740i, var_2.a.x)), var_2.b.x));
    return !var_2.b;
}

fn func_2(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_2) -> vec3<i32> {
    var var_0 = arg_2;
    let var_1 = var_0.a;
    var_0 = Struct_2(arg_2.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1669f, 441f)))))), ~arg_2.c, arg_2.d, arg_2.e);
    var_0 = Struct_2(Struct_1(-(~vec4<i32>(-10633i, -59246i, 24032i, -2147483647i)), func_3()), arg_2.b, vec3<u32>(min(min(var_0.c.x & 0u, firstLeadingBit(36768u)), 0u), 1u, var_0.c.x), arg_2.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(max(arg_2.e, _wgslsmith_f_op_vec4_f32(sign(var_0.e))))))));
    let var_2 = arg_2.d.b.yx;
    return _wgslsmith_mult_vec3_i32(var_0.a.a.wwx, select(select(var_0.a.a.zwx, ~vec3<i32>(var_1.a.x, 1i, -71623i), false) >> (firstTrailingBit(arg_2.c) % vec3<u32>(32u)), abs(abs(vec3<i32>(2147483647i, -62402i, var_0.d.a.x) << (arg_2.c % vec3<u32>(32u)))), true & arg_0.b.x));
}

fn func_1(arg_0: vec3<bool>, arg_1: u32, arg_2: vec3<u32>, arg_3: vec3<bool>) -> f32 {
    var var_0 = select(countOneBits(_wgslsmith_clamp_vec3_i32(reverseBits(vec3<i32>(2147483647i, -2609i, 12918i)), vec3<i32>(2147483647i, 0i, 41840i), vec3<i32>(74261i, 1i, 29072i))), func_2(Struct_1(reverseBits(vec4<i32>(24189i, 1i, 0i, 19280i)), !arg_3), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(219f, -927f, 1261f) + vec3<f32>(891f, 900f, 439f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 1000f, 708f)))), Struct_2(Struct_1(vec4<i32>(22404i, -2147483647i, 21383i, -10701i), arg_0), _wgslsmith_f_op_f32(-488f - 1000f), _wgslsmith_mult_vec3_u32(vec3<u32>(65304u, u_input.a.x, 1u), arg_2), Struct_1(vec4<i32>(0i, -22289i, -20723i, 54540i), vec3<bool>(true, false, false)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(945f, -166f, -302f, -809f)))), all(!(!vec4<bool>(arg_0.x, true, true, arg_0.x)))) >> (vec3<u32>(~1u, 7067u, 4294967295u) % vec3<u32>(32u));
    var var_1 = all(arg_0.yy);
    let var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1102f * -1584f)), -960f))))));
    var var_3 = Struct_1(_wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(var_0.x, var_0.x), 27464i, -5502i, var_0.x), _wgslsmith_mult_vec4_i32(select(vec4<i32>(-1i, var_0.x, var_0.x, var_0.x), vec4<i32>(2147483647i, var_0.x, -1i, -22190i), vec4<bool>(true, false, true, arg_0.x)), firstTrailingBit(vec4<i32>(2147483647i, -2147483647i, 55748i, 2147483647i)))) ^ -select(vec4<i32>(2147483647i, -10499i, 2147483647i, var_0.x), vec4<i32>(var_0.x, -2147483647i, -1i, -28357i) >> (vec4<u32>(u_input.a.x, arg_1, 40232u, 1874u) % vec4<u32>(32u)), vec4<bool>(true, true, arg_3.x, arg_3.x)), func_3());
    var_0 = ~vec3<i32>(~2147483647i ^ _wgslsmith_mod_i32(~var_3.a.x, 3855i), min(var_0.x, var_3.a.x), _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(var_0.x, var_0.x, -18341i, var_3.a.x), vec4<i32>(var_3.a.x, var_3.a.x, 19040i, var_3.a.x)), ~var_3.a) << (4294967295u % 32u));
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(_wgslsmith_div_vec4_i32(vec4<i32>(-18209i << (u_input.a.x % 32u), abs(70664i), ~38336i, 1i), vec4<i32>(64803i, 35415i, -14750i, 31256i) << (~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 11438u) % vec4<u32>(32u))), vec3<bool>(false, !any(vec4<bool>(true, true, true, true)), false)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-586f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(vec3<bool>(true, true, true), 33954u, vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x), vec3<bool>(true, true, false))), _wgslsmith_f_op_f32(select(-1000f, -709f, true))))), vec3<u32>(1u, u_input.a.x & u_input.a.x, u_input.a.x), Struct_1(vec4<i32>(countOneBits(abs(-7947i)), _wgslsmith_add_i32(_wgslsmith_add_i32(-1i, -12085i), ~47012i), 2147483647i, select(-10800i >> (u_input.a.x % 32u), -69121i << (u_input.a.x % 32u), true)), func_3()), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-928f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1000f, 1059f, true)))), _wgslsmith_f_op_f32(min(-260f, _wgslsmith_f_op_f32(-1f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(483f, -644f, true)), 1165f, true)))));
    var var_1 = vec3<f32>(-547f, var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1402f + -204f)));
    var_1 = var_0.e.xyz;
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(var_0.e.xww)));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-638f, _wgslsmith_f_op_f32(-1000f - -281f)))) - -825f), -836f, var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.e.x - -158f) * _wgslsmith_div_f32(163f, -1319f)) * _wgslsmith_f_op_f32(func_1(vec3<bool>(var_0.d.b.x, var_0.a.b.x, var_0.a.b.x), ~var_0.c.x, _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, 4294967295u, 29121u), vec3<u32>(u_input.a.x, u_input.a.x, 0u)), vec3<bool>(var_0.d.b.x, var_0.d.b.x, false)))) * var_0.e.x));
    let var_3 = reverseBits(_wgslsmith_mod_vec3_i32(var_0.d.a.wyz, _wgslsmith_clamp_vec3_i32(reverseBits(vec3<i32>(0i, var_0.d.a.x, -1i)), -(vec3<i32>(1i, -5259i, var_0.a.a.x) | vec3<i32>(var_0.a.a.x, var_0.a.a.x, var_0.a.a.x)), vec3<i32>(var_0.d.a.x, -var_0.d.a.x, -var_0.d.a.x))));
    let var_4 = Struct_2(Struct_1(vec4<i32>(-9203i, 22549i, firstTrailingBit(reverseBits(-1i)), var_3.x), !var_0.a.b), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(var_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1443f, -684f, var_0.a.b.x)) * var_2.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.e.x * var_1.x)) - 606f))), vec3<u32>(~1u, u_input.a.x, ~(~1u)), var_0.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.e), var_0.e)));
    var var_5 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.x, var_2.x) - 401f), var_1.x));
    let var_6 = ~var_4.c.yx >> (~vec2<u32>(_wgslsmith_div_u32(var_4.c.x, 17494u), min(~var_0.c.x, max(0u, 57689u))) % vec2<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.e, var_0.e, var_6, ~(~var_4.c.x), _wgslsmith_f_op_f32(abs(-550f)));
}

