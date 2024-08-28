struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: u32,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<f32>,
    d: vec4<f32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 9>;

var<private> global1: bool = true;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec4<i32>, arg_1: i32, arg_2: vec4<i32>, arg_3: Struct_1) -> f32 {
    global1 = true;
    let var_0 = Struct_1(true, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-881f, arg_3.b.x, -600f)))))), ~u_input.a.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(arg_3.b)) - arg_3.b) + arg_3.b));
    global0 = array<Struct_1, 9>();
    global1 = countOneBits(arg_0.x) > -16348i;
    let var_1 = var_0;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_3.b.x))))) * arg_3.b.x);
}

fn func_4(arg_0: Struct_1, arg_1: f32) -> bool {
    global0 = array<Struct_1, 9>();
    global0 = array<Struct_1, 9>();
    var var_0 = _wgslsmith_f_op_vec3_f32(select(arg_0.d, arg_0.b, vec3<bool>(any(!vec4<bool>(arg_0.a, arg_0.a, arg_0.a, true)) & (all(vec3<bool>(arg_0.a, arg_0.a, true)) | (arg_0.a & arg_0.a)), all(select(!vec3<bool>(arg_0.a, arg_0.a, arg_0.a), select(vec3<bool>(false, arg_0.a, arg_0.a), vec3<bool>(arg_0.a, false, arg_0.a), vec3<bool>(true, arg_0.a, arg_0.a)), true)), !(true == any(vec2<bool>(arg_0.a, arg_0.a))))));
    var var_1 = Struct_1(true, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_1, -3361f, -287f))) + _wgslsmith_f_op_vec3_f32(exp2(arg_0.b)))))), arg_0.c, _wgslsmith_f_op_vec3_f32(trunc(arg_0.d)));
    var var_2 = Struct_1(true, vec3<f32>(2133f, arg_1, -614f), 1u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(step(arg_0.d, var_1.d)), _wgslsmith_f_op_vec3_f32(exp2(var_1.d))))))));
    return abs(firstLeadingBit(firstLeadingBit(_wgslsmith_add_u32(u_input.a.x, 0u)))) < (~1u << (_wgslsmith_clamp_u32(~(~1u), ~select(1u, u_input.a.x, false), _wgslsmith_mult_u32(~u_input.a.x, 1u)) % 32u));
}

fn func_2(arg_0: vec2<bool>, arg_1: u32, arg_2: f32) -> f32 {
    global0 = array<Struct_1, 9>();
    var var_0 = arg_2;
    var_0 = arg_2;
    let var_1 = firstTrailingBit(vec3<i32>(u_input.c, _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.b) ^ vec3<i32>(u_input.c, u_input.c, 2147483647i), vec3<i32>(u_input.c, -5326i, 1i) << (u_input.a % vec3<u32>(32u))), -vec3<i32>(u_input.c, 43485i, 1i)), ~(-1i)));
    let var_2 = Struct_1(!func_4(global0[_wgslsmith_index_u32(1u, 9u)], _wgslsmith_f_op_f32(func_3(vec4<i32>(-2147483647i, var_1.x, var_1.x, 31052i) << (vec4<u32>(48854u, u_input.a.x, 2593u, 4294967295u) % vec4<u32>(32u)), countOneBits(-28263i), abs(vec4<i32>(2147483647i, var_1.x, u_input.c, var_1.x)), global0[_wgslsmith_index_u32(arg_1 & u_input.a.x, 9u)]))), vec3<f32>(230f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(arg_2)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_2)) - arg_2), arg_0.x)), arg_2), _wgslsmith_mod_u32(u_input.a.x, 4294967295u), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_2, _wgslsmith_f_op_f32(-1208f + _wgslsmith_f_op_f32(-arg_2)), _wgslsmith_f_op_f32(min(-1466f, _wgslsmith_f_op_f32(-arg_2)))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1145f, 1271f, arg_2)))))))));
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-989f - 143f) * _wgslsmith_f_op_f32(sign(var_2.b.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2232f * 176f)))) * -1275f);
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: u32) -> Struct_1 {
    let var_0 = Struct_1(true != !arg_0.a, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(func_3(vec4<i32>(0i, u_input.c, 72139i, u_input.b), 9927i, vec4<i32>(-2147483647i, u_input.c, u_input.b, u_input.c), Struct_1(arg_0.a, vec3<f32>(arg_0.d.x, arg_0.d.x, arg_0.b.x), 7694u, arg_0.b))), _wgslsmith_f_op_f32(arg_1 * arg_1))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1160f, -898f, 1770f)) - vec3<f32>(1560f, arg_1, 482f)), _wgslsmith_f_op_vec3_f32(-arg_0.b), arg_0.a)), vec3<bool>(true, any(vec3<bool>(arg_0.a, true, arg_0.a)), !(false && arg_0.a)))), ~_wgslsmith_div_u32(66783u, (u_input.a.x | u_input.a.x) | 0u), arg_0.d);
    var var_1 = arg_2;
    var var_2 = ~select(u_input.a | _wgslsmith_add_vec3_u32(u_input.a, vec3<u32>(58454u, arg_2, arg_2)), u_input.a, var_0.a || true);
    global0 = array<Struct_1, 9>();
    var var_3 = any(select(vec2<bool>(true, var_0.a), !(!select(vec2<bool>(var_0.a, true), vec2<bool>(false, true), var_0.a)), vec2<bool>(true, true)));
    return var_0;
}

fn func_1() -> u32 {
    let var_0 = func_5(global0[_wgslsmith_index_u32(firstTrailingBit(min(u_input.a.x, ~4294967295u)), 9u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(vec2<bool>(true, true), u_input.a.x, 1492f)) + _wgslsmith_f_op_f32(trunc(946f)))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -547f) + _wgslsmith_f_op_f32(1376f + -440f)), _wgslsmith_f_op_f32(sign(-532f))))), u_input.a.x);
    global1 = true;
    var var_1 = ~2147483647i;
    global1 = false;
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(var_0.d - var_0.b), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -583f), _wgslsmith_f_op_f32(f32(-1f) * -290f), _wgslsmith_f_op_f32(ceil(1805f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.d.x, var_0.d.x, -371f) * vec3<f32>(var_0.b.x, var_0.b.x, var_0.d.x)))))) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1000f - -1754f), 991f, func_5(Struct_1(var_0.a, vec3<f32>(var_0.b.x, var_0.d.x, var_0.b.x), 0u, vec3<f32>(var_0.b.x, 1466f, -673f)), var_0.d.x, var_0.c).b.x) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.b.x, 921f, var_0.b.x))), _wgslsmith_div_vec3_f32(vec3<f32>(-336f, var_0.b.x, -479f), var_0.b)))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-var_0.b))))));
    return var_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(true, true, true);
    var var_1 = any(vec2<bool>(true, all(select(select(var_0, vec3<bool>(true, true, var_0.x), false), var_0, select(var_0, var_0, var_0.x)))));
    var var_2 = ~(-2147483647i);
    var var_3 = ~reverseBits(_wgslsmith_add_u32(1u, ~(~13255u)));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(388f + _wgslsmith_f_op_f32(max(-511f, _wgslsmith_f_op_f32(f32(-1f) * -224f))))) >= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-106f - _wgslsmith_f_op_f32(-106f - -330f)))));
    global1 = var_0.x;
    var var_4 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + 316f)), 466f))));
    let var_5 = global0[_wgslsmith_index_u32(firstTrailingBit(func_1()), 9u)];
    let x = u_input.a;
    s_output = StorageBuffer(~2147483647i, -(~(-vec4<i32>(u_input.c, 27448i, 0i, 2147483647i))), _wgslsmith_f_op_vec3_f32(-var_5.d), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(264f, var_5.d.x, var_5.b.x, 479f))), vec4<f32>(_wgslsmith_div_f32(175f, var_5.b.x), -1402f, _wgslsmith_f_op_f32(1012f + var_5.b.x), 544f), select(vec4<bool>(true, var_5.a, true, false), vec4<bool>(var_5.a, var_5.a, false, var_5.a), true))), vec4<f32>(var_5.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.x - var_5.b.x)), var_4.x, 371f), !(!vec4<bool>(var_0.x, var_0.x, true, false)))), ~(~(~_wgslsmith_div_vec4_i32(vec4<i32>(u_input.c, u_input.c, 1i, -70031i), vec4<i32>(2147483647i, u_input.b, 60948i, u_input.b)))));
}

