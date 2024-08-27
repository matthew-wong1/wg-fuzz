struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: bool,
    c: vec3<u32>,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec4<u32>,
    c: f32,
    d: vec2<u32>,
}

struct Struct_4 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec2<f32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 25>;

var<private> global1: array<vec2<i32>, 1> = array<vec2<i32>, 1>(vec2<i32>(-26552i, -1i));

var<private> global2: array<u32, 22>;

var<private> global3: array<vec2<i32>, 22>;

var<private> global4: vec4<i32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec2<f32>) -> vec4<u32> {
    global0 = array<i32, 25>();
    var var_0 = max(4659i, global4.x | global0[_wgslsmith_index_u32(select(4294967295u, ~arg_0.x, global4.x >= global4.x), 25u)]);
    var var_1 = vec3<i32>(0i, global4.x, -(~_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(global4.xzw, global4.zxx), global4.yxy)));
    var var_2 = _wgslsmith_clamp_vec4_u32(~_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(24755u, 4294967295u, 4294967295u, u_input.c.x), ~vec4<u32>(arg_0.x, arg_0.x, 1u, 23783u)), _wgslsmith_add_vec4_u32(vec4<u32>(73334u, arg_0.x, u_input.c.x, arg_0.x) & vec4<u32>(0u, 4294967295u, 31192u, 9100u), _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.x, 1u, u_input.c.x, u_input.c.x), vec4<u32>(u_input.c.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c.x, 22u)], 22u)], 66138u, arg_0.x), vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_0.x, 22u)], 22u)], u_input.c.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_0.x, 22u)], 22u)], u_input.c.x)))), vec4<u32>(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.c.zz, select(select(vec2<u32>(4294967295u, global2[_wgslsmith_index_u32(0u, 22u)]), arg_0, true), vec2<u32>(global2[_wgslsmith_index_u32(9755u, 22u)], 0u) ^ vec2<u32>(1u, arg_0.x), true)), 22u)], ~_wgslsmith_dot_vec4_u32(abs(vec4<u32>(1u, u_input.c.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_0.x, 22u)], 22u)], 87603u)), select(vec4<u32>(global2[_wgslsmith_index_u32(arg_0.x, 22u)], 91304u, arg_0.x, u_input.c.x), vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 4294967295u), vec4<bool>(false, false, true, true))), firstTrailingBit(_wgslsmith_add_u32(~475u, ~global2[_wgslsmith_index_u32(211357u, 22u)])), 0u), ~abs(countOneBits(_wgslsmith_sub_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(0u, 22u)], u_input.c.x, u_input.c.x, global2[_wgslsmith_index_u32(arg_0.x, 22u)]), vec4<u32>(4299u, 1u, 4294967295u, 4294967295u)))));
    var_0 = -(~abs(_wgslsmith_mult_i32(_wgslsmith_add_i32(-2147483647i, 22303i), _wgslsmith_add_i32(var_1.x, 71890i))));
    return ~max(min(countOneBits(vec4<u32>(u_input.c.x, global2[_wgslsmith_index_u32(0u, 22u)], 0u, 8881u)) | firstTrailingBit(vec4<u32>(arg_0.x, global2[_wgslsmith_index_u32(0u, 22u)], global2[_wgslsmith_index_u32(1u, 22u)], arg_0.x)), vec4<u32>(var_2.x, 0u, min(var_2.x, global2[_wgslsmith_index_u32(4294967295u, 22u)]), arg_0.x & global2[_wgslsmith_index_u32(78067u, 22u)])), abs(vec4<u32>(6027u, 0u, ~15600u, u_input.c.x)));
}

fn func_2() -> Struct_4 {
    var var_0 = !vec2<bool>(true, !any(vec4<bool>(true, true, true, true)));
    var var_1 = Struct_3(reverseBits(vec4<i32>(firstTrailingBit(-u_input.b), u_input.b, 2147483647i, 26402i)), func_3(u_input.c.xz, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1148f, 600f), vec2<f32>(-171f, 1344f), vec2<bool>(var_0.x, true)))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-887f, -380f))), vec2<f32>(963f, -1000f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1038f))), 1180f), u_input.c.xy);
    let var_2 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c, _wgslsmith_f_op_f32(f32(-1f) * -1000f), -1818f, var_1.c)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_1.c * -1107f), _wgslsmith_f_op_f32(var_1.c - var_1.c), 286f, _wgslsmith_f_op_f32(select(var_1.c, var_1.c, true)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.c, var_1.c, var_1.c, -583f), vec4<f32>(881f, -1648f, -1564f, var_1.c), true)))))));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_1.c)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c)), 1f)));
    let var_4 = Struct_3(~var_1.a, var_1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.a)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.c * _wgslsmith_f_op_f32(floor(var_3.a))), var_3.a)), vec2<u32>(~37u, _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(var_1.b.xxw, vec3<u32>(var_1.d.x, global2[_wgslsmith_index_u32(u_input.c.x, 22u)], global2[_wgslsmith_index_u32(var_1.b.x, 22u)])) | u_input.c, _wgslsmith_div_vec3_u32(~vec3<u32>(global2[_wgslsmith_index_u32(4294967295u, 22u)], u_input.c.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 22u)], 22u)]), max(vec3<u32>(1u, 28684u, global2[_wgslsmith_index_u32(25251u, 22u)]), u_input.c)))));
    return Struct_4(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(var_2.yz, vec2<f32>(-1072f, var_4.c)))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1307f, -2001f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1641f, -282f) + 784f))));
}

fn func_4(arg_0: Struct_4) -> bool {
    let var_0 = Struct_1(arg_0.a.x);
    global1 = array<vec2<i32>, 1>();
    global3 = array<vec2<i32>, 22>();
    var var_1 = arg_0.a.x;
    let var_2 = Struct_3(~(-countOneBits(~vec4<i32>(0i, -34266i, u_input.b, global0[_wgslsmith_index_u32(1u, 25u)]))), firstLeadingBit(firstLeadingBit(max(vec4<u32>(global2[_wgslsmith_index_u32(4294967295u, 22u)], 1142u, 5719u, 25707u), vec4<u32>(global2[_wgslsmith_index_u32(1u, 22u)], u_input.c.x, 1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c.x, 22u)], 22u)])) | _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 1u, u_input.c.x, u_input.c.x), vec4<u32>(u_input.c.x, 4294967295u, global2[_wgslsmith_index_u32(1u, 22u)], 0u)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.a.x), var_0.a, false)), arg_0.a.x), ~(~u_input.c.xy));
    return ((-1i | firstLeadingBit(u_input.a.x)) ^ _wgslsmith_dot_vec2_i32(vec2<i32>(-23098i, global4.x), -u_input.a & var_2.a.ww)) > _wgslsmith_mult_i32(-abs(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 22u)], 25u)]) & global4.x, var_2.a.x);
}

fn func_1(arg_0: bool) -> Struct_3 {
    var var_0 = -822f;
    let var_1 = func_4(func_2());
    global3 = array<vec2<i32>, 22>();
    let var_2 = Struct_4(vec2<f32>(1f, 1f));
    var var_3 = Struct_2(vec4<u32>(~global2[_wgslsmith_index_u32(~_wgslsmith_mod_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c.x, 22u)], 22u)], 50669u), 22u)], 1u, ~abs(1u), u_input.c.x), false, u_input.c, vec3<i32>(global0[_wgslsmith_index_u32(0u, 25u)], u_input.a.x, _wgslsmith_clamp_i32(1i, -_wgslsmith_sub_i32(global0[_wgslsmith_index_u32(68165u, 25u)], 31730i), ~_wgslsmith_add_i32(global4.x, -26497i))), u_input.c.yx);
    return Struct_3(select(_wgslsmith_clamp_vec4_i32(firstTrailingBit(vec4<i32>(global4.x, global0[_wgslsmith_index_u32(0u, 25u)], 1i, 0i)), vec4<i32>(_wgslsmith_mod_i32(u_input.b, var_3.d.x), global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_3.e.x, 22u)], 25u)] & global4.x, ~18733i, 1i), countOneBits(vec4<i32>(-1i, -3842i, u_input.b, 47563i)) ^ -vec4<i32>(-29849i, -2147483647i, -1i, u_input.b)), reverseBits(select(vec4<i32>(8863i, 1i, 1i, global0[_wgslsmith_index_u32(var_3.a.x, 25u)]), vec4<i32>(global0[_wgslsmith_index_u32(var_3.c.x, 25u)], global4.x, -2147483647i, global4.x), true)) ^ ~(~vec4<i32>(31292i, 40547i, global4.x, var_3.d.x)), var_1), min(var_3.a, vec4<u32>(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(15571u, 1u, global2[_wgslsmith_index_u32(u_input.c.x, 22u)]), vec3<u32>(15617u, 0u, 0u) << (u_input.c % vec3<u32>(32u))), 22u)], ~(~var_3.c.x), ~1u, 4294967295u)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_2.a.x), 1523f, func_4(var_2))), u_input.c.zy | min(~func_3(vec2<u32>(34868u, 23839u), vec2<f32>(var_2.a.x, var_2.a.x)).yw, u_input.c.zy));
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_3) -> vec4<i32> {
    let var_0 = arg_1.a;
    var var_1 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.c + arg_1.c) * _wgslsmith_f_op_f32(step(arg_1.c, -247f))))), _wgslsmith_f_op_f32(select(381f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), true))));
    var var_2 = vec4<bool>(false, true, select(firstLeadingBit(var_0.x), _wgslsmith_add_i32(arg_1.a.x, -arg_0.x), var_1.a != _wgslsmith_f_op_f32(-var_1.a)) != 35312i, any(vec2<bool>(true, true)));
    let var_3 = select(all(var_2.wyw) || false, all(select(vec3<bool>(all(var_2.wy), arg_1.c > var_1.a, var_2.x), vec3<bool>(false, true != var_2.x, !var_2.x), all(select(vec2<bool>(var_2.x, var_2.x), var_2.wy, var_2.x)))), _wgslsmith_div_u32(global2[_wgslsmith_index_u32(u_input.c.x, 22u)], func_1(true).b.x) < _wgslsmith_add_u32(reverseBits(~arg_1.b.x), reverseBits(~24811u)));
    var var_4 = vec2<i32>(~arg_0.x, 7769i) | -min(func_1(var_3).a.xx, ~_wgslsmith_mod_vec2_i32(global4.ww, vec2<i32>(u_input.b, var_0.x)));
    return vec4<i32>(1i, var_0.x, firstLeadingBit(func_1(true).a.x), (_wgslsmith_mod_i32(var_4.x, firstLeadingBit(-11737i)) >> (arg_1.d.x % 32u)) & -global0[_wgslsmith_index_u32(~(~global2[_wgslsmith_index_u32(1u, 22u)]), 25u)]);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 25>();
    global2 = array<u32, 22>();
    var var_0 = func_5(global3[_wgslsmith_index_u32(85042u, 22u)], func_1(true));
    var var_1 = func_2();
    var_1 = Struct_4(vec2<f32>(_wgslsmith_f_op_f32(-697f - -784f), -231f));
    var var_2 = Struct_1(var_1.a.x);
    var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.x * var_2.a) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-713f + var_1.a.x), _wgslsmith_f_op_f32(min(-1151f, -1000f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, global2[_wgslsmith_index_u32(u_input.c.x, 22u)], ~78398u), u_input.c), ~max(_wgslsmith_mod_vec3_u32(select(u_input.c, vec3<u32>(0u, 41262u, 4294967295u), vec3<bool>(false, true, true)), vec3<u32>(1u, 3219u, 7851u)), ~min(vec3<u32>(global2[_wgslsmith_index_u32(u_input.c.x, 22u)], u_input.c.x, u_input.c.x), u_input.c)), vec2<f32>(var_2.a, -844f), vec3<f32>(_wgslsmith_f_op_f32(floor(1874f)), -964f, 306f));
}

