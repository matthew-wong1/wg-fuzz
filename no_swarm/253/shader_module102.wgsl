struct Struct_1 {
    a: u32,
    b: f32,
    c: vec3<bool>,
    d: vec3<f32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(-366f, 144f, Struct_1(0u, 1221f, vec3<bool>(false, true, true), vec3<f32>(255f, -1017f, 140f), vec4<f32>(184f, -2541f, 650f, -675f)));

var<private> global1: Struct_3;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: Struct_1) -> vec4<f32> {
    global0 = Struct_2(-672f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a)), _wgslsmith_f_op_f32(max(2168f, arg_2.e.x)))), global0.c);
    global0 = Struct_2(_wgslsmith_f_op_f32(trunc(arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.c.b))), global1.a);
    let var_0 = arg_2.a == 6613u;
    let var_1 = Struct_3(arg_2);
    let var_2 = var_1;
    return global1.a.e;
}

fn func_2(arg_0: i32, arg_1: Struct_2, arg_2: i32) -> bool {
    var var_0 = -2147483647i;
    global1 = Struct_3(arg_1.c);
    var var_1 = !global0.c.c.x;
    var var_2 = Struct_3(Struct_1(0u, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global1.a.d.x, global0.c.e.x))))), vec3<bool>(!any(vec4<bool>(true, arg_1.c.c.x, false, true)), false, global0.c.c.x), _wgslsmith_f_op_vec3_f32(exp2(arg_1.c.d)), _wgslsmith_f_op_vec4_f32(global0.c.e * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(func_3(arg_1.c.e.x, global0.c.e.x, Struct_1(arg_1.c.a, global0.c.b, vec3<bool>(false, global1.a.c.x, true), vec3<f32>(794f, -979f, global1.a.b), vec4<f32>(-109f, -615f, -1323f, global1.a.e.x)))))))));
    var_2 = Struct_3(Struct_1(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(4294967295u, arg_1.c.a)), _wgslsmith_clamp_vec2_u32(abs(vec2<u32>(4294967295u, 0u)), max(vec2<u32>(47485u, 1u), vec2<u32>(15282u, 1u)), _wgslsmith_mod_vec2_u32(vec2<u32>(arg_1.c.a, 43977u), vec2<u32>(25841u, 1u)))), 1563f, var_2.a.c, global1.a.d, vec4<f32>(1797f, global1.a.e.x, _wgslsmith_div_f32(330f, _wgslsmith_f_op_vec4_f32(func_3(global0.a, global1.a.d.x, Struct_1(global1.a.a, global1.a.b, vec3<bool>(arg_1.c.c.x, arg_1.c.c.x, true), global1.a.d, vec4<f32>(1517f, 1630f, -552f, global0.b)))).x), global0.c.d.x)));
    return all(select(select(select(!vec2<bool>(global0.c.c.x, arg_1.c.c.x), vec2<bool>(true, global1.a.c.x), true), global1.a.c.yz, global1.a.c.zz), vec2<bool>(true, global0.c.c.x), !(!(!vec2<bool>(var_2.a.c.x, false)))));
}

fn func_4(arg_0: i32, arg_1: vec4<bool>) -> f32 {
    let var_0 = Struct_3(global0.c);
    global0 = Struct_2(_wgslsmith_f_op_f32(ceil(var_0.a.e.x)), _wgslsmith_div_f32(1634f, _wgslsmith_f_op_f32(-1000f - -310f)), Struct_1(global1.a.a >> ((1u >> (global0.c.a % 32u)) % 32u), _wgslsmith_f_op_f32(-var_0.a.d.x), select(global0.c.c, arg_1.wzw, vec3<bool>(true, !global0.c.c.x, select(arg_1.x, false, false))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(921f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.a.b))), var_0.a.e.x), vec4<f32>(1000f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), 893f, -504f)));
    global0 = Struct_2(_wgslsmith_f_op_f32(min(global1.a.b, _wgslsmith_div_f32(global0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a.e.x - global0.c.b) * 1470f)))), -318f, Struct_1(global0.c.a, global0.a, select(vec3<bool>(global0.c.c.x || true, global1.a.a >= 0u, true), global0.c.c, vec3<bool>(true, true, false)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-910f, global0.c.b, 1000f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(970f, global0.a, 988f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(global0.c.e, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a, 115f, 624f, 1220f)))))));
    var var_1 = vec2<bool>(global0.c.c.x, false);
    global1 = Struct_3(Struct_1(46894u, -529f, select(select(!global1.a.c, select(arg_1.zyw, arg_1.zzz, true), global0.a >= -1618f), vec3<bool>(true, global1.a.c.x && false, true), !(!vec3<bool>(var_1.x, global0.c.c.x, var_0.a.c.x))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec4_f32(func_3(-399f, 168f, Struct_1(var_0.a.a, -1022f, global0.c.c, var_0.a.d, global0.c.e))).xxw, global0.c.d))), vec4<f32>(global1.a.d.x, _wgslsmith_f_op_f32(var_0.a.d.x - _wgslsmith_f_op_f32(exp2(global1.a.d.x))), _wgslsmith_f_op_f32(step(global1.a.e.x, _wgslsmith_f_op_f32(ceil(global0.c.d.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.c.b), var_0.a.b))));
    return global0.b;
}

fn func_1(arg_0: bool, arg_1: vec3<f32>, arg_2: Struct_3) -> Struct_2 {
    global0 = Struct_2(_wgslsmith_f_op_f32(func_4(~_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 9051i, u_input.b.x, -1i), vec4<i32>(u_input.a.x, -4369i, 2147483647i, u_input.b.x)), u_input.b.x), vec4<bool>(false | (global1.a.a >= global1.a.a), arg_2.a.a <= ~global0.c.a, false, !func_2(u_input.a.x, Struct_2(340f, global0.b, Struct_1(34976u, -461f, global0.c.c, global0.c.e.xzz, vec4<f32>(arg_2.a.e.x, arg_1.x, -1128f, 924f))), -42638i)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1.x))))), Struct_1(global0.c.a ^ (global1.a.a << (~arg_2.a.a % 32u)), _wgslsmith_div_f32(-1403f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2807f + arg_1.x) * _wgslsmith_f_op_f32(-arg_1.x))), select(!(!global1.a.c), vec3<bool>(true, !global1.a.c.x, true), select(!arg_2.a.c, !vec3<bool>(arg_0, global1.a.c.x, global0.c.c.x), true)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.c.d) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a.b, global0.b, global0.b) * vec3<f32>(global1.a.d.x, 332f, 1879f))))), vec4<f32>(_wgslsmith_f_op_f32(global1.a.e.x - _wgslsmith_f_op_f32(-arg_2.a.d.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0.b)) - -1331f), global0.c.e.x, -673f)));
    global0 = Struct_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global0.b, global0.c.e.x))))))), -1899f, Struct_1(10287u, _wgslsmith_f_op_f32(ceil(global0.b)), global0.c.c, _wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_f32(f32(-1f) * -430f), 980f, Struct_1(global0.c.a, _wgslsmith_f_op_f32(global0.a * global1.a.e.x), vec3<bool>(true, true, true), vec3<f32>(global0.a, arg_2.a.b, 757f), vec4<f32>(arg_1.x, global0.a, -1402f, global1.a.e.x)))).xwy, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1.a.e))));
    var var_0 = Struct_2(_wgslsmith_f_op_f32(1000f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.x, 162f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(485f + global1.a.e.x)))), -1137f, Struct_1(firstLeadingBit(abs(1u)), -1525f, global0.c.c, vec3<f32>(global0.b, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, global0.b) * arg_2.a.b), 655f), vec4<f32>(_wgslsmith_f_op_f32(-global1.a.d.x), -346f, _wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(min(global1.a.e.x, _wgslsmith_f_op_f32(-1571f + arg_1.x))))));
    var var_1 = Struct_2(arg_1.x, var_0.a, global0.c);
    let var_2 = 44996i;
    return Struct_2(1000f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.a))) + _wgslsmith_f_op_f32(f32(-1f) * -952f)))), var_0.c);
}

fn func_5(arg_0: Struct_2) -> Struct_2 {
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(func_1(any(global0.c.c.yz), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global1.a.b, global1.a.b, global0.b)))), global1.a.d)), Struct_3(global1.a)));
    global0 = func_5(func_1(global0.c.c.x, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.c.d + vec3<f32>(-2297f, global0.b, global0.b))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b, -691f, global1.a.e.x)) * global0.c.d))), Struct_3(global0.c)));
    var var_0 = 49432i;
    let var_1 = global0.c;
    var var_2 = func_5(func_1(select(4294967295u, _wgslsmith_add_u32(1u, 22792u), global0.c.c.x) >= 0u, var_1.d, Struct_3(global0.c))).c;
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(789f, -1000f, global1.a.e.x, global0.b) * var_1.e) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global1.a.e.x, -609f, var_1.e.x, -1114f))))))));
    let var_4 = Struct_3(global1.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-global1.a.d), _wgslsmith_f_op_vec4_f32(abs(func_5(Struct_2(_wgslsmith_f_op_f32(-global0.b), _wgslsmith_div_f32(var_2.e.x, var_2.d.x), func_1(var_1.c.x, vec3<f32>(-663f, var_1.b, 621f), var_4).c)).c.e)), vec3<f32>(var_3.x, var_4.a.e.x, -866f));
}

