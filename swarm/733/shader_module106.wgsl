struct Struct_1 {
    a: vec2<f32>,
    b: vec3<f32>,
    c: i32,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: f32) -> f32 {
    var var_0 = arg_2;
    let var_1 = true;
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(min(786f, _wgslsmith_f_op_f32(min(arg_2.b.x, 1567f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_3))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -650f)));
    global0 = (i32(-1i) * -47240i) == countOneBits(var_0.c);
    var_2 = var_0.b;
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-191f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_0.a.x, arg_3))))));
}

fn func_2(arg_0: f32) -> Struct_1 {
    var var_0 = Struct_1(vec2<f32>(arg_0, _wgslsmith_f_op_f32(func_3(firstTrailingBit(vec3<i32>(-1i, -1i, -2147483647i)) << (~vec3<u32>(u_input.b, u_input.a, u_input.a) % vec3<u32>(32u)), vec4<u32>(61150u, ~u_input.b, u_input.a, 9793u), Struct_1(vec2<f32>(arg_0, arg_0), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1760f, arg_0, 587f)), i32(-1i) * -2054i, ~vec2<u32>(27511u, u_input.a)), _wgslsmith_f_op_f32(trunc(-1010f))))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-959f * _wgslsmith_div_f32(520f, arg_0)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(arg_0)), _wgslsmith_f_op_f32(step(-316f, -1172f)))), _wgslsmith_f_op_f32(f32(-1f) * -1294f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, -104f, 207f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1207f, arg_0, arg_0) + vec3<f32>(arg_0, arg_0, arg_0))))), _wgslsmith_add_i32(-18665i, firstLeadingBit(-2147483647i)), vec2<u32>(~(~u_input.b), 1u));
    var var_1 = _wgslsmith_f_op_f32(-arg_0);
    let var_2 = Struct_1(var_0.b.zy, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1446f, var_0.b.x, var_0.a.x)), _wgslsmith_clamp_i32(_wgslsmith_sub_i32(var_0.c, var_0.c), ~(~(i32(-1i) * -2147483647i)), -2147483647i), min(var_0.d, var_0.d));
    global0 = all(select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), false)), false), select(vec2<bool>(true, true), vec2<bool>(true, true), true), all(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), any(vec4<bool>(false, true, true, true))))));
    let var_3 = select(1u, 0u & (~_wgslsmith_clamp_u32(u_input.a, var_2.d.x, u_input.a) & var_0.d.x), any(select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), any(vec2<bool>(true, false))), vec3<bool>(true, true, true), select(true, false, false))));
    return var_2;
}

fn func_1() -> StorageBuffer {
    global0 = ~(~(~u_input.a)) < (max(select(u_input.b >> (u_input.b % 32u), ~11786u, all(vec3<bool>(false, true, false))), reverseBits(4294967295u)) & countOneBits(37439u));
    let var_0 = 47197i;
    global0 = true && !(!((i32(-1i) * -2147483647i) < -var_0));
    let var_1 = ~(~(~(~30978u)));
    let var_2 = func_2(_wgslsmith_f_op_f32(round(1302f)));
    return StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-332f, _wgslsmith_f_op_f32(1535f - -123f), _wgslsmith_f_op_f32(round(556f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a.x, var_2.a.x, -1105f)))))), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_2.b.x, var_2.b.x)) * _wgslsmith_f_op_f32(max(934f, var_2.a.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.b.x * var_2.a.x), 972f))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

