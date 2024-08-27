struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
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

var<private> global0: Struct_1 = Struct_1(2147483647i, vec3<i32>(i32(-2147483648), 0i, i32(-2147483648)), vec3<u32>(4294967295u, 5001u, 0u));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> i32 {
    var var_0 = ~global0.c;
    let var_1 = vec4<f32>(_wgslsmith_div_f32(571f, -685f), -322f, 515f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1954f, -1371f)) + _wgslsmith_f_op_f32(f32(-1f) * -114f)), 428f))));
    var var_2 = Struct_1(1i, vec3<i32>(global0.b.x, 1i, 1i), vec3<u32>(_wgslsmith_dot_vec4_u32(firstTrailingBit(select(vec4<u32>(1u, u_input.a.x, 1u, 22954u), vec4<u32>(global0.c.x, 4294967295u, 79921u, u_input.a.x), vec4<bool>(false, false, false, true))), ~_wgslsmith_add_vec4_u32(vec4<u32>(1u, 17334u, 11758u, 4294967295u), vec4<u32>(u_input.a.x, 1u, var_0.x, global0.c.x))), abs(_wgslsmith_mod_u32(_wgslsmith_mod_u32(u_input.a.x, 4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 83198u, 4294967295u, var_0.x), vec4<u32>(4294967295u, 0u, u_input.a.x, u_input.a.x)))), ~reverseBits(var_0.x)));
    var var_3 = Struct_1(var_2.b.x, -global0.b, ~vec3<u32>(countOneBits(_wgslsmith_clamp_u32(u_input.a.x, 66679u, 26488u)), u_input.a.x, u_input.a.x));
    var_2 = Struct_1(-2147483647i, ~vec3<i32>(firstTrailingBit(var_2.b.x), -1i, _wgslsmith_mult_i32(_wgslsmith_add_i32(962i, 18222i), 0i)), _wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_add_u32(global0.c.x, var_3.c.x), var_2.c.x, firstLeadingBit(var_2.c.x)), var_2.c));
    return 4747i;
}

fn func_2() -> vec4<f32> {
    var var_0 = 1u;
    let var_1 = Struct_1(min(~global0.b.x >> (1u % 32u), global0.b.x | 2240i), vec3<i32>(71112i, global0.a, func_3()), ~_wgslsmith_clamp_vec3_u32(global0.c, global0.c, min(firstTrailingBit(global0.c), global0.c)));
    let var_2 = _wgslsmith_div_u32(43261u, var_1.c.x);
    var var_3 = var_1;
    var_3 = var_1;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-930f, -964f, _wgslsmith_f_op_f32(1000f + -466f), -2123f))) * vec4<f32>(_wgslsmith_f_op_f32(select(-377f, _wgslsmith_f_op_f32(f32(-1f) * -1300f), any(vec3<bool>(true, true, true)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-479f, _wgslsmith_f_op_f32(-615f * 105f))), 359f), -490f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-425f * -1505f) + 877f)));
}

fn func_4(arg_0: f32, arg_1: vec4<f32>, arg_2: vec2<bool>) -> Struct_1 {
    global0 = Struct_1(global0.b.x, global0.b, select(global0.c, global0.c, vec3<bool>(arg_2.x, true, !(-926f > arg_1.x))));
    global0 = Struct_1(global0.a, ~(-vec3<i32>(-2147483647i, 1i, -global0.b.x)), global0.c & _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, _wgslsmith_div_u32(11401u, u_input.a.x), _wgslsmith_add_u32(u_input.a.x, u_input.a.x)), vec3<u32>(_wgslsmith_sub_u32(global0.c.x, global0.c.x), _wgslsmith_div_u32(1792u, u_input.a.x), 4294967295u)));
    return Struct_1(~(~21875i), vec3<i32>(_wgslsmith_add_i32(0i, func_3()), -1i, global0.a) | vec3<i32>(_wgslsmith_add_i32(min(-30902i, 5692i), 6874i), global0.a, 1i), countOneBits(~(vec3<u32>(12827u, 0u, 23087u) >> ((vec3<u32>(4294967295u, u_input.a.x, global0.c.x) & global0.c) % vec3<u32>(32u)))));
}

fn func_5(arg_0: u32, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    var var_0 = arg_2;
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(671f, -223f, -146f, -1106f) * vec4<f32>(392f, -2195f, -175f, -480f)), vec4<f32>(1214f, 548f, -100f, 1832f), false)), vec4<f32>(711f, 1000f, -1000f, 888f)))));
    var var_2 = func_4(-186f, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-var_1), vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.x))), 2014f, -1114f, -176f), any(!select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false))))), vec2<bool>(true, true && all(select(vec2<bool>(true, true), vec2<bool>(true, true), false))));
    var var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, 107f) + var_1.zx);
    let var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(var_1.zwz)));
    return var_1.x;
}

fn func_1(arg_0: Struct_1) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(select(166f, _wgslsmith_f_op_f32(func_5(46478u, vec4<u32>(69273u, select(~arg_0.c.x, _wgslsmith_mult_u32(global0.c.x, u_input.a.x), any(vec4<bool>(true, true, false, false))), 49589u, firstLeadingBit(1u >> (global0.c.x % 32u))), func_4(-1000f, _wgslsmith_f_op_vec4_f32(func_2()), !select(vec2<bool>(true, true), vec2<bool>(true, false), true)), arg_0)), all(!vec2<bool>(true, all(vec4<bool>(true, false, true, false))))));
    global0 = arg_0;
    var var_1 = Struct_1(global0.a, (arg_0.b << (~vec3<u32>(global0.c.x, arg_0.c.x, 1u) % vec3<u32>(32u))) | global0.b, ~vec3<u32>(u_input.a.x, arg_0.c.x, 0u));
    var_1 = arg_0;
    var var_2 = vec4<u32>(var_1.c.x, abs(reverseBits(~1u)), _wgslsmith_dot_vec3_u32(~vec3<u32>(arg_0.c.x, var_1.c.x, global0.c.x) ^ ~(vec3<u32>(1u, arg_0.c.x, 19964u) >> (vec3<u32>(var_1.c.x, u_input.a.x, 4294967295u) % vec3<u32>(32u))), _wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_add_u32(arg_0.c.x, 0u), global0.c.x, u_input.a.x | var_1.c.x), vec3<u32>(~arg_0.c.x, ~var_1.c.x, ~u_input.a.x))), ~arg_0.c.x);
    return var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(global0.a & 2147483647i, vec3<i32>(global0.b.x ^ ~(-global0.a), -17037i, ~global0.a), reverseBits(vec3<u32>(~1u, 5201u, func_1(Struct_1(global0.b.x, global0.b, vec3<u32>(global0.c.x, global0.c.x, 0u))))));
    let var_1 = Struct_1(2248i, -vec3<i32>(~min(-18413i, global0.a), 1i, _wgslsmith_mult_i32(0i, ~var_0.a)), _wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 0u, 41657u) & (global0.c & vec3<u32>(u_input.a.x, 1u, 1u)), var_0.c, ~(~var_0.c)), global0.c));
    var var_2 = vec2<u32>(~4294967295u, u_input.a.x);
    var var_3 = var_1;
    let var_4 = Struct_1(max(-1i, global0.b.x), ~firstLeadingBit(vec3<i32>(~var_0.a, _wgslsmith_add_i32(var_3.a, var_3.b.x), _wgslsmith_div_i32(global0.a, var_3.b.x))), global0.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(firstTrailingBit(reverseBits(select(28856u, 1u, true))), 1u | _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, var_1.c.x, global0.c.x, global0.c.x), vec4<u32>(31738u, global0.c.x, 4294967295u, var_1.c.x))));
}

