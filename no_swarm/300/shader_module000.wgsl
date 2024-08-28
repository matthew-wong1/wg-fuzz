struct Struct_1 {
    a: vec2<u32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: f32,
    c: vec2<i32>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 18>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_div_vec2_i32(u_input.b.wz, _wgslsmith_sub_vec2_i32(~u_input.b.yy, _wgslsmith_mod_vec2_i32(vec2<i32>(6313i, -1i), vec2<i32>(u_input.b.x, -44257i)) >> (~vec2<u32>(0u, 38271u) % vec2<u32>(32u)))) >> (_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.c.x, 17337u), ~firstTrailingBit(vec2<u32>(u_input.c.x, 6456u) & u_input.c.yy)) % vec2<u32>(32u));
    global0 = array<vec3<i32>, 18>();
    let var_1 = Struct_1(u_input.c.yz, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(391f, 225f, -642f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -2253f, -785f))))));
    let var_2 = Struct_1(var_1.a & abs(var_1.a), _wgslsmith_f_op_vec3_f32(var_1.b - _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.b * vec3<f32>(var_1.b.x, 1102f, -626f)) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(374f, -598f, var_1.b.x), var_1.b)))))));
    var var_3 = Struct_1(min(vec2<u32>(58047u, ~select(var_1.a.x, var_1.a.x, true)), vec2<u32>(~(~var_2.a.x), select(~var_1.a.x, 0u, true))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_2.b.x, var_1.b.x, var_2.b.x)))) + vec3<f32>(var_1.b.x, 282f, -669f)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1.b.x, var_2.b.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -747f), _wgslsmith_f_op_f32(floor(var_2.b.x))))));
}

fn func_2(arg_0: i32) -> i32 {
    var var_0 = Struct_1(vec2<u32>(u_input.c.x, 1u) | vec2<u32>(u_input.c.x, 61190u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-473f - _wgslsmith_f_op_f32(-159f * -676f)), -2270f)));
    var_0 = Struct_1(_wgslsmith_sub_vec2_u32(~_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c.x, 4689u), ~var_0.a, firstTrailingBit(var_0.a)), max(~vec2<u32>(21357u, var_0.a.x), u_input.c.xx)), var_0.b);
    let var_1 = var_0.b;
    var_0 = Struct_1(vec2<u32>(reverseBits(firstTrailingBit(13084u)), max(4294967295u, 60225u)), vec3<f32>(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x)), var_1.x));
    global0 = array<vec3<i32>, 18>();
    return firstTrailingBit(arg_0);
}

fn func_1(arg_0: Struct_1, arg_1: vec2<i32>) -> vec2<bool> {
    let var_0 = 649u;
    global0 = array<vec3<i32>, 18>();
    let var_1 = _wgslsmith_mod_vec2_u32(vec2<u32>(1u, arg_0.a.x), vec2<u32>(~u_input.c.x, _wgslsmith_add_u32(_wgslsmith_mod_u32(~37453u, u_input.c.x), u_input.c.x)));
    let var_2 = Struct_2(vec3<i32>(u_input.a, countOneBits(_wgslsmith_sub_i32(func_2(u_input.b.x), u_input.b.x)), _wgslsmith_dot_vec3_i32(firstTrailingBit(countOneBits(vec3<i32>(-57389i, 13609i, 2000i))), global0[_wgslsmith_index_u32(var_0, 18u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(arg_0.b.x, _wgslsmith_f_op_f32(arg_0.b.x + arg_0.b.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(arg_0.b.x, 1194f, true)), arg_0.b.x))) + _wgslsmith_f_op_f32(select(444f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.b.x * arg_0.b.x), arg_0.b.x), all(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)))))), vec2<i32>(arg_1.x, _wgslsmith_div_i32(u_input.a >> (~4294967295u % 32u), u_input.b.x)), vec2<u32>(64510u, _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(48720u, var_1.x, u_input.c.x), vec3<u32>(arg_0.a.x, 0u, arg_0.a.x)), reverseBits(min(vec3<u32>(0u, 70756u, 4294967295u), u_input.c)))));
    global0 = array<vec3<i32>, 18>();
    return !select(select(vec2<bool>(false, false), vec2<bool>(true, true), all(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), false))), vec2<bool>(true, ~0u >= var_2.d.x), !select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false)), select(vec2<bool>(true, true), vec2<bool>(false, true), true)));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_2, arg_3: vec4<i32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(floor(arg_0.b));
    let var_1 = Struct_2(countOneBits(firstLeadingBit(vec3<i32>(-21461i, -2147483647i, _wgslsmith_div_i32(35138i, u_input.a)))), 1000f, vec2<i32>(7713i, _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(arg_2.a.xx, vec2<i32>(arg_2.a.x, u_input.a), vec2<i32>(10363i, arg_2.a.x)), vec2<i32>(arg_2.c.x, 15937i)), vec2<i32>(-2147483647i, arg_2.a.x) ^ arg_3.xx)), abs(_wgslsmith_add_vec2_u32(arg_0.a, reverseBits(u_input.c.zy))));
    global0 = array<vec3<i32>, 18>();
    let var_2 = arg_1.x;
    let var_3 = Struct_1(~_wgslsmith_div_vec2_u32(select(select(vec2<u32>(arg_0.a.x, 1u), vec2<u32>(u_input.c.x, 0u), vec2<bool>(false, false)), u_input.c.xy, arg_1), vec2<u32>(0u, firstTrailingBit(25695u))), _wgslsmith_div_vec3_f32(arg_0.b, var_0));
    return var_3;
}

fn func_5(arg_0: vec2<u32>, arg_1: bool, arg_2: Struct_1, arg_3: i32) -> Struct_1 {
    global0 = array<vec3<i32>, 18>();
    global0 = array<vec3<i32>, 18>();
    var var_0 = arg_0.x;
    var var_1 = select(~(~(~0u)), _wgslsmith_add_u32(~(~_wgslsmith_clamp_u32(arg_0.x, arg_2.a.x, arg_2.a.x)), reverseBits(_wgslsmith_sub_u32(arg_2.a.x, 4294967295u)) & ~1u), true);
    var var_2 = _wgslsmith_sub_u32(~(~u_input.c.x), arg_0.x);
    return arg_2;
}

fn func_6(arg_0: Struct_1, arg_1: u32, arg_2: f32) -> Struct_2 {
    let var_0 = arg_0;
    let var_1 = !(!(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true)));
    var var_2 = Struct_2(global0[_wgslsmith_index_u32(firstLeadingBit(~max(_wgslsmith_clamp_u32(arg_0.a.x, 4294967295u, u_input.c.x), 0u)), 18u)], -1199f, max(-_wgslsmith_clamp_vec2_i32(u_input.b.yx, vec2<i32>(-45964i, u_input.b.x), u_input.b.wy), -u_input.b.yy), _wgslsmith_add_vec2_u32(arg_0.a, _wgslsmith_mod_vec2_u32(max(_wgslsmith_mod_vec2_u32(var_0.a, vec2<u32>(arg_1, 20707u)), ~arg_0.a), vec2<u32>(firstTrailingBit(4294967295u), 1u))));
    var var_3 = countOneBits(firstLeadingBit(select(select(_wgslsmith_mult_vec4_u32(vec4<u32>(var_2.d.x, 36241u, arg_1, var_2.d.x), vec4<u32>(u_input.c.x, 29929u, var_2.d.x, arg_1)), vec4<u32>(62996u, arg_0.a.x, 4294967295u, 0u), var_2.b <= 369f), firstLeadingBit(vec4<u32>(0u, 71561u, 4294967295u, arg_1)), false)));
    var_3 = firstTrailingBit((vec4<u32>(~arg_0.a.x, _wgslsmith_mod_u32(var_3.x, 11327u), ~81090u, var_0.a.x) >> (~max(vec4<u32>(86769u, var_0.a.x, var_2.d.x, 46818u), vec4<u32>(4294967295u, var_0.a.x, 0u, 0u)) % vec4<u32>(32u))) & max(vec4<u32>(8751u, 56214u, 0u >> (var_2.d.x % 32u), arg_0.a.x >> (25184u % 32u)), ~(vec4<u32>(arg_1, arg_0.a.x, 0u, var_2.d.x) << (vec4<u32>(14177u, var_0.a.x, 4294967295u, 5777u) % vec4<u32>(32u)))));
    return Struct_2(abs(var_2.a), _wgslsmith_f_op_f32(sign(arg_2)), select(u_input.b.zw, u_input.b.xz, true & (true || var_1.x)), reverseBits(~vec2<u32>(arg_1, ~u_input.c.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(func_5(~_wgslsmith_div_vec2_u32(vec2<u32>(u_input.c.x, u_input.c.x), ~vec2<u32>(u_input.c.x, 1u)), any(vec4<bool>(true, true, true, true)), func_4(Struct_1(vec2<u32>(100125u, u_input.c.x), vec3<f32>(-399f, -1141f, -593f)), select(vec2<bool>(false, false), func_1(Struct_1(u_input.c.xz, vec3<f32>(-1000f, 733f, 1279f)), vec2<i32>(u_input.a, u_input.a)), vec2<bool>(true, true)), Struct_2(vec3<i32>(u_input.a, 0i, u_input.d), 1306f, -u_input.b.wy, u_input.c.yz | vec2<u32>(u_input.c.x, 73726u)), _wgslsmith_clamp_vec4_i32(-vec4<i32>(0i, u_input.b.x, u_input.b.x, u_input.b.x), u_input.b, vec4<i32>(863i, u_input.a, u_input.d, 14537i) << (vec4<u32>(51306u, u_input.c.x, 38703u, u_input.c.x) % vec4<u32>(32u)))), u_input.b.x), 15341u, 1225f);
    var var_1 = 4294967295u;
    var_0 = func_6(Struct_1(var_0.d, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -117f), func_6(Struct_1(var_0.d, vec3<f32>(1356f, var_0.b, var_0.b)), var_0.d.x, -601f).b, -808f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b, var_0.b, var_0.b) - vec3<f32>(var_0.b, -1736f, -676f))), vec3<bool>(true, true, true)))), u_input.c.x, var_0.b);
    var var_2 = func_5(_wgslsmith_mod_vec2_u32(func_5(var_0.d, all(vec2<bool>(true, false)), func_5(var_0.d, false, Struct_1(var_0.d, vec3<f32>(1302f, -200f, -1389f)), 26671i), ~var_0.c.x).a << (_wgslsmith_mod_vec2_u32(firstLeadingBit(vec2<u32>(var_0.d.x, 1u)), func_5(var_0.d, false, Struct_1(var_0.d, vec3<f32>(var_0.b, 2388f, -744f)), u_input.d).a) % vec2<u32>(32u)), ~_wgslsmith_div_vec2_u32(func_5(vec2<u32>(u_input.c.x, 107398u), true, Struct_1(vec2<u32>(u_input.c.x, u_input.c.x), vec3<f32>(var_0.b, 635f, var_0.b)), 1i).a, vec2<u32>(4294967295u, 20160u))), !(var_0.b <= 1335f) & false, Struct_1(~_wgslsmith_mod_vec2_u32(u_input.c.yz, ~vec2<u32>(var_0.d.x, 0u)), vec3<f32>(var_0.b, -2130f, 150f)), -18709i);
    var var_3 = func_4(Struct_1(_wgslsmith_mult_vec2_u32(~(~var_0.d), ~(~vec2<u32>(2775u, var_0.d.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_2.b.x * -223f), -1000f, _wgslsmith_f_op_f32(-var_2.b.x)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(var_2.b, var_2.b)) * var_2.b))), !func_1(Struct_1(_wgslsmith_mod_vec2_u32(vec2<u32>(7587u, 47390u), vec2<u32>(4294967295u, 53505u)), _wgslsmith_f_op_vec3_f32(-var_2.b)), var_0.c), func_6(func_5(~(~var_0.d), !(1110f > var_0.b), Struct_1(func_4(Struct_1(u_input.c.zy, vec3<f32>(var_2.b.x, var_0.b, -2635f)), vec2<bool>(false, true), Struct_2(var_0.a, -1224f, var_0.c, vec2<u32>(0u, var_2.a.x)), vec4<i32>(-47247i, 2567i, u_input.a, u_input.a)).a, vec3<f32>(var_0.b, 1000f, 834f)), u_input.b.x), 108302u, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-400f - var_0.b))))), abs(min(u_input.b, -vec4<i32>(51370i, u_input.b.x, var_0.c.x, var_0.c.x) & vec4<i32>(var_0.c.x, -28128i, u_input.b.x, u_input.b.x))));
    var_2 = func_5(~func_6(func_5(~var_0.d, func_1(Struct_1(vec2<u32>(u_input.c.x, 1u), vec3<f32>(-2719f, 541f, 1215f)), vec2<i32>(-1399i, var_0.c.x)).x, Struct_1(vec2<u32>(33584u, var_0.d.x), var_2.b), 41459i), 1u, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1353f + -693f)))).d, (_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(var_2.b.x, -305f)))) == _wgslsmith_f_op_f32(-var_3.b.x)) || true, Struct_1(vec2<u32>(75413u ^ var_2.a.x, 66253u) >> (u_input.c.xy % vec2<u32>(32u)), _wgslsmith_f_op_vec3_f32(var_2.b - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.b.x, -937f, var_3.b.x) * var_3.b)))), i32(-1i) * -26932i);
    var var_4 = -398i;
    let var_5 = 3028i;
    var_2 = func_5(firstLeadingBit(vec2<u32>(abs(var_3.a.x >> (var_3.a.x % 32u)), 4294967295u)), !(_wgslsmith_f_op_f32(-var_3.b.x) == _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(802f)), -2584f, all(vec3<bool>(true, false, true))))), Struct_1(~max(func_4(Struct_1(vec2<u32>(1u, u_input.c.x), vec3<f32>(var_3.b.x, var_2.b.x, 564f)), vec2<bool>(false, true), Struct_2(vec3<i32>(var_0.a.x, u_input.b.x, var_0.a.x), 842f, var_0.c, u_input.c.yz), vec4<i32>(var_0.a.x, -10029i, u_input.d, u_input.a)).a, vec2<u32>(38113u, var_3.a.x)), vec3<f32>(-1290f, -1698f, -1147f)), -var_5);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(-946f, var_0.b, var_0.b, _wgslsmith_f_op_f32(-var_3.b.x)), select(~vec4<u32>(func_5(var_2.a, false, Struct_1(var_3.a, var_3.b), var_5).a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(var_2.a.x, var_0.d.x, 24748u, 1u), vec4<u32>(4294967295u, var_3.a.x, 20164u, var_2.a.x)), u_input.c.x, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.c.x, 25853u, 36454u), vec4<u32>(var_0.d.x, 0u, 6820u, u_input.c.x))), abs(vec4<u32>(0u, 0u, 4294967295u, 7077u) << (vec4<u32>(0u, 1u, var_3.a.x, 55552u) % vec4<u32>(32u))), vec4<bool>(select(u_input.c.x, 0u, false) > _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.d.x, var_3.a.x, 21915u), vec3<u32>(66560u, 132918u, var_0.d.x)), true, _wgslsmith_f_op_f32(-1000f * var_0.b) <= _wgslsmith_f_op_f32(max(var_3.b.x, 579f)), func_1(Struct_1(var_3.a, var_2.b), abs(var_0.a.xz)).x)), u_input.b.yyz);
}

