struct Struct_1 {
    a: vec3<u32>,
    b: f32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec4<f32>,
    d: f32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: i32) -> vec2<bool> {
    return select(!vec2<bool>(false, all(vec2<bool>(true, true))), !select(vec2<bool>(true, true), vec2<bool>(true, any(vec3<bool>(false, true, false))), vec2<bool>(true, true)), select(any(vec4<bool>(u_input.a.x < 12059u, all(vec2<bool>(true, true)), true, false)), !any(vec4<bool>(true, true, true, true)), all(vec2<bool>(false, true))));
}

fn func_4(arg_0: vec2<u32>, arg_1: u32, arg_2: vec2<bool>, arg_3: Struct_1) -> u32 {
    var var_0 = Struct_1(global0.b.a, _wgslsmith_f_op_f32(max(global0.b.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-343f)) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(arg_3.b))))))));
    var var_1 = 2147483647i;
    var var_2 = arg_2.x;
    var var_3 = true;
    let var_4 = firstTrailingBit(u_input.a);
    return 35162u;
}

fn func_2(arg_0: Struct_1) -> Struct_2 {
    var var_0 = Struct_2(select(u_input.a.yx, ~abs(select(vec2<u32>(14408u, global0.a.x), vec2<u32>(arg_0.a.x, u_input.a.x), vec2<bool>(true, true))), vec2<bool>(any(vec4<bool>(false, true, false, false)), false)), Struct_1(global0.b.a, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1379f)), _wgslsmith_f_op_f32(select(-421f, global0.b.b, true))), arg_0.b)));
    global0 = Struct_2(vec2<u32>(u_input.a.x, ~firstTrailingBit(arg_0.a.x)), arg_0);
    let var_1 = vec3<i32>(~_wgslsmith_clamp_i32(~(-1i), -_wgslsmith_mult_i32(11811i, 62971i), _wgslsmith_sub_i32(~0i, firstLeadingBit(1483i))), 2147483647i, 1i);
    var var_2 = func_4(vec2<u32>(~_wgslsmith_sub_u32(1u, ~global0.b.a.x), ~(~global0.a.x)), ~max(abs(~41038u), ~global0.a.x), func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b.b - _wgslsmith_f_op_f32(step(var_0.b.b, -1000f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-295f * arg_0.b))), Struct_2(~(vec2<u32>(4294967295u, global0.b.a.x) ^ vec2<u32>(global0.b.a.x, 4294967295u)), global0.b), -18809i), var_0.b);
    var_2 = var_0.a.x;
    return Struct_2(min(var_0.b.a.zx << (_wgslsmith_mod_vec2_u32(vec2<u32>(var_0.b.a.x, 1u), min(global0.b.a.xz, vec2<u32>(u_input.a.x, arg_0.a.x))) % vec2<u32>(32u)), ~vec2<u32>(u_input.a.x, 0u)), Struct_1(_wgslsmith_clamp_vec3_u32(u_input.a, firstLeadingBit(vec3<u32>(global0.a.x, global0.a.x, var_0.a.x)) & countOneBits(vec3<u32>(arg_0.a.x, global0.a.x, u_input.a.x)), _wgslsmith_add_vec3_u32(arg_0.a, vec3<u32>(global0.a.x, arg_0.a.x, 1u))), global0.b.b));
}

fn func_1() -> Struct_2 {
    return func_2(global0.b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    global0 = Struct_2(_wgslsmith_sub_vec2_u32(~global0.a, firstLeadingBit(vec2<u32>(~u_input.a.x, u_input.a.x))), global0.b);
    var var_0 = global0.b;
    var var_1 = func_1();
    let var_2 = (global0.b.a & vec3<u32>(~(~5839u), ~_wgslsmith_clamp_u32(1u, var_1.a.x, var_1.b.a.x), global0.b.a.x)) & ~(~global0.b.a);
    var_1 = func_2(var_1.b);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~var_0.a.x, 38094u), ~((firstTrailingBit(vec4<i32>(-2147483647i, 0i, 25079i, 113557i)) ^ -vec4<i32>(-27128i, -2147483647i, 23219i, -14872i)) | ~(-vec4<i32>(-2147483647i, -1i, 2147483647i, 23215i))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1268f, -339f, 133f, -473f))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.b.b, var_0.b, var_0.b, global0.b.b), vec4<f32>(-216f, 1150f, var_0.b, var_0.b), vec4<bool>(false, true, true, false))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b.b, var_1.b.b, var_0.b, 329f)))), true))), -640f, _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_div_f32(var_0.b, var_0.b), -852f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.b - global0.b.b))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(var_0.b - var_0.b), _wgslsmith_f_op_f32(ceil(274f)), _wgslsmith_f_op_f32(340f + -588f)), vec3<f32>(-535f, -1629f, _wgslsmith_f_op_f32(-var_0.b)), !all(vec4<bool>(false, true, true, false)))))));
}

