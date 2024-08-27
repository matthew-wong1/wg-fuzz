struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: vec3<i32>,
    d: vec2<bool>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: u32,
    b: vec4<bool>,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<bool>,
    d: i32,
    e: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, true, true, false);

var<private> global1: array<i32, 9>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: i32, arg_1: vec3<f32>, arg_2: vec2<f32>) -> bool {
    global1 = array<i32, 9>();
    let var_0 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(473f))), _wgslsmith_f_op_f32(-793f + -1425f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1012f - 361f) + _wgslsmith_f_op_f32(round(arg_2.x))), arg_2.x), 1106f)));
    let var_1 = Struct_5(Struct_1(u_input.a.xx, _wgslsmith_f_op_f32(select(var_0.x, _wgslsmith_f_op_f32(floor(-350f)), true)), ~(~firstTrailingBit(vec3<i32>(0i, 45594i, -39899i))), select(select(!vec2<bool>(false, global0.x), global0.zz, false), vec2<bool>(global0.x & global0.x, true), u_input.a.x <= ~0u), select(global0.wx, !global0.yy, select(select(vec2<bool>(false, false), global0.yw, global0.wz), global0.xy, any(vec4<bool>(true, global0.x, false, true))))), Struct_1(_wgslsmith_mult_vec2_u32(~(vec2<u32>(5439u, u_input.a.x) ^ u_input.a.xy), vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.a.yz, u_input.a.yz), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(u_input.a.x, 0u)))), var_0.x, max(select(vec3<i32>(arg_0, global1[_wgslsmith_index_u32(u_input.a.x, 9u)], 15652i) << (u_input.a % vec3<u32>(32u)), ~vec3<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 9u)], 0i, arg_0), select(global0.x, global0.x, global0.x)), -firstTrailingBit(vec3<i32>(arg_0, 2147483647i, arg_0))), select(!(!global0.zw), vec2<bool>(false, true), any(global0.yz)), !(!select(vec2<bool>(global0.x, global0.x), global0.wz, global0.zy))), global0.xx, _wgslsmith_mult_i32(u_input.c, 1i) | global1[_wgslsmith_index_u32(abs(u_input.a.x), 9u)], !any(!global0.xxw) & all(global0.zzy));
    let var_2 = -_wgslsmith_mult_i32(reverseBits(global1[_wgslsmith_index_u32(4294967295u, 9u)]), -select(max(-58676i, u_input.b), arg_0, var_1.a.c.x != global1[_wgslsmith_index_u32(0u, 9u)]));
    global1 = array<i32, 9>();
    return all(vec4<bool>(!any(select(vec4<bool>(var_1.e, true, var_1.a.e.x, var_1.a.d.x), vec4<bool>(var_1.a.d.x, false, var_1.a.e.x, var_1.b.d.x), vec4<bool>(false, false, var_1.c.x, false))), true, global0.x & !(var_1.a.c.x != -34553i), global0.x));
}

fn func_2(arg_0: Struct_4, arg_1: vec3<i32>, arg_2: u32) -> i32 {
    global1 = array<i32, 9>();
    global0 = !(!vec4<bool>(func_3(0i, vec3<f32>(500f, -1515f, 1477f), _wgslsmith_div_vec2_f32(vec2<f32>(-388f, -769f), vec2<f32>(-1000f, 727f))), true, select(arg_2, arg_2, global0.x) <= (23760u ^ u_input.a.x), !global0.x));
    var var_0 = !global0.wz;
    let var_1 = false;
    return abs(countOneBits(1i));
}

fn func_4(arg_0: u32, arg_1: vec3<f32>, arg_2: vec4<i32>) -> Struct_4 {
    global1 = array<i32, 9>();
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1.x)))))), _wgslsmith_f_op_f32(max(-994f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(614f + -1511f) * _wgslsmith_f_op_f32(-arg_1.x)))))));
    let var_1 = u_input.a.zz;
    let var_2 = Struct_4(vec3<i32>(-(i32(-1i) * -16317i), i32(-1i) * -global1[_wgslsmith_index_u32(var_1.x, 9u)], -11315i) ^ _wgslsmith_div_vec3_i32(arg_2.xxx, ~reverseBits(arg_2.xww)));
    var var_3 = Struct_2(~max(firstLeadingBit(48537u), firstLeadingBit(1u)), vec4<bool>(!global0.x, !global0.x != all(vec4<bool>(global0.x, false, true, global0.x)), false, any(!(!vec4<bool>(false, global0.x, global0.x, global0.x)))), countOneBits(-func_2(Struct_4(vec3<i32>(arg_2.x, var_2.a.x, u_input.c)), arg_2.xyw, ~1u)), Struct_1(~abs(vec2<u32>(arg_0, var_1.x)) & max(u_input.a.yz & var_1, reverseBits(var_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-257f - _wgslsmith_f_op_f32(trunc(arg_1.x)))), select(var_2.a, _wgslsmith_mult_vec3_i32(-vec3<i32>(-29129i, u_input.c, var_2.a.x), vec3<i32>(arg_2.x, arg_2.x, global1[_wgslsmith_index_u32(arg_0, 9u)])), global0.yyx), select(global0.zz, select(global0.wy, vec2<bool>(global0.x, false), select(vec2<bool>(global0.x, global0.x), vec2<bool>(false, true), global0.x)), true), global0.zx));
    return Struct_4(max(reverseBits(~vec3<i32>(u_input.c, global1[_wgslsmith_index_u32(0u, 9u)], -37162i)), reverseBits(-vec3<i32>(global1[_wgslsmith_index_u32(var_1.x, 9u)], u_input.c, var_3.c) >> (max(vec3<u32>(11667u, 0u, 1u), u_input.a) % vec3<u32>(32u)))));
}

fn func_5(arg_0: Struct_4, arg_1: Struct_3) -> Struct_2 {
    global1 = array<i32, 9>();
    let var_0 = any(select(select(select(global0.xw, vec2<bool>(global0.x, true), false), !vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, true)), select(global0.zy, global0.zx, any(vec3<bool>(true, global0.x, global0.x))), select(!vec2<bool>(global0.x, false), !vec2<bool>(global0.x, global0.x), !global0.wz))) && true;
    global0 = !(!select(vec4<bool>(true, func_3(global1[_wgslsmith_index_u32(u_input.a.x, 9u)], vec3<f32>(1000f, -1584f, 913f), vec2<f32>(886f, 310f)), global0.x, var_0), !vec4<bool>(global0.x, true, global0.x, true), !var_0 || all(global0.ywy)));
    global0 = vec4<bool>(any(!(!vec4<bool>(global0.x, var_0, false, false))), false, var_0, true);
    var var_1 = Struct_1(~u_input.a.yy, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1417f) * -999f), vec3<i32>(2147483647i, -2147483647i, ~(func_2(arg_0, vec3<i32>(arg_0.a.x, 1i, arg_0.a.x), u_input.a.x) | 32609i)), global0.xy, vec2<bool>(select(!all(vec4<bool>(true, var_0, global0.x, var_0)), !(global0.x || false), var_0), func_3(_wgslsmith_clamp_i32(firstLeadingBit(global1[_wgslsmith_index_u32(u_input.a.x, 9u)]), u_input.c, u_input.b << (u_input.a.x % 32u)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2967f), _wgslsmith_f_op_f32(step(352f, 1160f)), _wgslsmith_f_op_f32(step(1794f, -1118f))), vec2<f32>(1f, 1f))));
    return Struct_2(~var_1.a.x | var_1.a.x, !select(vec4<bool>(true, all(vec2<bool>(false, false)), global0.x, false), select(vec4<bool>(false, false, global0.x, false), select(vec4<bool>(var_0, true, var_0, var_1.d.x), vec4<bool>(global0.x, true, var_0, var_0), vec4<bool>(true, global0.x, true, global0.x)), var_0), !select(vec4<bool>(var_1.d.x, true, var_0, true), vec4<bool>(false, var_0, false, true), false)), countOneBits(func_4(_wgslsmith_clamp_u32(u_input.a.x << (16438u % 32u), abs(var_1.a.x), select(var_1.a.x, u_input.a.x, false)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_1.b, var_1.b, var_1.b))), vec4<i32>(_wgslsmith_mult_i32(u_input.c, 40545i), global1[_wgslsmith_index_u32(16639u, 9u)], ~(-2147483647i), -global1[_wgslsmith_index_u32(u_input.a.x, 9u)])).a.x), Struct_1(firstTrailingBit(~(u_input.a.xz & u_input.a.xy)), var_1.b, arg_0.a, vec2<bool>(var_0, _wgslsmith_f_op_f32(var_1.b * -814f) > 168f), var_1.d));
}

fn func_6(arg_0: bool, arg_1: Struct_2, arg_2: u32, arg_3: vec3<u32>) -> Struct_3 {
    var var_0 = Struct_5(func_5(Struct_4(func_4(46399u, vec3<f32>(-362f, arg_1.d.b, arg_1.d.b), vec4<i32>(global1[_wgslsmith_index_u32(arg_3.x, 9u)], arg_1.c, -2147483647i, 0i)).a), Struct_3(arg_1.d.c.yz)).d, Struct_1(vec2<u32>(_wgslsmith_div_u32(4294967295u, min(arg_1.d.a.x, 58033u)), ~_wgslsmith_sub_u32(46177u, arg_3.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(406f - _wgslsmith_f_op_f32(ceil(-1115f))) - _wgslsmith_f_op_f32(-arg_1.d.b)), min(-vec3<i32>(0i, arg_1.c, 18803i), ~(-arg_1.d.c)), global0.wy, vec2<bool>(all(vec2<bool>(global0.x, true)), arg_1.b.x & !arg_0)), vec2<bool>(!global0.x, false), -10462i, !(!arg_1.b.x));
    global0 = !(!(!arg_1.b));
    global0 = vec4<bool>(true, true, true, true);
    let var_1 = _wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(select(vec4<i32>(2147483647i, 0i, -36078i, -17196i), vec4<i32>(-45665i, -2558i, arg_1.c, -25816i), false), _wgslsmith_mult_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(arg_2, 9u)], 0i, -6555i, u_input.c), vec4<i32>(u_input.c, -1i, 7735i, 2147483647i))), ~1i, 41494i & _wgslsmith_mod_i32(arg_1.d.c.x, var_0.a.c.x)) >> ((~_wgslsmith_div_vec3_u32(vec3<u32>(15557u, 4294967295u, 0u), vec3<u32>(u_input.a.x, arg_3.x, arg_3.x)) & vec3<u32>(~arg_3.x, 84993u, arg_3.x | arg_3.x)) % vec3<u32>(32u)), var_0.a.c << (select(firstTrailingBit(abs(vec3<u32>(1u, 0u, 0u))), ~vec3<u32>(14125u, arg_1.d.a.x, 32339u), true || arg_1.d.e.x) % vec3<u32>(32u)));
    var var_2 = func_4(firstTrailingBit(~(~(4294967295u & var_0.b.a.x))), vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.a.b + 1552f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -438f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.b * arg_1.d.b)))), _wgslsmith_add_vec4_i32(min(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c, arg_1.c, 0i, var_0.a.c.x), firstLeadingBit(vec4<i32>(var_0.d, global1[_wgslsmith_index_u32(59301u, 9u)], arg_1.d.c.x, 45980i))), _wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, -27073i, -27440i, 10892i), vec4<i32>(0i, 2607i, arg_1.d.c.x, global1[_wgslsmith_index_u32(35883u, 9u)])) >> (vec4<u32>(arg_2, 46926u, arg_3.x, 74294u) % vec4<u32>(32u))), _wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(var_0.a.a.x, 9u)], 0i, var_1.x, global1[_wgslsmith_index_u32(arg_3.x, 9u)]), vec4<i32>(-8586i, var_0.b.c.x, var_1.x, global1[_wgslsmith_index_u32(37982u, 9u)])), vec4<i32>(arg_1.c, var_0.d, u_input.b, 0i))));
    return Struct_3(func_4(~arg_2, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.d.b, -856f, 134f) * vec3<f32>(142f, -1268f, -817f))))), abs(vec4<i32>(15666i, var_0.d, 16067i, -6531i))).a.zx);
}

fn func_1() -> bool {
    global1 = array<i32, 9>();
    var var_0 = Struct_3(-_wgslsmith_div_vec2_i32(firstTrailingBit(-vec2<i32>(1i, 1i)), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, global1[_wgslsmith_index_u32(0u, 9u)]), vec2<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 9u)], u_input.b) | vec2<i32>(12389i, u_input.b))));
    let var_1 = func_6(false && (true | any(vec2<bool>(global0.x, global0.x))), func_5(func_4(_wgslsmith_mod_u32(_wgslsmith_div_u32(u_input.a.x, u_input.a.x), u_input.a.x), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(160f, 892f, -1332f) - vec3<f32>(-303f, 1352f, 289f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-892f, -844f, -389f)), all(vec4<bool>(global0.x, global0.x, global0.x, true)))), vec4<i32>(func_2(Struct_4(vec3<i32>(23259i, var_0.a.x, var_0.a.x)), vec3<i32>(-85918i, 28127i, var_0.a.x), u_input.a.x), -22405i, -44989i, ~(-2147483647i))), Struct_3(vec2<i32>(max(var_0.a.x, u_input.c), global1[_wgslsmith_index_u32(firstTrailingBit(u_input.a.x), 9u)]))), 4294967295u, _wgslsmith_mod_vec3_u32(~(~(~vec3<u32>(1u, u_input.a.x, u_input.a.x))), ~min(~vec3<u32>(u_input.a.x, 58001u, u_input.a.x), select(u_input.a, u_input.a, global0.xzw))));
    var var_2 = Struct_1(vec2<u32>(u_input.a.x, 20385u), _wgslsmith_f_op_f32(f32(-1f) * -1001f), select(max(min(vec3<i32>(u_input.b, -2147483647i, -2147483647i), reverseBits(vec3<i32>(var_1.a.x, u_input.b, 23193i))), func_5(Struct_4(vec3<i32>(var_1.a.x, var_0.a.x, global1[_wgslsmith_index_u32(u_input.a.x, 9u)])), Struct_3(var_0.a)).d.c), vec3<i32>(var_0.a.x, global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a.x, u_input.a.x) ^ 0u, 9u)], 47379i), !(!vec3<bool>(global0.x, true, global0.x))), select(global0.wx, !global0.wx, !global0.yw), select(!global0.xx, vec2<bool>(true, true), any(select(func_5(Struct_4(vec3<i32>(222i, var_1.a.x, var_1.a.x)), Struct_3(var_0.a)).b, !vec4<bool>(false, global0.x, global0.x, true), select(vec4<bool>(false, global0.x, true, true), vec4<bool>(global0.x, true, true, global0.x), vec4<bool>(false, global0.x, global0.x, global0.x))))));
    global0 = select(!(!vec4<bool>(false, global0.x, false && global0.x, all(vec4<bool>(true, true, var_2.d.x, global0.x)))), !select(select(func_5(Struct_4(vec3<i32>(-77749i, var_0.a.x, 15810i)), var_1).b, vec4<bool>(false, var_2.d.x, true, false), vec4<bool>(var_2.e.x, false, false, true)), vec4<bool>(-1i > var_1.a.x, true, true, true), !(var_2.b == -1128f)), vec4<bool>(true, false, global0.x && true, all(func_5(Struct_4(var_2.c), Struct_3(vec2<i32>(var_2.c.x, u_input.b))).d.e)));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !vec4<bool>(false, global0.x, !(func_1() | any(global0.xyw)), global0.x);
    var var_0 = func_5(Struct_4(func_4(1u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1176f, 421f, -1097f) - vec3<f32>(800f, 412f, 1756f))), -max(vec4<i32>(global1[_wgslsmith_index_u32(40022u, 9u)], 21151i, u_input.b, u_input.c), vec4<i32>(u_input.c, 2147483647i, 26070i, 56554i))).a), Struct_3(abs(-(vec2<i32>(-35577i, global1[_wgslsmith_index_u32(u_input.a.x, 9u)]) ^ vec2<i32>(-2147483647i, -9612i))))).d;
    let var_1 = ~_wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(func_4(u_input.a.x, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.b, -219f, -682f))), abs(vec4<i32>(u_input.b, var_0.c.x, 35260i, 1i))).a, var_0.c), firstLeadingBit(abs(vec3<i32>(var_0.c.x, var_0.c.x, u_input.c) >> (vec3<u32>(u_input.a.x, var_0.a.x, u_input.a.x) % vec3<u32>(32u)))));
    let var_2 = var_0.e.x;
    global1 = array<i32, 9>();
    let var_3 = Struct_1(vec2<u32>(0u, u_input.a.x), _wgslsmith_f_op_f32(trunc(var_0.b)), -select(_wgslsmith_div_vec3_i32(var_1 >> (u_input.a % vec3<u32>(32u)), vec3<i32>(var_1.x, global1[_wgslsmith_index_u32(u_input.a.x, 9u)], global1[_wgslsmith_index_u32(var_0.a.x, 9u)])), _wgslsmith_mult_vec3_i32(~vec3<i32>(2147483647i, var_1.x, u_input.c), min(vec3<i32>(global1[_wgslsmith_index_u32(4294967295u, 9u)], -18671i, -4545i), var_1)), false), global0.wy, var_0.d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-213f * var_0.b))))), -(~(-(~var_3.c))), ~(~(~var_0.a | _wgslsmith_div_vec2_u32(u_input.a.xy, var_3.a))));
}

