struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec2<f32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(-12929i, -23916i);

var<private> global1: Struct_4;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec4<bool>) -> f32 {
    global0 = abs(~max(~(global1.a >> (u_input.a % vec2<u32>(32u))), vec2<i32>(~13128i, -50614i)));
    let var_0 = global1.a;
    var var_1 = Struct_1(_wgslsmith_clamp_vec2_i32(global1.a, vec2<i32>(_wgslsmith_dot_vec2_i32(global1.a, abs(global1.a)), max(-6091i, u_input.b)), _wgslsmith_mod_vec2_i32(global1.a, select(vec2<i32>(global0.x, 4214i), global1.a, vec2<bool>(arg_0.x, arg_0.x))) << ((~vec2<u32>(u_input.a.x, 11686u) & min(vec2<u32>(u_input.a.x, 10125u), u_input.a)) % vec2<u32>(32u))));
    global0 = abs(vec2<i32>(var_1.a.x, u_input.b));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1151f, -1000f, 171f, _wgslsmith_f_op_f32(f32(-1f) * -983f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-743f, -615f, -1128f, -813f)), vec4<f32>(-648f, 1000f, 1459f, -1697f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(300f * 1133f), _wgslsmith_f_op_f32(f32(-1f) * -146f), -311f))));
    return _wgslsmith_f_op_f32(round(var_2.x));
}

fn func_2() -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 1000f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-395f, 173f)))) + _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_div_f32(882f, 607f), _wgslsmith_f_op_f32(func_3(vec4<bool>(false, true, false, true)))), vec2<f32>(-888f, _wgslsmith_f_op_f32(-1000f * 876f)))));
    var var_1 = var_0.x == _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(var_0.x, 688f)), 1000f));
    let var_2 = Struct_3(vec2<f32>(var_0.x, _wgslsmith_f_op_f32(select(680f, var_0.x, true))), Struct_2(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false)), vec4<bool>(true, true, true, false)), vec4<bool>(true, true, true, false), !select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false)))), Struct_1(-vec2<i32>(global0.x, -55803i)));
    var var_3 = Struct_4(var_2.c.a);
    var_3 = Struct_4(~var_2.c.a);
    return var_2.b.a.xxy;
}

fn func_4(arg_0: vec3<bool>, arg_1: vec3<i32>, arg_2: Struct_3) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(648f - arg_2.a.x)))), _wgslsmith_f_op_f32(f32(-1f) * -1338f))));
    var var_1 = Struct_2(arg_2.b.a);
    let var_2 = arg_2.b;
    var var_3 = -u_input.b;
    var var_4 = vec2<bool>(true, true);
    return select(!var_2.a, select(!arg_2.b.a, var_2.a, vec4<bool>(arg_0.x, var_2.a.x, select(!arg_0.x, var_0 <= arg_2.a.x, u_input.c != u_input.a.x), !(var_4.x != var_1.a.x))), !var_2.a);
}

fn func_1() -> Struct_3 {
    let var_0 = 257f;
    let var_1 = Struct_2(func_4(select(vec3<bool>(true, true, true), !func_2(), !func_2().x), vec3<i32>(abs(1i), 5079i, -2304i), Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(2355f, -2068f))), Struct_2(vec4<bool>(true, true, true, true)), Struct_1(global1.a))));
    global1 = Struct_4(global1.a);
    let var_2 = _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.c, 51608u, 4294967295u, _wgslsmith_sub_u32(4294967295u, u_input.a.x)), ~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.c, 4294967295u, u_input.d, u_input.d), vec4<u32>(0u, u_input.c, u_input.d, u_input.c))), vec4<u32>(firstTrailingBit(_wgslsmith_mult_u32(_wgslsmith_div_u32(u_input.c, 0u), u_input.a.x)), select(_wgslsmith_mod_u32(57446u, u_input.a.x), 0u, true), ~(~44256u), 2285u));
    let var_3 = Struct_1(firstTrailingBit(~abs(abs(global1.a))));
    return Struct_3(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(697f, var_0)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1887f, var_0)))) * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(466f, var_0), vec2<f32>(1323f, var_0)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0))))))), var_1, Struct_1(_wgslsmith_mod_vec2_i32(-var_3.a, var_3.a)));
}

fn func_5(arg_0: Struct_3, arg_1: vec2<i32>, arg_2: vec4<u32>, arg_3: Struct_4) -> vec2<i32> {
    let var_0 = Struct_4(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, arg_1.x, global0.x) >> ((vec3<u32>(arg_2.x, arg_2.x, arg_2.x) << (vec3<u32>(1u, 1u, 29417u) % vec3<u32>(32u))) % vec3<u32>(32u)), vec3<i32>(_wgslsmith_div_i32(global0.x, global0.x), global0.x, _wgslsmith_sub_i32(-15428i, global0.x))), global0.x));
    var var_1 = arg_0.a.x;
    global0 = var_0.a;
    var var_2 = func_1();
    let var_3 = Struct_3(var_2.a, arg_0.b, func_1().c);
    return -vec2<i32>(var_3.c.a.x, var_0.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(func_1(), select(-vec2<i32>(_wgslsmith_clamp_i32(global0.x, -1i, global1.a.x), -2147483647i), global1.a, true), countOneBits(~(~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d, 1u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.d, u_input.c, 0u, u_input.d)))), Struct_4(global1.a));
    var var_0 = ~u_input.c;
    let var_1 = Struct_1(_wgslsmith_clamp_vec2_i32(-vec2<i32>(u_input.b, global0.x), select(vec2<i32>(u_input.b, 0i), min(vec2<i32>(u_input.b, 16503i), vec2<i32>(0i, -2147483647i)), true), func_1().c.a) >> (reverseBits(u_input.a) % vec2<u32>(32u)));
    let var_2 = var_1;
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -330f);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_vec2_u32(vec2<u32>(u_input.d, ~u_input.d), vec2<u32>(~u_input.a.x, firstTrailingBit(u_input.a.x))), _wgslsmith_f_op_f32(ceil(901f)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-123f)) + 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-949f))))), -vec3<i32>(-var_2.a.x, _wgslsmith_mult_i32(0i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.a.x, var_1.a.x, global1.a.x), vec3<i32>(global0.x, u_input.b, 2147483647i))), ~2147483647i >> (u_input.d % 32u)));
}

