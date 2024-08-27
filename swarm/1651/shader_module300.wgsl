struct Struct_1 {
    a: vec2<bool>,
    b: vec3<bool>,
    c: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: bool,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: vec4<u32>,
    d: vec4<i32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<vec3<f32>, 21> = array<vec3<f32>, 21>(vec3<f32>(-683f, -2034f, 584f), vec3<f32>(889f, -2028f, 160f), vec3<f32>(-904f, -1383f, -1142f), vec3<f32>(1000f, -1033f, 501f), vec3<f32>(395f, -217f, 1645f), vec3<f32>(684f, -1687f, 1386f), vec3<f32>(-1175f, 342f, 1212f), vec3<f32>(1320f, 2110f, -564f), vec3<f32>(-1001f, -752f, 1000f), vec3<f32>(-290f, 203f, -1434f), vec3<f32>(-774f, -371f, 1000f), vec3<f32>(-874f, 456f, 472f), vec3<f32>(-679f, -628f, -1821f), vec3<f32>(1000f, -1587f, -233f), vec3<f32>(2692f, 611f, -3170f), vec3<f32>(730f, 1043f, -353f), vec3<f32>(-134f, -1130f, -615f), vec3<f32>(738f, 889f, -1135f), vec3<f32>(648f, 1000f, 658f), vec3<f32>(-856f, 1148f, -1251f), vec3<f32>(-312f, 764f, 597f));

var<private> global2: array<f32, 27> = array<f32, 27>(-457f, 302f, 953f, 1000f, -771f, 1201f, 757f, -200f, 1402f, 1823f, -627f, 825f, -282f, 1000f, 2493f, -604f, -297f, -630f, -809f, 980f, -769f, -658f, 618f, 752f, 1587f, -105f, 1000f);

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: u32) -> u32 {
    global0 = vec2<i32>(-28512i, abs(~select(_wgslsmith_add_i32(2147483647i, 0i), ~1i, true)));
    global1 = array<vec3<f32>, 21>();
    let var_0 = countOneBits((85407u >> (~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2, arg_2, 4294967295u, arg_2), vec4<u32>(arg_2, arg_1.d, 0u, 30119u)) % 32u)) ^ ~(4091u >> (1u % 32u)));
    global2 = array<f32, 27>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -737f) - global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(~(~var_0), ~(~arg_1.d)) & firstLeadingBit(1098u), 27u)]);
    return 4294967295u;
}

fn func_2(arg_0: vec4<bool>, arg_1: vec2<bool>, arg_2: vec4<u32>) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-774f)) * _wgslsmith_f_op_f32(-1f));
    var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1152f)))));
    global1 = array<vec3<f32>, 21>();
    global2 = array<f32, 27>();
    global0 = -u_input.b.xx;
    return Struct_4(func_3(reverseBits(vec2<i32>(min(u_input.d.x, -1i), _wgslsmith_dot_vec3_i32(vec3<i32>(global0.x, global0.x, global0.x), vec3<i32>(2147483647i, 0i, 1i)))), Struct_2(!(!arg_0), false, Struct_1(!arg_1, vec3<bool>(false, arg_1.x, arg_1.x), max(u_input.c, global0.x)), 5336u), u_input.a), Struct_3(Struct_1(select(!arg_1, select(arg_1, arg_1, arg_0.xy), !arg_0.x), select(vec3<bool>(arg_0.x, arg_0.x, true), !vec3<bool>(arg_0.x, arg_1.x, arg_0.x), false), _wgslsmith_dot_vec4_i32(vec4<i32>(-8926i, global0.x, global0.x, -2147483647i), vec4<i32>(u_input.b.x, 1i, u_input.d.x, u_input.b.x))), 0i, arg_2, _wgslsmith_mult_vec4_i32(reverseBits(u_input.b), -vec4<i32>(u_input.c, 0i, 19846i, u_input.d.x) >> (arg_2 % vec4<u32>(32u)))));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_2, arg_2: vec3<f32>) -> Struct_1 {
    let var_0 = arg_0.b;
    let var_1 = func_2(!select(arg_1.a, !(!arg_1.a), all(select(vec4<bool>(var_0.a.a.x, var_0.a.b.x, arg_0.b.a.a.x, arg_0.b.a.a.x), arg_1.a, arg_0.b.a.b.x))), arg_0.b.a.b.xx, select(vec4<u32>(~_wgslsmith_dot_vec4_u32(arg_0.b.c, vec4<u32>(arg_1.d, 4294967295u, 4294967295u, 1u)), arg_1.d, ~4294967295u, u_input.a), vec4<u32>(49027u, var_0.c.x, ~u_input.a, func_2(vec4<bool>(arg_0.b.a.b.x, false, true, false), arg_1.c.b.xy, arg_0.b.c).b.c.x) >> (~vec4<u32>(var_0.c.x, u_input.a, var_0.c.x, 0u) % vec4<u32>(32u)), select(!select(arg_1.a, arg_1.a, arg_1.a), vec4<bool>(any(vec4<bool>(arg_0.b.a.a.x, arg_0.b.a.b.x, false, false)), 1u > var_0.c.x, true, true), var_0.a.a.x))).b.a;
    global0 = arg_0.b.d.ww;
    let var_2 = reverseBits(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.b.x, var_1.c), -var_0.d.ww ^ abs(vec2<i32>(arg_0.b.a.c, arg_1.c.c))), ~abs(-33791i)));
    let var_3 = arg_1;
    return Struct_1(vec2<bool>(any(var_3.c.a), var_1.a.x), var_3.a.wxy, u_input.d.x);
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec4<u32>) -> Struct_4 {
    let var_0 = -715f;
    return Struct_4(82685u, func_2(vec4<bool>(arg_1.a.x, all(vec4<bool>(true, false, true, arg_1.b.x)), func_4(func_2(vec4<bool>(true, false, true, arg_1.b.x), vec2<bool>(arg_1.b.x, true), arg_2), Struct_2(vec4<bool>(false, true, arg_1.a.x, arg_1.b.x), arg_1.a.x, arg_1, 37088u), _wgslsmith_div_vec3_f32(vec3<f32>(-721f, global2[_wgslsmith_index_u32(arg_2.x, 27u)], 1627f), vec3<f32>(var_0, 196f, global2[_wgslsmith_index_u32(u_input.a, 27u)]))).a.x, any(vec3<bool>(arg_1.a.x, arg_1.b.x, arg_1.b.x))), vec2<bool>(arg_1.b.x, !(!arg_1.b.x)), countOneBits(vec4<u32>(reverseBits(0u), arg_2.x << (u_input.a % 32u), u_input.a & u_input.a, 6213u))).b);
}

fn func_6(arg_0: Struct_4, arg_1: Struct_3) -> Struct_4 {
    global0 = _wgslsmith_add_vec2_i32(arg_0.b.d.yx, vec2<i32>(-1i, abs(6425i)));
    global0 = -_wgslsmith_clamp_vec2_i32(vec2<i32>(firstLeadingBit(arg_0.b.b), ~(-2147483647i)), ~(-arg_1.d.zx | u_input.d), vec2<i32>(global0.x, arg_1.b));
    global2 = array<f32, 27>();
    let var_0 = _wgslsmith_f_op_f32(-1f);
    var var_1 = arg_0;
    return arg_0;
}

fn func_7(arg_0: bool, arg_1: Struct_4) -> Struct_3 {
    global1 = array<vec3<f32>, 21>();
    global2 = array<f32, 27>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a, u_input.a), 27u)])), global2[_wgslsmith_index_u32(~_wgslsmith_sub_u32(u_input.a, u_input.a), 27u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-732f))), _wgslsmith_f_op_f32(ceil(-1785f))), vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(global2[_wgslsmith_index_u32(4294967295u, 27u)])), _wgslsmith_f_op_f32(f32(-1f) * -148f))), 1473f, global2[_wgslsmith_index_u32((66813u ^ u_input.a) >> (u_input.a % 32u), 27u)], _wgslsmith_f_op_f32(sign(-354f)))));
    let var_1 = func_2(select(!(!select(vec4<bool>(arg_1.b.a.b.x, arg_1.b.a.b.x, false, true), vec4<bool>(false, arg_1.b.a.a.x, true, arg_1.b.a.a.x), vec4<bool>(false, false, false, arg_1.b.a.a.x))), vec4<bool>(true, !(!arg_0), true, 52577u >= ~u_input.a), !(arg_0 && !arg_1.b.a.a.x)), select(!vec2<bool>(all(vec2<bool>(arg_1.b.a.b.x, arg_1.b.a.a.x)), true), select(vec2<bool>(true, arg_1.b.a.a.x && false), vec2<bool>(arg_0, !arg_0), vec2<bool>(true & arg_0, all(arg_1.b.a.a))), false), vec4<u32>(0u, u_input.a, _wgslsmith_mod_u32(u_input.a, 33940u & arg_1.a), arg_1.a));
    let var_2 = func_6(Struct_4(u_input.a, func_6(Struct_4(var_1.b.c.x, func_2(vec4<bool>(var_1.b.a.b.x, arg_1.b.a.b.x, true, arg_1.b.a.b.x), arg_1.b.a.a, arg_1.b.c).b), Struct_3(arg_1.b.a, 1i, func_2(vec4<bool>(false, true, false, true), arg_1.b.a.a, vec4<u32>(var_1.a, arg_1.a, u_input.a, 0u)).b.c, ~u_input.b)).b), func_2(vec4<bool>(var_1.a == 55213u, false, !func_2(vec4<bool>(arg_0, arg_0, arg_1.b.a.b.x, false), var_1.b.a.a, vec4<u32>(0u, 4294967295u, arg_1.b.c.x, var_1.b.c.x)).b.a.b.x, any(!vec4<bool>(arg_0, true, true, arg_0))), func_2(vec4<bool>(arg_0, true, true, false), var_1.b.a.a, _wgslsmith_sub_vec4_u32(var_1.b.c, var_1.b.c) | _wgslsmith_add_vec4_u32(var_1.b.c, arg_1.b.c)).b.a.a, var_1.b.c).b);
    return func_6(func_6(func_6(func_6(func_2(vec4<bool>(false, true, var_1.b.a.b.x, false), vec2<bool>(var_1.b.a.b.x, false), vec4<u32>(u_input.a, var_2.a, 0u, arg_1.b.c.x)), arg_1.b), func_5(~vec3<i32>(global0.x, var_2.b.b, 0i), Struct_1(var_1.b.a.b.zy, var_1.b.a.b, 11372i), max(arg_1.b.c, arg_1.b.c)).b), var_2.b), Struct_3(Struct_1(func_6(func_5(vec3<i32>(arg_1.b.d.x, u_input.d.x, -2147483647i), var_2.b.a, arg_1.b.c), Struct_3(arg_1.b.a, u_input.c, var_1.b.c, vec4<i32>(2147483647i, u_input.d.x, 1i, u_input.d.x))).b.a.b.xx, !func_2(vec4<bool>(true, arg_0, arg_1.b.a.b.x, false), var_2.b.a.a, vec4<u32>(arg_1.a, u_input.a, u_input.a, 4294967295u)).b.a.b, countOneBits(arg_1.b.a.c) & func_5(vec3<i32>(-1i, var_2.b.d.x, 1i), Struct_1(vec2<bool>(true, true), vec3<bool>(var_2.b.a.b.x, var_2.b.a.a.x, false), u_input.b.x), var_1.b.c).b.b), _wgslsmith_add_i32(func_6(func_6(Struct_4(37431u, Struct_3(var_2.b.a, -51266i, arg_1.b.c, u_input.b)), Struct_3(Struct_1(arg_1.b.a.b.yy, vec3<bool>(var_2.b.a.a.x, var_1.b.a.b.x, true), global0.x), -30057i, vec4<u32>(20432u, var_1.a, arg_1.a, 24938u), u_input.b)), Struct_3(var_1.b.a, arg_1.b.b, arg_1.b.c, vec4<i32>(global0.x, arg_1.b.a.c, 2147483647i, global0.x))).b.b, -3605i), select(vec4<u32>(19243u, 1u, 0u, 0u), arg_1.b.c | arg_1.b.c, any(vec4<bool>(var_2.b.a.b.x, true, true, false))) << (var_2.b.c % vec4<u32>(32u)), arg_1.b.d)).b;
}

fn func_1(arg_0: u32) -> bool {
    global2 = array<f32, 27>();
    var var_0 = func_7((min(arg_0, arg_0 << (u_input.a % 32u)) | arg_0) > ~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, 4294967295u, 0u, u_input.a), abs(vec4<u32>(0u, u_input.a, u_input.a, u_input.a))), func_6(func_5(u_input.b.xww, func_4(func_2(vec4<bool>(false, true, false, true), vec2<bool>(true, true), vec4<u32>(arg_0, arg_0, u_input.a, u_input.a)), Struct_2(vec4<bool>(true, true, false, false), false, Struct_1(vec2<bool>(true, true), vec3<bool>(false, true, false), global0.x), 58205u), vec3<f32>(global2[_wgslsmith_index_u32(u_input.a, 27u)], global2[_wgslsmith_index_u32(u_input.a, 27u)], 1026f)), vec4<u32>(7137u, 86975u, u_input.a, 92611u) & abs(vec4<u32>(17552u, 47354u, arg_0, 64578u))), func_2(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true), true)), func_4(func_2(vec4<bool>(true, true, true, false), vec2<bool>(false, true), vec4<u32>(98062u, 10121u, u_input.a, u_input.a)), Struct_2(vec4<bool>(false, true, false, false), false, Struct_1(vec2<bool>(true, false), vec3<bool>(false, false, false), u_input.c), 40450u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(405f, -538f, global2[_wgslsmith_index_u32(60089u, 27u)]))).b.yx, _wgslsmith_div_vec4_u32(vec4<u32>(30997u, arg_0, arg_0, 4294967295u), ~vec4<u32>(4294967295u, u_input.a, 4294967295u, u_input.a))).b));
    let var_1 = Struct_2(!select(!(!vec4<bool>(var_0.a.a.x, var_0.a.a.x, var_0.a.b.x, false)), vec4<bool>(var_0.a.b.x, true, !var_0.a.a.x, !var_0.a.a.x), var_0.a.a.x), var_0.a.b.x, var_0.a, func_5(~(~(var_0.d.xyx << (vec3<u32>(var_0.c.x, 1u, var_0.c.x) % vec3<u32>(32u)))), func_4(Struct_4(1u, Struct_3(var_0.a, 18191i, vec4<u32>(arg_0, 1u, 5780u, 57702u), vec4<i32>(var_0.d.x, var_0.a.c, -1i, global0.x))), Struct_2(vec4<bool>(false, var_0.a.b.x, var_0.a.b.x, var_0.a.a.x), true, Struct_1(vec2<bool>(var_0.a.a.x, var_0.a.b.x), var_0.a.b, 1i), ~arg_0), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1000f, 1604f, global2[_wgslsmith_index_u32(arg_0, 27u)]))))), vec4<u32>(1u, var_0.c.x, _wgslsmith_add_u32(u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, 1u, 45999u), var_0.c.xzw)), 0u)).a);
    let var_2 = var_1.a.x;
    global2 = array<f32, 27>();
    return _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(~firstTrailingBit(4294967295u), 27u)] * global2[_wgslsmith_index_u32(~var_0.c.x, 27u)]) != _wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(102330u, arg_0) >> (vec2<u32>(var_1.d, var_0.c.x) % vec2<u32>(32u)), var_0.c.zw), func_6(func_5(u_input.b.zyz, var_1.c, var_0.c), Struct_3(Struct_1(vec2<bool>(var_2, var_0.a.a.x), var_0.a.b, -2147483647i), 29109i, var_0.c, u_input.b)).b.c.x), 27u)]));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~global0.x;
    var var_1 = _wgslsmith_add_u32(~(~47010u), 1u);
    var var_2 = select(vec2<bool>(true, func_1(~u_input.a)), vec2<bool>(func_1(~u_input.a) && func_5(~u_input.b.wxx, Struct_1(vec2<bool>(false, true), vec3<bool>(false, false, false), 5199i), vec4<u32>(u_input.a, 4294967295u, 3683u, u_input.a)).b.a.b.x, true), vec2<bool>(!(_wgslsmith_add_i32(1i, u_input.c) <= 1i), select(func_7(false, Struct_4(0u, Struct_3(Struct_1(vec2<bool>(false, false), vec3<bool>(false, false, true), 31249i), global0.x, vec4<u32>(39432u, 88483u, u_input.a, u_input.a), vec4<i32>(global0.x, 2147483647i, global0.x, 67865i)))).a.b.x, u_input.c <= -1i, 20741u >= func_7(false, Struct_4(u_input.a, Struct_3(Struct_1(vec2<bool>(false, false), vec3<bool>(true, true, true), global0.x), 2147483647i, vec4<u32>(u_input.a, 28941u, 4294967295u, 0u), u_input.b))).c.x)));
    let var_3 = _wgslsmith_f_op_vec3_f32(-global1[_wgslsmith_index_u32(4294967295u, 21u)]);
    global0 = vec2<i32>(-1i) * -u_input.b.yz;
    var var_4 = i32(-1i) * -1i;
    let var_5 = func_6(Struct_4(~30629u, Struct_3(func_6(Struct_4(37806u, Struct_3(Struct_1(vec2<bool>(var_2.x, var_2.x), vec3<bool>(var_2.x, true, false), 1i), global0.x, vec4<u32>(u_input.a, 22120u, 27252u, 23729u), vec4<i32>(u_input.d.x, u_input.b.x, 26387i, 1i))), func_7(var_2.x, Struct_4(u_input.a, Struct_3(Struct_1(vec2<bool>(false, var_2.x), vec3<bool>(false, false, true), 28134i), -2147483647i, vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), u_input.b)))).b.a, countOneBits(25450i), vec4<u32>(u_input.a, max(u_input.a, 0u), u_input.a, 1u), u_input.b & _wgslsmith_mult_vec4_i32(u_input.b, u_input.b))), Struct_3(func_7(all(vec4<bool>(var_2.x, true, var_2.x, true)), func_5(u_input.b.www, Struct_1(vec2<bool>(true, var_2.x), vec3<bool>(var_2.x, var_2.x, var_2.x), global0.x), abs(vec4<u32>(67020u, u_input.a, u_input.a, 17725u)))).a, ~60589i, ~vec4<u32>(_wgslsmith_mult_u32(u_input.a, u_input.a), min(u_input.a, u_input.a), 4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, 55886u), vec3<u32>(36267u, u_input.a, u_input.a))), ~(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.d.x, global0.x, 13141i, -2147483647i), u_input.b) >> (~vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a) % vec4<u32>(32u))))).b;
    var_1 = ~9027u << (var_5.c.x % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_i32(vec2<i32>(-1i, global0.x), countOneBits(vec2<i32>(var_5.b, 2147483647i)) << (var_5.c.yz % vec2<u32>(32u))));
}

