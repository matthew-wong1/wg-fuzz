struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: bool,
    d: bool,
    e: i32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_2,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: Struct_3) -> f32 {
    var var_0 = !select(select(select(select(vec4<bool>(arg_2.b.d, arg_2.b.c, false, arg_2.b.c), vec4<bool>(true, false, arg_2.b.c, false), vec4<bool>(arg_2.b.d, false, true, arg_2.b.c)), select(vec4<bool>(true, false, true, true), vec4<bool>(arg_2.b.c, arg_2.b.c, arg_2.b.c, arg_2.b.c), vec4<bool>(false, true, true, arg_2.b.c)), arg_2.b.c), select(vec4<bool>(arg_2.b.d, false, arg_2.b.d, false), !vec4<bool>(arg_2.b.c, arg_2.b.d, arg_2.b.d, false), any(vec4<bool>(arg_2.b.c, false, false, arg_2.b.d))), 23500i != arg_2.a.x), select(select(select(vec4<bool>(true, true, arg_2.b.d, true), vec4<bool>(arg_2.b.d, arg_2.b.c, false, arg_2.b.d), vec4<bool>(true, true, true, true)), vec4<bool>(true, false, true, true), vec4<bool>(arg_2.b.c, arg_2.b.d, false, false)), !select(vec4<bool>(false, arg_2.b.c, false, arg_2.b.d), vec4<bool>(arg_2.b.d, true, false, arg_2.b.d), vec4<bool>(arg_2.b.d, arg_2.b.c, arg_2.b.c, arg_2.b.d)), select(vec4<bool>(true, false, arg_2.b.d, false), !vec4<bool>(false, true, arg_2.b.c, arg_2.b.d), !vec4<bool>(arg_2.b.c, arg_2.b.c, false, arg_2.b.d))), all(vec2<bool>(true, true)));
    var var_1 = arg_2;
    let var_2 = Struct_2(~1u, var_1.b.b, u_input.c.x != abs(abs(0u)), !(_wgslsmith_div_i32(-1i, _wgslsmith_dot_vec2_i32(var_1.a, u_input.a.zz)) == (var_1.a.x >> (u_input.c.x % 32u))), -(~(~_wgslsmith_mult_i32(u_input.b, -2147483647i))));
    var_1 = arg_2;
    var_0 = vec4<bool>(var_1.b.d, !(var_0.x | any(!var_0.wxy)), true, all(var_0.xzz));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b) - -957f);
}

fn func_2(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_3) -> bool {
    var var_0 = Struct_1(true, _wgslsmith_add_vec2_u32(arg_0.c.yy, arg_0.c.wx) >> (firstTrailingBit(vec2<u32>(1u, abs(u_input.c.x))) % vec2<u32>(32u)), arg_0.c);
    var var_1 = Struct_3(~_wgslsmith_mult_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(-15063i, 0i), vec2<i32>(u_input.a.x, -2147483647i)), arg_2.b);
    var_0 = arg_0;
    var var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.b.b, var_1.b.b))), _wgslsmith_div_f32(-212f, var_1.b.b), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-262f)), -640f))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.b.b, var_1.b.b, var_1.b.b, 252f) - vec4<f32>(-291f, 383f, -1635f, var_1.b.b)) + _wgslsmith_div_vec4_f32(vec4<f32>(-362f, 1174f, var_1.b.b, arg_2.b.b), vec4<f32>(1562f, 1000f, -830f, arg_2.b.b))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.b.b, var_1.b.b, 673f, arg_2.b.b) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1139f, var_1.b.b, -624f, var_1.b.b) + vec4<f32>(var_1.b.b, 132f, arg_2.b.b, var_1.b.b))))), vec4<f32>(-673f, var_1.b.b, var_1.b.b, -139f));
    let var_3 = Struct_3(-vec2<i32>(_wgslsmith_div_i32(_wgslsmith_mult_i32(arg_1.x, 0i), u_input.a.x), _wgslsmith_mult_i32(arg_2.b.e, u_input.a.x)), Struct_2(36275u, _wgslsmith_f_op_f32(func_3(1951f, 1927f, Struct_3(vec2<i32>(var_1.b.e, u_input.b), Struct_2(arg_0.b.x, 682f, arg_2.b.d, false, -18666i)))), true, false, -((u_input.b | -2523i) << (~30136u % 32u))));
    return any(!select(vec3<bool>(select(true, true, arg_0.a), false, false), select(vec3<bool>(arg_0.a, var_1.b.d, arg_0.a), !vec3<bool>(true, false, arg_2.b.d), var_1.b.b <= -869f), all(select(vec3<bool>(true, arg_2.b.c, false), vec3<bool>(true, true, false), false))));
}

fn func_1(arg_0: vec4<bool>) -> vec4<bool> {
    var var_0 = !arg_0.x;
    var_0 = arg_0.x || arg_0.x;
    let var_1 = select(~_wgslsmith_mod_i32(_wgslsmith_mult_i32(58736i, abs(24121i)), u_input.a.x), 1i, false);
    var_0 = all(!vec2<bool>(arg_0.x, true));
    return vec4<bool>(!(func_2(Struct_1(arg_0.x, u_input.c, vec4<u32>(u_input.c.x, u_input.c.x, 4294967295u, 0u)), vec2<i32>(39748i, 13255i), Struct_3(u_input.a.zy, Struct_2(u_input.c.x, -133f, false, true, -44678i))) | arg_0.x), !any(vec4<bool>(arg_0.x, func_2(Struct_1(arg_0.x, vec2<u32>(u_input.c.x, 34445u), vec4<u32>(1u, 32195u, 4294967295u, u_input.c.x)), vec2<i32>(u_input.b, 1210i), Struct_3(u_input.a.xy, Struct_2(36964u, 211f, false, arg_0.x, 55869i))), true, true)), any(!vec3<bool>(arg_0.x | false, select(true, arg_0.x, arg_0.x), false)), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), func_1(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true)))));
    var_0 = vec4<bool>(all(var_0.yxx) || !var_0.x, false, any(var_0.zy), false);
    var var_1 = vec2<u32>(1795u, 36474u);
    var var_2 = i32(-1i) * -2857i;
    let var_3 = Struct_4(-_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, -6064i, -18864i), max(u_input.a, vec3<i32>(-2147483647i, -2147483647i, u_input.b))));
    let var_4 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(641f, 508f, -1743f) - vec3<f32>(-2306f, -2300f, 460f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(837f, -818f, 1262f))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(162f, -1582f, 114f))), vec3<f32>(-407f, 2031f, -757f))))))), vec3<f32>(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(256f, -717f, Struct_3(var_3.a.zx, Struct_2(18132u, -637f, false, true, -9268i))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-797f + -2486f), -614f), Struct_3(vec2<i32>(u_input.a.x, -2147483647i), Struct_2(6572u, -550f, var_0.x, var_0.x, u_input.b)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(874f * _wgslsmith_f_op_f32(step(171f, -593f))))), 883f));
    let x = u_input.a;
    s_output = StorageBuffer(max(vec2<i32>(27169i, 1i), firstLeadingBit(u_input.a.zy)), _wgslsmith_f_op_f32(-var_4.x), -117f);
}

