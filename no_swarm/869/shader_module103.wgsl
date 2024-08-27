struct Struct_1 {
    a: vec4<f32>,
    b: vec2<i32>,
    c: bool,
    d: vec3<f32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
    c: Struct_1,
    d: f32,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_3,
    c: vec2<i32>,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<f32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<f32>(-1459f, -369f, 1083f, -356f), vec2<i32>(2147483647i, -1i), false, vec3<f32>(1000f, 362f, -1546f));

var<private> global1: array<u32, 5>;

var<private> global2: i32;

var<private> global3: array<bool, 20> = array<bool, 20>(false, true, true, false, false, true, true, false, false, true, true, false, false, true, true, true, false, false, false, false);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> u32 {
    return reverseBits(4294967295u);
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: Struct_2) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, _wgslsmith_f_op_f32(sign(arg_1))))));
    var var_1 = arg_0;
    let var_2 = !vec4<bool>(var_1.c, arg_2.a, global0.c, abs(_wgslsmith_sub_i32(arg_0.b.x, arg_0.b.x)) >= -18336i);
    global0 = arg_0;
    var var_3 = !(u_input.a <= func_3());
    return arg_2;
}

fn func_4(arg_0: Struct_3, arg_1: bool, arg_2: vec2<u32>, arg_3: f32) -> Struct_3 {
    let var_0 = 4294967295u;
    var var_1 = _wgslsmith_dot_vec2_u32((_wgslsmith_clamp_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(var_0, 5u)], u_input.c), ~u_input.d.zz, ~arg_2) & u_input.d.xz) >> (u_input.d.yy % vec2<u32>(32u)), abs(_wgslsmith_mult_vec2_u32(u_input.d.yy, abs(vec2<u32>(23791u, 4294967295u)))) << (~u_input.d.yz % vec2<u32>(32u)));
    let var_2 = arg_0;
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_0.c.a - arg_0.c.a) + _wgslsmith_f_op_vec4_f32(max(arg_0.c.a, vec4<f32>(var_2.d, 234f, var_2.d, -559f))))))), ~(arg_0.c.b >> (~_wgslsmith_add_vec2_u32(arg_2, arg_2) % vec2<u32>(32u))), true, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.d, 409f, -1169f), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(267f, arg_0.d, 1750f)))), vec3<f32>(_wgslsmith_f_op_f32(min(-529f, 671f)), arg_3, _wgslsmith_f_op_f32(-arg_0.c.d.x)), firstTrailingBit(-2147483647i) != reverseBits(24239i))))));
    let var_4 = Struct_4(vec4<i32>(-16943i, global0.b.x, ~(-6018i), _wgslsmith_add_i32(-var_2.c.b.x, -max(var_2.c.b.x, var_2.c.b.x))), Struct_3(Struct_2(!(var_3.c && var_3.c)), arg_0.b, var_2.c, 482f), vec2<i32>(u_input.e, min(_wgslsmith_dot_vec2_i32(arg_0.c.b, vec2<i32>(var_3.b.x, arg_0.c.b.x)) ^ -15349i, -10734i)));
    return var_4.b;
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = func_4(Struct_3(func_2(Struct_1(_wgslsmith_div_vec4_f32(arg_1.a, vec4<f32>(global0.a.x, -412f, -550f, 673f)), firstLeadingBit(vec2<i32>(arg_1.b.x, 0i)), any(vec2<bool>(global3[_wgslsmith_index_u32(46161u, 20u)], false)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.d.x, arg_1.a.x, global0.a.x))), 196f, Struct_2(true)), !(!select(vec3<bool>(true, false, false), vec3<bool>(global0.c, arg_1.c, true), vec3<bool>(true, global0.c, true))), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-839f, arg_1.d.x, arg_1.a.x, -1000f)) + vec4<f32>(-1360f, global0.a.x, arg_1.d.x, 1000f)), ~global0.b, global3[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(~arg_0.x, 5u)], 20u)], _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(global0.a.zxz, global0.a.zxz)))), -526f), func_2(arg_1, -472f, func_2(Struct_1(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_1.a.x, -2062f, 867f, arg_1.d.x))), ~global0.b, global0.c | arg_1.c, _wgslsmith_f_op_vec3_f32(round(arg_1.d))), arg_1.a.x, Struct_2(false))).a, select(_wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.d.yx, vec2<u32>(u_input.c, arg_0.x)) << ((u_input.d.yz & vec2<u32>(4294967295u, 866u)) % vec2<u32>(32u)), ~u_input.d.zz, arg_0.zx), ~arg_0.yy, vec2<bool>(true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.d.x)));
    var var_1 = ~(~(~(~(u_input.c & 1u))));
    global3 = array<bool, 20>();
    global3 = array<bool, 20>();
    var var_2 = var_0.a;
    return func_4(func_4(Struct_3(func_4(Struct_3(Struct_2(var_2.a), vec3<bool>(true, var_2.a, true), Struct_1(vec4<f32>(314f, global0.a.x, 1252f, global0.d.x), vec2<i32>(arg_1.b.x, 10117i), global3[_wgslsmith_index_u32(0u, 20u)], arg_1.d), -677f), func_4(Struct_3(var_0.a, var_0.b, Struct_1(var_0.c.a, vec2<i32>(u_input.b, -2147483647i), global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(10531u, 5u)], 20u)], var_0.c.a.wwy), -383f), global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(30707u, 5u)], 20u)], arg_0.yz, var_0.c.d.x).c.c, ~vec2<u32>(arg_0.x, arg_0.x), 419f).a, select(select(vec3<bool>(var_2.a, false, false), var_0.b, true), vec3<bool>(global3[_wgslsmith_index_u32(32343u, 20u)], true, arg_1.c), false), func_4(Struct_3(var_0.a, vec3<bool>(false, false, false), Struct_1(arg_1.a, vec2<i32>(-23954i, -1i), false, vec3<f32>(-209f, arg_1.d.x, 1000f)), -534f), func_2(arg_1, global0.a.x, var_0.a).a, arg_0.yx, _wgslsmith_f_op_f32(-arg_1.a.x)).c, -1000f), any(func_4(Struct_3(var_0.a, var_0.b, Struct_1(arg_1.a, arg_1.b, true, vec3<f32>(791f, global0.d.x, -747f)), arg_1.d.x), true, vec2<u32>(u_input.c, global1[_wgslsmith_index_u32(4294967295u, 5u)]), 569f).b), select(arg_0.zx ^ u_input.d.yy, vec2<u32>(~global1[_wgslsmith_index_u32(65622u, 5u)], ~u_input.d.x), false), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.a.x)))))), false, max(vec2<u32>(arg_0.x, 54347u), vec2<u32>(4294967295u, select(_wgslsmith_dot_vec2_u32(u_input.d.yz, vec2<u32>(global1[_wgslsmith_index_u32(29345u, 5u)], global1[_wgslsmith_index_u32(52632u, 5u)])), _wgslsmith_dot_vec3_u32(u_input.d, vec3<u32>(u_input.c, arg_0.x, 0u)), select(var_0.c.c, true, true)))), arg_1.a.x).c;
}

fn func_5(arg_0: Struct_5, arg_1: Struct_3) -> StorageBuffer {
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(select(global0.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.c.d.x, global0.d.x, -124f, 390f) - vec4<f32>(1446f, 304f, 509f, 412f)))), all(!arg_1.b.zy))), vec2<i32>(func_4(func_4(Struct_3(arg_1.a, arg_0.a.b, Struct_1(arg_0.c.a, global0.b, true, global0.d), 1000f), true, u_input.d.zz << (vec2<u32>(36834u, global1[_wgslsmith_index_u32(1u, 5u)]) % vec2<u32>(32u)), arg_1.c.d.x), true, vec2<u32>(1u, global1[_wgslsmith_index_u32(74069u, 5u)]), _wgslsmith_f_op_f32(688f + _wgslsmith_f_op_f32(sign(arg_1.d)))).c.b.x, -_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, arg_0.a.c.b.x, global0.b.x), ~vec3<i32>(arg_1.c.b.x, global0.b.x, 2147483647i))), true, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(arg_1.c.a.x)), _wgslsmith_f_op_f32(min(1346f, _wgslsmith_f_op_f32(min(1508f, 123f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0.b.d.x), _wgslsmith_f_op_f32(f32(-1f) * -118f)))) - _wgslsmith_f_op_vec3_f32(ceil(arg_0.b.a.wwz))));
    global0 = arg_0.b;
    let var_0 = arg_0.b.d.xy;
    var var_1 = arg_1.c.b;
    global1 = array<u32, 5>();
    return StorageBuffer(countOneBits(1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(1000f)), -977f))))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(223f, 302f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.x + 1619f)), arg_0.a.d))), global0.d.x, 1876f);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = ~(-_wgslsmith_div_i32(global0.b.x | countOneBits(2147483647i), _wgslsmith_dot_vec2_i32(global0.b, _wgslsmith_mod_vec2_i32(global0.b, vec2<i32>(global0.b.x, 2147483647i)))));
    let var_0 = Struct_2(false);
    let var_1 = ~(~(~abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(4195u, global1[_wgslsmith_index_u32(101023u, 5u)], u_input.a, 46346u), vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(0u, 5u)], u_input.c, 2454u), vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c, 5u)], 5u)], 5u)], 4294967295u, u_input.a, 0u)))));
    let var_2 = global0.b.x;
    let var_3 = global0.a.x;
    let var_4 = 4294967295u;
    let x = u_input.a;
    s_output = func_5(Struct_5(Struct_3(var_0, select(!vec3<bool>(var_0.a, global3[_wgslsmith_index_u32(var_1.x, 20u)], false), !vec3<bool>(true, var_0.a, global0.c), !vec3<bool>(false, false, global3[_wgslsmith_index_u32(4294967295u, 20u)])), func_1(vec3<u32>(4294967295u, 1u, global1[_wgslsmith_index_u32(1u, 5u)]), Struct_1(vec4<f32>(global0.d.x, global0.d.x, -342f, global0.d.x), global0.b, global0.c, vec3<f32>(global0.d.x, global0.a.x, 1559f))), -882f), func_1(vec3<u32>(u_input.a, 1u, 61049u), Struct_1(func_4(Struct_3(Struct_2(global0.c), vec3<bool>(false, true, true), Struct_1(global0.a, vec2<i32>(18407i, u_input.b), false, global0.a.zxz), -153f), global0.c, u_input.d.zy, global0.a.x).c.a, -global0.b, any(vec4<bool>(global0.c, true, false, true)), _wgslsmith_f_op_vec3_f32(-global0.d))), func_1(abs(countOneBits(u_input.d)), func_4(Struct_3(var_0, vec3<bool>(true, true, true), Struct_1(global0.a, global0.b, true, vec3<f32>(-939f, 273f, global0.d.x)), 1105f), var_0.a, ~vec2<u32>(18515u, global1[_wgslsmith_index_u32(var_4, 5u)]), _wgslsmith_f_op_f32(-1000f * global0.a.x)).c)), func_4(Struct_3(Struct_2(true), select(vec3<bool>(var_0.a, false, true), vec3<bool>(false, var_0.a, true), var_0.a | global0.c), func_4(Struct_3(var_0, vec3<bool>(true, var_0.a, false), Struct_1(vec4<f32>(global0.d.x, global0.a.x, -191f, global0.a.x), global0.b, true, global0.a.wzx), -217f), true, u_input.d.zx, global0.a.x).c, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.a.x, -1189f))), false, firstLeadingBit(var_1.zx), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(472f, global0.d.x))))));
}

