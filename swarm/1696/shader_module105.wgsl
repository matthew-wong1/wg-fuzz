struct Struct_1 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<i32>, arg_1: vec3<f32>, arg_2: vec3<i32>) -> vec2<u32> {
    var var_0 = true;
    let var_1 = Struct_1(~(vec2<u32>(1u, 1u) | _wgslsmith_clamp_vec2_u32(vec2<u32>(57042u, global0.x) << (vec2<u32>(global0.x, 1486u) % vec2<u32>(32u)), vec2<u32>(45570u, global0.x), vec2<u32>(global0.x, global0.x))));
    let var_2 = Struct_1(~(~_wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(var_1.a, var_1.a), vec2<u32>(36849u, var_1.a.x))));
    var var_3 = var_1;
    var var_4 = ~(-52876i);
    return ~_wgslsmith_clamp_vec2_u32(abs(~(~var_2.a)), var_3.a, max(abs(var_1.a << (vec2<u32>(global0.x, var_2.a.x) % vec2<u32>(32u))), min(~var_2.a, _wgslsmith_add_vec2_u32(var_1.a, vec2<u32>(94113u, global0.x)))));
}

fn func_2() -> Struct_1 {
    let var_0 = u_input.a.x;
    global0 = ~_wgslsmith_add_vec2_u32(vec2<u32>(~global0.x, _wgslsmith_mult_u32(global0.x, 2763u) >> (max(global0.x, 0u) % 32u)), vec2<u32>(global0.x, 0u) | func_3(vec4<i32>(-2147483647i, 1i, -1i, 34385i) & vec4<i32>(var_0, u_input.a.x, -19463i, 5395i), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1016f, 1000f, -500f))), vec3<i32>(2147483647i, var_0, -2147483647i)));
    global0 = ~(~reverseBits(vec2<u32>(0u, 0u) >> (vec2<u32>(global0.x, global0.x) % vec2<u32>(32u)))) ^ _wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(0u, _wgslsmith_mod_u32(global0.x, global0.x)), select(vec2<u32>(global0.x, 1u), _wgslsmith_mult_vec2_u32(vec2<u32>(global0.x, 1u), vec2<u32>(global0.x, global0.x)), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)))), _wgslsmith_add_vec2_u32(vec2<u32>(global0.x, ~32246u), vec2<u32>(~global0.x, 47349u)));
    global0 = ~vec2<u32>(global0.x << (1u % 32u), global0.x);
    let var_1 = u_input.a.x;
    return Struct_1(_wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_add_u32(global0.x, global0.x), 1u), firstTrailingBit(select(vec2<u32>(global0.x, 1u), vec2<u32>(1u, 4294967295u), true))) ^ ~abs(vec2<u32>(global0.x, 23319u) | vec2<u32>(98450u, 4294967295u)));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: vec2<bool>) -> u32 {
    global0 = arg_2.a;
    var var_0 = firstLeadingBit(vec2<i32>(abs(0i), -(~(u_input.a.x >> (global0.x % 32u)))));
    var_0 = vec2<i32>(select(u_input.a.x, u_input.a.x, any(!select(vec3<bool>(false, arg_1.x, true), vec3<bool>(arg_1.x, arg_1.x, arg_1.x), arg_3.x))), _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-23009i, u_input.a.x, var_0.x), vec3<i32>(-2147483647i, u_input.a.x, 79631i)), -(~vec3<i32>(u_input.a.x, -6818i, u_input.a.x))), _wgslsmith_clamp_vec3_i32(-vec3<i32>(0i, 1i, 3057i), ~firstTrailingBit(vec3<i32>(29488i, var_0.x, 18911i)), -_wgslsmith_clamp_vec3_i32(vec3<i32>(0i, var_0.x, var_0.x), vec3<i32>(2678i, u_input.a.x, 2147483647i), vec3<i32>(var_0.x, -15385i, -2147483647i)))));
    let var_1 = !select(!select(select(vec4<bool>(arg_3.x, false, false, arg_1.x), vec4<bool>(true, arg_3.x, arg_1.x, arg_1.x), vec4<bool>(arg_3.x, arg_1.x, arg_3.x, arg_3.x)), !vec4<bool>(arg_1.x, arg_1.x, true, arg_1.x), !vec4<bool>(false, arg_3.x, arg_3.x, arg_1.x)), vec4<bool>(true, !all(arg_1), true, arg_3.x), vec4<bool>(arg_1.x, any(!vec3<bool>(arg_1.x, arg_3.x, arg_1.x)), false, true));
    var var_2 = Struct_1(arg_0.a);
    return _wgslsmith_sub_u32(var_2.a.x, (~68027u << (arg_0.a.x % 32u)) ^ countOneBits(~0u)) ^ 34944u;
}

fn func_1(arg_0: bool) -> Struct_1 {
    var var_0 = any(vec4<bool>(all(select(!vec4<bool>(arg_0, arg_0, arg_0, arg_0), vec4<bool>(arg_0, arg_0, false, arg_0), vec4<bool>(true, arg_0, false, arg_0))), false, false, false));
    global0 = countOneBits(~(~firstLeadingBit(vec2<u32>(global0.x, 1u))));
    global0 = countOneBits(~abs(countOneBits(vec2<u32>(global0.x, global0.x))));
    global0 = vec2<u32>(1u, func_4(func_2(), vec2<bool>(true, true), func_2(), select(!(!vec2<bool>(arg_0, arg_0)), vec2<bool>(all(vec4<bool>(arg_0, false, arg_0, arg_0)), true), vec2<bool>(all(vec3<bool>(false, arg_0, true)), true))));
    var_0 = arg_0;
    return func_2();
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<i32>) -> bool {
    var var_0 = -(~vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.a.x, 1668i), arg_2), -arg_2.x, arg_2.x) ^ arg_2);
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-423f - _wgslsmith_f_op_f32(select(-1000f, 701f, true)))), -1066f)), -1383f));
    global0 = abs(vec2<u32>(_wgslsmith_clamp_u32(62209u, ~firstTrailingBit(global0.x), ~1u), arg_0.a.x));
    var var_2 = _wgslsmith_add_u32(4294967295u, _wgslsmith_clamp_u32(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(~1u, 5012u, _wgslsmith_add_u32(arg_1.a.x, arg_0.a.x)), min(reverseBits(vec3<u32>(arg_1.a.x, 19477u, global0.x)), ~vec3<u32>(arg_0.a.x, 0u, 57467u))), 1u));
    let var_3 = ~(i32(-1i) * -1i);
    return true;
}

fn func_6(arg_0: vec2<bool>, arg_1: bool) -> Struct_1 {
    let var_0 = Struct_1(vec2<u32>(29695u, global0.x));
    let var_1 = -1477f;
    global0 = vec2<u32>(~_wgslsmith_sub_u32(~var_0.a.x, _wgslsmith_add_u32(~61200u, 1u)), 1u);
    global0 = vec2<u32>(~(~(~func_3(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec3<f32>(var_1, var_1, -1649f), vec3<i32>(1i, 0i, u_input.a.x)).x)), select(func_1(true).a.x, 60126u, true));
    var var_2 = arg_1;
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1457f + 509f), 728f))))), -210f));
    let var_1 = func_6(!select(vec2<bool>(true, any(vec3<bool>(true, false, false))), vec2<bool>(all(vec2<bool>(false, true)), select(true, true, true)), !all(vec2<bool>(false, false))), func_5(func_1(true), Struct_1(vec2<u32>(global0.x, global0.x) << (vec2<u32>(global0.x, global0.x) % vec2<u32>(32u))), ~(~vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x))) != func_5(func_1(true), Struct_1(~vec2<u32>(global0.x, 4294967295u)), -vec3<i32>(2147483647i, 1i, -10897i) & _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, -43064i, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x))));
    let var_2 = !select(select(vec4<bool>(var_0 >= var_0, any(vec2<bool>(true, false)), true, all(vec4<bool>(false, true, true, true))), select(vec4<bool>(false, true, false, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), false), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), true)), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, _wgslsmith_f_op_f32(round(var_0)) <= 594f, true), !vec4<bool>(true, true, true, any(vec4<bool>(false, false, false, true))));
    var var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1604f, var_0, 1000f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-1088f, -220f))))));
    var_3 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(floor(362f)), var_3.x, _wgslsmith_f_op_f32(max(var_3.x, 321f)), var_0), vec4<f32>(-1000f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -2114f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -953f))), 354f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(abs(~vec3<u32>(67803u, 65827u, var_1.a.x)), vec3<u32>(func_4(Struct_1(vec2<u32>(var_1.a.x, var_1.a.x)), var_2.yx, var_1, var_2.yz), 0u, global0.x)), vec3<u32>(1u, global0.x, func_4(Struct_1(var_1.a), var_2.yw, Struct_1(var_1.a), vec2<bool>(var_2.x, true))) ^ _wgslsmith_add_vec3_u32(vec3<u32>(70637u, global0.x, 102382u) | vec3<u32>(global0.x, global0.x, 4294967295u), vec3<u32>(0u, global0.x, var_1.a.x))));
}

