struct Struct_1 {
    a: f32,
    b: u32,
    c: vec2<i32>,
    d: vec4<f32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
    c: u32,
    d: vec2<bool>,
}

struct Struct_4 {
    a: vec3<u32>,
}

struct Struct_5 {
    a: vec3<f32>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
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

var<private> global0: Struct_1;

var<private> global1: i32;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec2<f32>, arg_2: vec3<i32>, arg_3: i32) -> f32 {
    global0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_1.x)) + -1009f) + _wgslsmith_f_op_f32(-1f))), (~global0.b | 1u) ^ global0.b, global0.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(805f, global0.e, -955f, global0.d.x))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(357f, -1263f, global0.e, arg_1.x))) + vec4<f32>(_wgslsmith_f_op_f32(sign(arg_1.x)), global0.e, _wgslsmith_f_op_f32(arg_1.x * arg_1.x), _wgslsmith_f_op_f32(-arg_1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_1.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1816f, -1634f)) - -127f))));
    var var_0 = -1000f;
    var var_1 = ~(~global0.b);
    global1 = u_input.a;
    var var_2 = -(i32(-1i) * -38854i);
    return -907f;
}

fn func_3(arg_0: f32, arg_1: vec2<f32>) -> vec4<bool> {
    global0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1569f) + _wgslsmith_f_op_f32(-arg_1.x)), 8802u, vec2<i32>(1i, -1i), _wgslsmith_f_op_vec4_f32(global0.d + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-527f, global0.d.x, arg_0, arg_0), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(792f, arg_0, 487f, 1000f), vec4<f32>(arg_0, arg_1.x, arg_0, 144f))), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-374f, arg_0, 333f, arg_0) - _wgslsmith_f_op_vec4_f32(global0.d + global0.d)), vec4<bool>(all(vec3<bool>(false, true, true)), true, true, true)))), -974f);
    global0 = Struct_1(1115f, _wgslsmith_mult_u32(global0.b ^ ~(~80u), _wgslsmith_dot_vec2_u32(vec2<u32>(38571u, 1u), vec2<u32>(71901u, global0.b))), _wgslsmith_clamp_vec2_i32(min(_wgslsmith_clamp_vec2_i32(global0.c, u_input.b, vec2<i32>(u_input.a, global0.c.x)), firstLeadingBit(vec2<i32>(global0.c.x, -29787i))) | _wgslsmith_sub_vec2_i32(-global0.c, vec2<i32>(global0.c.x, -1i)), firstTrailingBit(_wgslsmith_clamp_vec2_i32(u_input.b, _wgslsmith_div_vec2_i32(vec2<i32>(global0.c.x, -1i), global0.c), -vec2<i32>(0i, u_input.b.x))), abs(abs(max(vec2<i32>(-2147483647i, global0.c.x), global0.c)))), vec4<f32>(_wgslsmith_f_op_f32(select(global0.d.x, _wgslsmith_f_op_f32(round(1627f)), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -472f) - arg_0), arg_0, arg_0), arg_0);
    global0 = Struct_1(arg_1.x, 0u, global0.c, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(arg_0)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec3<i32>(global0.c.x, u_input.a, global0.c.x), arg_1, vec3<i32>(u_input.b.x, global0.c.x, u_input.b.x), u_input.b.x))), -2597f, global0.e) + global0.d), _wgslsmith_f_op_f32(f32(-1f) * -496f));
    var var_0 = vec3<bool>(true, true, !any(vec2<bool>(true, true)));
    var var_1 = global0.e;
    return select(vec4<bool>(!(!(!var_0.x)), any(vec4<bool>(true, true, true, true)), true, var_0.x), select(vec4<bool>(!any(vec4<bool>(false, false, true, true)), any(vec2<bool>(var_0.x, true)), select(!var_0.x, !var_0.x, !var_0.x), var_0.x), !select(select(vec4<bool>(var_0.x, false, true, false), vec4<bool>(var_0.x, var_0.x, false, var_0.x), false), vec4<bool>(var_0.x, var_0.x, true, false), !var_0.x), min(global0.b, global0.b) >= global0.b), vec4<bool>(true, false, !(!var_0.x), _wgslsmith_div_f32(166f, _wgslsmith_f_op_f32(max(155f, global0.e))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0)))));
}

fn func_4(arg_0: Struct_4, arg_1: i32, arg_2: bool, arg_3: Struct_5) -> Struct_4 {
    var var_0 = arg_0.a.zy;
    global1 = arg_1;
    var var_1 = ((var_0.x | _wgslsmith_sub_u32(_wgslsmith_mod_u32(var_0.x, arg_0.a.x), ~global0.b)) & ~max(arg_0.a.x, 11179u)) << (_wgslsmith_mult_u32(~_wgslsmith_sub_u32(arg_0.a.x, 15884u) & _wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(0u, arg_0.a.x, 0u)), ~vec3<u32>(global0.b, 0u, global0.b)), _wgslsmith_add_u32(countOneBits(0u), 67012u)) % 32u);
    return Struct_4(vec3<u32>(_wgslsmith_clamp_u32(min(global0.b ^ var_0.x, 1u), 0u, _wgslsmith_sub_u32(global0.b & 1u, 23019u)), arg_0.a.x << (_wgslsmith_clamp_u32(1u, arg_0.a.x, countOneBits(global0.b)) % 32u), countOneBits(var_0.x)));
}

fn func_1(arg_0: i32) -> Struct_1 {
    let var_0 = func_4(Struct_4(vec3<u32>(countOneBits(_wgslsmith_mod_u32(4294967295u, global0.b)), ~(~0u), global0.b)), abs(u_input.b.x), all(func_3(_wgslsmith_f_op_f32(func_2(_wgslsmith_add_vec3_i32(vec3<i32>(0i, -1i, 1i), vec3<i32>(11293i, arg_0, -17838i)), _wgslsmith_f_op_vec2_f32(-global0.d.zy), ~vec3<i32>(-2147483647i, u_input.b.x, 0i), arg_0 >> (0u % 32u))), vec2<f32>(-730f, -1035f))), Struct_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(global0.d.xww, global0.d.yxy)) - global0.d.yzx)), 2491f));
    let var_1 = _wgslsmith_f_op_vec4_f32(min(global0.d, global0.d));
    var var_2 = _wgslsmith_mult_u32(4294967295u, (~global0.b ^ select(23879u, 82224u, true)) >> (~89820u % 32u));
    var var_3 = func_4(var_0, 0i, !(~4294967295u == var_0.a.x) && any(vec4<bool>(true, true, true, true)), Struct_5(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.d.wxy)))), -716f));
    let var_4 = all(vec3<bool>(true, false, all(vec4<bool>(true, all(vec4<bool>(true, true, false, true)), func_3(-3045f, global0.d.xw).x, all(vec4<bool>(false, true, true, false))))));
    return Struct_1(_wgslsmith_f_op_f32(step(global0.d.x, 1f)), var_3.a.x, global0.c, _wgslsmith_f_op_vec4_f32(var_1 - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(trunc(global0.d.x)), global0.a, _wgslsmith_f_op_f32(round(882f)), _wgslsmith_f_op_f32(f32(-1f) * -1279f))))), 803f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(vec3<u32>(~global0.b >> (~global0.b % 32u), global0.b, 4294967295u) & vec3<u32>(~(~global0.b), global0.b, ~(~12732u)));
    let var_1 = _wgslsmith_add_u32(~(~(~(~65473u))), ~global0.b & _wgslsmith_add_u32(~(~0u), 3561u));
    var var_2 = func_1(_wgslsmith_add_i32(0i, global0.c.x));
    var var_3 = 4294967295u;
    var_2 = Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(819f, _wgslsmith_f_op_f32(abs(1845f))))))), ~_wgslsmith_mod_u32(var_2.b, min(global0.b, 0u) >> ((var_1 & 91471u) % 32u)), -(~global0.c >> (~_wgslsmith_div_vec2_u32(var_0.a.xx, var_0.a.zy) % vec2<u32>(32u))), global0.d, -464f);
    global0 = func_1(~var_2.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.e, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1258f))))), var_2.b ^ ~var_1, ~0u);
}

