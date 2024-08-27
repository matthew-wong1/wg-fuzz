struct Struct_1 {
    a: i32,
    b: f32,
    c: bool,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: f32,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<u32, 31>;

var<private> global2: Struct_1 = Struct_1(-10892i, 1183f, true, true, -1129f);

var<private> global3: vec3<i32>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> f32 {
    let var_0 = 1665f;
    let var_1 = vec3<bool>(!(global0.a.x & true), true, true);
    var var_2 = vec4<bool>(true, select(all(select(vec4<bool>(true, true, var_1.x, var_1.x), select(vec4<bool>(false, false, var_1.x, var_1.x), vec4<bool>(false, global2.c, global2.d, var_1.x), vec4<bool>(global2.d, false, var_1.x, var_1.x)), select(vec4<bool>(global0.b.c, global2.c, global2.d, global0.a.x), vec4<bool>(true, false, global0.a.x, true), vec4<bool>(global2.d, true, false, global2.d)))), !global2.c, false | global0.a.x), false, false);
    var var_3 = false;
    global2 = global0.b;
    return _wgslsmith_div_f32(295f, 1040f);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    var var_0 = Struct_2(global0.a, Struct_1(1208i & global0.b.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) + arg_0.e) * 382f), arg_1.d, false, arg_0.b));
    let var_1 = _wgslsmith_f_op_f32(step(-1041f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1000f)) - var_0.b.b)));
    var var_2 = Struct_3(arg_0, _wgslsmith_dot_vec2_u32(min(~u_input.a.yx, ~(~u_input.a.wy)), min(~abs(u_input.a.wx), select(select(vec2<u32>(4294967295u, global1[_wgslsmith_index_u32(0u, 31u)]), vec2<u32>(global1[_wgslsmith_index_u32(4294967295u, 31u)], u_input.a.x), var_0.a.zy), u_input.a.wy, !var_0.a.yz))), Struct_1(firstTrailingBit(-1i) >> (global1[_wgslsmith_index_u32(~u_input.a.x & _wgslsmith_add_u32(global1[_wgslsmith_index_u32(u_input.a.x, 31u)], u_input.a.x), 31u)] % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.e)), !(!(var_1 <= -1194f)), true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-572f * arg_1.e)) + _wgslsmith_f_op_f32(ceil(1081f)))), 280f, select(select(select(vec2<bool>(true, global2.c), var_0.a.zy, global0.a.zy), global0.a.yy, var_0.a.zy), select(select(!global0.a.yy, select(vec2<bool>(true, true), var_0.a.zx, arg_0.c), !global2.c), global0.a.yx, select(vec2<bool>(false, global0.a.x), select(global0.a.xy, var_0.a.xy, global0.a.xy), global0.a.x)), select(true, global0.a.x, true)));
    let var_3 = Struct_3(Struct_1(max(global2.a, min(~global2.a, _wgslsmith_div_i32(28278i, 35017i))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.b, -1437f, global2.c))))), global2.c, true, global2.e), _wgslsmith_mod_u32(_wgslsmith_mod_u32(~(~global1[_wgslsmith_index_u32(68811u, 31u)]), var_2.b), global1[_wgslsmith_index_u32(var_2.b, 31u)]), Struct_1(~(-305i), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(121f)))), -2276f, true)), (i32(-1i) * -27776i) >= var_0.b.a, global2.c, -941f), 548f, select(global0.a.xz, select(!vec2<bool>(false, var_0.a.x), select(var_0.a.zy, vec2<bool>(true, global2.d), global0.a.zz), global2.c), any(vec4<bool>(any(vec2<bool>(true, true)), true, false, var_0.b.c))));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b)));
    return Struct_1(arg_0.a, var_1, any(var_0.a.zz), !any(vec3<bool>(var_3.e.x, arg_0.c, true)) & false, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(643f)))));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_3) -> i32 {
    let var_0 = func_2(func_2(arg_1.a, global0.b, _wgslsmith_div_i32((i32(-1i) * -8750i) | -global0.b.a, -2147483647i)), arg_1.c, _wgslsmith_dot_vec4_i32(vec4<i32>(global3.x, 0i, global3.x, firstTrailingBit(global3.x) & ~0i), vec4<i32>(-1i) * -_wgslsmith_div_vec4_i32(vec4<i32>(23792i, global3.x, -65153i, 0i), vec4<i32>(-23882i, arg_0.x, -1i, 14305i))));
    let var_1 = ~_wgslsmith_clamp_u32(_wgslsmith_mult_u32(arg_1.b, ~_wgslsmith_dot_vec3_u32(u_input.a.zyw, u_input.a.zzw)), _wgslsmith_div_u32(4294967295u << (arg_1.b % 32u), _wgslsmith_mod_u32(1u, arg_1.b)) >> (_wgslsmith_add_u32(0u, ~u_input.a.x) % 32u), _wgslsmith_mult_u32(global1[_wgslsmith_index_u32(49568u, 31u)] >> (_wgslsmith_add_u32(u_input.a.x, u_input.a.x) % 32u), ~53637u));
    global0 = Struct_2(global0.a, Struct_1(func_2(Struct_1(-1i | arg_1.c.a, func_2(Struct_1(0i, arg_1.a.e, true, var_0.d, -1347f), Struct_1(18527i, var_0.b, global0.a.x, global0.a.x, var_0.b), global2.a).e, !var_0.d, arg_1.c.d, _wgslsmith_f_op_f32(global2.b - 1246f)), var_0, select(var_0.a, var_0.a, select(false, false, var_0.d))).a, _wgslsmith_f_op_f32(select(2454f, 1000f, global2.c || true)), arg_1.c.c, all(select(!vec3<bool>(false, global2.c, var_0.d), vec3<bool>(true, arg_1.e.x, false), true)), global0.b.b));
    global0 = Struct_2(!select(global0.a, global0.a, vec3<bool>(false & global0.b.d, all(vec3<bool>(arg_1.e.x, true, arg_1.e.x)), true)), func_2(func_2(Struct_1(countOneBits(global0.b.a), _wgslsmith_f_op_f32(-arg_1.d), true, true, global0.b.e), func_2(var_0, var_0, countOneBits(-2147483647i)), -max(var_0.a, arg_0.x)), func_2(arg_1.c, func_2(Struct_1(0i, -1785f, false, var_0.c, var_0.b), global0.b, -1391i), global2.a), 0i));
    global2 = var_0;
    return i32(-1i) * -2147483647i;
}

fn func_1() -> Struct_1 {
    global1 = array<u32, 31>();
    let var_0 = Struct_3(Struct_1(func_4(select(vec2<i32>(0i, global3.x), global3.yx, global0.a.x), Struct_3(Struct_1(global2.a, global0.b.e, true, false, 104f), 6241u, func_2(global0.b, global0.b, global0.b.a), _wgslsmith_f_op_f32(f32(-1f) * -1722f), vec2<bool>(false, global0.a.x))), _wgslsmith_div_f32(1f, global0.b.e), true, true, global0.b.e), global1[_wgslsmith_index_u32(u_input.a.x, 31u)], func_2(global0.b, global0.b, -65370i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.b)), select(!select(global0.a.yz, !global0.a.xz, global2.c), vec2<bool>(true, 267f >= _wgslsmith_f_op_f32(168f * global0.b.b)), vec2<bool>(false, global0.b.c)));
    let var_1 = 120f;
    global3 = -vec3<i32>(firstLeadingBit(global0.b.a), -_wgslsmith_sub_i32(-1i, -1i), _wgslsmith_mod_i32(2145i, abs(global2.a))) | -vec3<i32>(var_0.c.a, abs(~global2.a), i32(-1i) * -var_0.c.a);
    let var_2 = Struct_2(vec3<bool>(!(global2.c || !var_0.c.d), !(_wgslsmith_f_op_f32(ceil(-360f)) <= _wgslsmith_f_op_f32(287f - 2119f)), global0.a.x), Struct_1(_wgslsmith_dot_vec2_i32(global3.zy, global3.zy), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -526f))), true, true, _wgslsmith_f_op_f32(-605f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global2.b, 268f))))));
    return var_2.b;
}

fn func_5(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec3<bool>, arg_3: f32) -> Struct_2 {
    global3 = vec3<i32>(global2.a, _wgslsmith_dot_vec3_i32(-(~select(vec3<i32>(global0.b.a, -1i, -14434i), vec3<i32>(1i, 2147483647i, -18574i), vec3<bool>(false, global0.a.x, false))), vec3<i32>(~firstLeadingBit(-2147483647i), arg_0.a, ~1i)), global0.b.a & global0.b.a);
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.b.b, _wgslsmith_f_op_f32(abs(arg_0.e))) - -430f)));
    var var_1 = true;
    let var_2 = vec2<bool>(!all(!select(global0.a.xz, global0.a.xz, vec2<bool>(global0.a.x, false))), arg_0.c);
    let var_3 = all(!vec3<bool>(var_2.x, !(1u > global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 31u)], 31u)]), all(vec4<bool>(false, false, global2.d, true))));
    return Struct_2(!global0.a, Struct_1(~1i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global2.e, _wgslsmith_div_f32(758f, global0.b.e))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.e * 225f) - _wgslsmith_f_op_f32(sign(arg_0.b)))), global0.a.x, (_wgslsmith_mult_u32(u_input.a.x, 4294967295u) < ~26749u) & true, 672f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 17148u;
    global1 = array<u32, 31>();
    let var_1 = Struct_1(global2.a, _wgslsmith_f_op_f32(-global2.e), true, !(!(true | all(global0.a))), _wgslsmith_f_op_f32(global2.b - -642f));
    let var_2 = _wgslsmith_div_u32(_wgslsmith_mod_u32(u_input.a.x, ~global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(34484u, ~var_0), 31u)]), ~var_0);
    var var_3 = 626f;
    var var_4 = func_5(func_1(), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-475f * global2.b), _wgslsmith_f_op_f32(select(global0.b.e, var_1.b, true)), 2096f, -1529f) + vec4<f32>(_wgslsmith_f_op_f32(max(global2.b, global0.b.b)), _wgslsmith_f_op_f32(-global2.e), _wgslsmith_f_op_f32(f32(-1f) * -1224f), _wgslsmith_f_op_f32(ceil(-249f)))))), global0.a, var_1.b);
    let x = u_input.a;
    s_output = StorageBuffer(select(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(max(_wgslsmith_mod_u32(var_0, var_2), var_0), var_0), 31u)], 4294967295u, true));
}

