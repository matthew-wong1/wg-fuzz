struct Struct_1 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: Struct_1;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: vec2<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_add_u32(0u, select(0u, abs(~u_input.b.x), arg_0));
    return Struct_1(vec2<i32>(2147483647i, firstLeadingBit(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, 20989i), global1.a), -2147483647i))));
}

fn func_3(arg_0: u32, arg_1: vec4<bool>, arg_2: Struct_1) -> i32 {
    let var_0 = all(select(vec3<bool>(!(!global0.x), false, true), vec3<bool>(all(arg_1), true, true), _wgslsmith_dot_vec2_u32(~u_input.b.xy, max(vec2<u32>(1u, arg_0), u_input.b.yx)) > ~arg_0));
    var var_1 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1000f, _wgslsmith_f_op_f32(-764f * 936f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-205f * -1699f), 661f)), _wgslsmith_f_op_f32(f32(-1f) * -480f)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(903f))), _wgslsmith_f_op_f32(-358f - -1418f), 2047f, _wgslsmith_div_f32(-842f, _wgslsmith_f_op_f32(-859f - -140f)))))));
    let var_2 = 10365u << (1u % 32u);
    let var_3 = func_1(any(!select(!vec3<bool>(var_0, false, arg_1.x), vec3<bool>(true, false, var_0), select(vec3<bool>(arg_1.x, true, global0.x), vec3<bool>(true, global0.x, var_0), vec3<bool>(var_0, false, false)))), -abs(-arg_2.a.x) ^ -23829i, vec2<u32>(0u, u_input.b.x));
    global1 = Struct_1(max(~vec2<i32>(-1i, arg_2.a.x) << ((select(vec2<u32>(arg_0, var_2), u_input.b.xx, false) | u_input.b.yy) % vec2<u32>(32u)), countOneBits(~u_input.a) ^ vec2<i32>(select(-2147483647i, -33514i, arg_1.x), ~global1.a.x)));
    return 0i;
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: i32) -> f32 {
    global0 = select(select(vec2<bool>(global0.x, true), !vec2<bool>(false || global0.x, all(vec4<bool>(false, true, global0.x, global0.x))), vec2<bool>(global0.x, global0.x)), !select(!select(vec2<bool>(false, global0.x), vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, global0.x)), select(!vec2<bool>(false, global0.x), select(vec2<bool>(global0.x, true), vec2<bool>(true, false), vec2<bool>(global0.x, global0.x)), true), !any(vec3<bool>(global0.x, false, true))), !all(select(!vec2<bool>(true, global0.x), select(vec2<bool>(global0.x, false), vec2<bool>(global0.x, false), vec2<bool>(true, global0.x)), vec2<bool>(false, global0.x))));
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-530f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -305f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -678f), _wgslsmith_f_op_f32(floor(355f))))))));
    let var_1 = any(select(select(!select(vec2<bool>(global0.x, false), vec2<bool>(true, true), global0.x), select(!vec2<bool>(global0.x, true), select(vec2<bool>(true, true), vec2<bool>(global0.x, global0.x), global0.x), select(vec2<bool>(global0.x, false), vec2<bool>(false, global0.x), vec2<bool>(global0.x, global0.x))), true), vec2<bool>(!global0.x, false), select(!select(vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, false), global0.x), select(!vec2<bool>(true, global0.x), vec2<bool>(true, true), select(global0.x, global0.x, true)), all(!vec3<bool>(global0.x, global0.x, false)))));
    var var_2 = Struct_1(u_input.a);
    return 1000f;
}

fn func_2() -> u32 {
    var var_0 = _wgslsmith_mult_vec2_i32(func_1(global0.x, -1i, vec2<u32>(4294967295u, ~_wgslsmith_add_u32(u_input.b.x, u_input.b.x))).a, global1.a);
    var var_1 = vec3<u32>(u_input.b.x, ~((_wgslsmith_div_u32(1u, u_input.b.x) >> (1u % 32u)) >> (1u % 32u)), firstTrailingBit(u_input.b.x) ^ 76423u);
    let var_2 = _wgslsmith_f_op_f32(func_4(func_1(false, ~(-global1.a.x) ^ ~func_3(var_1.x, vec4<bool>(true, false, global0.x, true), Struct_1(vec2<i32>(1i, u_input.a.x))), ~select(u_input.b.yy, vec2<u32>(var_1.x, u_input.b.x), vec2<bool>(false, global0.x))), countOneBits(~(-global1.a.x)), firstTrailingBit(~(-2147483647i))));
    var var_3 = _wgslsmith_sub_i32(25375i ^ u_input.a.x, -_wgslsmith_add_i32(u_input.a.x, global1.a.x));
    global1 = func_1(true, u_input.a.x, ~_wgslsmith_clamp_vec2_u32(u_input.b.yx, abs(u_input.b.zx), ~(vec2<u32>(16328u, u_input.b.x) & var_1.yx)));
    return ~var_1.x;
}

fn func_5(arg_0: u32, arg_1: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_sub_i32(2147483647i, u_input.a.x);
    var var_1 = func_1(any(!(!vec3<bool>(global0.x, global0.x, false))), 1i, countOneBits(u_input.b.yx) ^ u_input.b.zy);
    let var_2 = Struct_1(-var_1.a);
    let var_3 = true;
    var_1 = func_1(any(!select(select(vec3<bool>(true, true, var_3), vec3<bool>(var_3, var_3, global0.x), vec3<bool>(false, true, var_3)), !vec3<bool>(true, global0.x, false), select(vec3<bool>(false, false, global0.x), vec3<bool>(false, true, var_3), vec3<bool>(true, false, global0.x)))), ~_wgslsmith_clamp_i32(var_2.a.x, _wgslsmith_mult_i32(_wgslsmith_add_i32(40890i, -14175i), arg_1.a.x << (u_input.b.x % 32u)), var_0), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.b.x), max(vec2<u32>(arg_0, u_input.b.x), vec2<u32>(arg_0, u_input.b.x))), _wgslsmith_dot_vec3_u32(u_input.b << (vec3<u32>(arg_0, arg_0, arg_0) % vec3<u32>(32u)), select(u_input.b, vec3<u32>(1u, 1u, 114448u), global0.x))) & u_input.b.yx);
    return Struct_1(var_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1(!global0.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-43205i & u_input.a.x, u_input.a.x), -vec2<i32>(2147483647i, select(2147483647i, -5809i, global0.x))), ~vec2<u32>(8928u, 4294967295u));
    global1 = func_5(_wgslsmith_div_u32(func_2() ^ u_input.b.x, _wgslsmith_mod_u32(5765u >> (1u % 32u), 63435u) ^ ~(~u_input.b.x)), Struct_1(u_input.a));
    let var_0 = false;
    var var_1 = !(!select(!select(vec4<bool>(true, false, var_0, var_0), vec4<bool>(var_0, global0.x, var_0, var_0), vec4<bool>(global0.x, global0.x, false, true)), select(!vec4<bool>(global0.x, var_0, var_0, true), !vec4<bool>(false, var_0, false, var_0), true), true & !global0.x));
    let var_2 = var_1.x;
    global0 = vec2<bool>(false, var_1.x);
    let var_3 = true;
    global0 = vec2<bool>((4294967295u << (((u_input.b.x >> (u_input.b.x % 32u)) >> (firstTrailingBit(u_input.b.x) % 32u)) % 32u)) >= ~(~15601u | u_input.b.x), true);
    var_1 = vec4<bool>(true, any(!select(var_1.yxz, var_1.yxz, all(vec3<bool>(true, var_0, true)))), true, any(var_1.xyw));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x);
}

