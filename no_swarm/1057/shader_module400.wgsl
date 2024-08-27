struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: bool,
    b: vec3<u32>,
    c: i32,
    d: vec3<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<f32>,
}

struct Struct_5 {
    a: vec4<i32>,
    b: vec4<u32>,
    c: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(vec4<i32>(31080i, -26992i, -4340i, 10193i), vec4<u32>(54457u, 0u, 25466u, 1u), Struct_3(false, vec3<u32>(77833u, 32788u, 38331u), 0i, vec3<bool>(true, false, false)));

var<private> global1: vec2<bool>;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> i32 {
    var var_0 = Struct_5(vec4<i32>(_wgslsmith_dot_vec3_i32(firstLeadingBit(global0.a.zyx) >> (~global0.c.b % vec3<u32>(32u)), vec3<i32>(global0.a.x, global0.a.x, global0.a.x)), -select(select(global0.a.x, -46756i, global0.c.a), global0.c.c, global1.x), -2147483647i, global0.a.x), abs(global0.b), global0.c);
    var var_1 = var_0.c.b.xy;
    let var_2 = Struct_5(global0.a, var_0.b, var_0.c);
    var var_3 = Struct_3(false, ~var_0.c.b, min(-_wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(var_2.c.c, 570i, -2147483647i)) & -(u_input.b.x >> (var_2.b.x % 32u)), 0i), select(!var_2.c.d, !vec3<bool>(true, global1.x, global1.x), global1.x));
    let var_4 = u_input.b.yy & _wgslsmith_mult_vec2_i32(vec2<i32>(-4821i, 0i | u_input.b.x), vec2<i32>(-abs(-18594i), _wgslsmith_mod_i32(-34122i, 1i)));
    return 19008i;
}

fn func_2(arg_0: vec3<i32>, arg_1: f32) -> Struct_5 {
    var var_0 = arg_0.x;
    let var_1 = Struct_2(Struct_1(_wgslsmith_div_i32(global0.a.x, ~u_input.b.x)), global0.c.b.x);
    global0 = Struct_5(vec4<i32>(-2147483647i, func_3(), max(arg_0.x, global0.c.c), 1i) & global0.a, global0.b, global0.c);
    let var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(811f)))))), -1000f, _wgslsmith_f_op_f32(740f * arg_1)) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1, 203f) + 1000f)), 112f, -1652f));
    var var_3 = Struct_4(var_1.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_2), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, arg_1, 210f)), _wgslsmith_div_vec3_f32(var_2, var_2))))));
    return Struct_5(abs(vec4<i32>(~1i, ~_wgslsmith_clamp_i32(u_input.b.x, var_3.a.a, var_1.a.a), var_3.a.a, ~firstTrailingBit(u_input.b.x))), global0.b, Struct_3(false, reverseBits(countOneBits(_wgslsmith_mult_vec3_u32(vec3<u32>(global0.c.b.x, 22064u, 4294967295u), global0.b.xxw))), _wgslsmith_mod_i32(2147483647i, _wgslsmith_dot_vec4_i32(~vec4<i32>(global0.a.x, -49966i, global0.a.x, 11793i), _wgslsmith_mod_vec4_i32(global0.a, global0.a))), !vec3<bool>(global0.c.a || global0.c.d.x, 122570u != u_input.a, global1.x)));
}

fn func_1(arg_0: vec2<bool>, arg_1: f32) -> bool {
    global0 = func_2(~_wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(global0.a.ywz, _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b.x, -4804i, 0i), vec3<i32>(u_input.b.x, u_input.b.x, 30977i))), -reverseBits(u_input.b), firstTrailingBit(-u_input.b)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -901f))));
    let var_0 = global0.a.x;
    var var_1 = vec3<bool>(arg_0.x, true, all(vec2<bool>(!global1.x, any(global0.c.d.xz))));
    let var_2 = func_2(~select(-max(u_input.b, vec3<i32>(-17694i, global0.a.x, global0.c.c)), u_input.b, !vec3<bool>(var_1.x, global0.c.a, global0.c.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -482f)));
    global0 = func_2((_wgslsmith_add_vec3_i32(-u_input.b, global0.a.zwy) ^ (abs(vec3<i32>(3079i, -295i, 2147483647i)) << (vec3<u32>(21926u, global0.b.x, global0.c.b.x) % vec3<u32>(32u)))) ^ min(-vec3<i32>(-11513i, global0.a.x, -20724i), -select(vec3<i32>(var_2.c.c, -1i, var_2.a.x), vec3<i32>(2147483647i, -16505i, -2941i), vec3<bool>(global0.c.a, true, true))), _wgslsmith_f_op_f32(-1514f * _wgslsmith_f_op_f32(-arg_1)));
    return (var_2.c.a && any(arg_0)) || all(arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.b;
    var var_1 = !any(vec3<bool>(func_1(!global0.c.d.xz, _wgslsmith_f_op_f32(f32(-1f) * -1164f)), any(global0.c.d.xy), any(!global0.c.d)));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-493f, -683f, -1152f) - vec3<f32>(-457f, 781f, 1316f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(2008f, -417f, -487f)), global1.x)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1037f, -209f, 1268f))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-496f, _wgslsmith_f_op_f32(round(1579f)), -559f), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-340f, 399f, -604f))), vec3<f32>(-3130f, 559f, -1177f), true)), global0.c.a)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1486f - 714f), _wgslsmith_f_op_f32(round(-1500f)), -994f))));
    var_1 = all(select(vec4<bool>(!global1.x, _wgslsmith_f_op_f32(ceil(-1294f)) > _wgslsmith_div_f32(811f, 385f), !global1.x == !global0.c.a, global0.c.d.x), select(!(!vec4<bool>(false, global0.c.a, false, global1.x)), vec4<bool>(global0.c.a, true, any(global0.c.d), false), true), false));
    let var_3 = Struct_5(global0.a, _wgslsmith_mult_vec4_u32(global0.b, (vec4<u32>(var_0.x, var_0.x, global0.c.b.x, var_0.x) & _wgslsmith_div_vec4_u32(global0.b, global0.b)) << (~global0.b % vec4<u32>(32u))), global0.c);
    var_1 = var_3.c.d.x;
    var var_4 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, 1460f, 241f, var_2.x)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-277f, -335f), _wgslsmith_f_op_f32(max(1248f, var_2.x)), -760f, var_2.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_4.x, var_2.x, -193f, var_4.x), vec4<f32>(211f, -581f, var_4.x, 997f))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_4.x, -1160f, -140f, var_4.x), vec4<f32>(-912f, var_2.x, 1229f, var_4.x), false)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, 838f, -1399f, var_2.x))) * vec4<f32>(var_2.x, _wgslsmith_f_op_f32(-2115f - 1069f), -1457f, -993f)), u_input.a);
}

