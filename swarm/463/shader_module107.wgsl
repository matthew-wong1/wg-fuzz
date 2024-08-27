struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: Struct_2,
    d: Struct_3,
}

struct Struct_5 {
    a: Struct_4,
    b: u32,
    c: Struct_1,
    d: vec2<bool>,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> bool {
    global0 = ~vec4<i32>(~1i, global0.x, -global0.x, ~(-1i));
    let var_0 = true;
    let var_1 = var_0;
    let var_2 = abs(_wgslsmith_sub_vec3_u32(vec3<u32>(min(~u_input.e, u_input.c), u_input.e, u_input.e << (29363u % 32u)), countOneBits(vec3<u32>(43729u, 56987u, u_input.e ^ u_input.c))));
    var var_3 = Struct_1(u_input.b);
    return var_1;
}

fn func_2(arg_0: i32) -> vec2<u32> {
    var var_0 = Struct_3(Struct_2(Struct_1(72330i), vec2<u32>(u_input.c, 1u) ^ vec2<u32>(u_input.d, u_input.d), -vec4<i32>(-1i, -31536i, 1i, _wgslsmith_dot_vec3_i32(global0.xwy, global0.wxw))));
    let var_1 = !vec4<bool>(true, any(vec4<bool>(false, false, false, false)) & !all(vec2<bool>(false, true)), true || !func_3(), func_3());
    global0 = var_0.a.c;
    var var_2 = var_1.xxx;
    var var_3 = var_0.a;
    return (var_0.a.b << (_wgslsmith_sub_vec2_u32(~(~vec2<u32>(var_0.a.b.x, u_input.e)), _wgslsmith_sub_vec2_u32(vec2<u32>(69763u, 50499u), ~var_0.a.b)) % vec2<u32>(32u))) << (_wgslsmith_sub_vec2_u32(vec2<u32>(var_3.b.x, _wgslsmith_div_u32(u_input.a, max(0u, 4294967295u))), vec2<u32>(var_0.a.b.x, var_3.b.x ^ ~30156u)) % vec2<u32>(32u));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec3<f32>) -> Struct_1 {
    let var_0 = 0i;
    let var_1 = Struct_2(arg_1, vec2<u32>(~_wgslsmith_mult_u32(u_input.d, func_2(arg_1.a).x), ~u_input.c), select(vec4<i32>(-52186i ^ _wgslsmith_dot_vec2_i32(global0.ww, vec2<i32>(var_0, u_input.b)), _wgslsmith_mult_i32(-21170i, _wgslsmith_div_i32(global0.x, arg_1.a)), _wgslsmith_mod_i32(-global0.x, -67694i), 0i | var_0), ~firstTrailingBit(-vec4<i32>(global0.x, -1i, -37892i, u_input.b)), true));
    var var_2 = firstTrailingBit(firstTrailingBit(abs(var_1.c)));
    var var_3 = max(vec2<i32>(i32(-1i) * -359i, (global0.x & arg_1.a) ^ arg_1.a), countOneBits(~(-vec2<i32>(1i, var_0)))) & select(var_1.c.yw, global0.yy, _wgslsmith_clamp_i32(_wgslsmith_sub_i32(-18728i, -2147483647i), var_2.x, 1i) <= var_2.x);
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.x, -481f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1287f))))));
    return Struct_1(var_3.x);
}

fn func_1(arg_0: i32, arg_1: vec2<f32>) -> Struct_1 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.x), 601f);
    global0 = ~firstTrailingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, global0.x, 0i, 16841i), firstLeadingBit(vec4<i32>(32027i, u_input.b, 2147483647i, -14012i))) << (~(~vec4<u32>(0u, u_input.a, 0u, 46855u)) % vec4<u32>(32u)));
    var_0 = 522f;
    global0 = reverseBits(vec4<i32>(1i, _wgslsmith_mult_i32(u_input.b, reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, 2147483647i), global0.xw))), arg_0, -2147483647i));
    global0 = firstTrailingBit(-vec4<i32>(u_input.b, _wgslsmith_div_i32(-arg_0, i32(-1i) * -12342i), _wgslsmith_dot_vec3_i32(global0.zyx, firstTrailingBit(vec3<i32>(-5470i, 16399i, -2147483647i))), 34741i));
    return func_4(func_2(max(arg_0 ^ 1348i, reverseBits(arg_0))) | (reverseBits(reverseBits(vec2<u32>(u_input.c, u_input.e))) >> (firstTrailingBit(abs(vec2<u32>(u_input.a, u_input.d))) % vec2<u32>(32u))), Struct_1(-33187i), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1.x, 360f, -678f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-348f, arg_1.x, 426f)), vec3<bool>(true, false, true)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1264f, -285f, arg_1.x))))));
}

fn func_5(arg_0: Struct_5, arg_1: i32) -> i32 {
    let var_0 = arg_0.a;
    global0 = select(~abs(abs(-vec4<i32>(31676i, 37812i, arg_1, 10425i))), var_0.d.a.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1028f, -1233f)) * 177f) - 1367f) == _wgslsmith_f_op_f32(921f - _wgslsmith_f_op_f32(select(-126f, _wgslsmith_div_f32(-308f, -1517f), true))));
    var var_1 = arg_0;
    let var_2 = countOneBits(var_1.a.b.b & var_0.a.a.b);
    let var_3 = -1572f;
    return -select(_wgslsmith_dot_vec2_i32(abs(-vec2<i32>(var_0.c.a.a, -47453i)), select(arg_0.a.c.c.wx, vec2<i32>(global0.x, 36122i), all(vec4<bool>(arg_0.d.x, true, arg_0.d.x, arg_0.d.x)))), ~max(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.c.a, var_1.a.a.a.a.a, var_0.b.a.a, 55399i), arg_0.a.d.a.c), min(u_input.b, 58071i)), func_3());
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec4<i32>(0i, _wgslsmith_sub_i32(u_input.b, -2147483647i), u_input.b, ~func_5(Struct_5(Struct_4(Struct_3(Struct_2(Struct_1(23545i), vec2<u32>(26537u, u_input.d), vec4<i32>(0i, u_input.b, global0.x, 107986i))), Struct_2(Struct_1(u_input.b), vec2<u32>(u_input.c, 1405u), vec4<i32>(47938i, -1i, 1i, u_input.b)), Struct_2(Struct_1(u_input.b), vec2<u32>(u_input.a, 9345u), vec4<i32>(-23892i, u_input.b, global0.x, u_input.b)), Struct_3(Struct_2(Struct_1(11827i), vec2<u32>(u_input.d, u_input.c), vec4<i32>(-22472i, u_input.b, u_input.b, 68438i)))), u_input.c, func_1(-15454i, vec2<f32>(-210f, 698f)), select(vec2<bool>(true, true), vec2<bool>(true, false), false), u_input.a), i32(-1i) * -17251i));
    var var_0 = _wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(14876u, 1u & (1u ^ u_input.a), _wgslsmith_mod_u32(u_input.a, ~u_input.c), ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.d, 0u, u_input.c), vec4<u32>(u_input.a, u_input.d, 0u, u_input.c))), _wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.a, 3908u, 1u, u_input.d), abs(vec4<u32>(0u, 51031u, u_input.d, u_input.c))), ~(~vec4<u32>(u_input.e, 3387u, u_input.e, 22495u)))), ~max(vec4<u32>(1u, 4294967295u, u_input.c, 15337u) << (vec4<u32>(u_input.c, u_input.a, 20085u, 18035u) % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 10758u, u_input.e, 13133u), vec4<u32>(0u, u_input.a, 351u, u_input.e))) & _wgslsmith_mult_vec4_u32(vec4<u32>(~0u, ~1u, u_input.a, u_input.c), abs(vec4<u32>(u_input.d, u_input.d, u_input.d, 0u)) | abs(vec4<u32>(39042u, 4294967295u, u_input.d, u_input.d))));
    let var_1 = _wgslsmith_sub_vec3_i32(global0.wyw, vec3<i32>(_wgslsmith_add_i32(~(~(-1i)), global0.x >> (1u % 32u)), ~1i, u_input.b));
    global0 = ~abs(reverseBits(~vec4<i32>(1i, u_input.b, global0.x, -1033i)) & -select(vec4<i32>(global0.x, global0.x, 0i, -12788i), vec4<i32>(2147483647i, u_input.b, -2147483647i, var_1.x), vec4<bool>(true, true, true, false)));
    var var_2 = ~20394u << (u_input.a % 32u);
    var var_3 = Struct_3(Struct_2(func_1(-_wgslsmith_sub_i32(var_1.x, 17754i), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1304f, -530f)))), ~_wgslsmith_sub_vec2_u32(abs(var_0.zy), var_0.yx), _wgslsmith_add_vec4_i32(vec4<i32>(-global0.x, min(0i, var_1.x), 0i, -u_input.b), countOneBits(vec4<i32>(2147483647i, var_1.x, 70481i, u_input.b) << (vec4<u32>(18984u, 79890u, 1u, 0u) % vec4<u32>(32u))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -247f)))), i32(-1i) * -_wgslsmith_mod_i32(var_3.a.c.x, var_3.a.c.x), vec4<u32>(var_3.a.b.x, ~_wgslsmith_dot_vec3_u32(vec3<u32>(44150u, 4294967295u, 0u), var_0.xyw), 48948u, u_input.e));
}

