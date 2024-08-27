struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: bool,
    d: u32,
    e: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: Struct_1;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: i32, arg_3: Struct_1) -> f32 {
    var var_0 = -_wgslsmith_div_i32(arg_2, ~arg_2);
    var var_1 = arg_3;
    var var_2 = Struct_1(arg_3.e, -(~(~global0.wyy)), var_1.c, u_input.b.x, 36143i);
    let var_3 = Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(-reverseBits(u_input.d.x), -arg_2), global1.b.zz), vec3<i32>(-1i) * -vec3<i32>(-2147483647i, 0i, -arg_0.a), true, (23787u ^ reverseBits(arg_0.d)) >> (15559u % 32u), 1i << (_wgslsmith_dot_vec3_u32(vec3<u32>(select(0u, var_2.d, false), 1u, min(var_2.d, var_1.d)), vec3<u32>(0u, _wgslsmith_div_u32(arg_3.d, 54145u), 39425u)) % 32u));
    let var_4 = arg_0;
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -360f))))), -797f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(626f, -689f, var_4.c)) - 1419f))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_f_op_f32(ceil(-1020f))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-1379f)), -1359f)))));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> f32 {
    var var_0 = countOneBits(1u);
    global0 = abs(u_input.d);
    var_0 = 1u;
    var var_1 = !vec3<bool>(global1.c || (arg_3.a == global0.x), arg_1.c, arg_3.c);
    var var_2 = arg_1;
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_2, arg_2, global1.c))), arg_2, !arg_3.c)), _wgslsmith_f_op_f32(sign(arg_2))) - _wgslsmith_f_op_f32(arg_2 * _wgslsmith_f_op_f32(ceil(848f))));
}

fn func_2(arg_0: Struct_1, arg_1: bool) -> i32 {
    var var_0 = u_input.d;
    var var_1 = arg_0;
    var_1 = arg_0;
    let var_2 = _wgslsmith_f_op_f32(func_4(_wgslsmith_mod_vec4_u32(u_input.b, ~(~u_input.a) ^ abs(firstTrailingBit(vec4<u32>(arg_0.d, global1.d, 4294967295u, u_input.b.x)))), Struct_1(min(firstTrailingBit(var_1.a), 23505i) & _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(global1.b, var_0.zyw), global1.a), arg_0.b >> (~(~u_input.a.xzz) % vec3<u32>(32u)), !(false | !global1.c), 82322u, -2339i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-366f + _wgslsmith_f_op_f32(max(-251f, -125f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(arg_0, u_input.b, -1i, Struct_1(-44529i, vec3<i32>(1i, global0.x, 24350i), arg_0.c, 32981u, -30695i)))))), arg_0));
    global0 = vec4<i32>(firstTrailingBit(max(_wgslsmith_mod_i32(global1.a, arg_0.b.x), 47021i)), u_input.d.x, countOneBits(-9752i), var_1.a >> (min(~reverseBits(121047u), var_1.d) % 32u));
    return 5666i;
}

fn func_1(arg_0: Struct_1) -> vec4<bool> {
    let var_0 = abs(u_input.a << (u_input.a % vec4<u32>(32u)));
    var var_1 = -vec3<i32>(-1i, -func_2(Struct_1(global1.b.x, arg_0.b, arg_0.c, 4294967295u, global0.x), global1.c), global0.x) >> ((var_0.ywz ^ vec3<u32>(u_input.a.x, ~var_0.x, 1u)) % vec3<u32>(32u));
    var var_2 = Struct_1(abs(~((i32(-1i) * -52657i) | abs(global0.x))), arg_0.b, any(vec3<bool>(!global1.c, global1.c, true)), ~_wgslsmith_div_u32(_wgslsmith_sub_u32(42700u, var_0.x ^ u_input.b.x), 5714u), _wgslsmith_add_i32(0i, var_1.x << (1u % 32u)));
    var var_3 = ~var_0.xy;
    let var_4 = Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(69504i, -(~(-47682i))), _wgslsmith_sub_vec2_i32(global0.wz, var_1.yz)), vec3<i32>(33517i, global1.a >> (var_0.x % 32u), global0.x), false, 1u, _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(var_2.b | _wgslsmith_sub_vec3_i32(arg_0.b, global0.yww), ~max(vec3<i32>(arg_0.e, global0.x, 19987i), arg_0.b), vec3<i32>(global0.x ^ var_1.x, 0i, arg_0.a)), _wgslsmith_add_vec3_i32(reverseBits(var_2.b), min(arg_0.b, vec3<i32>(global1.e, -1i, arg_0.e)) & vec3<i32>(u_input.c.x, var_1.x, 13008i))));
    return !vec4<bool>(any(select(select(vec3<bool>(var_2.c, global1.c, global1.c), vec3<bool>(global1.c, false, true), true), select(vec3<bool>(true, global1.c, true), vec3<bool>(true, false, true), vec3<bool>(var_4.c, false, var_2.c)), !vec3<bool>(var_4.c, true, true))), 14293u != global1.d, arg_0.c, all(select(select(vec4<bool>(var_4.c, arg_0.c, var_2.c, true), vec4<bool>(global1.c, var_2.c, arg_0.c, true), vec4<bool>(var_2.c, arg_0.c, global1.c, arg_0.c)), select(vec4<bool>(true, false, var_2.c, true), vec4<bool>(true, false, true, var_2.c), vec4<bool>(var_4.c, global1.c, var_2.c, true)), false)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(2147483647i, select(vec3<i32>(u_input.d.x & 0i, -7538i, global1.b.x), vec3<i32>(~global1.b.x, 2147483647i, ~u_input.c.x), false) << ((~firstLeadingBit(u_input.b.wyz) & ~vec3<u32>(global1.d, 1u, u_input.a.x)) % vec3<u32>(32u)), global1.c && any(func_1(Struct_1(u_input.d.x, global0.wzy, global1.c, 1u, -2891i))), ~(~u_input.a.x), _wgslsmith_add_i32(global1.e, global1.e));
    global1 = Struct_1(~global0.x, ~abs(vec3<i32>(u_input.c.x, _wgslsmith_add_i32(0i, global1.e), global0.x)), true & global1.c, firstTrailingBit(u_input.a.x), -(~_wgslsmith_sub_i32(global0.x, _wgslsmith_mult_i32(global0.x, 0i))));
    global0 = vec4<i32>(~u_input.c.x, min(_wgslsmith_dot_vec4_i32(vec4<i32>(~global0.x, _wgslsmith_mult_i32(-1i, global1.a), _wgslsmith_dot_vec3_i32(u_input.d.xyx, global0.yyz), i32(-1i) * -1i), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(global1.a, global0.x, -9457i, global1.a), u_input.d, u_input.d)), _wgslsmith_mult_i32(-(u_input.d.x & u_input.d.x), _wgslsmith_mod_i32(select(0i, 24564i, global1.c), ~u_input.c.x))), u_input.d.x, _wgslsmith_mult_i32(1i, 23666i));
    global0 = abs(u_input.d);
    global1 = Struct_1(global1.e, reverseBits(select(vec3<i32>(_wgslsmith_div_i32(-29909i, global1.e), 0i, global0.x), vec3<i32>(1i, global0.x & global1.e, global0.x << (42105u % 32u)), global1.c)), true, u_input.a.x, global1.b.x);
    var var_0 = global1.b.x;
    global0 = u_input.d;
    global0 = ~(~firstTrailingBit(_wgslsmith_mult_vec4_i32(u_input.d, vec4<i32>(-2147483647i, -64427i, global1.a, global1.e))) >> (_wgslsmith_clamp_vec4_u32(abs(_wgslsmith_add_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, u_input.b.x, 1u, global1.d))), firstLeadingBit(min(u_input.b, u_input.a)), _wgslsmith_div_vec4_u32(~u_input.b, vec4<u32>(u_input.b.x, u_input.b.x, 1u, 4294967295u))) % vec4<u32>(32u)));
    let var_1 = _wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.b.yzy, vec3<u32>(global1.d, global1.d, _wgslsmith_mult_u32(37560u, u_input.a.x))) & ~max(u_input.a.xzz | vec3<u32>(0u, 57299u, u_input.b.x), u_input.a.zxw), min(select(select(u_input.a.zxy, u_input.b.xyz, vec3<bool>(global1.c, false, global1.c)), u_input.a.xwx, true), u_input.b.zzx) | max(firstLeadingBit(_wgslsmith_sub_vec3_u32(u_input.a.xxz, vec3<u32>(0u, global1.d, 3849u))), _wgslsmith_clamp_vec3_u32(u_input.b.xww, u_input.a.yyy, vec3<u32>(u_input.a.x, 101401u, global1.d))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.zwz, _wgslsmith_add_vec4_i32(~vec4<i32>(-38234i, global0.x >> (1u % 32u), global1.a, 40915i), _wgslsmith_sub_vec4_i32(~reverseBits(u_input.d), ~(-vec4<i32>(2147483647i, u_input.c.x, 18697i, global0.x)))), countOneBits(firstTrailingBit(~(~vec4<u32>(41946u, 32397u, 1u, u_input.a.x)))), global0.wz);
}

