struct Struct_1 {
    a: vec4<bool>,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: vec2<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3() -> vec4<bool> {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1921f - -1000f) * _wgslsmith_f_op_f32(trunc(-1239f))))), _wgslsmith_f_op_f32(select(-776f, _wgslsmith_f_op_f32(abs(1000f)), true)));
    var var_1 = ~_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(countOneBits(abs(vec2<u32>(u_input.e.x, 43229u))), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.b.x), u_input.d), 70963u)), ~(~u_input.a));
    var var_2 = all(select(select(vec2<bool>(true, select(true, false, false)), vec2<bool>(true, true), true), vec2<bool>(true, true), vec2<bool>(true, true)));
    var_2 = false;
    var_2 = true;
    return vec4<bool>(false == ((4294967295u >> ((u_input.b.x >> (4294967295u % 32u)) % 32u)) != 1u), false | !(all(vec3<bool>(true, true, false)) || all(vec3<bool>(true, false, true))), true, true);
}

fn func_2(arg_0: bool) -> f32 {
    let var_0 = -1893f;
    var var_1 = Struct_1(func_3(), func_3().x);
    var var_2 = abs(firstTrailingBit(~4294967295u));
    var_1 = Struct_1(select(!(!(!var_1.a)), !(!vec4<bool>(true, arg_0, arg_0, true)), vec4<bool>(_wgslsmith_f_op_f32(min(-1477f, 988f)) == _wgslsmith_f_op_f32(-var_0), arg_0, true, all(!vec2<bool>(true, arg_0)))), arg_0);
    var_2 = ~(~(u_input.e.x & (u_input.b.x >> (u_input.e.x % 32u))));
    return _wgslsmith_f_op_f32(f32(-1f) * -264f);
}

fn func_1(arg_0: Struct_1, arg_1: vec2<bool>) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -521f), 767f, 1197f) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(109f, 1000f, -1237f), vec3<f32>(-2066f, 867f, -2340f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -846f, 543f) * vec3<f32>(-287f, 2724f, 914f)) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(726f, 479f, 405f), vec3<f32>(1137f, 1000f, 243f), arg_1.x))))) * vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f))), -925f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -470f), _wgslsmith_f_op_f32(1041f + -1448f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1000f)) - _wgslsmith_f_op_f32(func_2(true))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-437f - -1465f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-171f - 935f) * _wgslsmith_f_op_f32(f32(-1f) * -191f))))));
    let var_1 = arg_0;
    var var_2 = arg_0;
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, 458f))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.x, -1427f, var_0.x, var_0.x))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.x, var_0.x, 166f, 605f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(265f, 1208f, 1114f, var_0.x)))))) - vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-142f)))), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, var_0.x))), -216f));
    var var_4 = select(vec2<i32>(~(~(-17198i)), _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(1i, 2147483647i), vec2<i32>(1i, 2147483647i)), ~vec2<i32>(60919i, -15365i))), ~vec2<i32>(1i, 1i), true & (_wgslsmith_f_op_f32(f32(-1f) * -803f) <= _wgslsmith_f_op_f32(var_0.x - 296f))) & _wgslsmith_mult_vec2_i32(~reverseBits(select(vec2<i32>(1i, 0i), vec2<i32>(-21476i, 2147483647i), var_1.a.x)), -vec2<i32>(1i, 1i));
    return arg_0.a.yzx;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec4<bool>(true, any(func_1(Struct_1(vec4<bool>(true, true, false, true), false), vec2<bool>(true, true))), true, true), any(!vec3<bool>(true, true, any(vec2<bool>(true, false)))));
    var var_1 = Struct_1(vec4<bool>(!(!(var_0.a.x | false)), var_0.b, true & func_3().x, var_0.b), false);
    var_0 = Struct_1(func_3(), !(!all(vec2<bool>(true, var_0.b))) == !(!(!var_0.b)));
    let var_2 = var_1.a.x;
    let var_3 = Struct_1(!var_0.a, all(select(select(vec2<bool>(true, true), vec2<bool>(var_1.b, true), vec2<bool>(var_0.a.x, false)), vec2<bool>(all(var_0.a.zw), true), !var_0.a.ww)));
    var var_4 = -853f;
    let var_5 = vec2<bool>(true, !(any(!vec3<bool>(var_1.b, var_1.a.x, var_0.a.x)) || true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1215f, _wgslsmith_f_op_f32(-507f * -1000f), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(861f - -1102f)) + _wgslsmith_f_op_f32(f32(-1f) * -113f))), vec4<i32>(2147483647i, i32(-1i) * -1i, ~(-1i), 1i));
}

