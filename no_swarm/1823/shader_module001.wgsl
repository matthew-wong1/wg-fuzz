struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-457f);

var<private> global1: i32;

var<private> global2: array<Struct_2, 10>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1) -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-162f, -353f, global0.a, 881f) * vec4<f32>(arg_0.a, arg_0.a, global0.a, global0.a)))))));
    return _wgslsmith_f_op_f32(global0.a + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1304f, arg_0.a)));
}

fn func_2(arg_0: Struct_2, arg_1: vec4<f32>) -> vec2<bool> {
    let var_0 = arg_1.yz;
    let var_1 = Struct_2(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-133f)) * -450f), _wgslsmith_f_op_f32(func_3(arg_0.a)))), Struct_1(1052f));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-arg_0.a.a));
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(arg_1)), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_0.x, -1459f)), -288f), _wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(1000f, arg_1.x, false)))), -833f)) - arg_1);
    global1 = u_input.c;
    return vec2<bool>(true, true);
}

fn func_1(arg_0: u32, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: Struct_1) -> vec2<bool> {
    return select(vec2<bool>(!arg_1.x, false), select(func_2(global2[_wgslsmith_index_u32(81868u, 10u)], vec4<f32>(1000f, _wgslsmith_f_op_f32(trunc(global0.a)), _wgslsmith_f_op_f32(min(1000f, -1749f)), arg_3.a)), select(vec2<bool>(true, any(arg_1.zw)), !select(arg_1.zz, vec2<bool>(false, false), arg_1.x), true), !(~arg_0 < ~arg_0)), any(vec2<bool>(_wgslsmith_mult_i32(-564i, u_input.a) == 1i, arg_1.x)));
}

fn func_4(arg_0: vec2<bool>) -> Struct_1 {
    var var_0 = _wgslsmith_sub_vec3_u32(~(~vec3<u32>(52341u, 1u, ~80472u)), vec3<u32>(1u, 1u, 1u));
    global1 = firstTrailingBit(~(-1i) >> (_wgslsmith_mult_u32(~14092u, var_0.x & ~var_0.x) % 32u));
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(global0.a * _wgslsmith_div_f32(_wgslsmith_f_op_f32(1344f * global0.a), -977f))), Struct_1(_wgslsmith_f_op_f32(ceil(global0.a))));
    var var_2 = ~firstTrailingBit(_wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(var_0.x, 4294967295u), var_0.xz), var_0.xx) >> (firstTrailingBit(vec2<u32>(var_0.x, 3285u)) % vec2<u32>(32u)));
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b.a * 1330f) * global0.a), var_1.b.a);
    return var_1.b;
}

fn func_5(arg_0: Struct_2) -> Struct_1 {
    global2 = array<Struct_2, 10>();
    global0 = func_4(vec2<bool>(true, true));
    let var_0 = false;
    let var_1 = vec4<bool>(true, var_0, all(select(vec4<bool>(var_0, var_0, true, true), !vec4<bool>(false, true, false, var_0), !vec4<bool>(var_0, var_0, true, var_0))) && !(!(!var_0)), var_0);
    var var_2 = ~_wgslsmith_add_vec2_i32(_wgslsmith_clamp_vec2_i32(u_input.b.yy, u_input.b.yy, vec2<i32>(_wgslsmith_mod_i32(u_input.b.x, u_input.a), 2147483647i ^ u_input.a)), vec2<i32>(2147483647i, ~u_input.c));
    return func_4(var_1.wz);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(Struct_2(func_4(func_1(_wgslsmith_add_u32(28823u, 38356u), vec4<bool>(true, true, false, false), Struct_1(global0.a), Struct_1(1123f))), Struct_1(global0.a)));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(trunc(global0.a)));
    var var_2 = -14159i;
    var var_3 = ~u_input.c;
    global0 = var_0;
    var var_4 = vec3<f32>(-1077f, 1075f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(787f, -173f)), _wgslsmith_f_op_f32(-var_0.a), var_0.a >= _wgslsmith_f_op_f32(-var_0.a))))));
    var_3 = u_input.c;
    var_3 = u_input.c ^ ~_wgslsmith_sub_i32(-abs(u_input.b.x), _wgslsmith_add_i32(-14461i, u_input.c | -2438i));
    let var_5 = vec4<bool>(select(true, true, !(all(vec2<bool>(false, false)) == true)), func_1(~(~(~1u)), !(!select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), false)), var_0, Struct_1(589f)).x, any(select(select(vec3<bool>(true, false, false), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true)), vec3<bool>(true, false, false)), select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), false), select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), false), func_2(global2[_wgslsmith_index_u32(1u, 10u)], vec4<f32>(934f, global0.a, 173f, var_1.a)).x), true && any(vec3<bool>(true, true, false)))), false);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, max(~(~(~21163u)), 1u << (_wgslsmith_dot_vec2_u32(vec2<u32>(50736u, 19329u), ~vec2<u32>(65273u, 4294967295u)) % 32u)), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(_wgslsmith_clamp_u32(92340u, 122208u, 60732u), 4294967295u)), 22450u), _wgslsmith_f_op_f32(-var_1.a));
}

