struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: Struct_2, arg_3: vec3<f32>) -> f32 {
    let var_0 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(1f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1041f)), _wgslsmith_div_f32(arg_3.x, arg_3.x)))), arg_3.x, arg_3.x);
    let var_1 = firstLeadingBit(u_input.a.zx) & select(reverseBits(_wgslsmith_div_vec2_i32(abs(u_input.a.yx), u_input.a.yy)), u_input.a.yy << (vec2<u32>(abs(47494u), ~31477u) % vec2<u32>(32u)), false);
    var var_2 = vec4<bool>(true, -11052i <= (~(-27399i) | arg_0), !(true || !arg_2.a), any(!(!vec3<bool>(true, false, arg_2.a))));
    let var_3 = arg_2;
    var_2 = vec4<bool>(var_3.a, !(false || !var_2.x), !var_3.a, arg_2.b >= -25672i);
    return 354f;
}

fn func_2() -> vec4<bool> {
    let var_0 = -1364f;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(select(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 29461i, u_input.a.x, 23958i), vec4<i32>(44486i, u_input.b, 42663i, u_input.a.x)), -31451i, true), _wgslsmith_f_op_f32(f32(-1f) * -685f), Struct_2(true, 1i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-874f, var_0, var_0)))))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0))), var_0)), _wgslsmith_div_f32(513f, -624f)));
    let var_2 = all(vec2<bool>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -776f))) >= 888f, true));
    var var_3 = Struct_2(true, abs(_wgslsmith_dot_vec4_i32(-(vec4<i32>(u_input.b, u_input.a.x, -1i, u_input.b) | vec4<i32>(u_input.b, 2147483647i, u_input.b, u_input.a.x)), -_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, 2147483647i, 770i, u_input.b), vec4<i32>(12958i, -58220i, u_input.a.x, u_input.b)))));
    var_3 = Struct_2(!any(vec2<bool>(var_3.a, var_2)), ~0i);
    return select(!vec4<bool>(!(var_2 || var_2), true, (var_0 >= var_1) == true, all(!vec4<bool>(var_2, true, var_3.a, var_2))), !vec4<bool>((false & var_2) | var_3.a, any(select(vec2<bool>(var_3.a, false), vec2<bool>(false, var_3.a), vec2<bool>(true, true))), false, var_2), var_2);
}

fn func_1(arg_0: u32) -> Struct_2 {
    let var_0 = true && all(!select(vec4<bool>(true, true, true, true), func_2(), vec4<bool>(true, true, false, false)));
    var var_1 = Struct_2(false, _wgslsmith_dot_vec4_i32(min(vec4<i32>(2742i, _wgslsmith_div_i32(u_input.b, u_input.b), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, -2147483647i), vec2<i32>(0i, u_input.b)), i32(-1i) * -49877i), select(vec4<i32>(1i, u_input.a.x, u_input.b, -2147483647i), vec4<i32>(0i, u_input.a.x, u_input.a.x, 1i), vec4<bool>(var_0, true, true, var_0)) >> (vec4<u32>(32304u, arg_0, arg_0, 42809u) % vec4<u32>(32u))), countOneBits(max(vec4<i32>(u_input.a.x, u_input.b, u_input.a.x, -63594i), vec4<i32>(u_input.b, 1i, u_input.b, -36902i)))));
    var_1 = Struct_2(true, u_input.a.x);
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-783f, -1796f, -334f))) * vec3<f32>(539f, 798f, -1000f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-598f, 2108f, _wgslsmith_f_op_f32(ceil(-1290f)))), !(!vec3<bool>(var_1.a, false, true)))));
    var_1 = Struct_2(any(vec4<bool>(var_0, !func_2().x, true, any(func_2()))), 60080i);
    return Struct_2(select(false, var_1.a && true, 0i == max(var_1.b, -2147483647i)), -2147483647i);
}

fn func_4(arg_0: Struct_2) -> f32 {
    let var_0 = !all(vec4<bool>(false, !all(vec3<bool>(arg_0.a, arg_0.a, arg_0.a)), !select(arg_0.a, arg_0.a, true), arg_0.a));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(939f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -597f))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3(604i, _wgslsmith_f_op_f32(f32(-1f) * -387f), func_1(27525u), vec3<f32>(399f, 799f, -393f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(2578f, -191f, -1813f)))));
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(var_0.a.x))))))));
    let var_2 = true;
    var_0 = Struct_1(vec3<f32>(var_1, 1f, _wgslsmith_f_op_f32(-285f - var_1)));
    var_0 = Struct_1(var_0.a);
    var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_4(func_1(0u))), _wgslsmith_div_f32(var_0.a.x, _wgslsmith_f_op_f32(func_4(Struct_2(var_2, -39952i)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.a.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(~4294967295u, -1098f, ~(~(~69005i)));
}

