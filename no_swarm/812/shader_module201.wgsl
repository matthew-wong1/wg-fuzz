struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec3<f32>,
    c: bool,
    d: vec4<bool>,
    e: f32,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: u32,
    d: Struct_1,
    e: f32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: bool,
    c: vec2<bool>,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_4,
    c: vec3<i32>,
    d: vec4<f32>,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 24> = array<vec4<f32>, 24>(vec4<f32>(-436f, -2310f, -2414f, 116f), vec4<f32>(123f, 454f, 339f, -1716f), vec4<f32>(-828f, -352f, -811f, -1385f), vec4<f32>(236f, -820f, -547f, -173f), vec4<f32>(-928f, -460f, 545f, -882f), vec4<f32>(510f, 1000f, -209f, -605f), vec4<f32>(-629f, -1618f, -1000f, 325f), vec4<f32>(456f, 531f, 217f, -1367f), vec4<f32>(-324f, -547f, 714f, 1028f), vec4<f32>(-1216f, -537f, 1000f, -2191f), vec4<f32>(1791f, -1569f, 329f, -494f), vec4<f32>(-520f, 458f, -1426f, 434f), vec4<f32>(-1000f, -1557f, 160f, 778f), vec4<f32>(491f, 1792f, 1087f, -1000f), vec4<f32>(174f, -810f, -176f, 1305f), vec4<f32>(809f, 1280f, -1000f, -497f), vec4<f32>(473f, 1344f, -636f, -783f), vec4<f32>(334f, -970f, 2857f, 1000f), vec4<f32>(-442f, 211f, 615f, 955f), vec4<f32>(320f, 752f, -804f, -696f), vec4<f32>(1000f, -238f, 171f, -1899f), vec4<f32>(1000f, -1019f, -1255f, -1497f), vec4<f32>(153f, 1231f, 684f, 146f), vec4<f32>(1010f, -349f, 441f, -531f));

var<private> global1: i32 = i32(-2147483648);

var<private> global2: array<vec3<bool>, 12> = array<vec3<bool>, 12>(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false));

var<private> global3: vec2<u32> = vec2<u32>(15043u, 18191u);

var<private> global4: bool = false;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    global4 = !any(vec4<bool>(true, true, true, true)) || false;
    let var_0 = Struct_4(select(vec2<bool>(false, false), !select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)), false), any(select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(true, true), true)))), false | any(vec2<bool>(true, true)), vec2<bool>(!(reverseBits(4294967295u) > global3.x), _wgslsmith_f_op_f32(f32(-1f) * -518f) == _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(step(-511f, -1044f)))));
    let var_1 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-354f, -1111f, false)), _wgslsmith_f_op_f32(select(-2897f, -1043f, true)))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1362f - -214f)))), _wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(-767f)))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1093f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-979f)), 2671f))), 1f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1854f, -280f, -899f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-717f, -1179f, -178f))) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(461f, -1026f, 480f)))))), var_0.b, !vec4<bool>(var_0.a.x, false, false, all(select(vec4<bool>(var_0.a.x, true, false, var_0.a.x), vec4<bool>(true, var_0.a.x, var_0.a.x, false), var_0.c.x))), -815f);
    var var_2 = select(select(vec3<bool>(any(var_1.d.ywy), all(select(vec4<bool>(true, var_0.b, var_0.a.x, false), var_1.d, true)), _wgslsmith_add_i32(u_input.b, 1i) >= -u_input.c), !select(vec3<bool>(true, true, true), !vec3<bool>(var_1.c, false, var_0.a.x), var_1.c), var_0.a.x), var_1.d.yzz, !var_0.a.x);
    let var_3 = Struct_3(638f, ~(global3.x ^ global3.x) <= ~(~(u_input.a >> (u_input.a % 32u))), _wgslsmith_clamp_u32(~u_input.a, firstTrailingBit(54777u), 21635u), Struct_1(!(!var_2.x), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-var_1.b))), u_input.b), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f - 2141f), -932f));
    return -133f;
}

fn func_2() -> i32 {
    let var_0 = Struct_3(245f, true, global3.x, Struct_1(false, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-468f, -935f) + _wgslsmith_f_op_f32(681f + 1000f)), _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-1268f + _wgslsmith_f_op_f32(f32(-1f) * -248f))), _wgslsmith_dot_vec4_i32(~_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c, -53394i, -44412i, -1920i), vec4<i32>(-2147483647i, -4634i, u_input.c, u_input.c), vec4<i32>(u_input.b, u_input.c, u_input.c, u_input.c)), reverseBits(-vec4<i32>(-38030i, u_input.c, -2147483647i, 1i)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -459f))));
    let var_1 = Struct_2(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(49045u, firstTrailingBit(~17463u ^ u_input.a)), 24u)], _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-var_0.a), var_0.a, _wgslsmith_f_op_f32(sign(var_0.e)))))), all(vec4<bool>(all(vec4<bool>(true, false, true, true)), ~u_input.a >= _wgslsmith_clamp_u32(51412u, 4294967295u, 8143u), var_0.d.a, false)), select(!vec4<bool>(true, !var_0.b, var_0.b, !var_0.d.a), select(select(select(vec4<bool>(false, var_0.d.a, true, false), vec4<bool>(false, false, false, var_0.d.a), true), !vec4<bool>(var_0.b, true, true, false), !vec4<bool>(var_0.d.a, true, true, true)), vec4<bool>(u_input.c > -1i, all(vec3<bool>(true, true, true)), true, var_0.b), !vec4<bool>(true, var_0.b, true, var_0.b)), !all(global2[_wgslsmith_index_u32(u_input.a >> (94107u % 32u), 12u)])), _wgslsmith_f_op_f32(1185f + var_0.d.b.x));
    let var_2 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(var_1.b + vec3<f32>(-253f, -318f, -1000f)), var_0.d.b, true)), var_0.d.b), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a.x, -1000f, var_0.d.b.x) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-289f, var_0.e, -495f))))))));
    global1 = -2147483647i;
    global2 = array<vec3<bool>, 12>();
    return reverseBits(-(~(~(i32(-1i) * -2147483647i))));
}

fn func_1() -> StorageBuffer {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1331f + _wgslsmith_f_op_f32(select(-1685f, -1660f, false))))) * 1266f);
    global1 = ~((func_2() >> (global3.x % 32u)) & _wgslsmith_mult_i32(u_input.c, ~_wgslsmith_mult_i32(u_input.b, u_input.b)));
    global3 = _wgslsmith_mult_vec2_u32(firstTrailingBit(~(~vec2<u32>(0u, 14304u))), vec2<u32>(15404u, 1u));
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -221f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1588f + _wgslsmith_f_op_f32(f32(-1f) * -575f)))), _wgslsmith_f_op_f32(1979f - 1354f));
    return StorageBuffer(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1815f, -1521f, 705f), vec3<f32>(-256f, -546f, -528f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(1222f, 301f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(299f, -1007f)), -204f))) * _wgslsmith_f_op_f32(min(-427f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(995f * 1034f), _wgslsmith_f_op_f32(-516f + 377f)))))), reverseBits(-(~vec3<i32>(u_input.c, u_input.c, -1i))));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = any(global2[_wgslsmith_index_u32(min(u_input.a, 4294967295u), 12u)]);
    let x = u_input.a;
    s_output = func_1();
}

