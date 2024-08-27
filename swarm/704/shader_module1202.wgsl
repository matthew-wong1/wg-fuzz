struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: u32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec2<f32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec3<i32>, arg_2: vec2<f32>) -> f32 {
    global0 = ~(arg_1.zx | u_input.a.yx);
    var var_0 = Struct_1(vec2<i32>(1i, select(select(global0.x, global0.x, select(true, false, false)), _wgslsmith_div_i32(2147483647i, _wgslsmith_sub_i32(-2147483647i, arg_1.x)), !(arg_0.x > -955f))), -1686f, vec4<i32>(_wgslsmith_clamp_i32(~arg_1.x, min(~40073i, u_input.a.x), ~(~global0.x)), reverseBits(~(global0.x & global0.x)), i32(-1i) * -global0.x, -1i));
    var_0 = Struct_1(max(select(~(-vec2<i32>(u_input.a.x, 37839i)), _wgslsmith_add_vec2_i32(~u_input.a.xz, _wgslsmith_clamp_vec2_i32(arg_1.xz, vec2<i32>(-7986i, u_input.a.x), arg_1.yy)), true), arg_1.xx), _wgslsmith_f_op_f32(var_0.b - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.b + -146f)))), var_0.c);
    var var_1 = u_input.e;
    var var_2 = Struct_1(~u_input.a.xz, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1874f + var_0.b) + _wgslsmith_f_op_f32(f32(-1f) * -189f))))), -vec4<i32>(var_0.a.x, ~firstTrailingBit(2147483647i), _wgslsmith_sub_i32(-global0.x, u_input.a.x >> (var_1.x % 32u)), ~var_0.a.x));
    return _wgslsmith_f_op_f32(-arg_2.x);
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_1) -> Struct_1 {
    global0 = arg_1.a;
    let var_0 = vec3<i32>(global0.x, ~(u_input.a.x ^ firstLeadingBit(-2147483647i)), firstLeadingBit(global0.x >> (35427u % 32u))) ^ u_input.a;
    var var_1 = Struct_1(var_0.yz, _wgslsmith_f_op_f32(select(arg_1.b, _wgslsmith_f_op_f32(func_3(vec4<f32>(arg_1.b, arg_1.b, _wgslsmith_f_op_f32(f32(-1f) * -608f), -1868f), vec3<i32>(arg_1.c.x << (4294967295u % 32u), _wgslsmith_dot_vec2_i32(var_0.zy, vec2<i32>(global0.x, arg_1.a.x)), -1i), vec2<f32>(arg_1.b, -1540f))), ~var_0.x == arg_1.c.x)), -_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, min(arg_1.a.x, -42359i), arg_1.a.x, _wgslsmith_add_i32(arg_1.a.x, 43603i)), ~_wgslsmith_add_vec4_i32(arg_1.c, arg_1.c), reverseBits(~arg_1.c)));
    var var_2 = ~81082u != (4294967295u << (_wgslsmith_mult_u32(~(~1688u), _wgslsmith_div_u32(min(u_input.c, 21885u), select(u_input.b.x, arg_0.x, false))) % 32u));
    var var_3 = _wgslsmith_add_u32(firstLeadingBit(_wgslsmith_mult_u32(countOneBits(~37403u), arg_0.x)), reverseBits(~(~arg_0.x)));
    return Struct_1(-_wgslsmith_sub_vec2_i32(var_0.zy, arg_1.c.zw), _wgslsmith_f_op_f32(max(2034f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1030f - var_1.b))))))), reverseBits((var_1.c & -vec4<i32>(-38906i, 26558i, 1i, 2147483647i)) >> (vec4<u32>(4294967295u | arg_0.x, abs(4294967295u), ~4294967295u, ~84494u) % vec4<u32>(32u))));
}

fn func_1(arg_0: vec2<f32>, arg_1: bool) -> i32 {
    var var_0 = -31688i;
    var var_1 = u_input.a.x | 69426i;
    var var_2 = false;
    let var_3 = func_2(u_input.e, Struct_1(vec2<i32>(firstTrailingBit(global0.x ^ 0i), ~firstTrailingBit(global0.x)), _wgslsmith_f_op_f32(select(-395f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, arg_0.x)), false)), vec4<i32>(-8046i, abs(firstTrailingBit(u_input.a.x)), global0.x, min(i32(-1i) * -1i, -42885i))));
    let var_4 = ~18704i ^ var_3.a.x;
    return ~(i32(-1i) * -var_3.a.x) >> (4294967295u % 32u);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    let var_0 = !select(all(vec4<bool>(true, true, true, false)), true, (_wgslsmith_dot_vec2_i32(arg_1.c.zw, arg_0.c.xz) <= _wgslsmith_dot_vec3_i32(arg_0.c.xyx, arg_0.c.zwx)) && false);
    let var_1 = -_wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(~select(vec2<i32>(-4848i, 53609i), arg_0.a, var_0), reverseBits(arg_2.a)), vec2<i32>(~(-52011i), max(arg_0.c.x, arg_0.a.x)));
    let var_2 = Struct_1(func_2(~reverseBits(_wgslsmith_div_vec2_u32(u_input.e, vec2<u32>(1u, u_input.e.x))), Struct_1(firstTrailingBit(u_input.a.zy ^ arg_0.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -425f), arg_0.b), select(vec4<i32>(-2147483647i, 13646i, -1i, arg_0.c.x), vec4<i32>(-1i, -49121i, 10046i, u_input.a.x), !vec4<bool>(false, var_0, var_0, var_0)))).c.ww, arg_2.b, arg_2.c);
    return func_2(firstTrailingBit(~select(vec2<u32>(4294967295u, u_input.e.x), u_input.b | u_input.b, vec2<bool>(true, false))), func_2(vec2<u32>(u_input.e.x, _wgslsmith_sub_u32(4294967295u, u_input.e.x) << ((u_input.b.x << (0u % 32u)) % 32u)), func_2(~_wgslsmith_add_vec2_u32(u_input.b, u_input.b), func_2(u_input.e >> (u_input.b % vec2<u32>(32u)), func_2(u_input.b, arg_1)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_1(reverseBits(u_input.a.zx ^ -vec2<i32>(-12876i, -1i)), -444f, -vec4<i32>(u_input.a.x, func_1(vec2<f32>(-883f, -169f), false), -1i ^ global0.x, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, 33451i, -26655i), vec3<i32>(-18510i, -128i, 21418i)))), func_2(vec2<u32>(_wgslsmith_mod_u32(abs(u_input.d), 50154u), u_input.e.x), Struct_1(max(-u_input.a.xy, u_input.a.zy), 277f, _wgslsmith_add_vec4_i32(-vec4<i32>(-13914i, u_input.a.x, global0.x, global0.x), ~vec4<i32>(58084i, 2147483647i, -1336i, 18104i)))), func_2(select(u_input.e, u_input.b, !(u_input.a.x <= -13713i)), Struct_1(vec2<i32>(-u_input.a.x, -u_input.a.x), _wgslsmith_f_op_f32(trunc(-1119f)), vec4<i32>(max(u_input.a.x, u_input.a.x), u_input.a.x & u_input.a.x, _wgslsmith_sub_i32(global0.x, global0.x), -16000i))));
    global0 = vec2<i32>(5257i, 2147483647i);
    var_0 = func_4(func_4(func_2(~u_input.b << (~vec2<u32>(3273u, 0u) % vec2<u32>(32u)), func_2(u_input.b >> (u_input.e % vec2<u32>(32u)), func_4(Struct_1(vec2<i32>(var_0.c.x, u_input.a.x), 364f, vec4<i32>(u_input.a.x, global0.x, var_0.c.x, var_0.c.x)), Struct_1(vec2<i32>(-2147483647i, global0.x), 730f, var_0.c), Struct_1(vec2<i32>(var_0.c.x, global0.x), var_0.b, var_0.c)))), Struct_1(func_2(~vec2<u32>(4294967295u, 1513u), Struct_1(vec2<i32>(global0.x, 2147483647i), 479f, var_0.c)).a, -681f, func_4(Struct_1(vec2<i32>(12163i, global0.x), 1000f, vec4<i32>(19699i, u_input.a.x, global0.x, 1i)), Struct_1(vec2<i32>(2147483647i, 1i), var_0.b, var_0.c), Struct_1(vec2<i32>(-2147483647i, 26110i), -982f, var_0.c)).c & -vec4<i32>(37861i, -1i, 2147483647i, -50514i)), Struct_1(select(vec2<i32>(var_0.c.x, 1i), u_input.a.yy, vec2<bool>(true, false)) & -vec2<i32>(-3583i, 1i), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(var_0.b)))), -vec4<i32>(global0.x, 1i, 2147483647i, 33600i))), Struct_1(_wgslsmith_sub_vec2_i32(abs(vec2<i32>(2147483647i, 838i)), countOneBits(u_input.a.zx) << (_wgslsmith_clamp_vec2_u32(u_input.e, vec2<u32>(41098u, u_input.b.x), vec2<u32>(76269u, u_input.e.x)) % vec2<u32>(32u))), _wgslsmith_f_op_f32(-var_0.b), abs(var_0.c)), Struct_1(_wgslsmith_mod_vec2_i32(func_2(vec2<u32>(0u, u_input.b.x), Struct_1(var_0.a, var_0.b, vec4<i32>(u_input.a.x, 1i, global0.x, -34650i))).c.wz, var_0.c.xx), 1167f, -firstTrailingBit(var_0.c >> (vec4<u32>(u_input.d, u_input.c, 1u, 0u) % vec4<u32>(32u)))));
    var var_1 = ~(~(~min(~vec3<u32>(69740u, 0u, 26887u), firstTrailingBit(vec3<u32>(u_input.d, 0u, u_input.e.x)))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(func_3(vec4<f32>(var_0.b, 762f, 1523f, var_0.b), vec3<i32>(global0.x, global0.x, -1i), vec2<f32>(-471f, -595f))))))));
    var var_3 = func_4(Struct_1(~u_input.a.zx, -726f, firstLeadingBit(vec4<i32>(global0.x, i32(-1i) * -26397i, var_0.c.x, ~var_0.a.x))), Struct_1(select(u_input.a.zz, vec2<i32>(-12043i, var_0.a.x) ^ firstLeadingBit(vec2<i32>(36663i, var_0.a.x)), select(select(vec2<bool>(true, true), vec2<bool>(true, false), true), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)), false)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b)))), vec4<i32>(~(-u_input.a.x), 0i, func_2(u_input.b, Struct_1(u_input.a.zx, -106f, vec4<i32>(u_input.a.x, var_0.a.x, 11152i, global0.x))).c.x, func_4(func_4(Struct_1(var_0.c.yx, -123f, vec4<i32>(var_0.a.x, u_input.a.x, -1i, u_input.a.x)), Struct_1(vec2<i32>(global0.x, 65383i), var_2.x, var_0.c), Struct_1(u_input.a.xy, 988f, vec4<i32>(global0.x, var_0.c.x, global0.x, -19123i))), Struct_1(u_input.a.zz, -588f, var_0.c), Struct_1(vec2<i32>(2961i, global0.x), 874f, vec4<i32>(1i, -1i, 1i, u_input.a.x))).c.x)), func_2(reverseBits(u_input.e), Struct_1(~(-vec2<i32>(var_0.a.x, 1i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x * -128f)), _wgslsmith_mod_vec4_i32(~vec4<i32>(1i, var_0.a.x, u_input.a.x, global0.x), vec4<i32>(1i, 1i, 1i, 1i)))));
    var_3 = func_2(select(~(~vec2<u32>(0u, u_input.b.x)), ~var_1.zx, vec2<bool>(true, !select(true, false, true))), func_4(func_4(func_4(Struct_1(var_0.c.yy, -997f, var_3.c), func_4(Struct_1(vec2<i32>(72430i, var_3.c.x), -987f, var_0.c), Struct_1(vec2<i32>(41300i, 1i), 379f, var_0.c), Struct_1(vec2<i32>(-1i, 0i), -1000f, var_0.c)), func_2(vec2<u32>(var_1.x, 4294967295u), Struct_1(vec2<i32>(var_0.c.x, 2147483647i), -989f, var_3.c))), Struct_1(firstTrailingBit(u_input.a.zx), 1085f, vec4<i32>(var_0.a.x, -63551i, 1i, global0.x)), func_2(u_input.e, func_2(u_input.b, Struct_1(u_input.a.xx, var_3.b, var_3.c)))), func_4(func_2(reverseBits(var_1.yy), func_2(u_input.e, Struct_1(vec2<i32>(var_3.c.x, -1i), 846f, vec4<i32>(var_0.a.x, u_input.a.x, 1i, -2147483647i)))), Struct_1(_wgslsmith_add_vec2_i32(var_3.c.ww, var_3.c.zy), -425f, ~vec4<i32>(global0.x, 1i, var_3.a.x, -1i)), func_2(vec2<u32>(102979u, var_1.x), Struct_1(vec2<i32>(-1i, -2147483647i), 530f, var_0.c))), func_4(Struct_1(-var_3.c.xz, _wgslsmith_f_op_f32(-var_3.b), -vec4<i32>(var_0.c.x, var_0.c.x, 21689i, -29572i)), Struct_1(var_0.a | vec2<i32>(global0.x, var_0.a.x), _wgslsmith_f_op_f32(-var_2.x), vec4<i32>(u_input.a.x, global0.x, -3648i, var_0.c.x) & vec4<i32>(global0.x, u_input.a.x, 1824i, -2147483647i)), Struct_1(_wgslsmith_clamp_vec2_i32(var_3.c.wx, u_input.a.xz, u_input.a.zz), 1000f, vec4<i32>(0i, global0.x, 1i, 1i) & vec4<i32>(27929i, u_input.a.x, u_input.a.x, global0.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(118f + -227f), var_0.b), var_0.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(657f - var_2.x), var_3.b)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(var_3.b, 2968f, 1921f, var_2.x), vec4<f32>(var_2.x, var_2.x, var_0.b, var_2.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-905f, 343f, var_2.x, -712f)), true)), vec4<f32>(_wgslsmith_f_op_f32(467f - var_3.b), var_3.b, var_3.b, _wgslsmith_f_op_f32(step(var_0.b, 1803f))))))), _wgslsmith_dot_vec3_u32(~abs(min(vec3<u32>(var_1.x, 7301u, 77291u), vec3<u32>(u_input.d, u_input.d, 15468u))), ~vec3<u32>(_wgslsmith_mod_u32(31138u, u_input.d), 0u, select(0u, u_input.c, true))), var_2, -func_2(vec2<u32>(~var_1.x, 8318u), func_4(func_4(Struct_1(u_input.a.zy, 1376f, vec4<i32>(0i, var_0.a.x, -45090i, u_input.a.x)), Struct_1(vec2<i32>(var_0.c.x, -18857i), -376f, vec4<i32>(var_3.a.x, 17201i, 20212i, 2147483647i)), Struct_1(vec2<i32>(31334i, u_input.a.x), -136f, vec4<i32>(var_3.c.x, 0i, 49515i, var_0.c.x))), func_4(Struct_1(vec2<i32>(-16044i, global0.x), var_3.b, vec4<i32>(1i, -1i, global0.x, 1i)), Struct_1(vec2<i32>(var_3.a.x, 0i), var_2.x, var_0.c), Struct_1(var_0.c.wz, 793f, var_0.c)), Struct_1(var_0.c.xz, var_3.b, vec4<i32>(var_3.a.x, u_input.a.x, 17146i, -2147483647i)))).c);
}

