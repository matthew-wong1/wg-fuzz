struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec4<f32>,
    d: u32,
    e: vec2<i32>,
}

struct Struct_3 {
    a: bool,
    b: vec2<bool>,
    c: vec3<bool>,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: vec2<bool>,
    d: Struct_3,
    e: Struct_3,
}

struct Struct_5 {
    a: vec4<i32>,
    b: f32,
    c: Struct_4,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: bool;

var<private> global2: Struct_4;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec3<bool>, arg_1: vec4<i32>, arg_2: u32, arg_3: u32) -> vec2<bool> {
    return select(arg_0.zz, global2.d.c.xy, global2.e.b.x);
}

fn func_4(arg_0: Struct_5, arg_1: vec2<bool>) -> bool {
    var var_0 = Struct_1(countOneBits(1i) & _wgslsmith_sub_i32(u_input.b, ~min(-27427i, 1i)));
    let var_1 = Struct_1(var_0.a);
    var var_2 = vec3<bool>(true, !arg_0.c.d.c.x, global2.e.c.x | !arg_0.c.e.c.x);
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.b, -112f) + -1103f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(495f, _wgslsmith_f_op_f32(arg_0.b * -912f))) * arg_0.b), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(861f, arg_0.b)), -121f));
    var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(var_3.x, arg_0.b, false)), _wgslsmith_f_op_f32(-arg_0.b), _wgslsmith_f_op_f32(arg_0.b + var_3.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1401f, -903f, var_3.x) * _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b, var_3.x, arg_0.b) - vec3<f32>(var_3.x, -827f, arg_0.b)))), arg_1.x)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_3.x, 549f, -751f), vec3<f32>(var_3.x, var_3.x, 360f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-324f, 130f, var_3.x))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-667f, 728f, arg_0.b)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_3.x, arg_0.b, 393f))), !arg_0.c.c.x))))));
    return true;
}

fn func_2(arg_0: vec4<u32>, arg_1: f32) -> vec4<i32> {
    var var_0 = Struct_3(func_4(Struct_5((u_input.c & u_input.c) >> (vec4<u32>(44697u, arg_0.x, global2.b, 4294967295u) % vec4<u32>(32u)), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(869f, arg_1))), Struct_4(global2.d.d, reverseBits(u_input.a.x), select(vec2<bool>(true, global2.c.x), vec2<bool>(global2.e.a, true), vec2<bool>(false, global2.c.x)), global2.e, global2.d)), select(func_3(global2.e.c, -vec4<i32>(u_input.b, global2.a.a, -43226i, 49883i), arg_0.x >> (global2.b % 32u), 1u), func_3(!global2.e.c, vec4<i32>(global2.d.d.a, -1i, -1i, global2.d.d.a), global2.b >> (15508u % 32u), 1u), vec2<bool>(false, global0.a <= u_input.c.x))), vec2<bool>(func_4(Struct_5(u_input.c, arg_1, Struct_4(global2.e.d, 4294967295u, vec2<bool>(global2.e.a, global2.c.x), global2.e, global2.e)), vec2<bool>(true, global2.e.a)), !global2.c.x), global2.d.c, Struct_1(_wgslsmith_clamp_i32(firstLeadingBit(max(1i, 2147483647i)), -10573i, _wgslsmith_sub_i32(global2.d.d.a, abs(global2.a.a)))));
    let var_1 = global2.e.d;
    let var_2 = global2.d.c;
    global0 = global2.e.d;
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1417f, arg_1) - vec2<f32>(arg_1, arg_1)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 1000f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-2644f, arg_1), vec2<f32>(arg_1, arg_1)) * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_1, arg_1)))), select(var_0.c.zy, var_2.zy, var_0.b.x || var_2.x)))));
    return ~_wgslsmith_div_vec4_i32(u_input.c, firstLeadingBit(vec4<i32>(0i, 2147483647i, i32(-1i) * -1i, global2.e.d.a)));
}

fn func_1() -> i32 {
    global0 = global2.e.d;
    var var_0 = _wgslsmith_mod_u32(0u, 1u);
    let var_1 = 8201u;
    var var_2 = 561f;
    global1 = !all(vec2<bool>(true, ~u_input.a.x <= firstTrailingBit(52127u)));
    return abs(max(-50240i, firstLeadingBit(_wgslsmith_dot_vec4_i32(-u_input.c, func_2(vec4<u32>(global2.b, 11762u, 1u, 0u), 1653f)))));
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_5, arg_2: i32, arg_3: vec2<bool>) -> Struct_1 {
    return Struct_1(0i);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = global2.d.b.x;
    var var_0 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(734f - _wgslsmith_f_op_f32(579f * -1715f))), _wgslsmith_f_op_f32(1566f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(621f)), _wgslsmith_div_f32(-377f, -620f), true))), _wgslsmith_f_op_f32(select(819f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-237f))), false)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(799f)) + _wgslsmith_f_op_f32(1000f - -305f)))))));
    let var_1 = func_5(~vec3<i32>(func_1(), 4126i, -2147483647i), Struct_5(vec4<i32>(global2.e.d.a | global2.d.d.a, _wgslsmith_mult_i32(global2.d.d.a, global2.a.a) >> (countOneBits(global2.b) % 32u), -22922i, select(-5764i, global0.a >> (u_input.a.x % 32u), true)), -292f, Struct_4(Struct_1(_wgslsmith_dot_vec3_i32(u_input.c.wwz, u_input.c.yyz)), 29876u, vec2<bool>(false & global2.e.a, true), global2.e, Struct_3(global2.c.x, global2.d.b, global2.e.c, Struct_1(global0.a)))), reverseBits(_wgslsmith_clamp_i32(~func_2(vec4<u32>(0u, 16250u, u_input.a.x, 15363u), var_0.x).x, 36512i, 8601i)), global2.c);
    let var_2 = Struct_2(Struct_1(~max(global2.a.a, ~u_input.b)), 10793i, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(971f, var_0.x, _wgslsmith_f_op_f32(var_0.x - -1537f), _wgslsmith_f_op_f32(ceil(var_0.x)))))), _wgslsmith_sub_u32(reverseBits(_wgslsmith_sub_u32(u_input.a.x >> (global2.b % 32u), 81288u & u_input.a.x)), abs(_wgslsmith_div_u32(100995u, u_input.a.x) | u_input.a.x)), -vec2<i32>(func_5(~vec3<i32>(1i, -1i, global2.d.d.a), Struct_5(u_input.c, 1483f, Struct_4(Struct_1(2147483647i), 12298u, global2.c, global2.d, global2.d)), -35549i, select(vec2<bool>(global2.e.c.x, global2.e.c.x), vec2<bool>(false, true), global2.d.c.yy)).a, ~48655i));
    global1 = -1i >= u_input.c.x;
    let var_3 = var_0.wzw;
    var var_4 = Struct_5(~(-(~vec4<i32>(global0.a, -25874i, 0i, var_1.a))), var_3.x, Struct_4(func_5(u_input.c.zwx, Struct_5(u_input.c | u_input.c, _wgslsmith_f_op_f32(-828f * -1415f), Struct_4(global2.e.d, u_input.a.x, global2.e.c.xz, global2.e, Struct_3(global2.c.x, global2.e.c.yy, global2.e.c, Struct_1(global0.a)))), firstLeadingBit(var_2.b) ^ _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.c.x, 0i, -3097i), vec4<i32>(global0.a, var_2.b, 1i, 2147483647i)), vec2<bool>(true, global2.c.x)), 32550u, select(select(!global2.e.c.zy, global2.c, var_2.d > u_input.a.x), vec2<bool>(!global2.c.x, global2.e.a), _wgslsmith_f_op_f32(-var_0.x) == var_0.x), Struct_3(u_input.c.x >= -var_1.a, vec2<bool>(false, all(vec2<bool>(global2.e.b.x, true))), vec3<bool>(all(global2.c), global2.c.x, global2.d.b.x), Struct_1(var_2.a.a)), Struct_3(true, global2.c, select(global2.d.c, !vec3<bool>(true, false, global2.e.b.x), vec3<bool>(global2.d.c.x, global2.d.c.x, false)), Struct_1(1i))));
    let var_5 = Struct_5(var_4.a, _wgslsmith_f_op_f32(-var_4.b), Struct_4(func_5(vec3<i32>(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(global0.a, -37237i, global0.a, -14934i), u_input.c), -global2.d.d.a), Struct_5(var_4.a, _wgslsmith_div_f32(1629f, -287f), Struct_4(Struct_1(0i), u_input.a.x, var_4.c.c, Struct_3(var_4.c.e.b.x, vec2<bool>(false, global2.c.x), var_4.c.d.c, var_2.a), var_4.c.e)), var_4.a.x, !select(vec2<bool>(true, global2.e.b.x), var_4.c.e.b, vec2<bool>(global2.d.c.x, false))), _wgslsmith_add_u32(firstTrailingBit(global2.b) ^ 79755u, global2.b), global2.e.b, Struct_3((681f >= var_0.x) || !global2.c.x, select(select(vec2<bool>(false, true), global2.e.b, var_4.c.e.a), func_3(vec3<bool>(false, global2.c.x, var_4.c.d.a), var_4.a, 56548u, 44646u), vec2<bool>(var_4.c.e.a, true)), var_4.c.e.c, Struct_1(-2147483647i)), var_4.c.e));
    var var_6 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(2434f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_2.c.x + _wgslsmith_f_op_f32(var_3.x * -750f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(var_3.x, -635f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.x))))))), _wgslsmith_mod_i32(1i, 3740i), vec4<i32>(76854i, _wgslsmith_dot_vec3_i32(-vec3<i32>(3576i, var_6.a, u_input.b), _wgslsmith_clamp_vec3_i32(vec3<i32>(var_5.a.x, 1i, -36230i), var_5.a.zxz, vec3<i32>(51449i, global0.a, var_6.a)) ^ var_5.a.xxw), global2.e.d.a, -(var_1.a >> (~u_input.a.x % 32u))));
}

