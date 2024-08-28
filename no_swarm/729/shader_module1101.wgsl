struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec2<f32>,
    c: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: vec4<u32>,
    c: vec4<i32>,
    d: Struct_3,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 21>;

var<private> global1: bool = false;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-1043f, 215f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(1u, 21u)]))), 426f) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(584f, -588f, global0[_wgslsmith_index_u32(u_input.a, 21u)], global0[_wgslsmith_index_u32(u_input.a, 21u)]))) - _wgslsmith_div_vec4_f32(vec4<f32>(-1993f, global0[_wgslsmith_index_u32(4294967295u, 21u)], -1520f, -2101f), _wgslsmith_div_vec4_f32(vec4<f32>(-317f, 269f, -321f, global0[_wgslsmith_index_u32(86974u, 21u)]), vec4<f32>(293f, global0[_wgslsmith_index_u32(26333u, 21u)], 535f, global0[_wgslsmith_index_u32(u_input.a, 21u)])))) * vec4<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~u_input.d, 21u)] - _wgslsmith_div_f32(-577f, 891f)), 1f, global0[_wgslsmith_index_u32(~reverseBits(12864u), 21u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(u_input.a, 21u)], global0[_wgslsmith_index_u32(u_input.d, 21u)])) - -162f))));
    var var_1 = vec2<bool>(true, true);
    var var_2 = Struct_3(vec3<bool>(false, var_1.x || all(!vec3<bool>(true, true, var_1.x)), select(true, true, true)), var_0.zx, Struct_1(firstLeadingBit(-min(2890i, 1i)), ~(~vec3<u32>(42207u, u_input.a, 37685u) | ~vec3<u32>(33929u, u_input.d, 53606u)), _wgslsmith_clamp_vec2_i32(~vec2<i32>(2147483647i, u_input.e.x), ~(-u_input.e.xz), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.c, u_input.c), vec2<i32>(u_input.b.x, 32896i))), false, -2147483647i));
    var_1 = vec2<bool>(var_1.x, !((~var_2.c.b.x ^ u_input.d) < ~(~1u)));
    var var_3 = u_input.e;
    return !vec3<bool>(var_1.x, any(select(var_2.a.zz, select(vec2<bool>(var_2.c.d, false), vec2<bool>(true, var_1.x), false), var_2.a.xy)), var_2.a.x);
}

fn func_2(arg_0: f32, arg_1: vec3<i32>, arg_2: vec2<f32>, arg_3: vec4<f32>) -> Struct_2 {
    var var_0 = Struct_3(func_3(), _wgslsmith_f_op_vec2_f32(-arg_2), Struct_1(-arg_1.x, countOneBits(abs(vec3<u32>(u_input.d, 26998u, u_input.d)) >> (min(vec3<u32>(u_input.a, u_input.a, 25958u), vec3<u32>(u_input.a, 22647u, u_input.d)) % vec3<u32>(32u))), ~firstTrailingBit(firstLeadingBit(u_input.e.yz)), true, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.x, i32(-1i) * -11835i), vec2<i32>(i32(-1i) * -1i, arg_1.x))));
    var var_1 = vec3<i32>(i32(-1i) * -2147483647i, _wgslsmith_mult_i32(~38832i, -6699i), i32(-1i) * -2147483647i);
    var var_2 = _wgslsmith_mult_i32(-2147483647i, arg_1.x);
    global1 = var_0.c.d | false;
    let var_3 = !vec4<bool>((all(vec4<bool>(false, true, var_0.a.x, var_0.a.x)) == var_0.a.x) & any(!var_0.a), _wgslsmith_f_op_f32(-arg_3.x) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1000f, arg_0, true)) - var_0.b.x), var_0.c.d, true);
    return Struct_2(Struct_1(reverseBits(-34332i), var_0.c.b, ~(~_wgslsmith_sub_vec2_i32(vec2<i32>(-21555i, u_input.c), vec2<i32>(0i, var_0.c.c.x))), false, _wgslsmith_sub_i32(1367i, 1i)), Struct_1(var_1.x, abs(_wgslsmith_add_vec3_u32(~var_0.c.b, countOneBits(vec3<u32>(22804u, 1u, 1101u)))), vec2<i32>(9366i, _wgslsmith_mult_i32(37762i, abs(-1i))), (i32(-1i) * -var_0.c.e) >= var_0.c.c.x, select(var_0.c.a, ~(~(-21896i)), ~42363u <= _wgslsmith_div_u32(27133u, u_input.a))));
}

fn func_4(arg_0: Struct_2) -> Struct_3 {
    var var_0 = Struct_3(select(vec3<bool>(all(vec2<bool>(true, false)), func_2(_wgslsmith_f_op_f32(max(-298f, -2210f)), u_input.b, vec2<f32>(global0[_wgslsmith_index_u32(41089u, 21u)], global0[_wgslsmith_index_u32(u_input.a, 21u)]), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-2352f, 998f, -737f, global0[_wgslsmith_index_u32(arg_0.a.b.x, 21u)]), vec4<f32>(global0[_wgslsmith_index_u32(u_input.d, 21u)], 1082f, global0[_wgslsmith_index_u32(u_input.a, 21u)], global0[_wgslsmith_index_u32(u_input.d, 21u)]), vec4<bool>(true, arg_0.a.d, arg_0.b.d, arg_0.b.d)))).a.d, select(func_2(-2366f, vec3<i32>(u_input.e.x, arg_0.b.c.x, -34030i), vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 21u)], global0[_wgslsmith_index_u32(4294967295u, 21u)]), vec4<f32>(global0[_wgslsmith_index_u32(u_input.d, 21u)], global0[_wgslsmith_index_u32(78724u, 21u)], global0[_wgslsmith_index_u32(arg_0.a.b.x, 21u)], 1034f)).a.d, false, arg_0.b.d)), vec3<bool>(func_3().x, arg_0.b.d, arg_0.b.d), !vec3<bool>(func_2(global0[_wgslsmith_index_u32(arg_0.a.b.x, 21u)], vec3<i32>(-2147483647i, u_input.e.x, -21650i), vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 21u)], global0[_wgslsmith_index_u32(8601u, 21u)]), vec4<f32>(-1959f, global0[_wgslsmith_index_u32(arg_0.a.b.x, 21u)], global0[_wgslsmith_index_u32(0u, 21u)], global0[_wgslsmith_index_u32(u_input.a, 21u)])).a.d, true, arg_0.b.d)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(u_input.d, 21u)], -1014f)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(u_input.d, 21u)], -1523f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-848f, -459f), vec2<f32>(global0[_wgslsmith_index_u32(0u, 21u)], -1612f), vec2<bool>(arg_0.b.d, arg_0.a.d)))))), func_2(global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(31102u, arg_0.b.b.x) | arg_0.b.b.x, 21u)], firstLeadingBit(~(vec3<i32>(u_input.c, -908i, -2147483647i) ^ u_input.b)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(2272f, global0[_wgslsmith_index_u32(118984u, 21u)])))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(243f, -211f, global0[_wgslsmith_index_u32(u_input.a, 21u)], 1652f) + vec4<f32>(global0[_wgslsmith_index_u32(u_input.a, 21u)], global0[_wgslsmith_index_u32(72162u, 21u)], global0[_wgslsmith_index_u32(4294967295u, 21u)], global0[_wgslsmith_index_u32(42565u, 21u)])))).a);
    global1 = false;
    var_0 = Struct_3(!var_0.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.b.x, global0[_wgslsmith_index_u32(30541u, 21u)]), vec2<f32>(global0[_wgslsmith_index_u32(var_0.c.b.x, 21u)], var_0.b.x))), _wgslsmith_div_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(var_0.c.b.x, 21u)], var_0.b.x), var_0.b))) + _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 21u)] + 1733f), -131f), var_0.b)), arg_0.b);
    global1 = 1i > _wgslsmith_dot_vec2_i32(~(-vec2<i32>(u_input.e.x, -1i)), _wgslsmith_div_vec2_i32(vec2<i32>(-1i) * -arg_0.b.c, -_wgslsmith_sub_vec2_i32(var_0.c.c, u_input.e.xz)));
    let var_1 = !vec4<bool>(any(select(vec2<bool>(true, arg_0.b.d), vec2<bool>(true, false), true)) == !any(vec2<bool>(true, arg_0.a.d)), true, false, arg_0.b.d);
    return Struct_3(!select(!(!var_0.a), var_1.xyx, vec3<bool>(true & var_0.a.x, false && var_0.c.d, !var_1.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(u_input.a | 4702u, 21u)], _wgslsmith_f_op_f32(f32(-1f) * -732f))), func_2(var_0.b.x, select(countOneBits(u_input.e), u_input.e, true), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-114f + global0[_wgslsmith_index_u32(u_input.a, 21u)])), var_0.b.x), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.x, global0[_wgslsmith_index_u32(arg_0.a.b.x, 21u)], -1000f, 1187f) * vec4<f32>(var_0.b.x, var_0.b.x, 379f, var_0.b.x))))).a);
}

fn func_5(arg_0: Struct_3, arg_1: Struct_1, arg_2: bool, arg_3: bool) -> Struct_1 {
    global1 = true;
    global0 = array<f32, 21>();
    let var_0 = func_2(arg_0.b.x, vec3<i32>(u_input.b.x, -25680i, firstTrailingBit(firstTrailingBit(_wgslsmith_add_i32(arg_1.c.x, arg_1.c.x)))), arg_0.b, _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1611f, 1543f, arg_0.b.x, _wgslsmith_f_op_f32(-1027f - -441f))))).a;
    global0 = array<f32, 21>();
    var var_1 = ~(arg_0.c.b.x << (u_input.a % 32u));
    return Struct_1(-_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(u_input.e.xx, vec2<i32>(1i, arg_0.c.a) | vec2<i32>(-1i, 57958i)), u_input.e.x), ~_wgslsmith_sub_vec3_u32(vec3<u32>(countOneBits(arg_1.b.x), 25246u, abs(arg_1.b.x)), _wgslsmith_mult_vec3_u32(arg_1.b, _wgslsmith_sub_vec3_u32(arg_1.b, vec3<u32>(7254u, var_0.b.x, 1u)))), firstLeadingBit(arg_0.c.c), all(!(!(!arg_0.a))), reverseBits(-min(1i, var_0.e)));
}

fn func_1() -> Struct_1 {
    global0 = array<f32, 21>();
    let var_0 = 22199i;
    global0 = array<f32, 21>();
    return func_5(func_4(func_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(252f, 228f)), u_input.e, vec2<f32>(global0[_wgslsmith_index_u32(u_input.a, 21u)], _wgslsmith_div_f32(global0[_wgslsmith_index_u32(u_input.a, 21u)], global0[_wgslsmith_index_u32(u_input.a, 21u)])), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(526f, -546f, global0[_wgslsmith_index_u32(u_input.d, 21u)], global0[_wgslsmith_index_u32(20634u, 21u)]))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(38354u, 21u)], global0[_wgslsmith_index_u32(31916u, 21u)], 1030f, 694f) * vec4<f32>(2254f, global0[_wgslsmith_index_u32(1u, 21u)], -833f, global0[_wgslsmith_index_u32(1u, 21u)]))))), func_4(func_2(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(countOneBits(u_input.a), 21u)], -380f), -vec3<i32>(1i, 1i, 1i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(u_input.a, 21u)], -1563f) + vec2<f32>(802f, -275f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(u_input.a, 21u)], global0[_wgslsmith_index_u32(4294967295u, 21u)]) * vec2<f32>(global0[_wgslsmith_index_u32(u_input.a, 21u)], -1043f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 21u)], global0[_wgslsmith_index_u32(0u, 21u)], 1035f, -695f), vec4<f32>(global0[_wgslsmith_index_u32(1u, 21u)], global0[_wgslsmith_index_u32(0u, 21u)], global0[_wgslsmith_index_u32(u_input.d, 21u)], global0[_wgslsmith_index_u32(u_input.d, 21u)]))) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0[_wgslsmith_index_u32(u_input.d, 21u)], -1356f, global0[_wgslsmith_index_u32(u_input.d, 21u)], 1242f)))))).c, func_2(-411f, firstLeadingBit(u_input.b), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(u_input.a, 21u)], 1469f) - vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 21u)], global0[_wgslsmith_index_u32(u_input.a, 21u)]))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-749f, global0[_wgslsmith_index_u32(4940u, 21u)], -416f, 569f)))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(u_input.a, 21u)], 970f, global0[_wgslsmith_index_u32(u_input.a, 21u)], global0[_wgslsmith_index_u32(u_input.d, 21u)])), _wgslsmith_div_vec4_f32(vec4<f32>(373f, global0[_wgslsmith_index_u32(1u, 21u)], global0[_wgslsmith_index_u32(u_input.a, 21u)], -1075f), vec4<f32>(490f, -508f, -1317f, global0[_wgslsmith_index_u32(77334u, 21u)])))))).b.d, false);
}

fn func_6(arg_0: vec4<f32>, arg_1: Struct_1) -> bool {
    global0 = array<f32, 21>();
    let var_0 = -vec4<i32>(~(22292i & u_input.c) >> (_wgslsmith_sub_u32(abs(u_input.d), 14663u) % 32u), select(arg_1.c.x, 1i, _wgslsmith_div_i32(arg_1.a, arg_1.c.x) >= func_2(-486f, u_input.b, vec2<f32>(-308f, 1252f), vec4<f32>(713f, -182f, global0[_wgslsmith_index_u32(u_input.d, 21u)], global0[_wgslsmith_index_u32(arg_1.b.x, 21u)])).a.a), ~1i, u_input.e.x);
    var var_1 = func_2(_wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(arg_1.b.x, 21u)])), vec3<i32>(~1i, func_1().e, -func_4(func_2(358f, vec3<i32>(arg_1.c.x, -2147483647i, -38243i), arg_0.zy, vec4<f32>(arg_0.x, arg_0.x, arg_0.x, -1377f))).c.e), vec2<f32>(_wgslsmith_f_op_f32(func_4(func_2(arg_0.x, var_0.wwz, arg_0.wy, vec4<f32>(global0[_wgslsmith_index_u32(35572u, 21u)], global0[_wgslsmith_index_u32(arg_1.b.x, 21u)], global0[_wgslsmith_index_u32(4294967295u, 21u)], global0[_wgslsmith_index_u32(arg_1.b.x, 21u)]))).b.x * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(u_input.a, 21u)], arg_0.x))))), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(arg_1.b.x, 21u)], _wgslsmith_f_op_f32(f32(-1f) * -1214f), any(vec4<bool>(false, arg_1.d, true, arg_1.d)))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -722f)), _wgslsmith_f_op_f32(-func_4(Struct_2(arg_1, arg_1)).b.x), _wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(1u, 21u)])), -128f));
    global0 = array<f32, 21>();
    var var_2 = Struct_3(select(!(!(!vec3<bool>(var_1.a.d, true, true))), select(vec3<bool>(arg_1.b.x >= 0u, true, func_4(Struct_2(Struct_1(-29917i, vec3<u32>(48665u, var_1.a.b.x, var_1.a.b.x), arg_1.c, true, 1i), arg_1)).a.x), !(!vec3<bool>(true, var_1.b.d, true)), vec3<bool>(func_5(Struct_3(vec3<bool>(var_1.b.d, false, arg_1.d), vec2<f32>(global0[_wgslsmith_index_u32(u_input.a, 21u)], global0[_wgslsmith_index_u32(u_input.d, 21u)]), Struct_1(u_input.b.x, vec3<u32>(u_input.a, 88802u, u_input.a), vec2<i32>(arg_1.a, -6096i), true, u_input.b.x)), var_1.b, var_1.a.d, true).d, false | var_1.a.d, !var_1.b.d)), true), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(-906f - global0[_wgslsmith_index_u32(136075u, 21u)]))))), func_5(Struct_3(!vec3<bool>(false, arg_1.d, true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(795f, global0[_wgslsmith_index_u32(arg_1.b.x, 21u)]), arg_0.zx))), Struct_1(u_input.c, ~vec3<u32>(799u, 18345u, 0u), vec2<i32>(1i, 1i) ^ arg_1.c, func_5(Struct_3(vec3<bool>(true, true, true), vec2<f32>(global0[_wgslsmith_index_u32(arg_1.b.x, 21u)], global0[_wgslsmith_index_u32(u_input.d, 21u)]), Struct_1(9298i, arg_1.b, vec2<i32>(arg_1.e, u_input.e.x), arg_1.d, 3223i)), arg_1, true, true).d, u_input.c)), func_1(), var_1.b.d, var_1.b.d || arg_1.d));
    return !all(var_2.a.yy);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 21>();
    global0 = array<f32, 21>();
    var var_0 = select(vec3<u32>(17880u, ~(~(1u | u_input.d)), firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(57252u, 48367u)) & _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.d, u_input.a), vec3<u32>(u_input.d, 59080u, 7048u)))), select(vec3<u32>((1u >> (u_input.d % 32u)) << (abs(71214u) % 32u), 1u >> (_wgslsmith_mod_u32(u_input.d, 4294967295u) % 32u), ~4294967295u), vec3<u32>(_wgslsmith_mod_u32(u_input.d, u_input.d), min(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, 41512u, u_input.a, 0u), vec4<u32>(34665u, u_input.a, 16147u, u_input.a)), _wgslsmith_add_u32(21483u, 1u)), 79559u), vec3<bool>(any(select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), true)), true, all(vec4<bool>(true, true, true, true)))), vec3<bool>(false, !any(vec3<bool>(true, true, true)), func_6(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(1u, 21u)], -254f, global0[_wgslsmith_index_u32(914u, 21u)], global0[_wgslsmith_index_u32(u_input.d, 21u)])))), func_1())));
    let var_1 = 2147483647i;
    let var_2 = ~(func_1().b.x & var_0.x);
    let var_3 = Struct_1(-1i, ~(~(vec3<u32>(u_input.d, u_input.a, var_2) & vec3<u32>(var_0.x, var_0.x, u_input.a)) | ~(~vec3<u32>(u_input.a, var_0.x, u_input.d))), ~(u_input.b.zx | func_4(func_2(1901f, u_input.b, vec2<f32>(-875f, global0[_wgslsmith_index_u32(1u, 21u)]), vec4<f32>(-1951f, global0[_wgslsmith_index_u32(u_input.d, 21u)], 376f, global0[_wgslsmith_index_u32(var_2, 21u)]))).c.c), ~86743u <= _wgslsmith_dot_vec4_u32(vec4<u32>(countOneBits(var_0.x), u_input.a, u_input.a, u_input.d << (31989u % 32u)), select(vec4<u32>(var_0.x, 1u, var_2, 85721u), countOneBits(vec4<u32>(1u, var_2, var_0.x, u_input.a)), var_0.x <= u_input.a)), min(-_wgslsmith_mult_i32(-2147483647i, -1i) & _wgslsmith_clamp_i32(i32(-1i) * -38513i, var_1, reverseBits(-2147483647i)), -10963i));
    var var_4 = Struct_4(var_3.d, abs(~(~vec4<u32>(u_input.d, 63695u, 0u, var_2)) ^ vec4<u32>(46214u | var_2, 107377u, 31209u >> (0u % 32u), _wgslsmith_dot_vec3_u32(var_3.b, vec3<u32>(var_2, var_3.b.x, 0u)))), min(~_wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.c, var_3.a, var_3.c.x, 0i), vec4<i32>(-2147483647i, var_3.a, var_1, u_input.b.x)), -vec4<i32>(-10937i, -1i, var_3.e, var_1)), ~vec4<i32>(_wgslsmith_add_i32(13182i, var_1), var_3.e << (var_0.x % 32u), 1i, -19577i << (var_0.x % 32u))), func_4(func_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_3.b.x, 21u)]), 100f)), u_input.b, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-589f, -1511f), vec2<f32>(269f, global0[_wgslsmith_index_u32(24158u, 21u)]))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-384f, 997f) + vec2<f32>(1000f, global0[_wgslsmith_index_u32(0u, 21u)])))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(var_3.b.x, 21u)], -879f, global0[_wgslsmith_index_u32(47157u, 21u)], 1695f), vec4<f32>(global0[_wgslsmith_index_u32(50176u, 21u)], 1000f, global0[_wgslsmith_index_u32(var_0.x, 21u)], 1000f)))))), Struct_3(!select(select(vec3<bool>(var_3.d, true, false), vec3<bool>(true, var_3.d, true), true), func_4(Struct_2(var_3, var_3)).a, vec3<bool>(false, var_3.d, false)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(u_input.a, 21u)], -524f) * vec2<f32>(213f, -1133f))))), var_3));
    var var_5 = var_4.d.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0[_wgslsmith_index_u32(select(8789u, u_input.a, true), 21u)], _wgslsmith_f_op_f32(f32(-1f) * -116f), _wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(22756u, 21u)], 1603f, false)), _wgslsmith_f_op_f32(floor(-941f))))))));
}

