struct Struct_1 {
    a: vec3<u32>,
    b: vec2<bool>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1) -> bool {
    let var_0 = select(vec3<bool>(true, all(select(vec4<bool>(true, arg_1.b.x, arg_1.c.x, true), select(vec4<bool>(false, arg_1.b.x, true, false), vec4<bool>(arg_1.c.x, arg_1.b.x, false, arg_1.c.x), vec4<bool>(arg_1.c.x, arg_1.b.x, arg_1.b.x, arg_1.c.x)), false)), all(vec3<bool>(true, true, true))), select(select(select(vec3<bool>(false, false, false), select(vec3<bool>(true, true, true), vec3<bool>(true, arg_1.c.x, false), arg_1.b.x), !vec3<bool>(arg_1.c.x, true, false)), select(!vec3<bool>(arg_1.c.x, arg_1.c.x, arg_1.b.x), select(vec3<bool>(arg_1.b.x, arg_1.b.x, arg_1.c.x), vec3<bool>(arg_1.b.x, true, false), true), arg_1.b.x), _wgslsmith_mult_u32(4294967295u, 0u) != _wgslsmith_clamp_u32(u_input.e.x, arg_1.a.x, 50541u)), !select(vec3<bool>(arg_1.b.x, arg_1.c.x, arg_1.c.x), vec3<bool>(arg_1.c.x, true, arg_1.b.x), !arg_1.b.x), select(!vec3<bool>(arg_1.c.x, arg_1.b.x, false), select(vec3<bool>(true, arg_1.b.x, arg_1.b.x), select(vec3<bool>(arg_1.c.x, arg_1.c.x, arg_1.b.x), vec3<bool>(true, true, arg_1.b.x), vec3<bool>(arg_1.c.x, arg_1.b.x, arg_1.b.x)), arg_1.b.x), select(vec3<bool>(true, true, true), !vec3<bool>(arg_1.c.x, arg_1.c.x, arg_1.c.x), true))), false);
    var var_1 = u_input.a;
    var_1 = -_wgslsmith_add_vec4_i32(-vec4<i32>(2147483647i | u_input.d, -arg_0.x, firstTrailingBit(-3937i), select(arg_0.x, u_input.b, var_0.x)), _wgslsmith_add_vec4_i32(vec4<i32>(-6631i ^ arg_0.x, 1i, 7598i, u_input.a.x), min(u_input.a, _wgslsmith_mult_vec4_i32(vec4<i32>(var_1.x, arg_0.x, arg_0.x, arg_0.x), u_input.a))));
    var var_2 = Struct_2(true);
    return var_0.x;
}

fn func_2() -> bool {
    let var_0 = Struct_3(Struct_2(!func_3(vec2<i32>(u_input.b, 57778i) ^ u_input.a.yy, Struct_1(u_input.e.zyy, vec2<bool>(false, false), vec2<bool>(false, true)))), Struct_2(all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)))));
    var var_1 = Struct_1(reverseBits(u_input.e.zww), !(!select(!vec2<bool>(false, var_0.b.a), select(vec2<bool>(false, true), vec2<bool>(false, false), var_0.b.a), false)), !(!(!select(vec2<bool>(var_0.a.a, var_0.b.a), vec2<bool>(false, var_0.a.a), var_0.a.a))));
    var var_2 = var_0;
    var_1 = Struct_1(~u_input.e.xxz, select(select(vec2<bool>(var_2.b.a | false, var_2.b.a), !(!var_1.c), true), select(select(select(vec2<bool>(true, true), vec2<bool>(var_1.c.x, true), var_1.b), vec2<bool>(var_2.a.a, false), all(vec3<bool>(var_2.b.a, false, var_2.b.a))), select(!var_1.b, select(var_1.b, vec2<bool>(var_0.b.a, false), var_0.b.a), select(var_1.c, vec2<bool>(var_1.c.x, false), var_1.b)), !(!vec2<bool>(var_1.b.x, true))), var_1.c.x), vec2<bool>(var_1.b.x, -(~u_input.a.x) != ~u_input.a.x));
    let var_3 = min(u_input.a.x, ~u_input.c ^ u_input.d);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1656f)) * -1560f) + _wgslsmith_f_op_f32(sign(-342f)))) < _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1319f, 107f) + _wgslsmith_f_op_f32(round(-353f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1398f, 317f)) + -1078f)) + -204f);
}

fn func_4(arg_0: bool, arg_1: vec3<u32>) -> Struct_1 {
    var var_0 = ~(~(~vec3<i32>(1i, i32(-1i) * -58640i, -1i)));
    var var_1 = vec2<u32>(13944u, u_input.e.x);
    var var_2 = var_0.x;
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -2758f);
    var var_4 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(456f, var_3)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_3)) * _wgslsmith_f_op_f32(-var_3)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_3))), var_3);
    return Struct_1(arg_1 >> (abs(arg_1) % vec3<u32>(32u)), !(!select(!vec2<bool>(false, arg_0), !vec2<bool>(false, arg_0), arg_0)), !select(!(!vec2<bool>(true, arg_0)), !(!vec2<bool>(true, arg_0)), vec2<bool>(all(vec4<bool>(arg_0, arg_0, true, true)), arg_0)));
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_1) -> i32 {
    let var_0 = arg_1.c;
    let var_1 = Struct_5(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-570f * -1448f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(751f, 1006f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1621f, 1000f) * vec2<f32>(1111f, -311f)), vec2<f32>(1978f, -755f)) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1378f, -449f)))))));
    let var_2 = var_1.a.x;
    let var_3 = var_1;
    var var_4 = countOneBits(-1i);
    return ~1i;
}

fn func_1(arg_0: vec4<i32>, arg_1: i32, arg_2: f32) -> vec2<bool> {
    var var_0 = -func_5(-vec4<i32>(arg_0.x, -19374i, u_input.c, _wgslsmith_sub_i32(2147483647i, arg_0.x)), func_4(!func_2(), firstLeadingBit(vec3<u32>(0u, 0u, 62428u) ^ vec3<u32>(u_input.e.x, 0u, 4294967295u))));
    var var_1 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_2, arg_2), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_2, -1164f), vec2<f32>(1917f, -1382f)))) * vec2<f32>(_wgslsmith_f_op_f32(abs(arg_2)), _wgslsmith_f_op_f32(arg_2 - 693f))))));
    let var_2 = u_input.e;
    var var_3 = 4294967295u;
    let var_4 = select(select(select(vec3<bool>(true, true, true), vec3<bool>(any(vec4<bool>(true, false, true, true)), true, true), vec3<bool>(true, true, true)), vec3<bool>(true, !(arg_1 < 18215i), false), select(!select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false)), vec3<bool>(true, false, true), -arg_0.x != arg_1)), select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), false), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), any(vec4<bool>(true, true, true, true))), !select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), false), vec3<bool>(true, true, true), vec3<bool>(false, false, false))), !select(vec3<bool>(false, all(vec2<bool>(false, false)), true), vec3<bool>(true, true, true), false));
    return vec2<bool>(var_4.x, true == func_2());
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec3<u32>(u_input.e.x, countOneBits(_wgslsmith_div_u32(u_input.e.x, u_input.e.x)) | 38083u, u_input.e.x), !(!select(vec2<bool>(true, true), func_1(u_input.a, 0i, 1049f), true)), select(vec2<bool>(func_3(u_input.a.xy, Struct_1(vec3<u32>(4294967295u, u_input.e.x, 4294967295u), vec2<bool>(true, true), vec2<bool>(true, true))), all(vec2<bool>(true, true))), !vec2<bool>(false, all(vec3<bool>(false, false, true))), func_4(false, firstLeadingBit(u_input.e.zzx)).b.x | false));
    var var_1 = Struct_4(any(var_0.b));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1361f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(802f, -245f) + 379f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-885f, -740f))))) < _wgslsmith_f_op_f32(_wgslsmith_div_f32(895f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-796f))))) * _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1000f, -666f)), _wgslsmith_f_op_f32(ceil(1916f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(729f + -405f)))));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1561f, -1348f, -1436f, 108f), vec4<f32>(143f, 536f, 188f, -514f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-239f, -951f, 1790f, 1232f))), var_0.b.x)));
    var_1 = Struct_4(func_2());
    var var_4 = Struct_2(0u <= _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 17416u), var_0.a.yy) & max(4294967295u, var_0.a.x), abs(firstLeadingBit(0u))));
    var var_5 = Struct_5(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_3.yz) - vec2<f32>(var_3.x, var_3.x)) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_3.x, var_3.x)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(var_3.x, var_3.x)), -1240f)), select(!(!var_0.b), var_0.c, true))));
    var_5 = Struct_5(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(var_5.a.x)), _wgslsmith_f_op_f32(trunc(var_5.a.x))) - vec2<f32>(201f, _wgslsmith_div_f32(var_3.x, var_5.a.x))) - _wgslsmith_f_op_vec2_f32(sign(var_3.xz))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(-2103f - -1452f), var_3.x))), var_5.a)), -(~abs(vec4<i32>(u_input.b, u_input.b, u_input.d, u_input.d))), select(select(u_input.e.yz ^ firstTrailingBit(u_input.e.yx), firstTrailingBit(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, u_input.e.x), vec2<u32>(1188u, u_input.e.x))), var_0.b), u_input.e.ww, true), reverseBits(~_wgslsmith_mod_u32(4294967295u, 53230u) | u_input.e.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_5.a.x)))));
}

