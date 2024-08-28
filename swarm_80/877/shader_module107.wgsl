struct Struct_1 {
    a: vec3<bool>,
    b: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
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

var<private> global0: array<vec2<u32>, 8> = array<vec2<u32>, 8>(vec2<u32>(13845u, 80795u), vec2<u32>(33928u, 8570u), vec2<u32>(88398u, 4294967295u), vec2<u32>(70018u, 0u), vec2<u32>(39394u, 48186u), vec2<u32>(0u, 4294967295u), vec2<u32>(9520u, 17073u), vec2<u32>(0u, 55526u));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: u32) -> vec2<bool> {
    return vec2<bool>(!arg_1, false);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_1) -> bool {
    var var_0 = abs(2147483647i);
    let var_1 = Struct_1(arg_0.a, min(countOneBits(0u), abs(_wgslsmith_clamp_u32(u_input.a.x, 31025u, u_input.b))) == u_input.b);
    let var_2 = Struct_1(vec3<bool>(false, false, !(false & arg_0.b) | !(!arg_0.a.x)), !(countOneBits(u_input.a.x) >= _wgslsmith_clamp_u32(countOneBits(u_input.a.x), ~4294967295u, select(91236u, 0u, false))));
    var var_3 = vec4<i32>(50637i, countOneBits(~(~1i)), ~(~12873i), max(1i, min(32134i << (0u % 32u), -22241i) >> (u_input.a.x % 32u)));
    let var_4 = Struct_1(arg_0.a, true);
    return false;
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: Struct_1) -> vec4<bool> {
    global0 = array<vec2<u32>, 8>();
    let var_0 = Struct_1(!vec3<bool>(false, select(arg_2.a.x, arg_2.a.x, arg_2.a.x), func_3(arg_2, vec4<f32>(-1328f, 357f, arg_1, arg_1), Struct_1(vec3<bool>(arg_2.b, true, arg_2.a.x), arg_2.b))), any(arg_2.a));
    let var_1 = arg_0;
    let var_2 = !vec4<bool>(true, false, any(!select(vec4<bool>(var_0.a.x, arg_2.a.x, false, false), vec4<bool>(arg_2.a.x, true, arg_2.a.x, true), true)), !(!(false == var_0.b)));
    global0 = array<vec2<u32>, 8>();
    return !select(select(!var_2, !vec4<bool>(true, arg_2.b, false, false), var_0.b), vec4<bool>(all(!var_2), !(!var_2.x), var_2.x, false), !(false && !var_2.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<u32>, 8>();
    let var_0 = Struct_1(vec3<bool>(any(select(vec2<bool>(true, false), vec2<bool>(true, true), func_1(14650u, true, u_input.a.x))), false, true), true);
    var var_1 = var_0;
    let var_2 = select(select(!vec4<bool>(true, true, !var_0.b, false), select(!vec4<bool>(false, var_0.a.x, false, true), vec4<bool>(true, select(var_1.b, true, false), all(var_0.a.xx), var_1.a.x), select(vec4<bool>(true, var_0.b, var_1.b, true), !vec4<bool>(false, true, var_1.a.x, false), !vec4<bool>(var_1.b, var_1.a.x, var_0.b, true))), func_2(-27001i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1436f - 1130f)), Struct_1(var_1.a, true))), select(vec4<bool>(false, func_1(~u_input.a.x, true, u_input.b).x, true, var_0.b), select(vec4<bool>(false, false, var_1.b, func_1(1u, var_0.a.x, u_input.b).x), vec4<bool>(true, true, var_1.b == var_0.a.x, true), vec4<bool>(true, var_1.b, true, true)), func_2(-1i, _wgslsmith_f_op_f32(round(-2443f)), Struct_1(var_0.a, var_1.a.x)).x || false), !vec4<bool>(true, any(!var_1.a), false, _wgslsmith_f_op_f32(trunc(2399f)) <= _wgslsmith_div_f32(1260f, 1562f)));
    var var_3 = var_0;
    var var_4 = min(abs(select(firstLeadingBit(vec3<i32>(1i, 1i, 1i)), vec3<i32>(1i, 1i, 1i), all(func_2(-16361i, -278f, Struct_1(vec3<bool>(var_2.x, var_0.a.x, var_2.x), true)).xxx))), vec3<i32>(1i, reverseBits(71744i), abs(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(65112i, -1i, -20150i, -10733i), vec4<i32>(2147483647i, -2147483647i, -25587i, 1i)), vec4<i32>(-1i, -2147483647i, -1i, -2147483647i)))));
    var_1 = Struct_1(select(select(vec3<bool>(true, u_input.b >= 67848u, var_1.b), !func_2(-2147483647i, 1412f, var_0).wzx, var_1.a), !vec3<bool>(func_1(u_input.b, var_0.b, 0u).x, all(var_0.a), !var_3.b), true), var_3.a.x);
    var_4 = firstTrailingBit(~vec3<i32>(-firstTrailingBit(var_4.x), 22620i, -(~var_4.x)));
    var_3 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, 61854u, 0u, 1u), vec4<u32>(7409u, u_input.a.x, u_input.a.x, 63576u)), ~vec4<u32>(u_input.b, u_input.b, 45765u, u_input.b), ~vec4<u32>(46056u, u_input.a.x, 1u, u_input.b)) | ~(~abs(vec4<u32>(80057u, 69955u, u_input.b, u_input.a.x))));
}

