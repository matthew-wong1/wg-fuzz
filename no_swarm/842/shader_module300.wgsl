struct Struct_1 {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: u32,
    c: f32,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<u32>,
    d: f32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec2<i32>, arg_3: i32) -> vec4<u32> {
    let var_0 = _wgslsmith_div_vec2_u32(vec2<u32>(~(~u_input.e | firstTrailingBit(83923u)), select(firstLeadingBit(arg_1.b), u_input.b.x, global0.x & true) ^ ~_wgslsmith_div_u32(arg_0.b.x, 15867u)), vec2<u32>(~(~1u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.b.x, 4294967295u, 0u) & u_input.b, reverseBits(u_input.b))));
    let var_1 = arg_1;
    let var_2 = u_input.b.x;
    let var_3 = false;
    global0 = select(vec3<bool>(false, !all(!vec4<bool>(false, global0.x, false, false)), all(!(!vec4<bool>(false, global0.x, false, global0.x)))), vec3<bool>(!(!global0.x), var_3, true), false);
    return vec4<u32>(max(31095u, _wgslsmith_div_u32(~(~u_input.e), 1u)), ~1u, 13705u, 25374u);
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(round(1370f)), 948f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(234f, -451f), 1f, true)) - _wgslsmith_f_op_f32(f32(-1f) * -165f))), u_input.c, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -436f))), vec4<u32>(~_wgslsmith_dot_vec4_u32(func_3(Struct_1(vec2<i32>(u_input.d, 1i), vec2<u32>(93552u, u_input.c), vec3<f32>(1063f, 1000f, -925f)), Struct_2(vec3<f32>(821f, -707f, 1727f), 46328u, 2533f, vec4<u32>(56563u, u_input.c, u_input.b.x, 12674u)), vec2<i32>(u_input.d, u_input.d), u_input.d), vec4<u32>(101050u, 9021u, 1u, u_input.e) | vec4<u32>(1u, u_input.b.x, u_input.e, u_input.e)), u_input.b.x, u_input.a, _wgslsmith_clamp_u32(1u, ~(u_input.a & 78377u), u_input.c)));
    global0 = select(select(!select(vec3<bool>(true, true, true), select(vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(global0.x, global0.x, true), true), true), vec3<bool>(false, all(!vec3<bool>(false, global0.x, false)), all(global0.yz)), !vec3<bool>(-2147483647i != u_input.d, any(vec2<bool>(global0.x, global0.x)), global0.x)), !select(vec3<bool>(global0.x != true, true, global0.x), vec3<bool>(u_input.d == u_input.d, 1u == var_0.d.x, true), true), select(vec3<bool>(global0.x | all(vec2<bool>(global0.x, global0.x)), all(vec4<bool>(global0.x, false, global0.x, false)), global0.x), !vec3<bool>(select(global0.x, true, true), var_0.a.x <= -1000f, global0.x), vec3<bool>(global0.x, true, true)));
    let var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(-2592f)), _wgslsmith_f_op_f32(var_0.c * _wgslsmith_f_op_f32(exp2(var_0.a.x))), -421f) - _wgslsmith_f_op_vec3_f32(floor(var_0.a))), abs(var_0.d.x | min(u_input.a, ~u_input.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -658f), _wgslsmith_clamp_vec4_u32(var_0.d, countOneBits(~countOneBits(var_0.d)), ~(~abs(vec4<u32>(4294967295u, u_input.c, 33215u, u_input.b.x)))));
    let var_2 = var_0;
    let var_3 = Struct_1(_wgslsmith_div_vec2_i32(vec2<i32>(1i, _wgslsmith_div_i32(7623i, _wgslsmith_sub_i32(-1i, -49253i))), vec2<i32>(-1i, u_input.d)), var_1.d.yy, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_2.c + 1427f), _wgslsmith_f_op_f32(f32(-1f) * -1398f), var_2.c) - vec3<f32>(_wgslsmith_f_op_f32(var_0.a.x * var_0.c), -536f, var_1.a.x))));
    return var_3;
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: vec4<i32>, arg_3: Struct_1) -> u32 {
    global0 = !(!select(!vec3<bool>(global0.x, false, true), select(select(vec3<bool>(global0.x, true, true), vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(false, global0.x, true)), select(vec3<bool>(global0.x, true, global0.x), vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(false, global0.x, true)), select(vec3<bool>(global0.x, true, true), vec3<bool>(false, false, global0.x), vec3<bool>(false, global0.x, global0.x))), true));
    global0 = select(vec3<bool>(!(2110f == arg_0.x), !(!(!global0.x)), true), !select(select(select(vec3<bool>(global0.x, true, global0.x), vec3<bool>(true, false, global0.x), true), vec3<bool>(global0.x, global0.x, true), true & global0.x), select(vec3<bool>(false, global0.x, true), vec3<bool>(true, true, false), true), select(select(vec3<bool>(true, false, global0.x), vec3<bool>(global0.x, false, global0.x), vec3<bool>(false, false, true)), select(vec3<bool>(global0.x, true, global0.x), vec3<bool>(false, false, global0.x), false), vec3<bool>(global0.x, true, true))), !(!select(vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(true, global0.x, true), true)));
    var var_0 = countOneBits(~(~vec4<u32>(35096u, 44367u, arg_1.d.x, 52300u) >> (firstLeadingBit(arg_1.d) % vec4<u32>(32u)))) & ~vec4<u32>(u_input.e, min(_wgslsmith_dot_vec3_u32(arg_1.d.zxz, u_input.b), ~arg_1.d.x), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_3.b.x, 4294967295u), vec2<u32>(arg_1.d.x, 1u)), u_input.c);
    let var_1 = global0.x;
    var_0 = min(~firstLeadingBit(abs(arg_1.d)), ~vec4<u32>(reverseBits(_wgslsmith_sub_u32(1u, 1u)), arg_3.b.x, 4631u, ~(~59250u)));
    return arg_1.d.x;
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: vec4<bool>, arg_3: Struct_2) -> f32 {
    let var_0 = 30783i;
    global0 = select(!arg_2.xyw, select(arg_2.ywy, vec3<bool>(true, global0.x, select(any(arg_2), true, true)), true), vec3<bool>(all(arg_2.wxw), all(!(!global0.xy)), global0.x));
    let var_1 = ~35347u;
    let var_2 = select(~0u, max(_wgslsmith_mult_u32(~arg_1.d.x, 4294967295u), func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.c, -1231f, -344f)) * arg_1.a), Struct_2(vec3<f32>(-983f, arg_3.a.x, arg_3.a.x), 4294967295u >> (0u % 32u), _wgslsmith_f_op_f32(f32(-1f) * -2047f), ~vec4<u32>(31134u, u_input.e, arg_3.b, arg_3.b)), vec4<i32>(var_0, 30434i, 79987i, var_0) << (_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 2674u, 4294967295u, arg_3.b), arg_1.d) % vec4<u32>(32u)), func_2())), global0.x);
    return -905f;
}

fn func_5(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: u32, arg_3: vec3<i32>) -> bool {
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(860f, arg_0.c, arg_0.c) - vec3<f32>(arg_1.x, 117f, arg_0.c))))), ~_wgslsmith_mod_u32(0u, 6520u) & _wgslsmith_sub_u32(~max(u_input.a, u_input.b.x), ~arg_0.d.x), -1696f, arg_0.d);
    var var_1 = -156f;
    global0 = select(!(!(!vec3<bool>(global0.x, false, global0.x))), vec3<bool>(!all(select(vec3<bool>(global0.x, false, global0.x), vec3<bool>(true, global0.x, false), vec3<bool>(true, false, false))), true, !any(vec4<bool>(true, true, true, true))), false);
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c));
    var_1 = arg_1.x;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !select(vec3<bool>(!global0.x == false, select(true, global0.x, any(vec3<bool>(true, true, true))), true & (u_input.b.x > 4294967295u)), vec3<bool>(true, global0.x, global0.x), func_5(Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(608f, -1362f, 1000f)), reverseBits(u_input.a), -1000f, countOneBits(vec4<u32>(4294967295u, u_input.a, u_input.a, 4294967295u))), vec4<f32>(_wgslsmith_f_op_f32(func_1(global0.xx, Struct_2(vec3<f32>(1167f, 117f, -1377f), u_input.b.x, -1625f, vec4<u32>(78941u, 4294967295u, u_input.e, u_input.c)), vec4<bool>(global0.x, true, global0.x, global0.x), Struct_2(vec3<f32>(-1000f, 932f, 556f), u_input.b.x, 1622f, vec4<u32>(17658u, 45590u, 2621u, u_input.c)))), _wgslsmith_f_op_f32(-2329f + 734f), _wgslsmith_div_f32(217f, -333f), -1692f), u_input.a, vec3<i32>(1i, -u_input.d, -38857i)));
    let var_0 = u_input.c;
    global0 = !select(select(select(!vec3<bool>(global0.x, false, false), !vec3<bool>(false, global0.x, global0.x), all(vec3<bool>(global0.x, global0.x, global0.x))), vec3<bool>(true, u_input.d <= 4974i, global0.x), global0.x), select(select(vec3<bool>(true, true, true), vec3<bool>(false, global0.x, true), global0.x), select(vec3<bool>(true, false, true), vec3<bool>(true, false, global0.x), true), global0.x), !vec3<bool>(global0.x, any(vec3<bool>(false, global0.x, global0.x)), true));
    let var_1 = select(select(min(vec3<i32>(u_input.d, -1i, u_input.d) >> (max(vec3<u32>(u_input.a, var_0, var_0), vec3<u32>(4294967295u, u_input.e, u_input.a)) % vec3<u32>(32u)), vec3<i32>(8730i | u_input.d, u_input.d, _wgslsmith_dot_vec2_i32(vec2<i32>(18665i, u_input.d), vec2<i32>(u_input.d, u_input.d)))), abs(-(vec3<i32>(u_input.d, u_input.d, 5372i) | vec3<i32>(-1i, -1i, 40227i))), select(select(vec3<bool>(true, global0.x, global0.x), vec3<bool>(global0.x, global0.x, false), global0.x), vec3<bool>(true, global0.x | false, global0.x), false)), ~vec3<i32>(-12838i, -1i, min(2147483647i, ~64233i)), vec3<bool>(global0.x, global0.x, !(true || global0.x)));
    global0 = vec3<bool>(global0.x, !all(!vec2<bool>(global0.x, global0.x)), all(!select(select(vec3<bool>(global0.x, false, true), vec3<bool>(true, global0.x, global0.x), vec3<bool>(false, global0.x, global0.x)), vec3<bool>(true, global0.x, global0.x), vec3<bool>(global0.x, global0.x, true))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(u_input.d, u_input.d), firstLeadingBit(~(~45161u)), vec3<u32>(firstTrailingBit(~62542u), abs(var_0), 4294967295u), 958f, ~(u_input.b.zx ^ u_input.b.xy));
}

