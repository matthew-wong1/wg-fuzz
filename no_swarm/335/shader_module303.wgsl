struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_1(0i));

var<private> global1: Struct_3;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32, arg_1: Struct_2) -> i32 {
    global1 = Struct_3(Struct_1(i32(-1i) * -_wgslsmith_add_i32(global0.a.a, global0.a.a)));
    global0 = Struct_3(Struct_1(global0.a.a));
    var var_0 = Struct_2(countOneBits(reverseBits(arg_1.a)), Struct_1(_wgslsmith_mod_i32(~_wgslsmith_sub_i32(40038i, u_input.b.x), firstTrailingBit(~0i))), global1.a, _wgslsmith_f_op_f32(arg_1.d * arg_1.d));
    let var_1 = var_0.c;
    var var_2 = global0.a;
    return _wgslsmith_mult_i32(abs(abs(57821i) >> (_wgslsmith_sub_u32(50242u, u_input.a) % 32u)), _wgslsmith_sub_i32(~(-var_1.a), global1.a.a)) | _wgslsmith_sub_i32(i32(-1i) * -6117i, -24216i);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<u32>) -> f32 {
    var var_0 = false;
    var var_1 = arg_0;
    let var_2 = Struct_2(arg_1.a, Struct_1(abs(var_1.a)), Struct_1(-43976i), -909f);
    var_1 = Struct_1(-reverseBits(_wgslsmith_div_i32(arg_1.a, global1.a.a)) & _wgslsmith_dot_vec3_i32(~vec3<i32>(-33316i, arg_1.a, var_2.a), min(vec3<i32>(37118i, global0.a.a, -48739i), vec3<i32>(arg_1.a, 1i, var_1.a) << (vec3<u32>(u_input.a, u_input.a, 4294967295u) % vec3<u32>(32u)))));
    var_0 = all(vec2<bool>(!all(vec3<bool>(true, true, true)), ~_wgslsmith_dot_vec2_u32(arg_2, arg_2) != arg_2.x));
    return 260f;
}

fn func_2() -> Struct_3 {
    global0 = Struct_3(Struct_1(~(-9775i)));
    var var_0 = _wgslsmith_f_op_f32(max(1043f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_1(global1.a.a), Struct_1(func_3(1000f, Struct_2(-2147483647i, Struct_1(global1.a.a), global1.a, 827f))), vec2<u32>(u_input.a, u_input.a) | ~vec2<u32>(u_input.a, u_input.a))))));
    var_0 = 924f;
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-214f, _wgslsmith_f_op_f32(sign(2392f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -273f) * -1000f), -1558f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(827f + 1812f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * -1553f)))), _wgslsmith_f_op_f32(ceil(-1161f))));
    let var_2 = vec2<f32>(var_1.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-763f)))));
    return Struct_3(global0.a);
}

fn func_5(arg_0: u32, arg_1: Struct_3, arg_2: i32) -> Struct_3 {
    let var_0 = Struct_2(arg_1.a.a, arg_1.a, func_2().a, -606f);
    let var_1 = var_0;
    let var_2 = vec2<f32>(var_0.d, var_0.d);
    let var_3 = arg_0 & arg_0;
    let var_4 = var_1;
    return Struct_3(Struct_1(-1i));
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec3<i32>) -> u32 {
    global1 = func_5(u_input.a, func_2(), 1i);
    var var_0 = Struct_1(-func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1356f - 286f)), Struct_2(-54242i, func_2().a, Struct_1(global1.a.a), _wgslsmith_f_op_f32(ceil(-1575f)))));
    let var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -553f)))), -381f, !(select(true, any(vec2<bool>(false, false)), true) & !any(vec3<bool>(false, false, true)))));
    let var_2 = vec4<u32>(firstLeadingBit(u_input.a), ~(~u_input.a), 25457u, ~(16444u | select(arg_0.x, 68430u, false))) >> (~(~countOneBits(~vec4<u32>(u_input.a, 14064u, 1u, 11865u))) % vec4<u32>(32u));
    global1 = Struct_3(global0.a);
    return arg_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_3(global0.a);
    var var_0 = ~firstTrailingBit(vec3<u32>(u_input.a, func_1(vec2<u32>(u_input.a, u_input.a), Struct_1(-12024i), vec3<i32>(global0.a.a, global1.a.a, global0.a.a)), u_input.a)) | firstLeadingBit(vec3<u32>(u_input.a, u_input.a, u_input.a));
    var_0 = ~(~(~max(reverseBits(vec3<u32>(0u, 34443u, u_input.a)), select(vec3<u32>(u_input.a, 4294967295u, var_0.x), vec3<u32>(var_0.x, u_input.a, 1u), vec3<bool>(false, false, true)))));
    let var_1 = 390f;
    let var_2 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(reverseBits(firstTrailingBit(min(72180u, 0u))), _wgslsmith_dot_vec4_u32(vec4<u32>(19598u, u_input.a, var_0.x, u_input.a), vec4<u32>(var_0.x, 4294967295u, 1235u, 4294967295u) ^ vec4<u32>(1u, u_input.a, 0u, u_input.a)) | 1u, 1u, ~43661u));
}

