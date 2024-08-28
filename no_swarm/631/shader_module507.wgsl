struct Struct_1 {
    a: f32,
    b: f32,
    c: vec2<f32>,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec2<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: vec2<i32>;

var<private> global2: vec3<i32> = vec3<i32>(0i, 2147483647i, 1i);

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: i32, arg_1: vec4<bool>) -> bool {
    global1 = vec2<i32>(0i, _wgslsmith_mod_i32(-_wgslsmith_dot_vec4_i32(-vec4<i32>(0i, 2147483647i, global1.x, 2147483647i), select(vec4<i32>(u_input.b, 1i, global2.x, global0.a.e), vec4<i32>(-15955i, -35841i, -2147483647i, global1.x), arg_1)), _wgslsmith_dot_vec3_i32(min(~vec3<i32>(-7521i, -899i, 0i), -vec3<i32>(-23190i, global2.x, arg_0)), ~vec3<i32>(global2.x, -16742i, -48394i))));
    global1 = abs(_wgslsmith_mult_vec2_i32(~(~(-global2.xx)), -select(~global2.xy, select(global2.xx, global2.yx, arg_1.x), vec2<bool>(true, true))));
    let var_0 = !select(select(arg_1.zw, !select(arg_1.yx, arg_1.yy, arg_1.zy), arg_1.wy), !(!arg_1.zz), all(select(arg_1.zyz, !vec3<bool>(arg_1.x, false, arg_1.x), !arg_1.yxy)));
    let var_1 = vec3<bool>(!arg_1.x, false, var_0.x);
    global1 = global2.zy;
    return false;
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_3(global0.a, global1.x ^ 94738i, false);
    var var_1 = select(~_wgslsmith_add_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(28889u, 77727u), vec2<u32>(var_0.a.d, 4294967295u), vec2<u32>(31370u, 26898u)) | ~vec2<u32>(var_0.a.d, 0u), max(vec2<u32>(49148u, 1u), vec2<u32>(1u, 50373u)) ^ ~vec2<u32>(89701u, var_0.a.d)), ~(~vec2<u32>(~19076u, 1u | var_0.a.d)), func_3(global1.x, !vec4<bool>(true, all(vec4<bool>(true, var_0.c, true, false)), true, var_0.a.d > global0.a.d)));
    let var_2 = ~abs(min(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -17478i, -10375i, -11391i), vec4<i32>(global0.b, var_0.b, 22321i, global2.x) << (vec4<u32>(var_0.a.d, var_0.a.d, 6750u, global0.a.d) % vec4<u32>(32u))), firstTrailingBit(-20273i)));
    var var_3 = var_0.c;
    global1 = _wgslsmith_sub_vec2_i32(~vec2<i32>(countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(global1.x, 1255i, global2.x), vec3<i32>(global2.x, -25230i, 9877i))), abs(-56187i) | reverseBits(var_0.a.e)), global2.yz & global2.yz);
    return var_0.a;
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: i32) -> bool {
    let var_0 = 12281i;
    global2 = arg_2 ^ _wgslsmith_add_vec3_i32(vec3<i32>(global0.a.e, -global0.b, global2.x), vec3<i32>(~_wgslsmith_add_i32(9270i, arg_2.x), global0.b, max(arg_2.x, 2147483647i)));
    global1 = _wgslsmith_mod_vec2_i32(abs(-arg_2.xx) & (_wgslsmith_clamp_vec2_i32(arg_2.yx ^ global2.zy, abs(global2.xz), global2.xx & vec2<i32>(-2147483647i, global0.b)) | vec2<i32>(~arg_3, 878i)), select(min(vec2<i32>(global2.x, u_input.a) & vec2<i32>(-20054i, -29401i), _wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(global2.zy, arg_2.zy), arg_2.yy >> (vec2<u32>(arg_0.x, global0.a.d) % vec2<u32>(32u)))), ~abs(-arg_2.xz), vec2<bool>(~global0.a.d < arg_0.x, global0.c)));
    global1 = vec2<i32>(global1.x, global2.x);
    global0 = Struct_3(Struct_1(_wgslsmith_f_op_f32(-2380f * _wgslsmith_f_op_f32(max(-895f, arg_1.b))), 348f, arg_1.c, 67098u, _wgslsmith_mod_i32(arg_1.e, _wgslsmith_sub_i32(global0.b, 14385i)) << (~(4294967295u << (arg_1.d % 32u)) % 32u)), _wgslsmith_mod_i32(1i, _wgslsmith_mult_i32(-2147483647i, -var_0)), true);
    return func_3(max(u_input.a >> ((~global0.a.d | _wgslsmith_dot_vec2_u32(arg_0.zz, vec2<u32>(0u, 0u))) % 32u), reverseBits(-1i)), vec4<bool>(global0.c, true, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(1000f)))) == arg_1.b, any(vec3<bool>(!global0.c, global0.c, 32126i > global2.x))));
}

fn func_1() -> Struct_2 {
    let var_0 = vec3<bool>(global0.c, !func_4(~(~vec3<u32>(44232u, 12586u, 4294967295u)), func_2(), -select(vec3<i32>(global1.x, 1i, 0i), vec3<i32>(global2.x, -2147483647i, global0.a.e), vec3<bool>(global0.c, global0.c, global0.c)), _wgslsmith_div_i32(u_input.a, global0.a.e) >> (1u % 32u)), global0.c);
    let var_1 = global0.a;
    global1 = vec2<i32>(-1i) * -countOneBits(global2.xz);
    var var_2 = select(vec2<u32>(global0.a.d, _wgslsmith_div_u32(~firstLeadingBit(4294967295u), _wgslsmith_sub_u32(countOneBits(global0.a.d), _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.d, 1u, var_1.d, 30514u), vec4<u32>(var_1.d, 1u, var_1.d, 51568u))))), select(~(~vec2<u32>(var_1.d, 5903u)), vec2<u32>(14185u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.d, 4294967295u, 63865u), vec3<u32>(37625u, 17699u, global0.a.d))) & _wgslsmith_sub_vec2_u32(~vec2<u32>(4294967295u, global0.a.d), vec2<u32>(1u, global0.a.d) ^ vec2<u32>(0u, 0u)), vec2<bool>(global0.c, !any(vec2<bool>(true, var_0.x)))), !var_0.xy);
    global1 = reverseBits(~(~_wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(global2.zz, global2.xy), global2.yy | global2.yy)));
    return Struct_2(global0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1796f)), select(var_0.yz, var_0.zz, vec2<bool>(!global0.c, true)), func_2());
}

fn func_5(arg_0: Struct_2) -> i32 {
    var var_0 = arg_0.a.c;
    return u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!vec2<bool>(global0.a.c.x >= _wgslsmith_f_op_f32(abs(-301f)), (global0.a.d >> (global0.a.d % 32u)) >= ~0u), vec2<bool>(true, all(!select(vec2<bool>(false, global0.c), vec2<bool>(true, global0.c), global0.c))), false);
    var var_1 = vec2<bool>(any(vec2<bool>(!(!global0.c), true)), -1076f <= _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0.a.a * -603f))));
    global2 = vec3<i32>(~2501i, _wgslsmith_add_i32(func_5(func_1()), u_input.b << (abs(func_1().a.d) % 32u)), u_input.b);
    let var_2 = vec3<f32>(_wgslsmith_div_f32(-360f, 1f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-569f)), global0.a.a, all(!vec3<bool>(true, true, global0.c)))), global0.a.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1231f * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-182f - global0.a.c.x))))));
    global1 = global2.yy;
    let var_3 = vec3<bool>(any(select(!vec2<bool>(var_0.x, global0.c), vec2<bool>(true, true), vec2<bool>(false, var_0.x))), var_0.x, func_1().c.x);
    var var_4 = select(~firstTrailingBit(-_wgslsmith_mod_vec3_i32(vec3<i32>(19035i, global0.b, global1.x), vec3<i32>(-15960i, 1i, 1i))), vec3<i32>(countOneBits(u_input.b), ~(~_wgslsmith_dot_vec3_i32(vec3<i32>(global1.x, global2.x, 1i), vec3<i32>(-44565i, 12755i, 1i))), abs(-72869i)), vec3<bool>(var_1.x, !((global0.a.d >> (global0.a.d % 32u)) >= ~4294967295u), false && all(var_3.zy)));
    global0 = Struct_3(global0.a, -(~firstLeadingBit(1805i | global0.b)), func_1().c.x);
    let var_5 = global0.a.e;
    let x = u_input.a;
    s_output = StorageBuffer(1u, ~abs(~vec4<u32>(1u, 1u, 1u, 38632u) >> ((vec4<u32>(global0.a.d, global0.a.d, 21482u, global0.a.d) | vec4<u32>(159604u, 1u, global0.a.d, global0.a.d)) % vec4<u32>(32u))), abs(~vec3<u32>(3761u, global0.a.d, global0.a.d) << (_wgslsmith_add_vec3_u32(vec3<u32>(global0.a.d, global0.a.d, global0.a.d), vec3<u32>(0u, 53051u, 1u)) % vec3<u32>(32u))) ^ countOneBits(vec3<u32>(1u, 1u, 1u) | vec3<u32>(global0.a.d, global0.a.d, 0u)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-912f)) + -1439f), -563f, global0.a.c.x, func_2().b));
}

