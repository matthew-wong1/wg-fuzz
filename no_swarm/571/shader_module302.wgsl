struct Struct_1 {
    a: f32,
    b: u32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec2<i32>,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_2;

var<private> global2: Struct_1 = Struct_1(723f, 0u, vec3<i32>(-44394i, -45829i, 1i));

var<private> global3: vec4<bool>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: vec4<u32>) -> vec2<i32> {
    let var_0 = global1.a;
    let var_1 = Struct_2(arg_0, ~7100u);
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.a, 301f, var_1.a.a));
    var var_3 = true;
    global3 = !select(select(select(select(vec4<bool>(global3.x, false, false, false), vec4<bool>(false, global3.x, false, false), true), vec4<bool>(true, true, true, true), true), select(!vec4<bool>(global3.x, global3.x, false, global3.x), select(vec4<bool>(global3.x, global3.x, false, global3.x), vec4<bool>(global3.x, true, false, global3.x), vec4<bool>(global3.x, global3.x, global3.x, global3.x)), vec4<bool>(global3.x, false, false, true)), all(!global3.wyx)), !(!select(vec4<bool>(true, global3.x, global3.x, false), vec4<bool>(false, true, global3.x, global3.x), false)), true);
    return ~firstLeadingBit(u_input.b);
}

fn func_4(arg_0: vec2<i32>, arg_1: vec3<i32>, arg_2: vec3<u32>, arg_3: vec4<bool>) -> i32 {
    var var_0 = reverseBits(~abs(vec2<u32>(arg_2.x, 26881u ^ arg_2.x)));
    var_0 = u_input.e.xy;
    var var_1 = global0.a;
    let var_2 = !(!(!(!arg_3)));
    var var_3 = global1.a;
    return _wgslsmith_mod_i32(-16285i, i32(-1i) * -2147483647i) << (_wgslsmith_dot_vec3_u32(vec3<u32>(~firstLeadingBit(57551u), 54606u & var_0.x, ~4294967295u), ~arg_2) % 32u);
}

fn func_2(arg_0: Struct_1) -> i32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.a))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global2.a)) + 1f) - 255f)), u_input.a.x, global2.c);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(floor(1915f)), ~1u, vec3<i32>(40800i, _wgslsmith_clamp_i32(-global0.c.x, var_0.c.x << (var_0.b % 32u), -u_input.b.x), 18995i) >> (~u_input.e % vec3<u32>(32u)));
    return firstLeadingBit(~var_1.c.x) ^ func_4(func_3(Struct_1(-445f, min(84344u, 40221u), _wgslsmith_sub_vec3_i32(vec3<i32>(global1.a.c.x, 502i, 1i), vec3<i32>(-19551i, u_input.b.x, global0.c.x))), global2.b, _wgslsmith_mod_vec4_u32(select(vec4<u32>(var_0.b, 1u, var_0.b, u_input.a.x), vec4<u32>(var_1.b, global2.b, 0u, 54713u), false), vec4<u32>(0u, 37083u, 1u, 1u))), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.c.x, 1i, 2147483647i, 82996i), vec4<i32>(var_0.c.x, var_1.c.x, -1i, arg_0.c.x)) ^ global2.c.x, _wgslsmith_div_i32(var_0.c.x, -var_0.c.x), var_1.c.x), ~max(vec3<u32>(0u, global1.b, 38693u) >> (vec3<u32>(u_input.e.x, var_0.b, 10336u) % vec3<u32>(32u)), u_input.e), select(vec4<bool>(any(vec4<bool>(true, global3.x, false, false)), true, global2.b == global1.b, global3.x), select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, global3.x, false, false), true), !vec4<bool>(true, true, global3.x, false), select(vec4<bool>(false, false, global3.x, false), vec4<bool>(global3.x, true, false, false), vec4<bool>(global3.x, true, true, false))), !global3.x));
}

fn func_5(arg_0: vec4<i32>, arg_1: bool, arg_2: vec2<bool>, arg_3: bool) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(global2.a * -1116f);
    var var_1 = vec4<bool>(any(vec3<bool>(true, true, true)), true || (-12494i == _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(global1.a.c.x, -60752i, -1i)), global0.c << (vec3<u32>(84013u, 73825u, 4294967295u) % vec3<u32>(32u)))), false, true);
    var var_2 = global1.a;
    var var_3 = global0.b;
    let var_4 = _wgslsmith_f_op_f32(f32(-1f) * -537f);
    return global1.a;
}

fn func_1(arg_0: Struct_2, arg_1: bool) -> vec3<i32> {
    var var_0 = Struct_1(502f, _wgslsmith_mod_u32(~28042u, 14569u), vec3<i32>(-(~(-global1.a.c.x)), -30094i, _wgslsmith_clamp_i32(-2147483647i, _wgslsmith_mult_i32(-41333i, global1.a.c.x), _wgslsmith_mod_i32(~(-4859i), global1.a.c.x))));
    global0 = func_5(~countOneBits(_wgslsmith_div_vec4_i32(vec4<i32>(-50072i, global0.c.x, -21962i, 0i), firstLeadingBit(vec4<i32>(-1i, -2147483647i, 2147483647i, u_input.d)))), max(select(_wgslsmith_add_i32(var_0.c.x, -17829i), func_2(arg_0.a), !global3.x), arg_0.a.c.x & max(global2.c.x, arg_0.a.c.x)) >= (i32(-1i) * -12792i), global3.ww, true);
    var var_1 = global1.a.c.zx;
    var var_2 = _wgslsmith_mult_vec3_i32(vec3<i32>(countOneBits(0i), u_input.b.x, firstLeadingBit(_wgslsmith_div_i32(-1i, global2.c.x))), global1.a.c << (select(vec3<u32>(~1u, _wgslsmith_sub_u32(16940u, var_0.b), global0.b), vec3<u32>(global2.b, 32695u, 0u) << (select(u_input.e, vec3<u32>(global0.b, 32641u, u_input.e.x), global3.wwx) % vec3<u32>(32u)), true) % vec3<u32>(32u)));
    var var_3 = arg_0;
    return vec3<i32>(2147483647i, var_1.x << (_wgslsmith_dot_vec2_u32(~_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_0.b, global0.b), vec2<u32>(1u, arg_0.a.b), vec2<u32>(48963u, global1.a.b)), vec2<u32>(var_3.a.b, ~global0.b)) % 32u), 1i);
}

fn func_6(arg_0: vec3<f32>, arg_1: vec3<i32>, arg_2: vec3<i32>, arg_3: vec2<u32>) -> u32 {
    var var_0 = Struct_2(global1.a, u_input.e.x);
    global2 = Struct_1(global2.a, min(~0u, 0u), -vec3<i32>(~var_0.a.c.x, _wgslsmith_mod_i32(1i, func_2(Struct_1(global2.a, 66457u, global2.c))), -6035i));
    let var_1 = Struct_2(func_5(countOneBits(_wgslsmith_mod_vec4_i32(firstTrailingBit(vec4<i32>(-11788i, -24249i, 15372i, -5436i)), _wgslsmith_mult_vec4_i32(vec4<i32>(global1.a.c.x, global0.c.x, 6807i, -40889i), vec4<i32>(arg_1.x, -2147483647i, global2.c.x, u_input.d)))), global3.x & all(global3.zww), !(!select(global3.yx, vec2<bool>(global3.x, global3.x), global3.xx)), select(true, global3.x, -1150f < _wgslsmith_f_op_f32(-global0.a))), ~global1.a.b);
    let var_2 = var_0.a.a;
    var var_3 = !(!select(true, global3.x, !global3.x && any(vec3<bool>(false, global3.x, global3.x))));
    return global2.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstTrailingBit(u_input.a);
    var var_1 = global1.a.b;
    global1 = Struct_2(Struct_1(global2.a, 0u, _wgslsmith_sub_vec3_i32(select(vec3<i32>(17994i, global2.c.x, 50661i), ~global0.c, global3.zyy), firstLeadingBit(~global1.a.c))), _wgslsmith_div_u32(~var_0.x, func_6(vec3<f32>(global2.a, _wgslsmith_f_op_f32(ceil(global1.a.a)), _wgslsmith_f_op_f32(sign(745f))), vec3<i32>(0i, u_input.d, ~global1.a.c.x), -func_1(Struct_2(global1.a, global1.a.b), true), countOneBits(u_input.a))));
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(261f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a + -266f) * _wgslsmith_f_op_f32(-global0.a))), _wgslsmith_dot_vec2_u32(u_input.a, abs(vec2<u32>(35901u, global1.a.b))) | ~1u, _wgslsmith_mod_vec3_i32(-firstTrailingBit(global2.c), -vec3<i32>(global2.c.x, u_input.b.x, u_input.c.x))), ~(~_wgslsmith_mod_u32(0u << (1u % 32u), global1.b)));
    let var_3 = max(~(~vec2<i32>(0i, 1i)), firstTrailingBit(-var_2.a.c.yy));
    let var_4 = Struct_2(Struct_1(1098f, ~global2.b, func_5(vec4<i32>(0i, global0.c.x >> (global0.b % 32u), 9874i, 0i ^ global1.a.c.x), global2.c.x <= 0i, !global3.xw, false).c), ~_wgslsmith_div_u32(var_0.x, select(u_input.a.x, ~global2.b, any(vec4<bool>(true, true, false, true)))));
    global1 = Struct_2(func_5(firstLeadingBit(vec4<i32>(-24007i, select(-1i, u_input.c.x, false), 2147483647i, var_4.a.c.x)), _wgslsmith_f_op_f32(-463f + _wgslsmith_f_op_f32(-global0.a)) > _wgslsmith_f_op_f32(-global2.a), !global3.ww, false), 0u);
    var var_5 = var_4;
    let var_6 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(0u, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_4.a.a, _wgslsmith_f_op_f32(368f * global2.a)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.a.a, global1.a.a) + vec2<f32>(global1.a.a, global2.a))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_5.a.a, global1.a.a), vec2<f32>(-258f, 387f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_4.a.a, global2.a), vec2<f32>(-1574f, global1.a.a), global3.x)))))), ~(~global1.a.b ^ ~4294967295u), -1i);
}

