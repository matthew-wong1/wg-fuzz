struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: i32,
    d: vec4<f32>,
    e: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec3<bool>,
    c: vec2<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>) -> f32 {
    var var_0 = arg_0;
    let var_1 = arg_0;
    var_0 = var_1;
    var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(1f))))), arg_0.b, select(var_1.c, ~_wgslsmith_mod_i32(i32(-1i) * -688i, countOneBits(-1i)), false), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0.a, _wgslsmith_f_op_f32(arg_0.d.x * var_1.e), _wgslsmith_f_op_f32(f32(-1f) * -480f), _wgslsmith_f_op_f32(max(var_0.d.x, -240f))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a * 150f)))));
    let var_2 = Struct_2(vec2<i32>(_wgslsmith_div_i32(abs(1i), abs(_wgslsmith_dot_vec4_i32(vec4<i32>(6045i, -2147483647i, 0i, 1i), vec4<i32>(-25571i, var_1.c, var_0.c, var_1.c)))), -38025i), !vec3<bool>(select(u_input.a > u_input.a, 50871u <= u_input.a, true), _wgslsmith_f_op_f32(-213f + arg_1.x) != -693f, any(vec3<bool>(false, true, false))), !(!(!select(vec2<bool>(true, false), vec2<bool>(true, true), true))), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(var_1.a)))), var_1.b.x), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(trunc(arg_0.b)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(545f, var_0.e, -297f) - vec3<f32>(arg_1.x, -753f, -285f))))), ~(~var_0.c), vec4<f32>(_wgslsmith_f_op_f32(trunc(220f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b.x + var_1.a) + var_0.d.x), var_1.d.x, -758f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.d.x), _wgslsmith_f_op_f32(min(arg_1.x, var_0.a)), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1245f)))));
    return var_1.d.x;
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: vec3<i32>) -> i32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(func_3(Struct_1(arg_1.d.d.x, _wgslsmith_f_op_vec3_f32(arg_1.d.b * vec3<f32>(arg_1.d.e, arg_1.d.d.x, arg_1.d.e)), _wgslsmith_mod_i32(2147483647i, arg_1.a.x) | arg_1.d.c, vec4<f32>(_wgslsmith_f_op_f32(max(arg_1.d.d.x, arg_1.d.b.x)), _wgslsmith_f_op_f32(step(-768f, arg_1.d.a)), _wgslsmith_f_op_f32(f32(-1f) * -327f), _wgslsmith_f_op_f32(step(arg_1.d.e, -280f))), -533f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_1.d.e, -448f, arg_1.d.d.x, 728f))), vec4<f32>(1331f, arg_1.d.a, arg_1.d.a, -955f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_1.d.b - arg_1.d.b), vec3<f32>(108f, -1217f, -1186f)) * vec3<f32>(_wgslsmith_f_op_f32(sign(arg_1.d.e)), _wgslsmith_f_op_f32(f32(-1f) * -280f), arg_1.d.d.x))), arg_2.x << (~(~arg_0.x) % 32u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_1.d.d)) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-arg_1.d.d))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2049f, arg_1.d.d.x, 260f, arg_1.d.d.x))))))), arg_1.d.a);
    var var_1 = ~_wgslsmith_mult_vec4_u32(~min(vec4<u32>(2116u, 78206u, u_input.a, 1u) | vec4<u32>(7420u, 4294967295u, u_input.a, u_input.a), ~vec4<u32>(16389u, arg_0.x, arg_0.x, arg_0.x)), _wgslsmith_mult_vec4_u32(countOneBits(vec4<u32>(40043u, arg_0.x, 23220u, u_input.a)) << (~vec4<u32>(0u, 57964u, arg_0.x, 0u) % vec4<u32>(32u)), (vec4<u32>(u_input.a, 4294967295u, u_input.a, 0u) & vec4<u32>(u_input.a, 13645u, 17755u, arg_0.x)) << (~vec4<u32>(4294967295u, u_input.a, 60903u, arg_0.x) % vec4<u32>(32u))));
    let var_2 = abs(var_0.c);
    var var_3 = 67948u;
    var_3 = ~(~select(arg_0.x, 4294967295u, all(vec3<bool>(true, true, arg_1.b.x))));
    return ~1i;
}

fn func_1(arg_0: u32, arg_1: Struct_2) -> bool {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(1607f, 1f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1279f, arg_1.d.b.x, arg_1.d.e)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-701f, arg_1.d.b.x, arg_1.d.b.x), vec3<f32>(1139f, arg_1.d.d.x, arg_1.d.a), arg_1.b))), arg_1.b)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-295f, arg_1.d.e, 257f), arg_1.d.b))), _wgslsmith_mod_i32(0i, -1i), vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(arg_1.d.e)), _wgslsmith_f_op_f32(trunc(-727f)))), -366f, 1000f, -493f), 434f);
    var var_1 = -vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(~2147483647i, 1i, var_0.c ^ var_0.c), vec3<i32>(func_2(vec2<u32>(73060u, 4294967295u), Struct_2(vec2<i32>(2978i, -2147483647i), vec3<bool>(false, true, arg_1.c.x), vec2<bool>(true, true), arg_1.d), vec3<i32>(var_0.c, var_0.c, 0i)), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.a.x, 24001i, -22869i, 368i), vec4<i32>(-1i, arg_1.a.x, var_0.c, -46569i)), _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.c, 59602i), vec2<i32>(-15794i, arg_1.d.c)))), -reverseBits(-16387i), ~(-_wgslsmith_mod_i32(-2147483647i, 2147483647i)));
    let var_2 = var_0.c;
    let var_3 = vec4<bool>(true, arg_1.b.x, true, 1u < u_input.a);
    var_1 = countOneBits(abs(_wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, firstTrailingBit(var_0.c), ~arg_1.a.x), ~(vec3<i32>(var_0.c, -54683i, 2147483647i) | vec3<i32>(-2147483647i, var_1.x, arg_1.a.x)))));
    return all(!(!select(!arg_1.b, vec3<bool>(false, var_3.x, arg_1.c.x), 32099u >= u_input.a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(trunc(1f));
    var_0 = 829f;
    let var_1 = -1196f;
    var var_2 = Struct_2(vec2<i32>(1i << (~(~0u) % 32u), max(-1i, 0i)), select(!vec3<bool>(true, any(vec4<bool>(true, true, true, false)), true), !(!select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true))), true), select(select(vec2<bool>(true, func_1(u_input.a, Struct_2(vec2<i32>(0i, 2147483647i), vec3<bool>(true, true, false), vec2<bool>(false, false), Struct_1(var_1, vec3<f32>(var_1, var_1, var_1), 1i, vec4<f32>(var_1, var_1, 1892f, 257f), var_1)))), vec2<bool>(true, true), vec2<bool>(any(vec2<bool>(false, false)), func_1(u_input.a, Struct_2(vec2<i32>(-13609i, -2147483647i), vec3<bool>(true, false, false), vec2<bool>(true, false), Struct_1(var_1, vec3<f32>(var_1, var_1, -963f), -1i, vec4<f32>(var_1, -730f, -790f, -865f), var_1))))), vec2<bool>(true, true), all(select(vec2<bool>(true, true), vec2<bool>(true, true), true))), Struct_1(var_1, _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, _wgslsmith_f_op_f32(-var_1), var_1) - vec3<f32>(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(step(var_1, var_1)), -878f)), -(~(-2551i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, var_1, var_1, -1297f) * vec4<f32>(1990f, var_1, var_1, 133f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, var_1, -708f, 110f) * vec4<f32>(var_1, 1585f, var_1, var_1)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -254f))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(var_2.d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.d.d.x, var_1, -767f, var_1))))) - -918f));
    var_2 = Struct_2(-_wgslsmith_sub_vec2_i32(var_2.a, vec2<i32>(3735i, max(var_2.d.c, var_2.a.x))), !(!select(select(vec3<bool>(true, var_2.b.x, var_2.b.x), vec3<bool>(false, true, var_2.c.x), var_2.b), vec3<bool>(var_2.c.x, var_2.b.x, var_2.b.x), var_2.d.e != -1338f)), vec2<bool>(!all(vec3<bool>(false, true, true)), !((var_2.b.x || var_2.c.x) && !var_2.c.x)), Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(450f * -219f)), _wgslsmith_f_op_f32(-var_1))), var_2.d.b, var_2.d.c & (-2147483647i | var_2.a.x), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, var_2.d.d.x, var_2.d.e, var_2.d.d.x)))), 558f));
    var var_3 = 39523u;
    let var_4 = any(select(vec2<bool>(_wgslsmith_f_op_f32(sign(var_1)) > _wgslsmith_f_op_f32(var_2.d.e + -718f), u_input.a < 85902u), vec2<bool>(var_2.c.x, func_1(~u_input.a, Struct_2(vec2<i32>(var_2.a.x, var_2.d.c), var_2.b, vec2<bool>(true, var_2.c.x), Struct_1(190f, var_2.d.b, var_2.a.x, vec4<f32>(var_1, 133f, 380f, var_1), 540f)))), any(!vec4<bool>(true, var_2.c.x, true, false))));
    var var_5 = vec3<u32>(1u, 0u, u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(-vec3<i32>(-var_2.d.c, (var_2.a.x << (28699u % 32u)) >> (_wgslsmith_add_u32(u_input.a, var_5.x) % 32u), ~(-1i)), var_1, -238f);
}

