struct Struct_1 {
    a: vec2<i32>,
    b: vec3<bool>,
    c: vec2<u32>,
    d: i32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: vec2<f32>,
    d: i32,
    e: vec2<bool>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec3<f32>,
    c: vec3<bool>,
    d: vec3<bool>,
    e: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(14413u, 37871u, 54355u, 4294967295u);

var<private> global1: vec4<u32> = vec4<u32>(3034u, 4294967295u, 4294967295u, 0u);

var<private> global2: vec2<i32> = vec2<i32>(0i, 2147483647i);

var<private> global3: array<u32, 7> = array<u32, 7>(0u, 0u, 878u, 4294967295u, 0u, 30025u, 4294967295u);

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: vec3<f32>) -> vec2<i32> {
    let var_0 = global0.www;
    return vec2<i32>(1i, u_input.a.x);
}

fn func_3(arg_0: i32, arg_1: vec2<i32>, arg_2: i32, arg_3: Struct_1) -> bool {
    var var_0 = true;
    global2 = u_input.a.xx ^ -_wgslsmith_mod_vec2_i32(vec2<i32>(arg_0, countOneBits(arg_0)), firstLeadingBit(-vec2<i32>(arg_0, u_input.a.x)));
    return arg_3.b.x;
}

fn func_4(arg_0: bool, arg_1: f32, arg_2: u32) -> bool {
    let var_0 = Struct_3(!vec2<bool>(!arg_0, true), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-2271f, arg_1, -1391f)))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-599f, -785f, -1532f) * _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_1, arg_1, -550f))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1875f, 2165f, -367f), vec3<f32>(704f, arg_1, arg_1), vec3<bool>(arg_0, arg_0, false)))) * vec3<f32>(_wgslsmith_f_op_f32(floor(arg_1)), arg_1, _wgslsmith_f_op_f32(arg_1 + 1000f)))), select(!(!vec3<bool>(arg_0, false, arg_0)), !select(vec3<bool>(arg_0, arg_0, true), !vec3<bool>(false, arg_0, arg_0), select(vec3<bool>(false, arg_0, true), vec3<bool>(false, arg_0, arg_0), vec3<bool>(false, true, false))), !(!select(vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(arg_0, true, true), vec3<bool>(arg_0, false, false)))), select(select(select(vec3<bool>(arg_0, true, true), vec3<bool>(arg_0, arg_0, true), true), vec3<bool>(false, global2.x > 0i, any(vec4<bool>(true, arg_0, arg_0, false))), vec3<bool>(any(vec3<bool>(true, arg_0, true)), func_3(2147483647i, u_input.a.xy, global2.x, Struct_1(vec2<i32>(0i, u_input.a.x), vec3<bool>(arg_0, arg_0, arg_0), vec2<u32>(global3[_wgslsmith_index_u32(31616u, 7u)], global3[_wgslsmith_index_u32(u_input.b.x, 7u)]), -19983i, vec4<f32>(arg_1, -809f, arg_1, arg_1))), false)), !vec3<bool>(arg_0, false, func_3(u_input.a.x, vec2<i32>(-2147483647i, global2.x), -9260i, Struct_1(vec2<i32>(17638i, -1570i), vec3<bool>(arg_0, true, true), global0.wy, u_input.a.x, vec4<f32>(293f, arg_1, arg_1, arg_1)))), arg_0), 729f);
    let var_1 = Struct_2(-30819i, -2147483647i, vec2<f32>(_wgslsmith_f_op_f32(-arg_1), -315f), ~(-firstTrailingBit(global2.x) >> (35783u % 32u)), select(vec2<bool>(true, arg_0), vec2<bool>(!(!var_0.d.x), abs(global2.x) != (u_input.a.x >> (10113u % 32u))), !any(vec4<bool>(arg_0, var_0.d.x, false, false))));
    var var_2 = !vec4<bool>(false, func_3(-_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, var_1.b, -2147483647i), u_input.a), vec2<i32>(reverseBits(-1i), 1i), global2.x, Struct_1(_wgslsmith_sub_vec2_i32(vec2<i32>(-1i, u_input.a.x), u_input.a.yy), !vec3<bool>(arg_0, var_1.e.x, true), global1.ww, _wgslsmith_div_i32(1i, 32593i), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.c.x, -212f, 2383f, var_0.b.x))))), true, var_0.a.x);
    global2 = u_input.a.zz;
    global2 = firstTrailingBit(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(68232i, 1i) >> (select(u_input.b.xw, vec2<u32>(1u, 1u), vec2<bool>(false, false)) % vec2<u32>(32u)), abs(vec2<i32>(1i, u_input.a.x))), firstLeadingBit(u_input.a.x)));
    return false;
}

fn func_5(arg_0: bool) -> Struct_2 {
    var var_0 = Struct_2(u_input.a.x, 46095i, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1108f)) + -299f) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-942f + -706f), -658f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1496f * 345f), _wgslsmith_f_op_f32(979f * -1000f)))), countOneBits(_wgslsmith_mod_i32(global2.x, global2.x & ~global2.x)), !(!select(select(vec2<bool>(true, arg_0), vec2<bool>(false, arg_0), true), !vec2<bool>(false, arg_0), vec2<bool>(arg_0, arg_0))));
    global0 = u_input.b;
    let var_1 = Struct_2(select(~global2.x ^ firstTrailingBit(func_2(vec3<f32>(var_0.c.x, -1549f, 1053f)).x), -(~global2.x) | global2.x, var_0.e.x), _wgslsmith_clamp_i32(u_input.a.x, ~(-var_0.b), -(~(~0i))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1455f * _wgslsmith_f_op_f32(-var_0.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1194f + var_0.c.x) + -1000f)) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0.c.x, 916f)))), min(-42604i, -_wgslsmith_mult_i32(_wgslsmith_add_i32(u_input.a.x, var_0.a), _wgslsmith_mult_i32(var_0.b, -559i))), var_0.e);
    let var_2 = vec3<bool>(all(select(select(vec4<bool>(true, true, false, var_0.e.x), !vec4<bool>(arg_0, true, arg_0, false), true), vec4<bool>(!var_0.e.x, false, all(vec4<bool>(var_1.e.x, false, var_1.e.x, true)), all(vec4<bool>(arg_0, arg_0, var_1.e.x, var_1.e.x))), select(true, arg_0, any(vec3<bool>(true, var_1.e.x, false))))), any(vec4<bool>(any(vec3<bool>(true, true, true)), arg_0, var_0.e.x, !arg_0)), true);
    let var_3 = _wgslsmith_add_vec3_u32(select(_wgslsmith_div_vec3_u32(select(_wgslsmith_clamp_vec3_u32(vec3<u32>(31443u, u_input.b.x, 32572u), u_input.b.wxz, global1.xwy), ~global1.zzy, var_2.x || true), u_input.b.wyy), ~(~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, 46520u), vec3<u32>(4294967295u, 1u, 0u))), select(!(!vec3<bool>(true, true, var_2.x)), vec3<bool>(var_0.e.x, func_4(true, 1000f, global0.x), all(vec2<bool>(var_0.e.x, false))), arg_0)), vec3<u32>(~u_input.b.x ^ 18345u, _wgslsmith_sub_u32(0u, _wgslsmith_dot_vec2_u32(global0.ww, ~global0.zx)), ~1u));
    return var_1;
}

fn func_6(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: Struct_1) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.e.x + arg_2.e.x)) + _wgslsmith_f_op_f32(1362f + 1572f)) * arg_0.c.x) - _wgslsmith_f_op_f32(f32(-1f) * -214f));
    var var_1 = ~reverseBits(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_0.d, 52322i, 34039i, u_input.a.x), -vec4<i32>(u_input.a.x, 36075i, 15265i, -23598i))) >> (reverseBits(u_input.b) % vec4<u32>(32u));
    var var_2 = arg_0;
    let var_3 = vec3<i32>(1i, ~countOneBits(var_2.b), _wgslsmith_sub_i32(~abs(min(1106i, var_1.x)), -25967i));
    let var_4 = func_5(arg_0.e.x);
    return func_5(var_4.e.x);
}

fn func_1(arg_0: bool) -> Struct_2 {
    var var_0 = Struct_2(~(_wgslsmith_div_i32(max(4617i, global2.x), -38038i) & global2.x), u_input.a.x, vec2<f32>(-302f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -956f))), -1i, vec2<bool>(arg_0, false));
    global3 = array<u32, 7>();
    let var_1 = func_6(func_5(func_4(func_3(0i, func_2(vec3<f32>(var_0.c.x, -322f, var_0.c.x)), _wgslsmith_mult_i32(1i, 1i), Struct_1(vec2<i32>(global2.x, global2.x), vec3<bool>(true, var_0.e.x, true), global0.yx, 0i, vec4<f32>(var_0.c.x, -990f, var_0.c.x, var_0.c.x))), var_0.c.x, global0.x)), vec3<u32>(47871u, 67357u, 4294967295u), Struct_1(u_input.a.xz, !vec3<bool>(27011u <= global1.x, all(var_0.e), any(var_0.e)), abs(vec2<u32>(26728u, ~71570u)), _wgslsmith_clamp_i32(firstTrailingBit(var_0.d), max(var_0.a, global2.x), _wgslsmith_div_i32(-68605i, var_0.a)) ^ -43888i, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(var_0.c.x)), _wgslsmith_f_op_f32(-555f + -977f), _wgslsmith_f_op_f32(abs(var_0.c.x)), _wgslsmith_f_op_f32(max(-1000f, var_0.c.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.x, -742f, var_0.c.x, var_0.c.x))))));
    var_0 = Struct_2(-var_1.a, 1i, var_1.c, global2.x, vec2<bool>(!arg_0, !var_0.e.x));
    var var_2 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(192f * _wgslsmith_f_op_f32(f32(-1f) * -1722f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.c.x * -145f), _wgslsmith_f_op_f32(-var_0.c.x)))), vec3<f32>(_wgslsmith_f_op_f32(min(var_0.c.x, -1160f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c.x + 1147f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.c.x + var_0.c.x)))))));
    return var_1;
}

fn func_7(arg_0: Struct_2, arg_1: f32, arg_2: vec2<u32>, arg_3: Struct_2) -> Struct_3 {
    let var_0 = min(arg_0.a, ~func_1(func_6(arg_0, global0.yyy, Struct_1(vec2<i32>(global2.x, -2147483647i), vec3<bool>(arg_3.e.x, arg_3.e.x, arg_3.e.x), global1.xx, global2.x, vec4<f32>(arg_1, arg_0.c.x, arg_3.c.x, arg_1))).e.x).b);
    global0 = select(select(firstLeadingBit(u_input.b), abs(vec4<u32>(17904u, 1u, _wgslsmith_div_u32(u_input.b.x, global1.x), global1.x)), select(select(!vec4<bool>(arg_0.e.x, arg_3.e.x, arg_3.e.x, arg_3.e.x), select(vec4<bool>(true, arg_3.e.x, arg_0.e.x, arg_3.e.x), vec4<bool>(false, true, false, arg_0.e.x), false), true), !vec4<bool>(arg_0.e.x, arg_3.e.x, arg_3.e.x, arg_0.e.x), arg_0.e.x)), u_input.b, select(!vec4<bool>(true, true, true, 2147483647i <= arg_3.a), vec4<bool>(true, !(arg_3.e.x || arg_3.e.x), true, true), !(!select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, arg_3.e.x, false, arg_0.e.x)))));
    var var_1 = func_5(arg_0.e.x);
    let var_2 = Struct_1(_wgslsmith_sub_vec2_i32(~_wgslsmith_mod_vec2_i32(u_input.a.yy, vec2<i32>(-22823i, -63649i)), abs(firstTrailingBit(vec2<i32>(global2.x, 0i)))), vec3<bool>(!arg_0.e.x && (all(vec4<bool>(var_1.e.x, true, var_1.e.x, arg_3.e.x)) && true), any(!vec4<bool>(var_1.e.x, arg_0.e.x, true, arg_0.e.x)), true), select(global1.yz ^ arg_2, ~_wgslsmith_mult_vec2_u32(~global1.yy, _wgslsmith_sub_vec2_u32(vec2<u32>(1u, 12574u), global1.yx)), arg_3.e), global2.x << (reverseBits(0u) % 32u), vec4<f32>(_wgslsmith_f_op_f32(var_1.c.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.c.x - -283f))), _wgslsmith_f_op_f32(step(arg_3.c.x, var_1.c.x)), -1424f, _wgslsmith_f_op_f32(func_5(-2147483647i == var_0).c.x + _wgslsmith_div_f32(_wgslsmith_f_op_f32(1196f - 1584f), -182f))));
    global2 = u_input.a.zx;
    return Struct_3(func_5(all(!var_2.b)).e, var_2.e.yzw, !select(var_2.b, !vec3<bool>(false, var_2.b.x, true), var_2.b), var_2.b, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.c.x + -136f) * _wgslsmith_f_op_f32(sign(462f)))), arg_0.c.x, false)));
}

fn func_8(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_2, arg_3: Struct_2) -> Struct_2 {
    global1 = u_input.b;
    let var_0 = Struct_1(u_input.a.xy ^ select(_wgslsmith_mult_vec2_i32(vec2<i32>(arg_2.b, arg_3.b), u_input.a.zy), _wgslsmith_sub_vec2_i32(u_input.a.xx, ~vec2<i32>(arg_3.d, -1i)), all(!arg_1.d)), arg_0.c, global1.ww & ~(~vec2<u32>(global3[_wgslsmith_index_u32(1u, 7u)], global1.x)), min(global2.x, 2147483647i) & -10571i, _wgslsmith_div_vec4_f32(vec4<f32>(-377f, -1270f, _wgslsmith_f_op_f32(trunc(-570f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1641f, arg_1.b.x)) * _wgslsmith_f_op_f32(330f + 647f))), vec4<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.c.x) + arg_1.e), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -414f)), arg_1.b.x)));
    var var_1 = var_0;
    return func_5(arg_1.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_8(func_7(func_1(true), _wgslsmith_f_op_f32(func_5(true).c.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-330f, -350f, false)))), global1.xw, func_6(Struct_2(2147483647i, global2.x, func_1(false).c, -2147483647i >> (global1.x % 32u), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true))), global0.xyy, Struct_1(-vec2<i32>(u_input.a.x, global2.x), vec3<bool>(true, true, true), global1.wz >> (global0.wy % vec2<u32>(32u)), 13702i, _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -1659f, 504f, -1784f) - vec4<f32>(-862f, 611f, 1549f, 1751f))))), func_7(Struct_2(abs(~(-2147483647i)), select(firstLeadingBit(global2.x), func_2(vec3<f32>(1297f, 417f, -660f)).x, true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1866f, 497f)) + vec2<f32>(1f, 1f)), firstLeadingBit(reverseBits(2147483647i)), func_6(func_5(false), u_input.b.yyw, Struct_1(u_input.a.xy, vec3<bool>(false, true, false), vec2<u32>(4294967295u, 4294967295u), 5932i, vec4<f32>(676f, 1000f, -712f, 411f))).e), _wgslsmith_f_op_f32(func_1(false).c.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-337f - -1000f))), global1.zy, func_5(false)), Struct_2(func_6(Struct_2(global2.x, global2.x, func_6(Struct_2(global2.x, 8114i, vec2<f32>(-1228f, 988f), global2.x, vec2<bool>(false, false)), vec3<u32>(38006u, global3[_wgslsmith_index_u32(98578u, 7u)], u_input.b.x), Struct_1(vec2<i32>(-43655i, 62362i), vec3<bool>(true, false, true), global0.wz, 37697i, vec4<f32>(1004f, -1004f, -1037f, -462f))).c, reverseBits(global2.x), vec2<bool>(true, true)), u_input.b.xxw, Struct_1(u_input.a.yx, vec3<bool>(true, true, true), u_input.b.yy, _wgslsmith_div_i32(u_input.a.x, 40785i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(564f, -1496f, 816f, 202f)))).d, ~max(~global2.x, global2.x | global2.x), vec2<f32>(1000f, _wgslsmith_f_op_f32(f32(-1f) * -1455f)), -u_input.a.x, vec2<bool>(true, true)), Struct_2(global2.x, global2.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-903f, 520f), vec2<f32>(-435f, 1053f), true)) + vec2<f32>(322f, 1582f))), _wgslsmith_mod_i32(u_input.a.x, u_input.a.x), vec2<bool>(true, true)));
    let var_1 = func_7(Struct_2(-2147483647i, global2.x, _wgslsmith_f_op_vec2_f32(trunc(var_0.c)), ~var_0.d, select(func_1(true).e, !vec2<bool>(var_0.e.x, false), var_0.e)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_0.c.x)), _wgslsmith_f_op_f32(-var_0.c.x)), global1.xz, func_1(_wgslsmith_dot_vec4_u32(vec4<u32>(47414u, 4294967295u, 4294967295u, 1u), _wgslsmith_div_vec4_u32(vec4<u32>(9952u, global1.x, u_input.b.x, 0u), u_input.b)) >= ~(~global0.x)));
    global1 = reverseBits(abs(firstLeadingBit(max(u_input.b, u_input.b)) ^ _wgslsmith_div_vec4_u32(min(vec4<u32>(global1.x, 60980u, 4294967295u, global0.x), vec4<u32>(1660u, u_input.b.x, global1.x, 9288u)), vec4<u32>(global3[_wgslsmith_index_u32(0u, 7u)], 1u, 62836u, global0.x))));
    global2 = u_input.a.xx;
    let var_2 = 1i;
    let var_3 = (_wgslsmith_mod_vec4_i32(-abs(vec4<i32>(u_input.a.x, var_2, var_0.a, 0i)), -abs(vec4<i32>(2147483647i, var_0.b, -2147483647i, var_2))) << (u_input.b % vec4<u32>(32u))) >> (select(reverseBits(u_input.b), vec4<u32>(_wgslsmith_add_u32(5702u, _wgslsmith_dot_vec2_u32(global1.ww, vec2<u32>(4294967295u, 4294967295u))), 0u, ~_wgslsmith_sub_u32(global0.x, u_input.b.x), global1.x), vec4<bool>(false, var_0.e.x, true, !(var_1.a.x | true))) % vec4<u32>(32u));
    var var_4 = Struct_2(var_2 | max(u_input.a.x, var_0.a), _wgslsmith_dot_vec2_i32(countOneBits(var_3.xy | _wgslsmith_mult_vec2_i32(var_3.ww, vec2<i32>(-84297i, 2147483647i))), firstLeadingBit(~countOneBits(var_3.wx))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-561f, -1549f))), var_1.e), func_8(var_1, var_1, Struct_2(_wgslsmith_sub_i32(firstLeadingBit(-1i), _wgslsmith_mult_i32(global2.x, -3044i)), 0i, vec2<f32>(1f, 1000f), ~func_6(Struct_2(var_3.x, 2147483647i, vec2<f32>(602f, var_1.b.x), -23904i, var_1.d.zz), vec3<u32>(1u, 4294967295u, global1.x), Struct_1(var_3.xy, var_1.c, vec2<u32>(1u, 0u), 30096i, vec4<f32>(101f, var_1.b.x, -1000f, -1230f))).b, !func_8(Struct_3(var_0.e, var_1.b, var_1.d, var_1.c, var_0.c.x), var_1, Struct_2(u_input.a.x, 12227i, vec2<f32>(var_1.b.x, var_0.c.x), var_2, var_1.c.xx), Struct_2(2249i, -2147483647i, vec2<f32>(405f, 713f), 124i, vec2<bool>(var_0.e.x, var_1.a.x))).e), Struct_2(_wgslsmith_mod_i32(global2.x, u_input.a.x) ^ -var_2, global2.x, _wgslsmith_f_op_vec2_f32(select(var_0.c, vec2<f32>(840f, var_0.c.x), vec2<bool>(true, false))), 1i, func_7(func_5(var_1.c.x), 493f, global1.xx, Struct_2(global2.x, 13376i, vec2<f32>(var_1.b.x, var_1.b.x), var_0.b, vec2<bool>(var_0.e.x, var_0.e.x))).a)).d, !(!func_8(Struct_3(vec2<bool>(var_1.d.x, true), vec3<f32>(468f, var_1.e, var_1.b.x), vec3<bool>(true, var_0.e.x, false), var_1.c, var_1.b.x), func_7(Struct_2(0i, 1i, var_0.c, 6252i, vec2<bool>(var_0.e.x, var_0.e.x)), 417f, global1.wy, Struct_2(var_3.x, var_2, var_1.b.xy, var_2, vec2<bool>(var_0.e.x, true))), Struct_2(u_input.a.x, 2147483647i, vec2<f32>(var_0.c.x, var_0.c.x), 0i, var_0.e), Struct_2(global2.x, -1i, var_0.c, u_input.a.x, var_1.d.xx)).e));
    var var_5 = var_1.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(12716u, 4294967295u, u_input.b.wwz >> (firstTrailingBit(firstLeadingBit(~u_input.b.zww)) % vec3<u32>(32u)), vec3<f32>(_wgslsmith_f_op_f32(-var_1.e), _wgslsmith_f_op_f32(abs(var_1.e)), 816f));
}

