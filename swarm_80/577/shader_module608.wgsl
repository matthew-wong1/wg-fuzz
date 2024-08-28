struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: vec3<i32>,
    d: vec2<bool>,
    e: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<f32>) -> i32 {
    var var_0 = Struct_1(arg_0.x, vec2<bool>(true, any(vec3<bool>(true, true, true))), max(~vec3<i32>(1i, 31220i, min(6673i, 2147483647i)), ~(~select(vec3<i32>(2147483647i, 2403i, -2147483647i), vec3<i32>(0i, 1i, -1i), false))), vec2<bool>(select(_wgslsmith_f_op_f32(select(-939f, -1000f, false)) <= arg_0.x, any(vec4<bool>(false, true, false, true)), false), !any(vec3<bool>(false, true, true))), 1u);
    var var_1 = Struct_1(var_0.a, select(!select(!var_0.d, vec2<bool>(var_0.b.x, true), var_0.b.x), select(vec2<bool>(!var_0.b.x, true), !select(vec2<bool>(var_0.d.x, var_0.b.x), vec2<bool>(var_0.b.x, true), var_0.b), vec2<bool>(true, var_0.d.x)), var_0.d.x), vec3<i32>(abs(-abs(var_0.c.x)), var_0.c.x, ~_wgslsmith_dot_vec4_i32(vec4<i32>(-14512i, var_0.c.x, var_0.c.x, -1i), vec4<i32>(-1863i, var_0.c.x, var_0.c.x, var_0.c.x))), var_0.b, _wgslsmith_mod_u32(u_input.a.x, var_0.e));
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1168f, var_0.a, var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_1.a)) * _wgslsmith_f_op_f32(sign(var_0.a)))));
    var_0 = Struct_1(-1538f, vec2<bool>(var_1.b.x & var_0.d.x, var_0.b.x), -var_1.c, var_0.b, min(~(~(~u_input.b.x)), 42061u));
    let var_3 = u_input.a.wxz >> (u_input.a.zyz % vec3<u32>(32u));
    return var_1.c.x;
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = arg_0;
    let var_1 = any(!select(!vec4<bool>(arg_0.d.x, true, true, arg_0.b.x), vec4<bool>(var_0.d.x, true, false, var_0.b.x), true)) && arg_0.d.x;
    let var_2 = vec4<i32>(var_0.c.x, ~(-_wgslsmith_sub_i32(var_0.c.x, 1i) << (~(33390u >> (1u % 32u)) % 32u)), func_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.a, arg_0.a, var_0.a), vec3<f32>(arg_0.a, -1288f, arg_0.a), vec3<bool>(var_1, var_0.d.x, arg_0.b.x)))))), firstLeadingBit(max(arg_0.c.x, -1i)));
    let var_3 = !select(vec4<bool>(true, var_0.b.x, any(!vec4<bool>(false, var_1, var_0.b.x, arg_0.b.x)), all(!vec4<bool>(var_0.d.x, true, true, false))), select(!vec4<bool>(false, true, false, arg_0.d.x), vec4<bool>(true, arg_0.b.x, !arg_0.b.x, var_0.e == 0u), !select(true, true, false)), vec4<bool>(var_0.d.x, var_1, true, !var_0.b.x));
    var var_4 = vec2<bool>(!select(var_0.d.x, true, var_1) && (arg_0.b.x & (_wgslsmith_f_op_f32(f32(-1f) * -716f) >= _wgslsmith_div_f32(var_0.a, -123f))), all(!(!(!vec2<bool>(var_0.d.x, true)))));
    return var_0;
}

fn func_4(arg_0: Struct_1) -> vec2<bool> {
    var var_0 = func_2(func_2(Struct_1(-1320f, !(!arg_0.b), -(~vec3<i32>(arg_0.c.x, arg_0.c.x, 2147483647i)), arg_0.b, max(firstTrailingBit(35632u), u_input.b.x << (1u % 32u)))));
    var_0 = func_2(arg_0);
    let var_1 = u_input.b.x;
    var var_2 = Struct_1(-101f, func_2(arg_0).b, -max(-(var_0.c << (u_input.a.yyy % vec3<u32>(32u))), var_0.c), select(!select(!arg_0.b, arg_0.b, -399f != var_0.a), select(vec2<bool>(-37321i != var_0.c.x, var_0.d.x), !select(vec2<bool>(false, true), vec2<bool>(true, arg_0.b.x), arg_0.d.x), !all(vec3<bool>(false, false, var_0.d.x))), vec2<bool>(true, !arg_0.b.x)), u_input.b.x);
    let var_3 = true;
    return vec2<bool>(select(func_2(Struct_1(_wgslsmith_f_op_f32(903f - -964f), !var_2.b, vec3<i32>(-38497i, 18707i, -72166i), vec2<bool>(var_3, var_2.b.x), 4294967295u)).b.x, false, any(select(select(vec3<bool>(var_3, var_2.b.x, arg_0.d.x), vec3<bool>(arg_0.d.x, true, arg_0.b.x), arg_0.b.x), vec3<bool>(var_0.b.x, var_0.d.x, true), !arg_0.d.x))), var_0.b.x);
}

fn func_1(arg_0: i32) -> i32 {
    let var_0 = 754f;
    var var_1 = 1u;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(ceil(804f)))), !func_4(func_2(Struct_1(-1000f, vec2<bool>(false, false), vec3<i32>(arg_0, 0i, arg_0), vec2<bool>(true, false), 62252u))), max(-_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_0, arg_0, 2147483647i), vec3<i32>(0i, arg_0, -34400i), vec3<i32>(arg_0, 0i, 1i)), -(~vec3<i32>(1i, -82754i, -1i))) << (u_input.a.wxy % vec3<u32>(32u)), select(vec2<bool>(!all(vec2<bool>(false, true)), true), vec2<bool>(any(vec2<bool>(false, true)), false), !(arg_0 <= arg_0)), _wgslsmith_div_u32(4294967295u, u_input.b.x) ^ 58882u);
    var_1 = u_input.b.x;
    var_1 = u_input.a.x;
    return firstTrailingBit(var_2.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(729f, !vec2<bool>(!all(vec3<bool>(false, false, false)), -252f < _wgslsmith_f_op_f32(select(-1000f, -769f, false))), vec3<i32>(abs(41457i), func_1(i32(-1i) * -8923i) >> (u_input.b.x % 32u), _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-21591i, 0i), vec2<i32>(-50036i, 1i)), vec2<i32>(-12902i, -27195i)), _wgslsmith_mult_vec2_i32(vec2<i32>(9360i, -1i), vec2<i32>(1i, 1i)))), func_4(Struct_1(_wgslsmith_f_op_f32(-1258f - _wgslsmith_f_op_f32(2462f - -1854f)), vec2<bool>(true, true), -func_2(Struct_1(157f, vec2<bool>(false, true), vec3<i32>(1i, 8265i, 14090i), vec2<bool>(true, false), u_input.a.x)).c, vec2<bool>(false, true), ~u_input.b.x)), 50781u);
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.a, 1299f, var_0.a, -477f))))))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-673f - 339f), 1207f, -1000f, _wgslsmith_f_op_f32(abs(-229f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.a, var_0.a, 292f, 638f), vec4<f32>(var_0.a, 899f, 1000f, var_0.a), var_0.d.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, var_0.a, var_0.a, var_0.a))) - vec4<f32>(-1000f, 1526f, 1644f, -1000f))));
    let var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.a + var_1.x), _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(-var_1.x))));
    var var_3 = true;
    let var_4 = func_2(var_0);
    let x = u_input.a;
    s_output = StorageBuffer(-vec2<i32>(-17870i, _wgslsmith_mod_i32(~var_4.c.x, func_1(-1037i))), vec4<i32>(min(~2147483647i, ~var_0.c.x), _wgslsmith_dot_vec4_i32(vec4<i32>(var_4.c.x, var_4.c.x, var_0.c.x, 35900i), vec4<i32>(2147483647i, var_0.c.x, var_0.c.x, -10940i)), max(var_4.c.x, var_4.c.x << (var_0.e % 32u)), max(1i, countOneBits(var_0.c.x))) & firstTrailingBit(select(-vec4<i32>(var_0.c.x, 0i, -2147483647i, var_0.c.x), vec4<i32>(-2147483647i, 1i, var_4.c.x, var_4.c.x), var_0.d.x)));
}

