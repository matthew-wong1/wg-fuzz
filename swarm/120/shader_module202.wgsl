struct Struct_1 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<f32>,
    d: vec4<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_1) -> f32 {
    return _wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-733f + 578f))));
}

fn func_2() -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(444f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1921f * _wgslsmith_f_op_f32(func_3(Struct_1(vec4<i32>(u_input.a.x, 1i, u_input.b.x, u_input.a.x))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(325f, -799f))))))));
    let var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -566f))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1174f, 702f, false)))))));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_1, var_1)) + _wgslsmith_f_op_f32(max(var_1, -838f)))))) - -1294f);
    var var_2 = ~25764u;
    return ~vec4<i32>(-u_input.b.x, _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(-u_input.c, vec3<i32>(u_input.b.x, 44850i, u_input.b.x) << (vec3<u32>(0u, 18007u, 0u) % vec3<u32>(32u))), vec3<i32>(_wgslsmith_div_i32(1i, -2147483647i), u_input.b.x, _wgslsmith_sub_i32(u_input.b.x, 8202i))), -u_input.a.x, min(u_input.a.x, u_input.c.x));
}

fn func_1(arg_0: bool) -> Struct_1 {
    var var_0 = u_input.a.wwx;
    let var_1 = Struct_1(func_2());
    let var_2 = -abs(var_1.a.x);
    var var_3 = var_1;
    let var_4 = _wgslsmith_dot_vec3_i32(max(var_1.a.xxy, ~vec3<i32>(u_input.a.x, _wgslsmith_dot_vec4_i32(var_1.a, vec4<i32>(-1i, var_0.x, u_input.c.x, 66365i)), var_1.a.x)), select(_wgslsmith_mult_vec3_i32(var_3.a.wxw, var_1.a.xxy), vec3<i32>(31219i, _wgslsmith_dot_vec2_i32(func_2().yy, vec2<i32>(1i, 1i)), u_input.c.x), !select(!vec3<bool>(arg_0, false, arg_0), vec3<bool>(false, arg_0, arg_0), select(vec3<bool>(arg_0, arg_0, true), vec3<bool>(arg_0, true, arg_0), vec3<bool>(true, arg_0, true)))));
    return var_1;
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: f32) -> Struct_1 {
    var var_0 = arg_1;
    let var_1 = func_1(false);
    let var_2 = func_1(any(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), false), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true)), (42848i != var_0.a.x) && true)));
    let var_3 = vec3<bool>(all(vec2<bool>(false, all(vec4<bool>(true, false, false, false)))), false, true);
    var var_4 = func_1((((i32(-1i) * -20033i) << (firstLeadingBit(4294967295u) % 32u)) & arg_2.a.x) != _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(arg_0, u_input.a), -21992i));
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~1u << (abs(_wgslsmith_div_u32(0u, 1u)) % 32u));
    let var_1 = func_4(u_input.a, func_1(!any(vec4<bool>(true, true, true, true))), func_1(true), _wgslsmith_f_op_f32(-1f));
    let var_2 = u_input.c.x;
    var var_3 = vec2<bool>(true, all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(vec2<bool>(true, true)))));
    var_3 = !select(vec2<bool>(var_3.x, true), select(select(vec2<bool>(false, var_3.x), select(vec2<bool>(true, true), vec2<bool>(var_3.x, true), var_3.x), !vec2<bool>(var_3.x, var_3.x)), select(select(vec2<bool>(true, var_3.x), vec2<bool>(false, false), vec2<bool>(var_3.x, var_3.x)), select(vec2<bool>(true, true), vec2<bool>(var_3.x, var_3.x), var_3.x), true), false), true);
    var_3 = !(!vec2<bool>(any(vec3<bool>(false, var_3.x, var_3.x)), !(var_3.x && false)));
    var_3 = vec2<bool>(var_3.x, false);
    let x = u_input.a;
    s_output = StorageBuffer(~var_0, _wgslsmith_f_op_f32(f32(-1f) * -105f), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(sign(-675f)), 207f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -268f))), -780f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 203f, -699f, -887f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(485f, 568f, 2109f, 1136f)))))), u_input.a, var_0);
}

