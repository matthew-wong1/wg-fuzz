struct Struct_1 {
    a: i32,
    b: bool,
    c: vec3<bool>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: u32,
    c: vec3<f32>,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: u32,
    d: vec2<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<vec4<f32>, 13> = array<vec4<f32>, 13>(vec4<f32>(-979f, 1018f, 506f, 193f), vec4<f32>(-204f, 1169f, -1047f, 1147f), vec4<f32>(-815f, 467f, -557f, 806f), vec4<f32>(-505f, -1000f, -1010f, 911f), vec4<f32>(1145f, -479f, 404f, -755f), vec4<f32>(-554f, 116f, -127f, 1686f), vec4<f32>(2231f, -1526f, 1081f, -604f), vec4<f32>(1680f, -938f, 2383f, -2256f), vec4<f32>(1000f, 134f, -1012f, 1830f), vec4<f32>(-936f, 516f, -911f, -124f), vec4<f32>(764f, -1135f, -1088f, 1410f), vec4<f32>(-490f, -655f, 872f, -867f), vec4<f32>(890f, -195f, 310f, -2069f));

var<private> global2: u32;

var<private> global3: Struct_3 = Struct_3(false);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1516f + _wgslsmith_f_op_f32(f32(-1f) * -518f))));
    let var_1 = _wgslsmith_f_op_f32(exp2(var_0));
    var var_2 = var_1;
    var var_3 = Struct_3(global3.a);
    var_3 = Struct_3(any(vec2<bool>(var_3.a, (i32(-1i) * -2147483647i) < ~u_input.e.x)));
    return min(u_input.c, u_input.b.x);
}

fn func_4(arg_0: bool, arg_1: vec4<f32>, arg_2: vec4<i32>) -> vec4<u32> {
    let var_0 = Struct_3(all(select(select(vec3<bool>(false, true, arg_0), vec3<bool>(global3.a, false, true), arg_0), !vec3<bool>(global3.a, false, arg_0), true)) | arg_0);
    return select(vec4<u32>(u_input.c, ~u_input.b.x, 1u, 1u), _wgslsmith_mod_vec4_u32(countOneBits(~_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 1u, u_input.a.x, u_input.d.x), vec4<u32>(u_input.a.x, 2722u, u_input.a.x, u_input.c))), _wgslsmith_mult_vec4_u32(vec4<u32>(firstTrailingBit(u_input.b.x), 1u, 12509u | u_input.a.x, _wgslsmith_add_u32(u_input.d.x, 0u)), vec4<u32>(~u_input.c, u_input.c, u_input.d.x << (u_input.b.x % 32u), ~u_input.d.x))), select(select(!select(vec4<bool>(var_0.a, false, arg_0, false), vec4<bool>(arg_0, false, false, false), global3.a), select(vec4<bool>(true, var_0.a, false, global3.a), vec4<bool>(false, global3.a, arg_0, true), arg_0), vec4<bool>(false, global3.a, all(vec3<bool>(true, false, global3.a)), false)), !vec4<bool>(false, false, true, all(vec4<bool>(var_0.a, false, var_0.a, false))), !select(!vec4<bool>(false, var_0.a, false, var_0.a), vec4<bool>(true, true, true, var_0.a), select(vec4<bool>(true, global3.a, global3.a, arg_0), vec4<bool>(arg_0, false, var_0.a, true), vec4<bool>(arg_0, false, false, var_0.a)))));
}

fn func_2(arg_0: Struct_2, arg_1: u32) -> vec4<i32> {
    var var_0 = _wgslsmith_clamp_i32(u_input.e.x, -18181i, arg_0.e.a) == _wgslsmith_add_i32(~_wgslsmith_mod_i32(arg_0.e.a, -u_input.e.x), -firstTrailingBit(abs(arg_0.a.x)));
    global1 = array<vec4<f32>, 13>();
    var var_1 = Struct_3(arg_0.e.b);
    let var_2 = _wgslsmith_mult_u32(arg_0.b, 72753u) ^ 1451u;
    let var_3 = select(vec4<u32>(u_input.b.x, ~max(_wgslsmith_div_u32(0u, arg_1), ~41737u), ~arg_1, var_2), _wgslsmith_sub_vec4_u32(abs(~vec4<u32>(4294967295u, arg_1, arg_1, var_2)) << (func_4(true, global1[_wgslsmith_index_u32(func_3(), 13u)], select(vec4<i32>(0i, 25232i, 1i, 1i), arg_0.a, vec4<bool>(false, var_1.a, global3.a, arg_0.e.c.x))) % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(abs(vec4<u32>(arg_0.d, var_2, 4294967295u, 0u)), vec4<u32>(_wgslsmith_mod_u32(38242u, arg_1), ~var_2, max(var_2, 8623u), arg_1 & u_input.c))), vec4<bool>(global3.a, true, arg_0.e.b, all(select(vec4<bool>(true, global3.a, false, false), vec4<bool>(global3.a, true, arg_0.e.b, false), false)) || !all(vec4<bool>(var_1.a, true, var_1.a, global3.a))));
    return ~(~vec4<i32>(_wgslsmith_mult_i32(~0i, _wgslsmith_dot_vec2_i32(arg_0.a.xy, u_input.e.xx)), 1i, ~(u_input.e.x & 15047i), _wgslsmith_dot_vec3_i32(arg_0.a.yxz | vec3<i32>(1i, 1i, arg_0.a.x), u_input.e | vec3<i32>(u_input.e.x, arg_0.a.x, 1i))));
}

fn func_5(arg_0: vec3<bool>, arg_1: vec4<i32>, arg_2: vec4<u32>) -> Struct_2 {
    var var_0 = select(vec4<bool>(true, arg_0.x, all(arg_0), any(vec4<bool>(select(arg_0.x, true, arg_0.x), !global3.a, true, true))), !(!select(vec4<bool>(false, global3.a, false, false), vec4<bool>(global3.a, false, true, arg_0.x), true)), false);
    var var_1 = -u_input.e.x;
    var var_2 = max(func_2(Struct_2(~vec4<i32>(2147483647i, -13223i, 0i, arg_1.x), _wgslsmith_clamp_u32(arg_2.x, 4294967295u, arg_2.x), vec3<f32>(-343f, 441f, -557f), u_input.c, Struct_1(28279i, false, vec3<bool>(true, global3.a, true), global1[_wgslsmith_index_u32(39343u, 13u)])), u_input.a.x).x, _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(arg_1.xyy, vec3<i32>(arg_1.x, -2147483647i, 0i)), vec3<i32>(2147483647i, arg_1.x, 1i)), u_input.e)) | _wgslsmith_mult_i32(reverseBits(abs(~(-2147483647i))), arg_1.x);
    let var_3 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-383f, _wgslsmith_f_op_f32(max(324f, 1045f)), all(vec3<bool>(var_0.x, true, true)))))), _wgslsmith_f_op_f32(-1f), !(!all(vec3<bool>(arg_0.x, var_0.x, false)))));
    global1 = array<vec4<f32>, 13>();
    return Struct_2(~(vec4<i32>(u_input.e.x, -2147483647i, u_input.e.x, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 1i), vec2<i32>(59116i, u_input.e.x))) | vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.e.x, arg_1.x), vec2<i32>(u_input.e.x, 1i)), -10468i, -2147483647i, -2147483647i)), 4294967295u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3, 827f, var_3)))))), _wgslsmith_sub_u32(1u, countOneBits(func_4(any(vec4<bool>(global3.a, var_0.x, var_0.x, global3.a)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_3, var_3, var_3, var_3) * global1[_wgslsmith_index_u32(u_input.c, 13u)]), vec4<i32>(u_input.e.x, 43846i, -9702i, 67028i)).x)), Struct_1(-select(1i, 1i, true), all(var_0.yz) | !(528f > var_3), select(arg_0, var_0.wzz, arg_0), _wgslsmith_f_op_vec4_f32(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, 9767u), 13u)] + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(global1[_wgslsmith_index_u32(1u, 13u)] + global1[_wgslsmith_index_u32(2142u, 13u)]), _wgslsmith_f_op_vec4_f32(vec4<f32>(-366f, -329f, 603f, var_3) * global1[_wgslsmith_index_u32(arg_2.x, 13u)]), true)))));
}

fn func_6(arg_0: vec4<i32>, arg_1: vec2<i32>, arg_2: Struct_2, arg_3: u32) -> f32 {
    var var_0 = func_5(!arg_2.e.c, arg_2.a >> (vec4<u32>(4294967295u, 4294967295u, arg_2.d, 10683u) % vec4<u32>(32u)), countOneBits(select(vec4<u32>(arg_2.d, arg_3, 1u, 1u), ~vec4<u32>(4294967295u, u_input.a.x, arg_3, 0u), select(vec4<bool>(false, true, global3.a, true), vec4<bool>(arg_2.e.c.x, global3.a, true, true), vec4<bool>(global3.a, arg_2.e.c.x, global3.a, true)))) << (select(~vec4<u32>(0u, arg_3, arg_2.d, 4294967295u) & (vec4<u32>(arg_2.d, 12673u, 4294967295u, 0u) ^ vec4<u32>(0u, arg_3, 4294967295u, 35968u)), _wgslsmith_div_vec4_u32(vec4<u32>(67331u, 22843u, u_input.d.x, u_input.d.x), vec4<u32>(91592u, 4294967295u, 1u, 27660u)) << (~vec4<u32>(u_input.d.x, 27806u, 45728u, arg_3) % vec4<u32>(32u)), any(vec2<bool>(true, arg_2.e.c.x))) % vec4<u32>(32u))).e.b;
    var var_1 = arg_2.e;
    var var_2 = arg_2.e.c.x;
    let var_3 = -abs(-countOneBits(~var_1.a));
    let var_4 = Struct_3(true);
    return _wgslsmith_f_op_f32(arg_2.c.x * var_1.d.x);
}

fn func_1(arg_0: vec3<u32>) -> u32 {
    var var_0 = 0i;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_6(~abs(vec4<i32>(u_input.e.x, u_input.e.x, -34461i, u_input.e.x)), abs(_wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, u_input.e.x), u_input.e.yx)), func_5(vec3<bool>(global3.a, false, global3.a), func_2(Struct_2(vec4<i32>(u_input.e.x, 0i, u_input.e.x, u_input.e.x), arg_0.x, vec3<f32>(431f, -135f, 1115f), arg_0.x, Struct_1(u_input.e.x, global3.a, vec3<bool>(global3.a, global3.a, false), global1[_wgslsmith_index_u32(4294967295u, 13u)])), u_input.c), countOneBits(vec4<u32>(0u, 0u, 1u, 30484u))), ~(arg_0.x & arg_0.x))), _wgslsmith_f_op_f32(sign(-142f))) + 1f);
    global2 = ~(~1u);
    global3 = Struct_3(!all(vec2<bool>(true, false)) && all(func_5(select(vec3<bool>(global3.a, global3.a, true), vec3<bool>(global3.a, false, false), global3.a), vec4<i32>(2147483647i, -7302i, 0i, u_input.e.x) | vec4<i32>(-1i, u_input.e.x, u_input.e.x, u_input.e.x), func_4(true, vec4<f32>(2358f, -2601f, 1000f, var_1), vec4<i32>(u_input.e.x, u_input.e.x, 45311i, 0i))).e.c.zy));
    var var_2 = vec3<i32>(u_input.e.x & -2147483647i, ~(~u_input.e.x), _wgslsmith_div_i32(~(2147483647i ^ u_input.e.x), 16384i)) ^ vec3<i32>(_wgslsmith_mult_i32(-40829i, _wgslsmith_dot_vec3_i32(~u_input.e, vec3<i32>(u_input.e.x, u_input.e.x, 0i) ^ u_input.e)), _wgslsmith_mult_i32(abs(u_input.e.x), 1i << (u_input.d.x % 32u)), _wgslsmith_add_i32(37059i, 0i));
    return u_input.c;
}

fn func_7(arg_0: Struct_2, arg_1: Struct_1, arg_2: f32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global1[_wgslsmith_index_u32(~(~arg_0.b ^ _wgslsmith_dot_vec2_u32(u_input.b.xy, vec2<u32>(arg_0.d, u_input.d.x))), 13u)] + arg_1.d));
    global1 = array<vec4<f32>, 13>();
    var var_1 = Struct_3(true);
    var var_2 = Struct_3(var_1.a && !any(vec4<bool>(global3.a, false, var_1.a, arg_1.c.x)));
    let var_3 = Struct_2(arg_0.a, u_input.d.x & 1u, _wgslsmith_f_op_vec3_f32(step(arg_0.c, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(arg_1.d.yzx, arg_0.e.d.xxy, vec3<bool>(arg_1.c.x, true, false))))))))), _wgslsmith_clamp_u32(func_3(), arg_0.d, _wgslsmith_add_u32(func_4(global3.a, vec4<f32>(arg_1.d.x, 591f, arg_0.e.d.x, var_0.x), arg_0.a).x, _wgslsmith_clamp_u32(arg_0.b, arg_0.b, arg_0.d))) ^ 1u, arg_0.e);
    return Struct_1(firstTrailingBit(~_wgslsmith_add_i32(57819i, ~36713i)), !all(!select(vec3<bool>(false, false, arg_0.e.c.x), vec3<bool>(true, var_3.e.c.x, true), arg_0.e.c)), vec3<bool>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.d.x, 594f) - _wgslsmith_f_op_f32(min(1418f, -268f))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_2))), !var_3.e.c.x, any(select(select(arg_0.e.c, arg_0.e.c, vec3<bool>(arg_1.b, true, false)), var_3.e.c, var_3.e.d.x >= arg_1.d.x))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(arg_0.e.d + _wgslsmith_f_op_vec4_f32(ceil(arg_0.e.d))), var_3.e.d)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(u_input.e.x, -20766i);
    var var_1 = true;
    let var_2 = firstLeadingBit(abs(u_input.a));
    var var_3 = ~(-8217i);
    let var_4 = func_7(Struct_2(~(~(-vec4<i32>(0i, var_0.x, 34105i, var_0.x))), abs(func_1(u_input.b)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(func_5(vec3<bool>(global3.a, false, false), vec4<i32>(-15558i, u_input.e.x, 67212i, 33330i), vec4<u32>(var_2.x, var_2.x, u_input.c, 23900u)).e.d.yzw)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -419f, _wgslsmith_f_op_f32(select(-433f, 677f, false)))), ~4294967295u, func_5(select(vec3<bool>(true, global3.a, global3.a), vec3<bool>(true, false, global3.a), select(vec3<bool>(global3.a, global3.a, false), vec3<bool>(global3.a, global3.a, global3.a), true)), vec4<i32>(47878i | var_0.x, 2147483647i, 0i, _wgslsmith_clamp_i32(var_0.x, -44404i, var_0.x)), vec4<u32>(1u, ~var_2.x, 0u, ~u_input.d.x)).e), Struct_1(u_input.e.x, false, select(vec3<bool>(true, global3.a, var_0.x < var_0.x), vec3<bool>(false, true, true), false), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -805f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-729f)) * _wgslsmith_f_op_f32(-1343f * -1576f)), _wgslsmith_f_op_f32(862f - _wgslsmith_f_op_f32(-1952f - 1000f)), 519f)), -725f);
    var var_5 = vec4<u32>(~(~var_2.x), u_input.a.x, u_input.c ^ ~var_2.x, _wgslsmith_add_u32(func_5(func_7(Struct_2(vec4<i32>(89917i, var_0.x, var_0.x, var_4.a), 1u, var_4.d.www, u_input.c, Struct_1(var_0.x, var_4.b, vec3<bool>(var_4.b, true, true), vec4<f32>(300f, var_4.d.x, -1562f, -1231f))), Struct_1(u_input.e.x, false, var_4.c, var_4.d), 1019f).c, _wgslsmith_div_vec4_i32(vec4<i32>(10198i, -1i, u_input.e.x, -15339i), vec4<i32>(var_4.a, var_4.a, var_0.x, var_4.a)), vec4<u32>(var_2.x, var_2.x, u_input.d.x, 58793u)).b, 0u) << (~u_input.b.x % 32u));
    let var_6 = ~_wgslsmith_div_vec3_u32(~_wgslsmith_clamp_vec3_u32(~u_input.b, firstTrailingBit(var_5.xxz), var_5.wyz), abs(reverseBits(abs(vec3<u32>(u_input.d.x, 43598u, 26542u)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_i32(firstTrailingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(-5231i, var_4.a, 44259i), _wgslsmith_mod_vec3_i32(u_input.e, u_input.e))), _wgslsmith_mod_vec3_i32(u_input.e, u_input.e & ~vec3<i32>(-55907i, u_input.e.x, var_4.a))), vec2<i32>(42546i, 1i), 0u & var_2.x);
}

