struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: vec2<u32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_3,
    c: bool,
    d: i32,
    e: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_3, arg_1: u32) -> f32 {
    let var_0 = 11190u;
    var var_1 = Struct_2(Struct_1(683f, (firstTrailingBit(u_input.c.x) > 9500i) || true), Struct_1(arg_0.b.a, true), 4294967295u, ~u_input.a);
    var var_2 = vec3<i32>(20461i, -u_input.c.x, u_input.c.x) << (vec3<u32>(u_input.a.x, max(_wgslsmith_add_u32(u_input.b.x | 4294967295u, var_0), 1u), var_0) % vec3<u32>(32u));
    return _wgslsmith_div_f32(2118f, _wgslsmith_f_op_f32(632f + 1063f));
}

fn func_2() -> f32 {
    let var_0 = -31522i;
    var var_1 = true;
    var var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1011f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1452f + -116f)))), -615f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_3(vec2<bool>(true, false), Struct_1(-1000f, true)), 8284u))), _wgslsmith_f_op_f32(f32(-1f) * -1963f)) <= _wgslsmith_f_op_f32(893f - -1096f)));
    var var_3 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-131f)) - _wgslsmith_f_op_f32(abs(-1671f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1374f))), -160f, _wgslsmith_f_op_f32(select(-431f, -299f, true))))));
    var_3 = vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(777f, _wgslsmith_f_op_f32(f32(-1f) * -386f), all(vec4<bool>(true, false, true, true))))), -953f)), _wgslsmith_f_op_f32(min(var_3.x, _wgslsmith_f_op_f32(var_3.x + 1f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(var_3.x)), _wgslsmith_div_f32(575f, _wgslsmith_f_op_f32(f32(-1f) * -389f)))))), _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(309f + 575f), var_3.x)))) - var_3.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_3.x))));
}

fn func_1() -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(step(-1000f, 1157f)), _wgslsmith_f_op_f32(f32(-1f) * -881f)) * vec4<f32>(-151f, _wgslsmith_f_op_f32(447f + -847f), _wgslsmith_f_op_f32(floor(1926f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(1514f, 683f, -1026f, -129f) + vec4<f32>(-1000f, 322f, -1237f, 715f)))))));
    var var_1 = _wgslsmith_clamp_vec2_u32(vec2<u32>(firstLeadingBit(~u_input.a.x), ~35986u), vec2<u32>(~u_input.b.x, 7502u), ~(~abs(vec2<u32>(u_input.e, 58944u))));
    var var_2 = Struct_3(vec2<bool>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.x))) > _wgslsmith_f_op_f32(func_3(Struct_3(vec2<bool>(true, false), Struct_1(var_0.x, false)), _wgslsmith_dot_vec2_u32(vec2<u32>(27658u, u_input.d), vec2<u32>(0u, u_input.a.x)))), (u_input.c.x < max(u_input.c.x, u_input.c.x)) & true), Struct_1(-1303f, any(vec2<bool>(true, true))));
    var_1 = vec2<u32>(firstLeadingBit(1u), 0u);
    return _wgslsmith_add_vec3_i32(min(_wgslsmith_mult_vec3_i32(max(vec3<i32>(u_input.c.x, -16076i, u_input.c.x) << (u_input.b.ywy % vec3<u32>(32u)), vec3<i32>(u_input.c.x, u_input.c.x, -4195i) >> (vec3<u32>(u_input.d, u_input.a.x, 1u) % vec3<u32>(32u))), vec3<i32>(_wgslsmith_mult_i32(u_input.c.x, u_input.c.x), -u_input.c.x, u_input.c.x)), ~(~(-vec3<i32>(u_input.c.x, -19650i, 18381i)))), reverseBits(vec3<i32>(_wgslsmith_dot_vec2_i32(u_input.c, vec2<i32>(44689i, -41549i)), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, u_input.c.x, 2147483647i), vec3<i32>(-2147483647i, 1i, 0i)), -184i) >> (~(~u_input.b.xwz) % vec3<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstLeadingBit(func_1());
    var var_1 = select(710f != _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1019f), _wgslsmith_f_op_f32(func_2()))))), true, false == (2147483647i < firstTrailingBit(~u_input.c.x)));
    let var_2 = Struct_5(Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1313f)) + _wgslsmith_f_op_f32(f32(-1f) * -393f)), true), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(229f + -1000f), -1000f), true), 82409u, vec2<u32>(firstTrailingBit(~u_input.a.x), ~(~u_input.d))), Struct_3(!vec2<bool>(true, any(vec3<bool>(false, false, false))), Struct_1(_wgslsmith_f_op_f32(floor(-870f)), false)), false, 0i, _wgslsmith_dot_vec3_u32(countOneBits(u_input.b.yxy), firstTrailingBit(reverseBits(u_input.b.wwx)) | u_input.b.yww));
    let var_3 = Struct_2(var_2.b.b, Struct_1(1058f, all(select(vec4<bool>(var_2.a.a.b, var_2.a.b.b, false, false), select(vec4<bool>(true, false, var_2.a.a.b, var_2.c), vec4<bool>(var_2.a.a.b, false, var_2.b.b.b, true), true), true))), ~1591u, u_input.b.yy);
    var var_4 = 69581u;
    var var_5 = vec4<bool>(var_3.a.b, var_3.a.b, true, var_2.a.a.b || !(!var_2.b.a.x));
    let var_6 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1786f, var_3.a.a), vec2<f32>(var_3.b.a, var_2.b.b.a), var_3.d.x == u_input.d))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(-650f, var_3.a.a) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1000f, -554f)))))) - vec2<f32>(_wgslsmith_f_op_f32(var_2.b.b.a + _wgslsmith_f_op_f32(round(1430f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-692f)))))));
    let var_7 = _wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(min(var_2.e, var_3.d.x), abs(0u)), ~(~u_input.b.yx)), ~(~var_2.a.d)), abs(_wgslsmith_mod_vec2_u32(reverseBits(vec2<u32>(var_2.e, u_input.b.x)), vec2<u32>(var_2.a.c, 3563u)) | u_input.b.yx));
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec2<u32>(4834u, ~var_7.x << (var_7.x % 32u))));
}

