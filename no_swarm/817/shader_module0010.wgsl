struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec3<u32>) -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(vec2<f32>(344f, 469f), vec2<f32>(259f, -1615f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-469f, -1000f)))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -549f) * vec2<f32>(572f, -1563f))))))));
    var_0 = vec2<f32>(var_0.x, _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(-427f - _wgslsmith_f_op_f32(f32(-1f) * -1302f))));
    var_0 = vec2<f32>(-1950f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(var_0.x)))));
    var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, _wgslsmith_f_op_f32(-var_0.x)));
    var_0 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0.x, var_0.x)));
    return 1i;
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_1(_wgslsmith_mod_i32(~(~(-2147483647i)) & (_wgslsmith_div_i32(-2147483647i, -2147483647i) ^ func_3(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x))), 1i), _wgslsmith_div_i32(_wgslsmith_sub_i32(reverseBits(-2147483647i), _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-33076i, -26861i, 2147483647i), vec3<i32>(-108575i, 22115i, 4521i)), vec3<i32>(-1i, -29347i, 3008i))), 1i));
    var var_1 = true;
    let var_2 = var_0;
    let var_3 = _wgslsmith_add_i32(var_0.a, -1i);
    var var_4 = vec2<i32>(var_3, countOneBits(-(~max(var_2.a, var_3))));
    return Struct_2(var_2);
}

fn func_4(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: Struct_2) -> Struct_1 {
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(436f)), _wgslsmith_f_op_f32(f32(-1f) * -690f), _wgslsmith_f_op_f32(trunc(613f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-857f, 278f, -678f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2225f, 1042f, -1641f))))));
    var var_1 = vec4<u32>(u_input.a.x ^ u_input.a.x, u_input.a.x, 24999u, countOneBits(73863u));
    let var_2 = -1243f;
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1728f + var_0.x) * _wgslsmith_f_op_f32(f32(-1f) * -405f))))), 1440f);
    let var_4 = vec3<bool>(false, !(!(!select(true, true, arg_1.x))), arg_1.x);
    return func_2().a;
}

fn func_1() -> Struct_2 {
    var var_0 = func_4(func_2(), select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, true)), false), all(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true))) && !all(vec4<bool>(false, false, true, false))), Struct_2(Struct_1(_wgslsmith_mod_i32(countOneBits(36323i), i32(-1i) * -2147483647i), -50106i)));
    let var_1 = func_2();
    let var_2 = 2147483647i;
    var var_3 = countOneBits(_wgslsmith_mod_i32(32524i & (~0i | _wgslsmith_div_i32(var_1.a.a, 2147483647i)), func_2().a.a));
    let var_4 = vec4<i32>(_wgslsmith_mod_i32(1i, var_1.a.b) ^ var_2, _wgslsmith_mod_i32(var_1.a.b, min(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, var_0.a, var_2), abs(vec3<i32>(var_0.b, var_0.a, 42292i))), 0i)), 10175i, abs(var_2));
    return Struct_2(func_2().a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1519f, 1f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-675f + _wgslsmith_f_op_f32(round(1185f)))))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(-1185f, -950f, 1909f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-649f, -445f, -655f))))), vec3<f32>(112f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1351f)) - _wgslsmith_f_op_f32(f32(-1f) * -367f)), _wgslsmith_f_op_f32(ceil(-2082f)))))));
    var var_2 = 55566u;
    let var_3 = Struct_1(-_wgslsmith_div_i32(var_0.a.a, _wgslsmith_add_i32(abs(var_0.a.a), var_0.a.a)), firstTrailingBit(_wgslsmith_sub_i32(var_0.a.a, var_0.a.b)));
    var var_4 = _wgslsmith_clamp_u32(~(~countOneBits(u_input.a.x)), firstTrailingBit(~14465u), 1u);
    var var_5 = all(vec2<bool>(all(vec4<bool>(true, true, true, true)), !all(vec4<bool>(true, false, true, false)))) || all(vec3<bool>(select(-337f <= var_1.x, var_1.x < var_1.x, any(vec4<bool>(false, true, false, false))), true, true));
    var var_6 = u_input.a.x;
    var var_7 = u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 1000f, var_1.x, -719f))))))), ~vec4<u32>(30019u, abs(21868u), 23797u, ~4294967295u >> (1u % 32u)), ~u_input.a.x << (~u_input.a.x % 32u), max(~u_input.a.x, u_input.a.x));
}

