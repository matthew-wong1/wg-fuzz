struct Struct_1 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_3,
    c: Struct_2,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_2,
    c: vec4<bool>,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: vec3<bool>) -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.x, _wgslsmith_f_op_f32(ceil(239f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.x - 910f) * _wgslsmith_f_op_f32(1153f - 994f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1000f, 891f)))) - _wgslsmith_f_op_vec4_f32(-arg_0.b.b)));
    let var_1 = _wgslsmith_f_op_vec3_f32(ceil(arg_0.b.b.yxx));
    let var_2 = ~4294967295u;
    let var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.a * vec2<f32>(arg_0.c.x, arg_0.c.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.c.x, var_1.x) + vec2<f32>(arg_0.a.x, -101f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1604f), _wgslsmith_f_op_f32(-arg_0.b.b.x))));
    let var_4 = ~(~u_input.b.x);
    return var_3;
}

fn func_2() -> vec4<bool> {
    var var_0 = Struct_3(Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(Struct_2(vec2<f32>(-314f, -627f), Struct_1(vec2<bool>(false, true), vec4<f32>(-2230f, -2579f, -1837f, 610f), true, -1i), vec3<f32>(-1610f, 449f, -183f)), 69846u, vec3<bool>(false, false, false)))), Struct_1(vec2<bool>(true, u_input.a.x <= 1u), _wgslsmith_f_op_vec4_f32(vec4<f32>(-760f, 217f, 670f, 338f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(355f, -1208f, -1439f, 458f) - vec4<f32>(766f, -554f, -245f, 204f))), true, 9833i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1374f, _wgslsmith_f_op_f32(-303f + -253f), _wgslsmith_f_op_f32(-1000f + 1096f)))));
    let var_1 = var_0.a.b;
    let var_2 = vec3<u32>(47830u, _wgslsmith_mult_u32(0u, u_input.a.x), 1u);
    return !select(!vec4<bool>(var_0.a.b.c, false, true, var_1.c), select(!select(vec4<bool>(var_1.a.x, false, var_0.a.b.a.x, false), vec4<bool>(var_0.a.b.c, false, var_1.a.x, false), vec4<bool>(var_1.c, var_0.a.b.a.x, true, var_0.a.b.a.x)), vec4<bool>(true, true, true, true), !(var_0.a.b.d != 55667i)), !var_0.a.b.a.x & false);
}

fn func_1() -> Struct_5 {
    let var_0 = func_2();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-245f * _wgslsmith_f_op_f32(abs(-1399f)))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(2103f, 165f)), -1097f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-111f)), 1f))))));
    var_1 = _wgslsmith_f_op_f32(step(-1462f, 344f));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1072f, -688f, (reverseBits(u_input.a.x) >= _wgslsmith_mult_u32(u_input.b.x, u_input.b.x)) || var_0.x)) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-240f)), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(999f, _wgslsmith_div_f32(338f, -201f)), -1485f)))));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(511f, 934f)));
    return Struct_5(Struct_3(Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(189f, -440f) + _wgslsmith_div_vec2_f32(vec2<f32>(-1052f, 1214f), vec2<f32>(-1706f, -312f))), Struct_1(select(vec2<bool>(false, false), var_0.zy, var_0.xw), _wgslsmith_f_op_vec4_f32(-vec4<f32>(421f, 627f, 2220f, 423f)), true, u_input.c ^ 1i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(463f, 656f, 1181f) * vec3<f32>(1710f, -954f, -267f))))), Struct_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(872f, 105f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(294f, 1000f) + vec2<f32>(1130f, 1171f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(960f, -644f) + vec2<f32>(-186f, -848f)))), Struct_1(!(!var_0.yy), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-750f, 1815f, -862f, -224f)), vec4<f32>(2017f, 708f, -937f, 2629f))), var_0.x, _wgslsmith_sub_i32(u_input.c, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, 9321i), vec2<i32>(u_input.c, -2147483647i)))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(282f, -1560f, -435f)))))))), var_0, Struct_3(Struct_2(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1390f, -376f))), Struct_1(vec2<bool>(true, false), _wgslsmith_f_op_vec4_f32(vec4<f32>(-666f, 841f, 2083f, -1114f) + vec4<f32>(-1263f, -1386f, 472f, 1586f)), all(var_0.yzw), 1i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-867f, -202f, -415f), vec3<f32>(-803f, -263f, -1161f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -1203f, -102f) - vec3<f32>(-1970f, 351f, 167f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var_0 = func_1();
    let var_1 = -2131f;
    let var_2 = select(_wgslsmith_add_vec4_i32(select(_wgslsmith_mult_vec4_i32(countOneBits(vec4<i32>(var_0.d.a.b.d, 66871i, 0i, u_input.c)), vec4<i32>(var_0.a.a.b.d, var_0.b.b.d, 18441i, u_input.c) | vec4<i32>(var_0.d.a.b.d, -2147483647i, var_0.d.a.b.d, u_input.c)), abs(-vec4<i32>(-79647i, u_input.c, var_0.d.a.b.d, var_0.b.b.d)), !var_0.b.b.c), (vec4<i32>(var_0.a.a.b.d, var_0.d.a.b.d, u_input.c, 0i) | vec4<i32>(u_input.c, -1i, 8407i, var_0.a.a.b.d)) << (select(_wgslsmith_mult_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, 61847u, u_input.a.x, u_input.a.x)), vec4<u32>(56154u, 40777u, 4294967295u, 39068u), !var_0.a.a.b.a.x) % vec4<u32>(32u))), vec4<i32>(~(~_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.d.a.b.d, var_0.a.a.b.d), vec2<i32>(u_input.c, 10765i))), -89350i, -_wgslsmith_mult_i32(1i << (0u % 32u), u_input.c), 28826i), select(vec4<bool>(!var_0.d.a.b.c, var_0.d.a.b.c, true, false), func_1().c, !func_2()));
    var var_3 = select(var_0.b.b.a, select(!vec2<bool>(var_0.a.a.b.c, true), !vec2<bool>(var_0.c.x & true, !var_0.d.a.b.a.x), any(var_0.c)), select(var_0.c.xy, func_1().b.b.a, var_0.b.b.a.x));
    var_0 = Struct_5(Struct_3(func_1().a.a), Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1278f, var_0.b.c.x) - _wgslsmith_f_op_vec2_f32(var_0.a.a.b.b.wz * var_0.b.b.b.yz))), func_1().a.a.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(var_0.a.a.c, _wgslsmith_div_vec3_f32(vec3<f32>(1709f, var_0.b.a.x, 271f), vec3<f32>(var_1, var_1, var_1)), any(vec4<bool>(var_3.x, false, false, false)))))), vec4<bool>(all(!var_0.c.yw), false | func_2().x, !(!(!var_0.a.a.b.a.x)), false), var_0.d);
    var_0 = func_1();
    var_0 = Struct_5(Struct_3(var_0.a.a), Struct_2(var_0.b.c.zz, Struct_1(vec2<bool>(true, false), var_0.a.a.b.b, func_2().x, ~abs(1i)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.a.b.b.x, _wgslsmith_f_op_f32(-var_1), var_0.a.a.b.b.x) + vec3<f32>(410f, _wgslsmith_f_op_f32(max(var_0.a.a.b.b.x, 1977f)), -1497f))), var_0.c, var_0.a);
    let var_4 = func_1().a.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_u32(u_input.a, vec4<u32>(abs(u_input.a.x), ~u_input.a.x, ~0u, select(u_input.a.x, 4294967295u, false))) >> (countOneBits(vec4<u32>(u_input.a.x >> (u_input.a.x % 32u), ~u_input.b.x, countOneBits(u_input.b.x), _wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(26310u, 104354u)))) % vec4<u32>(32u)), var_2.yx, ~(~(~vec2<u32>(u_input.b.x, 1u))));
}

