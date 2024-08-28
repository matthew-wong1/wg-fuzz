struct Struct_1 {
    a: vec3<i32>,
    b: vec4<i32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: u32 = 0u;

var<private> global2: Struct_3 = Struct_3(1u, Struct_1(vec3<i32>(-10521i, -1i, i32(-2147483648)), vec4<i32>(34763i, 58901i, -41437i, -40597i), 0u), 0u, Struct_1(vec3<i32>(0i, -1i, 2147483647i), vec4<i32>(37338i, 1i, 0i, 0i), 0u));

var<private> global3: vec4<bool>;

var<private> global4: bool = true;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: i32, arg_1: bool) -> bool {
    let var_0 = global0.c;
    global0 = global2.d;
    global0 = Struct_1(~vec3<i32>(abs(-8280i), firstTrailingBit(-arg_0), ~firstLeadingBit(22083i)), u_input.b, 0u);
    var var_1 = vec2<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(2001f))));
    global1 = select(max(4294967295u, global0.c), u_input.a, arg_1 && all(global3.yy));
    return true;
}

fn func_2(arg_0: vec2<i32>, arg_1: vec3<u32>, arg_2: i32) -> u32 {
    var var_0 = global0.b;
    global4 = all(!global3.zy);
    global3 = !select(!(!select(vec4<bool>(global3.x, global3.x, global3.x, false), vec4<bool>(false, true, global3.x, global3.x), global3.x)), !vec4<bool>(global3.x, false | global3.x, global3.x && global3.x, global3.x && true), func_3(u_input.b.x, global3.x));
    var var_1 = Struct_1(max(_wgslsmith_add_vec3_i32(~_wgslsmith_div_vec3_i32(var_0.wwz, global0.a), vec3<i32>(global0.b.x, -1i, _wgslsmith_clamp_i32(u_input.b.x, arg_2, u_input.b.x))), global2.d.a), _wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(u_input.b, _wgslsmith_mult_vec4_i32(vec4<i32>(arg_2, global2.d.a.x, -7119i, -1i), vec4<i32>(arg_0.x, arg_0.x, global2.d.b.x, arg_2)), -u_input.b), global2.b.b), _wgslsmith_mod_u32(21817u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 6670u, 4294967295u), arg_1), 1u), arg_1)));
    var var_2 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-476f, -282f, 1539f), vec3<f32>(454f, 155f, 328f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(665f, 122f, -1000f) * vec3<f32>(-674f, 252f, -1672f)))))))));
    return _wgslsmith_mult_u32(4294967295u, firstTrailingBit(63626u)) ^ _wgslsmith_dot_vec3_u32(arg_1, _wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(arg_1 >> (arg_1 % vec3<u32>(32u)), vec3<u32>(arg_1.x, 8697u, global0.c)), _wgslsmith_mod_vec3_u32(~arg_1, ~vec3<u32>(4294967295u, 50428u, global2.a))));
}

fn func_4(arg_0: vec4<bool>, arg_1: bool) -> vec3<f32> {
    global2 = Struct_3(1u, Struct_1(global0.b.zxz, u_input.b, 32601u), global2.d.c, Struct_1(global2.b.a, firstLeadingBit(vec4<i32>(_wgslsmith_sub_i32(global2.d.a.x, u_input.b.x), 5450i, global2.b.a.x, 1i)), _wgslsmith_mod_u32(global2.d.c, global0.c)));
    global0 = global2.b;
    let var_0 = _wgslsmith_mult_i32(45891i, -_wgslsmith_dot_vec2_i32(~_wgslsmith_add_vec2_i32(u_input.b.zy, vec2<i32>(global0.b.x, -1i)), vec2<i32>(firstTrailingBit(-1i), abs(u_input.b.x))));
    global4 = all(!arg_0);
    global1 = reverseBits(_wgslsmith_sub_u32(~global0.c, 5568u));
    return vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2046f * _wgslsmith_div_f32(856f, 169f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-490f + _wgslsmith_f_op_f32(152f + -692f))), any(select(arg_0, !arg_0, arg_1)))), _wgslsmith_f_op_f32(f32(-1f) * -181f), 966f);
}

fn func_1(arg_0: vec4<f32>, arg_1: vec3<f32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(func_4(vec4<bool>(global3.x & any(global3.yyw), func_2(_wgslsmith_add_vec2_i32(global0.b.xy, global2.b.a.zx), max(vec3<u32>(63279u, global0.c, global0.c), vec3<u32>(1u, global2.a, u_input.a)), 2147483647i) != 0u, all(!select(vec4<bool>(global3.x, true, global3.x, true), vec4<bool>(false, false, false, global3.x), vec4<bool>(true, false, global3.x, global3.x))), false), all(select(select(vec4<bool>(true, global3.x, true, global3.x), !vec4<bool>(true, global3.x, global3.x, global3.x), vec4<bool>(global3.x, global3.x, false, true)), !select(vec4<bool>(global3.x, global3.x, global3.x, global3.x), vec4<bool>(global3.x, global3.x, true, global3.x), vec4<bool>(true, global3.x, global3.x, global3.x)), global3.x))));
    var var_1 = _wgslsmith_mult_vec3_i32((u_input.b.wxx ^ _wgslsmith_div_vec3_i32(firstLeadingBit(vec3<i32>(global0.b.x, global0.b.x, 0i)), _wgslsmith_clamp_vec3_i32(global2.d.a, u_input.b.zzw, vec3<i32>(u_input.b.x, global0.a.x, global0.a.x)))) & (~(-vec3<i32>(18430i, global2.d.b.x, u_input.b.x)) << (abs(vec3<u32>(0u, global0.c, 0u) | vec3<u32>(1u, global2.a, global2.c)) % vec3<u32>(32u))), select(vec3<i32>(-1i) * -u_input.b.ywy, vec3<i32>(7174i, -7665i, i32(-1i) * -1i), global3.x));
    let var_2 = -1i;
    let var_3 = 1185f;
    var_0 = _wgslsmith_f_op_vec3_f32(-arg_0.xwz);
    return global2.d;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec2<i32>, arg_3: f32) -> Struct_3 {
    var var_0 = arg_3;
    global0 = arg_1.a;
    let var_1 = ~35153i;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(-591f, _wgslsmith_f_op_f32(1000f * -277f), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3 * _wgslsmith_f_op_f32(-arg_3)) - 421f), !global3.x)) * _wgslsmith_div_f32(1f, arg_3));
    var var_2 = any(!select(vec2<bool>(false, true), vec2<bool>(arg_3 < arg_3, global3.x), global3.zy));
    return Struct_3(0u, arg_0.a, ~reverseBits(1u), func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1671f, 1000f, arg_3, -135f), vec4<f32>(1611f, arg_3, arg_3, arg_3), vec4<bool>(false, true, true, true))))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1779f, -251f, -573f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, arg_3, arg_3))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(2217f, -645f))))));
    global4 = (false & (any(vec3<bool>(global3.x, global3.x, true)) || !global3.x)) & true;
    global2 = func_5(Struct_2(func_1(vec4<f32>(var_0, var_0, 795f, -726f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(453f, var_0, var_0))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(189f, var_0, 1000f)))), _wgslsmith_sub_u32(_wgslsmith_add_u32(firstTrailingBit(4294967295u), 92111u), func_2(global2.d.a.yy, vec3<u32>(global2.d.c, global0.c, global0.c), 18028i) & (23948u ^ global2.a)), func_1(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(475f, var_0, var_0, var_0)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, 970f, var_0))))), Struct_2(Struct_1(select(u_input.b.zzz, min(vec3<i32>(global0.a.x, 1411i, global2.b.b.x), vec3<i32>(2147483647i, -38506i, 17264i)), !vec3<bool>(true, false, global3.x)), vec4<i32>(global2.b.a.x, _wgslsmith_div_i32(global0.b.x, -16704i), -u_input.b.x, 2147483647i), _wgslsmith_dot_vec4_u32(max(vec4<u32>(u_input.a, 47537u, u_input.c.x, global0.c), vec4<u32>(global0.c, 4294967295u, global2.d.c, global0.c)), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 0u, global0.c, u_input.a), vec4<u32>(global0.c, global2.c, global2.c, global2.b.c)))), ~global0.c, func_1(_wgslsmith_div_vec4_f32(vec4<f32>(var_0, var_0, -240f, var_0), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1163f, var_0, var_0, var_0) * vec4<f32>(var_0, -1047f, 546f, var_0))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1154f, 294f, -606f))), vec3<f32>(-425f, var_0, var_0)))), select(-u_input.b.zw, vec2<i32>(~global2.b.b.x, -global0.a.x) >> (u_input.c % vec2<u32>(32u)), select(select(!global3.zz, vec2<bool>(global3.x, true), select(vec2<bool>(false, true), vec2<bool>(global3.x, true), vec2<bool>(false, global3.x))), !select(global3.wx, vec2<bool>(global3.x, false), true), vec2<bool>(true, true))), -1000f);
    let var_1 = func_5(Struct_2(global2.b, 60068u, Struct_1(min(u_input.b.xyx, vec3<i32>(-2147483647i, global2.d.a.x, -1i)), abs(vec4<i32>(1i, global2.b.b.x, 0i, global0.b.x)), ~u_input.a)), Struct_2(Struct_1(u_input.b.zwx, -global2.d.b, 51044u), 45335u, Struct_1(vec3<i32>(56958i, u_input.b.x, _wgslsmith_sub_i32(global0.b.x, 82162i)), firstLeadingBit(func_5(Struct_2(global2.b, 4294967295u, global2.d), Struct_2(Struct_1(global0.b.ywx, global0.b, u_input.c.x), global0.c, Struct_1(u_input.b.yzy, global2.b.b, 0u)), global0.b.xy, var_0).b.b), ~abs(4294967295u))), vec2<i32>(global2.b.a.x, global2.b.a.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1125f))), _wgslsmith_f_op_vec3_f32(func_4(!select(vec4<bool>(false, true, false, global3.x), vec4<bool>(global3.x, global3.x, global3.x, true), false), global3.x)).x));
    global3 = vec4<bool>(!(!global3.x) || global3.x, select(true, _wgslsmith_f_op_vec3_f32(func_4(select(vec4<bool>(true, global3.x, global3.x, false), vec4<bool>(true, false, true, global3.x), true), true)).x == 607f, false), _wgslsmith_mult_u32(19135u, u_input.a) != _wgslsmith_dot_vec4_u32(~reverseBits(vec4<u32>(23793u, 0u, 1u, global0.c)), _wgslsmith_sub_vec4_u32(min(vec4<u32>(1368u, var_1.c, 1u, global0.c), vec4<u32>(4294967295u, global0.c, global0.c, global0.c)), vec4<u32>(4294967295u, u_input.a, var_1.a, u_input.c.x) | vec4<u32>(0u, 4294967295u, global0.c, 43443u))), any(vec2<bool>(any(global3.wy), true)));
    global0 = Struct_1(vec3<i32>(i32(-1i) * -global2.d.a.x, -8434i, i32(-1i) * -1i), global0.b, select(u_input.c.x >> (~(~u_input.c.x) % 32u), ~1u, !any(!global3.xxw)));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~(vec4<u32>(1u, 4294967295u, u_input.a, 444u) | vec4<u32>(global0.c, u_input.c.x, global2.d.c, var_1.c)) << (vec4<u32>(21312u, global0.c << (76483u % 32u), var_1.c, _wgslsmith_add_u32(1u, 0u)) % vec4<u32>(32u))), _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(select(global0.c, global2.b.c, true), _wgslsmith_mult_u32(global2.a, 3878u), reverseBits(u_input.c.x))), _wgslsmith_clamp_vec3_u32(~max(vec3<u32>(4294967295u, global2.b.c, var_1.d.c), vec3<u32>(0u, global0.c, 4294967295u)), vec3<u32>(66012u, global2.c, 1u), ~_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, u_input.a, 4294967295u), vec3<u32>(u_input.c.x, 55896u, global2.b.c)))), abs(var_1.d.c) | u_input.c.x);
}

