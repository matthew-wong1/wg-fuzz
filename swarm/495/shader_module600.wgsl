struct Struct_1 {
    a: vec4<f32>,
    b: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: i32,
    d: vec2<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 5>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
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

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: i32) -> f32 {
    return _wgslsmith_f_op_f32(floor(842f));
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: bool, arg_3: Struct_1) -> f32 {
    var var_0 = global0[_wgslsmith_index_u32(arg_3.b, 5u)];
    global0 = array<Struct_1, 5>();
    global0 = array<Struct_1, 5>();
    let var_1 = arg_3;
    var var_2 = firstLeadingBit(~_wgslsmith_dot_vec3_i32(u_input.b.wzz, reverseBits(abs(vec3<i32>(u_input.a.x, u_input.b.x, -12183i)))));
    return _wgslsmith_f_op_f32(arg_3.a.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.x * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.a.x), -124f))) - _wgslsmith_f_op_f32(min(var_1.a.x, -507f))));
}

fn func_2(arg_0: vec4<f32>) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(func_4(u_input.b.x, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.d.x, ~(~0u)), 5u)], (_wgslsmith_f_op_f32(func_3(-19259i)) > _wgslsmith_f_op_f32(f32(-1f) * -1000f)) || true, Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-480f, -1997f, 445f, arg_0.x)), firstTrailingBit(u_input.d.x)))) >= arg_0.x;
    var var_1 = 1i;
    let var_2 = _wgslsmith_f_op_vec4_f32(-arg_0);
    global0 = array<Struct_1, 5>();
    global0 = array<Struct_1, 5>();
    return 12534u;
}

fn func_5(arg_0: i32, arg_1: vec4<u32>, arg_2: u32, arg_3: vec2<bool>) -> Struct_1 {
    var var_0 = 40874u;
    let var_1 = arg_0;
    let var_2 = vec4<u32>(~0u >> (~_wgslsmith_sub_u32(arg_1.x ^ 0u, 0u) % 32u), 1u, ~arg_1.x, 4294967295u);
    global0 = array<Struct_1, 5>();
    var_0 = ~(~_wgslsmith_add_u32(u_input.d.x ^ 1u, var_2.x)) | (~1u << (arg_1.x % 32u));
    return Struct_1(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-222f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-527f, 427f, arg_3.x))), 1f, _wgslsmith_f_op_f32(f32(-1f) * -115f)))), ~(~((1u >> (arg_1.x % 32u)) << ((arg_1.x << (arg_1.x % 32u)) % 32u))));
}

fn func_1() -> u32 {
    var var_0 = func_5(-(~(~u_input.c | _wgslsmith_add_i32(u_input.b.x, u_input.a.x))), _wgslsmith_mult_vec4_u32(vec4<u32>(abs(func_2(vec4<f32>(1800f, -290f, -407f, 644f))), 84588u, 0u, u_input.d.x), _wgslsmith_add_vec4_u32(~(~vec4<u32>(4294967295u, u_input.e.x, u_input.e.x, u_input.d.x)), ~(~vec4<u32>(u_input.e.x, u_input.d.x, u_input.d.x, 1u)))), ~_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_add_u32(u_input.d.x, 83819u), u_input.d.x, u_input.d.x, ~u_input.d.x), reverseBits(min(vec4<u32>(42251u, u_input.e.x, 0u, u_input.e.x), vec4<u32>(u_input.e.x, u_input.d.x, 4294967295u, 18211u)))), vec2<bool>(!(-2147483647i <= (u_input.c ^ 2147483647i)), !((u_input.d.x <= u_input.d.x) | false)));
    let var_1 = global0[_wgslsmith_index_u32(countOneBits(var_0.b), 5u)];
    var var_2 = func_5(4972i, vec4<u32>(66918u, ~_wgslsmith_sub_u32(_wgslsmith_mult_u32(u_input.e.x, 76293u), ~1u), ~8488u, 0u), 69368u, vec2<bool>(var_0.b >= 33850u, true));
    var_0 = global0[_wgslsmith_index_u32(~36032u, 5u)];
    let var_3 = u_input.e;
    return u_input.e.x;
}

fn func_6(arg_0: vec3<bool>, arg_1: u32) -> u32 {
    let var_0 = min(9446i, (firstTrailingBit(-224i) << (1u % 32u)) & _wgslsmith_clamp_i32(countOneBits(41027i), _wgslsmith_mult_i32(u_input.b.x, u_input.b.x), abs(u_input.c))) | (i32(-1i) * -1i);
    global0 = array<Struct_1, 5>();
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-528f, -1000f, -1000f))))))))), func_5(~(~(-1i) << (func_1() % 32u)), vec4<u32>(_wgslsmith_clamp_u32(u_input.e.x, _wgslsmith_div_u32(u_input.e.x, u_input.e.x), u_input.d.x), 22786u, ~select(21730u, u_input.d.x, true), u_input.e.x), 4294967295u, select(vec2<bool>(any(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)), true), vec2<bool>(select(arg_0.x, true, false), select(arg_0.x, false, arg_0.x)), select(vec2<bool>(true, arg_0.x), arg_0.zy, true))).a.xwx);
    var var_2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_1.xy, _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, var_1.x) * vec2<f32>(var_1.x, var_1.x))) * vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(sign(-577f)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(1i, Struct_1(vec4<f32>(-1867f, var_1.x, var_1.x, var_1.x), 4068u), false, Struct_1(vec4<f32>(-796f, var_1.x, var_1.x, 869f), arg_1)))) - _wgslsmith_f_op_f32(round(var_1.x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -479f)))), !all(select(select(vec3<bool>(true, false, arg_0.x), vec3<bool>(arg_0.x, arg_0.x, false), vec3<bool>(false, true, arg_0.x)), select(arg_0, vec3<bool>(true, arg_0.x, arg_0.x), false), !arg_0.x))));
    var var_3 = (firstTrailingBit(~firstTrailingBit(u_input.e)) & u_input.e) | u_input.e;
    return ((20243u | (_wgslsmith_div_u32(var_3.x, var_3.x) & ~arg_1)) << (~(0u | arg_1) % 32u)) ^ u_input.e.x;
}

fn func_7(arg_0: Struct_1) -> Struct_1 {
    var var_0 = select(select(!vec3<bool>(any(vec3<bool>(false, true, false)), true, true), vec3<bool>(true, false, false), true), vec3<bool>(true, all(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true))) | false, (~u_input.d.x & func_2(arg_0.a)) == 25327u), !(!vec3<bool>(true, false, u_input.d.x < u_input.d.x)));
    var_0 = !vec3<bool>(var_0.x, u_input.d.x > _wgslsmith_clamp_u32(func_1(), u_input.e.x, u_input.d.x), !(var_0.x & all(vec4<bool>(var_0.x, true, var_0.x, true))));
    var var_1 = func_5(u_input.b.x, ~(~vec4<u32>(arg_0.b, u_input.d.x | u_input.d.x, arg_0.b, _wgslsmith_mult_u32(arg_0.b, u_input.d.x))), arg_0.b, !vec2<bool>(!(!var_0.x), all(!vec2<bool>(var_0.x, var_0.x))));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(vec3<bool>(true, true, true)) || select(all(vec3<bool>(any(vec3<bool>(true, true, false)), true, all(vec2<bool>(true, true)))), false, true);
    let var_1 = func_7(global0[_wgslsmith_index_u32(func_6(!select(select(vec3<bool>(false, true, var_0), vec3<bool>(var_0, var_0, false), vec3<bool>(false, false, var_0)), select(vec3<bool>(false, var_0, false), vec3<bool>(var_0, var_0, var_0), vec3<bool>(var_0, false, true)), false), func_1()), 5u)]);
    var var_2 = var_1.b;
    let var_3 = var_1;
    let var_4 = vec4<i32>(~_wgslsmith_mod_i32(-u_input.a.x, 38114i), _wgslsmith_sub_i32(u_input.a.x, -36857i), -1i, -_wgslsmith_mult_i32(u_input.c, -18543i) & abs(u_input.a.x)) >> (vec4<u32>(func_2(vec4<f32>(-815f, _wgslsmith_f_op_f32(var_1.a.x - 860f), _wgslsmith_f_op_f32(select(var_1.a.x, -1000f, var_0)), -1100f)), _wgslsmith_mod_u32(u_input.d.x, ~0u), ~var_3.b, max(_wgslsmith_div_u32(reverseBits(var_1.b), func_2(vec4<f32>(-439f, var_3.a.x, -2300f, 213f))), countOneBits(_wgslsmith_add_u32(56050u, 20725u)))) % vec4<u32>(32u));
    var_2 = 4294967295u;
    var var_5 = 4930u;
    var var_6 = vec3<f32>(var_3.a.x, -1597f, var_3.a.x);
    let var_7 = ~var_4.yx;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(~(-var_7.x), -var_7.x), var_3.a.wwx, var_1.a.x);
}

