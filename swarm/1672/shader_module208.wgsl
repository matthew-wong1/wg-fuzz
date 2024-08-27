struct Struct_1 {
    a: i32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<bool>,
    c: vec2<f32>,
    d: vec4<f32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: vec4<bool>,
    d: Struct_2,
    e: vec4<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(1i, Struct_1(0i, vec4<f32>(-564f, 729f, 281f, 701f)), vec4<bool>(false, true, false, false), Struct_2(384f, vec4<bool>(false, true, true, false), vec2<f32>(1436f, 295f), vec4<f32>(654f, -1728f, 338f, -1042f)), vec4<i32>(-44809i, 1i, 1i, i32(-2147483648)));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1) -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(arg_1.b.wx * global0.b.b.wx);
    global0 = arg_0;
    let var_1 = ~(-u_input.a.x) ^ _wgslsmith_sub_i32(arg_1.a, -1i);
    var var_2 = arg_0.d.b;
    var_0 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(166f))))), 339f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.x - arg_1.b.x)))));
    return 4294967295u != u_input.b;
}

fn func_2(arg_0: u32) -> Struct_2 {
    global0 = Struct_3(-2147483647i, Struct_1(_wgslsmith_mod_i32(0i, global0.b.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.d.d) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1582f, 413f, global0.d.d.x, 485f))))), vec4<bool>(global0.c.x, func_3(Struct_3(global0.e.x, global0.b, vec4<bool>(global0.d.b.x, false, true, global0.d.b.x), global0.d, vec4<i32>(-50489i, 56987i, -17232i, -1i)), global0.b) == (false | !global0.c.x), global0.c.x, true), global0.d, ~vec4<i32>(-1i, 0i, abs(u_input.a.x), _wgslsmith_clamp_i32(~global0.e.x, 3375i, 1i)));
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-2730f * global0.d.c.x))), 397f, -103f, _wgslsmith_div_f32(global0.b.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.b.b.x), global0.d.d.x)));
    var var_1 = vec2<u32>(~arg_0, _wgslsmith_dot_vec4_u32(vec4<u32>(~38258u, arg_0, arg_0 | u_input.b, 0u), _wgslsmith_mult_vec4_u32(countOneBits(vec4<u32>(arg_0, arg_0, u_input.b, 4294967295u)), select(vec4<u32>(arg_0, arg_0, 142175u, 4294967295u), vec4<u32>(u_input.b, 19268u, arg_0, u_input.b), global0.d.b))) ^ _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(24636u, 4294967295u, u_input.b, u_input.b)), ~vec4<u32>(arg_0, arg_0, 41191u, 68246u)));
    var var_2 = true == (false != (firstTrailingBit(u_input.b) < 17699u));
    let var_3 = global0.d;
    return global0.d;
}

fn func_4(arg_0: i32, arg_1: vec4<i32>, arg_2: vec2<f32>, arg_3: Struct_2) -> Struct_3 {
    var var_0 = vec2<i32>(-1i) * -(-_wgslsmith_clamp_vec2_i32(global0.e.zz, arg_1.wy, vec2<i32>(-2147483647i, arg_1.x)) >> (~(~vec2<u32>(4294967295u, 35158u)) % vec2<u32>(32u)));
    var var_1 = Struct_4(global0.b, Struct_3(~(-(-27319i >> (u_input.b % 32u))), Struct_1(-2147483647i, global0.b.b), select(arg_3.b, vec4<bool>(!arg_3.b.x, true, func_2(u_input.b).b.x, global0.d.b.x), false), arg_3, arg_1));
    global0 = Struct_3(25418i, var_1.a, var_1.b.c, Struct_2(_wgslsmith_div_f32(arg_2.x, arg_3.d.x), !func_2(u_input.b).b, vec2<f32>(arg_3.c.x, arg_3.c.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_3.d))), select(var_1.b.e, arg_1, true));
    let var_2 = _wgslsmith_div_vec3_u32(vec3<u32>(~(~u_input.b & max(u_input.b, 72191u)), ~_wgslsmith_sub_u32(u_input.b, u_input.b), u_input.b), _wgslsmith_mult_vec3_u32(~(~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, u_input.b, 1u), vec3<u32>(1u, u_input.b, 22061u))), vec3<u32>(~(~u_input.b), 1u, u_input.b)));
    var var_3 = u_input.b;
    return var_1.b;
}

fn func_1() -> Struct_2 {
    global0 = func_4(u_input.a.x ^ u_input.a.x, global0.e, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.b.b.xz * vec2<f32>(global0.d.c.x, -680f)) + _wgslsmith_f_op_vec2_f32(min(global0.b.b.xz, global0.d.d.wx))))))), func_2(_wgslsmith_div_u32(~_wgslsmith_div_u32(19732u, 44763u), u_input.b)));
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(sign(407f)), func_2(_wgslsmith_clamp_u32(~select(u_input.b, 1u, true), ~u_input.b, ~_wgslsmith_clamp_u32(u_input.b, 0u, u_input.b))).c.x, global0.d.a);
    global0 = Struct_3(26537i, func_4(2147483647i, -global0.e, _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.b.b.x, _wgslsmith_f_op_f32(-var_0.x)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, var_0.x), vec2<f32>(-275f, var_0.x)) - func_4(1i, global0.e, vec2<f32>(445f, var_0.x), global0.d).d.d.zw)), global0.d).b, vec4<bool>((func_4(global0.a, vec4<i32>(-2147483647i, -1i, -1i, global0.b.a), vec2<f32>(356f, 1000f), global0.d).a == -23475i) | true, func_3(Struct_3(1i, global0.b, select(vec4<bool>(false, false, false, global0.d.b.x), vec4<bool>(global0.d.b.x, true, global0.d.b.x, global0.d.b.x), global0.c.x), global0.d, vec4<i32>(-20170i, global0.b.a, u_input.a.x, u_input.a.x) | global0.e), func_4(-u_input.a.x, min(global0.e, global0.e), _wgslsmith_f_op_vec2_f32(global0.b.b.wz - var_0.zx), func_2(61525u)).b), !global0.c.x, true), global0.d, vec4<i32>(~(-1i), -6995i, _wgslsmith_sub_i32(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(2147483647i, global0.e.x), global0.e.x << (4454u % 32u), u_input.a.x), -1i), -select(select(global0.b.a, -22485i, global0.d.b.x), abs(-2147483647i), u_input.b != u_input.b)));
    var var_1 = _wgslsmith_f_op_f32(-947f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(max(-1000f, -856f)))) > 342f;
    var var_2 = func_4(~_wgslsmith_sub_i32(_wgslsmith_mult_i32(u_input.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-46265i, -2147483647i), vec2<i32>(-52193i, u_input.a.x))), 1i), -(vec4<i32>(global0.e.x, max(64713i, 85751i), reverseBits(28153i), -u_input.a.x) & (global0.e & global0.e)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1039f, 466f) * var_0.xy))) + var_0.xx)), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.d.c.x, var_0.x) + _wgslsmith_f_op_f32(-340f + 2102f))), select(global0.c, !vec4<bool>(true, false, true, global0.d.b.x), global0.c), _wgslsmith_f_op_vec2_f32(step(var_0.zz, vec2<f32>(_wgslsmith_f_op_f32(sign(-1052f)), _wgslsmith_f_op_f32(min(-1937f, -1000f))))), global0.b.b)).d;
    return func_4(0i, _wgslsmith_add_vec4_i32(-countOneBits(vec4<i32>(global0.a, u_input.a.x, 2147483647i, u_input.a.x)), global0.e) & vec4<i32>(-(u_input.a.x | 1i), 7567i, -2147483647i, 1i), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1058f, 864f)), func_4(global0.a, ~countOneBits(global0.e >> (vec4<u32>(u_input.b, 4294967295u, u_input.b, u_input.b) % vec4<u32>(32u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(276f, -656f)))), global0.d).d).d;
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: vec4<i32>, arg_3: Struct_4) -> i32 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(-554f - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0.b.b.x + _wgslsmith_f_op_f32(ceil(global0.b.b.x)))))), func_4(max(_wgslsmith_clamp_i32(43099i, _wgslsmith_dot_vec2_i32(arg_3.b.e.wy, vec2<i32>(arg_3.b.a, global0.b.a)), arg_2.x), global0.e.x), select(firstTrailingBit(vec4<i32>(u_input.a.x, 3668i, -80324i, u_input.a.x)), -arg_3.b.e ^ vec4<i32>(arg_3.a.a, -4112i, -21472i, -50376i), func_4(56670i, vec4<i32>(arg_2.x, u_input.a.x, 1i, global0.a), _wgslsmith_f_op_vec2_f32(exp2(global0.b.b.yy)), arg_1).c), vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_0.x - 108f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-582f + arg_0.x)))), global0.d).d.b, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(func_4(-6525i, arg_2, _wgslsmith_f_op_vec2_f32(arg_3.b.b.b.zz + vec2<f32>(-129f, -2004f)), func_2(1554u)).b.b.ww, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-arg_1.c))), global0.d.b.wx)))), arg_1.d);
    var var_1 = global0.b;
    let var_2 = global0.b;
    var_1 = global0.b;
    var_1 = global0.b;
    return min(1i, (i32(-1i) * -1i) ^ var_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.d;
    let var_1 = ~(u_input.b >> (max(u_input.b, _wgslsmith_div_u32(~u_input.b, 4294967295u)) % 32u));
    global0 = Struct_3(u_input.a.x, Struct_1(func_5(_wgslsmith_f_op_vec3_f32(-var_0.d.wyw), func_1(), global0.e, Struct_4(func_4(1i, vec4<i32>(u_input.a.x, 2147483647i, 2147483647i, global0.e.x), vec2<f32>(-444f, 627f), Struct_2(var_0.d.x, var_0.b, global0.b.b.yw, vec4<f32>(var_0.d.x, 1000f, var_0.d.x, -1602f))).b, Struct_3(6667i, global0.b, vec4<bool>(true, var_0.b.x, global0.d.b.x, global0.d.b.x), Struct_2(var_0.a, vec4<bool>(global0.d.b.x, global0.c.x, true, false), vec2<f32>(-1127f, -542f), global0.d.d), vec4<i32>(0i, u_input.a.x, 30606i, u_input.a.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(var_0.d))) * global0.d.d)), vec4<bool>(true, true || !func_4(53715i, global0.e, vec2<f32>(var_0.a, var_0.a), Struct_2(-1084f, vec4<bool>(true, var_0.b.x, global0.d.b.x, false), var_0.c, vec4<f32>(var_0.a, -1068f, 770f, var_0.d.x))).d.b.x, true, all(vec2<bool>(true, true))), func_2(~abs(~var_1)), ~global0.e);
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(101f, var_0.c.x, -1000f)) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(-501f, var_0.c.x, global0.b.b.x), vec3<f32>(-338f, 1437f, global0.d.a))))) * var_0.d.xwx) * _wgslsmith_f_op_vec3_f32(global0.d.d.wyz - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a - 113f)), global0.b.b.x, -2729f)));
    global0 = Struct_3(countOneBits(global0.b.a), func_4(min(14941i, 1i), global0.e, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.d.c.x, var_2.x) + global0.d.d.ww) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_2.x, var_2.x))))), Struct_2(-580f, vec4<bool>(global0.d.b.x, func_4(global0.e.x, global0.e, global0.d.c, global0.d).d.b.x, all(global0.c), func_3(Struct_3(-1i, global0.b, vec4<bool>(true, false, var_0.b.x, var_0.b.x), global0.d, global0.e), Struct_1(global0.e.x, vec4<f32>(var_0.d.x, -816f, 318f, -1066f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.b.b.x, -1344f) * global0.d.d.yx)), global0.b.b)).b, select(!var_0.b, vec4<bool>(var_0.b.x, true, !(var_1 != 1338u), true), !(!vec4<bool>(global0.d.b.x, global0.d.b.x, global0.d.b.x, global0.d.b.x))), Struct_2(var_0.a, var_0.b, _wgslsmith_f_op_vec2_f32(-var_0.c), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, var_2.x, var_2.x, var_2.x) * vec4<f32>(var_2.x, -2508f, var_2.x, var_0.d.x))))), global0.e);
    let var_3 = vec4<bool>(!var_0.b.x, any(global0.c), func_3(Struct_3(u_input.a.x, Struct_1(global0.e.x ^ u_input.a.x, global0.b.b), !(!var_0.b), func_2(~3335u), global0.e), Struct_1(global0.a, vec4<f32>(_wgslsmith_f_op_f32(-var_0.d.x), _wgslsmith_f_op_f32(ceil(-293f)), _wgslsmith_f_op_f32(min(var_2.x, global0.b.b.x)), _wgslsmith_f_op_f32(-202f - var_2.x)))), var_0.b.x);
    var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c.x, 384f, global0.d.d.x) * _wgslsmith_f_op_vec3_f32(trunc(global0.b.b.yyw)));
    var_2 = vec3<f32>(_wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(412f, var_0.c.x, false)), var_2.x) - 374f)), var_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_2.x + var_0.d.x))) - var_2.x) - 139f));
    let var_4 = vec3<f32>(var_2.x, func_4(countOneBits(_wgslsmith_add_i32(-37986i, global0.b.a)), vec4<i32>(max(u_input.a.x, global0.e.x) >> (u_input.b % 32u), -49238i, _wgslsmith_sub_i32(max(-1i, u_input.a.x), ~global0.e.x), global0.e.x), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1147f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -129f))), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -211f) * 1603f), func_4(-2147483647i, select(vec4<i32>(u_input.a.x, 0i, u_input.a.x, u_input.a.x), global0.e, var_0.b), _wgslsmith_div_vec2_f32(var_2.zx, var_0.d.ww), Struct_2(var_2.x, var_0.b, vec2<f32>(1000f, -1000f), vec4<f32>(var_0.c.x, -682f, 1185f, var_0.d.x))).d.b, _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1000f, 376f))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(var_0.d, global0.d.d)))))).d.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.b.b.x), _wgslsmith_f_op_f32(select(1000f, 376f, false)))) * func_2(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 70488u, 4294967295u), vec3<u32>(25446u, 15479u, u_input.b))).a)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -699f), _wgslsmith_f_op_f32(-var_4.x), reverseBits(~(u_input.b << (_wgslsmith_mult_u32(var_1, var_1) % 32u))), 1u);
}

