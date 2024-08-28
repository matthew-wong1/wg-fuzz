struct Struct_1 {
    a: f32,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-568f, vec4<i32>(28225i, -36862i, 12574i, 0i));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: u32) -> vec4<i32> {
    var var_0 = Struct_1(743f, ~_wgslsmith_mult_vec4_i32(vec4<i32>(-1i) * -global0.b, global0.b));
    let var_1 = 20763i;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(332f))), vec4<i32>(firstTrailingBit(_wgslsmith_sub_i32(2518i, -5042i)), var_0.b.x, 1i, var_0.b.x | var_1) & vec4<i32>(-11130i, u_input.c.x, ~var_1, global0.b.x));
    var_0 = Struct_1(1f, firstLeadingBit(firstTrailingBit(-_wgslsmith_mod_vec4_i32(vec4<i32>(var_0.b.x, -2147483647i, -114i, -25830i), global0.b))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(var_2.a))))));
    return vec4<i32>(select(u_input.c.x, 14827i, true), ~1i, _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(global0.b.x, -var_2.b.x), ~(-vec2<i32>(-2147483647i, 337i))), -vec2<i32>(select(-25938i, global0.b.x, false), var_2.b.x)), firstLeadingBit(1i));
}

fn func_3(arg_0: vec4<f32>, arg_1: u32, arg_2: vec3<u32>, arg_3: vec2<f32>) -> vec3<bool> {
    global0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(trunc(-222f)), true))), _wgslsmith_mult_vec4_i32(global0.b, _wgslsmith_sub_vec4_i32(-vec4<i32>(0i, u_input.b.x, global0.b.x, u_input.b.x), global0.b >> (vec4<u32>(4294967295u, 0u, arg_1, arg_1) % vec4<u32>(32u))) | ~select(vec4<i32>(global0.b.x, -1i, -2147483647i, global0.b.x), global0.b, vec4<bool>(true, true, true, true))));
    global0 = Struct_1(arg_3.x, select(_wgslsmith_div_vec4_i32(-vec4<i32>(u_input.c.x, -2147483647i, 1i, u_input.c.x), global0.b), vec4<i32>(-1i, global0.b.x, global0.b.x, u_input.c.x), true));
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(403f * arg_3.x) + _wgslsmith_f_op_f32(arg_3.x * global0.a))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.a))) - arg_0.x))), _wgslsmith_f_op_f32(arg_3.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -260f))))), _wgslsmith_f_op_f32(-arg_0.x));
    global0 = Struct_1(_wgslsmith_f_op_f32(ceil(-2342f)), _wgslsmith_add_vec4_i32(firstTrailingBit(firstTrailingBit(vec4<i32>(0i, global0.b.x, global0.b.x, u_input.c.x))), _wgslsmith_mod_vec4_i32(abs(vec4<i32>(u_input.b.x, -1i, u_input.c.x, u_input.b.x)), global0.b)));
    var var_1 = ~_wgslsmith_clamp_vec3_u32(arg_2, vec3<u32>(min(max(4294967295u, 0u), 0u << (u_input.a % 32u)), 0u, _wgslsmith_add_u32(arg_1, arg_1)), arg_2);
    return select(select(select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), false), vec3<bool>(false, true, false)), select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), false), true)), vec3<bool>(~u_input.b.x < 1i, true, true), ~_wgslsmith_add_i32(-3980i, -15621i) >= _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(16144i, global0.b.x, 6149i, -1i), global0.b), _wgslsmith_sub_vec4_i32(vec4<i32>(-5639i, global0.b.x, 12836i, 12040i), global0.b))), select(!(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true))), !(!select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), true)), (_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, global0.b.x, 0i), global0.b.ywx) > ~(-1i)) || (arg_2.x < ~u_input.a)), !select(vec3<bool>(true, true, true), !select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), true), !select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true))));
}

fn func_1(arg_0: i32, arg_1: vec2<f32>, arg_2: vec3<i32>, arg_3: u32) -> bool {
    let var_0 = vec2<u32>(arg_3, 19722u);
    var var_1 = Struct_1(105f, _wgslsmith_sub_vec4_i32(func_2(4294967295u), vec4<i32>(min(u_input.c.x, 1i), min(u_input.b.x, u_input.b.x), -global0.b.x, 0i)) | -vec4<i32>(0i, 5450i | arg_0, -12925i, u_input.c.x));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1563f)) * var_1.a), var_1.a);
    let var_3 = global0.a;
    let var_4 = any(select(func_3(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(1975f, -163f, arg_1.x, 627f) + vec4<f32>(100f, 525f, global0.a, var_1.a)), _wgslsmith_f_op_vec4_f32(vec4<f32>(743f, 453f, -494f, global0.a) * vec4<f32>(var_1.a, var_1.a, global0.a, var_1.a)))), _wgslsmith_sub_u32(~var_0.x, arg_3), max(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, 4294967295u, 30785u), vec3<u32>(u_input.a, 63162u, 0u)), ~vec3<u32>(var_0.x, var_0.x, u_input.a)), _wgslsmith_f_op_vec2_f32(-arg_1)), vec3<bool>(all(vec2<bool>(true, true)), true, true), true));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec3<bool>(func_1(firstLeadingBit(_wgslsmith_sub_i32(global0.b.x, u_input.c.x)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1801f, global0.a))), -vec3<i32>(14594i, global0.b.x, -2147483647i), 0u), true, _wgslsmith_f_op_f32(-1876f * global0.a) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * 185f) + -144f));
    global0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a * 154f))), vec4<i32>(abs(-abs(-24702i)), ~_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(global0.b.zz, vec2<i32>(u_input.c.x, global0.b.x)), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, 13172i), vec2<i32>(2147483647i, global0.b.x))), -24875i | _wgslsmith_add_i32(select(global0.b.x, 1i, false), global0.b.x), 43453i));
    let var_1 = -890f;
    var var_2 = Struct_1(global0.a, vec4<i32>(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(global0.b.x, -1i, u_input.b.x)) | ~global0.b.yzz, global0.b.zww), u_input.b.x, 27579i, select(global0.b.x, ~(-global0.b.x), all(select(vec4<bool>(false, false, var_0.x, var_0.x), vec4<bool>(var_0.x, false, false, var_0.x), true)))));
    let var_3 = Struct_1(105f, ~(var_2.b >> (~_wgslsmith_mod_vec4_u32(vec4<u32>(45890u, u_input.a, u_input.a, u_input.a), vec4<u32>(60654u, u_input.a, u_input.a, u_input.a)) % vec4<u32>(32u))));
    var var_4 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -var_3.b);
    var var_5 = var_3;
    var_5 = Struct_1(global0.a, firstTrailingBit(var_3.b >> (~abs(vec4<u32>(u_input.a, u_input.a, 20645u, 47007u)) % vec4<u32>(32u))));
    let var_6 = var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(~(~max(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, 0u), vec3<u32>(u_input.a, 0u, 4294967295u)), ~0u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-252f, var_3.a, 409f))))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(968f, 1185f, var_1) - vec3<f32>(327f, var_5.a, var_5.a)))), var_0.x))));
}

