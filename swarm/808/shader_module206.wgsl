struct Struct_1 {
    a: vec4<f32>,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: vec2<u32>) -> vec4<f32> {
    var var_0 = ((28291u << ((max(10252u, 0u) >> (arg_3.x % 32u)) % 32u)) | select(3398u, u_input.b.x, true || any(global0.zww))) & _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(min(u_input.b, abs(arg_2.zyy)), vec3<u32>(2032u, u_input.b.x, arg_2.x)), ~arg_2.x);
    global0 = select(vec4<bool>(global0.x, all(select(vec4<bool>(false, global0.x, false, true), select(vec4<bool>(global0.x, true, global0.x, global0.x), vec4<bool>(false, global0.x, global0.x, true), vec4<bool>(global0.x, false, true, false)), select(global0.x, global0.x, false))), global0.x, any(vec2<bool>(!global0.x, !global0.x))), !vec4<bool>(all(!vec4<bool>(global0.x, true, global0.x, true)), true || (arg_1.a.x >= arg_1.a.x), !(!global0.x), true), vec4<bool>(global0.x, global0.x, true, true));
    let var_1 = arg_1;
    var var_2 = var_1;
    let var_3 = arg_1;
    return var_2.a;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(func_3(vec4<i32>(-2147483647i, -1i, 8416i, -36256i), Struct_1(vec4<f32>(-657f, 2092f, -1947f, 978f), 22290i), vec4<u32>(u_input.b.x, u_input.b.x, 7776u, 14383u), vec2<u32>(11737u, 4294967295u))))))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-862f, -232f, 865f, -1000f))))), 1i);
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x))), _wgslsmith_f_op_f32(-306f - var_0.a.x)));
    global0 = !(!(!select(vec4<bool>(false, global0.x, true, global0.x), select(vec4<bool>(global0.x, false, true, global0.x), vec4<bool>(false, true, true, false), true), global0.x & global0.x)));
    let var_2 = !any(global0.xw) | !(var_0.a.x <= 1108f);
    var var_3 = max(var_0.b, u_input.a);
    return var_0;
}

fn func_4(arg_0: u32, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    let var_0 = vec2<u32>(_wgslsmith_sub_u32(~arg_0, 0u), _wgslsmith_sub_u32(~firstLeadingBit(u_input.b.x), select(~30058u, ~16128u, true))) >> (~u_input.b.zx % vec2<u32>(32u));
    let var_1 = ~vec3<u32>(u_input.b.x, arg_0, 41464u);
    global0 = select(!(!vec4<bool>(!global0.x, all(vec2<bool>(false, true)), true, true)), vec4<bool>(!(!global0.x), global0.x, any(!global0.yz) && all(!global0.zx), _wgslsmith_f_op_f32(arg_3.a.x + -979f) <= _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_2.a.x)))), all(!select(vec2<bool>(true, true), select(vec2<bool>(true, global0.x), vec2<bool>(global0.x, true), vec2<bool>(global0.x, true)), global0.x && global0.x)));
    let var_2 = 20037u;
    let var_3 = ~u_input.b.x;
    return true;
}

fn func_1() -> Struct_1 {
    var var_0 = all(select(select(!(!vec4<bool>(global0.x, false, true, global0.x)), !(!vec4<bool>(true, global0.x, true, false)), select(select(vec4<bool>(true, global0.x, global0.x, false), vec4<bool>(false, global0.x, global0.x, global0.x), vec4<bool>(global0.x, true, global0.x, false)), select(vec4<bool>(false, global0.x, false, global0.x), vec4<bool>(global0.x, global0.x, true, global0.x), false), vec4<bool>(true, true, true, global0.x))), vec4<bool>(u_input.b.x > 0u, any(global0.ww), func_4(0u, select(vec3<i32>(1i, u_input.a, 33777i), vec3<i32>(u_input.a, 0i, u_input.a), global0.x), Struct_1(vec4<f32>(-384f, 927f, -1622f, -1042f), u_input.a), func_2()), true), !select(!vec4<bool>(global0.x, false, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, global0.x), vec4<bool>(false, global0.x, true, global0.x)), vec4<bool>(global0.x, true, true, global0.x))));
    global0 = !(!(!select(vec4<bool>(global0.x, global0.x, false, global0.x), select(vec4<bool>(global0.x, true, global0.x, global0.x), vec4<bool>(global0.x, true, false, true), true), global0.x)));
    global0 = select(!vec4<bool>(all(!vec2<bool>(global0.x, global0.x)), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 1u), u_input.b.xz) > max(13779u, u_input.b.x), global0.x, all(!global0.zw)), !select(vec4<bool>(true, all(global0.zwz), true, true), !(!vec4<bool>(true, true, global0.x, false)), vec4<bool>(true, true, global0.x, true)), vec4<bool>(any(select(vec3<bool>(true, global0.x, global0.x), vec3<bool>(false, global0.x, global0.x), vec3<bool>(true, true, true))), true, all(select(!vec3<bool>(global0.x, global0.x, global0.x), !vec3<bool>(global0.x, false, true), any(vec2<bool>(global0.x, global0.x)))), true));
    var var_1 = func_2();
    let var_2 = func_2();
    return var_2;
}

fn func_5(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_1) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(abs(766f));
    var var_1 = _wgslsmith_f_op_f32(round(1438f));
    global0 = !(!(!(!(!vec4<bool>(true, global0.x, global0.x, true)))));
    var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(arg_2.a.x)), -890f);
    var_1 = arg_2.a.x;
    return _wgslsmith_mult_i32(-8301i, -56447i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(453f, -396f, 475f, -319f) + vec4<f32>(-596f, 1440f, -516f, 219f)))) * vec4<f32>(-532f, 700f, -517f, _wgslsmith_div_f32(1761f, -2177f))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1758f, _wgslsmith_f_op_f32(trunc(-184f)), _wgslsmith_f_op_f32(-1521f + -827f), _wgslsmith_f_op_f32(848f * -685f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-452f, -1347f, 1000f, -599f) - vec4<f32>(-533f, 315f, 156f, 1083f)) - vec4<f32>(-1047f, 908f, -1000f, -1303f)))))), max(-2147483647i, -_wgslsmith_mod_i32(u_input.a, u_input.a)));
    var_0 = Struct_1(vec4<f32>(920f, var_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1235f, _wgslsmith_f_op_f32(var_0.a.x * var_0.a.x), any(global0.xx))) * var_0.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.a.x * -821f), _wgslsmith_f_op_f32(var_0.a.x - 550f))) + -1580f)), -func_5(Struct_1(var_0.a, _wgslsmith_add_i32(2147483647i, -1i)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(var_0.a.xzx * vec3<f32>(978f, -1172f, -1648f)))), func_1()));
    var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_0.a.x), var_0.a.x, _wgslsmith_f_op_f32(step(-1146f, var_0.a.x)), var_0.a.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, var_0.a.x, -823f, 877f)))), -22382i);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.zx);
}

