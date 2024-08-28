struct Struct_1 {
    a: vec4<bool>,
    b: vec3<u32>,
    c: vec2<f32>,
    d: bool,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec3<f32>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, false);

var<private> global1: Struct_1 = Struct_1(vec4<bool>(true, false, true, false), vec3<u32>(4294967295u, 0u, 12681u), vec2<f32>(-686f, 848f), false, vec3<i32>(2392i, i32(-2147483648), -41983i));

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: f32) -> u32 {
    global0 = !global1.a.xx;
    var var_0 = _wgslsmith_mult_i32(_wgslsmith_sub_i32(_wgslsmith_div_i32(global1.e.x, global1.e.x), _wgslsmith_clamp_i32(abs(1i) >> (u_input.a % 32u), _wgslsmith_mult_i32(global1.e.x ^ 67669i, ~global1.e.x), global1.e.x)), countOneBits(global1.e.x));
    var_0 = _wgslsmith_sub_i32(_wgslsmith_mult_i32(-_wgslsmith_sub_i32(max(-1i, 19812i), firstTrailingBit(-2147483647i)), abs(global1.e.x)), global1.e.x);
    global0 = global1.a.xx;
    var var_1 = Struct_1(vec4<bool>(true | all(vec3<bool>(global0.x, true, false)), global1.d, true, false), global1.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(488f, arg_0)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(global1.c - global1.c), _wgslsmith_div_vec2_f32(global1.c, global1.c))) - vec2<f32>(arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2284f - arg_0) + _wgslsmith_f_op_f32(sign(global1.c.x))))), false, firstLeadingBit(min(vec3<i32>(0i, global1.e.x, global1.e.x), select(_wgslsmith_mult_vec3_i32(global1.e, global1.e), abs(global1.e), all(global1.a)))));
    return var_1.b.x;
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_1) -> u32 {
    let var_0 = ~vec3<i32>(countOneBits(arg_1.e.x), arg_0.x, arg_0.x);
    global0 = !select(global1.a.xz, select(select(vec2<bool>(global0.x, global1.d), vec2<bool>(arg_1.a.x, false), !global1.a.x), !select(arg_1.a.zz, vec2<bool>(global0.x, false), arg_1.a.zy), select(vec2<bool>(global0.x, global0.x), select(vec2<bool>(true, arg_1.a.x), global1.a.zy, global1.a.wy), global1.e.x <= -59414i)), !arg_1.a.xx);
    return ~(~func_3(_wgslsmith_f_op_f32(abs(293f))));
}

fn func_1() -> Struct_1 {
    var var_0 = -_wgslsmith_mult_vec3_i32(vec3<i32>(firstTrailingBit(global1.e.x), 2147483647i, -22627i), global1.e);
    global0 = !(!vec2<bool>(global0.x, false));
    let var_1 = vec2<u32>(_wgslsmith_mod_u32(countOneBits(76928u), 50080u), 47952u) & vec2<u32>(max(1820u, ~firstLeadingBit(0u)), ~(_wgslsmith_mult_u32(4294967295u, u_input.a) & ~19587u));
    var var_2 = Struct_1(vec4<bool>(true, (var_1.x << (~global1.b.x % 32u)) <= u_input.a, var_1.x < func_2(vec4<i32>(0i, var_0.x, 12173i, global1.e.x) | vec4<i32>(global1.e.x, 2147483647i, global1.e.x, var_0.x), Struct_1(vec4<bool>(global1.a.x, false, global1.d, global1.d), vec3<u32>(3393u, var_1.x, 0u), global1.c, true, global1.e)), any(!global1.a)), global1.b, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-797f * global1.c.x))) * 1511f), -1240f), !global1.d, global1.e);
    var_0 = ~(vec3<i32>(-3380i, -var_0.x, _wgslsmith_clamp_i32(var_2.e.x | var_0.x, ~0i, 1i)) << (vec3<u32>(0u, var_1.x, (u_input.a << (4294967295u % 32u)) << (1u % 32u)) % vec3<u32>(32u)));
    return Struct_1(select(select(vec4<bool>(true, global1.a.x, all(global1.a.yww), global1.d), vec4<bool>(false, true, var_2.d, 381f != global1.c.x), select(!vec4<bool>(false, var_2.a.x, global1.a.x, false), select(vec4<bool>(true, var_2.d, false, global1.a.x), vec4<bool>(global1.d, true, var_2.d, var_2.d), global1.a.x), u_input.a >= global1.b.x)), global1.a, !select(select(var_2.a, vec4<bool>(global0.x, false, var_2.a.x, false), false), vec4<bool>(global0.x, true, false, true), !global1.d)), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 20262u, func_2(vec4<i32>(global1.e.x, -1i, 1i, var_2.e.x), Struct_1(var_2.a, global1.b, vec2<f32>(var_2.c.x, -674f), false, global1.e)) >> ((var_2.b.x ^ 31602u) % 32u)), ~(_wgslsmith_sub_vec3_u32(vec3<u32>(7696u, u_input.a, var_1.x), var_2.b) & vec3<u32>(7535u, 1u, 20651u)), (_wgslsmith_clamp_vec3_u32(vec3<u32>(var_1.x, var_2.b.x, 75544u), var_2.b, vec3<u32>(4424u, u_input.a, u_input.a)) | vec3<u32>(1u, 18660u, 38901u)) << (reverseBits(~global1.b) % vec3<u32>(32u))), var_2.c, !global0.x, global1.e);
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>) -> i32 {
    global0 = func_1().a.yx;
    var var_0 = Struct_2(Struct_1(global1.a, ~vec3<u32>(arg_0.b.x >> (u_input.a % 32u), global1.b.x, ~52426u), arg_0.c, true, select(select(select(arg_0.e, global1.e, false), _wgslsmith_add_vec3_i32(vec3<i32>(44010i, 16980i, arg_0.e.x), vec3<i32>(-2147483647i, 2147483647i, global1.e.x)), func_1().a.xzy), arg_0.e, false)), vec4<u32>(4294967295u ^ ~(arg_0.b.x << (43724u % 32u)), _wgslsmith_mod_u32(_wgslsmith_div_u32(_wgslsmith_sub_u32(13223u, arg_0.b.x), ~24000u), global1.b.x), ~global1.b.x, ~max(1u, 74206u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.c.x, arg_0.c.x, -2210f), vec3<f32>(814f, 1473f, global1.c.x)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.c.x, -1695f, 446f), vec3<f32>(-1132f, global1.c.x, -395f), global0.x))))), -func_1().e.zy);
    var var_1 = _wgslsmith_dot_vec4_i32(abs(vec4<i32>(-global1.e.x, select(44295i, -8203i, global1.a.x), 1i, _wgslsmith_mult_i32(global1.e.x, var_0.d.x))), firstLeadingBit(_wgslsmith_div_vec4_i32(-vec4<i32>(2264i, var_0.a.e.x, var_0.d.x, var_0.a.e.x), _wgslsmith_div_vec4_i32(vec4<i32>(0i, -38393i, 2147483647i, 43580i), vec4<i32>(arg_0.e.x, arg_0.e.x, var_0.d.x, -1i))))) << (_wgslsmith_clamp_u32(global1.b.x, ~global1.b.x & ((1u | global1.b.x) >> (_wgslsmith_mod_u32(arg_0.b.x, 1u) % 32u)), 26864u) % 32u);
    let var_2 = var_0.c;
    let var_3 = func_1().b.x ^ max(~0u, max(5960u, firstTrailingBit(~0u)));
    return ~(-36582i) & abs(~var_0.a.e.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = max(1i, func_4(func_1(), select(select(global1.a, global1.a, global1.a), !vec4<bool>(false, global0.x, true, global0.x), all(vec2<bool>(true, global1.d)))) ^ abs(global1.e.x));
    var var_1 = global1.b.x;
    global0 = global1.a.yw;
    var var_2 = global1.b >> (((vec3<u32>(max(global1.b.x, 0u), global1.b.x, ~11773u) << (vec3<u32>(u_input.a, 35684u, u_input.a & u_input.a) % vec3<u32>(32u))) >> (countOneBits(min(~global1.b, _wgslsmith_add_vec3_u32(global1.b, vec3<u32>(1u, global1.b.x, global1.b.x)))) % vec3<u32>(32u))) % vec3<u32>(32u));
    var var_3 = Struct_1(!global1.a, global1.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1035f, -287f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-876f, global1.c.x) * global1.c)), global1.c))), global0.x, vec3<i32>(2147483647i, 7078i, var_0));
    global1 = Struct_1(select(func_1().a, select(select(!var_3.a, select(var_3.a, global1.a, vec4<bool>(true, var_3.a.x, false, true)), var_3.a), !(!vec4<bool>(true, global1.a.x, false, true)), var_3.a), all(select(select(vec2<bool>(global1.d, var_3.a.x), vec2<bool>(false, false), global1.a.x), vec2<bool>(true, true), global0.x))), var_3.b, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-141f, -392f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-2199f, -1727f) * global1.c))) * global1.c))), true, _wgslsmith_mult_vec3_i32(vec3<i32>(global1.e.x, reverseBits(-2147483647i), -4694i), -vec3<i32>(var_3.e.x & 666i, reverseBits(var_3.e.x), _wgslsmith_mult_i32(0i, var_0))));
    var var_4 = Struct_2(Struct_1(global1.a, abs(~vec3<u32>(35913u, var_2.x, global1.b.x)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(min(733f, 629f)), _wgslsmith_f_op_f32(-var_3.c.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(220f, var_3.c.x) + vec2<f32>(global1.c.x, var_3.c.x)) - global1.c), var_3.d)), true, _wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(global1.e, global1.e, vec3<i32>(var_3.e.x, var_0, 0i)), var_3.e << (vec3<u32>(1u, 59193u, var_3.b.x) % vec3<u32>(32u))), countOneBits(select(global1.e, var_3.e, var_3.a.zwx)), vec3<i32>(21030i, _wgslsmith_sub_i32(-19765i, -47307i), ~var_0))), ~vec4<u32>(max(min(global1.b.x, global1.b.x), 1u), abs(57599u << (u_input.a % 32u)), u_input.a, countOneBits(u_input.a)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(418f, 1041f, global0.x)))), var_3.c.x, global1.c.x), vec3<f32>(-134f, _wgslsmith_f_op_f32(-675f * global1.c.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_3.c.x * global1.c.x), -364f)))), func_1().e.zz);
    var var_5 = Struct_2(func_1(), var_4.b, var_4.c, vec2<i32>(global1.e.x, var_0));
    let var_6 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(var_4.c, var_5.c))), var_4.d.x, func_1().b.yy);
}

