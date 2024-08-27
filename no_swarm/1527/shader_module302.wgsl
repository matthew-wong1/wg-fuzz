struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: i32,
    d: u32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> vec4<f32> {
    let var_0 = arg_1;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), -865f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(523f * var_0.a)))));
}

fn func_2(arg_0: vec2<i32>) -> vec2<bool> {
    let var_0 = true;
    var var_1 = Struct_2(Struct_1(_wgslsmith_div_f32(-685f, 1f)));
    let var_2 = vec4<bool>(var_0, !((var_1.a.a > var_1.a.a) && global0.x), true, any(vec4<bool>(any(!vec2<bool>(false, global0.x)), global0.x && true, any(select(vec4<bool>(true, var_0, var_0, true), vec4<bool>(var_0, var_0, var_0, true), vec4<bool>(false, var_0, true, true))), any(!vec4<bool>(var_0, var_0, false, var_0)))));
    var var_3 = Struct_1(1467f);
    var var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_f32(round(-931f)), Struct_1(1000f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.a.a, var_3.a, var_3.a, var_1.a.a))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(func_3(1009f, var_1.a)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1502f, var_3.a, 1594f, 785f))))) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(666f, var_1.a.a)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_1.a.a)) - _wgslsmith_f_op_f32(-var_3.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(822f)) * 685f), _wgslsmith_div_f32(213f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-933f)))), -1274f));
    return select(var_2.yz, select(global0.zx, global0.zx, select(select(select(vec2<bool>(true, var_0), var_2.yz, vec2<bool>(var_0, var_0)), vec2<bool>(var_2.x, global0.x), true), !select(global0.xy, vec2<bool>(true, var_0), var_0), select(select(vec2<bool>(true, var_0), vec2<bool>(var_0, false), var_2.ww), vec2<bool>(false, var_2.x), !var_0))), any(select(select(!var_2.wy, var_2.yx, false), select(!var_2.zx, select(global0.zy, var_2.yx, var_2.x), var_0), select(true, any(vec3<bool>(false, true, var_0)), true))));
}

fn func_4(arg_0: f32, arg_1: vec2<bool>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, 1000f) * vec2<f32>(2016f, arg_0)))) + vec2<f32>(1000f, arg_0)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-208f, _wgslsmith_f_op_f32(-arg_0)))));
    let var_1 = !(any(!vec4<bool>(arg_1.x, true, true, global0.x)) | (_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(ceil(1790f))) >= _wgslsmith_div_f32(var_0.x, var_0.x)));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, arg_0) + vec2<f32>(var_0.x, var_0.x))))), _wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, _wgslsmith_div_f32(3138f, arg_0)), vec2<f32>(var_0.x, arg_0))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(exp2(arg_0)));
    var var_3 = var_2;
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(max(1205f, 998f)))));
}

fn func_1(arg_0: f32, arg_1: u32) -> f32 {
    let var_0 = arg_1;
    let var_1 = global0.x;
    var var_2 = func_4(2312f, select(select(vec2<bool>(u_input.c != 1i, global0.x), !select(vec2<bool>(global0.x, global0.x), vec2<bool>(false, global0.x), global0.x), true), select(!func_2(vec2<i32>(u_input.c, u_input.c)), vec2<bool>(true, true), global0.x), global0.x));
    var_2 = Struct_2(Struct_1(-597f));
    var var_3 = firstLeadingBit(select(u_input.a, countOneBits(vec4<u32>(0u, 24390u, arg_1, 4294967295u) >> ((u_input.a ^ vec4<u32>(0u, 43896u, 4294967295u, u_input.a.x)) % vec4<u32>(32u))), vec4<bool>(var_2.a.a == _wgslsmith_f_op_f32(f32(-1f) * -1000f), !(global0.x == global0.x), true, global0.x)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_div_f32(-1402f, _wgslsmith_f_op_f32(var_2.a.a - 894f)), func_4(1594f, !global0.zx).a)).x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-370f, _wgslsmith_f_op_f32(trunc(1000f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec3<bool>(global0.x, global0.x, global0.x);
    var var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(2022f, 1f))));
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(-1194f, 4294967295u))) * _wgslsmith_f_op_f32(f32(-1f) * -895f))));
    var_0 = 1f;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(759f + var_1.a.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(391f - 581f) + _wgslsmith_f_op_f32(trunc(var_2.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.a) - _wgslsmith_f_op_f32(-var_1.a.a)), var_2.a)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_2.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1.a.a, _wgslsmith_f_op_f32(round(var_2.a)))) - _wgslsmith_f_op_f32(var_1.a.a - func_4(-534f, vec2<bool>(false, global0.x)).a.a)))), _wgslsmith_mult_i32(-27099i, abs(0i)), u_input.b, _wgslsmith_div_vec3_u32(~u_input.a.xzx, _wgslsmith_add_vec3_u32(~vec3<u32>(0u, u_input.e, 4294967295u) >> (~u_input.a.xww % vec3<u32>(32u)), vec3<u32>(1u, ~20840u, u_input.a.x))));
}

