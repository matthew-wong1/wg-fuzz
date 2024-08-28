struct Struct_1 {
    a: vec4<i32>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: u32 = 27204u;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: vec2<f32>) -> u32 {
    global0 = select(!(!select(vec2<bool>(global0.x, global0.x), !vec2<bool>(true, global0.x), select(vec2<bool>(false, global0.x), vec2<bool>(global0.x, false), vec2<bool>(global0.x, false)))), select(!(!select(vec2<bool>(true, global0.x), vec2<bool>(true, global0.x), vec2<bool>(global0.x, true))), !(!select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(global0.x, global0.x))), !vec2<bool>(!global0.x, global0.x)), any(vec4<bool>(true, all(!vec3<bool>(true, true, global0.x)), global0.x, true)));
    return u_input.c;
}

fn func_2() -> vec3<i32> {
    global1 = u_input.d | (12940u >> (reverseBits(u_input.c) % 32u));
    global1 = u_input.d ^ _wgslsmith_add_u32(min(0u, u_input.d >> (u_input.d % 32u)), u_input.c << (~func_3(u_input.d, u_input.b.x, vec2<f32>(-164f, 746f)) % 32u));
    var var_0 = -(~_wgslsmith_mult_i32(u_input.b.x, abs(u_input.b.x))) & ~min(~u_input.b.x, u_input.a);
    var var_1 = vec4<bool>(!any(select(vec4<bool>(true, true, true, true), !vec4<bool>(true, global0.x, global0.x, true), u_input.c > 5420u)), all(vec4<bool>(!global0.x, global0.x, min(u_input.d, u_input.d) >= ~u_input.d, true)), all(select(!select(vec2<bool>(global0.x, true), vec2<bool>(global0.x, true), vec2<bool>(global0.x, global0.x)), !vec2<bool>(global0.x, true), vec2<bool>(!global0.x, true))), all(select(select(select(vec2<bool>(global0.x, true), vec2<bool>(false, global0.x), vec2<bool>(global0.x, false)), vec2<bool>(global0.x, false), !global0.x), vec2<bool>(!global0.x, !global0.x), select(vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, false), vec2<bool>(global0.x, true)))));
    let var_2 = u_input.d;
    return _wgslsmith_add_vec3_i32(-vec3<i32>(_wgslsmith_add_i32(0i, 14332i), 12516i, 2147483647i), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, -1i, 32609i), _wgslsmith_mod_vec3_i32(-vec3<i32>(u_input.b.x, u_input.a, -27290i), firstTrailingBit(~vec3<i32>(u_input.b.x, 2147483647i, -2147483647i)))));
}

fn func_1(arg_0: vec4<bool>) -> u32 {
    let var_0 = _wgslsmith_dot_vec3_i32(select(_wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-31106i, u_input.a, u_input.b.x), vec3<i32>(7421i, u_input.b.x, -4999i)), func_2()), -vec3<i32>(2147483647i, u_input.a, u_input.a)), _wgslsmith_div_vec3_i32(~_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, -56529i, 2147483647i), vec3<i32>(u_input.b.x, u_input.b.x, 54695i)), abs(vec3<i32>(1i, 18566i, 1i)) << (_wgslsmith_div_vec3_u32(vec3<u32>(u_input.d, u_input.c, 32559u), vec3<u32>(u_input.c, u_input.d, 0u)) % vec3<u32>(32u))), arg_0.wxz), _wgslsmith_clamp_vec3_i32(abs(vec3<i32>(~(-1i), ~(-1i), reverseBits(-2147483647i))), reverseBits(select(abs(vec3<i32>(u_input.b.x, u_input.a, -2147483647i)), ~vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), !vec3<bool>(false, global0.x, global0.x))), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(2883i, -44417i, -2147483647i), vec3<i32>(u_input.a, u_input.a, 1285i)) << (u_input.d % 32u), u_input.b.x, 22859i)));
    let var_1 = arg_0.x;
    global0 = select(select(select(arg_0.xw, !vec2<bool>(arg_0.x, false), arg_0.zy), select(vec2<bool>(any(vec4<bool>(arg_0.x, false, var_1, var_1)), any(arg_0)), select(arg_0.xy, !arg_0.ww, any(arg_0.yxx)), !(!arg_0.ww)), select(!vec2<bool>(true, arg_0.x), !arg_0.zx, !arg_0.zy)), !arg_0.yz, !(!select(false, var_1, false) && (global0.x || true)));
    global1 = min(u_input.c, ~16613u);
    global0 = arg_0.zw;
    return abs(u_input.d);
}

fn func_4(arg_0: vec3<u32>, arg_1: vec2<bool>, arg_2: vec4<i32>) -> Struct_1 {
    global1 = 136078u;
    global1 = arg_0.x;
    let var_0 = arg_2;
    global1 = _wgslsmith_mult_u32(_wgslsmith_mod_u32(~0u, ~arg_0.x), ~arg_0.x & (arg_0.x ^ 1u));
    var var_1 = ~vec4<u32>(min(u_input.c, 1u), arg_0.x, ~select(_wgslsmith_div_u32(u_input.c, 19102u), abs(9068u), arg_1.x | global0.x), ~func_3(33741u, u_input.b.x, vec2<f32>(-1612f, 1232f)));
    return Struct_1(firstTrailingBit(arg_2), var_1.zz);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 18509u;
    let var_1 = func_4(_wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.d, 4294967295u, u_input.d), ~vec3<u32>(u_input.c, 40784u, 4545u)), vec3<u32>(19378u, countOneBits(0u), 12841u | u_input.c)) << (_wgslsmith_sub_vec3_u32(vec3<u32>(20802u ^ u_input.c, func_1(vec4<bool>(global0.x, true, false, global0.x)), 22826u), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, 0u, 19013u), vec3<u32>(672u, 37383u, 4294967295u)), u_input.c | u_input.c, ~4294967295u)) % vec3<u32>(32u)), vec2<bool>(!global0.x, false), -_wgslsmith_mult_vec4_i32(~vec4<i32>(u_input.b.x, 1690i, u_input.a, -15347i), firstLeadingBit(vec4<i32>(-38882i, u_input.b.x, -2147483647i, 1i))) << (vec4<u32>(u_input.d << (u_input.d % 32u), u_input.c, _wgslsmith_sub_u32(17626u, _wgslsmith_div_u32(u_input.d, 1u)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(75225u, 12982u, u_input.d), vec3<u32>(u_input.d, u_input.d, u_input.d))) % vec4<u32>(32u)));
    var var_2 = var_1;
    var var_3 = func_4(abs(vec3<u32>(~var_1.b.x, func_3(0u, var_1.a.x, vec2<f32>(-1344f, -986f)), max(39251u, 11451u)) << ((vec3<u32>(u_input.d, 52850u, 16201u) << (~vec3<u32>(42165u, 4294967295u, 4294967295u) % vec3<u32>(32u))) % vec3<u32>(32u))), vec2<bool>(false, global0.x), -(var_2.a ^ abs(var_1.a)));
    var_0 = 0u;
    global1 = ~func_4(abs(~select(vec3<u32>(0u, var_3.b.x, 1u), vec3<u32>(var_2.b.x, var_2.b.x, var_1.b.x), false)), !select(vec2<bool>(true, true), select(vec2<bool>(global0.x, true), vec2<bool>(false, true), vec2<bool>(global0.x, global0.x)), true), ~abs(vec4<i32>(var_2.a.x, var_3.a.x, 2147483647i, var_1.a.x)) >> (~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.c, u_input.d, 0u, var_2.b.x), vec4<u32>(var_1.b.x, 0u, var_2.b.x, 4294967295u)) % vec4<u32>(32u))).b.x;
    var var_4 = global0.x;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, vec4<u32>(4294967295u ^ (u_input.d << (var_2.b.x % 32u)), _wgslsmith_div_u32(_wgslsmith_div_u32(u_input.c, var_2.b.x), func_4(vec3<u32>(0u, 36027u, u_input.d), vec2<bool>(true, false), vec4<i32>(9642i, 0i, u_input.a, -3942i)).b.x), var_3.b.x, ~0u) << ((~_wgslsmith_clamp_vec4_u32(vec4<u32>(var_3.b.x, 15987u, u_input.d, 28321u), vec4<u32>(u_input.c, 0u, 39781u, var_2.b.x), vec4<u32>(var_1.b.x, 74650u, 71321u, 1u)) | vec4<u32>(countOneBits(37022u), ~4294967295u, 82446u, 117246u)) % vec4<u32>(32u)), var_2.b);
}

