struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: f32,
    d: vec4<f32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: vec4<i32> = vec4<i32>(1i, 2147483647i, -15892i, 2147483647i);

var<private> global2: i32 = 0i;

var<private> global3: vec4<i32> = vec4<i32>(-1i, -3716i, -1i, -2417i);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: u32, arg_3: vec4<i32>) -> f32 {
    let var_0 = arg_1.e;
    global2 = reverseBits(u_input.a) >> (4294967295u % 32u);
    let var_1 = arg_1;
    let var_2 = 35093u;
    return -1156f;
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_2(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1131f - _wgslsmith_f_op_f32(f32(-1f) * -857f)), _wgslsmith_f_op_f32(ceil(-756f)), -465f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1000f, 826f, 1121f))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1408f, -252f, -834f), vec3<f32>(-345f, -374f, -722f), vec3<bool>(true, false, global0.x))))))), Struct_1(u_input.c, !vec2<bool>(!global0.x, global0.x == true), _wgslsmith_f_op_f32(f32(-1f) * -1832f), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1087f, 122f, 1555f, -1000f) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-572f, 1143f, 423f, -1305f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(177f, 911f, 597f), vec3<f32>(-621f, 1000f, -1000f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -392f), -1321f))), Struct_1(4294967295u, vec2<bool>(!(!global0.x), true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -246f) - 1084f), _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 2288f, _wgslsmith_f_op_f32(func_3(u_input.d.x, Struct_1(u_input.c, vec2<bool>(global0.x, global0.x), -307f, vec4<f32>(-520f, 569f, 151f, 659f), vec3<f32>(452f, 777f, 1355f)), 42695u, vec4<i32>(-22557i, 11024i, global3.x, u_input.b.x))), _wgslsmith_f_op_f32(f32(-1f) * -1000f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1592f, -1600f, 361f, 414f), vec4<f32>(1567f, 614f, -1000f, 1914f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-691f, 656f, 815f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1198f, -1025f, 1000f) - vec3<f32>(1287f, 673f, 368f))) * vec3<f32>(-860f, _wgslsmith_div_f32(687f, 599f), _wgslsmith_f_op_f32(f32(-1f) * -276f)))));
    global1 = -_wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(~u_input.d, _wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, -1i, u_input.a, global3.x), u_input.d)), vec4<i32>(-1i) * -u_input.d), ~u_input.d);
    global2 = -36754i;
    var var_1 = _wgslsmith_clamp_i32(-2147483647i ^ global1.x, -1622i, -abs(_wgslsmith_sub_i32(global1.x, -u_input.b.x)));
    let var_2 = -590f;
    return var_0;
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: u32, arg_3: vec2<u32>) -> Struct_1 {
    let var_0 = vec2<bool>(true, (any(!vec3<bool>(false, arg_0.b.b.x, false)) & select(global3.x < arg_1, !global0.x, any(vec4<bool>(arg_0.d.b.x, false, arg_0.b.b.x, global0.x)))) || (true && ((-1i >> (u_input.c % 32u)) < arg_1)));
    let var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(arg_0.d.e))), func_2().b, -624f, func_2().b);
    global0 = vec2<bool>(true, true);
    var var_2 = func_2();
    global1 = firstLeadingBit(vec4<i32>(-17225i, _wgslsmith_clamp_i32(-_wgslsmith_dot_vec2_i32(global3.yx, u_input.b), -19478i, -_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 0i, arg_1, 0i), vec4<i32>(global3.x, global3.x, arg_1, global3.x))), arg_1, _wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.d.x, global3.x) & u_input.b, -vec2<i32>(2147483647i, global3.x) << (~vec2<u32>(arg_3.x, 10669u) % vec2<u32>(32u)))));
    return func_2().b;
}

fn func_1() -> Struct_1 {
    global3 = reverseBits(u_input.d);
    let var_0 = global0.x;
    global0 = vec2<bool>(global0.x, !global0.x);
    let var_1 = 98635u;
    let var_2 = func_4(func_2(), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(reverseBits(~vec3<i32>(-41921i, u_input.d.x, u_input.d.x)), ~(~global3.wzw)), 73787i), abs(var_1), vec2<u32>(_wgslsmith_mult_u32(~var_1, abs(~46034u)), ~abs(~4294967295u)));
    return var_2;
}

fn func_5(arg_0: i32, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: vec3<f32>) -> u32 {
    let var_0 = Struct_1(~4294967295u, !func_1().b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, arg_1.x, arg_1.x, u_input.a) >> (vec4<u32>(0u, 30391u, u_input.e, 40278u) % vec4<u32>(32u)), -vec4<i32>(0i, 1006i, 0i, 1i)), arg_2, u_input.c, u_input.d))), arg_2.d, arg_2.e);
    var var_1 = arg_2.b.x;
    var var_2 = _wgslsmith_div_f32(-953f, 395f);
    return ~_wgslsmith_sub_u32(~(~reverseBits(3822u)), _wgslsmith_sub_u32(~(~0u), arg_2.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(abs(func_5(global3.x, global3.yzw, func_1(), vec3<f32>(func_1().e.x, _wgslsmith_f_op_f32(820f + -1653f), _wgslsmith_div_f32(805f, 429f)))), func_4(Struct_2(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -608f, -1252f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(492f, 735f, -740f)))), func_1(), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-820f - -397f) * _wgslsmith_div_f32(1933f, 247f)), func_1()), _wgslsmith_dot_vec3_i32(~(-global3.zwy), (vec3<i32>(1i, u_input.d.x, global1.x) >> (vec3<u32>(7906u, 80275u, u_input.c) % vec3<u32>(32u))) << (~vec3<u32>(5626u, u_input.e, 1u) % vec3<u32>(32u))), 88694u, vec2<u32>(firstTrailingBit(1u), ~_wgslsmith_mod_u32(0u, 4294967295u))).b, -773f, _wgslsmith_div_vec4_f32(vec4<f32>(-731f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1027f - -1000f)), _wgslsmith_f_op_f32(ceil(-833f)), 1f), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1307f, -1577f, 357f, 2184f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1162f, 565f, 895f, -336f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1708f, 1403f, -1846f, 1159f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-369f, -656f, -1524f))));
    var var_1 = _wgslsmith_mult_i32(-1i, 1i);
    let var_2 = global1.x;
    global3 = abs(-_wgslsmith_mod_vec4_i32(vec4<i32>(1i, _wgslsmith_add_i32(global3.x, -1i), ~global3.x, 1i), u_input.d));
    global2 = ~(-global1.x);
    let var_3 = Struct_2(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-var_0.d.wzz), _wgslsmith_div_vec3_f32(vec3<f32>(var_0.d.x, 973f, var_0.e.x), vec3<f32>(var_0.e.x, -877f, var_0.d.x)), vec3<bool>(var_0.b.x, true, var_0.b.x)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c) + var_0.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f))), var_0.d.x))), Struct_1(1u, var_0.b, _wgslsmith_f_op_f32(trunc(var_0.c)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.e.x, _wgslsmith_f_op_f32(step(var_0.e.x, var_0.c)), _wgslsmith_f_op_f32(var_0.c - 1798f), _wgslsmith_f_op_f32(trunc(var_0.c))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1000f, -1430f, var_0.d.x, var_0.d.x))))), _wgslsmith_f_op_vec3_f32(-var_0.d.zwz)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.c * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.d.x, 2111f))))), func_4(Struct_2(vec3<f32>(193f, _wgslsmith_f_op_f32(573f * var_0.c), _wgslsmith_f_op_f32(152f - 894f)), Struct_1(1u, vec2<bool>(true, var_0.b.x), var_0.d.x, var_0.d, _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-334f, var_0.d.x, var_0.d.x)))), _wgslsmith_f_op_f32(min(-295f, -1322f)), Struct_1(0u, !var_0.b, func_2().b.d.x, vec4<f32>(var_0.d.x, var_0.e.x, -810f, var_0.e.x), _wgslsmith_div_vec3_f32(vec3<f32>(var_0.c, var_0.c, var_0.c), vec3<f32>(var_0.e.x, var_0.d.x, var_0.c)))), -5082i << ((~u_input.e << (~var_0.a % 32u)) % 32u), ~1u, _wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(~vec2<u32>(79865u, 0u), vec2<u32>(u_input.e, 14474u) ^ vec2<u32>(31459u, u_input.e)), firstLeadingBit(~vec2<u32>(0u, 1u)))));
    let var_4 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3(_wgslsmith_mod_i32(-40715i, u_input.a), Struct_1(4294967295u, vec2<bool>(global0.x, var_3.b.b.x), var_3.b.c, var_3.b.d, vec3<f32>(var_0.e.x, -808f, var_3.b.c)), _wgslsmith_mod_u32(var_0.a, var_3.d.a), vec4<i32>(-17207i, global1.x, global1.x, u_input.d.x) >> (vec4<u32>(1u, var_0.a, 17864u, 6788u) % vec4<u32>(32u)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -153f)))))), _wgslsmith_f_op_f32(f32(-1f) * -541f), func_4(Struct_2(vec3<f32>(_wgslsmith_f_op_f32(sign(var_0.d.x)), var_0.d.x, _wgslsmith_f_op_f32(f32(-1f) * -963f)), Struct_1(var_3.d.a, !vec2<bool>(var_0.b.x, false), _wgslsmith_f_op_f32(floor(-732f)), _wgslsmith_div_vec4_f32(var_3.b.d, var_3.d.d), _wgslsmith_f_op_vec3_f32(sign(var_0.d.zww))), 212f, func_1()), _wgslsmith_mod_i32(global1.x, global3.x) & ~1i, max(func_4(var_3, global3.x, var_3.b.a, vec2<u32>(4294967295u, 29882u)).a & _wgslsmith_add_u32(66354u, 1531u), ~(var_3.d.a | var_0.a)), _wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(select(vec2<u32>(u_input.e, var_3.b.a), vec2<u32>(103667u, var_3.d.a), vec2<bool>(var_0.b.x, false)), ~vec2<u32>(76932u, 4294967295u)), ~vec2<u32>(var_0.a, var_0.a))).e.x);
    global2 = -1i;
    let x = u_input.a;
    s_output = StorageBuffer(697f);
}

