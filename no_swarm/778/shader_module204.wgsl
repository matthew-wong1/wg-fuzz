struct Struct_1 {
    a: bool,
    b: bool,
    c: vec3<f32>,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec3<bool>,
    d: bool,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: vec2<u32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(true, true, vec3<f32>(1000f, -2176f, 1000f), -2578i, -111f);

var<private> global1: vec4<bool> = vec4<bool>(false, true, true, false);

var<private> global2: array<u32, 32>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: bool, arg_1: vec2<u32>, arg_2: vec3<u32>) -> i32 {
    var var_0 = vec3<bool>(select(0u, ~0u, all(select(global1.yw, global1.wz, global0.b))) != firstTrailingBit(4294967295u), arg_0, global1.x);
    global1 = vec4<bool>(-255f < global0.c.x, true, all(select(vec4<bool>(true, -1050f <= global0.e, arg_0, !var_0.x), !vec4<bool>(global1.x, global0.b, true, global1.x), arg_0)), !(!any(var_0.yx)) | true);
    var var_1 = !(!select(select(!global1.yy, vec2<bool>(global0.a, global1.x), var_0.zz), !vec2<bool>(true, global0.b), global1.yw));
    var var_2 = Struct_1(all(select(!(!vec4<bool>(false, global0.a, global1.x, true)), vec4<bool>(false, select(true, var_1.x, false), all(vec2<bool>(var_1.x, true)), true), !(!vec4<bool>(var_1.x, false, arg_0, global0.b)))), all(vec2<bool>(!arg_0, !(!arg_0))), vec3<f32>(-1319f, global0.e, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, global0.c.x)) - 474f)), global0.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global0.c.x, global0.c.x)) - -510f));
    var var_3 = u_input.e.yzw;
    return select(abs(_wgslsmith_clamp_i32(countOneBits(u_input.a.x) ^ (u_input.e.x >> (u_input.b.x % 32u)), _wgslsmith_clamp_i32(-28025i, u_input.a.x, min(57487i, u_input.a.x)), countOneBits(_wgslsmith_clamp_i32(var_2.d, global0.d, var_3.x)))), u_input.e.x, arg_0 | (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.x)) == global0.e));
}

fn func_2() -> Struct_1 {
    global2 = array<u32, 32>();
    let var_0 = reverseBits(u_input.a);
    let var_1 = Struct_3(Struct_1(true, (~u_input.d != ~global2[_wgslsmith_index_u32(u_input.d, 32u)]) || true, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1711f, global0.e, -515f) + global0.c), global0.c), min(func_3(global1.x, vec2<u32>(4294967295u, 83025u), ~u_input.c.yxz), u_input.e.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -991f)))));
    var var_2 = var_1;
    var var_3 = -(~_wgslsmith_sub_i32(-_wgslsmith_dot_vec2_i32(vec2<i32>(-20177i, -1i), var_0), ~(-7948i)));
    return var_1.a;
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: bool) -> Struct_1 {
    global1 = select(!select(select(!vec4<bool>(arg_2, false, arg_0.b, false), !vec4<bool>(global1.x, false, false, arg_0.a), false), !(!vec4<bool>(true, true, arg_2, arg_2)), select(!vec4<bool>(global0.a, false, true, arg_0.b), !vec4<bool>(true, false, arg_2, false), func_2().b)), !vec4<bool>(any(select(vec2<bool>(global0.a, arg_0.b), vec2<bool>(arg_0.a, global0.b), arg_0.a)), !all(vec2<bool>(arg_2, false)), u_input.d != ~u_input.b.x, true), false | arg_2);
    let var_0 = ~(~4294967295u);
    let var_1 = vec4<i32>(u_input.e.x, func_2().d, global0.d, 0i);
    global1 = vec4<bool>(false, true, select(false, global1.x, global0.b), true);
    global0 = Struct_1(false, arg_0.a, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_div_f32(arg_0.c.x, arg_0.e), global0.c.x, global0.c.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1498f, -580f, arg_0.c.x)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.e, 112f, -256f) * arg_0.c)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.c * vec3<f32>(560f, -362f, arg_0.c.x)))))), _wgslsmith_mult_i32(-7412i, -var_1.x), _wgslsmith_f_op_f32(ceil(140f)));
    return Struct_1(global1.x, any(!vec4<bool>(any(vec2<bool>(global1.x, global0.b)), global0.a & true, arg_0.a & global0.a, false)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(global0.c.x, 1000f, -563f), arg_0.c))) + _wgslsmith_f_op_vec3_f32(arg_0.c - _wgslsmith_f_op_vec3_f32(-arg_0.c))), abs(-(~(~(-1813i)))), func_2().e);
}

fn func_5(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: i32, arg_3: Struct_1) -> Struct_1 {
    var var_0 = 814f;
    let var_1 = u_input.a;
    let var_2 = global0.b;
    let var_3 = Struct_2(func_2(), global1.xzx, global1.zxx, arg_1.x);
    var var_4 = var_3.a.c.x;
    return Struct_1(u_input.e.x != (_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.x, 1i), reverseBits(u_input.e.zw)) << (~_wgslsmith_dot_vec4_u32(u_input.c, u_input.c) % 32u)), var_3.b.x, _wgslsmith_div_vec3_f32(vec3<f32>(global0.c.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1975f, global0.c.x) + -1279f), -1166f), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(ceil(var_3.a.c))))))), countOneBits(arg_2), _wgslsmith_f_op_f32(-var_3.a.c.x));
}

fn func_1() -> Struct_1 {
    global1 = vec4<bool>(!(abs(-1i) >= ~(~u_input.a.x)), false, !(!(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 32u)], 32u)] > u_input.b.x) & any(select(global1.wz, vec2<bool>(global0.a, global0.a), global1.x))), all(!vec4<bool>(global1.x, false && global1.x, !global0.a, true)));
    var var_0 = false;
    let var_1 = Struct_1(!(~(~global0.d) > global0.d), true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.c - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(global0.c + vec3<f32>(global0.e, global0.c.x, global0.e)))))), 43889i, _wgslsmith_f_op_f32(sign(global0.e)));
    global2 = array<u32, 32>();
    var var_2 = u_input.e;
    return func_5(Struct_3(func_4(func_2(), 2147483647i, any(select(vec4<bool>(true, false, var_1.a, true), vec4<bool>(global0.b, var_1.b, false, var_1.b), false)))), select(select(global1.zz, vec2<bool>(true, global2[_wgslsmith_index_u32(55260u, 32u)] != 45186u), !global1.x | false), vec2<bool>(true, func_2().a), all(!vec4<bool>(false, global1.x, false, false))), _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.d << (u_input.c.x % 32u), _wgslsmith_sub_i32(u_input.e.x, 2147483647i), -1i), vec3<i32>(firstTrailingBit(var_1.d), -15611i, -52366i >> (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 32u)], 32u)] % 32u))) >> (~_wgslsmith_sub_u32(global2[_wgslsmith_index_u32(~1u, 32u)], ~1u) % 32u), var_1);
}

fn func_6(arg_0: Struct_3) -> Struct_1 {
    global1 = vec4<bool>(24339u >= (_wgslsmith_dot_vec2_u32(vec2<u32>(0u, global2[_wgslsmith_index_u32(22765u, 32u)]), vec2<u32>(global2[_wgslsmith_index_u32(21160u, 32u)], u_input.d) | u_input.c.yy) | 1u), func_2().b, true != !(~23989u > max(u_input.b.x, u_input.d)), !(_wgslsmith_sub_u32(0u, _wgslsmith_clamp_u32(43013u, 4294967295u, 33757u)) < (global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 32u)], 32u)], u_input.c.x, u_input.d), 32u)] ^ 1u)));
    var var_0 = !(!select(!global1.zzw, !(!global1.xxz), false));
    global1 = vec4<bool>(!(!(_wgslsmith_div_i32(93253i, arg_0.a.d) > u_input.e.x)), true, false && arg_0.a.a, select(var_0.x, any(select(var_0.zz, global1.zw, vec2<bool>(true, false))), select(arg_0.a.a, false, false)));
    global2 = array<u32, 32>();
    var_0 = global1.yxy;
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_6(Struct_3(func_1()));
    let var_0 = Struct_2(func_4(func_6(Struct_3(func_4(Struct_1(global0.b, global1.x, vec3<f32>(531f, 901f, global0.c.x), -16959i, -1092f), global0.d, global1.x))), 1i, global0.b), !(!vec3<bool>(global0.b, true, false)), global1.wxz, countOneBits(func_6(Struct_3(Struct_1(true, true, global0.c, -6872i, global0.e))).d) < -(-global0.d | (u_input.a.x ^ -1i)));
    global0 = func_1();
    var var_1 = Struct_3(Struct_1(!(true || all(global1.zyy)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(var_0.a.c.x)), _wgslsmith_f_op_f32(var_0.a.e + 541f))) <= _wgslsmith_f_op_f32(-391f - global0.e), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global0.e, 526f, -2584f), global0.c), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-868f, 1626f, var_0.a.e))), _wgslsmith_div_vec3_f32(vec3<f32>(var_0.a.c.x, var_0.a.c.x, global0.c.x), global0.c)), ~1i, 826f));
    var var_2 = any(vec3<bool>(true, func_5(Struct_3(func_4(var_1.a, global0.d, global1.x)), vec2<bool>(var_1.a.e < var_1.a.e, var_0.c.x), -2147483647i, Struct_1(func_6(Struct_3(Struct_1(false, true, var_0.a.c, var_0.a.d, 1014f))).b, false, vec3<f32>(var_0.a.e, 468f, 956f), firstLeadingBit(var_1.a.d), -1329f)).a, func_5(Struct_3(func_1()), vec2<bool>(true, var_0.b.x), u_input.e.x, var_0.a).b));
    let var_3 = 1454f;
    var var_4 = -func_4(Struct_1(all(select(vec4<bool>(global1.x, false, var_1.a.b, true), vec4<bool>(global1.x, false, false, global0.a), vec4<bool>(var_0.d, false, false, var_1.a.a))), false, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.c.x, var_1.a.e, var_3))), 1i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.c.x) - -1287f)), -1i, false).d;
    global0 = func_4(func_2(), _wgslsmith_clamp_i32(u_input.a.x, 1i >> (reverseBits(select(12252u, 5739u, global1.x)) % 32u), var_0.a.d), global0.a);
    var var_5 = -1i;
    let x = u_input.a;
    s_output = StorageBuffer(select((select(vec4<i32>(2147483647i, 7542i, var_0.a.d, global0.d), vec4<i32>(-1i, var_0.a.d, 0i, -15824i), vec4<bool>(false, var_1.a.b, true, true)) ^ (u_input.e >> (vec4<u32>(1u, 0u, u_input.c.x, 54539u) % vec4<u32>(32u)))) & ~_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.a.d, 0i, u_input.e.x, 41390i), vec4<i32>(var_0.a.d, 16242i, u_input.e.x, 33534i), vec4<i32>(19211i, var_0.a.d, var_1.a.d, global0.d)), vec4<i32>(~var_1.a.d, ~2147483647i, 1i, ~_wgslsmith_sub_i32(-28435i, u_input.a.x)), true), reverseBits(_wgslsmith_add_u32(7785u, 1u)), 14417u, ~vec2<u32>(min(firstTrailingBit(1u), 1u), global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(11321u, 32u)], 32u)]), vec4<u32>(~global2[_wgslsmith_index_u32(73757u, 32u)], 1u, select(~countOneBits(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(60323u, 32u)], 32u)]), 4294967295u, !global1.x), ~17593u));
}

