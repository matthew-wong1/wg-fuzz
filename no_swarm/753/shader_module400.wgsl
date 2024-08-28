struct Struct_1 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: vec2<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec3<u32>, arg_2: vec4<u32>, arg_3: Struct_1) -> f32 {
    var var_0 = !any(select(select(vec2<bool>(true, true), vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false))), select(select(vec2<bool>(true, false), vec2<bool>(false, true), true), vec2<bool>(true, false), vec2<bool>(false, false)), select(vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(true, true), true), vec2<bool>(true, true))));
    var_0 = true;
    var_0 = all(vec4<bool>(!any(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true))), !(true | (u_input.a >= u_input.e.x)), true, true));
    let var_1 = select(~firstTrailingBit(~(arg_2 ^ vec4<u32>(u_input.a, 0u, 0u, 4294967295u))), firstLeadingBit(select(u_input.e & vec4<u32>(0u, u_input.e.x, 4294967295u, arg_2.x), u_input.e >> (u_input.e % vec4<u32>(32u)), select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), false)) | arg_2), false);
    global0 = ~firstTrailingBit(firstTrailingBit(13469i));
    return arg_0.x;
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1) -> vec2<i32> {
    global0 = arg_1;
    let var_0 = Struct_1(vec4<f32>(233f, -1461f, _wgslsmith_f_op_f32(func_3(arg_2.a.xx, u_input.e.xyy, ~(vec4<u32>(u_input.e.x, u_input.e.x, u_input.e.x, u_input.e.x) ^ vec4<u32>(u_input.e.x, u_input.a, 0u, 1u)), Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(arg_2.a.x, arg_0.a.x, 1000f, 860f), vec4<f32>(arg_0.a.x, 102f, arg_0.a.x, arg_0.a.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -558f)))));
    let var_1 = var_0;
    var var_2 = -1255f;
    let var_3 = _wgslsmith_div_i32(0i << (u_input.e.x % 32u), -arg_1);
    return select(reverseBits(~(-u_input.b)), u_input.b, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.x) + -1072f))) >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x)), 353f));
}

fn func_1() -> vec4<f32> {
    var var_0 = vec2<i32>(~firstTrailingBit(_wgslsmith_dot_vec2_i32(func_2(Struct_1(vec4<f32>(103f, -1140f, -709f, 497f)), u_input.d.x, Struct_1(vec4<f32>(908f, -1354f, 1000f, -1000f))), -vec2<i32>(-2147483647i, 2147483647i))), _wgslsmith_mod_i32(_wgslsmith_add_i32(abs(_wgslsmith_mod_i32(u_input.d.x, 7736i)), u_input.b.x), -2147483647i));
    global0 = -var_0.x;
    var var_1 = ~countOneBits(max(u_input.a, u_input.e.x));
    var var_2 = min(~(~u_input.e.x & u_input.a), _wgslsmith_sub_u32(abs(select(96373u, u_input.a, false)), u_input.a)) << (1u % 32u);
    let var_3 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, -1000f) - -1115f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1000f * 1608f))), _wgslsmith_f_op_f32(floor(-892f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1355f * _wgslsmith_f_op_f32(sign(-408f))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3(vec2<f32>(-1633f, -1622f), u_input.e.zxz, u_input.e, Struct_1(vec4<f32>(965f, 1037f, -1172f, 329f)))), _wgslsmith_f_op_f32(f32(-1f) * -1594f), var_0.x > 8616i))), _wgslsmith_f_op_f32(f32(-1f) * -376f)));
    return vec4<f32>(-1000f, -337f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(var_3.a.x)))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(727f, var_3.a.x) * _wgslsmith_f_op_f32(-var_3.a.x))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(var_3.a.xw, vec3<u32>(84465u, u_input.e.x, 1u), select(u_input.e, vec4<u32>(u_input.e.x, 22904u, 0u, u_input.a), vec4<bool>(true, true, true, true)), var_3)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-554f - var_3.a.x) + var_3.a.x)))), var_3.a.x);
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    global0 = countOneBits(u_input.c);
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.x, arg_0.a.x, arg_0.a.x, 612f) - arg_0.a))));
    var_0 = arg_0;
    var var_1 = abs(u_input.c);
    var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_0.a.x - arg_0.a.x), _wgslsmith_f_op_f32(-arg_0.a.x), 1044f, _wgslsmith_div_f32(-306f, arg_0.a.x)), vec4<f32>(-196f, _wgslsmith_f_op_f32(max(-475f, -1055f)), _wgslsmith_f_op_f32(var_0.a.x * arg_0.a.x), _wgslsmith_f_op_f32(func_3(vec2<f32>(2476f, arg_0.a.x), u_input.e.zyy, vec4<u32>(11440u, 4294967295u, 9321u, 4294967295u), Struct_1(var_0.a))))))));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 36880u;
    var var_1 = func_4(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-295f, -318f, 108f, 510f), vec4<f32>(135f, 1000f, -2724f, -1181f), false)), _wgslsmith_f_op_vec4_f32(func_1())))));
    var var_2 = true;
    global0 = _wgslsmith_sub_i32(~(~u_input.b.x), ~abs(_wgslsmith_mod_i32(u_input.b.x, 2147483647i))) | -18911i;
    let var_3 = _wgslsmith_sub_u32(_wgslsmith_sub_u32(~(~(~15090u)), countOneBits(var_0)), var_0);
    var var_4 = ~(~(~(~u_input.e.ww)));
    var var_5 = 49711u;
    let x = u_input.a;
    s_output = StorageBuffer(-1363f, _wgslsmith_sub_i32(reverseBits(u_input.c) | 7675i, 34219i), ~(-_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.d.x, 16849i, 6785i), -vec3<i32>(2147483647i, 5121i, u_input.d.x))));
}

