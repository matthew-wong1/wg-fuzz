struct Struct_1 {
    a: i32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec4<f32>,
    c: u32,
}

struct Struct_4 {
    a: bool,
    b: vec4<i32>,
    c: vec2<bool>,
    d: i32,
    e: vec2<f32>,
}

struct Struct_5 {
    a: vec4<i32>,
    b: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, false);

var<private> global1: i32;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: u32, arg_1: Struct_3) -> i32 {
    let var_0 = Struct_2(-u_input.c, Struct_1((abs(-2464i) >> ((u_input.a.x >> (1u % 32u)) % 32u)) << (43832u % 32u), !(!select(vec2<bool>(global0.x, global0.x), vec2<bool>(false, global0.x), vec2<bool>(global0.x, true)))));
    global0 = var_0.b.b;
    let var_1 = Struct_3(_wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(90766u, 0u) ^ ~vec2<u32>(4294967295u, u_input.a.x), _wgslsmith_div_vec2_u32(u_input.a.wy, _wgslsmith_div_vec2_u32(u_input.a.yw, vec2<u32>(u_input.a.x, u_input.a.x))), vec2<u32>(arg_0, ~4294967295u)), arg_1.a, ~u_input.a.yz), arg_1.b, arg_1.a.x);
    global1 = var_0.b.a & u_input.b;
    global0 = var_0.b.b;
    return -53701i;
}

fn func_3(arg_0: i32, arg_1: bool) -> Struct_5 {
    global1 = -firstTrailingBit(~reverseBits(arg_0 << (u_input.a.x % 32u)));
    var var_0 = firstTrailingBit(~(~u_input.a.x));
    let var_1 = ~(~(~(~vec2<u32>(u_input.a.x, u_input.a.x)))) >> (_wgslsmith_sub_vec2_u32(u_input.a.yw, u_input.a.xy) % vec2<u32>(32u));
    var_0 = ~(~(_wgslsmith_clamp_u32(var_1.x, var_1.x, var_1.x) & u_input.a.x) & u_input.a.x);
    let var_2 = _wgslsmith_mult_i32(-2147483647i, firstLeadingBit(2147483647i));
    return Struct_5(abs(-(~_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, u_input.c, 2147483647i, 2147483647i), vec4<i32>(var_2, -16122i, var_2, var_2)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-851f)))) * -839f) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(501f - _wgslsmith_f_op_f32(758f + -446f))));
}

fn func_4(arg_0: Struct_5, arg_1: vec4<f32>, arg_2: f32, arg_3: i32) -> i32 {
    var var_0 = Struct_4(true, firstLeadingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(func_2(u_input.a.x, Struct_3(u_input.a.wx, arg_1, 67936u)), -22416i, -u_input.c, -arg_0.a.x), max(arg_0.a, vec4<i32>(0i, arg_3, arg_0.a.x, arg_0.a.x)))), select(vec2<bool>(func_3(abs(1i), true).b, !any(vec2<bool>(arg_0.b, false))), select(select(select(vec2<bool>(arg_0.b, true), vec2<bool>(false, true), global0.x), vec2<bool>(global0.x, global0.x), false), vec2<bool>(u_input.a.x > 1u, func_3(arg_3, false).b), _wgslsmith_add_i32(-1i, arg_0.a.x) > max(-17200i, 10374i)), vec2<bool>(all(!vec4<bool>(true, true, arg_0.b, true)), global0.x)), 0i, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-352f, -643f) - _wgslsmith_f_op_f32(trunc(-476f))), arg_2) - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_2, arg_1.x), arg_1.zz, vec2<bool>(false, global0.x)))))))));
    let var_1 = max(vec2<i32>(-1i) * -func_3(-1i, arg_0.b || false).a.zy, abs(vec2<i32>(1i, 44707i)));
    let var_2 = Struct_3(~countOneBits(countOneBits(u_input.a.zz)), _wgslsmith_f_op_vec4_f32(arg_1 + arg_1), u_input.a.x);
    var_0 = Struct_4(func_3(1i >> ((~var_2.c << (4294967295u % 32u)) % 32u), true).b, vec4<i32>(arg_3, 46543i, 0i, _wgslsmith_div_i32(func_2(_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.a.x, u_input.a.x), vec2<u32>(37824u, u_input.a.x)), var_2), (arg_3 & arg_0.a.x) & -24127i)), !var_0.c, _wgslsmith_dot_vec4_i32(abs(-_wgslsmith_mod_vec4_i32(var_0.b, vec4<i32>(u_input.e, var_1.x, var_1.x, -12533i))), abs(var_0.b ^ vec4<i32>(arg_3, var_0.d, 24267i, var_0.b.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) + _wgslsmith_f_op_f32(-var_2.b.x)))));
    let var_3 = 1u;
    return -_wgslsmith_dot_vec2_i32(vec2<i32>(i32(-1i) * -1i, u_input.d.x), ~func_3(arg_3, true).a.yy | vec2<i32>(13205i >> (var_2.c % 32u), -arg_3));
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: u32, arg_3: vec2<bool>) -> i32 {
    global0 = !select(vec2<bool>(global0.x, u_input.a.x != _wgslsmith_add_u32(39678u, arg_2)), select(select(vec2<bool>(true, global0.x), select(arg_3, vec2<bool>(false, true), arg_3), all(vec4<bool>(arg_0, arg_3.x, false, global0.x))), arg_3, select(true, any(vec3<bool>(arg_0, arg_0, global0.x)), arg_0)), true);
    global0 = vec2<bool>(true, true);
    global1 = func_4(func_3(_wgslsmith_div_i32(2147483647i, func_2(79597u, Struct_3(vec2<u32>(0u, u_input.a.x), vec4<f32>(-207f, arg_1, 1180f, -614f), 53817u))), !arg_3.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(742f, arg_1, arg_1, arg_1)) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_1, arg_1, -1000f, arg_1), vec4<f32>(-1491f, -3608f, arg_1, arg_1)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1116f), _wgslsmith_f_op_f32(-882f * _wgslsmith_f_op_f32(1332f + -1000f))))), _wgslsmith_mult_i32(0i, u_input.e));
    let var_0 = vec3<bool>(true, true, true);
    let var_1 = ~4294967295u;
    return 21876i;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(u_input.e, _wgslsmith_add_i32(-12441i, -44582i)), _wgslsmith_dot_vec4_i32(-vec4<i32>(1i, u_input.e, 17808i, 0i), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, 0i, u_input.c, -10484i), vec4<i32>(-1i, 0i, u_input.d.x, u_input.c))) | _wgslsmith_mult_i32(max(-2147483647i, 15637i), _wgslsmith_mod_i32(u_input.d.x, u_input.e))), _wgslsmith_sub_vec2_i32(u_input.d, vec2<i32>(~_wgslsmith_clamp_i32(-1i, 0i, u_input.d.x), max(select(2147483647i, u_input.c, global0.x), func_1(true, -1114f, 14337u, vec2<bool>(true, true))))));
    var var_0 = all(!vec4<bool>(any(vec3<bool>(false, global0.x, true)) && !global0.x, global0.x, !(false & global0.x), _wgslsmith_f_op_f32(ceil(695f)) == _wgslsmith_f_op_f32(floor(178f))));
    var var_1 = ~vec3<i32>(_wgslsmith_clamp_i32(u_input.d.x, u_input.c, u_input.c), -14963i, u_input.c);
    var var_2 = !(!(!(!vec4<bool>(global0.x, global0.x, global0.x, global0.x))));
    global1 = 1063i;
    var_2 = select(select(vec4<bool>(global0.x, true, global0.x, true), vec4<bool>(var_2.x, true, all(!vec4<bool>(global0.x, true, global0.x, true)), all(var_2.zzw)), vec4<bool>(false, true, false, false)), vec4<bool>(!select(true, select(true, false, false), global0.x), var_2.x, true, true), any(!(!(!vec3<bool>(true, global0.x, false)))));
    var var_3 = _wgslsmith_add_vec3_i32(-select(func_3(u_input.e, true).a.yxw, vec3<i32>(u_input.d.x, -1i, 2147483647i) << (vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u) % vec3<u32>(32u)), vec3<bool>(true, var_2.x, var_2.x)) << (firstLeadingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, u_input.a.x, u_input.a.x) ^ vec3<u32>(72181u, 1u, u_input.a.x), min(u_input.a.yxy, vec3<u32>(0u, u_input.a.x, 1u)), ~u_input.a.wyw)) % vec3<u32>(32u)), _wgslsmith_add_vec3_i32(vec3<i32>(max(u_input.e, ~2147483647i), u_input.b, 1i), _wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c, var_1.x, u_input.c), vec3<i32>(u_input.d.x, 0i, var_1.x)) >> (firstLeadingBit(vec3<u32>(0u, u_input.a.x, u_input.a.x)) % vec3<u32>(32u)), _wgslsmith_div_vec3_i32(firstLeadingBit(vec3<i32>(0i, 1i, -24253i)), vec3<i32>(-21699i, -21149i, -15844i)))));
    global0 = !var_2.wy;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -986f), _wgslsmith_f_op_f32(450f + 1337f)), 1229f)), var_1.x, u_input.a.x);
}

