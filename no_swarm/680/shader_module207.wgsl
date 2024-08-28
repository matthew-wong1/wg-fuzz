struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: vec4<u32>,
    d: vec2<i32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: bool,
    d: vec4<i32>,
    e: i32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<i32, 4>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec2<i32>) -> i32 {
    let var_0 = false;
    var var_1 = Struct_4(arg_0.d ^ vec2<i32>(_wgslsmith_clamp_i32(-1i, arg_0.d.x, global1[_wgslsmith_index_u32(25617u, 4u)]), _wgslsmith_sub_i32(-7751i, arg_2.x)), Struct_3(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-2668f, 1000f, -307f, -263f) + vec4<f32>(-1829f, -300f, -774f, 1000f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(234f, 609f, -1472f, 601f), vec4<f32>(307f, 503f, -613f, 1257f))), vec4<f32>(-1536f, 128f, 1000f, 583f), true)), vec4<bool>(!arg_1.c, var_0, true, !arg_1.c))), Struct_2(Struct_1(select(arg_1.a.e, vec3<bool>(arg_1.c, false, false), var_0), false, arg_0.c, _wgslsmith_sub_vec2_i32(arg_2, arg_2), vec3<bool>(false, false, false)), ~arg_2, true & any(vec4<bool>(false, true, true, false)), -_wgslsmith_sub_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(arg_0.c.x, 4u)], -41018i, arg_2.x, 16455i), arg_1.d), reverseBits(arg_2.x))));
    var_1 = Struct_4(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_2.x, -22748i, arg_1.a.d.x >> (arg_0.c.x % 32u)), ~_wgslsmith_mult_vec3_i32(vec3<i32>(arg_0.d.x, global1[_wgslsmith_index_u32(u_input.a.x, 4u)], arg_1.b.x), vec3<i32>(2147483647i, global1[_wgslsmith_index_u32(u_input.a.x, 4u)], global1[_wgslsmith_index_u32(67767u, 4u)]))), -(i32(-1i) * -57831i)), var_1.b);
    global1 = array<i32, 4>();
    let var_2 = Struct_4(vec2<i32>(_wgslsmith_sub_i32(-arg_1.e, 1i) >> (~arg_1.a.c.x % 32u), _wgslsmith_sub_i32(max(-12851i, abs(1i)), var_1.b.b.d.x)), var_1.b);
    return 2147483647i;
}

fn func_2(arg_0: Struct_2) -> Struct_2 {
    var var_0 = Struct_4(select(arg_0.a.d, min(vec2<i32>(arg_0.a.d.x, global1[_wgslsmith_index_u32(4294967295u, 4u)]) << (vec2<u32>(4294967295u, arg_0.a.c.x) % vec2<u32>(32u)), reverseBits(vec2<i32>(1i, arg_0.d.x) | arg_0.b)), !(!(!vec2<bool>(arg_0.c, false)))), Struct_3(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1000f, _wgslsmith_f_op_f32(f32(-1f) * -498f), -596f, _wgslsmith_f_op_f32(-375f + 274f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(504f, 1253f, 1373f, -870f) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(176f, -2259f, -491f, 1651f)))))), arg_0));
    var var_1 = 5720u;
    global0 = -1i;
    let var_2 = Struct_1(vec3<bool>(true, !arg_0.c, (func_3(arg_0.a, var_0.b.b, var_0.a) ^ 1i) < -1i), true, var_0.b.b.a.c, countOneBits(_wgslsmith_sub_vec2_i32(vec2<i32>(42325i, -25302i), arg_0.a.d << (abs(u_input.a) % vec2<u32>(32u)))), !var_0.b.b.a.a);
    let var_3 = var_0.b.b;
    return Struct_2(Struct_1(var_0.b.b.a.e, all(select(vec4<bool>(true, var_0.b.b.c, var_3.c, true), vec4<bool>(true, var_0.b.b.c, var_3.c, var_2.e.x), !var_0.b.b.a.e.x)), vec4<u32>(firstLeadingBit(_wgslsmith_div_u32(4294967295u, u_input.a.x)), ~(~var_2.c.x), var_2.c.x, 10877u), _wgslsmith_sub_vec2_i32(var_3.b, vec2<i32>(var_2.d.x, -27723i)), var_3.a.a), reverseBits(_wgslsmith_add_vec2_i32(vec2<i32>(var_3.d.x, var_3.e), -vec2<i32>(global1[_wgslsmith_index_u32(var_0.b.b.a.c.x, 4u)], var_3.b.x)) ^ countOneBits(vec2<i32>(1i, 0i))), false, var_0.b.b.d, -2147483647i);
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: vec4<bool>) -> Struct_2 {
    global0 = _wgslsmith_sub_i32(~arg_1.e, ~_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-7534i, arg_1.b.x, 36048i), vec3<i32>(-11249i, global1[_wgslsmith_index_u32(arg_1.a.c.x, 4u)], global1[_wgslsmith_index_u32(82163u, 4u)])), arg_1.d.xzw));
    var var_0 = firstTrailingBit(-arg_1.e);
    var var_1 = 67173u;
    var var_2 = select(arg_1.c, 0u != _wgslsmith_div_u32(_wgslsmith_add_u32(arg_1.a.c.x, arg_1.a.c.x), u_input.a.x), true);
    var var_3 = 1302f;
    return Struct_2(Struct_1(vec3<bool>(true || (arg_1.e > -2147483647i), !(arg_1.a.c.x != 39580u), false), arg_1.c, abs(~firstTrailingBit(arg_1.a.c)), _wgslsmith_div_vec2_i32(vec2<i32>(1i, max(-30866i, arg_1.b.x)), vec2<i32>(global1[_wgslsmith_index_u32(1u, 4u)], _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, global1[_wgslsmith_index_u32(33662u, 4u)], global1[_wgslsmith_index_u32(4294967295u, 4u)]), arg_1.d.wxw))), !(!arg_2.wxx)), func_2(func_2(Struct_2(arg_1.a, func_2(arg_1).b, false, reverseBits(vec4<i32>(0i, arg_1.a.d.x, arg_1.d.x, arg_1.b.x)), 0i))).a.d, false | (~1i > global1[_wgslsmith_index_u32(firstLeadingBit(arg_1.a.c.x) | ~4294967295u, 4u)]), firstLeadingBit(_wgslsmith_clamp_vec4_i32(arg_1.d, _wgslsmith_mod_vec4_i32(arg_1.d, select(arg_1.d, vec4<i32>(arg_1.a.d.x, 22240i, -27724i, 39195i), true)), countOneBits(arg_1.d))), arg_1.d.x);
}

fn func_1(arg_0: i32, arg_1: Struct_3, arg_2: u32) -> Struct_4 {
    let var_0 = -151f;
    global0 = -reverseBits(firstLeadingBit(-_wgslsmith_mult_i32(arg_0, arg_0)));
    global0 = -11405i;
    global0 = -(~2147483647i);
    let var_1 = Struct_3(arg_1.a, func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(614f, arg_1.a.x))))), func_2(arg_1.b), !vec4<bool>(false, !arg_1.b.c, !arg_1.b.a.b, arg_1.b.c)));
    return Struct_4(vec2<i32>(0i, -_wgslsmith_mod_i32(-var_1.b.b.x, -1i)), arg_1);
}

fn func_5(arg_0: u32, arg_1: Struct_4, arg_2: u32) -> Struct_2 {
    global1 = array<i32, 4>();
    var var_0 = Struct_4(arg_1.a, Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_1.b.a.x, 1319f, 698f, arg_1.b.a.x))))), Struct_2(func_4(_wgslsmith_f_op_vec2_f32(-arg_1.b.a.xw), func_1(global1[_wgslsmith_index_u32(34622u, 4u)], arg_1.b, arg_0).b.b, vec4<bool>(arg_1.b.b.a.e.x, arg_1.b.b.c, arg_1.b.b.c, true)).a, ~vec2<i32>(arg_1.b.b.d.x, 78656i) ^ vec2<i32>(global1[_wgslsmith_index_u32(1u, 4u)], arg_1.a.x), arg_1.b.b.c == !arg_1.b.b.a.a.x, countOneBits(-arg_1.b.b.d), i32(-1i) * -2147483647i)));
    var var_1 = var_0.b.b.a;
    global0 = var_0.b.b.b.x;
    global1 = array<i32, 4>();
    return Struct_2(func_1(global1[_wgslsmith_index_u32(max(1u, var_1.c.x), 4u)], func_1(29735i, var_0.b, reverseBits(arg_1.b.b.a.c.x)).b, ~arg_0).b.b.a, -_wgslsmith_add_vec2_i32(func_1(-global1[_wgslsmith_index_u32(arg_1.b.b.a.c.x, 4u)], Struct_3(arg_1.b.a, var_0.b.b), abs(u_input.a.x)).a, vec2<i32>(var_0.a.x & -32470i, 37748i)), true, -arg_1.b.b.d, arg_1.a.x);
}

fn func_6(arg_0: Struct_3, arg_1: vec4<i32>) -> u32 {
    var var_0 = vec3<i32>(-(~func_3(arg_0.b.a, func_1(global1[_wgslsmith_index_u32(u_input.a.x, 4u)], Struct_3(arg_0.a, Struct_2(arg_0.b.a, vec2<i32>(14545i, -2147483647i), arg_0.b.a.e.x, arg_0.b.d, 2147483647i)), arg_0.b.a.c.x).b.b, vec2<i32>(-53634i, 17230i) >> (arg_0.b.a.c.xz % vec2<u32>(32u)))), -4749i, -arg_0.b.a.d.x);
    let var_1 = ~arg_1.x;
    var_0 = vec3<i32>(global1[_wgslsmith_index_u32(7703u, 4u)], arg_1.x, 2147483647i);
    var var_2 = abs(~vec3<u32>(0u, u_input.a.x, func_4(arg_0.a.wy, arg_0.b, vec4<bool>(false, arg_0.b.c, arg_0.b.c, false)).a.c.x));
    let var_3 = func_1(min(countOneBits(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(4294967295u, ~u_input.a.x), 4u)]), -_wgslsmith_dot_vec3_i32(-arg_1.zyy, vec3<i32>(48944i, global1[_wgslsmith_index_u32(var_2.x, 4u)], -2147483647i) | vec3<i32>(-2147483647i, var_0.x, 10048i))), arg_0, _wgslsmith_div_u32(~abs(4294967295u), _wgslsmith_mult_u32(var_2.x, ~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.b.a.c.x, arg_0.b.a.c.x, 0u, 11307u), arg_0.b.a.c))));
    return _wgslsmith_dot_vec2_u32(min(~vec2<u32>(u_input.a.x, var_3.b.b.a.c.x) >> (_wgslsmith_clamp_vec2_u32(~vec2<u32>(53028u, 57321u), var_3.b.b.a.c.ww, func_2(Struct_2(var_3.b.b.a, vec2<i32>(global1[_wgslsmith_index_u32(0u, 4u)], arg_1.x), arg_0.b.a.b, vec4<i32>(arg_0.b.d.x, global1[_wgslsmith_index_u32(1u, 4u)], var_3.b.b.a.d.x, global1[_wgslsmith_index_u32(arg_0.b.a.c.x, 4u)]), var_1)).a.c.zy) % vec2<u32>(32u)), max(_wgslsmith_clamp_vec2_u32(vec2<u32>(var_2.x, 23184u), u_input.a, ~u_input.a), max(var_3.b.b.a.c.wz, func_5(0u, var_3, 0u).a.c.yz))), vec2<u32>(arg_0.b.a.c.x, ~24464u));
}

fn func_7(arg_0: u32, arg_1: Struct_3) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(arg_1.a.x - arg_1.a.x), -1675f) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a.x, -1000f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-210f, 105f)))))));
    var var_1 = arg_1.b.a;
    let var_2 = reverseBits(-func_2(func_4(_wgslsmith_f_op_vec2_f32(floor(var_0)), func_1(37522i, arg_1, u_input.a.x).b.b, select(vec4<bool>(var_1.a.x, arg_1.b.a.a.x, var_1.e.x, true), vec4<bool>(var_1.e.x, arg_1.b.c, var_1.e.x, var_1.a.x), false))).d);
    var_1 = Struct_1(func_2(func_2(arg_1.b)).a.a, arg_1.b.a.e.x | select(!any(var_1.e), var_1.a.x, any(vec4<bool>(false, var_1.b, false, var_1.a.x)) | !arg_1.b.c), vec4<u32>(4294967295u, ~(~0u), select(~arg_0, func_4(vec2<f32>(arg_1.a.x, var_0.x), arg_1.b, vec4<bool>(true, arg_1.b.a.b, false, arg_1.b.a.e.x)).a.c.x, !arg_1.b.a.e.x) ^ arg_1.b.a.c.x, ~arg_1.b.a.c.x), countOneBits(vec2<i32>(func_1(global1[_wgslsmith_index_u32(arg_1.b.a.c.x, 4u)], arg_1, var_1.c.x).b.b.b.x, i32(-1i) * -2147483647i) | var_1.d), !(!vec3<bool>(true, -1620f != var_0.x, !arg_1.b.a.e.x)));
    var var_3 = !(arg_1.b.c & !any(vec4<bool>(arg_1.b.a.a.x, arg_1.b.a.e.x, arg_1.b.a.a.x, false)));
    return Struct_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(-544f, -465f, _wgslsmith_f_op_f32(step(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -345f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))) + vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(arg_1.a.x, arg_1.a.x)))), arg_1.a.x, arg_1.a.x, var_0.x)), arg_1.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(func_6(Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-598f, 1617f, -3024f, 438f)), func_5(1u, func_1(global1[_wgslsmith_index_u32(4294967295u, 4u)], Struct_3(vec4<f32>(-987f, -577f, 393f, -272f), Struct_2(Struct_1(vec3<bool>(true, false, false), true, vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x), vec2<i32>(global1[_wgslsmith_index_u32(5666u, 4u)], 2147483647i), vec3<bool>(true, false, false)), vec2<i32>(global1[_wgslsmith_index_u32(13376u, 4u)], global1[_wgslsmith_index_u32(1u, 4u)]), true, vec4<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 4u)], global1[_wgslsmith_index_u32(4294967295u, 4u)], 40926i, global1[_wgslsmith_index_u32(u_input.a.x, 4u)]), 19521i)), 8725u), ~u_input.a.x)), vec4<i32>(func_3(func_4(vec2<f32>(1000f, -165f), Struct_2(Struct_1(vec3<bool>(false, false, true), false, vec4<u32>(4294967295u, 32866u, u_input.a.x, u_input.a.x), vec2<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 4u)], global1[_wgslsmith_index_u32(42360u, 4u)]), vec3<bool>(true, true, true)), vec2<i32>(-29575i, global1[_wgslsmith_index_u32(10421u, 4u)]), true, vec4<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 4u)], global1[_wgslsmith_index_u32(u_input.a.x, 4u)], -5479i, 0i), 39043i), vec4<bool>(false, true, false, true)).a, Struct_2(Struct_1(vec3<bool>(false, false, false), true, vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 13903u), vec2<i32>(global1[_wgslsmith_index_u32(12841u, 4u)], 21501i), vec3<bool>(true, true, true)), vec2<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 4u)], 10340i), true, vec4<i32>(global1[_wgslsmith_index_u32(0u, 4u)], global1[_wgslsmith_index_u32(1u, 4u)], 0i, 37924i), global1[_wgslsmith_index_u32(5900u, 4u)]), abs(vec2<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 4u)], -61386i))), global1[_wgslsmith_index_u32(1u, 4u)], global1[_wgslsmith_index_u32(1u, 4u)], ~(~global1[_wgslsmith_index_u32(u_input.a.x, 4u)]))), func_1(countOneBits(-18710i >> (reverseBits(u_input.a.x) % 32u)), func_1(global1[_wgslsmith_index_u32(0u ^ select(u_input.a.x, 84858u, false), 4u)], func_1(global1[_wgslsmith_index_u32(1u, 4u)], func_1(22121i, Struct_3(vec4<f32>(-117f, 1516f, -318f, 1021f), Struct_2(Struct_1(vec3<bool>(false, false, true), false, vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 1u), vec2<i32>(2147483647i, global1[_wgslsmith_index_u32(u_input.a.x, 4u)]), vec3<bool>(false, true, false)), vec2<i32>(global1[_wgslsmith_index_u32(2088u, 4u)], global1[_wgslsmith_index_u32(0u, 4u)]), true, vec4<i32>(global1[_wgslsmith_index_u32(0u, 4u)], global1[_wgslsmith_index_u32(14136u, 4u)], 2147483647i, 38035i), -899i)), 35455u).b, max(43839u, 1u)).b, u_input.a.x).b, ~func_1(-global1[_wgslsmith_index_u32(u_input.a.x, 4u)], func_1(-46678i, Struct_3(vec4<f32>(1498f, 1000f, 1869f, -424f), Struct_2(Struct_1(vec3<bool>(true, true, true), false, vec4<u32>(u_input.a.x, 14842u, 1u, 27018u), vec2<i32>(-23738i, 23221i), vec3<bool>(true, true, true)), vec2<i32>(global1[_wgslsmith_index_u32(28565u, 4u)], -1i), false, vec4<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 4u)], -2147483647i, global1[_wgslsmith_index_u32(u_input.a.x, 4u)], global1[_wgslsmith_index_u32(u_input.a.x, 4u)]), -2147483647i)), u_input.a.x).b, u_input.a.x).b.b.a.c.x).b);
    var var_1 = var_0;
    let var_2 = vec3<i32>(~global1[_wgslsmith_index_u32(u_input.a.x, 4u)], -8269i, var_0.b.e);
    var var_3 = var_1.b.a.c.x;
    let var_4 = select(vec4<i32>(2147483647i, 2147483647i, 17483i, 0i), ~(~abs(vec4<i32>(0i, -69789i, var_0.b.a.d.x, -2147483647i))), var_0.b.a.e.x) | -_wgslsmith_clamp_vec4_i32(abs(_wgslsmith_div_vec4_i32(var_0.b.d, var_1.b.d)), _wgslsmith_mod_vec4_i32(-vec4<i32>(547i, 38673i, 77251i, -2147483647i), -vec4<i32>(var_2.x, 6984i, var_2.x, var_2.x)), -vec4<i32>(0i, var_0.b.e, -42099i, 18596i) & max(var_0.b.d, vec4<i32>(var_2.x, 0i, 2147483647i, var_2.x)));
    global1 = array<i32, 4>();
    let var_5 = _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_1.a.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_1(var_0.b.e, var_0, 1u).b.a.x * func_1(2147483647i, Struct_3(var_0.a, var_1.b), 0u).b.a.x))))));
    var var_6 = Struct_2(func_1(global1[_wgslsmith_index_u32(var_1.b.a.c.x, 4u)], Struct_3(func_7(1u, var_0).a, var_0.b), ~(~_wgslsmith_div_u32(4294967295u, u_input.a.x))).b.b.a, ((firstTrailingBit(var_1.b.a.d) ^ var_1.b.a.d) & var_0.b.a.d) >> (vec2<u32>((var_1.b.a.c.x ^ var_0.b.a.c.x) << (53949u % 32u), var_0.b.a.c.x ^ 1u) % vec2<u32>(32u)), var_1.b.c, vec4<i32>(func_5(func_7(_wgslsmith_add_u32(1u, var_0.b.a.c.x), Struct_3(vec4<f32>(-440f, 2249f, var_1.a.x, var_0.a.x), Struct_2(var_1.b.a, var_0.b.a.d, true, vec4<i32>(var_0.b.b.x, 2147483647i, var_0.b.d.x, var_4.x), -13592i))).b.a.c.x, Struct_4(-vec2<i32>(18120i, var_2.x), var_0), ~_wgslsmith_mod_u32(var_1.b.a.c.x, var_1.b.a.c.x)).a.d.x, var_4.x, ~(-(51620i & var_0.b.e)), var_2.x), func_4(vec2<f32>(-2145f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_1.a.x)) - _wgslsmith_f_op_f32(step(2332f, 1498f)))), func_4(_wgslsmith_f_op_vec2_f32(var_0.a.yy + vec2<f32>(var_1.a.x, var_5)), func_1(_wgslsmith_add_i32(var_1.b.a.d.x, -1846i), func_1(global1[_wgslsmith_index_u32(40946u, 4u)], Struct_3(vec4<f32>(1838f, 1000f, 1090f, -1150f), var_0.b), 52767u).b, 22650u).b.b, select(select(vec4<bool>(false, false, var_1.b.c, true), vec4<bool>(true, var_1.b.a.e.x, var_1.b.c, var_0.b.c), vec4<bool>(false, true, false, var_1.b.a.a.x)), select(vec4<bool>(false, true, var_0.b.c, true), vec4<bool>(var_0.b.c, true, var_0.b.c, true), vec4<bool>(true, var_0.b.a.a.x, false, false)), all(vec4<bool>(false, var_1.b.c, true, var_1.b.a.e.x)))), select(vec4<bool>(var_1.b.c, true, true, !var_1.b.c), select(select(vec4<bool>(true, var_0.b.c, var_0.b.a.a.x, var_1.b.c), vec4<bool>(true, true, var_0.b.c, var_0.b.c), false), vec4<bool>(false, var_0.b.c, false, var_1.b.a.b), var_0.a.x == -243f), true)).b.x);
    let x = u_input.a;
    s_output = StorageBuffer(1u >> (1u % 32u), 1000f);
}

