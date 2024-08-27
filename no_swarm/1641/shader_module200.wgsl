struct Struct_1 {
    a: u32,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<i32>,
    c: u32,
}

struct Struct_5 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec3<i32>,
    d: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> bool {
    let var_0 = !(!select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec4<bool>(true, false, false, false))));
    var var_1 = select(!select(!select(vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(true, var_0.x, var_0.x), var_0.x), vec3<bool>(!var_0.x, var_0.x, true), var_0.x), vec3<bool>(true, (true & select(var_0.x, true, var_0.x)) || var_0.x, all(vec3<bool>(var_0.x, var_0.x | true, !var_0.x))), !select(!(!vec3<bool>(false, false, var_0.x)), select(select(vec3<bool>(var_0.x, false, true), vec3<bool>(true, false, true), vec3<bool>(var_0.x, false, true)), select(vec3<bool>(var_0.x, false, true), vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(var_0.x, true, true)), select(var_0.x, var_0.x, false)), vec3<bool>(any(vec4<bool>(false, true, true, var_0.x)), true, !var_0.x)));
    var_1 = !select(select(!(!vec3<bool>(var_0.x, var_0.x, false)), !select(vec3<bool>(var_0.x, true, var_1.x), vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(true, var_0.x, true)), any(vec2<bool>(false, var_0.x))), vec3<bool>(var_1.x, true || var_0.x, ~u_input.a.x > ~59975u), true);
    let var_2 = Struct_1(abs(u_input.a.x), ~max(_wgslsmith_mod_u32(1u, u_input.a.x), _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), u_input.a.yy), u_input.a.x)), -2637i);
    let var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1144f), 1f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -285f)))));
    return var_1.x;
}

fn func_2() -> vec3<f32> {
    let var_0 = all(vec4<bool>(true, true, true, true));
    var var_1 = !select(select(vec3<bool>(true, var_0, var_0), !select(vec3<bool>(false, var_0, true), vec3<bool>(true, true, true), var_0), _wgslsmith_f_op_f32(floor(-1000f)) <= _wgslsmith_f_op_f32(f32(-1f) * -760f)), !select(vec3<bool>(false, true, var_0), vec3<bool>(false, true, false), true), true);
    var var_2 = Struct_4(Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1130f, -218f, 1527f)) + vec3<f32>(-862f, -1469f, 141f)))), vec4<i32>((u_input.b.x << (~u_input.a.x % 32u)) >> (74066u % 32u), max(abs(i32(-1i) * -2147483647i), 22972i), -12334i, firstLeadingBit(countOneBits(u_input.b.x))), 37941u);
    var var_3 = Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_2.a.a.a - var_2.a.a.a) - _wgslsmith_f_op_vec3_f32(floor(var_2.a.a.a))))));
    var var_4 = !vec4<bool>(func_3(), !(!var_1.x), true, false);
    return var_3.a.a;
}

fn func_1() -> bool {
    var var_0 = Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(546f, -559f, -1121f), vec3<f32>(134f, 1114f, -830f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -248f, 647f)) + _wgslsmith_f_op_vec3_f32(func_2())))));
    return all(select(vec2<bool>(!any(vec4<bool>(true, false, true, true)), !any(vec2<bool>(true, false))), !vec2<bool>(all(vec4<bool>(true, false, true, true)), true), true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b;
    var var_1 = !vec4<bool>(_wgslsmith_f_op_f32(floor(-432f)) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-698f - -1218f) - _wgslsmith_f_op_f32(432f + 777f)), firstLeadingBit(-u_input.b.x) > var_0.x, !all(vec4<bool>(false, true, false, false)), select(true & func_1(), false, all(vec4<bool>(true, true, true, true))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-1075f))))) >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(212f, -945f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_vec3_f32(func_2()).x)) - _wgslsmith_f_op_f32(-1083f - 633f)));
    var_0 = -u_input.b;
    let var_3 = vec3<i32>(u_input.b.x, 0i, -_wgslsmith_add_i32(0i, ~var_0.x));
    var var_4 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(921f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-413f, 627f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-216f - _wgslsmith_f_op_f32(f32(-1f) * -1051f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -329f)))), -2303f)));
    var var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1523f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1261f, var_4.x, var_1.x)) * -1121f), -1518f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_4.x, var_4.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1064f, -202f))))), ~abs(~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, var_3.x, 0i, 0i), vec4<i32>(1547i, u_input.b.x, u_input.b.x, var_0.x))), _wgslsmith_dot_vec2_u32(firstLeadingBit(select(u_input.a.zy, u_input.a.zx, var_1.x) >> (~vec2<u32>(u_input.a.x, 4294967295u) % vec2<u32>(32u))), u_input.a.zy), _wgslsmith_f_op_f32(-var_4.x));
}

