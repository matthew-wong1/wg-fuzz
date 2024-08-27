struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: vec4<u32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec2<u32>,
    d: Struct_1,
    e: vec4<u32>,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: Struct_1,
    b: f32,
    c: Struct_4,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
    c: vec4<u32>,
    d: vec2<u32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_3;

var<private> global2: u32 = 1u;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: Struct_3) -> vec3<bool> {
    global0 = Struct_1(select(vec3<bool>(all(select(vec2<bool>(true, true), global0.a.xx, global0.a.x)), global0.a.x, true), vec3<bool>(false, global1.d.a.x, arg_0.d.a.x), all(arg_0.a)));
    let var_0 = Struct_4(global0.a.x | true);
    global0 = global1.b;
    let var_1 = Struct_5(Struct_1(arg_0.b.a), _wgslsmith_f_op_f32(f32(-1f) * -1132f), var_0);
    global1 = arg_0;
    return vec3<bool>(true, any(var_1.a.a), true);
}

fn func_4(arg_0: Struct_3) -> vec4<bool> {
    var var_0 = select(u_input.b.yx, -vec2<i32>(~1i, -1i) | firstTrailingBit(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.c, 4i), u_input.a.zx) ^ vec2<i32>(2147483647i, u_input.c)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(610f, _wgslsmith_div_f32(1146f, -1682f))), -1207f)) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(280f))) + 1f));
    global1 = Struct_3(arg_0.a, Struct_1(select(vec3<bool>(!global1.b.a.x, !arg_0.d.a.x, all(vec4<bool>(false, global0.a.x, arg_0.b.a.x, false))), vec3<bool>(any(vec4<bool>(arg_0.d.a.x, arg_0.a.x, global1.d.a.x, true)), true, arg_0.d.a.x), !global0.a.x == true)), abs(arg_0.e.xz), global1.d, select(countOneBits(firstTrailingBit(global1.e)), arg_0.e, !arg_0.a));
    var_0 = reverseBits(vec2<i32>(~(~(-var_0.x)), var_0.x));
    global0 = Struct_1(global1.a.yzx);
    global2 = 1u;
    return !(!arg_0.a);
}

fn func_2() -> bool {
    let var_0 = Struct_3(func_4(Struct_3(vec4<bool>(any(vec4<bool>(global0.a.x, false, true, true)), false, !global0.a.x, true), Struct_1(!global0.a), _wgslsmith_sub_vec2_u32(vec2<u32>(global1.e.x, 43720u), global1.e.zw), Struct_1(func_3(Struct_3(global1.a, Struct_1(vec3<bool>(true, false, true)), global1.c, global1.d, vec4<u32>(113921u, 1u, 69496u, global1.c.x)))), vec4<u32>(~global1.c.x, max(4294967295u, 1u), 1u, ~0u))), Struct_1(func_3(Struct_3(vec4<bool>(false, true, true, false), global1.b, global1.c, global1.b, reverseBits(global1.e)))), ~vec2<u32>(_wgslsmith_sub_u32(1u, global1.e.x) ^ max(global1.e.x, 9146u), ~global1.c.x), global1.b, ~max(~(~global1.e), _wgslsmith_mod_vec4_u32(~vec4<u32>(global1.e.x, global1.e.x, global1.c.x, 7081u), vec4<u32>(global1.c.x, global1.c.x, global1.c.x, global1.c.x))));
    global1 = Struct_3(var_0.a, Struct_1(select(!var_0.d.a, select(func_4(var_0).zyz, vec3<bool>(var_0.b.a.x, var_0.b.a.x, var_0.d.a.x), true), select(global1.a.x, false, true))), _wgslsmith_clamp_vec2_u32(var_0.c & _wgslsmith_div_vec2_u32(vec2<u32>(1u, var_0.c.x), ~vec2<u32>(0u, 1u)), global1.e.zw, ~vec2<u32>(0u, 12970u)), var_0.b, vec4<u32>(global1.e.x, abs(_wgslsmith_add_u32(_wgslsmith_mod_u32(global1.e.x, 4294967295u), 1u)), ~max(26976u, _wgslsmith_div_u32(var_0.e.x, var_0.c.x)), global1.c.x << (~30981u % 32u)));
    let var_1 = Struct_3(!global1.a, var_0.d, _wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(~firstTrailingBit(vec2<u32>(0u, 0u)), var_0.e.yy), ~(~global1.e.zz)), var_0.d, abs(abs(var_0.e)));
    var var_2 = reverseBits(vec2<i32>(2147483647i, -u_input.a.x) | vec2<i32>(-u_input.b.x, u_input.c));
    global1 = var_1;
    return false;
}

fn func_1() -> Struct_3 {
    global0 = Struct_1(vec3<bool>(any(!vec2<bool>(global0.a.x, global0.a.x)) && false, true, global0.a.x));
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-787f, _wgslsmith_f_op_f32(f32(-1f) * -1036f))));
    global1 = Struct_3(vec4<bool>(true || global1.a.x, true, global1.d.a.x, global0.a.x), Struct_1(vec3<bool>(!func_2(), 4294967295u == (global1.c.x ^ 91307u), all(!global0.a))), _wgslsmith_mod_vec2_u32(global1.e.zz, vec2<u32>(global1.c.x, global1.c.x) | (~vec2<u32>(1u, 1u) | max(global1.c, vec2<u32>(global1.e.x, 1u)))), global1.d, ~abs(vec4<u32>(1u, 17150u, 30908u, global1.c.x)));
    let var_1 = Struct_3(select(func_4(Struct_3(select(vec4<bool>(global0.a.x, global1.b.a.x, global0.a.x, global1.b.a.x), vec4<bool>(global1.a.x, global0.a.x, global1.b.a.x, false), true), global1.b, vec2<u32>(1u, global1.c.x), Struct_1(vec3<bool>(global0.a.x, true, global1.b.a.x)), select(global1.e, global1.e, global1.a.x))), vec4<bool>(!(-108051i >= u_input.c), false, true, all(global1.d.a.yy) | true), global1.a), Struct_1(!select(!global1.a.wxw, global1.d.a, global0.a.x)), global1.c, Struct_1(vec3<bool>(!(u_input.b.x >= -2147483647i), global0.a.x, true)), max(vec4<u32>(~53420u, 15858u, ~global1.c.x, abs(global1.c.x)), ((vec4<u32>(0u, global1.c.x, 27690u, 52845u) << (vec4<u32>(global1.c.x, 1u, 1u, 0u) % vec4<u32>(32u))) << (global1.e % vec4<u32>(32u))) ^ global1.e));
    let var_2 = Struct_3(!global1.a, global1.b, vec2<u32>(22351u, var_1.c.x), Struct_1(select(vec3<bool>(var_1.d.a.x, global0.a.x && false, true), var_1.d.a, func_2())), ~(~(~vec4<u32>(var_1.e.x, 35435u, 0u, 1u))) >> (var_1.e % vec4<u32>(32u)));
    return var_2;
}

fn func_5(arg_0: u32, arg_1: vec3<bool>, arg_2: vec3<i32>, arg_3: Struct_3) -> vec2<bool> {
    global1 = Struct_3(vec4<bool>(any(vec2<bool>(false, !global1.d.a.x)), !(arg_1.x & arg_1.x), !arg_1.x, false), func_1().b, vec2<u32>(max(select(_wgslsmith_add_u32(1u, 1u), max(41027u, 1u), arg_3.b.a.x), arg_3.e.x), _wgslsmith_div_u32(arg_3.e.x, ~(~global1.e.x))), global1.d, firstTrailingBit(select(~_wgslsmith_sub_vec4_u32(vec4<u32>(arg_0, 8922u, global1.e.x, arg_0), arg_3.e), select(~vec4<u32>(0u, arg_3.c.x, global1.e.x, arg_3.c.x), firstTrailingBit(global1.e), !arg_3.b.a.x), global1.a)));
    var var_0 = Struct_2(26291u, global1.e.yzy, arg_2.x, _wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(arg_3.e.xzz, _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, arg_3.c.x, global1.c.x), vec3<u32>(arg_0, 11496u, 28652u), vec3<u32>(58082u, 0u, 9129u))), 1u, arg_3.c.x, countOneBits(817u | global1.e.x)), _wgslsmith_add_vec4_u32(vec4<u32>(global1.c.x, ~global1.c.x, ~global1.e.x, ~52991u), ~(arg_3.e | vec4<u32>(1u, 64746u, arg_0, 4294967295u)))));
    let var_1 = arg_2;
    var var_2 = var_1.x;
    let var_3 = var_1;
    return !(!func_1().d.a.yz);
}

fn func_6(arg_0: bool, arg_1: vec4<bool>, arg_2: bool, arg_3: vec2<bool>) -> Struct_4 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1541f - 490f), _wgslsmith_f_op_f32(f32(-1f) * -1377f)))))), -856f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(ceil(-1642f))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1525f, -1812f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1338f), -593f))))));
    global1 = func_1();
    global2 = _wgslsmith_add_u32(abs(_wgslsmith_mult_u32(countOneBits(0u), select(global1.c.x, global1.c.x, global0.a.x))), _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(global1.e, global1.e), global1.c.x)) & _wgslsmith_dot_vec4_u32(select(reverseBits(global1.e ^ vec4<u32>(global1.e.x, 4294967295u, 1u, global1.c.x)), ~(~vec4<u32>(global1.c.x, global1.c.x, 41313u, global1.c.x)), !(!vec4<bool>(false, arg_1.x, false, true))), vec4<u32>((1u | global1.e.x) << (_wgslsmith_div_u32(1u, global1.e.x) % 32u), firstTrailingBit(~4294967295u), 4294967295u, _wgslsmith_mult_u32(15842u, 65415u)));
    global2 = _wgslsmith_sub_u32(~global1.c.x, max(global1.c.x, global1.c.x));
    global1 = func_1();
    return Struct_4(arg_2);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(global1.d.a.x, select(select(!vec4<bool>(true, global0.a.x, global0.a.x, true), vec4<bool>(true, true, any(vec4<bool>(global1.b.a.x, global1.d.a.x, global1.b.a.x, true)), global1.a.x), global0.a.x), global1.a, true), all(!select(!vec4<bool>(true, false, global0.a.x, false), vec4<bool>(global0.a.x, global0.a.x, global0.a.x, false), !global1.a)), func_5(global1.c.x, global1.a.xwz, -vec3<i32>(u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(21766i, 0i, 27383i, 24846i), u_input.a), u_input.c | 20068i), func_1()));
    global0 = func_1().d;
    let var_1 = Struct_2(abs(_wgslsmith_sub_u32(50467u, ~global1.c.x)), ~vec3<u32>(1u, _wgslsmith_add_u32(global1.c.x, 34771u | global1.e.x), global1.e.x ^ max(global1.e.x, 10205u)), _wgslsmith_dot_vec3_i32(reverseBits(countOneBits(firstLeadingBit(vec3<i32>(u_input.a.x, u_input.a.x, 17633i)))), select(vec3<i32>(-10661i, -u_input.c, min(1i, 26483i)), vec3<i32>(-45847i, u_input.a.x, 27499i) ^ firstTrailingBit(vec3<i32>(-1i, 41544i, u_input.c)), false)), _wgslsmith_mod_vec4_u32(global1.e, firstLeadingBit(~_wgslsmith_mult_vec4_u32(global1.e, vec4<u32>(35986u, 45329u, 34965u, 37189u)))));
    var var_2 = i32(-1i) * -1i;
    global0 = func_1().b;
    global2 = 10605u;
    let var_3 = func_1().a;
    let var_4 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<i32>(0i, var_1.c, -_wgslsmith_sub_i32(var_1.c, 2147483647i)), vec4<f32>(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(select(443f, -336f, func_5(1u, global0.a, u_input.a.ywz, Struct_3(global1.a, Struct_1(global0.a), vec2<u32>(global1.e.x, global1.c.x), Struct_1(vec3<bool>(false, false, false)), global1.e)).x))), 194f, -486f, _wgslsmith_f_op_f32(round(-1335f))), _wgslsmith_mult_vec4_u32(~vec4<u32>(80925u, 9872u, 0u, var_1.b.x), vec4<u32>(0u, global1.e.x << (~global1.e.x % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(global1.e.x, global1.c.x, 104301u), abs(var_1.d.xzy)), 1u & var_1.b.x)), vec2<u32>(var_1.a, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, global1.e.x, var_1.a >> (var_1.a % 32u)), firstLeadingBit(vec3<u32>(var_1.d.x, var_1.d.x, var_1.d.x)) << (_wgslsmith_add_vec3_u32(vec3<u32>(global1.c.x, 35796u, 1u), var_1.d.xyw) % vec3<u32>(32u)))), _wgslsmith_mod_vec3_i32(abs(min(-vec3<i32>(-35588i, -1i, u_input.a.x), ~vec3<i32>(2147483647i, var_1.c, 55596i))), (vec3<i32>(1i, 2147483647i, -18132i) >> (global1.e.zwy % vec3<u32>(32u))) | vec3<i32>(-1i, var_1.c, firstLeadingBit(-2147483647i))));
}

