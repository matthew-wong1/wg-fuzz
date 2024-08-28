struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: bool) -> Struct_1 {
    return Struct_1(_wgslsmith_f_op_f32(-arg_0.a));
}

fn func_3(arg_0: Struct_2) -> u32 {
    var var_0 = !vec3<bool>(true, any(vec2<bool>(any(vec3<bool>(true, true, false)), true)), any(vec4<bool>(false, all(vec2<bool>(true, false)), true, true)));
    var var_1 = select(!(!vec3<bool>(var_0.x || false, var_0.x, true)), vec3<bool>(true, all(!vec4<bool>(true, false, var_0.x, var_0.x)), select(var_0.x, !var_0.x, true)), select(select(!vec3<bool>(var_0.x, var_0.x, var_0.x), select(vec3<bool>(var_0.x, var_0.x, var_0.x), select(vec3<bool>(false, var_0.x, true), vec3<bool>(var_0.x, false, false), vec3<bool>(true, var_0.x, true)), arg_0.b <= 37656u), vec3<bool>(any(vec3<bool>(var_0.x, false, true)), var_0.x, var_0.x)), vec3<bool>(any(var_0.xz), any(!vec3<bool>(true, false, var_0.x)), all(!vec4<bool>(var_0.x, false, var_0.x, false))), all(vec2<bool>(arg_0.a.a < arg_0.a.a, true))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.a.a * arg_0.a.a), -152f)))));
    var_1 = vec3<bool>(false, var_1.x, false);
    var_1 = !(!vec3<bool>(var_1.x, false, all(select(vec2<bool>(false, true), var_1.yy, true))));
    return 0u;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> vec3<u32> {
    let var_0 = Struct_2(arg_0, ~61877u, u_input.a.x);
    let var_1 = arg_3;
    var var_2 = min(_wgslsmith_clamp_vec2_u32(firstLeadingBit(vec2<u32>(abs(4294967295u), u_input.a.x << (26560u % 32u))), ~u_input.a.yy, u_input.a.zy), ~(~vec2<u32>(33830u, var_0.c) >> (~(~u_input.a.xy) % vec2<u32>(32u))));
    var var_3 = _wgslsmith_div_u32(_wgslsmith_mult_u32(func_3(var_0) >> (var_0.b % 32u), ~(4294967295u << (~u_input.a.x % 32u))), u_input.a.x);
    var var_4 = Struct_2(arg_0, _wgslsmith_add_u32(1u, _wgslsmith_sub_u32(~(~var_2.x), max(firstTrailingBit(28602u), 43641u))), _wgslsmith_add_u32(35926u, 0u));
    return select(u_input.a << (_wgslsmith_mod_vec3_u32(u_input.a, vec3<u32>(u_input.a.x, 0u, 79264u) >> (max(vec3<u32>(var_4.c, u_input.a.x, 21617u), vec3<u32>(u_input.a.x, 1u, 17158u)) % vec3<u32>(32u))) % vec3<u32>(32u)), vec3<u32>(u_input.a.x, 0u, var_0.c), true);
}

fn func_4(arg_0: vec3<u32>) -> Struct_2 {
    let var_0 = vec4<i32>(2147483647i, _wgslsmith_dot_vec4_i32(~(-min(vec4<i32>(2826i, -46893i, -21964i, 0i), vec4<i32>(2147483647i, 0i, 1i, 31852i))), select(-vec4<i32>(2147483647i, 6495i, -2147483647i, 38736i), _wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, 1i, 10695i, 42691i), ~vec4<i32>(2147483647i, -2147483647i, -14192i, 71345i)), true)), countOneBits(1i), -(~_wgslsmith_clamp_i32(-2147483647i, 0i, -43354i)) | max(-2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 2147483647i, 2147483647i, 0i) >> (vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 0u) % vec4<u32>(32u)), -vec4<i32>(-1i, -40856i, -104029i, 12130i))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -571f));
    var var_2 = vec2<u32>(_wgslsmith_mult_u32(~arg_0.x, _wgslsmith_add_u32(firstLeadingBit(arg_0.x), max(arg_0.x, u_input.a.x))), func_2(var_1, Struct_1(_wgslsmith_f_op_f32(974f - _wgslsmith_f_op_f32(min(var_1.a, -124f)))), var_1, var_1).x);
    let var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a + var_1.a)));
    let var_4 = Struct_2(var_1, var_2.x, _wgslsmith_mod_u32(func_3(Struct_2(func_1(var_1, false, true), 0u, _wgslsmith_sub_u32(u_input.a.x, u_input.a.x))), var_2.x));
    return var_4;
}

fn func_5(arg_0: vec2<f32>, arg_1: f32, arg_2: Struct_2) -> Struct_2 {
    let var_0 = vec2<i32>(1i, abs(45657i));
    var var_1 = vec2<bool>(all(select(vec3<bool>(true, any(vec2<bool>(false, false)), true), vec3<bool>(true, false, true), all(vec4<bool>(true, false, false, false)))), true);
    var var_2 = arg_2.a;
    let var_3 = ~vec2<u32>(42436u, u_input.a.x);
    let var_4 = ~(~1u);
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_1(Struct_1(719f), !(true & all(vec4<bool>(true, false, false, true))), any(vec2<bool>(select(false, false, true), false))), u_input.a.x, 46540u);
    var_0 = func_5(vec2<f32>(_wgslsmith_f_op_f32(round(1306f)), _wgslsmith_f_op_f32(var_0.a.a - _wgslsmith_div_f32(func_1(Struct_1(-233f), true, false).a, -377f))), var_0.a.a, func_4(_wgslsmith_clamp_vec3_u32(func_2(var_0.a, var_0.a, func_1(var_0.a, false, false), var_0.a), vec3<u32>(16643u, ~var_0.b, 4294967295u), firstLeadingBit(u_input.a))));
    var var_1 = var_0.a;
    var_1 = func_1(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a))), select(false, select(true, any(vec3<bool>(true, true, true)), true), !select(true, false, false)) & true, !any(!select(vec2<bool>(true, false), vec2<bool>(true, true), true)));
    let var_2 = func_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(522f, 122f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.a, 821f))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(var_1.a, _wgslsmith_f_op_f32(-var_0.a.a))), -1091f)), func_4(select(_wgslsmith_div_vec3_u32(~vec3<u32>(65649u, u_input.a.x, u_input.a.x), max(vec3<u32>(63772u, 4294967295u, 34216u), u_input.a)), func_2(func_5(vec2<f32>(1103f, 733f), var_1.a, Struct_2(Struct_1(-327f), var_0.b, u_input.a.x)).a, func_4(vec3<u32>(1u, var_0.c, u_input.a.x)).a, var_0.a, var_0.a), any(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false))))));
    let x = u_input.a;
    s_output = StorageBuffer(1i, _wgslsmith_f_op_f32(step(var_2.a.a, var_1.a)), vec3<i32>(i32(-1i) * -(i32(-1i) * -5473i), -29811i, -5477i));
}

