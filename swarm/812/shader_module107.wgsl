struct Struct_1 {
    a: i32,
    b: bool,
    c: vec4<f32>,
}

struct Struct_2 {
    a: i32,
    b: i32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec3<u32>,
    c: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: f32,
    d: vec3<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: f32 = -1480f;

var<private> global2: vec4<bool>;

var<private> global3: Struct_3;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: vec2<bool>) -> bool {
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-269f * _wgslsmith_f_op_f32(global3.c + _wgslsmith_f_op_f32(abs(-630f)))) + global3.c);
    var var_0 = 19188i;
    let var_1 = vec3<u32>(firstTrailingBit(u_input.a.x), min(~(global3.b.x >> (1u % 32u)), _wgslsmith_dot_vec2_u32(min(vec2<u32>(0u, global3.b.x), global3.b.xy), vec2<u32>(global3.b.x, 0u))), _wgslsmith_div_u32(_wgslsmith_sub_u32(u_input.c, global3.b.x), u_input.c) >> ((select(global3.b.x, 88328u, arg_2.x) & reverseBits(0u)) % 32u)) >> (~global3.b % vec3<u32>(32u));
    var var_2 = global3.a.xyy;
    var_2 = ~vec3<i32>(var_2.x, global3.a.x, 20956i);
    return true;
}

fn func_3(arg_0: bool, arg_1: vec2<f32>, arg_2: Struct_3, arg_3: vec3<bool>) -> vec4<bool> {
    global0 = arg_2.a.xw;
    var var_0 = Struct_1(_wgslsmith_add_i32(_wgslsmith_div_i32(~(~18915i), -firstTrailingBit(50631i)), -7934i), func_1(-473f, 144f, global2.yy), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1.x))), -1649f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(477f)))), 1496f))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, global3.c, -1331f, -1162f) + var_0.c))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, 522f, arg_1.x, arg_1.x) - vec4<f32>(1230f, global3.c, 663f, 175f))))), !var_0.b)));
    global2 = !vec4<bool>(var_0.b, arg_0, !(var_0.b & arg_0) & true, !(!arg_0) & !(!global2.x));
    var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1066f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + 2544f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -948f), _wgslsmith_f_op_f32(round(arg_1.x))))), -392f) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(572f, _wgslsmith_f_op_f32(-1526f + arg_2.c), -1994f, _wgslsmith_f_op_f32(f32(-1f) * -288f))))));
    return vec4<bool>(global2.x, arg_3.x, false, global2.x);
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: vec2<f32>) -> Struct_3 {
    global1 = _wgslsmith_f_op_f32(arg_1.c.x + _wgslsmith_f_op_f32(global3.c + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, arg_1.c.x) * _wgslsmith_f_op_f32(-arg_1.c.x)) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_1.c.x + -1030f))))));
    let var_0 = _wgslsmith_clamp_i32(u_input.d, ~_wgslsmith_mult_i32(_wgslsmith_sub_i32(1i, -301i), 0i), _wgslsmith_mult_i32(i32(-1i) * -2147483647i, global0.x));
    var var_1 = ~(~(~u_input.a.x));
    var var_2 = true & !arg_1.b;
    global2 = select(!(!vec4<bool>(true, arg_1.b, global2.x, true)), !select(!func_3(arg_1.b, arg_2, Struct_3(global3.a, global3.b, arg_2.x), vec3<bool>(arg_1.b, arg_1.b, false)), vec4<bool>(global2.x, arg_1.b, func_3(global2.x, arg_2, Struct_3(vec4<i32>(global3.a.x, -14373i, global3.a.x, -45030i), u_input.a, global3.c), vec3<bool>(global2.x, false, arg_1.b)).x, true), select(!vec4<bool>(arg_1.b, arg_1.b, false, false), func_3(global2.x, vec2<f32>(arg_2.x, arg_2.x), Struct_3(global3.a, u_input.e, arg_1.c.x), vec3<bool>(arg_1.b, false, true)), vec4<bool>(true, true, arg_1.b, false))), select(func_3(any(vec3<bool>(global2.x, true, global2.x)), arg_1.c.zz, Struct_3(vec4<i32>(2147483647i, -5386i, arg_0, arg_0), firstLeadingBit(global3.b), arg_1.c.x), vec3<bool>(all(vec4<bool>(false, arg_1.b, global2.x, false)), func_1(-829f, global3.c, global2.xx), any(vec3<bool>(false, true, global2.x)))), vec4<bool>(global3.c > -531f, false, (u_input.b >> (global3.b.x % 32u)) == max(global3.a.x, arg_1.a), any(global2.xxx)), select(!select(vec4<bool>(global2.x, arg_1.b, false, global2.x), vec4<bool>(false, false, global2.x, arg_1.b), vec4<bool>(false, true, global2.x, global2.x)), !vec4<bool>(global2.x, global2.x, arg_1.b, arg_1.b), !arg_1.b | all(vec3<bool>(true, false, global2.x)))));
    return Struct_3(-global3.a, _wgslsmith_mod_vec3_u32(~vec3<u32>(~0u, u_input.e.x, 0u), _wgslsmith_sub_vec3_u32(abs(global3.b), _wgslsmith_sub_vec3_u32(global3.b, vec3<u32>(u_input.c, 1u, global3.b.x))) | global3.b), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-678f, -343f)) + -311f), global3.c)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(0u, ~(~_wgslsmith_mult_u32(~42001u, u_input.e.x)), u_input.a.x);
    var_0 = vec3<u32>(var_0.x, u_input.a.x, ~(~_wgslsmith_sub_u32(~18785u, 0u)));
    let var_1 = Struct_4(Struct_3(~(-vec4<i32>(2147483647i, -19500i, -63375i, u_input.b) >> (select(vec4<u32>(var_0.x, 1u, 86401u, 4294967295u), vec4<u32>(42488u, 3979u, 1856u, 69233u), global2.x) % vec4<u32>(32u))), global3.b, global3.c), func_2(u_input.d, Struct_1(-_wgslsmith_sub_i32(global0.x, global0.x), func_1(_wgslsmith_f_op_f32(f32(-1f) * -120f), _wgslsmith_f_op_f32(select(global3.c, 1052f, true)), global2.xx), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global3.c, 1109f, global3.c, global3.c))) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global3.c, global3.c, global3.c, global3.c))))), vec2<f32>(-1480f, 320f)));
    global0 = ~min(var_1.b.a.yw >> (u_input.a.zx % vec2<u32>(32u)), global3.a.yw);
    let var_2 = Struct_2(global0.x, 29101i);
    global1 = -2715f;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b, func_2(~(~34564i), Struct_1(var_1.b.a.x, func_3(global2.x, vec2<f32>(var_1.b.c, var_1.a.c), var_1.b, global2.zxw).x, vec4<f32>(875f, 1040f, global3.c, var_1.b.c)), vec2<f32>(_wgslsmith_f_op_f32(global3.c + global3.c), -859f)).b >> (vec3<u32>(~1u, var_1.a.b.x, _wgslsmith_add_u32(~var_1.b.b.x, firstTrailingBit(var_1.a.b.x))) % vec3<u32>(32u)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1084f)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_1.a.c, var_1.a.c, 539f), vec3<f32>(global3.c, -1000f, -216f)))))) + vec3<f32>(_wgslsmith_f_op_f32(-var_1.a.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global3.c))), _wgslsmith_f_op_f32(min(global3.c, _wgslsmith_f_op_f32(min(global3.c, global3.c)))))), i32(-1i) * -var_1.a.a.x);
}

