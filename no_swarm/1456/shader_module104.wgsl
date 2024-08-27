struct Struct_1 {
    a: i32,
    b: u32,
    c: i32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: f32,
    d: vec2<i32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> u32 {
    let var_0 = select(vec2<bool>(false, false), vec2<bool>(true, u_input.d.x <= -8845i), !select(any(vec3<bool>(true, false, true)), true, all(vec3<bool>(true, false, false))));
    var var_1 = arg_0;
    var_1 = arg_0;
    var_1 = arg_0;
    var_1 = arg_0;
    return u_input.c;
}

fn func_2(arg_0: f32, arg_1: u32) -> i32 {
    var var_0 = Struct_2(abs(u_input.c), u_input.a.x);
    var var_1 = ~(~(~countOneBits(arg_1))) ^ u_input.c;
    var var_2 = Struct_2(func_3(Struct_1(~u_input.d.x, _wgslsmith_sub_u32(_wgslsmith_div_u32(32090u, u_input.c), 27115u), -_wgslsmith_add_i32(4945i, -2147483647i), abs(~u_input.d)), _wgslsmith_dot_vec4_i32(u_input.d, vec4<i32>(_wgslsmith_div_i32(var_0.b, var_0.b), -u_input.b.x, u_input.d.x >> (2581u % 32u), 47201i))), min(-16219i, 2147483647i));
    var_2 = Struct_2(_wgslsmith_dot_vec4_u32(max(~abs(vec4<u32>(var_0.a, 79213u, var_0.a, 21268u)), _wgslsmith_sub_vec4_u32(~vec4<u32>(arg_1, u_input.c, 0u, 12179u), ~vec4<u32>(arg_1, var_2.a, u_input.c, arg_1))), vec4<u32>(2551u, select(var_2.a, 3467u, true), 10816u, firstLeadingBit(_wgslsmith_sub_u32(arg_1, 0u)))), u_input.a.x);
    var_1 = _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(~(vec3<u32>(u_input.c, arg_1, var_2.a) ^ ~vec3<u32>(1u, var_2.a, 6375u)), vec3<u32>(_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(arg_1, 0u, 29663u, 4294967295u)), vec4<u32>(0u, 2922u, u_input.c, var_0.a) | vec4<u32>(0u, 9131u, var_2.a, u_input.c)), var_0.a, firstTrailingBit(~var_0.a))), (~(vec3<u32>(var_2.a, u_input.c, 4294967295u) | vec3<u32>(u_input.c, 44940u, var_0.a)) | max(~vec3<u32>(57919u, 57927u, 1u), vec3<u32>(17325u, 0u, 27017u))) ^ ~(~vec3<u32>(102515u, u_input.c, arg_1)));
    return -firstLeadingBit(2147483647i);
}

fn func_4(arg_0: i32, arg_1: Struct_2) -> Struct_2 {
    let var_0 = Struct_1((-reverseBits(arg_1.b) & 0i) ^ 2147483647i, _wgslsmith_mult_u32(_wgslsmith_mod_u32(~0u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.a, arg_1.a, u_input.c, 0u), vec4<u32>(28123u, 13650u, 63201u, u_input.c) & vec4<u32>(arg_1.a, 1u, 1u, 4294967295u))), arg_1.a), arg_0, u_input.d);
    let var_1 = ~vec3<u32>(firstLeadingBit(0u), arg_1.a, ~abs(u_input.c)) | _wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 1u, u_input.c), vec3<u32>(68220u, 5524u, 0u)) << (~vec3<u32>(22100u, u_input.c, 0u) % vec3<u32>(32u)), vec3<u32>(~arg_1.a, 0u, abs(1u))), ~min(~vec3<u32>(u_input.c, 54687u, 1u), ~vec3<u32>(1u, 1u, 13356u)));
    let var_2 = _wgslsmith_f_op_f32(step(-316f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(111f, 558f) * 300f))))));
    var var_3 = _wgslsmith_sub_vec3_i32(u_input.d.xww, vec3<i32>(2147483647i, _wgslsmith_mult_i32(arg_1.b, 1i), abs(abs(-1i))));
    var_3 = select(min(var_0.d.xxy >> (var_1 % vec3<u32>(32u)), u_input.a), u_input.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2 - 428f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2 * 153f))) > _wgslsmith_f_op_f32(var_2 - -621f));
    return arg_1;
}

fn func_1(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: i32, arg_3: f32) -> i32 {
    let var_0 = func_4(((func_2(-2293f, arg_0.a) ^ (arg_0.b << (14704u % 32u))) << (~func_3(Struct_1(arg_0.b, arg_0.a, u_input.a.x, u_input.d), arg_0.b) % 32u)) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(71589u, 1u, 0u, arg_0.a), vec4<u32>(arg_0.a, 6720u, arg_0.a, 77457u)), u_input.c, _wgslsmith_sub_u32(u_input.c, 4294967295u)), _wgslsmith_add_vec3_u32(~vec3<u32>(21006u, 22008u, u_input.c), select(vec3<u32>(u_input.c, u_input.c, 91866u), vec3<u32>(0u, arg_0.a, u_input.c), vec3<bool>(true, false, false)))) % 32u), arg_0);
    let var_1 = abs(u_input.b);
    var var_2 = arg_0;
    var var_3 = Struct_2(_wgslsmith_sub_u32(~u_input.c, 41016u), var_0.b);
    var var_4 = abs(arg_2);
    return func_4(~(-38614i | _wgslsmith_dot_vec4_i32(u_input.d, vec4<i32>(-2147483647i, -2147483647i, -20444i, -1i))), func_4(max(_wgslsmith_clamp_i32(var_3.b, var_1.x, var_1.x), -1i), var_0)).b;
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: Struct_2, arg_3: i32) -> Struct_1 {
    let var_0 = func_4(_wgslsmith_mult_i32(~_wgslsmith_dot_vec4_i32(arg_0.d, ~vec4<i32>(27650i, arg_2.b, arg_3, 0i)), arg_3), Struct_2(59388u, 46706i));
    var var_1 = _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(u_input.a.zx, vec2<i32>(_wgslsmith_sub_i32(max(u_input.d.x, 23155i), arg_0.d.x), 0i)), ~_wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(arg_0.d.yy, arg_0.d.xz, arg_0.d.zy), u_input.a.zy));
    let var_2 = arg_0;
    var var_3 = func_4(12872i, func_4(abs(_wgslsmith_add_i32(u_input.d.x, arg_3) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(22283u, 61632u), vec2<u32>(u_input.c, arg_0.b)) % 32u)), func_4((1i & arg_3) ^ ~0i, func_4(-arg_2.b, func_4(arg_2.b, var_0)))));
    let var_4 = _wgslsmith_sub_vec2_i32(arg_0.d.yx, -(vec2<i32>(-1i) * -vec2<i32>(-2625i, arg_3)));
    return Struct_1(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(-select(var_2.d, vec4<i32>(var_4.x, var_0.b, 4148i, 37235i), true), vec4<i32>(1i, 21411i, arg_3, arg_2.b) << (vec4<u32>(18778u, arg_0.b, 0u, arg_0.b) % vec4<u32>(32u))), select(_wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, 11879i, -11750i, var_4.x), arg_0.d, vec4<i32>(86701i, -2147483647i, arg_3, var_0.b)), -u_input.d), vec4<i32>(arg_0.c, 49601i, var_0.b | 20712i, -22038i), vec4<bool>(var_0.b == -18012i, true, true, true))), 0u, ~2990i, arg_0.d << (vec4<u32>(_wgslsmith_mult_u32(~43610u, firstTrailingBit(arg_0.b)), 1u, abs(select(arg_2.a, 1u, false)), arg_0.b) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(Struct_1(u_input.b.x, 1u | ~_wgslsmith_sub_u32(u_input.c, 18668u), -65314i ^ u_input.a.x, vec4<i32>(func_1(Struct_2(u_input.c, -1i), u_input.b, u_input.b.x, 1557f), u_input.d.x, u_input.a.x ^ 28736i, _wgslsmith_mod_i32(u_input.a.x, u_input.b.x)) | vec4<i32>(u_input.b.x << (4294967295u % 32u), reverseBits(u_input.b.x), firstTrailingBit(u_input.d.x), u_input.d.x << (u_input.c % 32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-1000f)))), -1147f))), Struct_2(~(~abs(u_input.c)), func_2(525f, _wgslsmith_dot_vec4_u32(min(vec4<u32>(u_input.c, 4294967295u, 1u, u_input.c), vec4<u32>(0u, u_input.c, 50929u, 1151u)), select(vec4<u32>(u_input.c, 0u, 4294967295u, 11u), vec4<u32>(u_input.c, 0u, u_input.c, 4294967295u), vec4<bool>(true, true, false, true))))), _wgslsmith_dot_vec4_i32(firstLeadingBit(u_input.d), ~u_input.d));
    var var_1 = Struct_2(abs(~(~(~var_0.b))), _wgslsmith_mult_i32(12162i, 51888i));
    let x = u_input.a;
    s_output = StorageBuffer(~(-(~(-u_input.d))), _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(~vec3<i32>(62016i, var_1.b, u_input.b.x), var_0.d.zww), -54639i), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(717f + -289f) * _wgslsmith_div_f32(-1142f, _wgslsmith_f_op_f32(step(245f, -607f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -160f), _wgslsmith_f_op_f32(f32(-1f) * -532f))))), var_0.d.wz, _wgslsmith_mod_vec4_i32(~u_input.d, vec4<i32>(func_4(-2920i, Struct_2(31886u, var_1.b)).b, _wgslsmith_div_i32(31843i, var_1.b) | -8151i, ~var_1.b, _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.d.x, -25109i, u_input.d.x, u_input.a.x), ~var_0.d))));
}

