struct Struct_1 {
    a: vec2<bool>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: bool,
    b: vec2<f32>,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(1149f, -1000f, -1605f, -721f);

var<private> global1: array<vec2<bool>, 15>;

var<private> global2: array<Struct_3, 30>;

var<private> global3: array<f32, 7>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: f32) -> bool {
    var var_0 = Struct_2(true, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(global0.yy)) * _wgslsmith_f_op_vec2_f32(-global0.xx)), global0.wx, any(vec2<bool>(true, true)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-994f, arg_0)))), Struct_1(vec2<bool>(!select(true, false, true), true), global0.zw), select(false, any(vec3<bool>(false, true, false)), !(!select(true, true, true))));
    var var_1 = vec2<i32>(1i, ~u_input.a.x);
    return any(global1[_wgslsmith_index_u32(59578u, 15u)]);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3) -> i32 {
    global3 = array<f32, 7>();
    var var_0 = arg_1.a.c;
    let var_1 = !(!(!select(vec2<bool>(false, false), select(vec2<bool>(false, false), global1[_wgslsmith_index_u32(109668u, 15u)], arg_1.a.a), !vec2<bool>(arg_1.a.a, var_0.a.x))));
    global3 = array<f32, 7>();
    let var_2 = select(!var_1, vec2<bool>(!(select(u_input.a.x, u_input.a.x, var_1.x) == 38175i), func_3(828f)), arg_0.a.c.a);
    return u_input.a.x;
}

fn func_2(arg_0: vec2<i32>) -> u32 {
    global3 = array<f32, 7>();
    global3 = array<f32, 7>();
    global3 = array<f32, 7>();
    var var_0 = Struct_4(func_4(global2[_wgslsmith_index_u32(~46677u, 30u)], Struct_3(Struct_2(true, _wgslsmith_div_vec2_f32(vec2<f32>(1071f, global3[_wgslsmith_index_u32(2247u, 7u)]), global0.zy), Struct_1(global1[_wgslsmith_index_u32(23719u, 15u)], vec2<f32>(global0.x, global3[_wgslsmith_index_u32(69483u, 7u)])), func_3(-2171f)))), Struct_2(true, vec2<f32>(176f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), Struct_1(vec2<bool>(true, true), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1630f, global3[_wgslsmith_index_u32(4294967295u, 7u)])))), any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true))), Struct_3(Struct_2(any(!global1[_wgslsmith_index_u32(17081u, 15u)]), vec2<f32>(_wgslsmith_f_op_f32(exp2(global3[_wgslsmith_index_u32(4294967295u, 7u)])), _wgslsmith_f_op_f32(trunc(global0.x))), Struct_1(global1[_wgslsmith_index_u32(0u, 15u)], _wgslsmith_f_op_vec2_f32(global0.zx + global0.yx)), func_3(-611f) == any(global1[_wgslsmith_index_u32(31357u, 15u)]))));
    return min(~(~countOneBits(29588u)), 1u);
}

fn func_5(arg_0: u32, arg_1: Struct_4) -> Struct_2 {
    let var_0 = _wgslsmith_clamp_vec4_i32(select(abs(~min(vec4<i32>(14865i, -2147483647i, u_input.a.x, u_input.a.x), vec4<i32>(-14977i, arg_1.a, 0i, u_input.a.x))), -(~vec4<i32>(54195i, arg_1.a, -37519i, arg_1.a)), !vec4<bool>(false, any(global1[_wgslsmith_index_u32(1u, 15u)]), select(arg_1.b.c.a.x, arg_1.b.d, false), !arg_1.b.a)), firstLeadingBit(-vec4<i32>(u_input.a.x, u_input.a.x, arg_1.a, -1i) ^ _wgslsmith_add_vec4_i32(firstTrailingBit(vec4<i32>(arg_1.a, u_input.a.x, u_input.a.x, 1i)), -vec4<i32>(-1i, u_input.a.x, u_input.a.x, 0i))), ~select(_wgslsmith_add_vec4_i32(~vec4<i32>(0i, -13478i, arg_1.a, arg_1.a), firstLeadingBit(vec4<i32>(-2147483647i, -12855i, 1i, arg_1.a))), max(~vec4<i32>(u_input.a.x, 1i, u_input.a.x, u_input.a.x), _wgslsmith_mult_vec4_i32(vec4<i32>(arg_1.a, 14927i, u_input.a.x, arg_1.a), vec4<i32>(-50986i, -1i, 2147483647i, arg_1.a))), !(!vec4<bool>(true, arg_1.b.c.a.x, arg_1.c.a.d, arg_1.b.d))));
    var var_1 = Struct_2(arg_1.b.c.a.x, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -288f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_0, 36839u), 7u)] + 1263f), global3[_wgslsmith_index_u32(~countOneBits(20808u), 7u)]))), arg_1.c.a.c, select(true, any(vec3<bool>(arg_1.c.a.d, arg_1.b.d, false)) & ((u_input.a.x | 41787i) < arg_1.a), false));
    var var_2 = global0.xwz;
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global3[_wgslsmith_index_u32(0u, 7u)], global3[_wgslsmith_index_u32(arg_0, 7u)])) * arg_1.b.c.b.x) * _wgslsmith_f_op_f32(f32(-1f) * -265f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_1.c.b.x)), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_2.x, var_1.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))))), var_2.x);
    var var_4 = arg_1.c;
    return arg_1.b;
}

fn func_1() -> f32 {
    let var_0 = select(select(vec2<u32>(0u << (0u % 32u), ~151031u), ~(~firstTrailingBit(vec2<u32>(64738u, 0u))), (~9003u < select(90498u, 0u, true)) || all(vec4<bool>(true, true, true, true))), firstTrailingBit(vec2<u32>(1u, 1u)), global1[_wgslsmith_index_u32(0u, 15u)]);
    var var_1 = func_5(select(_wgslsmith_sub_u32(_wgslsmith_mult_u32(func_2(u_input.a.yz), var_0.x), _wgslsmith_clamp_u32(~var_0.x, 62470u, 9734u)), 1u, false), Struct_4(7305i, Struct_2(all(vec3<bool>(false, true, false)), global0.wz, Struct_1(!global1[_wgslsmith_index_u32(0u, 15u)], _wgslsmith_div_vec2_f32(vec2<f32>(global0.x, global0.x), vec2<f32>(global0.x, global3[_wgslsmith_index_u32(var_0.x, 7u)]))), all(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), false))), Struct_3(Struct_2(true, _wgslsmith_div_vec2_f32(global0.zw, vec2<f32>(global3[_wgslsmith_index_u32(1u, 7u)], 357f)), Struct_1(vec2<bool>(true, false), global0.xw), any(vec3<bool>(true, true, false))))));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1091f, var_1.c.b.x, -1729f, -1900f), vec4<f32>(-104f, global0.x, 596f, 501f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(193f, 1000f, global0.x, global3[_wgslsmith_index_u32(var_0.x, 7u)]) * vec4<f32>(1418f, -254f, -1530f, var_1.c.b.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, var_1.b.x, global0.x, global0.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-351f, global3[_wgslsmith_index_u32(var_0.x, 7u)], -1000f, global0.x))))));
    var_1 = func_5(var_0.x, Struct_4(u_input.a.x, Struct_2(false, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global3[_wgslsmith_index_u32(var_0.x, 7u)], -636f))) + vec2<f32>(1000f, 380f)), Struct_1(func_5(0u, Struct_4(u_input.a.x, Struct_2(var_1.d, vec2<f32>(-1099f, global0.x), Struct_1(var_1.c.a, var_1.b), false), global2[_wgslsmith_index_u32(var_0.x, 30u)])).c.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b.x, global3[_wgslsmith_index_u32(var_0.x, 7u)]))), true), global2[_wgslsmith_index_u32(1u, 30u)]));
    let var_2 = Struct_4(_wgslsmith_dot_vec2_i32(u_input.a.zz, ~(~vec2<i32>(u_input.a.x, 1i))), Struct_2(true, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(571f, global0.x), vec2<f32>(global0.x, var_1.b.x))))), func_5(_wgslsmith_mult_u32(~var_0.x, var_0.x), Struct_4(_wgslsmith_mult_i32(u_input.a.x, 19525i), func_5(var_0.x, Struct_4(u_input.a.x, Struct_2(true, global0.xx, Struct_1(vec2<bool>(true, true), vec2<f32>(-316f, var_1.b.x)), var_1.c.a.x), global2[_wgslsmith_index_u32(var_0.x, 30u)])), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(45813u, 62516u, var_0.x), vec3<u32>(var_0.x, var_0.x, 17719u)), 30u)])).c, true), Struct_3(func_5(~var_0.x << (_wgslsmith_add_u32(32088u, 61074u) % 32u), Struct_4(_wgslsmith_sub_i32(u_input.a.x, u_input.a.x), func_5(7078u, Struct_4(u_input.a.x, Struct_2(var_1.a, global0.wx, var_1.c, true), global2[_wgslsmith_index_u32(20031u, 30u)])), global2[_wgslsmith_index_u32(var_0.x, 30u)]))));
    return var_2.c.a.c.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec4<f32>(_wgslsmith_f_op_f32(func_1()), 776f, _wgslsmith_div_f32(global3[_wgslsmith_index_u32(~(~0u), 7u)], _wgslsmith_f_op_f32(round(743f))), _wgslsmith_f_op_f32(global0.x + 171f));
    let var_0 = _wgslsmith_dot_vec2_u32(vec2<u32>(~4495u, 6859u), vec2<u32>(1u, 1u)) >> (firstLeadingBit(_wgslsmith_add_u32(~(~4294967295u), ~0u ^ select(2852u, 4294967295u, false))) % 32u);
    let var_1 = reverseBits(max(4294967295u, ~(~var_0 << (~var_0 % 32u))));
    global1 = array<vec2<bool>, 15>();
    var var_2 = global2[_wgslsmith_index_u32(1u, 30u)];
    var var_3 = var_2.a;
    global3 = array<f32, 7>();
    var var_4 = !vec3<bool>((1u & var_1) > (reverseBits(var_1) & ~1u), false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x + var_3.b.x) * _wgslsmith_f_op_f32(exp2(var_2.a.b.x))) != 1000f);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(~reverseBits(vec4<u32>(var_0, 49872u, var_1, 23229u))), ~vec3<u32>(var_1, 51767u, var_0 | ~var_1));
}

