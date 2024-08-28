struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<i32>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, false, true);

var<private> global1: Struct_2 = Struct_2(vec3<f32>(-292f, -1081f, -128f), vec4<i32>(-2519i, -1i, -6137i, 15238i));

var<private> global2: u32 = 5523u;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> vec3<f32> {
    global2 = u_input.d;
    let var_0 = ~select(firstLeadingBit(global1.b.wyz), _wgslsmith_clamp_vec3_i32(max(global1.b.xzx, global1.b.www), reverseBits(global1.b.wzw), vec3<i32>(0i, max(global1.b.x, u_input.a), global1.b.x << (u_input.d % 32u))), select(!vec3<bool>(true, global0.x, global0.x), select(select(vec3<bool>(global0.x, false, global0.x), vec3<bool>(true, global0.x, false), global0.x), vec3<bool>(true, true, true), !vec3<bool>(global0.x, true, global0.x)), any(select(global0.zz, global0.xx, vec2<bool>(false, false)))));
    let var_1 = Struct_3(-68435i);
    let var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global1.a.x, global1.a.x, -880f))))))), _wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, 42056i, _wgslsmith_sub_i32(var_1.a, global1.b.x) & u_input.a, _wgslsmith_mod_i32(0i | var_0.x, firstLeadingBit(global1.b.x))), _wgslsmith_mod_vec4_i32(global1.b, vec4<i32>(_wgslsmith_sub_i32(global1.b.x, var_0.x), 1i, _wgslsmith_div_i32(u_input.a, -1i), abs(var_1.a)))));
    let var_3 = u_input.c.zzx;
    return global1.a;
}

fn func_2(arg_0: f32, arg_1: u32) -> bool {
    let var_0 = false && (firstLeadingBit(global1.b.x & ~(-2147483647i)) < countOneBits(global1.b.x));
    global1 = Struct_2(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(global1.a * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-950f, arg_0, global1.a.x) + global1.a) + global1.a)))), global1.b);
    let var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(func_3()), -firstTrailingBit(global1.b));
    global0 = select(!select(vec3<bool>(true, true, true), select(!vec3<bool>(false, false, var_0), !vec3<bool>(global0.x, global0.x, true), true), vec3<bool>(var_0, global1.a.x != global1.a.x, all(vec3<bool>(var_0, false, true)))), vec3<bool>(global0.x & var_0, !all(vec3<bool>(global0.x, var_0, true)), false), vec3<bool>(true, true, true));
    var var_2 = global0.x;
    return _wgslsmith_f_op_f32(-var_1.a.x) != _wgslsmith_f_op_f32(sign(-1000f));
}

fn func_1(arg_0: i32, arg_1: Struct_2, arg_2: Struct_1, arg_3: u32) -> vec4<i32> {
    let var_0 = arg_2;
    global0 = !(!select(vec3<bool>(var_0.a | var_0.a, global0.x, false), vec3<bool>(true, true, global1.a.x < 816f), global0.x));
    global0 = vec3<bool>(any(!(!vec4<bool>(var_0.a, true, var_0.a, global0.x))) != func_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(global1.a.x)))), firstTrailingBit(u_input.c.x ^ 90447u)), false, global0.x);
    let var_1 = func_2(_wgslsmith_f_op_f32(trunc(-362f)), u_input.b.x & arg_3);
    let var_2 = Struct_3(-34910i);
    return vec4<i32>(_wgslsmith_add_i32(firstTrailingBit(-2147483647i), ~(i32(-1i) * -1i)), ~u_input.a, firstLeadingBit(_wgslsmith_clamp_i32(var_2.a, 0i, var_2.a) >> (_wgslsmith_sub_u32(4294967295u, u_input.b.x) % 32u)), arg_1.b.x) ^ vec4<i32>(global1.b.x, -15740i, _wgslsmith_dot_vec2_i32(~vec2<i32>(var_2.a, 1i), abs(arg_1.b.xw)) >> (1u % 32u), ~(global1.b.x ^ arg_1.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstLeadingBit(vec3<u32>(reverseBits(~(~29191u)), _wgslsmith_div_u32(_wgslsmith_div_u32(4294967295u, u_input.b.x), firstTrailingBit(_wgslsmith_dot_vec3_u32(u_input.c.xyw, vec3<u32>(849u, 11866u, 59807u)))), _wgslsmith_sub_u32(min(13808u, abs(0u)), _wgslsmith_mult_u32(69944u, _wgslsmith_mod_u32(u_input.d, u_input.c.x)))));
    let var_1 = true;
    let var_2 = Struct_3(u_input.a);
    global1 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -685f) * _wgslsmith_f_op_f32(f32(-1f) * -1000f))), 698f, global1.a.x), _wgslsmith_mult_vec4_i32(~_wgslsmith_add_vec4_i32(func_1(1i, Struct_2(vec3<f32>(global1.a.x, global1.a.x, global1.a.x), vec4<i32>(35822i, 10425i, 2332i, 46270i)), Struct_1(global0.x), 0u), global1.b), _wgslsmith_add_vec4_i32(-global1.b, firstLeadingBit(vec4<i32>(-36593i, 33199i, global1.b.x, global1.b.x)))));
    let var_3 = !vec4<bool>(true, var_1, false, var_1);
    global1 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1612f, global1.a.x, global1.a.x), global1.a)))), countOneBits(_wgslsmith_add_vec4_i32(~_wgslsmith_mod_vec4_i32(vec4<i32>(global1.b.x, 17942i, u_input.a, 2147483647i), global1.b), firstLeadingBit(vec4<i32>(var_2.a, var_2.a, 1i, -846i)) << (_wgslsmith_div_vec4_u32(u_input.b, u_input.c) % vec4<u32>(32u)))));
    let var_4 = abs(-(~u_input.a));
    var var_5 = select(vec2<bool>(all(select(vec4<bool>(var_3.x, true, var_3.x, false), select(vec4<bool>(var_3.x, var_3.x, var_3.x, true), var_3, var_3), global0.x)), var_3.x), vec2<bool>(true & var_1, abs(19768u) <= (firstLeadingBit(32428u) & reverseBits(u_input.d))), all(vec4<bool>(var_1, global1.a.x < 1355f, var_1, any(select(var_3, vec4<bool>(var_3.x, var_1, true, global0.x), var_3)))));
    global2 = 37352u;
    let x = u_input.a;
    s_output = StorageBuffer(0i, 0u, vec3<i32>(i32(-1i) * -2147483647i, ~(u_input.a | _wgslsmith_div_i32(var_2.a, var_4)), _wgslsmith_mult_i32(9576i, _wgslsmith_div_i32(select(global1.b.x, global1.b.x, var_5.x), max(var_4, 30998i)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global1.a.x, 1001f, 370f, global1.a.x), vec4<f32>(-2385f, global1.a.x, global1.a.x, -1000f))))));
}

