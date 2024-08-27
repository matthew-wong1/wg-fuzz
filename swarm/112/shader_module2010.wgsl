struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: u32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec2<bool>,
    c: vec4<bool>,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec3<f32>,
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

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: f32) -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1580f, 231f) - _wgslsmith_f_op_f32(arg_0 - arg_0)), 202f))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1017f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - var_0.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1216f, 774f, arg_0)), vec3<f32>(1f, -836f, _wgslsmith_f_op_f32(f32(-1f) * -188f))) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -842f)), var_0.x, _wgslsmith_f_op_f32(-var_0.x))), ~(~1u), u_input.c.zz);
    var var_2 = true || any(vec2<bool>(true, true));
    var var_3 = 1986f;
    let var_4 = var_1.c;
    return false;
}

fn func_4(arg_0: vec4<bool>, arg_1: vec4<f32>, arg_2: Struct_2) -> bool {
    let var_0 = countOneBits(arg_2.d.d.x);
    return !(all(select(vec3<bool>(arg_0.x, true, true), !arg_0.xzy, select(arg_2.c.wwx, arg_2.a, arg_2.c.x))) & !(!arg_2.e));
}

fn func_2(arg_0: f32, arg_1: i32) -> Struct_1 {
    var var_0 = ((all(vec2<bool>(true, true)) && true) & !any(vec3<bool>(true, false, true))) && func_4(vec4<bool>(!func_3(arg_0), true, true, true), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0, 552f, -1666f, arg_0), vec4<f32>(-207f, 1386f, arg_0, arg_0))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, arg_0, 1078f) + vec4<f32>(-462f, 630f, arg_0, arg_0))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-208f, 478f, arg_0, arg_0), vec4<f32>(729f, -504f, arg_0, arg_0), true)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-593f, 649f, arg_0, -737f)))), Struct_2(select(vec3<bool>(false, false, true), select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), false), any(vec4<bool>(true, true, true, false))), !select(vec2<bool>(false, false), vec2<bool>(true, true), true), vec4<bool>(true, true, true, true), Struct_1(1927f, _wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_0, -584f, -597f), vec3<f32>(arg_0, -1548f, 659f))), 4294967295u, _wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, 1i), vec2<i32>(arg_1, -43390i), vec2<i32>(-50737i, u_input.c.x))), true));
    var var_1 = !(!select(!select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), false), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true)), vec4<bool>(all(vec2<bool>(true, true)), true, true, any(vec4<bool>(false, false, true, false)))));
    let var_2 = reverseBits(vec2<u32>(_wgslsmith_mult_u32(104354u, _wgslsmith_mod_u32(~4294967295u, ~18570u)), _wgslsmith_mult_u32(~19516u, 1u)));
    let var_3 = 32486u;
    let var_4 = true;
    return Struct_1(-256f, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, -770f, -1163f) * vec3<f32>(1000f, -951f, -211f))))))), firstTrailingBit(_wgslsmith_div_u32(~(~0u), ~(var_2.x << (29644u % 32u)))), max(u_input.b.zz, ~_wgslsmith_add_vec2_i32(u_input.b.yy >> (var_2 % vec2<u32>(32u)), vec2<i32>(u_input.c.x, 17521i))));
}

fn func_1() -> Struct_2 {
    let var_0 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-915f * _wgslsmith_f_op_f32(ceil(1000f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(min(-1000f, -967f)), any(vec4<bool>(true, true, true, true)))))), ~(-23524i));
    var var_1 = vec3<bool>(all(vec4<bool>(firstTrailingBit(var_0.c) < ~var_0.c, true, true, false)), any(!select(vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true)), false)), any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)));
    let var_2 = var_0.a;
    let var_3 = 5637i;
    var_1 = vec3<bool>(func_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.a))), min(-20380i, 18814i)).c != func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2 * -412f) - _wgslsmith_f_op_f32(ceil(var_0.b.x))), _wgslsmith_sub_i32(-1i, _wgslsmith_dot_vec3_i32(u_input.b, u_input.b))).c, !(!func_4(!vec4<bool>(var_1.x, true, false, var_1.x), _wgslsmith_div_vec4_f32(vec4<f32>(var_2, var_0.b.x, 1440f, 542f), vec4<f32>(-1000f, var_0.a, 1544f, -622f)), Struct_2(vec3<bool>(false, var_1.x, true), vec2<bool>(true, var_1.x), vec4<bool>(true, var_1.x, true, var_1.x), Struct_1(211f, vec3<f32>(var_2, var_2, -1057f), var_0.c, vec2<i32>(9001i, var_0.d.x)), var_1.x))), var_1.x);
    return Struct_2(select(!(!(!vec3<bool>(false, true, var_1.x))), vec3<bool>(true, var_1.x, true), !all(vec3<bool>(var_1.x, var_1.x, var_1.x))), vec2<bool>(var_1.x, true), select(!(!select(vec4<bool>(var_1.x, true, var_1.x, var_1.x), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(true, false, var_1.x, true))), vec4<bool>(select(any(vec2<bool>(false, true)), any(vec3<bool>(true, var_1.x, false)), true), func_4(vec4<bool>(false, true, false, var_1.x), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(833f, var_0.b.x, var_0.b.x, var_2))), Struct_2(vec3<bool>(var_1.x, var_1.x, true), var_1.xz, vec4<bool>(true, true, false, false), Struct_1(290f, var_0.b, 8281u, u_input.c.zy), var_1.x)), var_1.x, abs(var_0.c) <= (var_0.c >> (var_0.c % 32u))), !(!select(vec4<bool>(var_1.x, false, false, var_1.x), vec4<bool>(var_1.x, var_1.x, var_1.x, false), false))), var_0, true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = u_input.d;
    let var_2 = Struct_1(var_0.d.a, vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(1275f)))), 1711f, _wgslsmith_f_op_f32(exp2(var_0.d.a))), var_0.d.c | func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1630f * var_0.d.b.x)), 1i).c, abs(_wgslsmith_mult_vec2_i32(func_2(498f, 1i).d, vec2<i32>(37894i, u_input.d) | u_input.b.zy)) << (_wgslsmith_add_vec2_u32(~max(vec2<u32>(var_0.d.c, 4294967295u), vec2<u32>(var_0.d.c, var_0.d.c)), ~vec2<u32>(49204u, var_0.d.c) ^ min(vec2<u32>(47946u, var_0.d.c), vec2<u32>(var_0.d.c, 0u))) % vec2<u32>(32u)));
    var_1 = _wgslsmith_clamp_i32(i32(-1i) * -_wgslsmith_dot_vec4_i32(vec4<i32>(-9770i, -10524i, 1831i, var_0.d.d.x) & vec4<i32>(1i, u_input.e, -1i, 2147483647i), ~vec4<i32>(-2147483647i, 7583i, 2147483647i, u_input.a.x)), ~_wgslsmith_add_i32(min(var_2.d.x, u_input.b.x), u_input.c.x) << (_wgslsmith_sub_u32(~0u >> (var_2.c % 32u), var_0.d.c) % 32u), -(~var_0.d.d.x));
    var_1 = -38392i;
    var var_3 = reverseBits(vec3<u32>(61968u, ~func_2(_wgslsmith_f_op_f32(-899f - var_2.b.x), 0i).c, var_2.c | _wgslsmith_dot_vec3_u32(vec3<u32>(33083u, var_0.d.c, 29864u), select(vec3<u32>(54680u, var_0.d.c, var_0.d.c), vec3<u32>(82834u, var_0.d.c, 2612u), var_0.a.x))));
    var var_4 = _wgslsmith_mult_u32(14634u, firstLeadingBit(var_3.x));
    var var_5 = func_1().d;
    let var_6 = Struct_2(select(vec3<bool>(var_0.e, !var_0.c.x, any(vec3<bool>(true, var_0.a.x, var_0.e))), vec3<bool>(!var_0.c.x || any(var_0.a), false, any(!var_0.b)), var_0.c.x), vec2<bool>(func_4(select(vec4<bool>(false, var_0.b.x, false, true), !vec4<bool>(var_0.a.x, var_0.c.x, var_0.c.x, var_0.a.x), !var_0.b.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-601f, var_0.d.b.x, 415f, 241f)), Struct_2(vec3<bool>(var_0.c.x, true, false), func_1().b, var_0.c, func_1().d, var_0.c.x)), any(!select(vec4<bool>(var_0.a.x, var_0.a.x, var_0.c.x, var_0.a.x), vec4<bool>(var_0.e, var_0.b.x, false, var_0.c.x), false))), !var_0.c, var_2, false);
    let x = u_input.a;
    s_output = StorageBuffer(~(~var_3.yx), vec3<i32>(-2147483647i, 14827i, var_2.d.x), func_1().d.b);
}

