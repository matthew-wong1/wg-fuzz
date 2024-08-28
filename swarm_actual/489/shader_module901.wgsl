struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: bool,
    d: vec2<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec2<f32>,
    c: bool,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<f32>,
    d: u32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec4<bool>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> bool {
    global0 = Struct_1(vec4<bool>(any(!select(global0.a, global0.a, global0.d.x)), !any(vec4<bool>(false, global1.x, false, global1.x)), select(false & (global0.c || true), global0.d.x, !(global0.b <= 257f)), !all(global0.a.yww)), global0.b, !(global0.b >= global0.b), vec2<bool>(true, any(global0.a)));
    global0 = Struct_1(vec4<bool>(global1.x, !(!all(global0.a)), true, select(global1.x, !global1.x, true)), 1000f, false, !global0.a.xy);
    let var_0 = firstLeadingBit(select(vec4<u32>(~1378u << ((u_input.b << (0u % 32u)) % 32u), u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 111983u), abs(vec2<u32>(u_input.a, u_input.b))), ~188u), ~countOneBits(vec4<u32>(u_input.a, u_input.a, 0u, 18276u)) & vec4<u32>(u_input.a, 0u, reverseBits(4294967295u), ~u_input.b), global0.a.x));
    return true;
}

fn func_2(arg_0: Struct_2, arg_1: vec4<bool>) -> vec4<u32> {
    global0 = Struct_1(global0.a, 711f, arg_1.x, arg_1.ww);
    let var_0 = global0.c;
    let var_1 = all(!(!(!vec3<bool>(arg_0.c, global1.x, arg_1.x))));
    global0 = Struct_1(!vec4<bool>(true, false, all(arg_1.xzy), !var_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.b.x, global0.b))), true, vec2<bool>(!(!global1.x | func_3()), !arg_1.x));
    global0 = Struct_1(vec4<bool>(!arg_0.c, ((u_input.b >> (11332u % 32u)) < (u_input.a & u_input.a)) || false, any(vec3<bool>(arg_1.x, true, !var_1)), !var_1), _wgslsmith_f_op_f32(-543f - -207f), u_input.a > u_input.b, select(!select(vec2<bool>(false, var_1), select(vec2<bool>(false, true), vec2<bool>(var_1, arg_1.x), vec2<bool>(arg_1.x, global1.x)), true), vec2<bool>(any(vec4<bool>(true, false, global0.d.x, arg_1.x)), global1.x), global1.x));
    return ~vec4<u32>(~_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b, 19193u), vec2<u32>(u_input.b, u_input.a) ^ vec2<u32>(u_input.a, u_input.b)), 23548u | u_input.b, select(abs(u_input.b), _wgslsmith_mult_u32(0u, 0u), !global0.d.x || global0.c), min(reverseBits(~10172u), firstLeadingBit(_wgslsmith_mod_u32(0u, u_input.b))));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec4<i32>) -> Struct_1 {
    return Struct_1(vec4<bool>(all(!vec2<bool>(arg_1.a.x, false)), true, !arg_1.d.x, arg_2.c), _wgslsmith_f_op_f32(1194f + -842f), !arg_2.c, select(!vec2<bool>(any(arg_1.a.xwx), !global1.x), !global0.a.yw, select(select(global1.xx, !vec2<bool>(global0.c, arg_2.c), true), !global1.zx, arg_1.a.zx)));
}

fn func_1(arg_0: f32) -> i32 {
    global1 = global0.a;
    global0 = func_4(_wgslsmith_div_vec4_u32((~vec4<u32>(22976u, 1u, u_input.a, u_input.b) << (_wgslsmith_add_vec4_u32(vec4<u32>(39548u, u_input.a, u_input.b, 1u), vec4<u32>(19366u, 4294967295u, u_input.a, u_input.b)) % vec4<u32>(32u))) << (~(~vec4<u32>(28312u, u_input.b, u_input.b, u_input.b)) % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(70599u, u_input.a, 34644u, 16861u), func_2(Struct_2(-11485i, vec2<f32>(arg_0, 175f), global0.a.x, vec4<f32>(arg_0, arg_0, arg_0, global0.b)), vec4<bool>(true, global1.x, true, true))), abs(vec4<u32>(u_input.a, u_input.a, 23159u, u_input.a) >> (vec4<u32>(0u, u_input.b, u_input.b, u_input.b) % vec4<u32>(32u))))), Struct_1(vec4<bool>(global1.x, !(global1.x && global1.x), !all(global0.a), false), arg_0, global0.d.x, global0.a.yy), Struct_2(i32(-1i) * -2147483647i, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.b, _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, -168f)), !all(vec2<bool>(global0.c, global1.x)))), false, vec4<f32>(-391f, _wgslsmith_f_op_f32(floor(-141f)), global0.b, _wgslsmith_f_op_f32(-799f * -1652f))), reverseBits(firstLeadingBit(countOneBits(~vec4<i32>(18255i, -12286i, 2147483647i, -8657i)))));
    let var_0 = vec4<i32>(19904i, min(min(-(~65133i), 2147483647i), ~27467i), ~(-2147483647i), _wgslsmith_add_i32(2147483647i, select(9188i, 2147483647i, false) & -1i) << (43971u % 32u));
    var var_1 = global0.a.zx;
    var var_2 = all(func_4(vec4<u32>(u_input.b, u_input.b >> (func_2(Struct_2(-23344i, vec2<f32>(arg_0, arg_0), true, vec4<f32>(global0.b, global0.b, 1312f, 974f)), global0.a).x % 32u), _wgslsmith_mult_u32(_wgslsmith_mult_u32(0u, u_input.a), ~4294967295u), _wgslsmith_mult_u32(firstLeadingBit(u_input.a), abs(22683u))), Struct_1(select(global0.a, !global0.a, !global0.a.x), 265f, global1.x, !(!global0.a.xw)), Struct_2(~1i, vec2<f32>(global0.b, _wgslsmith_f_op_f32(step(arg_0, arg_0))), false, vec4<f32>(_wgslsmith_f_op_f32(-arg_0), global0.b, arg_0, _wgslsmith_div_f32(arg_0, 2134f))), vec4<i32>(-2147483647i, ~var_0.x, var_0.x, 0i | -var_0.x)).a.xyy);
    return abs(var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 0u;
    let var_1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.b), _wgslsmith_f_op_f32(exp2(global0.b)))), _wgslsmith_f_op_f32(-global0.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-323f, 769f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(global0.b, -2185f)), 778f, global0.d.x | false))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-814f * global0.b), 686f, _wgslsmith_f_op_f32(min(-674f, global0.b)), -1975f) * vec4<f32>(_wgslsmith_div_f32(-264f, global0.b), _wgslsmith_f_op_f32(global0.b * -922f), _wgslsmith_div_f32(global0.b, 846f), global0.b)))));
    let var_2 = vec4<i32>(_wgslsmith_add_i32(0i, -35745i), _wgslsmith_sub_i32(_wgslsmith_add_i32(_wgslsmith_sub_i32(func_1(var_1.x), _wgslsmith_sub_i32(24455i, -1058i)), -39607i), 1368i), _wgslsmith_dot_vec2_i32(-(~(vec2<i32>(-1i, -23015i) >> (vec2<u32>(1u, var_0) % vec2<u32>(32u)))), vec2<i32>(-35983i, _wgslsmith_div_i32(1i, firstLeadingBit(-46990i)))), -1i);
    var var_3 = ~(_wgslsmith_sub_vec4_u32(vec4<u32>(30096u, 25044u, 18330u, u_input.a), vec4<u32>(var_0, 33805u, var_0, var_0)) | ~vec4<u32>(0u, 1u, u_input.a, 26648u)) ^ _wgslsmith_div_vec4_u32(~firstLeadingBit(vec4<u32>(var_0, var_0, 4294967295u, var_0) << (vec4<u32>(var_0, 0u, 12069u, u_input.b) % vec4<u32>(32u))), ~(~_wgslsmith_add_vec4_u32(vec4<u32>(0u, u_input.a, 15533u, 4294967295u), vec4<u32>(4294967295u, 64221u, 1u, var_0))));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-718f * -728f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(var_1.x)), -1205f))))));
    var var_5 = 0i;
    let x = u_input.a;
    s_output = StorageBuffer(~var_0, var_3.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_1 + _wgslsmith_f_op_vec4_f32(-var_1)) * vec4<f32>(-1311f, _wgslsmith_f_op_f32(335f * -1000f), _wgslsmith_f_op_f32(sign(-123f)), var_1.x))), _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(min(1u, 29443u), firstTrailingBit(13496u), _wgslsmith_mult_u32(4294967295u, var_3.x)), 4294967295u, 35700u) << (_wgslsmith_dot_vec3_u32(select(var_3.xwz, _wgslsmith_sub_vec3_u32(var_3.yzw, var_3.zwy), vec3<bool>(true, global0.a.x, global0.d.x)), vec3<u32>(_wgslsmith_add_u32(var_0, 4294967295u), ~0u, var_3.x)) % 32u), -select(abs(firstLeadingBit(vec3<i32>(-1i, var_2.x, var_2.x))), min(vec3<i32>(0i, 1i, 14487i), vec3<i32>(1i, 11508i, 6753i)), !func_4(vec4<u32>(u_input.b, u_input.a, var_0, 0u), Struct_1(global0.a, global0.b, true, global0.d), Struct_2(-55133i, vec2<f32>(global0.b, var_1.x), true, var_1), var_2).a.zxz));
}

