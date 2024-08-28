struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec3<i32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec2<i32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: i32,
    c: Struct_3,
    d: Struct_2,
    e: i32,
}

struct Struct_5 {
    a: u32,
    b: i32,
    c: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 5>;

var<private> global1: Struct_5 = Struct_5(4294967295u, 1i, true);

var<private> global2: array<vec4<f32>, 3>;

var<private> global3: f32 = 605f;

var<private> global4: f32 = 141f;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_3) -> bool {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -130f);
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1093f, var_0, 900f)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0, var_0, var_0))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1162f, -1778f, 1813f))))))));
    let var_2 = -17686i;
    global1 = Struct_5(0u, u_input.a.x & -1i, true);
    var var_3 = Struct_5(global1.a, u_input.b.x << (4294967295u % 32u), true);
    return global1.c;
}

fn func_4(arg_0: Struct_5, arg_1: f32, arg_2: Struct_5) -> i32 {
    var var_0 = arg_2.c;
    var var_1 = !vec2<bool>(!global1.c, true);
    var var_2 = _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(~(~reverseBits(vec4<u32>(u_input.c, 4294967295u, global1.a, 1u))), ~(~(~vec4<u32>(35481u, 7454u, global1.a, u_input.c)))), abs(~_wgslsmith_add_u32(1u, 59767u)));
    let var_3 = global1.a;
    let var_4 = vec2<u32>(_wgslsmith_dot_vec3_u32((select(vec3<u32>(1u, 17694u, 7413u), vec3<u32>(arg_0.a, global1.a, 13348u), vec3<bool>(var_1.x, arg_2.c, false)) << (_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(global1.a, u_input.c, global1.a)) % vec3<u32>(32u))) << (~_wgslsmith_div_vec3_u32(vec3<u32>(arg_2.a, 14145u, arg_0.a), vec3<u32>(global1.a, arg_0.a, u_input.c)) % vec3<u32>(32u)), ~(~(~vec3<u32>(1u, arg_2.a, u_input.c)))), global1.a);
    return min(14012i, arg_2.b);
}

fn func_2(arg_0: vec3<bool>, arg_1: u32) -> Struct_3 {
    var var_0 = Struct_4(global2[_wgslsmith_index_u32(reverseBits(select(~7570u, ~1u, false)), 3u)], _wgslsmith_sub_i32(~_wgslsmith_div_i32(global1.b, global1.b), max(abs(u_input.a.x), -_wgslsmith_sub_i32(global1.b, u_input.b.x))), Struct_3(~(_wgslsmith_mod_vec3_u32(vec3<u32>(global1.a, global1.a, 50565u), vec3<u32>(31224u, 32030u, arg_1)) >> (vec3<u32>(26657u, u_input.c, u_input.c) % vec3<u32>(32u))), _wgslsmith_mod_vec2_i32(vec2<i32>(-u_input.b.x, -49983i), select(vec2<i32>(2147483647i, u_input.a.x), _wgslsmith_mult_vec2_i32(vec2<i32>(-1i, global1.b), global0[_wgslsmith_index_u32(u_input.c, 5u)]), vec2<bool>(global1.c, arg_0.x)))), Struct_2(Struct_1(-2078f), func_4(Struct_5(_wgslsmith_clamp_u32(u_input.c, u_input.c, global1.a), -28982i, arg_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1077f)), Struct_5(global1.a, u_input.a.x, func_3(Struct_3(vec3<u32>(arg_1, u_input.c, global1.a), vec2<i32>(u_input.a.x, global1.b))))), ~_wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(u_input.b.wzz, vec3<i32>(2147483647i, 14217i, u_input.a.x), vec3<i32>(global1.b, global1.b, -24727i)), -u_input.b.ywz)), 2147483647i);
    var var_1 = 540f;
    var_1 = 382f;
    let var_2 = Struct_1(var_0.d.a.a);
    let var_3 = Struct_3(select(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, global1.a, arg_1, 4294967295u), vec4<u32>(57657u, global1.a, 105970u, global1.a)), u_input.c, _wgslsmith_add_u32(arg_1, global1.a)) >> (~var_0.c.a % vec3<u32>(32u)), ~(~var_0.c.a), all(!(!arg_0.xx))), -u_input.b.ww);
    return var_3;
}

fn func_5(arg_0: Struct_4) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.a.x))) + arg_0.d.a.a));
    let var_1 = Struct_3(vec3<u32>(u_input.c, ~12728u, countOneBits(countOneBits(0u))), func_2(select(vec3<bool>(global1.c, any(vec3<bool>(global1.c, global1.c, true)), global1.c), vec3<bool>(!global1.c, all(vec3<bool>(true, true, true)), global1.c | global1.c), select(vec3<bool>(global1.c, global1.c, global1.c), !vec3<bool>(global1.c, true, false), func_3(arg_0.c))), _wgslsmith_mult_u32(~(~12665u), ~(~global1.a))).b);
    global3 = _wgslsmith_f_op_f32(f32(-1f) * -854f);
    let var_2 = ~4294967295u;
    var var_3 = vec3<bool>(true, global1.c, true);
    return (_wgslsmith_mod_u32(~global1.a, 3419u) >> ((~0u ^ ~var_2) % 32u)) >> (countOneBits(var_1.a.x) % 32u);
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: u32, arg_3: bool) -> Struct_4 {
    global0 = array<vec2<i32>, 5>();
    let var_0 = true;
    var var_1 = countOneBits(vec3<u32>(61837u, 1u, func_5(Struct_4(global2[_wgslsmith_index_u32(u_input.c, 3u)], u_input.b.x, func_2(vec3<bool>(var_0, global1.c, global1.c), 0u), Struct_2(Struct_1(-224f), -67309i, u_input.b.xxy), _wgslsmith_sub_i32(1i, global1.b)))));
    var var_2 = Struct_2(Struct_1(-2207f), u_input.b.x, _wgslsmith_sub_vec3_i32(-_wgslsmith_sub_vec3_i32(vec3<i32>(-9541i, u_input.a.x, u_input.a.x), u_input.b.zyy), -u_input.b.yyx));
    var var_3 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_2.a.a, 621f, var_2.a.a), vec3<f32>(var_2.a.a, -1569f, var_2.a.a)))) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1589f, 2570f, 1449f), vec3<f32>(1079f, var_2.a.a, var_2.a.a), vec3<bool>(arg_0, false, true))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-2038f, -360f, -1000f), vec3<f32>(-217f, var_2.a.a, var_2.a.a)))))));
    return Struct_4(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(1140f, 1000f), _wgslsmith_f_op_f32(var_3.x - 1524f), 1000f, var_2.a.a) + vec4<f32>(var_2.a.a, _wgslsmith_div_f32(1747f, var_2.a.a), 898f, var_3.x)), vec4<f32>(-1000f, var_2.a.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(var_3.x)), _wgslsmith_div_f32(var_3.x, var_3.x)), var_3.x), vec4<bool>(any(vec4<bool>(var_0, false, global1.c, arg_3)), !arg_3, arg_3, true))), reverseBits(countOneBits(19082i)) >> (~_wgslsmith_add_u32(arg_2, _wgslsmith_div_u32(var_1.x, arg_2)) % 32u), Struct_3(vec3<u32>(_wgslsmith_sub_u32(29916u, 0u), ~(~arg_2), ~1u), vec2<i32>(reverseBits(global1.b & 40873i), _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, 55129i, -2147483647i), vec3<i32>(global1.b, u_input.b.x, 11999i), vec3<i32>(u_input.b.x, 28768i, 2147483647i)), vec3<i32>(var_2.c.x, global1.b, 3032i)))), Struct_2(var_2.a, -var_2.c.x, ~(reverseBits(vec3<i32>(var_2.b, var_2.c.x, u_input.b.x)) << (~vec3<u32>(arg_1, 37556u, arg_1) % vec3<u32>(32u)))), _wgslsmith_div_i32(global1.b, 2147483647i));
}

fn func_6(arg_0: Struct_4, arg_1: bool) -> Struct_2 {
    global2 = array<vec4<f32>, 3>();
    let var_0 = reverseBits(global1.b) | _wgslsmith_clamp_i32(_wgslsmith_div_i32(_wgslsmith_add_i32(51708i, arg_0.c.b.x), _wgslsmith_mult_i32(global1.b, global1.b)) >> (0u % 32u), 0i, global1.b);
    global3 = arg_0.a.x;
    global2 = array<vec4<f32>, 3>();
    var var_1 = arg_0.d;
    return arg_0.d;
}

fn func_7(arg_0: Struct_2, arg_1: vec3<u32>) -> f32 {
    let var_0 = vec2<bool>(global1.c, global1.c);
    var var_1 = _wgslsmith_add_u32(u_input.c, 34082u);
    var var_2 = Struct_5(global1.a, countOneBits(_wgslsmith_add_i32(i32(-1i) * -u_input.b.x, global1.b)), true);
    let var_3 = u_input.a.x;
    return _wgslsmith_div_f32(172f, _wgslsmith_f_op_f32(arg_0.a.a + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-105f - -254f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_7(func_6(func_1(global1.c, global1.a, 4294967295u, global1.c), global1.c), ~vec3<u32>(global1.a, global1.a, u_input.c) | _wgslsmith_mult_vec3_u32(vec3<u32>(86464u, 14859u, global1.a), vec3<u32>(u_input.c, 4294967295u, global1.a)))), -510f) + -754f);
    var var_0 = _wgslsmith_f_op_f32(func_7(func_6(func_1(global1.c, u_input.c, _wgslsmith_add_u32(_wgslsmith_clamp_u32(15253u, global1.a, global1.a), _wgslsmith_div_u32(global1.a, global1.a)), !func_3(Struct_3(vec3<u32>(global1.a, 0u, 0u), global0[_wgslsmith_index_u32(u_input.c, 5u)]))), global1.c), firstLeadingBit(vec3<u32>(func_5(Struct_4(vec4<f32>(-953f, 1000f, -541f, 355f), global1.b, Struct_3(vec3<u32>(u_input.c, 0u, 4294967295u), vec2<i32>(global1.b, -10437i)), Struct_2(Struct_1(596f), global1.b, u_input.b.wyx), u_input.b.x)), 64972u, countOneBits(4294967295u & u_input.c)))));
    var var_1 = Struct_2(func_1(any(select(vec3<bool>(true, true, true), select(vec3<bool>(true, global1.c, true), vec3<bool>(global1.c, false, global1.c), vec3<bool>(global1.c, global1.c, true)), global1.c | false)), 4294967295u, 84295u, global1.c).d.a, 2147483647i, min(vec3<i32>(51407i & global1.b, -18504i & global1.b, ~_wgslsmith_dot_vec4_i32(u_input.b, u_input.b)), min(select(u_input.b.wyw | vec3<i32>(33741i, global1.b, -40583i), u_input.b.zxx ^ vec3<i32>(global1.b, global1.b, u_input.a.x), !vec3<bool>(true, global1.c, false)), _wgslsmith_sub_vec3_i32(u_input.b.xyz | vec3<i32>(global1.b, u_input.b.x, -3390i), vec3<i32>(global1.b, -27790i, 33750i)))));
    global1 = Struct_5(~global1.a, abs(-63675i), global1.c);
    global4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(904f, 581f)), _wgslsmith_f_op_f32(1142f + var_1.a.a)))))));
    var var_2 = var_1.a;
    var var_3 = _wgslsmith_f_op_f32(-var_1.a.a);
    var var_4 = func_6(Struct_4(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-global2[_wgslsmith_index_u32(1u, 3u)]))), u_input.a.x, Struct_3(min(vec3<u32>(60755u, 0u, u_input.c) >> (vec3<u32>(1u, u_input.c, global1.a) % vec3<u32>(32u)), firstTrailingBit(vec3<u32>(u_input.c, 1u, 40631u))), countOneBits(_wgslsmith_div_vec2_i32(global0[_wgslsmith_index_u32(1u, 5u)], global0[_wgslsmith_index_u32(u_input.c, 5u)]))), func_1(false, ~u_input.c ^ u_input.c, u_input.c, 4294967295u > global1.a).d, 14942i), false);
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_sub_vec2_i32(~var_1.c.xx, vec2<i32>(0i | global1.b, 1i))), u_input.b);
}

