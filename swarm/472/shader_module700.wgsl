struct Struct_1 {
    a: vec2<bool>,
    b: vec2<i32>,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec4<bool>,
    c: i32,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: i32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(vec2<bool>(true, true), vec2<i32>(44001i, i32(-2147483648)), 813f, -1000f), Struct_1(vec2<bool>(true, false), vec2<i32>(-436i, -63132i), 1000f, -1000f), Struct_1(vec2<bool>(false, true), vec2<i32>(i32(-2147483648), 34935i), 217f, 816f), Struct_1(vec2<bool>(false, true), vec2<i32>(1i, 37790i), 130f, -1544f), Struct_1(vec2<bool>(true, true), vec2<i32>(1i, -40176i), 1000f, 1727f), Struct_1(vec2<bool>(false, true), vec2<i32>(i32(-2147483648), 0i), -813f, 1213f), Struct_1(vec2<bool>(false, false), vec2<i32>(2147483647i, 6156i), 1807f, 1000f), Struct_1(vec2<bool>(true, true), vec2<i32>(0i, 36564i), 1000f, 862f), Struct_1(vec2<bool>(false, false), vec2<i32>(-1210i, i32(-2147483648)), -108f, 1889f), Struct_1(vec2<bool>(true, false), vec2<i32>(-43073i, 2147483647i), 634f, 1290f), Struct_1(vec2<bool>(true, false), vec2<i32>(1i, 1i), 452f, -1000f), Struct_1(vec2<bool>(false, true), vec2<i32>(0i, 0i), 1948f, 416f), Struct_1(vec2<bool>(true, false), vec2<i32>(29672i, -1i), -1730f, -1274f), Struct_1(vec2<bool>(false, false), vec2<i32>(2147483647i, 7808i), -1000f, 1131f), Struct_1(vec2<bool>(false, false), vec2<i32>(34185i, -11372i), 1146f, -788f), Struct_1(vec2<bool>(true, true), vec2<i32>(67137i, -11157i), -1000f, 1651f), Struct_1(vec2<bool>(false, true), vec2<i32>(-356i, 0i), -226f, -1244f), Struct_1(vec2<bool>(true, true), vec2<i32>(0i, 44741i), 602f, -1000f), Struct_1(vec2<bool>(true, true), vec2<i32>(0i, 19438i), -225f, -110f), Struct_1(vec2<bool>(false, true), vec2<i32>(2147483647i, 2147483647i), -345f, 2466f), Struct_1(vec2<bool>(true, false), vec2<i32>(95586i, 13517i), 1454f, 1565f), Struct_1(vec2<bool>(false, false), vec2<i32>(21300i, -22949i), 1406f, 1876f), Struct_1(vec2<bool>(true, false), vec2<i32>(2147483647i, 2147483647i), 628f, 945f), Struct_1(vec2<bool>(false, true), vec2<i32>(29735i, 1i), -377f, -1096f), Struct_1(vec2<bool>(true, false), vec2<i32>(32595i, 1i), 1402f, -1592f), Struct_1(vec2<bool>(true, false), vec2<i32>(20620i, 0i), -1147f, -431f), Struct_1(vec2<bool>(true, false), vec2<i32>(1i, -1i), 1137f, 546f), Struct_1(vec2<bool>(true, true), vec2<i32>(-13018i, 2147483647i), 603f, 1000f), Struct_1(vec2<bool>(false, true), vec2<i32>(2147483647i, 2147483647i), -361f, -885f), Struct_1(vec2<bool>(false, false), vec2<i32>(1i, 2147483647i), 985f, 316f), Struct_1(vec2<bool>(true, false), vec2<i32>(0i, 1i), -544f, -280f));

var<private> global1: vec2<bool> = vec2<bool>(true, true);

var<private> global2: vec4<bool>;

var<private> global3: i32;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
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

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3() -> vec2<f32> {
    var var_0 = global0[_wgslsmith_index_u32(firstLeadingBit(u_input.b.x), 31u)];
    var var_1 = 40378u;
    var var_2 = Struct_1(global2.ww, u_input.c.yx, 797f, _wgslsmith_f_op_f32(min(-263f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(939f, var_0.c))), 1000f))));
    var_2 = Struct_1(global2.yz, -_wgslsmith_clamp_vec2_i32(-var_2.b, var_2.b, _wgslsmith_div_vec2_i32(select(vec2<i32>(15176i, var_0.b.x), vec2<i32>(u_input.a, 1i), var_2.a.x), vec2<i32>(2147483647i, var_2.b.x))), 1294f, _wgslsmith_f_op_f32(min(1429f, var_0.c)));
    let var_3 = Struct_3(var_2.a.x);
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c * 1000f) * -1498f))), -1863f));
}

fn func_2(arg_0: f32) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1087f))));
    let var_1 = !vec2<bool>(any(global2.yy), true);
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(func_3()))));
    global0 = array<Struct_1, 31>();
    let var_3 = Struct_1(select(var_1, global2.zx, global2.x), u_input.c.yz, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1502f - arg_0) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1016f + var_2.x)), var_0.x, select(true, global2.x, any(vec3<bool>(true, global2.x, var_1.x)))))), _wgslsmith_f_op_f32(-var_0.x));
    return select(~_wgslsmith_clamp_vec3_i32(u_input.c & ~u_input.c, u_input.c, vec3<i32>(1i, u_input.c.x & 1i, u_input.a)), ~(-(~vec3<i32>(var_3.b.x, 19735i, -1i))), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(u_input.b.xz, _wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, u_input.b.x), vec2<u32>(u_input.b.x, 39917u), vec2<u32>(u_input.b.x, u_input.b.x))), u_input.b.x << (~u_input.b.x % 32u)) >= ~(~u_input.b.x >> (min(u_input.b.x, 21629u) % 32u)));
}

fn func_1(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: vec3<f32>) -> u32 {
    global1 = vec2<bool>(true, ~(_wgslsmith_mod_u32(u_input.b.x, 0u) << (~103480u % 32u)) >= 4294967295u);
    var var_0 = _wgslsmith_mult_vec3_i32(-reverseBits(func_2(_wgslsmith_f_op_f32(1000f - 1149f))), vec3<i32>(~abs(0i), u_input.c.x << (_wgslsmith_mod_u32(4294967295u, arg_1.x) % 32u), 37350i));
    global2 = vec4<bool>(true, !any(!vec4<bool>(true, false, global2.x, arg_0.a)), true, all(!(!vec4<bool>(false, false, true, global1.x))));
    global2 = vec4<bool>(!(_wgslsmith_mult_i32(-46403i, var_0.x) < 1i) | true, !any(vec4<bool>(true, arg_0.a, true, any(vec4<bool>(false, true, arg_0.a, global1.x)))), arg_1.x <= ~(~29053u), !global2.x);
    let var_1 = 24388i;
    return reverseBits(95901u);
}

fn func_4(arg_0: i32, arg_1: Struct_2) -> Struct_3 {
    global3 = 2147483647i;
    let var_0 = Struct_3(!(!any(arg_1.b) == true));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(930f + -758f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-281f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1349f + 397f) * _wgslsmith_f_op_f32(round(1000f))))) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1f, 425f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-465f * 171f) - _wgslsmith_f_op_f32(floor(857f)))))));
    global2 = vec4<bool>(!select(!(!var_0.a), all(global2.zyx), all(arg_1.b)), arg_1.b.x, select(false, select(all(arg_1.b.yx), var_0.a, all(vec3<bool>(true, arg_1.b.x, global1.x))), global1.x), false);
    var var_2 = Struct_2(vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.a.x, 1u), vec2<u32>(u_input.b.x, u_input.b.x)), countOneBits(u_input.b.x)), ~u_input.b.x), u_input.b.x, firstTrailingBit(arg_1.a.x)), arg_1.b, ~_wgslsmith_mod_i32(_wgslsmith_mod_i32(-u_input.c.x, _wgslsmith_sub_i32(arg_1.c, 0i)), ~45342i));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec3_i32(u_input.c, ~countOneBits(firstTrailingBit(max(u_input.c, vec3<i32>(24617i, u_input.c.x, 2147483647i)))));
    let var_1 = func_4(~_wgslsmith_add_i32(var_0 >> (_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, u_input.b.x), vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, 10804u)) % 32u), -var_0), Struct_2(vec3<u32>(u_input.b.x << (u_input.b.x % 32u), _wgslsmith_div_u32(23083u, func_1(Struct_3(false), u_input.b.xz, vec3<f32>(-109f, -455f, -1000f))), _wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.b.x, 0u), ~4294967295u)), vec4<bool>(!any(vec2<bool>(global1.x, true)), !(!global1.x), false, global1.x), -39754i));
    global1 = !(!select(global2.ww, !select(vec2<bool>(false, global2.x), global2.yw, true), global1.x));
    var var_2 = Struct_1(!vec2<bool>(!(!var_1.a), var_1.a), ~(-(~(~u_input.c.xx))), 1000f, _wgslsmith_f_op_f32(abs(-168f)));
    let var_3 = Struct_2(_wgslsmith_sub_vec3_u32(abs(vec3<u32>(u_input.b.x, 0u & u_input.b.x, ~u_input.b.x)), ~min(~u_input.b, ~vec3<u32>(4294967295u, 27030u, 0u))), select(!vec4<bool>(all(vec4<bool>(var_1.a, global2.x, var_2.a.x, global1.x)), !var_1.a, func_4(u_input.c.x, Struct_2(u_input.b, vec4<bool>(var_1.a, true, global1.x, false), u_input.c.x)).a, true), select(vec4<bool>(!global2.x, !global2.x, var_2.c < var_2.c, any(vec3<bool>(true, false, global2.x))), vec4<bool>(u_input.b.x <= u_input.b.x, true, var_2.a.x, true), !vec4<bool>(false, true, false, var_2.a.x)), false), _wgslsmith_add_i32(var_2.b.x, -(u_input.a | abs(-2147483647i))));
    var var_4 = ~(vec4<u32>(func_1(Struct_3(true), var_3.a.zx, vec3<f32>(1000f, var_2.d, var_2.d)) << (~u_input.b.x % 32u), var_3.a.x, ~abs(u_input.b.x), u_input.b.x) << (~vec4<u32>(_wgslsmith_add_u32(var_3.a.x, var_3.a.x), ~var_3.a.x, u_input.b.x, u_input.b.x) % vec4<u32>(32u)));
    var var_5 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_2.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -341f))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-2332f, -116f)) - _wgslsmith_f_op_f32(var_2.c - 405f)), -224f) * vec2<f32>(var_2.d, _wgslsmith_f_op_f32(var_2.c * var_2.c))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_5.x), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(var_2.c, 851f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_2.c, var_5.x))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1720f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))), !all(var_2.a))), -28289i, 1u | reverseBits(firstTrailingBit(_wgslsmith_div_u32(17914u, 4294967295u))), _wgslsmith_f_op_f32(206f - _wgslsmith_f_op_f32(-var_2.d)));
}

