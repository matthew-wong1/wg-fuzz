struct Struct_1 {
    a: vec2<bool>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
    c: Struct_2,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec2<f32>,
    d: f32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, true);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec2<u32>) -> bool {
    global0 = select(vec2<bool>(all(!(!vec3<bool>(false, true, global0.x))), any(vec3<bool>(true, true, global0.x)) || true), vec2<bool>(-2147483647i <= _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.b, u_input.c.zx), u_input.b), true), !vec2<bool>(false, true | !global0.x));
    var var_0 = u_input.b.x;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1000f, 1268f))))) - 1000f);
    global0 = vec2<bool>(all(vec2<bool>(all(!vec4<bool>(false, global0.x, global0.x, true)), select(all(vec2<bool>(false, false)), false, all(vec3<bool>(global0.x, global0.x, true))))), !any(!(!vec3<bool>(false, global0.x, true))));
    let var_2 = !select(vec4<bool>(all(select(vec3<bool>(false, global0.x, global0.x), vec3<bool>(false, true, true), true)), !(global0.x || false), false, global0.x), select(select(select(vec4<bool>(false, global0.x, global0.x, true), vec4<bool>(true, global0.x, global0.x, global0.x), global0.x), select(vec4<bool>(global0.x, true, false, true), vec4<bool>(false, false, false, global0.x), vec4<bool>(true, global0.x, true, global0.x)), true), select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, global0.x), true), !vec4<bool>(global0.x, true, global0.x, false), false), !(!vec4<bool>(global0.x, false, false, true))), !vec4<bool>(!global0.x, all(vec2<bool>(true, global0.x)), false, true));
    return false;
}

fn func_2() -> vec2<bool> {
    let var_0 = global0.x;
    var var_1 = vec3<bool>(false, !func_3(~vec2<u32>(u_input.a.x, 62670u), u_input.a.xx), global0.x & global0.x);
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(-212f, 569f, 777f), vec3<f32>(-347f, 1570f, 175f)))))) + _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1f, 1f, 1f)))));
    var_1 = vec3<bool>(global0.x, !(!(!var_1.x)), !global0.x);
    var var_3 = abs(1i);
    return !(!select(select(select(var_1.zx, var_1.zz, false), !var_1.zz, true), var_1.yx, !(true || var_1.x)));
}

fn func_1() -> Struct_1 {
    let var_0 = !(!vec4<bool>(global0.x, true, !global0.x, false));
    var var_1 = Struct_1(func_2(), select(var_0.yx, !var_0.ww, select(var_0.ww, func_2(), vec2<bool>(all(vec2<bool>(true, var_0.x)), true))));
    var var_2 = Struct_1(vec2<bool>(!(!var_1.a.x), func_2().x == true), !select(select(!vec2<bool>(global0.x, true), select(vec2<bool>(var_0.x, false), vec2<bool>(var_0.x, true), var_0.yy), var_0.xz), func_2(), all(var_1.b)));
    let var_3 = 2147483647i;
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(537f, 928f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-731f))))))) + -303f);
    return Struct_1(var_0.yx, var_0.zw);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(-select(u_input.c.xx, abs(firstLeadingBit(vec2<i32>(-50010i, u_input.b.x))), global0.x));
    let var_1 = Struct_2(func_1());
    let var_2 = 808f;
    var var_3 = firstTrailingBit(-9042i >> ((15151u & u_input.a.x) % 32u)) == (max(var_0.x, var_0.x) << (u_input.a.x % 32u));
    let var_4 = vec4<bool>(_wgslsmith_f_op_f32(var_2 + 2794f) > 640f, any(vec3<bool>(true, (var_1.a.b.x | var_1.a.a.x) == func_1().a.x, var_1.a.a.x)), false, global0.x);
    let var_5 = ~(-var_0.x);
    global0 = vec2<bool>(true, all(select(vec3<bool>(true, false != var_4.x, var_1.a.b.x), select(!vec3<bool>(global0.x, false, var_4.x), vec3<bool>(global0.x, global0.x, var_1.a.a.x), !var_4.wyw), (var_5 | -15632i) > var_0.x)));
    global0 = select(func_1().b, !var_1.a.b, -64179i <= var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(~37064u, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(212f, var_2, 1044f))))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2, var_2, 570f) + vec3<f32>(var_2, var_2, 824f))))) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1420f, _wgslsmith_f_op_f32(step(492f, 763f)), _wgslsmith_f_op_f32(var_2 * var_2)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_2, var_2, var_2)))), var_4.xxx))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_2, var_2)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2, var_2) * vec2<f32>(-1317f, -2523f)) + _wgslsmith_div_vec2_f32(vec2<f32>(var_2, var_2), vec2<f32>(var_2, 434f))))), -304f, vec3<f32>(-1594f, -2182f, _wgslsmith_f_op_f32(1215f - 235f)));
}

