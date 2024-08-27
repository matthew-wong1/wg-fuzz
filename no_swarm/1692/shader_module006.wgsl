struct Struct_1 {
    a: vec3<u32>,
    b: vec4<bool>,
    c: bool,
    d: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec3<u32>(4294967295u, 0u, 39408u), vec4<bool>(false, true, false, false), true, vec3<u32>(1u, 0u, 24205u)), vec2<f32>(-135f, -349f));

var<private> global1: Struct_2;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: Struct_2) -> u32 {
    global1 = arg_2;
    var var_0 = arg_2.b.x;
    let var_1 = firstLeadingBit(~_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(min(global1.a.d.xx, global1.a.a.zz), arg_2.a.d.zx), 34908u >> (~arg_0.a.a.x % 32u)));
    global0 = Struct_2(Struct_1(arg_0.a.a, global1.a.b, global1.a.c, ~(~global0.a.a) | ~(arg_2.a.d | vec3<u32>(arg_2.a.a.x, 6437u, 59629u))), _wgslsmith_f_op_vec2_f32(arg_0.b + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.b)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.b.x, arg_2.b.x) * global1.b)))));
    let var_2 = !(!global0.a.b.wwz);
    return _wgslsmith_dot_vec3_u32(global1.a.d, ~global0.a.a);
}

fn func_2(arg_0: Struct_1) -> Struct_2 {
    var var_0 = vec4<u32>(~func_3(Struct_2(Struct_1(global1.a.d, vec4<bool>(false, false, true, true), global1.a.b.x, global1.a.a), _wgslsmith_div_vec2_f32(global0.b, vec2<f32>(-1097f, 1053f))), select(!arg_0.b, select(vec4<bool>(false, false, global1.a.c, true), arg_0.b, arg_0.b), !arg_0.b), Struct_2(Struct_1(global1.a.d, global0.a.b, global1.a.c, vec3<u32>(59192u, global1.a.d.x, 0u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-100f, global0.b.x)))), _wgslsmith_clamp_u32(_wgslsmith_div_u32(abs(global0.a.d.x >> (global0.a.a.x % 32u)), 1u), ~4294967295u ^ _wgslsmith_clamp_u32(_wgslsmith_mult_u32(313u, 1u), 0u, global0.a.d.x), 4294967295u), 1u, ~_wgslsmith_div_u32(_wgslsmith_clamp_u32(arg_0.d.x, max(4294967295u, u_input.c), arg_0.d.x), ~4294967295u));
    global1 = Struct_2(global0.a, global0.b);
    var_0 = ~(~(~reverseBits(vec4<u32>(arg_0.d.x, var_0.x, u_input.c, 2706u))));
    global0 = Struct_2(global1.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.b) + global1.b));
    let var_1 = min(min(32339u, _wgslsmith_dot_vec2_u32(var_0.ww, vec2<u32>(36319u, 31337u | global1.a.a.x))), _wgslsmith_mult_u32(_wgslsmith_mod_u32(0u, func_3(Struct_2(global0.a, global1.b), global0.a.b, Struct_2(arg_0, vec2<f32>(-1216f, global1.b.x)))), 22u));
    return Struct_2(Struct_1(min(global1.a.d, max(global1.a.d, vec3<u32>(var_0.x, 0u, 56781u))), !vec4<bool>(true, true, any(arg_0.b), 2245f != global0.b.x), global0.a.c & any(!global1.a.b.xx), var_0.yxz), vec2<f32>(_wgslsmith_f_op_f32(abs(-1206f)), -1242f));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> vec3<u32> {
    global0 = arg_1;
    let var_0 = global0.b.x;
    global0 = func_2(arg_0.a);
    var var_1 = arg_0.a.a.x;
    var var_2 = Struct_1(global0.a.d, global0.a.b, func_2(func_2(Struct_1(global1.a.a, vec4<bool>(arg_1.a.c, false, global1.a.c, global1.a.c), global1.a.b.x, vec3<u32>(2332u, 2346u, global1.a.d.x))).a).a.c, ~vec3<u32>(0u, func_2(Struct_1(arg_0.a.d, vec4<bool>(global1.a.c, true, true, false), false, vec3<u32>(0u, 26111u, u_input.c))).a.a.x, func_3(arg_1, vec4<bool>(global1.a.c, true, global1.a.b.x, false), func_2(global0.a))));
    return ~_wgslsmith_add_vec3_u32(global1.a.d, firstLeadingBit(abs(vec3<u32>(global0.a.d.x, 0u, u_input.c))));
}

fn func_1(arg_0: u32) -> Struct_2 {
    var var_0 = Struct_1(_wgslsmith_mult_vec3_u32(~vec3<u32>(4294967295u, arg_0, u_input.c) << ((~global0.a.d >> (vec3<u32>(global0.a.a.x, u_input.c, arg_0) % vec3<u32>(32u))) % vec3<u32>(32u)), ~func_4(Struct_2(Struct_1(global1.a.d, global0.a.b, global1.a.b.x, global0.a.d), global0.b), func_2(global0.a))), global1.a.b, !all(vec3<bool>(global0.a.a.x == 1u, 0u <= u_input.c, true)), vec3<u32>(func_4(Struct_2(Struct_1(vec3<u32>(0u, global0.a.a.x, 1u), vec4<bool>(global1.a.b.x, global0.a.b.x, false, false), global0.a.b.x, vec3<u32>(75559u, global0.a.d.x, 24740u)), _wgslsmith_f_op_vec2_f32(global1.b + global1.b)), func_2(global0.a)).x, arg_0, arg_0));
    var_0 = global0.a;
    let var_1 = u_input.b.xx;
    global0 = func_2(func_2(global0.a).a);
    var_0 = func_2(global1.a).a;
    return Struct_2(Struct_1(vec3<u32>(_wgslsmith_sub_u32(~var_0.a.x, 13199u), func_4(Struct_2(Struct_1(vec3<u32>(33730u, global0.a.d.x, global0.a.d.x), vec4<bool>(global0.a.b.x, global0.a.b.x, global0.a.c, global1.a.c), global1.a.b.x, global0.a.d), vec2<f32>(global0.b.x, 336f)), Struct_2(global1.a, vec2<f32>(global1.b.x, global0.b.x))).x, 36547u), func_2(global0.a).a.b, select(global0.a.c, global1.a.b.x, _wgslsmith_div_f32(-482f, -338f) > _wgslsmith_f_op_f32(2456f + global1.b.x)), vec3<u32>(_wgslsmith_clamp_u32(19180u, ~30315u, 59304u), ~var_0.d.x, ~reverseBits(1u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.b))) + vec2<f32>(1796f, _wgslsmith_f_op_f32(trunc(232f)))));
}

fn func_5(arg_0: Struct_2) -> vec2<f32> {
    global0 = arg_0;
    var var_0 = vec3<u32>(abs(_wgslsmith_div_u32(~1u, _wgslsmith_dot_vec2_u32(global0.a.d.zx, arg_0.a.d.yz))) ^ arg_0.a.a.x, global1.a.a.x << (6602u % 32u), _wgslsmith_mult_u32(arg_0.a.d.x, 56033u));
    let var_1 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(612f, arg_0.b.x, arg_0.b.x) - vec3<f32>(arg_0.b.x, global0.b.x, global1.b.x))))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.b.x, 415f, global1.b.x), vec3<f32>(-197f, global0.b.x, -540f), global1.a.b.xxz))))))));
    var var_2 = func_2(Struct_1(arg_0.a.a, !(!global1.a.b), global0.a.c, countOneBits(arg_0.a.d))).a.b;
    var var_3 = global1.b.x;
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.b.x)))), global0.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(global0.a, _wgslsmith_f_op_vec2_f32(global1.b * _wgslsmith_f_op_vec2_f32(func_5(func_1(5574u)))));
    var var_1 = ~u_input.b.yy;
    var var_2 = 1459f;
    var_2 = global0.b.x;
    let var_3 = 0i;
    global0 = Struct_2(func_1(~_wgslsmith_add_u32(u_input.c, 5611u)).a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.b) + vec2<f32>(var_0.b.x, global1.b.x)))) + global1.b));
    var var_4 = select(vec2<u32>(_wgslsmith_clamp_u32(1u, reverseBits(_wgslsmith_mult_u32(global1.a.a.x, 69639u)), 4294967295u), _wgslsmith_mod_u32(var_0.a.d.x, _wgslsmith_mod_u32(8798u, firstTrailingBit(global0.a.d.x)))), global0.a.a.xx, true);
    var var_5 = 1u;
    var var_6 = vec4<u32>(~(~4294967295u), ~(~1u), func_4(Struct_2(Struct_1(global1.a.a, var_0.a.b, false, vec3<u32>(4294967295u, 4294967295u, 5976u)), global0.b), Struct_2(func_1(1u).a, var_0.b)).x >> (~22756u % 32u), _wgslsmith_mult_u32(51994u, func_4(func_2(global0.a), func_2(global0.a)).x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-func_2(Struct_1(vec3<u32>(global0.a.d.x, var_4.x, 51568u), vec4<bool>(var_0.a.b.x, var_0.a.b.x, var_0.a.c, false), false, global1.a.d)).b)), vec2<u32>(var_0.a.d.x, 1u), _wgslsmith_f_op_f32(f32(-1f) * -1063f));
}

