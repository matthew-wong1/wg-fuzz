struct Struct_1 {
    a: vec2<i32>,
    b: vec4<f32>,
    c: i32,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec2<bool>, arg_2: u32) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-221f, _wgslsmith_f_op_f32(1426f * 546f), _wgslsmith_f_op_f32(f32(-1f) * -2041f), _wgslsmith_f_op_f32(f32(-1f) * -138f))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1031f, 935f, 1257f, -168f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1470f, -638f, 100f, -669f) * vec4<f32>(1386f, -1122f, 541f, -300f)))), vec4<f32>(-120f, _wgslsmith_f_op_f32(step(-942f, 362f)), 631f, _wgslsmith_f_op_f32(703f + 661f)), !arg_1.x)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-512f, _wgslsmith_f_op_f32(max(-583f, 903f)), _wgslsmith_f_op_f32(-1322f * -755f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))))));
    let var_1 = Struct_3(reverseBits(-(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a.x, arg_0.x, -2147483647i), u_input.a) & select(vec3<i32>(u_input.a.x, arg_0.x, arg_0.x), arg_0.yxy, true))), Struct_2(vec3<i32>(-min(-2147483647i, u_input.a.x), _wgslsmith_div_i32(i32(-1i) * -23000i, _wgslsmith_mod_i32(46819i, arg_0.x)), u_input.a.x)));
    let var_2 = var_1;
    var var_3 = Struct_3(abs(-var_2.b.a) & (abs(vec3<i32>(36921i, 0i, -2147483647i) & u_input.a) ^ u_input.a), var_1.b);
    let var_4 = countOneBits(abs(var_1.b.a.zx) ^ firstLeadingBit(abs(vec2<i32>(0i, var_3.a.x) & var_1.a.zx)));
    return ~vec2<u32>(arg_2, firstTrailingBit(27476u));
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: Struct_1, arg_3: vec4<bool>) -> vec3<i32> {
    var var_0 = _wgslsmith_add_i32(0i, -u_input.a.x);
    var var_1 = arg_3.x;
    var_1 = false;
    var_1 = arg_3.x;
    let var_2 = -(~(_wgslsmith_mod_i32(-2147483647i, -arg_0.a.x) & (1i | (arg_2.e.x | -1i))));
    return arg_2.e.wzx;
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: vec2<i32>, arg_3: i32) -> u32 {
    var var_0 = true;
    var_0 = all(!(!(!select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), true))));
    let var_1 = false;
    var var_2 = Struct_3(func_4(Struct_2(countOneBits(_wgslsmith_div_vec3_i32(vec3<i32>(-656i, 76684i, 2147483647i), u_input.a))), -1230f, Struct_1(arg_2, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, 1263f, -1874f, 1000f))), 1i, _wgslsmith_mod_vec2_u32(func_3(vec4<i32>(-9221i, 0i, arg_1, arg_2.x), vec2<bool>(true, true), 37159u), vec2<u32>(21753u, 0u)), ~countOneBits(vec4<i32>(-1i, arg_1, arg_2.x, u_input.a.x))), vec4<bool>(all(!vec4<bool>(false, true, false, var_1)), true, false, false)), Struct_2(u_input.a));
    var var_3 = Struct_2(vec3<i32>(2147483647i, _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(var_2.a.x, -23404i, 1i, 2147483647i), vec4<i32>(-2147483647i, arg_1, -1i, arg_1)), select(vec4<i32>(var_2.a.x, 17632i, arg_2.x, 24579i), vec4<i32>(-19170i, arg_2.x, arg_3, -1i), vec4<bool>(true, var_1, var_1, false))), reverseBits(~vec4<i32>(1i, arg_3, arg_3, arg_3))), abs(var_2.b.a.x)));
    return firstTrailingBit(1u);
}

fn func_5(arg_0: bool) -> Struct_3 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -983f), 1567f);
    let var_1 = Struct_1(_wgslsmith_clamp_vec2_i32(vec2<i32>(max(-u_input.a.x, u_input.a.x & 0i), func_4(Struct_2(vec3<i32>(2832i, -3226i, 1i)), var_0, Struct_1(vec2<i32>(9555i, -2147483647i), vec4<f32>(var_0, var_0, var_0, 746f), 0i, vec2<u32>(0u, 20086u), vec4<i32>(u_input.a.x, u_input.a.x, -1i, -1i)), vec4<bool>(arg_0, arg_0, arg_0, true)).x), _wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(1i, 0i), vec2<i32>(u_input.a.x, -3334i)), u_input.a.yx), ~vec2<i32>(-39296i, -1i)), ~vec2<i32>(reverseBits(u_input.a.x), 1i)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_0, var_0))), 235f, 448f) + vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_0, var_0))), var_0, -330f, _wgslsmith_f_op_f32(f32(-1f) * -519f))), firstTrailingBit(abs(-firstLeadingBit(u_input.a.x))), _wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(max(54373u, 15506u), 1u), ~select(vec2<u32>(64541u, 39455u), vec2<u32>(1u, 33191u), arg_0)), ~(~vec2<u32>(0u, 0u))), -(~vec4<i32>(abs(u_input.a.x), i32(-1i) * -2147483647i, u_input.a.x & u_input.a.x, -7116i)));
    let var_2 = ~_wgslsmith_add_u32(0u, max(~4294967295u, var_1.d.x));
    let var_3 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1163f, _wgslsmith_f_op_f32(-var_0), 454f)));
    return Struct_3(~((vec3<i32>(-1i) * -u_input.a) ^ func_4(Struct_2(vec3<i32>(-1i, -23360i, u_input.a.x)), -1771f, Struct_1(vec2<i32>(u_input.a.x, 1i), vec4<f32>(-506f, var_1.b.x, var_3.x, var_3.x), var_1.c, vec2<u32>(1u, var_2), var_1.e), !vec4<bool>(true, true, arg_0, true))), Struct_2(u_input.a));
}

fn func_1(arg_0: Struct_1) -> Struct_2 {
    let var_0 = ~119839u;
    var var_1 = 1i;
    var var_2 = vec3<i32>(-1i, _wgslsmith_div_i32(min(1i, firstTrailingBit(-2147483647i)), select(0i | u_input.a.x, _wgslsmith_div_i32(arg_0.c, 31585i) << (var_0 % 32u), !any(vec2<bool>(false, true)))), arg_0.c);
    let var_3 = func_5(func_2(1232f, var_2.x, ~vec2<i32>(var_2.x, -2147483647i), -23722i) > ~var_0);
    var var_4 = _wgslsmith_mod_i32(u_input.a.x, 36909i);
    return var_3.b;
}

fn func_6(arg_0: Struct_2, arg_1: f32, arg_2: Struct_2, arg_3: vec3<i32>) -> u32 {
    var var_0 = ~(~1u);
    var_0 = 13291u;
    let var_1 = _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(func_3(_wgslsmith_sub_vec4_i32(vec4<i32>(arg_0.a.x, arg_0.a.x, u_input.a.x, -47499i), vec4<i32>(u_input.a.x, arg_0.a.x, -2383i, arg_0.a.x)), vec2<bool>(false, false), 21632u).x, 34019u));
    var_0 = ~((var_1 & ~10688u) & var_1);
    var_0 = var_1;
    return ~(~1u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1u;
    let var_1 = -501f;
    let var_2 = false;
    var_0 = 59540u;
    var var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(-1278f)), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1308f * var_1), _wgslsmith_div_f32(var_1, 969f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1 * var_1), 1006f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -149f), _wgslsmith_f_op_f32(max(-794f, var_1)))) - -3377f), -1211f));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(func_6(Struct_2(reverseBits(vec3<i32>(-2147483647i, 2147483647i, u_input.a.x))), var_3.x, func_1(Struct_1(vec2<i32>(24993i, 1i), vec4<f32>(-862f, var_1, var_3.x, var_3.x), 0i, vec2<u32>(20559u, 1996u), vec4<i32>(0i, u_input.a.x, u_input.a.x, u_input.a.x))), min(_wgslsmith_mod_vec3_i32(u_input.a, vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), vec3<i32>(u_input.a.x, 68581i, u_input.a.x))), 16025u, 0u, ~select(29962u, ~0u, var_2)), firstLeadingBit(func_1(Struct_1(-vec2<i32>(u_input.a.x, -2147483647i), vec4<f32>(var_3.x, 154f, 1965f, var_3.x), -2147483647i, ~vec2<u32>(32312u, 6949u), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, 23440i, -1i, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, -2147483647i, u_input.a.x)))).a.yy), 1u, -2147483647i);
}

