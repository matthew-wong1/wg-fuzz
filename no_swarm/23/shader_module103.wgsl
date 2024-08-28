struct Struct_1 {
    a: vec3<bool>,
    b: vec3<i32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: f32,
    d: bool,
}

struct Struct_3 {
    a: u32,
    b: vec3<u32>,
    c: vec4<f32>,
    d: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
}

struct Struct_5 {
    a: vec2<i32>,
    b: Struct_3,
    c: vec3<u32>,
    d: vec4<i32>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<u32, 17> = array<u32, 17>(25516u, 25644u, 10829u, 57471u, 4294967295u, 68843u, 38225u, 4294967295u, 1u, 4294967295u, 4294967295u, 4294967295u, 69889u, 5691u, 4294967295u, 4294967295u, 0u);

var<private> global2: array<bool, 29> = array<bool, 29>(true, false, true, false, true, true, true, true, true, false, false, false, false, true, true, true, false, false, true, false, true, true, false, true, false, true, true, true, true);

var<private> global3: bool = false;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3() -> bool {
    var var_0 = vec3<i32>(~(-(u_input.e << (1u % 32u))), _wgslsmith_dot_vec2_i32(u_input.d.yy, -(~(~vec2<i32>(u_input.b.x, -1i)))), 1i);
    var_0 = u_input.d | (-vec3<i32>(0i, max(2147483647i, u_input.e), min(u_input.e, u_input.b.x)) << (vec3<u32>(max(~69268u, ~global1[_wgslsmith_index_u32(u_input.a.x, 17u)]), _wgslsmith_add_u32(u_input.c.x, 0u), 4294967295u) % vec3<u32>(32u)));
    global3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-927f, 1525f, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(17790u, 17u)], 29u)]))))), 185f)) == _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-1869f, 1861f)), _wgslsmith_f_op_f32(155f + 1558f)))))));
    let var_1 = Struct_3(_wgslsmith_mult_u32(_wgslsmith_add_u32(u_input.a.x, ~u_input.a.x << (72249u % 32u)), 28724u), _wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(u_input.c, ~vec3<u32>(47661u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c.x, 17u)], 17u)], 17u)], u_input.a.x)), max(u_input.c << (u_input.c % vec3<u32>(32u)), vec3<u32>(~2685u, global1[_wgslsmith_index_u32(~u_input.c.x, 17u)], min(61717u, 1u)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(784f)), _wgslsmith_f_op_f32(764f * -1455f)) + _wgslsmith_f_op_f32(-1028f + _wgslsmith_f_op_f32(trunc(589f)))), _wgslsmith_f_op_f32(f32(-1f) * -1181f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-1296f)))), _wgslsmith_f_op_f32(717f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(613f, 459f)))), Struct_1(vec3<bool>(true, false, global2[_wgslsmith_index_u32(~reverseBits(691u), 29u)]), ~countOneBits(u_input.d), !select(select(vec4<bool>(true, true, global2[_wgslsmith_index_u32(31857u, 29u)], global2[_wgslsmith_index_u32(41580u, 29u)]), vec4<bool>(global2[_wgslsmith_index_u32(0u, 29u)], global2[_wgslsmith_index_u32(0u, 29u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 17u)], 29u)], global2[_wgslsmith_index_u32(4294967295u, 29u)]), vec4<bool>(global2[_wgslsmith_index_u32(1u, 29u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 17u)], 29u)], global2[_wgslsmith_index_u32(17605u, 29u)], false)), !vec4<bool>(true, false, true, global2[_wgslsmith_index_u32(4294967295u, 29u)]), any(vec4<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 29u)], global2[_wgslsmith_index_u32(u_input.a.x, 29u)], true, false)))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2090f)) - _wgslsmith_f_op_f32(1000f * -1152f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.c.x + var_1.c.x) - -1000f))));
    return false;
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: Struct_4) -> Struct_2 {
    var var_0 = ~(u_input.c.xz >> (_wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(u_input.c.xy, countOneBits(arg_2.b.a)), arg_2.b.a) % vec2<u32>(32u)));
    let var_1 = !select(vec3<bool>(!(arg_0 >= arg_0), !(!arg_2.b.d), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.a, -522i, arg_1, -24711i), vec4<i32>(35246i, -1i, arg_1, arg_1)) != reverseBits(arg_1)), vec3<bool>(any(!vec4<bool>(arg_2.b.d, arg_2.b.d, arg_2.b.d, global2[_wgslsmith_index_u32(4294967295u, 29u)])), !(arg_2.b.d && global2[_wgslsmith_index_u32(4294967295u, 29u)]), func_3()), !arg_2.b.d);
    global3 = false;
    let var_2 = ~_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(~u_input.c.xy, arg_2.b.a) & arg_2.b.a.x, 21263u, global1[_wgslsmith_index_u32(firstLeadingBit(~u_input.c.x << (65380u % 32u)), 17u)]);
    let var_3 = arg_2.b;
    return Struct_2(~u_input.c.xx, _wgslsmith_f_op_vec3_f32(exp2(arg_2.b.b)), var_3.c, true);
}

fn func_4(arg_0: Struct_2) -> Struct_3 {
    let var_0 = Struct_4(_wgslsmith_mod_i32(abs(-abs(0i)), countOneBits(u_input.b.x)), arg_0);
    let var_1 = Struct_5(firstLeadingBit(vec2<i32>(~u_input.b.x, _wgslsmith_mult_i32(0i, u_input.b.x)) | vec2<i32>(select(u_input.b.x, u_input.b.x, false), var_0.a)), Struct_3(25226u, reverseBits(~(vec3<u32>(0u, 1u, 79618u) >> (u_input.a.wxx % vec3<u32>(32u)))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(floor(arg_0.b.x)), _wgslsmith_f_op_f32(-var_0.b.c), _wgslsmith_f_op_f32(-var_0.b.c), var_0.b.b.x))), Struct_1(!(!vec3<bool>(arg_0.d, true, true)), abs(vec3<i32>(var_0.a, var_0.a, var_0.a)), vec4<bool>(var_0.a >= 0i, var_0.b.b.x >= -827f, true, any(vec3<bool>(var_0.b.d, false, var_0.b.d))))), u_input.a.yxy | vec3<u32>(79465u, ~abs(var_0.b.a.x), 4294967295u), ~max(abs(vec4<i32>(u_input.d.x, -1i, var_0.a, -8491i)), -firstLeadingBit(vec4<i32>(27609i, 23286i, u_input.b.x, 7507i))), select(!vec4<bool>(!var_0.b.d, var_0.b.d, true, !arg_0.d), !vec4<bool>(false, true, u_input.c.x > var_0.b.a.x, any(vec2<bool>(arg_0.d, arg_0.d))), false));
    let var_2 = vec4<bool>(!(reverseBits(~4294967295u) > arg_0.a.x), !select(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a.x, 1617u), 29u)] && true, true, false), true, !(!global2[_wgslsmith_index_u32(var_1.c.x, 29u)]));
    return var_1.b;
}

fn func_1(arg_0: Struct_3, arg_1: Struct_3) -> u32 {
    global1 = array<u32, 17>();
    global2 = array<bool, 29>();
    let var_0 = func_4(func_2(-1174f, -u_input.d.x, Struct_4(23337i, Struct_2(_wgslsmith_mod_vec2_u32(arg_0.b.yz, arg_1.b.zz), arg_0.c.zzz, _wgslsmith_f_op_f32(min(arg_1.c.x, -1429f)), arg_0.d.c.x))));
    var var_1 = Struct_1(vec3<bool>(true, u_input.b.x <= arg_1.d.b.x, true || all(!arg_0.d.c.xzy)), _wgslsmith_div_vec3_i32(select(~vec3<i32>(arg_1.d.b.x, var_0.d.b.x, 0i), vec3<i32>(-36726i, -14556i | arg_0.d.b.x, u_input.d.x), vec3<bool>(global2[_wgslsmith_index_u32(34886u, 29u)], true, true)), ~_wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, arg_1.d.b.x, u_input.d.x), vec3<i32>(arg_0.d.b.x, -1i, 1i)), ~vec3<i32>(arg_0.d.b.x, arg_0.d.b.x, 2147483647i))), func_4(func_2(var_0.c.x, firstTrailingBit(-arg_1.d.b.x), Struct_4(_wgslsmith_add_i32(21777i, u_input.e), Struct_2(arg_0.b.xz, arg_0.c.wzx, arg_1.c.x, var_0.d.a.x)))).d.c);
    return 53876u >> (_wgslsmith_dot_vec4_u32(vec4<u32>(func_2(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -471i, Struct_4(1i, Struct_2(u_input.a.zx, arg_1.c.xzw, arg_1.c.x, var_1.c.x))).a.x, 1u, arg_0.b.x | var_0.b.x, 28842u), vec4<u32>(var_0.a, ~arg_0.b.x, 1u, 11143u)) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(vec2<u32>(_wgslsmith_div_u32(_wgslsmith_div_u32(1u, firstTrailingBit(28944u)), ~0u >> (global1[_wgslsmith_index_u32(func_1(Struct_3(u_input.c.x, vec3<u32>(4294967295u, global1[_wgslsmith_index_u32(u_input.a.x, 17u)], u_input.a.x), vec4<f32>(-648f, 642f, 1047f, 1455f), Struct_1(vec3<bool>(false, global2[_wgslsmith_index_u32(u_input.c.x, 29u)], false), u_input.d, vec4<bool>(true, true, true, global2[_wgslsmith_index_u32(15709u, 29u)]))), Struct_3(4294967295u, u_input.a.xzx, vec4<f32>(129f, 845f, 475f, -743f), Struct_1(vec3<bool>(global2[_wgslsmith_index_u32(43679u, 29u)], global2[_wgslsmith_index_u32(9385u, 29u)], false), u_input.d, vec4<bool>(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c.x, 17u)], 29u)], global2[_wgslsmith_index_u32(0u, 29u)], false, false)))), 17u)] % 32u)), 24970u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(947f, _wgslsmith_f_op_f32(f32(-1f) * -603f), _wgslsmith_f_op_f32(-1210f + -1043f))) + vec3<f32>(-313f, 333f, func_2(_wgslsmith_div_f32(-1000f, -444f), _wgslsmith_clamp_i32(46742i, u_input.e, u_input.e), Struct_4(-4968i, Struct_2(vec2<u32>(global1[_wgslsmith_index_u32(0u, 17u)], u_input.a.x), vec3<f32>(1074f, 1238f, 608f), 472f, false))).b.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(2312f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1802f, -929f)))))), true);
    var var_1 = vec4<i32>(_wgslsmith_div_i32(_wgslsmith_add_i32(-2147483647i, -func_4(Struct_2(vec2<u32>(0u, var_0.a.x), var_0.b, var_0.c, false)).d.b.x), ~u_input.b.x), _wgslsmith_add_i32(_wgslsmith_mult_i32(_wgslsmith_add_i32(-1i, u_input.d.x), 6259i), i32(-1i) * -func_4(var_0).d.b.x), 1i, -abs(_wgslsmith_clamp_i32(u_input.d.x, u_input.e, _wgslsmith_sub_i32(u_input.e, 0i))));
    let var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(638f - _wgslsmith_f_op_f32(select(-1000f, var_0.b.x, false))) + -2319f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) - var_0.b.x)))));
    global1 = array<u32, 17>();
    var var_3 = _wgslsmith_sub_vec2_u32(min(vec2<u32>(u_input.c.x, ~var_0.a.x) & var_0.a, var_0.a), _wgslsmith_add_vec2_u32(u_input.a.zx << ((abs(var_0.a) >> (~u_input.a.wx % vec2<u32>(32u))) % vec2<u32>(32u)), var_0.a));
    let x = u_input.a;
    s_output = StorageBuffer(select(var_1.wx, ~vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(15944i, var_1.x), vec2<i32>(-2147483647i, -32703i)), var_1.x), all(!(!vec4<bool>(global2[_wgslsmith_index_u32(var_0.a.x, 29u)], false, var_0.d, true)))), func_1(Struct_3(func_4(func_2(-1137f, var_1.x, Struct_4(u_input.d.x, Struct_2(vec2<u32>(0u, 38586u), var_0.b, var_2, true)))).a, _wgslsmith_div_vec3_u32(vec3<u32>(0u, u_input.a.x, var_0.a.x), u_input.a.wzz) >> (vec3<u32>(global1[_wgslsmith_index_u32(4294967295u, 17u)], 28505u, var_3.x) % vec3<u32>(32u)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(809f, -342f, 1000f, 131f), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.x, var_2, var_2, var_0.b.x) * vec4<f32>(-377f, 580f, var_0.c, var_0.c)))), Struct_1(select(vec3<bool>(false, global2[_wgslsmith_index_u32(84743u, 29u)], false), vec3<bool>(var_0.d, false, var_0.d), false), ~vec3<i32>(-1i, var_1.x, var_1.x), vec4<bool>(true, var_0.d, false, false))), func_4(Struct_2(vec2<u32>(9118u, 14293u), var_0.b, _wgslsmith_f_op_f32(var_0.c - 753f), true))));
}

