struct Struct_1 {
    a: bool,
    b: bool,
    c: vec2<u32>,
    d: u32,
}

struct Struct_2 {
    a: f32,
    b: vec4<f32>,
    c: Struct_1,
    d: vec3<f32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec4<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(619f, 279f);

var<private> global1: Struct_2;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: f32) -> vec2<bool> {
    return !(!vec2<bool>(global1.c.a, _wgslsmith_dot_vec4_u32(vec4<u32>(65447u, 19273u, 95842u, arg_1), vec4<u32>(5207u, 4294967295u, 1u, u_input.e.x)) < arg_0));
}

fn func_3() -> vec3<f32> {
    global1 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -295f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a, global1.e.x, global1.e.x, global1.a) - global1.b))) - vec4<f32>(_wgslsmith_f_op_f32(sign(1071f)), _wgslsmith_f_op_f32(abs(1139f)), _wgslsmith_f_op_f32(global0.x - global1.d.x), global1.a))), global1.c, _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1.d.x))), _wgslsmith_f_op_f32(f32(-1f) * -1963f), _wgslsmith_f_op_f32(1503f - _wgslsmith_div_f32(-207f, global1.b.x))), global1.d)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.a, 325f, _wgslsmith_div_f32(-1419f, global1.e.x)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -158f), -1000f, 1000f), select(!vec3<bool>(true, true, global1.c.b), !vec3<bool>(false, global1.c.a, global1.c.b), select(select(vec3<bool>(true, false, global1.c.b), vec3<bool>(true, false, true), vec3<bool>(global1.c.b, global1.c.b, global1.c.b)), select(vec3<bool>(global1.c.b, true, true), vec3<bool>(false, global1.c.b, false), vec3<bool>(global1.c.b, global1.c.a, false)), all(vec2<bool>(false, global1.c.a)))))));
    var var_0 = global1.c.b;
    let var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1030f + global1.d.x))) * global1.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global1.b.x, global0.x, 1000f, global1.a))), global1.b)))) * global1.b), global1.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(global1.d)) + vec3<f32>(973f, _wgslsmith_f_op_f32(1000f + global0.x), global1.a)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.x, _wgslsmith_f_op_f32(global1.d.x * global1.e.x), !global1.c.a))), _wgslsmith_f_op_f32(global1.e.x - global0.x), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(sign(global1.a))))));
    let var_2 = var_1;
    var var_3 = ~vec3<i32>(_wgslsmith_mult_i32(firstTrailingBit(select(u_input.d.x, u_input.d.x, global1.c.b)), u_input.d.x), u_input.d.x, -abs(reverseBits(0i)));
    return _wgslsmith_f_op_vec3_f32(-global1.d);
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: f32) -> vec2<bool> {
    global1 = Struct_2(-2112f, vec4<f32>(global0.x, 1359f, arg_2, _wgslsmith_f_op_f32(arg_2 - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-1271f, arg_0, true)))))), Struct_1(!(!global1.c.a), false, min(~global1.c.c >> (~arg_1.c % vec2<u32>(32u)), u_input.e.yy), abs(4294967295u)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3()), vec3<f32>(_wgslsmith_f_op_f32(-arg_2), arg_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.d.x) - _wgslsmith_f_op_f32(f32(-1f) * -484f)))), _wgslsmith_f_op_vec3_f32(func_3()));
    var var_0 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(f32(-1f) * -1099f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0.x)))), global0.x, 716f, _wgslsmith_f_op_f32(round(arg_0)));
    global1 = Struct_2(_wgslsmith_f_op_f32(sign(arg_2)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2049f), var_0.x, 2029f, _wgslsmith_f_op_f32(-1358f + _wgslsmith_f_op_f32(ceil(1308f))))), Struct_1(any(vec2<bool>(!global1.c.b, false)), false && !any(vec3<bool>(true, true, false)), u_input.e.zx, ~arg_1.c.x), vec3<f32>(_wgslsmith_f_op_f32(min(global1.b.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -532f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - -652f)) - _wgslsmith_f_op_f32(-global1.d.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1108f)) + 756f)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.e), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, -1241f, var_0.x)))))));
    var var_1 = vec2<i32>(-14390i << (global1.c.c.x % 32u), _wgslsmith_div_i32(max(u_input.d.x, firstLeadingBit(27104i)), abs(34114i)));
    global1 = Struct_2(1f, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1966f, 672f, 1544f, -1846f)) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, -1774f, 274f, 538f))))))), arg_1, vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(1000f, 1000f)))), 233f, arg_0), vec3<f32>(_wgslsmith_f_op_vec3_f32(func_3()).x, -1030f, -124f));
    return select(vec2<bool>(false, arg_1.a), func_1(u_input.a << (~4294967295u % 32u), ~1u, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), !(!vec2<bool>(any(vec2<bool>(true, false)), true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(func_1(_wgslsmith_mod_u32(1u, 63244u), 38497u, global1.d.x), vec2<bool>(true, false), select(select(func_1(4294967295u, 22847u, -1316f), select(vec2<bool>(global1.c.b, true), vec2<bool>(false, true), global1.c.a), func_2(194f, Struct_1(global1.c.a, global1.c.b, global1.c.c, 12556u), 178f)), func_1(reverseBits(14989u), countOneBits(1u), _wgslsmith_f_op_f32(1151f + -166f)), func_1(reverseBits(0u), 25733u, _wgslsmith_f_op_f32(global0.x - -983f))));
    var_0 = select(vec2<bool>(true, !(min(0i, u_input.d.x) <= (-22889i & u_input.d.x))), func_2(-1000f, global1.c, _wgslsmith_f_op_f32(537f * global1.d.x)), !global1.c.a);
    var var_1 = select(func_2(_wgslsmith_f_op_f32(965f - -464f), global1.c, global0.x).x | (!all(vec4<bool>(global1.c.b, false, true, true)) == func_2(_wgslsmith_f_op_f32(floor(global0.x)), Struct_1(true, var_0.x, global1.c.c, 21817u), 956f).x), global1.c.b, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-798f, global0.x))))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a)) - 1549f));
    var_1 = false;
    global0 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-639f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(485f + 108f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(u_input.d.x, ~min(min(u_input.d.x, 58556i), _wgslsmith_add_i32(u_input.d.x, u_input.d.x))), -844f, vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0.x * global1.d.x))), _wgslsmith_f_op_f32(trunc(-811f)), 325f, _wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(134f))));
}

