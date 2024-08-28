struct Struct_1 {
    a: vec2<bool>,
    b: f32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_2 = Struct_2(4294967295u);

var<private> global2: array<vec2<f32>, 3> = array<vec2<f32>, 3>(vec2<f32>(-723f, 1000f), vec2<f32>(258f, -1000f), vec2<f32>(222f, -318f));

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> vec2<bool> {
    global0 = Struct_2(global1.a);
    global2 = array<vec2<f32>, 3>();
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -588f);
    let var_1 = Struct_2(~_wgslsmith_dot_vec2_u32(abs(~u_input.a.zx), countOneBits(vec2<u32>(475u, global0.a))));
    var var_2 = vec2<i32>(_wgslsmith_div_i32(55972i, -38327i), max(_wgslsmith_div_i32(select(-33833i, _wgslsmith_sub_i32(-15528i, -43341i), true), countOneBits(-1i >> (global1.a % 32u))), -2147483647i));
    return select(select(vec2<bool>(true, true), vec2<bool>(_wgslsmith_f_op_f32(ceil(var_0)) > _wgslsmith_f_op_f32(f32(-1f) * -884f), all(vec4<bool>(true, true, false, false))), vec2<bool>(false, any(vec4<bool>(true, false, true, false)))), vec2<bool>(true, true), all(vec2<bool>(any(vec4<bool>(false, false, true, false)), any(vec3<bool>(true, true, false)))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2) -> vec3<u32> {
    var var_0 = Struct_1(arg_0.a, -1780f);
    let var_1 = func_3().x;
    let var_2 = _wgslsmith_dot_vec4_i32(vec4<i32>(~(-(~84272i)), 0i, _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(-3275i, 53405i), 1i), -_wgslsmith_sub_vec2_i32(vec2<i32>(-29846i, 1i), vec2<i32>(1i, -1i))), -2147483647i), _wgslsmith_clamp_vec4_i32(min(vec4<i32>(_wgslsmith_clamp_i32(-41035i, -1i, 71579i), 2147483647i, -2147483647i, -1i), firstTrailingBit(_wgslsmith_add_vec4_i32(vec4<i32>(-23296i, 45082i, 1i, 27594i), vec4<i32>(2147483647i, -2147483647i, -1i, -1i)))), -vec4<i32>(select(37419i, -1i, arg_0.a.x), -2147483647i, 1i, -2147483647i), min(_wgslsmith_mult_vec4_i32(~vec4<i32>(-1i, 1i, 1i, -14268i), vec4<i32>(1i, 1i, 1i, 1i)), firstTrailingBit(vec4<i32>(2147483647i, 1i, -18992i, 23728i)))));
    var var_3 = Struct_2(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, select(21385u, u_input.b, false) & 42280u), select(vec2<u32>(6638u, global1.a << (arg_1.a % 32u)), _wgslsmith_sub_vec2_u32(vec2<u32>(1u, u_input.a.x), ~vec2<u32>(1u, arg_1.a)), var_1)));
    var var_4 = vec4<u32>(4294967295u, 39919u, ~(countOneBits(~arg_1.a) & ~_wgslsmith_mod_u32(0u, global1.a)), 468u);
    return var_4.xzx;
}

fn func_5(arg_0: u32, arg_1: vec2<i32>, arg_2: Struct_3, arg_3: vec4<i32>) -> vec4<f32> {
    var var_0 = Struct_1(!vec2<bool>(arg_2.a, false), _wgslsmith_f_op_f32(step(1091f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1527f)) + -1983f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1685f))))));
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-239f, 1122f, var_0.b, -404f) - vec4<f32>(-993f, -1263f, -1015f, -1832f)))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.b, 1527f, var_0.b, -330f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.b, 845f, var_0.b, -776f), vec4<f32>(-968f, -2146f, var_0.b, var_0.b), vec4<bool>(false, var_0.a.x, true, false))), select(vec4<bool>(true, var_0.a.x, true, arg_2.a), vec4<bool>(var_0.a.x, true, true, true), arg_2.a))))), vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.b - _wgslsmith_f_op_f32(select(-1157f, 1558f, false))))), -339f, var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.b + var_0.b))))));
}

fn func_2(arg_0: Struct_1, arg_1: f32) -> Struct_3 {
    let var_0 = Struct_1(!arg_0.a, _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    let var_1 = _wgslsmith_f_op_vec4_f32(func_5(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, global0.a, global1.a ^ global0.a), func_4(Struct_1(func_3(), -404f), Struct_2(16555u))), reverseBits(~(~(-vec2<i32>(-4210i, 6746i)))), Struct_3(true, Struct_2(global0.a | firstLeadingBit(58592u))), _wgslsmith_mult_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(1i, 1i, 1i, 1i), _wgslsmith_div_vec4_i32(vec4<i32>(1i, 1i, i32(-1i) * -20582i, _wgslsmith_mult_i32(-1i, 1i)), max(abs(vec4<i32>(51788i, 0i, 2147483647i, 0i)), abs(vec4<i32>(-1i, -6158i, 0i, -37944i)))))));
    global0 = Struct_2(~u_input.b >> (~global0.a % 32u));
    global0 = Struct_2(abs(1u));
    var var_2 = vec4<u32>(reverseBits(global0.a), 0u, 50424u, global1.a) ^ select(vec4<u32>(global0.a, global0.a, global1.a, 0u ^ u_input.a.x), abs(countOneBits(vec4<u32>(10744u, 4294967295u, global1.a, 56965u))), true);
    return Struct_3(var_0.b != var_1.x, Struct_2(global1.a));
}

fn func_1(arg_0: vec3<u32>, arg_1: i32, arg_2: Struct_1, arg_3: vec4<bool>) -> Struct_1 {
    var var_0 = func_2(Struct_1(vec2<bool>(false, arg_2.a.x), _wgslsmith_f_op_f32(max(-527f, arg_2.b))), _wgslsmith_f_op_f32(min(1958f, arg_2.b)));
    var_0 = func_2(arg_2, arg_2.b);
    global0 = var_0.b;
    var var_1 = Struct_2(global0.a);
    var var_2 = func_2(Struct_1(arg_2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.b - 1167f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-925f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(arg_2.b, arg_2.b, arg_2.a.x)), arg_2.b))), 683f)));
    return arg_2;
}

fn func_6(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_2, arg_3: u32) -> u32 {
    let var_0 = Struct_3(!(!arg_1.a.x), arg_2);
    var var_1 = ~_wgslsmith_div_u32(_wgslsmith_clamp_u32(firstLeadingBit(4294967295u), arg_3, global0.a), 4294967295u);
    global1 = func_2(Struct_1(select(arg_1.a, vec2<bool>(var_0.a, true), arg_1.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_1.b)) * arg_1.b)), arg_1.b).b;
    var_1 = ~(57777u << (firstTrailingBit(_wgslsmith_dot_vec2_u32(u_input.a.yz, ~u_input.a.zz)) % 32u));
    global2 = array<vec2<f32>, 3>();
    return _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(~abs(4294967295u), select(global1.a, 72005u, false) ^ (0u << (global0.a % 32u)), global0.a), 1u, 64929u) & func_4(Struct_1(select(arg_0.wy, vec2<bool>(false, var_0.a), true), _wgslsmith_f_op_f32(min(arg_1.b, _wgslsmith_f_op_f32(-arg_1.b)))), func_2(arg_1, arg_1.b).b).x;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<f32>, 3>();
    global0 = Struct_2(global0.a);
    global0 = Struct_2(~countOneBits(func_6(vec4<bool>(true, true, true, true), func_1(u_input.a, -2147483647i, Struct_1(vec2<bool>(false, true), -696f), vec4<bool>(false, false, true, false)), Struct_2(u_input.a.x), u_input.b >> (global0.a % 32u))));
    var var_0 = u_input.a.yz;
    global2 = array<vec2<f32>, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(1i, countOneBits(~min(0i, -1i)), 4300i));
}

