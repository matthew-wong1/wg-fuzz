struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: u32,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: bool,
    b: f32,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: f32,
    d: vec2<i32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<f32, 14> = array<f32, 14>(365f, 364f, -780f, -2521f, -1734f, -923f, -367f, -1228f, -496f, -1723f, -1857f, -1713f, 1108f, 140f);

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: Struct_4, arg_1: vec2<bool>) -> Struct_1 {
    global0 = !select(arg_0.c.a.yyz, !select(arg_0.c.a.zzw, !vec3<bool>(arg_0.c.a.x, arg_1.x, true), true), arg_0.c.a.wzx);
    let var_0 = Struct_1(-243f);
    var var_1 = _wgslsmith_mult_i32(-1i, ~(~0i));
    var var_2 = countOneBits(vec2<i32>(2147483647i, _wgslsmith_dot_vec4_i32(~_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, 21194i, 53483i, u_input.b), vec4<i32>(u_input.b, -17295i, u_input.b, u_input.b)), _wgslsmith_mult_vec4_i32(vec4<i32>(28580i, u_input.b, 0i, u_input.b), max(vec4<i32>(u_input.b, u_input.b, 0i, -591i), vec4<i32>(u_input.b, -2147483647i, 2147483647i, -41623i))))));
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b)) + var_0.a) - arg_0.b), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~27274u | u_input.a.x, _wgslsmith_add_u32(0u, firstTrailingBit(_wgslsmith_div_u32(0u, u_input.a.x)))), 14u)]);
    return Struct_1(_wgslsmith_f_op_f32(trunc(436f)));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: vec4<bool>, arg_3: bool) -> i32 {
    let var_0 = Struct_3(vec4<bool>(all(global0.zy), arg_2.x, all(select(arg_2, vec4<bool>(arg_2.x, true, true, arg_2.x), global0.x)), !(!any(arg_2))));
    let var_1 = var_0;
    global0 = select(select(vec3<bool>(false, ~u_input.d != reverseBits(0u), _wgslsmith_clamp_u32(4294967295u, arg_0.c, 0u) > _wgslsmith_dot_vec3_u32(arg_1.xzw, vec3<u32>(120027u, arg_0.c, 1u))), select(var_0.a.zxy, vec3<bool>(false, global0.x | arg_2.x, true), _wgslsmith_f_op_f32(216f + arg_0.a.a) <= 1000f), arg_2.wwy), select(!arg_2.xxx, vec3<bool>(arg_3, arg_2.x, true), !select(select(vec3<bool>(var_1.a.x, false, false), var_0.a.xzz, vec3<bool>(true, arg_3, arg_2.x)), arg_2.zwx, var_1.a.xxw)), u_input.b != reverseBits(_wgslsmith_mod_i32(u_input.b ^ -2147483647i, -22218i)));
    var var_2 = arg_3;
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.a, _wgslsmith_f_op_f32(-arg_0.a.a), 2138f, 488f))));
    return ~max(firstLeadingBit(u_input.b), 0i);
}

fn func_1() -> vec4<f32> {
    global1 = array<f32, 14>();
    let var_0 = vec3<i32>(func_3(Struct_2(func_2(Struct_4(global0.x, global1[_wgslsmith_index_u32(u_input.a.x, 14u)], Struct_3(vec4<bool>(global0.x, true, true, true))), select(global0.yx, vec2<bool>(true, true), global0.x)), ~(vec3<u32>(0u, 25483u, u_input.a.x) << (vec3<u32>(u_input.a.x, u_input.a.x, 103315u) % vec3<u32>(32u))), u_input.a.x), ~_wgslsmith_sub_vec4_u32(vec4<u32>(0u, u_input.a.x, 18216u, 48546u) & vec4<u32>(1u, 4294967295u, u_input.a.x, u_input.d), ~vec4<u32>(4294967295u, u_input.a.x, u_input.d, 4294967295u)), !vec4<bool>(!global0.x, global0.x, global0.x || true, true), true), 2147483647i, _wgslsmith_sub_i32(-_wgslsmith_add_i32(u_input.b, u_input.b & u_input.b), ~(2147483647i ^ (u_input.b | -10938i))));
    var var_1 = global1[_wgslsmith_index_u32(u_input.d, 14u)];
    var var_2 = func_2(Struct_4(global0.x, _wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c.x, u_input.d, 117814u), vec3<u32>(u_input.c.x, 34161u, 0u)), firstLeadingBit(vec3<u32>(58729u, 16061u, u_input.d))), 14u)])), Struct_3(select(vec4<bool>(global0.x, true, global0.x, global0.x), !vec4<bool>(global0.x, false, true, false), false))), select(global0.yz, global0.zy, global0.x));
    var var_3 = Struct_3(select(!(!(!vec4<bool>(global0.x, global0.x, true, global0.x))), select(select(select(vec4<bool>(false, global0.x, true, global0.x), vec4<bool>(global0.x, global0.x, false, global0.x), vec4<bool>(global0.x, true, global0.x, global0.x)), select(vec4<bool>(false, global0.x, global0.x, global0.x), vec4<bool>(false, global0.x, false, global0.x), true), !vec4<bool>(global0.x, global0.x, global0.x, global0.x)), select(!vec4<bool>(false, false, false, global0.x), !vec4<bool>(true, global0.x, true, true), global0.x), 51046i < u_input.b), any(!(!vec3<bool>(global0.x, false, true)))));
    return vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 14u)])))), global1[_wgslsmith_index_u32(u_input.a.x, 14u)], 1592f, global1[_wgslsmith_index_u32(4104u, 14u)]);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 14>();
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1740f, global1[_wgslsmith_index_u32(4294967295u, 14u)], -395f, -2732f))), _wgslsmith_f_op_vec4_f32(func_1()), !(global1[_wgslsmith_index_u32(1u, 14u)] != _wgslsmith_f_op_f32(trunc(1222f))))) + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(486f, global1[_wgslsmith_index_u32(4294967295u, 14u)])))) + 815f), func_2(Struct_4(true, _wgslsmith_div_f32(395f, 255f), Struct_3(vec4<bool>(global0.x, global0.x, global0.x, global0.x))), !(!global0.zy)).a, _wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(u_input.c.x, 14u)], _wgslsmith_f_op_vec4_f32(func_1()).x, true)), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~4294967295u, 14u)] - global1[_wgslsmith_index_u32(min(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.c.x, 49909u), vec3<u32>(0u, u_input.c.x, u_input.a.x)), 1u), 14u)])));
    global1 = array<f32, 14>();
    let var_1 = ~(vec2<u32>(_wgslsmith_div_u32(u_input.d, ~u_input.a.x), u_input.c.x) | u_input.c);
    var var_2 = true;
    let var_3 = !vec3<bool>(!all(vec4<bool>(false, global0.x, false, global0.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_1.x, 14u)]), 1752f) < var_0.x, global0.x);
    var var_4 = countOneBits(u_input.c);
    var var_5 = _wgslsmith_f_op_f32(-1190f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_4.x, 14u)]), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 14u)] + -222f)))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.c.x, 14u)])), var_0.x)));
    var_2 = !(!global0.x);
    let x = u_input.a;
    s_output = StorageBuffer(-vec3<i32>(min(-u_input.b, u_input.b), 0i, reverseBits(~15439i)), select(_wgslsmith_mult_vec4_i32(-abs(vec4<i32>(u_input.b, u_input.b, u_input.b, -49471i)), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.b, -1i), vec4<i32>(u_input.b, u_input.b, 23556i, u_input.b) ^ vec4<i32>(-6813i, -2147483647i, u_input.b, -88758i))), reverseBits(_wgslsmith_mult_vec4_i32(vec4<i32>(18152i, u_input.b, u_input.b, 24581i), vec4<i32>(1i, 34312i, -64776i, -25249i))), (_wgslsmith_f_op_f32(max(var_0.x, 676f)) >= 1017f) | (u_input.c.x < 0u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 14u)]), global1[_wgslsmith_index_u32(var_4.x, 14u)]))))), -abs(vec2<i32>(1i, 1i)), vec3<f32>(-1012f, _wgslsmith_f_op_f32(f32(-1f) * -2036f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * var_0.x)));
}

