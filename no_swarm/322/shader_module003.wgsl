struct Struct_1 {
    a: u32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: u32,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: i32 = i32(-2147483648);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<f32>) -> u32 {
    var var_0 = reverseBits(vec4<i32>(firstTrailingBit(max(u_input.a, -13416i)), firstTrailingBit(46361i), -1552i, u_input.b)) | _wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(1i, -2147483647i, u_input.a, -1i)), vec4<i32>(29498i, u_input.c, 990i, 1i)), countOneBits(abs(u_input.b)), u_input.a, u_input.b), vec4<i32>(u_input.b, -14129i, _wgslsmith_add_i32(firstLeadingBit(0i), select(-2147483647i, 59882i, false)), firstLeadingBit(abs(u_input.c))), abs(select(vec4<i32>(u_input.b, u_input.c, 11814i, u_input.a), vec4<i32>(u_input.c, 21229i, 2147483647i, u_input.b), vec4<bool>(false, false, false, true))) >> (abs(vec4<u32>(1u, 4294967295u, 29905u, 1u)) % vec4<u32>(32u)));
    var var_1 = Struct_2(Struct_1(select(reverseBits(73029u), ~69206u, true) & ~4294967295u, select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), 599f != global0.x), select(true, any(vec2<bool>(true, false)), true))), ~var_0.xyw >> (~select(vec3<u32>(4294967295u, 1u, 37819u), ~vec3<u32>(4294967295u, 4294967295u, 0u), vec3<bool>(true, true, true)) % vec3<u32>(32u)), 0u, 499f);
    var var_2 = ~max(vec2<u32>(~0u, 42431u), vec2<u32>(91034u, 4294967295u)) << (abs(vec2<u32>(1u, select(0u, 4294967295u, var_1.a.b.x) << (~0u % 32u))) % vec2<u32>(32u));
    let var_3 = var_2.x;
    let var_4 = Struct_2(Struct_1(~(~(var_1.c >> (var_2.x % 32u))), var_1.a.b), _wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(var_1.b, -abs(vec3<i32>(var_0.x, u_input.c, var_0.x)), select(vec3<i32>(u_input.b, u_input.c, -2147483647i), _wgslsmith_mod_vec3_i32(var_0.xzy, vec3<i32>(u_input.a, u_input.b, u_input.b)), var_1.d == global0.x)), ~var_1.b), var_1.c & 0u, global0.x);
    return 46179u;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> bool {
    var var_0 = 2147483647i;
    let var_1 = arg_0;
    let var_2 = arg_1.d;
    var var_3 = Struct_2(arg_0.a, vec3<i32>(arg_1.b.x, _wgslsmith_mult_i32(arg_1.b.x, -3630i), -_wgslsmith_mult_i32(var_1.b.x, -51681i)) & -vec3<i32>(i32(-1i) * -2262i, 20093i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.b.x, 10762i, arg_1.b.x, arg_1.b.x), vec4<i32>(-37663i, -757i, var_1.b.x, 1i))), 0u, _wgslsmith_f_op_f32(-var_2));
    var_3 = Struct_2(Struct_1(~_wgslsmith_mult_u32(~12701u, ~var_3.a.a), vec4<bool>(!all(vec4<bool>(false, true, true, true)), arg_1.a.b.x, all(select(arg_1.a.b, var_1.a.b, arg_1.a.b)), any(vec4<bool>(true, true, var_3.a.b.x, true)))), _wgslsmith_mod_vec3_i32(vec3<i32>(reverseBits(arg_0.b.x), var_3.b.x, -arg_1.b.x), vec3<i32>(37346i, _wgslsmith_mult_i32(22548i, u_input.a), arg_0.b.x)) >> (vec3<u32>(arg_1.a.a, _wgslsmith_clamp_u32(~9188u, ~var_1.c, arg_1.a.a), ~1u) % vec3<u32>(32u)), var_3.a.a, 206f);
    return var_1.a.b.x;
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(global0.x)))), -1000f) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.x, 565f))), 957f))));
    var var_1 = Struct_1(~34956u, !vec4<bool>(min(-4184i, u_input.b) != u_input.b, false, false, any(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false)))));
    var_1 = Struct_1(var_1.a, vec4<bool>(func_4(Struct_2(Struct_1(var_1.a, var_1.b), abs(vec3<i32>(45970i, -27041i, u_input.b)), 18669u, _wgslsmith_div_f32(global0.x, 980f)), Struct_2(Struct_1(var_1.a, var_1.b), ~vec3<i32>(u_input.c, 65510i, u_input.a), func_3(vec4<f32>(304f, global0.x, -427f, global0.x)), _wgslsmith_f_op_f32(-global0.x))), any(vec3<bool>(true, select(false, false, false), all(vec3<bool>(false, var_1.b.x, var_1.b.x)))), var_1.b.x, all(var_1.b.zy)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1434f, global0.x))))), _wgslsmith_f_op_f32(-1423f - -1429f))));
    var var_3 = firstLeadingBit(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(~(vec3<i32>(7322i, 1i, u_input.a) ^ vec3<i32>(u_input.c, 26238i, u_input.b)), _wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, -17708i, u_input.c), vec3<i32>(0i, u_input.c, 1i)), vec3<i32>(2147483647i, 0i, u_input.c))), vec3<i32>(u_input.c, -min(-2147483647i, u_input.b), i32(-1i) * -13494i)));
    return Struct_1(0u, !(!vec4<bool>(all(var_1.b), false, false, false)));
}

fn func_5(arg_0: Struct_2) -> Struct_1 {
    let var_0 = arg_0;
    global1 = ~u_input.b;
    let var_1 = arg_0.d;
    global0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.d, arg_0.d)) * 1000f) - _wgslsmith_f_op_f32(arg_0.d * 1032f))), _wgslsmith_div_f32(var_0.d, -646f), global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)));
    let var_2 = arg_0.a;
    return func_2();
}

fn func_1(arg_0: u32) -> Struct_2 {
    var var_0 = Struct_2(func_5(Struct_2(func_2(), select(select(vec3<i32>(u_input.a, u_input.a, 1i), vec3<i32>(-46437i, -11560i, 1i), true), select(vec3<i32>(2147483647i, 0i, u_input.a), vec3<i32>(28364i, u_input.a, 2147483647i), vec3<bool>(false, true, false)), false), arg_0, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -179f))))), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.c, -u_input.a << (arg_0 % 32u), -6846i), ~(vec3<i32>(u_input.b, 1i, 2147483647i) >> (reverseBits(vec3<u32>(arg_0, arg_0, arg_0)) % vec3<u32>(32u))), _wgslsmith_add_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(u_input.a, 41634i, 1i), min(vec3<i32>(u_input.a, 1i, u_input.b), vec3<i32>(-484i, -2147483647i, u_input.b) | vec3<i32>(u_input.a, -5489i, -2147483647i)))), 1u, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -776f) - global0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-942f)) * _wgslsmith_f_op_f32(max(905f, global0.x))) + _wgslsmith_f_op_f32(-global0.x)))));
    var_0 = Struct_2(var_0.a, var_0.b, ~arg_0, var_0.d);
    var var_1 = Struct_1(30105u, vec4<bool>(!(!all(vec4<bool>(false, var_0.a.b.x, true, false))), var_0.a.b.x && var_0.a.b.x, true, true || var_0.a.b.x));
    let var_2 = var_1.b.xzz;
    let var_3 = func_2().a;
    return Struct_2(var_0.a, -_wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(var_0.b, _wgslsmith_clamp_vec3_i32(var_0.b, var_0.b, var_0.b)), vec3<i32>(4662i, ~(-1i), ~1i)), 4294967295u, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(global0.x, global0.x), var_0.d))))));
}

fn func_6(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: u32, arg_3: vec2<f32>) -> vec4<f32> {
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_1) + vec4<f32>(-303f, arg_3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.d) + arg_3.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1214f - global0.x))) + _wgslsmith_f_op_f32(ceil(arg_0.d)))));
    global0 = arg_1;
    let var_0 = Struct_1(arg_0.a.a, arg_0.a.b);
    var var_1 = vec3<f32>(-1217f, 414f, _wgslsmith_f_op_f32(-func_1(arg_0.c ^ var_0.a).d));
    let var_2 = Struct_1(~(~_wgslsmith_mult_u32(~arg_2, _wgslsmith_mod_u32(1u, arg_0.c))), vec4<bool>(var_0.b.x, all(select(vec4<bool>(true, arg_0.a.b.x, true, true), vec4<bool>(true, true, false, var_0.b.x), !arg_0.a.b.x)), var_0.b.x, var_0.a <= arg_2));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(arg_1, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(arg_1, arg_1) * _wgslsmith_f_op_vec4_f32(-arg_1)), arg_0.a.b.x)) + _wgslsmith_f_op_vec4_f32(-arg_1)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(func_6(func_1(72185u), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0.x, global0.x, -1444f, -2290f))), _wgslsmith_mod_u32(4294967295u, 119291u), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-791f, 758f), global0.wz, true)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-146f, global0.x, -264f, global0.x) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-500f, -811f, global0.x, -209f) + vec4<f32>(global0.x, 765f, global0.x, global0.x)))))));
    let var_0 = func_5(Struct_2(func_2(), ~abs(_wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, 2147483647i, -2147483647i), vec3<i32>(u_input.b, 37071i, -2147483647i))), reverseBits(firstTrailingBit(_wgslsmith_mod_u32(4294967295u, 1u))), _wgslsmith_f_op_f32(max(global0.x, global0.x))));
    var var_1 = max(vec2<u32>(~select(~var_0.a, var_0.a, !var_0.b.x), var_0.a), abs(vec2<u32>(countOneBits(~4294967295u), 1u)));
    var var_2 = global0.x;
    let var_3 = !vec2<bool>(all(!var_0.b), (~51200i >> (~var_0.a % 32u)) < -_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.c), vec3<i32>(0i, u_input.a, -18017i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.x))), global0.x)) + _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global0.x, global0.x)))), _wgslsmith_clamp_i32(-(min(u_input.b, u_input.a) | _wgslsmith_sub_i32(-12476i, 16037i)), u_input.c, _wgslsmith_sub_i32(firstTrailingBit(u_input.b) ^ func_1(var_1.x).b.x, -55289i)));
}

