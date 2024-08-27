struct Struct_1 {
    a: vec2<bool>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec2<f32>,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<u32>,
}

struct Struct_5 {
    a: f32,
    b: i32,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: i32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 5>;

var<private> global1: Struct_1;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> vec2<bool> {
    global1 = Struct_1(select(!select(vec2<bool>(false, global1.a.x), global1.a, all(vec4<bool>(global1.a.x, false, true, global1.a.x))), select(vec2<bool>(true, true), global1.a, vec2<bool>(!global1.a.x, global1.a.x)), !(!global1.a)), abs(-vec3<i32>(global1.b.x, -1i, 12276i)) & vec3<i32>(2147483647i, countOneBits(~23259i), max(-12565i, -12958i)));
    global1 = Struct_1(select(!vec2<bool>(global1.a.x, global1.a.x), global1.a, global1.a.x), vec3<i32>(countOneBits(1i), u_input.a.x ^ abs(17929i), firstTrailingBit(~8340i >> (firstLeadingBit(u_input.b.x) % 32u))));
    let var_0 = global1.b.x;
    var var_1 = Struct_2(u_input.b, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-534f + 272f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1592f)), 222f)));
    let var_2 = reverseBits(~(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, var_1.a.x, var_1.a.x), u_input.b.yyz))));
    return !select(vec2<bool>(global1.a.x, true), global1.a, !select(vec2<bool>(false, global1.a.x), !global1.a, !global1.a));
}

fn func_2(arg_0: f32) -> Struct_4 {
    global0 = array<vec3<bool>, 5>();
    let var_0 = Struct_1(global1.a, vec3<i32>(global1.b.x, ~global1.b.x, ~(~(-1i))));
    global0 = array<vec3<bool>, 5>();
    global0 = array<vec3<bool>, 5>();
    global1 = Struct_1(func_3(), _wgslsmith_div_vec3_i32(u_input.a.xzy, vec3<i32>(0i, _wgslsmith_sub_i32(~0i, firstLeadingBit(1i)), abs(~u_input.c))));
    return Struct_4(Struct_3(global1.a), firstTrailingBit(min(u_input.b.yxz >> (~vec3<u32>(u_input.b.x, 0u, 4294967295u) % vec3<u32>(32u)), vec3<u32>(u_input.b.x, 55671u, u_input.b.x) | _wgslsmith_sub_vec3_u32(u_input.b.xxy, vec3<u32>(150588u, u_input.b.x, 1u)))));
}

fn func_4(arg_0: bool, arg_1: Struct_4, arg_2: vec4<bool>) -> Struct_5 {
    var var_0 = abs(u_input.b.x);
    var_0 = arg_1.b.x;
    var var_1 = !(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(-1504f)))) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-977f * -2828f)) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(353f, 1697f))));
    global1 = Struct_1(select(!arg_2.wx, arg_1.a.a, true), -_wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.c, 87i, global1.b.x) & vec3<i32>(1i, global1.b.x, global1.b.x), vec3<i32>(u_input.d, u_input.a.x, 0i), u_input.a.xzx << (arg_1.b % vec3<u32>(32u))), vec3<i32>(_wgslsmith_sub_i32(global1.b.x, global1.b.x), _wgslsmith_div_i32(u_input.c, 21930i), countOneBits(43640i))));
    var_0 = 0u;
    return Struct_5(306f, global1.b.x, arg_2);
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_5, arg_2: Struct_3, arg_3: Struct_2) -> Struct_1 {
    global1 = Struct_1(arg_2.a, abs(vec3<i32>(select(1i, -2147483647i, true), i32(-1i) * -u_input.a.x, arg_1.b)));
    global1 = Struct_1(func_3(), u_input.a.yxz);
    let var_0 = arg_2;
    return Struct_1(!vec2<bool>(arg_1.c.x, var_0.a.x), abs(u_input.a.yyw) ^ ~_wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(1i, arg_1.b, -1i), global1.b), u_input.a.wzz << (arg_3.a.zxw % vec3<u32>(32u))));
}

fn func_1(arg_0: u32, arg_1: Struct_3, arg_2: Struct_4) -> vec3<u32> {
    var var_0 = func_5(select(!vec2<bool>(all(vec2<bool>(true, true)), !global1.a.x), select(!vec2<bool>(true, arg_1.a.x), vec2<bool>(true, !arg_1.a.x), !arg_2.a.a), true), func_4(all(arg_2.a.a), func_2(_wgslsmith_f_op_f32(-1317f * -398f)), vec4<bool>(arg_2.a.a.x, any(vec3<bool>(arg_1.a.x, arg_1.a.x, arg_1.a.x)), func_3().x && (true || arg_2.a.a.x), all(vec2<bool>(arg_2.a.a.x, true)))), arg_2.a, Struct_2(vec4<u32>(arg_0, arg_2.b.x, arg_2.b.x, 15637u) ^ vec4<u32>(u_input.b.x, ~4294967295u, 48780u, ~arg_0), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-186f, -964f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2260f, 1719f) - vec2<f32>(965f, -1196f)) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1114f, 1179f), vec2<f32>(-1927f, -1340f)))), true))));
    let var_1 = var_0.b.x;
    global1 = Struct_1(select(!global1.a, arg_2.a.a, !arg_1.a), -_wgslsmith_mod_vec3_i32(firstTrailingBit(vec3<i32>(global1.b.x, -2147483647i, var_0.b.x)) ^ select(global1.b, u_input.a.xxy, global0[_wgslsmith_index_u32(arg_2.b.x, 5u)]), vec3<i32>(~0i, 0i, _wgslsmith_dot_vec3_i32(u_input.a.ywy, var_0.b))));
    var var_2 = Struct_4(arg_1, ~_wgslsmith_clamp_vec3_u32(~vec3<u32>(arg_2.b.x, 4294967295u, u_input.b.x), arg_2.b, u_input.b.zxz));
    var_2 = Struct_4(arg_2.a, vec3<u32>(~_wgslsmith_add_u32(arg_0, ~0u), 0u, _wgslsmith_mult_u32(~_wgslsmith_sub_u32(1u, arg_2.b.x), _wgslsmith_add_u32(var_2.b.x, arg_0))));
    return min(vec3<u32>(_wgslsmith_sub_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.b.x, 1u, 0u, 1u), u_input.b), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, u_input.b.x, 53748u, 5889u), ~vec4<u32>(41155u, u_input.b.x, arg_0, arg_0))), var_2.b.x, arg_0 | arg_2.b.x), u_input.b.zwz);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(global1.a);
    global0 = array<vec3<bool>, 5>();
    let var_1 = global1.a;
    global0 = array<vec3<bool>, 5>();
    var var_2 = Struct_4(var_0, func_1(~(~1u), Struct_3(!global1.a), Struct_4(var_0, u_input.b.zxy)));
    global1 = func_5(!(!(!select(vec2<bool>(var_1.x, global1.a.x), vec2<bool>(true, true), global1.a))), func_4(all(func_3()), Struct_4(func_2(-491f).a, vec3<u32>(2383u, ~4294967295u, var_2.b.x & 1u)), func_4(max(u_input.b.x, u_input.b.x) <= _wgslsmith_add_u32(var_2.b.x, var_2.b.x), Struct_4(Struct_3(vec2<bool>(true, var_0.a.x)), vec3<u32>(86513u, 39286u, 59279u)), vec4<bool>(global1.a.x, true, !var_0.a.x, false)).c), Struct_3(vec2<bool>(u_input.b.x >= (u_input.b.x >> (u_input.b.x % 32u)), ~u_input.b.x == 92057u)), Struct_2(u_input.b & abs(~u_input.b), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-279f, 905f)) + _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(279f, -261f)))) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-558f, 441f)))))));
    let var_3 = u_input.a;
    let var_4 = func_5(!global1.a, func_4(func_2(_wgslsmith_f_op_f32(max(func_4(var_0.a.x, Struct_4(var_2.a, var_2.b), vec4<bool>(false, global1.a.x, true, true)).a, _wgslsmith_f_op_f32(1210f - -1000f)))).a.a.x, func_2(_wgslsmith_f_op_f32(-1638f + -1031f)), !vec4<bool>(global1.a.x, true, global1.a.x, true)), Struct_3(!(!select(global1.a, var_2.a.a, var_2.a.a))), Struct_2(abs(u_input.b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-251f, -1346f))))));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a.wz, vec3<u32>(var_2.b.x, _wgslsmith_sub_u32(~33934u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_2.b.x, 65722u, var_2.b.x), u_input.b)) ^ ~_wgslsmith_div_u32(u_input.b.x, u_input.b.x), max(~u_input.b.x, var_2.b.x)), 20527i, var_3);
}

