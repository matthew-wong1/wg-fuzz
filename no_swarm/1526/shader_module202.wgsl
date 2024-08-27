struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: f32,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_1 = Struct_1(vec4<bool>(true, false, true, false), 4294967295u, -369f, vec3<i32>(i32(-2147483648), -29702i, -9192i));

var<private> global2: vec3<f32>;

var<private> global3: bool = true;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: vec4<u32>) -> f32 {
    var var_0 = arg_1;
    var var_1 = global2.yz;
    global3 = var_0.a.x;
    global2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.c, arg_1.c, global2.x) + vec3<f32>(global1.c, global2.x, 437f)))))));
    let var_2 = true || (_wgslsmith_sub_u32(76767u, (arg_3.x << (arg_1.b % 32u)) >> (1u % 32u)) > 1u);
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global2.x)));
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3((~u_input.a <= ~global1.b) || false, Struct_1(vec4<bool>(false, true, global1.a.x, any(global1.a.xx)), global1.b, 388f, -global1.d), !global1.a.zzz, vec4<u32>(_wgslsmith_clamp_u32(1u, _wgslsmith_add_u32(24650u, global1.b), global1.b), firstTrailingBit(firstLeadingBit(4294967295u)), 0u, u_input.c))) + _wgslsmith_f_op_f32(global1.c + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.c, _wgslsmith_f_op_f32(floor(global1.c))))));
    let var_1 = global1.a.x;
    let var_2 = firstTrailingBit(vec3<i32>(-11534i, 0i, 1i));
    var var_3 = 57386i;
    var var_4 = !select(!vec2<bool>(global1.a.x && false, true), select(!(!global1.a.wx), select(global1.a.ww, select(global1.a.yw, global1.a.zz, global1.a.zw), !global1.a.xx), any(!vec4<bool>(global1.a.x, false, global1.a.x, true))), false);
    return Struct_1(vec4<bool>(any(vec4<bool>(var_4.x, true, var_4.x & true, true)), false, -56431i >= var_2.x, var_4.x), select(global1.b, 8809u, var_4.x), global2.x, abs(global1.d));
}

fn func_1() -> Struct_1 {
    let var_0 = func_2();
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global1.c), _wgslsmith_f_op_f32(global1.c - global2.x))))));
    global0 = global1.d.x;
    let var_2 = var_0.c;
    let var_3 = 237f;
    return Struct_1(!(!vec4<bool>(true, true, var_0.a.x, u_input.c != 1u)), 1u, _wgslsmith_f_op_f32(sign(var_2)), abs(global1.d));
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: Struct_1) -> vec3<i32> {
    let var_0 = Struct_1(arg_3.a, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, _wgslsmith_add_u32(~u_input.c, ~u_input.c), abs(arg_1.b) >> (~0u % 32u), 23042u), _wgslsmith_mult_vec4_u32(countOneBits(vec4<u32>(4294967295u, global1.b, 119690u, 4294967295u)), firstLeadingBit(~vec4<u32>(4294967295u, arg_3.b, 1u, 1u)))), arg_1.c, countOneBits(vec3<i32>(u_input.b << (u_input.a % 32u), ~abs(arg_3.d.x), -54548i)));
    global0 = _wgslsmith_sub_i32(-31115i, _wgslsmith_div_i32(~_wgslsmith_clamp_i32(min(-13946i, global1.d.x), _wgslsmith_clamp_i32(arg_3.d.x, global1.d.x, -60100i), arg_1.d.x), select(global1.d.x, _wgslsmith_dot_vec3_i32(global1.d, var_0.d) | 6579i, _wgslsmith_mult_u32(global1.b, 4294967295u) <= _wgslsmith_mod_u32(1u, 26606u))));
    let var_1 = var_0.c > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1972f * 632f) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1571f * arg_3.c))));
    let var_2 = arg_3.c;
    var var_3 = arg_1;
    return vec3<i32>(_wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(-2147483647i, -5044i, arg_1.d.x, _wgslsmith_add_i32(arg_3.d.x, 6860i))), ~select(arg_2, vec4<i32>(4757i, -5010i, -1i, global1.d.x), !vec4<bool>(arg_3.a.x, var_0.a.x, var_0.a.x, arg_3.a.x))), _wgslsmith_div_i32(~_wgslsmith_add_i32(~u_input.b, u_input.b), arg_1.d.x), -10744i);
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<bool>) -> Struct_1 {
    global1 = Struct_1(select(arg_2.a, !(!func_2().a), !(~25928u > (0u & global1.b))), global1.b, _wgslsmith_f_op_f32(1000f - arg_1.c), ~_wgslsmith_mod_vec3_i32(~arg_1.d, firstTrailingBit(max(arg_1.d, global1.d))));
    var var_0 = all(func_2().a.zz);
    let var_1 = !(!all(vec2<bool>(global1.a.x, global1.a.x)) && arg_3.x);
    let var_2 = select(select(select(!(!arg_1.a), !select(vec4<bool>(arg_1.a.x, true, arg_2.a.x, arg_1.a.x), arg_1.a, vec4<bool>(global1.a.x, false, true, global1.a.x)), any(select(vec4<bool>(false, global1.a.x, arg_3.x, false), global1.a, vec4<bool>(global1.a.x, arg_3.x, arg_2.a.x, var_1)))), arg_2.a, arg_2.a.x), arg_2.a, true);
    let var_3 = ~(max(~firstLeadingBit(vec4<u32>(arg_0, 1u, 1u, 80149u)), ~(~vec4<u32>(u_input.c, arg_2.b, 1u, 25790u))) ^ ~abs(_wgslsmith_mult_vec4_u32(vec4<u32>(global1.b, arg_2.b, arg_1.b, 4294967295u), vec4<u32>(31347u, arg_2.b, 1u, 4294967295u))));
    return Struct_1(vec4<bool>(true, any(select(vec3<bool>(true, false, false), vec3<bool>(arg_1.a.x, false, false), vec3<bool>(arg_1.a.x, var_1, arg_3.x))) || true, !any(!vec4<bool>(arg_1.a.x, false, false, arg_2.a.x)), false), _wgslsmith_mod_u32(u_input.a, ~(func_1().b << (_wgslsmith_sub_u32(arg_1.b, 43889u) % 32u))), global1.c, -firstTrailingBit(arg_2.d));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec3_i32(global1.d, ~(~vec3<i32>(u_input.b, u_input.b, firstLeadingBit(u_input.b))));
    var var_1 = ~_wgslsmith_div_u32(_wgslsmith_mod_u32(~19919u, _wgslsmith_div_u32(~0u, ~41055u)), 1u);
    let var_2 = func_5(1u ^ (_wgslsmith_div_u32(4294967295u, ~1u) << (u_input.a % 32u)), Struct_1(select(vec4<bool>(global1.a.x != false, global1.a.x, all(global1.a), false), !select(vec4<bool>(false, global1.a.x, global1.a.x, global1.a.x), vec4<bool>(true, global1.a.x, false, false), false), true), min(_wgslsmith_div_u32(0u, abs(global1.b)), global1.b), global1.c, func_4(-1272f, func_1(), firstTrailingBit(vec4<i32>(24446i, -1i, u_input.b, 2147483647i)), func_1())), func_2(), !(!(!global1.a.yz)));
    let var_3 = var_2;
    let var_4 = vec3<bool>(global1.a.x, u_input.c == _wgslsmith_mult_u32(global1.b, 1u), any(var_2.a.wxy));
    var var_5 = func_2().c;
    var var_6 = func_2();
    var var_7 = -32120i;
    var_6 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(abs(var_3.d.xy), var_0, min(_wgslsmith_div_u32(global1.b, 1u), u_input.a), u_input.b, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_6.c))))))));
}

