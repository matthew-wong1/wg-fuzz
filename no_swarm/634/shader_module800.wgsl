struct Struct_1 {
    a: vec3<bool>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: i32,
    d: i32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: u32,
    c: vec3<i32>,
    d: Struct_1,
    e: vec4<f32>,
}

struct Struct_5 {
    a: i32,
    b: Struct_4,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: u32 = 49u;

var<private> global2: Struct_1 = Struct_1(vec3<bool>(true, true, true), vec2<u32>(4294967295u, 0u));

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: vec4<f32>) -> f32 {
    var var_0 = Struct_3(Struct_2(Struct_1(!(!global2.a), abs(_wgslsmith_div_vec2_u32(vec2<u32>(global2.b.x, u_input.b.x), global2.b))), Struct_1(!vec3<bool>(true, global2.a.x, global2.a.x), ~abs(vec2<u32>(global2.b.x, 4294967295u)))), Struct_2(Struct_1(!vec3<bool>(true, global0.x, global0.x), global2.b), Struct_1(vec3<bool>(any(vec4<bool>(global0.x, true, true, false)), false, true), vec2<u32>(~0u, u_input.a & u_input.b.x))), -_wgslsmith_mult_i32(i32(-1i) * -66691i, u_input.c.x), _wgslsmith_add_i32(i32(-1i) * -(i32(-1i) * -1i), ~firstLeadingBit(u_input.d)));
    let var_1 = u_input.d;
    let var_2 = Struct_1(vec3<bool>(!(~4294967295u >= _wgslsmith_add_u32(u_input.a, var_0.b.b.b.x)), global0.x, global0.x), firstTrailingBit(~countOneBits(u_input.b.yz)) & firstLeadingBit(global2.b));
    global0 = vec2<bool>(all(vec4<bool>(select(!var_2.a.x, select(true, false, global2.a.x), !global0.x), all(vec4<bool>(false, true, global0.x, false)), !(!global0.x), any(select(global2.a, vec3<bool>(var_2.a.x, false, global0.x), global2.a.x)))), global2.a.x);
    var var_3 = Struct_4(vec2<bool>(!(!global2.a.x), global2.a.x & !(!global0.x)), 4294967295u, vec3<i32>(min(-2147483647i, var_0.c), select(abs(min(2147483647i, 2147483647i)), -_wgslsmith_dot_vec2_i32(vec2<i32>(0i, var_1), vec2<i32>(-20560i, var_1)), false), 0i << (_wgslsmith_dot_vec4_u32(u_input.b, _wgslsmith_mod_vec4_u32(u_input.b, vec4<u32>(31659u, var_2.b.x, var_2.b.x, var_2.b.x))) % 32u)), var_0.b.a, _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.x), 1f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.x))), -1303f))));
    return arg_0.x;
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: Struct_3, arg_3: u32) -> Struct_4 {
    global2 = arg_2.a.b;
    var var_0 = vec2<bool>(~arg_2.c < _wgslsmith_dot_vec2_i32(reverseBits(~vec2<i32>(arg_1.d, arg_2.c)), u_input.c), any(!vec2<bool>(global0.x, any(global2.a.xx))));
    var_0 = global2.a.xx;
    var var_1 = !vec3<bool>(global0.x, !(all(arg_2.b.a.a.zx) && (global0.x || global2.a.x)), all(vec2<bool>(true, true)));
    var var_2 = 4294967295u;
    return Struct_4(arg_2.a.b.a.xx, arg_2.a.a.b.x, arg_0, arg_1.a.b, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1000f, 316f, -1971f, -1557f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(722f, -335f, 432f, -719f), vec4<f32>(-592f, 1095f, 269f, 409f), true)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-625f, _wgslsmith_div_f32(1182f, 1664f), _wgslsmith_f_op_f32(490f - -1714f), _wgslsmith_f_op_f32(func_3(vec4<f32>(-707f, 2164f, -736f, -451f)))))));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_2) -> bool {
    global0 = !vec2<bool>(global0.x, true);
    global1 = _wgslsmith_sub_u32(~(~(~(~1826u))), _wgslsmith_dot_vec4_u32(~(~(u_input.b >> (u_input.b % vec4<u32>(32u)))), u_input.b));
    var var_0 = u_input.b.wyx;
    global0 = !func_2(min(_wgslsmith_div_vec3_i32(arg_0.c, select(vec3<i32>(1i, u_input.c.x, arg_0.c.x), arg_0.c, true)), func_2(vec3<i32>(u_input.c.x, u_input.d, u_input.c.x), Struct_3(arg_1, arg_1, -10046i, u_input.c.x), Struct_3(Struct_2(arg_1.b, arg_0.d), arg_1, arg_0.c.x, -43544i), 1u).c), Struct_3(Struct_2(func_2(arg_0.c, Struct_3(arg_1, arg_1, u_input.c.x, u_input.c.x), Struct_3(arg_1, arg_1, u_input.d, u_input.d), var_0.x).d, func_2(arg_0.c, Struct_3(Struct_2(arg_0.d, arg_0.d), Struct_2(arg_1.a, arg_1.b), -1i, -1i), Struct_3(arg_1, arg_1, -41661i, -9290i), global2.b.x).d), arg_1, -u_input.c.x, abs(arg_0.c.x | -64550i)), Struct_3(arg_1, arg_1, _wgslsmith_add_i32(arg_0.c.x, firstTrailingBit(-2147483647i)), max(select(2147483647i, u_input.c.x, global2.a.x), u_input.c.x)), 10581u).a;
    var var_1 = Struct_1(func_2(_wgslsmith_sub_vec3_i32((vec3<i32>(arg_0.c.x, 25197i, u_input.c.x) >> (u_input.b.yzx % vec3<u32>(32u))) & -vec3<i32>(arg_0.c.x, u_input.c.x, u_input.d), vec3<i32>(arg_0.c.x, arg_0.c.x | 30517i, abs(-24221i))), Struct_3(Struct_2(arg_0.d, Struct_1(arg_0.d.a, var_0.xz)), Struct_2(func_2(arg_0.c, Struct_3(Struct_2(Struct_1(vec3<bool>(true, true, true), var_0.xx), arg_1.a), arg_1, 36581i, u_input.d), Struct_3(Struct_2(Struct_1(vec3<bool>(true, true, true), u_input.b.yy), Struct_1(vec3<bool>(global2.a.x, arg_0.d.a.x, true), vec2<u32>(global2.b.x, 1u))), Struct_2(Struct_1(global2.a, vec2<u32>(19969u, 4294967295u)), Struct_1(vec3<bool>(arg_0.a.x, global0.x, arg_0.d.a.x), vec2<u32>(var_0.x, global2.b.x))), u_input.d, u_input.c.x), arg_0.d.b.x).d, func_2(arg_0.c, Struct_3(Struct_2(Struct_1(global2.a, vec2<u32>(0u, var_0.x)), Struct_1(vec3<bool>(true, global0.x, global0.x), vec2<u32>(arg_1.b.b.x, 54518u))), Struct_2(Struct_1(vec3<bool>(arg_0.d.a.x, global0.x, true), vec2<u32>(24756u, 4294967295u)), arg_0.d), -1i, arg_0.c.x), Struct_3(arg_1, arg_1, 1i, arg_0.c.x), arg_0.b).d), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.c.x, -2147483647i, 13570i, arg_0.c.x) | vec4<i32>(u_input.c.x, u_input.c.x, -1i, arg_0.c.x), vec4<i32>(u_input.d, u_input.c.x, arg_0.c.x, 17143i) >> (u_input.b % vec4<u32>(32u))), -2147483647i), Struct_3(arg_1, arg_1, max(-16958i, _wgslsmith_mod_i32(arg_0.c.x, arg_0.c.x)), _wgslsmith_mod_i32(select(0i, arg_0.c.x, global0.x), min(1i, u_input.c.x))), 4027u).d.a, vec2<u32>(u_input.b.x, 0u));
    return false;
}

fn func_5(arg_0: bool, arg_1: f32, arg_2: Struct_4) -> Struct_3 {
    global0 = global2.a.yx;
    let var_0 = 4294967295u;
    let var_1 = arg_2.d;
    global0 = !vec2<bool>(global2.a.x, func_2(_wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(arg_2.c, arg_2.c, vec3<i32>(23326i, 2147483647i, 18584i)), arg_2.c), Struct_3(Struct_2(Struct_1(arg_2.d.a, vec2<u32>(26412u, 4294967295u)), Struct_1(arg_2.d.a, global2.b)), Struct_2(var_1, var_1), ~arg_2.c.x, u_input.d), Struct_3(Struct_2(arg_2.d, Struct_1(vec3<bool>(false, global0.x, global0.x), vec2<u32>(25688u, 17737u))), Struct_2(Struct_1(arg_2.d.a, vec2<u32>(0u, u_input.b.x)), Struct_1(arg_2.d.a, vec2<u32>(15558u, 0u))), ~u_input.d, -14240i), _wgslsmith_mod_u32(~global2.b.x, var_0)).a.x);
    global0 = vec2<bool>(true, true);
    return Struct_3(Struct_2(func_2(_wgslsmith_add_vec3_i32(reverseBits(arg_2.c), vec3<i32>(arg_2.c.x, arg_2.c.x, -27965i)), Struct_3(Struct_2(arg_2.d, Struct_1(vec3<bool>(false, global2.a.x, false), vec2<u32>(121703u, var_1.b.x))), Struct_2(arg_2.d, Struct_1(vec3<bool>(false, global2.a.x, arg_2.d.a.x), u_input.b.yz)), _wgslsmith_sub_i32(arg_2.c.x, 2147483647i), u_input.c.x & -15361i), Struct_3(Struct_2(arg_2.d, Struct_1(vec3<bool>(global0.x, arg_2.a.x, false), arg_2.d.b)), Struct_2(Struct_1(arg_2.d.a, vec2<u32>(50846u, arg_2.b)), arg_2.d), _wgslsmith_mod_i32(u_input.d, arg_2.c.x), _wgslsmith_add_i32(arg_2.c.x, arg_2.c.x)), _wgslsmith_dot_vec2_u32(global2.b, u_input.b.xy)).d, Struct_1(vec3<bool>(arg_2.d.a.x, arg_2.d.a.x, arg_0 || arg_2.a.x), arg_2.d.b)), Struct_2(var_1, func_2(vec3<i32>(47206i, arg_2.c.x, -18528i) & reverseBits(arg_2.c), Struct_3(Struct_2(Struct_1(vec3<bool>(true, arg_2.d.a.x, true), vec2<u32>(21172u, 74805u)), Struct_1(vec3<bool>(global2.a.x, var_1.a.x, global0.x), global2.b)), Struct_2(Struct_1(vec3<bool>(true, arg_0, false), var_1.b), var_1), u_input.d, -u_input.c.x), Struct_3(Struct_2(var_1, var_1), Struct_2(Struct_1(vec3<bool>(false, true, arg_0), vec2<u32>(0u, 1u)), arg_2.d), -21917i, ~u_input.c.x), ~arg_2.b | global2.b.x).d), func_2(select(vec3<i32>(arg_2.c.x, _wgslsmith_mod_i32(u_input.c.x, u_input.d), 0i), arg_2.c, !vec3<bool>(arg_0, global0.x, arg_2.a.x)), Struct_3(Struct_2(Struct_1(vec3<bool>(arg_0, true, false), vec2<u32>(var_1.b.x, arg_2.b)), arg_2.d), Struct_2(func_2(vec3<i32>(arg_2.c.x, arg_2.c.x, arg_2.c.x), Struct_3(Struct_2(arg_2.d, arg_2.d), Struct_2(Struct_1(arg_2.d.a, vec2<u32>(arg_2.b, 26245u)), var_1), u_input.d, -2147483647i), Struct_3(Struct_2(Struct_1(vec3<bool>(var_1.a.x, true, arg_0), vec2<u32>(31283u, u_input.a)), arg_2.d), Struct_2(Struct_1(vec3<bool>(arg_2.a.x, false, global0.x), vec2<u32>(1u, 26533u)), Struct_1(arg_2.d.a, vec2<u32>(var_1.b.x, arg_2.b))), arg_2.c.x, u_input.d), 1u).d, arg_2.d), arg_2.c.x, u_input.d), Struct_3(Struct_2(Struct_1(vec3<bool>(arg_2.d.a.x, true, true), global2.b), var_1), Struct_2(func_2(arg_2.c, Struct_3(Struct_2(arg_2.d, arg_2.d), Struct_2(Struct_1(vec3<bool>(arg_0, true, arg_0), vec2<u32>(u_input.b.x, 14998u)), Struct_1(vec3<bool>(arg_2.d.a.x, true, true), u_input.b.ww)), arg_2.c.x, 0i), Struct_3(Struct_2(Struct_1(vec3<bool>(false, true, true), vec2<u32>(0u, u_input.a)), arg_2.d), Struct_2(var_1, arg_2.d), u_input.c.x, arg_2.c.x), 1u).d, func_2(arg_2.c, Struct_3(Struct_2(var_1, Struct_1(vec3<bool>(arg_0, true, true), u_input.b.zw)), Struct_2(Struct_1(vec3<bool>(true, arg_0, global0.x), global2.b), Struct_1(vec3<bool>(false, true, var_1.a.x), global2.b)), u_input.d, u_input.c.x), Struct_3(Struct_2(var_1, Struct_1(var_1.a, global2.b)), Struct_2(arg_2.d, Struct_1(arg_2.d.a, vec2<u32>(4294967295u, var_1.b.x))), 0i, u_input.d), global2.b.x).d), abs(_wgslsmith_dot_vec4_i32(vec4<i32>(-162i, arg_2.c.x, -6444i, arg_2.c.x), vec4<i32>(1i, 13518i, -25081i, -8595i))), -abs(0i)), ~firstTrailingBit(~4294967295u)).c.x, arg_2.c.x);
}

fn func_6(arg_0: Struct_3) -> Struct_5 {
    global2 = func_5(global2.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-367f * 1359f)))), Struct_4(vec2<bool>(arg_0.c >= 960i, false), u_input.a, -_wgslsmith_mod_vec3_i32(countOneBits(vec3<i32>(arg_0.d, 2147483647i, arg_0.d)), -vec3<i32>(arg_0.c, 2147483647i, arg_0.c)), arg_0.b.b, vec4<f32>(1f, 1f, 1f, 1f))).b.a;
    let var_0 = !all(vec2<bool>(true, true));
    global0 = global2.a.yx;
    global0 = vec2<bool>(all(vec2<bool>(global0.x, any(vec3<bool>(var_0, true, var_0)))), all(func_5(false, 1177f, func_2(vec3<i32>(u_input.c.x, 31311i, 0i) >> (vec3<u32>(4294967295u, 67289u, global2.b.x) % vec3<u32>(32u)), func_5(global2.a.x, -570f, Struct_4(vec2<bool>(true, false), 30630u, vec3<i32>(u_input.d, arg_0.c, u_input.c.x), arg_0.b.b, vec4<f32>(257f, 1000f, 2300f, -510f))), Struct_3(Struct_2(arg_0.a.b, arg_0.b.a), arg_0.b, 0i, -20662i), arg_0.b.a.b.x)).b.a.a.yz));
    var var_1 = func_4(Struct_4(vec2<bool>(arg_0.a.b.a.x, any(!vec4<bool>(arg_0.b.a.a.x, var_0, var_0, true))), 61021u, ~(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.d, arg_0.d, 10895i), vec3<i32>(-47272i, arg_0.c, u_input.c.x)) >> (vec3<u32>(74356u, 0u, 56824u) % vec3<u32>(32u))), arg_0.b.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(-852f, -1022f, _wgslsmith_f_op_f32(f32(-1f) * -576f), _wgslsmith_f_op_f32(157f * 1340f)) + vec4<f32>(763f, _wgslsmith_div_f32(1453f, -736f), _wgslsmith_f_op_f32(-480f * -295f), -1984f))), Struct_2(arg_0.b.b, arg_0.a.b));
    return Struct_5(arg_0.d, func_2(_wgslsmith_div_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(u_input.d, arg_0.c, 28951i), ~vec3<i32>(arg_0.c, arg_0.d, arg_0.d)), func_5(false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -226f) + 1000f), func_2(vec3<i32>(arg_0.c, 1i, -1i), func_5(false, -1030f, Struct_4(arg_0.a.a.a.yy, 0u, vec3<i32>(u_input.d, u_input.c.x, arg_0.c), arg_0.b.b, vec4<f32>(-1000f, -319f, -383f, 1056f))), Struct_3(arg_0.b, Struct_2(Struct_1(vec3<bool>(false, var_0, true), vec2<u32>(53437u, 4294967295u)), arg_0.b.b), arg_0.d, -64777i), ~37766u)), func_5(true, _wgslsmith_f_op_f32(ceil(-667f)), func_2(firstTrailingBit(vec3<i32>(12793i, 7264i, -1i)), arg_0, func_5(global2.a.x, 245f, Struct_4(global2.a.zz, u_input.a, vec3<i32>(1i, u_input.c.x, arg_0.c), Struct_1(arg_0.b.a.a, vec2<u32>(global2.b.x, global2.b.x)), vec4<f32>(-931f, 1000f, -818f, -2864f))), abs(u_input.a))), arg_0.a.a.b.x << (firstTrailingBit(_wgslsmith_sub_u32(global2.b.x, global2.b.x)) % 32u)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-570f, -723f)) - -581f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1365f))))), -1463f)));
}

fn func_7(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_5, arg_3: Struct_4) -> Struct_3 {
    global1 = abs(u_input.b.x);
    return func_5(true, 781f, arg_3);
}

fn func_1(arg_0: Struct_1) -> Struct_4 {
    let var_0 = func_7(arg_0, select(select(select(vec4<bool>(false, global0.x, global2.a.x, false), !vec4<bool>(global0.x, global0.x, arg_0.a.x, true), select(true, global0.x, false)), vec4<bool>(all(global2.a), global2.a.x & false, false, all(vec4<bool>(true, arg_0.a.x, global2.a.x, global2.a.x))), !global0.x | (global0.x || global2.a.x)), !vec4<bool>(all(arg_0.a), global2.a.x, false, true), any(vec3<bool>(!global2.a.x, all(vec2<bool>(global0.x, true)), global2.a.x))), func_6(func_5(func_4(func_2(vec3<i32>(u_input.c.x, 23273i, 0i), Struct_3(Struct_2(Struct_1(vec3<bool>(global0.x, true, true), vec2<u32>(7877u, u_input.b.x)), Struct_1(vec3<bool>(global0.x, arg_0.a.x, false), vec2<u32>(u_input.a, 4294967295u))), Struct_2(Struct_1(global2.a, arg_0.b), Struct_1(arg_0.a, arg_0.b)), 0i, u_input.d), Struct_3(Struct_2(Struct_1(arg_0.a, u_input.b.yx), Struct_1(arg_0.a, vec2<u32>(1u, u_input.b.x))), Struct_2(arg_0, Struct_1(arg_0.a, u_input.b.zx)), 1i, -16224i), global2.b.x), Struct_2(Struct_1(arg_0.a, vec2<u32>(global2.b.x, 1u)), arg_0)), _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -845f)), Struct_4(vec2<bool>(arg_0.a.x, false), ~global2.b.x, select(vec3<i32>(-1i, 2147483647i, 2082i), vec3<i32>(29556i, u_input.d, u_input.d), vec3<bool>(false, true, false)), arg_0, vec4<f32>(-529f, 1005f, -1477f, 859f)))), Struct_4(global2.a.yz, ~0u, vec3<i32>(0i, 12063i, ~u_input.c.x), arg_0, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1213f), _wgslsmith_f_op_f32(f32(-1f) * -1388f), _wgslsmith_f_op_f32(f32(-1f) * -1269f), _wgslsmith_f_op_f32(f32(-1f) * -1686f)) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1811f, 441f, -1168f, -621f)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1000f, -1948f, -1024f, 735f)))))));
    let var_1 = vec2<bool>(func_4(func_6(Struct_3(Struct_2(var_0.a.a, Struct_1(vec3<bool>(true, global2.a.x, var_0.b.b.a.x), u_input.b.xy)), func_7(arg_0, vec4<bool>(var_0.a.a.a.x, true, false, var_0.a.a.a.x), Struct_5(u_input.d, Struct_4(vec2<bool>(true, global0.x), var_0.b.b.b.x, vec3<i32>(-2147483647i, u_input.d, 1i), Struct_1(vec3<bool>(var_0.a.a.a.x, global2.a.x, arg_0.a.x), var_0.b.b.b), vec4<f32>(-1632f, -1460f, 2372f, -539f)), -408f), Struct_4(vec2<bool>(global2.a.x, global2.a.x), global2.b.x, vec3<i32>(var_0.d, 2147483647i, var_0.d), Struct_1(vec3<bool>(var_0.a.a.a.x, var_0.a.a.a.x, false), vec2<u32>(arg_0.b.x, global2.b.x)), vec4<f32>(558f, 836f, 180f, -664f))).a, u_input.d ^ u_input.c.x, -1i)).b, Struct_2(Struct_1(!global2.a, ~vec2<u32>(1462u, 0u)), func_5(select(global2.a.x, arg_0.a.x, false), 986f, Struct_4(global2.a.xx, arg_0.b.x, vec3<i32>(34101i, var_0.c, var_0.c), var_0.b.b, vec4<f32>(1197f, -573f, -577f, -297f))).a.b)), arg_0.a.x);
    global0 = vec2<bool>(true, true);
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-833f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-616f - 1342f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1076f))), _wgslsmith_f_op_f32(max(142f, _wgslsmith_f_op_f32(f32(-1f) * -711f))));
    global1 = ~select(u_input.b.x, arg_0.b.x, ~arg_0.b.x > arg_0.b.x);
    return Struct_4(vec2<bool>(arg_0.a.x, var_1.x), _wgslsmith_sub_u32(4294967295u, u_input.a), vec3<i32>(_wgslsmith_add_i32(u_input.d ^ -2147483647i, -1i << (u_input.a % 32u)), u_input.c.x, i32(-1i) * -49035i), Struct_1(vec3<bool>(var_0.b.b.a.x, global2.a.x, !(!global2.a.x)), u_input.b.zy), var_2);
}

fn func_8(arg_0: vec3<i32>, arg_1: Struct_4, arg_2: vec4<bool>, arg_3: vec2<i32>) -> Struct_1 {
    var var_0 = -8682i;
    var var_1 = Struct_3(Struct_2(arg_1.d, arg_1.d), func_5(false, arg_1.e.x, arg_1).b, arg_1.c.x, func_5(!global2.a.x, _wgslsmith_f_op_f32(-arg_1.e.x), func_2(-arg_1.c, Struct_3(Struct_2(arg_1.d, Struct_1(vec3<bool>(false, arg_1.d.a.x, false), vec2<u32>(u_input.b.x, global2.b.x))), Struct_2(Struct_1(arg_2.wyy, vec2<u32>(28640u, global2.b.x)), arg_1.d), arg_3.x, arg_0.x), func_5(arg_2.x, -1887f, Struct_4(arg_1.a, 4294967295u, vec3<i32>(6924i, 1i, -23806i), arg_1.d, arg_1.e)), global2.b.x)).d ^ ~(~(-arg_3.x)));
    let var_2 = func_5(false, _wgslsmith_f_op_f32(trunc(arg_1.e.x)), func_6(Struct_3(var_1.a, Struct_2(arg_1.d, Struct_1(arg_2.wxy, u_input.b.zx)), 1i | max(0i, arg_0.x), _wgslsmith_dot_vec2_i32(-u_input.c, vec2<i32>(0i, -4129i)))).b).c;
    global2 = Struct_1(!func_5(func_5(var_1.b.b.a.x, 1014f, arg_1).b.b.a.x, _wgslsmith_div_f32(_wgslsmith_div_f32(1555f, 113f), arg_1.e.x), arg_1).b.a.a, _wgslsmith_sub_vec2_u32(arg_1.d.b, ~arg_1.d.b));
    global0 = select(arg_1.d.a.xy, !(!func_6(Struct_3(Struct_2(arg_1.d, Struct_1(vec3<bool>(true, global0.x, false), u_input.b.wy)), Struct_2(Struct_1(global2.a, u_input.b.wy), arg_1.d), arg_0.x, arg_0.x)).b.a), func_7(func_1(arg_1.d).d, vec4<bool>(global2.a.x, var_1.b.b.a.x && !arg_1.a.x, false, func_4(func_6(Struct_3(Struct_2(arg_1.d, arg_1.d), var_1.b, -42944i, arg_0.x)).b, Struct_2(Struct_1(global2.a, global2.b), arg_1.d))), func_6(func_7(var_1.a.b, !vec4<bool>(true, var_1.a.a.a.x, arg_1.a.x, true), Struct_5(11623i, arg_1, arg_1.e.x), Struct_4(global2.a.yx, 4294967295u, arg_0, Struct_1(arg_2.xyx, u_input.b.yx), arg_1.e))), func_2(~firstLeadingBit(arg_1.c), func_5(!var_1.b.b.a.x, _wgslsmith_f_op_f32(abs(2559f)), Struct_4(arg_2.zy, 82875u, arg_1.c, Struct_1(arg_2.xxx, arg_1.d.b), vec4<f32>(arg_1.e.x, -1715f, arg_1.e.x, arg_1.e.x))), Struct_3(func_7(Struct_1(arg_1.d.a, global2.b), vec4<bool>(arg_1.a.x, false, var_1.a.a.a.x, false), Struct_5(-10612i, arg_1, 1009f), Struct_4(vec2<bool>(true, global2.a.x), 1u, arg_1.c, Struct_1(vec3<bool>(true, global2.a.x, true), global2.b), arg_1.e)).b, Struct_2(arg_1.d, Struct_1(vec3<bool>(var_1.a.b.a.x, true, var_1.a.a.a.x), vec2<u32>(1u, arg_1.b))), 18474i, 19713i), _wgslsmith_dot_vec2_u32(arg_1.d.b, ~var_1.b.a.b))).a.a.a.x);
    return var_1.a.a;
}

fn func_9(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: vec4<f32>) -> Struct_1 {
    let var_0 = Struct_3(Struct_2(func_6(func_7(func_8(vec3<i32>(u_input.d, u_input.c.x, 21611i), Struct_4(vec2<bool>(global2.a.x, false), 4294967295u, vec3<i32>(u_input.c.x, u_input.d, -19659i), arg_1, vec4<f32>(arg_3.x, 113f, -191f, arg_3.x)), vec4<bool>(true, arg_1.a.x, arg_1.a.x, global2.a.x), vec2<i32>(2147483647i, u_input.d)), select(vec4<bool>(false, global0.x, global0.x, true), vec4<bool>(arg_1.a.x, true, true, global2.a.x), vec4<bool>(false, global0.x, false, arg_1.a.x)), func_6(Struct_3(Struct_2(Struct_1(global2.a, global2.b), arg_1), Struct_2(arg_1, Struct_1(global2.a, vec2<u32>(1u, 4294967295u))), u_input.c.x, u_input.d)), func_1(arg_1))).b.d, arg_1), Struct_2(arg_1, arg_1), func_5(_wgslsmith_f_op_f32(327f - -692f) >= arg_0.x, arg_3.x, func_6(Struct_3(Struct_2(Struct_1(vec3<bool>(false, global0.x, global0.x), vec2<u32>(global2.b.x, global2.b.x)), Struct_1(vec3<bool>(false, true, arg_1.a.x), vec2<u32>(4294967295u, arg_1.b.x))), Struct_2(Struct_1(vec3<bool>(global0.x, false, global0.x), u_input.b.xz), arg_1), 31932i, u_input.c.x)).b).d << (u_input.a % 32u), select(78314i, -(func_2(vec3<i32>(u_input.c.x, u_input.c.x, u_input.d), Struct_3(Struct_2(arg_1, arg_1), Struct_2(arg_1, Struct_1(vec3<bool>(global0.x, global0.x, false), vec2<u32>(global2.b.x, 0u))), u_input.c.x, -5117i), Struct_3(Struct_2(arg_1, Struct_1(global2.a, global2.b)), Struct_2(Struct_1(arg_1.a, u_input.b.ww), Struct_1(vec3<bool>(true, arg_1.a.x, global2.a.x), vec2<u32>(arg_1.b.x, u_input.b.x))), u_input.d, 0i), arg_1.b.x).c.x << (_wgslsmith_mod_u32(arg_1.b.x, 50921u) % 32u)), any(select(!vec4<bool>(global0.x, arg_1.a.x, true, true), !vec4<bool>(true, global0.x, false, false), vec4<bool>(global0.x, false, true, global2.a.x)))));
    global0 = func_8(abs(vec3<i32>(var_0.d, 2147483647i, 2147483647i)), Struct_4(!(!vec2<bool>(arg_1.a.x, global0.x)), ~43394u, ~vec3<i32>(var_0.d, reverseBits(u_input.d), _wgslsmith_mult_i32(1i, u_input.c.x)), Struct_1(!func_8(vec3<i32>(var_0.c, -2147483647i, var_0.d), Struct_4(global2.a.zz, arg_1.b.x, vec3<i32>(1i, 27953i, u_input.c.x), Struct_1(var_0.a.b.a, vec2<u32>(11092u, var_0.b.a.b.x)), vec4<f32>(arg_3.x, arg_3.x, 1020f, -822f)), vec4<bool>(true, false, false, true), vec2<i32>(2147483647i, 3391i)).a, func_6(Struct_3(Struct_2(Struct_1(arg_1.a, arg_1.b), var_0.b.b), var_0.b, var_0.d, -2147483647i)).b.d.b), vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1094f - -1488f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x + arg_0.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(arg_3.x)), -1000f)), _wgslsmith_f_op_f32(-arg_3.x))), select(!vec4<bool>(func_6(var_0).b.a.x, arg_3.x == -1000f, func_1(var_0.a.b).a.x, any(vec4<bool>(false, global2.a.x, arg_1.a.x, false))), select(select(!vec4<bool>(var_0.a.b.a.x, false, false, var_0.a.a.a.x), !vec4<bool>(false, arg_1.a.x, arg_1.a.x, false), arg_3.x >= -521f), !select(vec4<bool>(false, global2.a.x, false, global2.a.x), vec4<bool>(global2.a.x, global2.a.x, arg_1.a.x, true), vec4<bool>(arg_1.a.x, false, global0.x, global0.x)), true), arg_1.a.x | global0.x), func_1(func_2(-vec3<i32>(19477i, var_0.c, u_input.d), func_7(func_8(vec3<i32>(0i, var_0.d, u_input.d), Struct_4(global2.a.zy, u_input.a, vec3<i32>(1i, -12973i, u_input.c.x), arg_1, vec4<f32>(arg_3.x, arg_2.x, -277f, 454f)), vec4<bool>(true, var_0.b.a.a.x, true, var_0.a.b.a.x), u_input.c), vec4<bool>(false, true, false, false), func_6(Struct_3(var_0.b, var_0.b, 38306i, var_0.c)), func_2(vec3<i32>(24152i, 1i, u_input.c.x), Struct_3(Struct_2(Struct_1(arg_1.a, vec2<u32>(0u, u_input.a)), var_0.a.a), Struct_2(Struct_1(global2.a, vec2<u32>(arg_1.b.x, arg_1.b.x)), Struct_1(vec3<bool>(global0.x, true, arg_1.a.x), vec2<u32>(1u, 1u))), 1i, 2147483647i), var_0, 4294967295u)), func_5(true, _wgslsmith_f_op_f32(max(-1836f, arg_2.x)), Struct_4(global2.a.yz, global2.b.x, vec3<i32>(u_input.c.x, 2147483647i, -2471i), arg_1, vec4<f32>(arg_2.x, 1323f, arg_2.x, -2265f))), global2.b.x).d).c.zy).a.zy;
    let var_1 = _wgslsmith_div_vec2_u32(vec2<u32>(26596u, ~0u), arg_1.b);
    let var_2 = func_7(Struct_1(!vec3<bool>(var_0.a.b.a.x, arg_3.x < arg_0.x, true), reverseBits(func_1(Struct_1(vec3<bool>(true, global0.x, global2.a.x), global2.b)).d.b)), select(!select(vec4<bool>(true, arg_1.a.x, global2.a.x, false), vec4<bool>(true, true, global0.x, arg_1.a.x), vec4<bool>(arg_1.a.x, false, true, global2.a.x)), select(select(vec4<bool>(true, true, var_0.b.a.a.x, var_0.b.b.a.x), vec4<bool>(global0.x, var_0.b.a.a.x, false, arg_1.a.x), vec4<bool>(true, var_0.a.a.a.x, global0.x, global0.x)), select(vec4<bool>(arg_1.a.x, true, var_0.b.a.a.x, true), select(vec4<bool>(false, var_0.a.b.a.x, global2.a.x, var_0.b.a.a.x), vec4<bool>(global0.x, global0.x, false, arg_1.a.x), vec4<bool>(true, var_0.b.b.a.x, arg_1.a.x, global0.x)), select(vec4<bool>(false, false, false, global2.a.x), vec4<bool>(true, arg_1.a.x, true, global0.x), vec4<bool>(false, arg_1.a.x, global0.x, global0.x))), !vec4<bool>(var_0.a.b.a.x, var_0.b.a.a.x, arg_1.a.x, global2.a.x)), select(!select(vec4<bool>(false, var_0.b.b.a.x, global0.x, global0.x), vec4<bool>(global2.a.x, global0.x, true, global2.a.x), arg_1.a.x), select(select(vec4<bool>(var_0.b.a.a.x, false, arg_1.a.x, true), vec4<bool>(global0.x, false, var_0.a.a.a.x, var_0.a.b.a.x), global0.x), !vec4<bool>(var_0.a.b.a.x, false, true, true), arg_1.a.x | global2.a.x), vec4<bool>(func_6(Struct_3(var_0.b, Struct_2(arg_1, var_0.b.b), 0i, var_0.c)).b.a.x, global0.x, global2.a.x && true, global0.x))), Struct_5(1i, Struct_4(!vec2<bool>(true, var_0.b.a.a.x), firstTrailingBit(~global2.b.x), ~(~vec3<i32>(u_input.c.x, u_input.c.x, var_0.d)), arg_1, vec4<f32>(-956f, _wgslsmith_f_op_f32(1321f + 483f), _wgslsmith_f_op_f32(round(-280f)), _wgslsmith_div_f32(arg_2.x, -1319f))), func_2(vec3<i32>(-1i) * -vec3<i32>(-31623i, var_0.d, -21030i), var_0, func_7(Struct_1(vec3<bool>(false, false, false), u_input.b.ww), vec4<bool>(global0.x, false, global0.x, arg_1.a.x), Struct_5(var_0.d, Struct_4(global2.a.zz, global2.b.x, vec3<i32>(2889i, 62921i, var_0.c), Struct_1(vec3<bool>(false, arg_1.a.x, var_0.b.a.a.x), vec2<u32>(0u, var_0.a.b.b.x)), arg_2), 1000f), func_1(Struct_1(var_0.a.b.a, global2.b))), 0u).e.x), func_1(Struct_1(!(!arg_1.a), ~vec2<u32>(arg_1.b.x, 54389u)))).a;
    let var_3 = Struct_4(!vec2<bool>(!var_0.a.a.a.x, true), ~firstTrailingBit(~_wgslsmith_div_u32(9722u, var_1.x)), ~(-(firstTrailingBit(vec3<i32>(var_0.c, -1i, u_input.c.x)) | (vec3<i32>(var_0.d, -22899i, u_input.c.x) | vec3<i32>(-1i, var_0.d, -1i)))), Struct_1(global2.a, vec2<u32>(~(~4294967295u), abs(_wgslsmith_dot_vec2_u32(u_input.b.zz, vec2<u32>(1u, arg_1.b.x))))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(arg_0.x + _wgslsmith_div_f32(-373f, -777f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.x + -629f) + -1942f), -1000f, -1565f))));
    return func_6(func_7(Struct_1(func_1(func_8(vec3<i32>(-2147483647i, u_input.c.x, -1i), var_3, vec4<bool>(false, arg_1.a.x, false, arg_1.a.x), u_input.c)).d.a, ~(~vec2<u32>(1u, var_3.b))), select(!vec4<bool>(global2.a.x, true, false, true), select(select(vec4<bool>(true, arg_1.a.x, false, false), vec4<bool>(false, true, global2.a.x, true), true), !vec4<bool>(false, var_3.a.x, false, var_2.b.a.x), global0.x), _wgslsmith_f_op_f32(727f * var_3.e.x) < var_3.e.x), Struct_5(_wgslsmith_dot_vec2_i32(u_input.c, vec2<i32>(var_0.c, var_3.c.x)), var_3, -1232f), func_2(vec3<i32>(~5891i, var_3.c.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.c.x, u_input.c.x), vec3<i32>(u_input.c.x, 1i, -2147483647i))), func_7(func_7(arg_1, vec4<bool>(true, var_0.b.a.a.x, false, true), Struct_5(-1i, var_3, var_3.e.x), Struct_4(vec2<bool>(global0.x, global2.a.x), var_0.b.b.b.x, vec3<i32>(-2147483647i, 0i, -15318i), Struct_1(var_2.a.a, arg_1.b), vec4<f32>(-1000f, arg_2.x, 851f, arg_3.x))).a.b, !vec4<bool>(false, arg_1.a.x, var_3.a.x, global2.a.x), Struct_5(var_3.c.x, Struct_4(var_0.b.b.a.xz, 33562u, vec3<i32>(2147483647i, var_3.c.x, 1i), arg_1, arg_0), var_3.e.x), func_6(Struct_3(var_0.a, var_2, 11273i, var_3.c.x)).b), func_5(false && global2.a.x, -645f, func_2(vec3<i32>(var_0.c, -26140i, var_0.d), Struct_3(Struct_2(var_3.d, Struct_1(vec3<bool>(true, global0.x, var_2.b.a.x), global2.b)), var_2, 41868i, 1i), var_0, 10303u)), ~1u))).b.d;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !vec2<bool>(global0.x, select(true, true, !all(global2.a.xx)));
    var var_0 = false;
    var var_1 = Struct_3(Struct_2(func_9(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(497f, 121f, 864f, 750f))), func_8(vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x) << (u_input.b.xyx % vec3<u32>(32u)), func_1(Struct_1(global2.a, vec2<u32>(u_input.b.x, 12065u))), vec4<bool>(false, global2.a.x, global2.a.x, global2.a.x), -vec2<i32>(u_input.c.x, u_input.d)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(796f, 432f, -200f, -512f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-329f, 447f, 1474f, 1000f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(183f, -1000f, 270f, 626f)))), Struct_1(select(vec3<bool>(global0.x, global0.x, global0.x), func_7(Struct_1(global2.a, u_input.b.zx), vec4<bool>(false, true, global0.x, global0.x), Struct_5(1i, Struct_4(global2.a.xz, 68576u, vec3<i32>(-2147483647i, u_input.d, u_input.c.x), Struct_1(global2.a, global2.b), vec4<f32>(335f, 1846f, -989f, -1000f)), -772f), Struct_4(global2.a.yx, 1u, vec3<i32>(u_input.c.x, 0i, u_input.d), Struct_1(vec3<bool>(global0.x, true, global2.a.x), vec2<u32>(0u, 50677u)), vec4<f32>(1090f, -981f, 651f, 748f))).b.b.a, true), vec2<u32>(35219u, u_input.a) ^ vec2<u32>(1u, 0u))), Struct_2(func_1(func_1(Struct_1(vec3<bool>(false, false, true), u_input.b.zw)).d).d, func_5(global2.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1006f - 425f)), func_6(Struct_3(Struct_2(Struct_1(global2.a, u_input.b.ww), Struct_1(global2.a, vec2<u32>(u_input.b.x, 0u))), Struct_2(Struct_1(global2.a, vec2<u32>(1u, u_input.b.x)), Struct_1(vec3<bool>(global2.a.x, global2.a.x, global2.a.x), vec2<u32>(u_input.a, 0u))), -50765i, 41754i)).b).b.b), u_input.d, -_wgslsmith_mult_i32(u_input.c.x, -2147483647i));
    let var_2 = _wgslsmith_div_f32(-156f, 505f);
    let var_3 = 13692u;
    var var_4 = vec4<bool>(func_8(vec3<i32>(-1i) * -func_2(vec3<i32>(-42010i, var_1.c, u_input.c.x), Struct_3(Struct_2(var_1.a.a, Struct_1(vec3<bool>(true, true, global2.a.x), vec2<u32>(0u, var_1.b.a.b.x))), Struct_2(Struct_1(global2.a, global2.b), Struct_1(vec3<bool>(false, global0.x, true), vec2<u32>(8554u, 14118u))), var_1.c, 15747i), Struct_3(var_1.b, var_1.b, var_1.c, u_input.d), 9875u).c, func_6(func_5(true, _wgslsmith_f_op_f32(func_3(vec4<f32>(var_2, -1000f, -1000f, -3120f))), Struct_4(global2.a.zx, u_input.b.x, vec3<i32>(u_input.d, var_1.c, 4105i), var_1.a.b, vec4<f32>(var_2, var_2, var_2, -1000f)))).b, !(!select(vec4<bool>(false, global2.a.x, global2.a.x, global0.x), vec4<bool>(global2.a.x, true, global0.x, true), global2.a.x)), vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d, u_input.c.x), -u_input.c), u_input.c.x)).a.x, func_6(Struct_3(Struct_2(func_8(vec3<i32>(var_1.c, -1482i, var_1.d), Struct_4(vec2<bool>(true, var_1.a.b.a.x), 4294967295u, vec3<i32>(var_1.c, var_1.c, -2147483647i), Struct_1(var_1.b.a.a, u_input.b.ww), vec4<f32>(var_2, 1355f, var_2, 1000f)), vec4<bool>(var_1.a.b.a.x, false, global0.x, global2.a.x), u_input.c), var_1.a.a), Struct_2(func_8(vec3<i32>(-3105i, -2147483647i, -36394i), Struct_4(global2.a.xz, global2.b.x, vec3<i32>(0i, 0i, 0i), var_1.b.b, vec4<f32>(-237f, 403f, var_2, -2047f)), vec4<bool>(global0.x, false, true, global0.x), vec2<i32>(var_1.d, 2991i)), func_8(vec3<i32>(u_input.d, 129i, var_1.d), Struct_4(var_1.b.a.a.xx, 0u, vec3<i32>(u_input.d, -13316i, -2147483647i), var_1.a.a, vec4<f32>(var_2, var_2, 705f, var_2)), vec4<bool>(false, global0.x, var_1.b.a.a.x, global0.x), u_input.c)), reverseBits(-30282i), _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, 0i, 24183i), vec3<i32>(u_input.c.x, u_input.c.x, 1i)), var_1.d))).b.a.x, false, !var_1.a.b.a.x);
    let var_5 = func_8(vec3<i32>(~1i, (reverseBits(-1i) ^ (u_input.c.x << (51315u % 32u))) ^ 11066i, _wgslsmith_add_i32(u_input.d, -1i)), func_6(Struct_3(func_7(Struct_1(var_1.b.b.a, u_input.b.zz), !vec4<bool>(var_4.x, var_4.x, true, global0.x), func_6(Struct_3(Struct_2(Struct_1(var_4.yzy, vec2<u32>(u_input.a, global2.b.x)), Struct_1(global2.a, var_1.a.b.b)), Struct_2(Struct_1(vec3<bool>(false, false, true), vec2<u32>(56844u, 40185u)), var_1.b.b), -45981i, var_1.d)), Struct_4(var_1.b.a.a.xy, 87371u, vec3<i32>(-596i, -1i, -2147483647i), var_1.a.b, vec4<f32>(var_2, -633f, var_2, var_2))).a, func_7(Struct_1(vec3<bool>(var_4.x, var_1.b.b.a.x, var_4.x), u_input.b.zy), select(vec4<bool>(var_1.a.b.a.x, true, global2.a.x, var_4.x), vec4<bool>(global2.a.x, true, global0.x, var_1.b.a.a.x), global2.a.x), func_6(Struct_3(var_1.a, Struct_2(var_1.a.b, var_1.b.b), u_input.d, 42154i)), Struct_4(vec2<bool>(var_4.x, false), 4294967295u, vec3<i32>(10617i, u_input.d, 31900i), var_1.b.b, vec4<f32>(573f, var_2, 640f, var_2))).b, i32(-1i) * -16746i, u_input.c.x)).b, select(vec4<bool>(true, global0.x, !var_1.b.a.a.x, true), select(!vec4<bool>(true, false, var_1.a.b.a.x, var_4.x), vec4<bool>(!var_4.x, false & global0.x, func_6(Struct_3(Struct_2(Struct_1(vec3<bool>(true, global2.a.x, true), vec2<u32>(0u, 4294967295u)), Struct_1(var_1.a.a.a, vec2<u32>(u_input.b.x, var_1.a.a.b.x))), var_1.a, var_1.d, -25689i)).b.a.x, func_5(true, var_2, Struct_4(var_1.b.b.a.yz, u_input.b.x, vec3<i32>(-2147483647i, 1i, u_input.d), var_1.a.a, vec4<f32>(var_2, var_2, -247f, var_2))).b.b.a.x), false), select(!vec4<bool>(false, global2.a.x, true, global0.x), vec4<bool>(!var_4.x, true, true, var_4.x), all(vec3<bool>(true, var_1.b.a.a.x, var_4.x)))), u_input.c).a;
    global0 = var_4.ww;
    var var_6 = func_5(global0.x, _wgslsmith_f_op_f32(-var_2), Struct_4(vec2<bool>(true, func_6(func_5(var_4.x, var_2, Struct_4(global2.a.yx, u_input.a, vec3<i32>(0i, 1i, 2147483647i), var_1.b.a, vec4<f32>(776f, -2702f, var_2, var_2)))).b.a.x), var_1.b.b.b.x | _wgslsmith_mod_u32(39333u | var_3, ~37678u), abs(vec3<i32>(var_1.d, u_input.d, u_input.d)), var_1.a.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(736f, -586f, 339f, var_2) + vec4<f32>(var_2, var_2, 657f, var_2)) - vec4<f32>(-2656f, var_2, var_2, 140f))))).a.a.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(_wgslsmith_div_vec4_u32(~_wgslsmith_mod_vec4_u32(u_input.b, vec4<u32>(1u, var_3, 16213u, 4294967295u)), vec4<u32>(4294967295u, _wgslsmith_mod_u32(5626u, global2.b.x), ~1u, global2.b.x >> (0u % 32u)))), max(vec4<i32>(-1i) * -_wgslsmith_mod_vec4_i32(vec4<i32>(6716i, 63350i, u_input.c.x, u_input.c.x), vec4<i32>(2147483647i, -1934i, var_1.c, var_1.c)), ~vec4<i32>(2147483647i, -var_1.d, var_1.c, func_2(vec3<i32>(u_input.c.x, 0i, var_1.d), Struct_3(var_1.a, var_1.a, -2147483647i, u_input.d), Struct_3(var_1.a, Struct_2(var_1.b.b, Struct_1(global2.a, var_1.b.b.b)), var_1.d, var_1.c), var_3).c.x)), _wgslsmith_f_op_f32(-var_2));
}

