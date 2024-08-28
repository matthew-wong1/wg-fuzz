struct Struct_1 {
    a: u32,
    b: f32,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, false, true, true);

var<private> global1: Struct_1;

var<private> global2: bool;

var<private> global3: Struct_1;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: vec3<bool>) -> u32 {
    var var_0 = select(global3.c, select(global1.c, select(vec4<bool>(arg_1.x, true, any(vec2<bool>(global0.x, arg_0.c.x)), true), select(vec4<bool>(true, true, arg_0.c.x, global0.x), !vec4<bool>(arg_0.c.x, true, false, false), false | arg_1.x), global3.c), !(!(arg_0.b < arg_0.b))), global0.x);
    var var_1 = arg_0;
    var var_2 = arg_0.b;
    let var_3 = global1.c;
    var var_4 = max(vec4<i32>(min(-1i, 32i), -2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x << (0u % 32u), _wgslsmith_mod_i32(u_input.c.x, u_input.c.x), _wgslsmith_dot_vec2_i32(u_input.b, u_input.c)), firstTrailingBit(-vec3<i32>(2217i, u_input.b.x, u_input.c.x))), u_input.c.x), ~firstLeadingBit(-vec4<i32>(u_input.c.x, u_input.d, u_input.d, u_input.d)) & _wgslsmith_add_vec4_i32(abs(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, 1i, u_input.c.x, 0i), vec4<i32>(11418i, u_input.d, u_input.c.x, u_input.d))), _wgslsmith_mod_vec4_i32(abs(vec4<i32>(u_input.b.x, 2147483647i, u_input.b.x, -12785i)), vec4<i32>(u_input.b.x, u_input.c.x, 34036i, -2492i))));
    return _wgslsmith_add_u32(~u_input.a, 4294967295u);
}

fn func_2(arg_0: vec2<f32>, arg_1: vec2<u32>) -> u32 {
    let var_0 = _wgslsmith_clamp_u32(1u, ~54752u, _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(0u, u_input.e.x), ~(vec2<u32>(arg_1.x, global3.a) ^ vec2<u32>(30529u, 11202u))), ~(select(vec2<u32>(0u, u_input.e.x), u_input.e.xy, global3.c.zx) & max(vec2<u32>(arg_1.x, 66234u), vec2<u32>(global1.a, arg_1.x)))));
    let var_1 = 1u;
    global2 = true;
    var var_2 = Struct_1(~var_1 << (func_3(Struct_1(~var_0, _wgslsmith_f_op_f32(997f * 763f), vec4<bool>(global3.c.x, true, global3.c.x, true)), !(!global3.c.wxz)) % 32u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -502f), _wgslsmith_f_op_f32(floor(global3.b))), !global3.c);
    global3 = Struct_1(select(30631u, 1u, any(!vec4<bool>(global0.x, global3.c.x, global0.x, global1.c.x))), 442f, vec4<bool>(true, !(!(!var_2.c.x)), ~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.x, 4294967295u), vec2<u32>(arg_1.x, var_2.a)) < _wgslsmith_mod_u32(_wgslsmith_mod_u32(global1.a, 7842u), 187u), false));
    return 4294967295u;
}

fn func_1(arg_0: i32) -> Struct_1 {
    var var_0 = Struct_1(countOneBits(abs(func_2(vec2<f32>(1860f, global3.b), vec2<u32>(1u, 1u)))), _wgslsmith_f_op_f32(f32(-1f) * -336f), !global3.c);
    var var_1 = Struct_1(global1.a, -205f, !var_0.c);
    let var_2 = Struct_1(_wgslsmith_add_u32(65717u, func_3(Struct_1(_wgslsmith_add_u32(29956u, var_0.a), 463f, vec4<bool>(global3.c.x, var_1.c.x, var_0.c.x, false)), vec3<bool>(var_1.c.x && global1.c.x, all(global3.c), var_1.a <= var_0.a))), var_0.b, vec4<bool>(all(global1.c), var_0.c.x, select(var_1.c.x, false && global3.c.x, !var_1.c.x) != !all(vec4<bool>(var_1.c.x, var_0.c.x, true, true)), any(!vec4<bool>(global1.c.x, false, false, false))));
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_div_f32(var_0.b, _wgslsmith_f_op_f32(-global1.b)), var_0.b, var_0.b))) * vec3<f32>(_wgslsmith_f_op_f32(213f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b - -429f))), global3.b, global1.b));
    var_1 = Struct_1(0u, global1.b, global3.c);
    return Struct_1(var_0.a, var_1.b, vec4<bool>(global3.c.x, var_1.c.x, (_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, global1.a), u_input.e) >= global1.a) || false, var_2.c.x));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: vec3<f32>) -> f32 {
    var var_0 = _wgslsmith_div_vec4_i32(vec4<i32>(u_input.b.x, max(_wgslsmith_dot_vec2_i32(select(u_input.c, vec2<i32>(u_input.c.x, -1i), vec2<bool>(global3.c.x, arg_0.x)), -u_input.c), 35470i), 654i, -2147483647i), ~_wgslsmith_mult_vec4_i32(vec4<i32>(~u_input.b.x, abs(u_input.d), ~u_input.b.x, u_input.d & -41018i), max(-vec4<i32>(1i, -40145i, u_input.c.x, 31324i), vec4<i32>(0i, -4912i, -27879i, 1i))));
    global2 = false;
    let var_1 = func_1(u_input.b.x >> (1u % 32u));
    let var_2 = var_1;
    var var_3 = func_1(-(1i ^ _wgslsmith_dot_vec2_i32(~var_0.zx, abs(u_input.b))));
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1474f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(758f, global3.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f)))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * -1000f)), arg_3.x, true))));
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    global0 = vec4<bool>(global3.c.x, ~_wgslsmith_mult_u32(u_input.e.x, ~global1.a) < (_wgslsmith_mult_u32(47168u, countOneBits(arg_2.a)) << (func_3(func_1(u_input.b.x), global3.c.zww) % 32u)), !any(arg_2.c), false);
    var var_0 = vec3<i32>(u_input.c.x << (global1.a % 32u), _wgslsmith_div_i32(u_input.c.x, firstTrailingBit(-_wgslsmith_mult_i32(12223i, u_input.c.x))), u_input.d);
    var var_1 = min(~var_0.x, -2147483647i);
    let var_2 = func_1(_wgslsmith_clamp_i32(min(_wgslsmith_mod_i32(abs(var_0.x), var_0.x), _wgslsmith_mod_i32(_wgslsmith_sub_i32(-2147483647i, -1i), -var_0.x)), ~u_input.c.x, u_input.c.x));
    global0 = select(global1.c, select(select(func_1(var_0.x).c, select(vec4<bool>(global0.x, global3.c.x, arg_2.c.x, false), vec4<bool>(global3.c.x, false, false, var_2.c.x), !global3.c.x), vec4<bool>(false, true, false, all(vec4<bool>(global0.x, false, arg_2.c.x, global1.c.x)))), !func_1(_wgslsmith_mult_i32(0i, 0i)).c, !select(arg_2.c, arg_1.c, var_2.c)), arg_2.c.x);
    return func_1(_wgslsmith_clamp_i32(var_0.x >> ((~u_input.a ^ max(8368u, 96180u)) % 32u), _wgslsmith_mod_i32(var_0.x, _wgslsmith_mult_i32(-u_input.d, var_0.x)), (2147483647i & -u_input.c.x) & ~u_input.d));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 49049u;
    global1 = Struct_1(~30859u, _wgslsmith_div_f32(global3.b, _wgslsmith_f_op_f32(f32(-1f) * -853f)), !select(vec4<bool>(global1.c.x, global1.c.x, !global1.c.x, any(global1.c.wwz)), !select(global1.c, vec4<bool>(true, false, false, false), vec4<bool>(global0.x, false, true, global0.x)), any(select(global3.c.wy, global3.c.yz, vec2<bool>(global0.x, global0.x)))));
    var var_1 = func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(global3.c, func_1(-2147483647i), func_1(-u_input.d).c.xx, vec3<f32>(_wgslsmith_f_op_f32(-global3.b), global3.b, _wgslsmith_f_op_f32(global1.b * global1.b)))) * global1.b), func_1(-21722i), func_1(-(u_input.d << (global1.a % 32u))));
    let var_2 = !select(!global3.c.zz, !vec2<bool>(global1.c.x, func_1(u_input.d).c.x), vec2<bool>(global3.c.x, true));
    global2 = global0.x;
    let x = u_input.a;
    s_output = StorageBuffer(~min(63760i, ~u_input.d) | -1i, global1.b, vec4<f32>(global1.b, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_div_f32(-2912f, global1.b), _wgslsmith_f_op_f32(-global1.b)))), global3.b, _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-399f - _wgslsmith_f_op_f32(global1.b * -131f)))));
}

