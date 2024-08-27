struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec4<i32>,
    d: u32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, false, false, false);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: Struct_1, arg_3: Struct_2) -> vec2<bool> {
    global0 = vec4<bool>(arg_3.a.a.x, false, true & arg_3.a.a.x, all(!vec4<bool>(true, !arg_2.a.x, true, arg_3.a.a.x)));
    let var_0 = Struct_1(arg_3.a.a);
    let var_1 = arg_3.b;
    var var_2 = arg_3.b.x;
    let var_3 = arg_3;
    return vec2<bool>(!(arg_3.d.x != ~(29227u & var_3.d.x)), arg_2.a.x);
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: bool) -> Struct_1 {
    global0 = !vec4<bool>(true & !any(arg_0.a.yz), any(vec3<bool>(any(vec3<bool>(arg_0.a.x, arg_1, false)), true, true)), any(global0.wy), arg_2);
    var var_0 = any(arg_0.a.yx);
    let var_1 = select(func_2(-483f, true, arg_0, Struct_2(arg_0, vec4<i32>(2147483647i, -1i, select(2147483647i, 26864i, arg_1), 1i), select(vec2<i32>(1i, 2147483647i), ~vec2<i32>(78873i, -20844i), !global0.yy), ~(~vec4<u32>(54346u, u_input.a.x, 0u, 62684u)))), !vec2<bool>(true, all(select(global0.xx, vec2<bool>(true, true), vec2<bool>(true, arg_1)))), false);
    let var_2 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -815f), _wgslsmith_div_f32(-257f, -330f), -533f, -739f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1262f, _wgslsmith_f_op_f32(f32(-1f) * -680f), 1530f, _wgslsmith_div_f32(-412f, 151f)))))));
    let var_3 = Struct_2(Struct_1(!select(vec3<bool>(arg_0.a.x, true, false), arg_0.a, false)), firstTrailingBit(~(vec4<i32>(-192i, -1i, 2147483647i, 12360i) << (~vec4<u32>(12497u, 1u, u_input.a.x, 55074u) % vec4<u32>(32u)))), _wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(~1i, -1i), vec2<i32>(-2147483647i, ~30847i)), vec2<i32>(~1i, firstLeadingBit(_wgslsmith_div_i32(-2147483647i, -50683i)))), _wgslsmith_clamp_vec4_u32(select(max(vec4<u32>(u_input.a.x, u_input.a.x, 68262u, u_input.a.x), vec4<u32>(62626u, 67823u, 10253u, u_input.a.x)), ~vec4<u32>(u_input.a.x, 52776u, u_input.a.x, 0u), !arg_0.a.x), ~abs(vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 0u)), ~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4294967295u) << (countOneBits(vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, 77057u)) % vec4<u32>(32u))) << (vec4<u32>(4294967295u, _wgslsmith_clamp_u32(firstTrailingBit(u_input.a.x), firstTrailingBit(u_input.a.x), ~u_input.a.x), 10522u, ~(u_input.a.x ^ u_input.a.x)) % vec4<u32>(32u)));
    return arg_0;
}

fn func_1(arg_0: vec2<i32>, arg_1: vec4<bool>, arg_2: f32, arg_3: Struct_1) -> f32 {
    let var_0 = func_3(Struct_1(select(!select(global0.wzx, global0.yxw, true), !(!arg_1.wzz), vec3<bool>(true, any(vec3<bool>(true, true, false)), !global0.x))), all(select(func_2(-940f, true, arg_3, Struct_2(Struct_1(global0.yzy), vec4<i32>(-26151i, -9958i, arg_0.x, 17759i), vec2<i32>(0i, arg_0.x), vec4<u32>(u_input.a.x, u_input.a.x, 0u, u_input.a.x))), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), arg_3.a.xx), func_2(-821f, arg_3.a.x, Struct_1(vec3<bool>(arg_1.x, false, true)), Struct_2(arg_3, vec4<i32>(-2147483647i, 2843i, arg_0.x, -3161i), vec2<i32>(arg_0.x, arg_0.x), vec4<u32>(25308u, 29747u, u_input.a.x, u_input.a.x)))), func_2(_wgslsmith_f_op_f32(exp2(arg_2)), true, Struct_1(vec3<bool>(arg_3.a.x, true, false)), Struct_2(Struct_1(arg_1.wxx), vec4<i32>(arg_0.x, 6105i, arg_0.x, arg_0.x), vec2<i32>(arg_0.x, 1i), vec4<u32>(25462u, u_input.a.x, 19169u, u_input.a.x))))), !(!arg_1.x));
    global0 = select(vec4<bool>(!(true && any(vec4<bool>(global0.x, arg_1.x, global0.x, true))), !(arg_2 > _wgslsmith_f_op_f32(arg_2 + arg_2)), any(!vec4<bool>(arg_3.a.x, arg_1.x, true, arg_3.a.x)), var_0.a.x), select(!select(vec4<bool>(false, true, true, false), select(arg_1, vec4<bool>(global0.x, false, arg_3.a.x, global0.x), true), !arg_1), select(select(select(vec4<bool>(false, arg_3.a.x, arg_1.x, false), arg_1, global0.x), vec4<bool>(global0.x, var_0.a.x, var_0.a.x, arg_3.a.x), arg_0.x != 8691i), arg_1, (u_input.a.x | u_input.a.x) < (44574u >> (u_input.a.x % 32u))), all(!arg_1.zx)), vec4<bool>(true | var_0.a.x, all(vec3<bool>(all(arg_1), global0.x, true)), global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)) >= _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-652f))))));
    global0 = arg_1;
    return -976f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(global0.ywx);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1070f), _wgslsmith_f_op_f32(step(-1650f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1299f, -984f) - 813f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))), ~vec4<i32>(0i, 2147483647i, select(-30210i, countOneBits(-2888i), true), 1i), 0u, vec3<f32>(_wgslsmith_f_op_f32(abs(-196f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_1(vec2<i32>(-1i, -2259i), vec4<bool>(var_0.a.x, global0.x, global0.x, false), -1436f, Struct_1(var_0.a))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(915f, -297f, true)))));
}

