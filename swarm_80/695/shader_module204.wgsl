struct Struct_1 {
    a: i32,
    b: bool,
    c: bool,
    d: i32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec3<bool>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: f32,
    c: vec4<bool>,
    d: Struct_2,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec4<u32>,
    d: u32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 17> = array<f32, 17>(719f, 185f, -1352f, -759f, -763f, 982f, 1168f, -1265f, -618f, 816f, -1283f, 974f, 1148f, 330f, -929f, 1000f, 820f);

var<private> global1: u32;

var<private> global2: array<u32, 23> = array<u32, 23>(0u, 4294967295u, 74701u, 128076u, 4294967295u, 37446u, 1u, 1u, 121983u, 10880u, 4294967295u, 4294967295u, 29551u, 15063u, 1u, 0u, 31969u, 1u, 52777u, 4294967295u, 12693u, 0u, 30579u);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> bool {
    global2 = array<u32, 23>();
    global0 = array<f32, 17>();
    let var_0 = -1544i << (_wgslsmith_mult_u32(35742u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(25394u, 1u) ^ vec2<u32>(0u, u_input.a), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 23u)], 23u)]), vec2<u32>(global2[_wgslsmith_index_u32(65767u, 23u)], global2[_wgslsmith_index_u32(4294967295u, 23u)])))) % 32u);
    var var_1 = 1486u;
    var var_2 = 4294967295u;
    return true;
}

fn func_4(arg_0: f32, arg_1: Struct_1) -> i32 {
    let var_0 = ~abs(_wgslsmith_sub_u32(firstTrailingBit(1u), ~(~arg_1.e.x)));
    let var_1 = (u_input.a << (18872u % 32u)) & _wgslsmith_div_u32(10496u, reverseBits(~52087u));
    var var_2 = ~(~var_1);
    var var_3 = Struct_2(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(arg_1.e.x, 23u)], 17u)], _wgslsmith_f_op_f32(sign(arg_0))))), select(!(!vec3<bool>(arg_1.b, arg_1.c, false)), select(select(!vec3<bool>(false, false, arg_1.b), select(vec3<bool>(arg_1.c, arg_1.b, arg_1.b), vec3<bool>(true, false, arg_1.b), vec3<bool>(arg_1.c, arg_1.c, false)), vec3<bool>(false, true, false)), !vec3<bool>(arg_1.c, false, arg_1.c), false), true));
    var var_4 = Struct_3(vec2<u32>(~(~4294967295u) >> (_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(arg_1.e.x, u_input.a, 4294967295u), vec3<u32>(u_input.a, 53564u, arg_1.e.x)), ~vec3<u32>(52550u, arg_1.e.x, u_input.a)) % 32u), abs(_wgslsmith_sub_u32(4294967295u, _wgslsmith_mod_u32(4294967295u, global2[_wgslsmith_index_u32(var_3.a.e.x, 23u)])))), _wgslsmith_f_op_f32(trunc(-1655f)), vec4<bool>(true, true, all(!(!vec3<bool>(arg_1.c, true, arg_1.b))), true), Struct_2(Struct_1(_wgslsmith_div_i32(0i, firstTrailingBit(-1i)), !all(vec2<bool>(false, arg_1.b)), !arg_1.c, _wgslsmith_div_i32(arg_1.a, firstLeadingBit(-1i)), reverseBits(vec4<u32>(var_3.a.e.x, arg_1.e.x, u_input.a, global2[_wgslsmith_index_u32(1u, 23u)]))), 390f, var_3.c));
    return -9762i;
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_4, arg_2: Struct_2, arg_3: i32) -> vec3<u32> {
    let var_0 = _wgslsmith_mod_vec2_i32(~vec2<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(arg_1.a, -1i, -2147483647i), reverseBits(vec3<i32>(-12816i, arg_2.a.a, arg_2.a.d))), -arg_3 ^ -35426i), _wgslsmith_mod_vec2_i32(~_wgslsmith_add_vec2_i32(vec2<i32>(arg_3, -2147483647i), vec2<i32>(-2147483647i, arg_3)), abs(-reverseBits(vec2<i32>(arg_2.a.a, arg_3)))));
    var var_1 = Struct_4(func_4(-458f, Struct_1(~var_0.x | ~29258i, true, func_3(), var_0.x, ~vec4<u32>(arg_2.a.e.x, 0u, u_input.a, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_2.a.e.x, 23u)], 23u)], 23u)], 23u)]))));
    global0 = array<f32, 17>();
    global1 = global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, 44904u), 23u)], 23u)];
    global2 = array<u32, 23>();
    return vec3<u32>(arg_2.a.e.x, u_input.a, ~reverseBits(~(~u_input.a)));
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_4, arg_2: u32) -> Struct_4 {
    let var_0 = vec4<bool>(any(select(vec2<bool>(true, true), vec2<bool>(true, all(vec3<bool>(true, true, false))), false)), any(vec3<bool>(select(4294967295u, 4294967295u, false) >= 68014u, select(global0[_wgslsmith_index_u32(u_input.a, 17u)] > 893f, true, true), true)), true, true);
    var var_1 = arg_1.a;
    var var_2 = Struct_1(-(abs(arg_1.a << (global2[_wgslsmith_index_u32(0u, 23u)] % 32u)) << (0u % 32u)), func_3(), var_0.x, ~firstLeadingBit(-arg_1.a), firstLeadingBit(vec4<u32>(firstLeadingBit(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, global2[_wgslsmith_index_u32(arg_0.x, 23u)]), 23u)]), 23107u, _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(arg_0, vec3<u32>(arg_2, u_input.a, 72531u)), arg_0), countOneBits(countOneBits(global2[_wgslsmith_index_u32(arg_0.x, 23u)])))));
    global1 = 0u;
    var var_3 = var_0.wyx;
    return Struct_4(_wgslsmith_clamp_i32(-_wgslsmith_mult_i32(var_2.d, func_4(global0[_wgslsmith_index_u32(arg_0.x, 17u)], Struct_1(var_2.a, false, true, arg_1.a, vec4<u32>(14008u, 22878u, global2[_wgslsmith_index_u32(11623u, 23u)], arg_2)))), -max(var_2.a, _wgslsmith_mod_i32(13826i, -2147483647i)), -arg_1.a));
}

fn func_6(arg_0: Struct_4, arg_1: vec3<bool>) -> Struct_2 {
    global0 = array<f32, 17>();
    global1 = max(reverseBits(_wgslsmith_clamp_u32(u_input.a, _wgslsmith_div_u32(global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(0u, 23u)], 23u)], ~global2[_wgslsmith_index_u32(u_input.a, 23u)]), u_input.a)), ~global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(~abs(global2[_wgslsmith_index_u32(u_input.a, 23u)]), _wgslsmith_sub_u32(1u, abs(0u))), 23u)]);
    global1 = ~global2[_wgslsmith_index_u32(~1u, 23u)];
    var var_0 = Struct_2(Struct_1(-(~(~0i)), !(!all(arg_1)), !(1536u != global2[_wgslsmith_index_u32(min(u_input.a, u_input.a), 23u)]), arg_0.a, select(~vec4<u32>(0u, 1u, 50047u, u_input.a), firstTrailingBit(firstTrailingBit(vec4<u32>(1u, 75012u, global2[_wgslsmith_index_u32(u_input.a, 23u)], u_input.a))), select(!vec4<bool>(true, arg_1.x, false, arg_1.x), select(vec4<bool>(arg_1.x, false, true, arg_1.x), vec4<bool>(true, false, false, arg_1.x), vec4<bool>(true, false, arg_1.x, true)), vec4<bool>(arg_1.x, arg_1.x, arg_1.x, false)))), -1000f, vec3<bool>(arg_1.x, _wgslsmith_div_u32(1u, ~global2[_wgslsmith_index_u32(u_input.a, 23u)]) > ~abs(global2[_wgslsmith_index_u32(79465u, 23u)]), all(select(!vec4<bool>(arg_1.x, true, true, arg_1.x), !vec4<bool>(arg_1.x, false, true, false), all(vec4<bool>(arg_1.x, arg_1.x, true, arg_1.x))))));
    global0 = array<f32, 17>();
    return Struct_2(Struct_1(~_wgslsmith_add_i32(5880i, var_0.a.a) << (~1u % 32u), !var_0.c.x, false, -20197i | var_0.a.a, vec4<u32>(4294967295u | max(1u, u_input.a), _wgslsmith_sub_u32(global2[_wgslsmith_index_u32(var_0.a.e.x, 23u)], 0u) ^ var_0.a.e.x, _wgslsmith_add_u32(var_0.a.e.x, 1u), func_2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(48370u, 23u)], 17u)], 252f), vec2<f32>(global0[_wgslsmith_index_u32(43150u, 17u)], 825f), vec2<bool>(arg_1.x, false))), func_5(vec3<u32>(u_input.a, var_0.a.e.x, var_0.a.e.x), arg_0, 53002u), Struct_2(var_0.a, -2131f, vec3<bool>(arg_1.x, arg_1.x, var_0.c.x)), -1i).x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1334f * _wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a, 28780u), 17u)])))), select(select(arg_1, select(var_0.c, arg_1, vec3<bool>(var_0.c.x, true, false)), false), select(vec3<bool>(false, false, var_0.c.x), !(!vec3<bool>(arg_1.x, true, arg_1.x)), arg_1), func_3()));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: Struct_2) -> Struct_1 {
    var var_0 = func_6(func_5(~select(_wgslsmith_div_vec3_u32(arg_2.e.yyx, vec3<u32>(0u, 3344u, global2[_wgslsmith_index_u32(arg_3.a.e.x, 23u)])), func_2(arg_1.yw, Struct_4(arg_2.d), arg_3, 1i), true), Struct_4(~_wgslsmith_mult_i32(arg_3.a.d, arg_0.a)), arg_3.a.e.x), !vec3<bool>(true, func_3(), false));
    global0 = array<f32, 17>();
    global1 = u_input.a;
    global1 = var_0.a.e.x | firstTrailingBit(u_input.a);
    var var_1 = abs(abs(abs(~(-vec3<i32>(arg_2.a, var_0.a.d, -51560i)))));
    return Struct_1(~2147483647i, var_0.c.x, any(var_0.c.zx), func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1246f)))), Struct_1(~var_0.a.a & ~arg_3.a.a, !any(vec4<bool>(var_0.c.x, false, true, true)), !arg_2.c, 42396i << (0u % 32u), vec4<u32>(_wgslsmith_dot_vec3_u32(var_0.a.e.ywx, vec3<u32>(var_0.a.e.x, 56496u, arg_2.e.x)), 74532u, _wgslsmith_mult_u32(32926u, global2[_wgslsmith_index_u32(56342u, 23u)]), global2[_wgslsmith_index_u32(arg_2.e.x, 23u)] << (arg_2.e.x % 32u)))), vec4<u32>(~_wgslsmith_dot_vec3_u32(arg_2.e.yxw, vec3<u32>(var_0.a.e.x, u_input.a, 14128u)), var_0.a.e.x & _wgslsmith_dot_vec2_u32(~vec2<u32>(global2[_wgslsmith_index_u32(arg_3.a.e.x, 23u)], arg_0.e.x), vec2<u32>(arg_3.a.e.x, u_input.a)), arg_3.a.e.x | 7967u, arg_2.e.x));
}

fn func_7(arg_0: u32, arg_1: Struct_3) -> Struct_4 {
    let var_0 = 1000f;
    global2 = array<u32, 23>();
    global0 = array<f32, 17>();
    var var_1 = arg_1;
    var var_2 = _wgslsmith_div_vec2_i32(-abs(select(vec2<i32>(arg_1.d.a.a, arg_1.d.a.d), vec2<i32>(var_1.d.a.a, -1667i), vec2<bool>(var_1.d.c.x, var_1.d.c.x))) >> (vec2<u32>(~var_1.a.x, _wgslsmith_clamp_u32(~u_input.a, u_input.a, 0u)) % vec2<u32>(32u)), select(_wgslsmith_add_vec2_i32(-vec2<i32>(-38437i, arg_1.d.a.a) << (firstTrailingBit(var_1.d.a.e.zy) % vec2<u32>(32u)), vec2<i32>(arg_1.d.a.a, 23151i) & reverseBits(vec2<i32>(1i, var_1.d.a.d))), vec2<i32>(-17671i, _wgslsmith_mod_i32(0i, -27803i) | _wgslsmith_sub_i32(arg_1.d.a.a, arg_1.d.a.a)), !arg_1.d.c.yz));
    return func_5(~arg_1.d.a.e.zxz, Struct_4(abs(-var_2.x ^ func_4(arg_1.b, arg_1.d.a))), _wgslsmith_mod_u32(~(~arg_1.a.x << (global2[_wgslsmith_index_u32(_wgslsmith_add_u32(92121u, 1u), 23u)] % 32u)), 0u));
}

fn func_8(arg_0: Struct_4, arg_1: Struct_1, arg_2: Struct_1) -> Struct_4 {
    global2 = array<u32, 23>();
    var var_0 = vec3<bool>(func_1(Struct_1(_wgslsmith_clamp_i32(-20857i, select(14735i, -2147483647i, arg_2.c), _wgslsmith_sub_i32(arg_0.a, arg_0.a)), all(!vec3<bool>(arg_2.b, true, false)), arg_1.b, ~(arg_1.a & arg_2.d), arg_1.e), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(25646u, 17u)], global0[_wgslsmith_index_u32(arg_1.e.x, 17u)], 814f, global0[_wgslsmith_index_u32(arg_2.e.x, 17u)])) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(932f, global0[_wgslsmith_index_u32(arg_2.e.x, 17u)], 533f, -1111f) * vec4<f32>(global0[_wgslsmith_index_u32(u_input.a, 17u)], 1101f, global0[_wgslsmith_index_u32(0u, 17u)], -528f)))), func_6(Struct_4(arg_0.a), vec3<bool>(!arg_2.b, !arg_1.c, arg_2.c && arg_1.c)).a, func_6(Struct_4(arg_1.d), !(!vec3<bool>(arg_2.b, arg_1.b, true)))).c, func_1(func_1(Struct_1(33819i, arg_1.b, true, arg_2.d, arg_1.e), vec4<f32>(global0[_wgslsmith_index_u32(14450u, 17u)], -1988f, global0[_wgslsmith_index_u32(11590u, 17u)], 285f), arg_2, Struct_2(arg_2, -1192f, vec3<bool>(arg_1.b, false, arg_1.c))), _wgslsmith_f_op_vec4_f32(vec4<f32>(876f, global0[_wgslsmith_index_u32(arg_1.e.x, 17u)], 635f, -846f) - vec4<f32>(2174f, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 23u)], 17u)], -1671f, 1307f)), func_6(func_5(vec3<u32>(70873u, u_input.a, 14722u), arg_0, 1u), !vec3<bool>(false, arg_1.b, true)).a, func_6(func_5(arg_1.e.xxx, Struct_4(2147483647i), arg_1.e.x), vec3<bool>(false, arg_2.b, arg_1.c))).c & arg_2.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-191f * global0[_wgslsmith_index_u32(16013u, 17u)]))) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-694f - _wgslsmith_f_op_f32(-566f + global0[_wgslsmith_index_u32(9934u, 17u)])) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a, 17u)]) - 143f)));
    var var_1 = _wgslsmith_sub_vec3_u32(vec3<u32>(34257u, _wgslsmith_add_u32(u_input.a, 24338u), _wgslsmith_dot_vec3_u32(countOneBits(arg_1.e.ywy), vec3<u32>(1u, 48288u, global2[_wgslsmith_index_u32(2327u, 23u)])) & ~1u), vec3<u32>(arg_1.e.x, firstLeadingBit(global2[_wgslsmith_index_u32(~15517u, 23u)]), arg_1.e.x));
    let var_2 = arg_0;
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-func_6(Struct_4(2278i), vec3<bool>(false, false, arg_2.b)).b), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1999f * global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(18787u, 23u)], 17u)]))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -601f), _wgslsmith_f_op_f32(select(-482f, 2031f, true))))) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_1.e.x, 4870u), 17u)], global0[_wgslsmith_index_u32(arg_2.e.x, 17u)], _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 17u)] + global0[_wgslsmith_index_u32(25846u, 17u)]))))));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(68682u, _wgslsmith_mult_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(2923u, u_input.a), vec2<u32>(global2[_wgslsmith_index_u32(71765u, 23u)], global2[_wgslsmith_index_u32(0u, 23u)])), min(firstLeadingBit(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(13905u, 23u)], 23u)]), ~global2[_wgslsmith_index_u32(u_input.a, 23u)]))), 17u)];
    var var_1 = func_8(func_7(abs(_wgslsmith_dot_vec3_u32(~vec3<u32>(global2[_wgslsmith_index_u32(u_input.a, 23u)], 31176u, 52282u), ~vec3<u32>(14987u, 12255u, u_input.a))), Struct_3(vec2<u32>(1u, global2[_wgslsmith_index_u32(select(global2[_wgslsmith_index_u32(4294967295u, 23u)], global2[_wgslsmith_index_u32(4294967295u, 23u)], false), 23u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -684f) * _wgslsmith_div_f32(-208f, 729f)), vec4<bool>(true, true, false, true), Struct_2(func_1(Struct_1(-12851i, false, false, -2147483647i, vec4<u32>(12952u, u_input.a, u_input.a, u_input.a)), vec4<f32>(-1579f, global0[_wgslsmith_index_u32(u_input.a, 17u)], -316f, 161f), Struct_1(-2147483647i, false, true, -44343i, vec4<u32>(1659u, 3375u, 5158u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 23u)], 23u)], 23u)], 23u)])), Struct_2(Struct_1(32499i, false, true, -5436i, vec4<u32>(u_input.a, 4294967295u, 0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 23u)], 23u)])), 860f, vec3<bool>(false, true, false))), -527f, select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), false)))), Struct_1(func_7(1u, Struct_3(min(vec2<u32>(55789u, 0u), vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 23u)], 23u)], 0u)), _wgslsmith_f_op_f32(-557f - global0[_wgslsmith_index_u32(1u, 17u)]), vec4<bool>(true, true, true, true), Struct_2(Struct_1(2147483647i, false, false, -1i, vec4<u32>(u_input.a, global2[_wgslsmith_index_u32(24984u, 23u)], 1u, u_input.a)), 1041f, vec3<bool>(true, false, true)))).a, func_1(Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 50631i, -10375i, 19057i), vec4<i32>(0i, -1i, -12878i, 26150i)), true, true, countOneBits(-2029i), firstLeadingBit(vec4<u32>(5265u, 25234u, u_input.a, 4294967295u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(1u, 17u)], global0[_wgslsmith_index_u32(u_input.a, 17u)], -1000f, global0[_wgslsmith_index_u32(u_input.a, 17u)]))), func_1(func_1(Struct_1(-18165i, true, false, 2147483647i, vec4<u32>(u_input.a, 6205u, u_input.a, u_input.a)), vec4<f32>(1634f, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 23u)], 17u)], 583f, 935f), Struct_1(1i, false, false, 2147483647i, vec4<u32>(0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 23u)], 23u)], 23u)], u_input.a, global2[_wgslsmith_index_u32(1u, 23u)])), Struct_2(Struct_1(-34390i, true, false, -1i, vec4<u32>(14987u, global2[_wgslsmith_index_u32(u_input.a, 23u)], 0u, 14940u)), global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 23u)], 17u)], vec3<bool>(false, false, false))), vec4<f32>(-1324f, global0[_wgslsmith_index_u32(1u, 17u)], -604f, -559f), Struct_1(-29222i, true, true, 1i, vec4<u32>(global2[_wgslsmith_index_u32(u_input.a, 23u)], u_input.a, u_input.a, 4294967295u)), func_6(Struct_4(945i), vec3<bool>(false, false, false))), func_6(Struct_4(-2147483647i), vec3<bool>(true, true, true))).b, all(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true))) && false, firstLeadingBit(~0i << (1u % 32u)), ~vec4<u32>(~1u, u_input.a, ~4294967295u, ~25988u)), func_1(func_1(Struct_1(-1i, true, 528f <= global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 23u)], 17u)], func_6(Struct_4(34353i), vec3<bool>(true, true, false)).a.d, ~vec4<u32>(u_input.a, 43078u, 25522u, 0u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0[_wgslsmith_index_u32(53573u, 17u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 23u)], 17u)], 1059f, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 23u)], 17u)])))), func_6(func_5(vec3<u32>(9287u, 4294967295u, 4294967295u), Struct_4(-1737i), u_input.a), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false))).a, Struct_2(func_6(Struct_4(0i), vec3<bool>(false, false, true)).a, _wgslsmith_f_op_f32(abs(883f)), func_6(Struct_4(2147483647i), vec3<bool>(true, true, true)).c)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(706f, 292f, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(26113u, 23u)], 17u)], -126f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 17u)], -1673f, global0[_wgslsmith_index_u32(1u, 17u)], -1315f) + vec4<f32>(global0[_wgslsmith_index_u32(1u, 17u)], global0[_wgslsmith_index_u32(u_input.a, 17u)], global0[_wgslsmith_index_u32(5584u, 17u)], 134f)))), Struct_1(~14682i, all(vec4<bool>(false, false, true, true)) || true, true, ~_wgslsmith_sub_i32(13648i, -82450i), firstTrailingBit(countOneBits(vec4<u32>(15390u, global2[_wgslsmith_index_u32(1049u, 23u)], 76192u, u_input.a)))), func_6(func_7(4294967295u, Struct_3(vec2<u32>(4294967295u, u_input.a), 271f, vec4<bool>(true, true, true, false), Struct_2(Struct_1(-21570i, false, true, -4897i, vec4<u32>(65519u, 0u, 0u, global2[_wgslsmith_index_u32(u_input.a, 23u)])), global0[_wgslsmith_index_u32(66654u, 17u)], vec3<bool>(true, false, true)))), select(func_6(Struct_4(-10912i), vec3<bool>(false, true, true)).c, select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false)), func_6(Struct_4(-33651i), vec3<bool>(true, true, true)).c))));
    let var_2 = Struct_3(vec2<u32>(~global2[_wgslsmith_index_u32(~(~u_input.a), 23u)], u_input.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 23u)], 17u)] * -475f), -1723f)))), !(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), true)), Struct_2(func_1(Struct_1(23176i, true, true, 35705i, _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, global2[_wgslsmith_index_u32(4294967295u, 23u)]), vec4<u32>(1331u, 14128u, 0u, u_input.a))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(19489u, 23u)], 17u)], global0[_wgslsmith_index_u32(u_input.a, 17u)], global0[_wgslsmith_index_u32(u_input.a, 17u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 23u)], 17u)]))) * vec4<f32>(-321f, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(119066u, 23u)], 17u)], global0[_wgslsmith_index_u32(12120u, 17u)], global0[_wgslsmith_index_u32(1u, 17u)])), func_6(func_8(Struct_4(var_1.a), Struct_1(-2147483647i, true, false, 2147483647i, vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(39153u, 23u)], 23u)], global2[_wgslsmith_index_u32(u_input.a, 23u)], 0u, u_input.a)), Struct_1(-2147483647i, true, true, var_1.a, vec4<u32>(1u, global2[_wgslsmith_index_u32(u_input.a, 23u)], 4294967295u, global2[_wgslsmith_index_u32(0u, 23u)]))), vec3<bool>(true, true, true)).a, func_6(Struct_4(var_1.a), select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(min(0u, u_input.a), 17u)], _wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(u_input.a, 17u)])), func_1(Struct_1(0i, false, true, var_1.a, vec4<u32>(54747u, u_input.a, u_input.a, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 23u)], 23u)])), vec4<f32>(1250f, global0[_wgslsmith_index_u32(u_input.a, 17u)], global0[_wgslsmith_index_u32(u_input.a, 17u)], -497f), Struct_1(1i, false, true, 1i, vec4<u32>(global2[_wgslsmith_index_u32(37471u, 23u)], 0u, u_input.a, 11367u)), Struct_2(Struct_1(2147483647i, false, false, var_1.a, vec4<u32>(2477u, global2[_wgslsmith_index_u32(u_input.a, 23u)], u_input.a, 1u)), global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 23u)], 17u)], vec3<bool>(true, true, true))).c))), func_6(func_5(firstLeadingBit(vec3<u32>(1u, 16220u, 39113u)), Struct_4(var_1.a), global2[_wgslsmith_index_u32(u_input.a, 23u)]), vec3<bool>(any(vec4<bool>(false, true, false, true)), any(vec4<bool>(false, true, false, true)), true)).c));
    let var_3 = var_2.d.a.d;
    var_1 = func_8(Struct_4(var_1.a), var_2.d.a, var_2.d.a);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_u32(51611u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, var_2.d.a.e.x), select(vec3<u32>(18358u, var_2.a.x, var_2.a.x), vec3<u32>(1u, 1u, u_input.a), false))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_2.a.x, 23u)], 17u)], global0[_wgslsmith_index_u32(38667u, 17u)])))) * vec2<f32>(var_2.d.b, 1f))), var_2.d.a.e, _wgslsmith_dot_vec4_u32(firstTrailingBit(var_2.d.a.e), var_2.d.a.e), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-334f, _wgslsmith_f_op_f32(var_2.b * 2474f), _wgslsmith_f_op_f32(var_2.d.b - var_2.b), global0[_wgslsmith_index_u32(1u, 17u)]) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.b, 571f, var_2.b, var_2.b)))))));
}

