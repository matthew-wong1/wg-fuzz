struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: f32,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: Struct_1,
    d: vec3<f32>,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 14> = array<i32, 14>(1i, 1i, 0i, 2147483647i, i32(-2147483648), 0i, -13190i, 2147483647i, 25856i, -5577i, 2147483647i, 2147483647i, 2147483647i, 1i);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_2) -> i32 {
    var var_0 = arg_0.b;
    global0 = array<i32, 14>();
    var_0 = 9002u;
    let var_1 = arg_0.c;
    var var_2 = _wgslsmith_f_op_f32(select(var_1.a, arg_0.c.c, var_1.b.x)) == _wgslsmith_f_op_f32(round(192f));
    return (min(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(global0[_wgslsmith_index_u32(4294967295u, 14u)], u_input.a.x), countOneBits(global0[_wgslsmith_index_u32(32979u, 14u)]), abs(u_input.a.x)), 63799i) << (_wgslsmith_clamp_u32(~(arg_0.b << (var_1.e % 32u)), ~max(arg_0.e.x, 1u), _wgslsmith_div_u32(firstLeadingBit(arg_0.e.x), var_1.e)) % 32u)) & u_input.a.x;
}

fn func_2() -> Struct_2 {
    let var_0 = -883f;
    var var_1 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-225f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_0, -187f), vec2<f32>(var_0, 304f)) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0, var_0), vec2<f32>(var_0, 3082f), false))))) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-500f, -885f))))))))));
    let var_2 = -func_3(Struct_2(firstTrailingBit(28064u) >> (~1u % 32u), _wgslsmith_clamp_u32(~0u, 0u, ~15267u), Struct_1(-519f, select(vec2<bool>(false, false), vec2<bool>(false, true), true), 1f, _wgslsmith_f_op_f32(-var_1.x), 56906u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_1.x, var_0, var_0), vec3<f32>(-465f, var_0, var_1.x))), vec4<u32>(82076u, ~1u, ~32859u, ~4294967295u)));
    global0 = array<i32, 14>();
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(498f, var_0))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(698f, var_0) * vec2<f32>(var_0, var_0))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.x, var_1.x), vec2<f32>(var_1.x, var_0), true)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_1.x, 731f))), vec2<bool>(true, true))))) + _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(638f, -955f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, -475f)))))));
    return Struct_2(~firstTrailingBit(_wgslsmith_clamp_u32(46979u, 4294967295u, 0u)) ^ (~(~93046u) << (~(~0u) % 32u)), max(1u, ~1u), Struct_1(_wgslsmith_f_op_f32(floor(-533f)), vec2<bool>(!all(vec4<bool>(true, true, true, false)), false), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0, var_0))) * var_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0 + 1598f))) - _wgslsmith_div_f32(_wgslsmith_div_f32(var_0, -721f), var_0)), ~1u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1898f, -1820f, var_0)))), reverseBits(vec4<u32>(countOneBits(4294967295u), 1u, ~_wgslsmith_clamp_u32(32141u, 24233u, 1u), ~reverseBits(4294967295u))));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec2<u32>, arg_2: f32, arg_3: f32) -> vec3<bool> {
    var var_0 = func_2();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(arg_3)), -1117f)) * 1024f)) != _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(arg_2)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_2().d.x * _wgslsmith_f_op_f32(arg_2 + -360f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.c.a)) * -588f)))));
    let var_2 = func_2().c;
    var_0 = Struct_2(_wgslsmith_mod_u32(43650u, 29402u), _wgslsmith_mult_u32(arg_1.x, 4294967295u), Struct_1(-310f, !(!var_0.c.b), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1491f, _wgslsmith_f_op_f32(floor(-842f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -407f) * _wgslsmith_f_op_f32(arg_3 * -1585f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1370f, _wgslsmith_f_op_f32(-arg_2)))), ~(~firstLeadingBit(8073u))), _wgslsmith_div_vec3_f32(var_0.d, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-881f, arg_0.x, var_0.c.c))), var_0.d, any(vec3<bool>(var_2.b.x, var_2.b.x, true))))), vec4<u32>(~1u, 80241u, select(var_0.c.e, ~0u, false && var_0.c.b.x) & arg_1.x, min(var_0.c.e | _wgslsmith_clamp_u32(var_0.e.x, arg_1.x, var_0.b), var_2.e)));
    var var_3 = u_input.a.yww;
    return !(!select(select(vec3<bool>(true, true, true), !vec3<bool>(true, var_0.c.b.x, false), var_0.c.b.x), select(vec3<bool>(var_0.c.b.x, false, var_0.c.b.x), !vec3<bool>(false, var_0.c.b.x, false), select(vec3<bool>(var_2.b.x, false, true), vec3<bool>(false, var_0.c.b.x, var_0.c.b.x), true)), var_2.b.x));
}

fn func_4(arg_0: vec3<bool>, arg_1: vec3<f32>, arg_2: f32, arg_3: f32) -> StorageBuffer {
    let var_0 = arg_2;
    let var_1 = ~(~(~_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 0u, 17736u), _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 3345u, 65532u), vec3<u32>(0u, 36938u, 1250u), vec3<u32>(70945u, 1u, 3067u)))));
    let var_2 = func_2();
    global0 = array<i32, 14>();
    var var_3 = var_2;
    return StorageBuffer(~select(~var_3.a, min(var_2.c.e, _wgslsmith_add_u32(29079u, 137229u)), var_2.c.b.x), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_2.d.x, -1228f, _wgslsmith_f_op_f32(249f + -1189f), _wgslsmith_f_op_f32(-575f - var_3.d.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false))), select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), true)), vec3<bool>(true, true, true), false), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec3<bool>(false, true, false))), func_1(vec4<f32>(-679f, 740f, -1000f, -862f), firstTrailingBit(vec2<u32>(4294967295u, 15346u)), _wgslsmith_f_op_f32(f32(-1f) * -1707f), -200f), func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(160f, -707f, -833f, 592f)), reverseBits(vec2<u32>(26024u, 1u)), _wgslsmith_f_op_f32(-2448f + -959f), -285f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(435f, -1140f, -1849f) + vec3<f32>(119f, -1000f, -133f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(608f, -851f, -398f)), false)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 185f, -457f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1106f, -821f, 1673f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1322f * 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1808f) - 602f)))), _wgslsmith_f_op_f32(-202f + 110f));
}

