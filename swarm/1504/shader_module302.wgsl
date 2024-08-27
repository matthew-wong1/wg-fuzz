struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_3,
    c: vec4<u32>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 25> = array<vec2<i32>, 25>(vec2<i32>(19853i, 1962i), vec2<i32>(-19185i, 0i), vec2<i32>(85583i, i32(-2147483648)), vec2<i32>(-28792i, 670i), vec2<i32>(-1i, 1i), vec2<i32>(2147483647i, 0i), vec2<i32>(1i, -2111i), vec2<i32>(23459i, 35064i), vec2<i32>(53193i, 1i), vec2<i32>(0i, -27820i), vec2<i32>(i32(-2147483648), 49555i), vec2<i32>(-25485i, -3036i), vec2<i32>(-28945i, i32(-2147483648)), vec2<i32>(2147483647i, -5832i), vec2<i32>(-18216i, 35908i), vec2<i32>(37696i, -14660i), vec2<i32>(0i, 18650i), vec2<i32>(-8848i, -1i), vec2<i32>(-60638i, i32(-2147483648)), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(0i, -48035i), vec2<i32>(-65459i, -13940i), vec2<i32>(13752i, 3961i), vec2<i32>(0i, 0i), vec2<i32>(2147483647i, 0i));

var<private> global1: vec4<u32> = vec4<u32>(4294967295u, 1u, 11260u, 4294967295u);

var<private> global2: array<vec4<bool>, 32> = array<vec4<bool>, 32>(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true));

var<private> global3: Struct_1 = Struct_1(2147483647i);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: u32, arg_3: u32) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1093f + 660f)) * -129f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(-653f)), _wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(sign(128f)))))) - _wgslsmith_f_op_f32(f32(-1f) * -575f))));
    let var_1 = vec3<f32>(879f, _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(trunc(var_0)));
    global0 = array<vec2<i32>, 25>();
    global2 = array<vec4<bool>, 32>();
    let var_2 = firstLeadingBit(_wgslsmith_dot_vec4_u32(firstLeadingBit(arg_0), ~vec4<u32>(_wgslsmith_mod_u32(35826u, global1.x), ~1u, firstLeadingBit(u_input.a), firstTrailingBit(4294967295u))));
    return arg_0;
}

fn func_2(arg_0: f32, arg_1: f32) -> Struct_2 {
    global1 = abs(func_3(~vec4<u32>(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(global1.x, 1u, 1u), global1.zwz), u_input.a, u_input.a), Struct_2(~reverseBits(u_input.c), Struct_1(19086i), Struct_1(global3.a)), ~_wgslsmith_add_u32(firstTrailingBit(13038u), _wgslsmith_add_u32(50994u, global1.x)), _wgslsmith_clamp_u32(1u, ~select(4294967295u, 4294967295u, true), global1.x)));
    var var_0 = !all(!global2[_wgslsmith_index_u32(min(1u, global1.x), 32u)]);
    var var_1 = Struct_4(vec4<f32>(arg_0, -519f, arg_1, _wgslsmith_f_op_f32(exp2(arg_0))), Struct_3(Struct_2(_wgslsmith_clamp_vec4_i32(u_input.c, -vec4<i32>(global3.a, 7753i, 46849i, 17084i), _wgslsmith_sub_vec4_i32(u_input.c, u_input.c)), Struct_1(-u_input.c.x), Struct_1(global3.a)), vec3<f32>(703f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -230f))), _wgslsmith_div_f32(arg_1, arg_0))), vec4<u32>(1u << (global1.x % 32u), global1.x, u_input.a, global1.x), ~u_input.c.xyz & u_input.c.wxx);
    global1 = select(_wgslsmith_sub_vec4_u32(var_1.c, vec4<u32>(max(u_input.a >> (70890u % 32u), ~var_1.c.x), ~(~1u), ~4838u, var_1.c.x)), func_3(vec4<u32>(0u, global1.x, 70075u, global1.x) << (var_1.c % vec4<u32>(32u)), Struct_2(vec4<i32>(0i, var_1.d.x, -32246i, var_1.b.a.a.x), var_1.b.a.b, Struct_1(global3.a)), global1.x, global1.x) & abs(vec4<u32>(firstTrailingBit(0u), ~global1.x, ~global1.x, 1u)), true);
    global1 = min(~(~vec4<u32>(var_1.c.x, var_1.c.x, var_1.c.x, 4294967295u) >> (vec4<u32>(50694u, 32283u, var_1.c.x ^ u_input.a, 1u) % vec4<u32>(32u))), vec4<u32>(~1u, 58574u, ~global1.x, ~6023u));
    return var_1.b.a;
}

fn func_4(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: f32) -> Struct_1 {
    global2 = array<vec4<bool>, 32>();
    global0 = array<vec2<i32>, 25>();
    var var_0 = arg_2;
    var var_1 = -348f;
    var var_2 = ~firstTrailingBit(abs(func_3(vec4<u32>(u_input.a, global1.x, 8389u, u_input.a), Struct_2(arg_0.a, arg_0.c, arg_0.c), u_input.a, global1.x).x)) & global1.x;
    return arg_0.b;
}

fn func_1() -> u32 {
    global0 = array<vec2<i32>, 25>();
    global3 = func_4(func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(479f, -1000f)) - _wgslsmith_f_op_f32(f32(-1f) * -552f)), 1f), 471f), -vec3<i32>(_wgslsmith_sub_i32(-global3.a, 1i), _wgslsmith_add_i32(global3.a, _wgslsmith_mod_i32(global3.a, 9224i)), -2147483647i ^ _wgslsmith_mult_i32(global3.a, u_input.c.x)), 1018f);
    var var_0 = Struct_4(vec4<f32>(1f, 1f, 1f, 1f), Struct_3(func_2(413f, -1820f), vec3<f32>(-729f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(343f - -1270f), -752f, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1420f)) - _wgslsmith_f_op_f32(-1000f * -747f)))), _wgslsmith_sub_vec4_u32(~vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(global1.x, 2291u), global1.xz), global1.x, 1u >> (u_input.a % 32u), 1u), ~vec4<u32>(67953u, 1u, 4294967295u, u_input.a)), -(~vec3<i32>(u_input.c.x << (0u % 32u), global3.a, _wgslsmith_dot_vec2_i32(u_input.c.zz, u_input.b))));
    global3 = Struct_1(-1i);
    var var_1 = func_4(var_0.b.a, u_input.c.xwx, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.b.x * _wgslsmith_f_op_f32(-var_0.a.x)) * -1006f));
    return _wgslsmith_dot_vec3_u32(abs(countOneBits(_wgslsmith_mod_vec3_u32(vec3<u32>(74417u, u_input.a, 0u), var_0.c.xzy))), var_0.c.yyz) & ~(~_wgslsmith_dot_vec4_u32(select(vec4<u32>(var_0.c.x, 27139u, u_input.a, 4294967295u), vec4<u32>(1u, 4294967295u, global1.x, 4294967295u), vec4<bool>(true, true, false, false)), ~var_0.c));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~max(func_1(), reverseBits(97780u));
    var var_1 = Struct_4(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1319f, 1000f, -221f, 1018f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(725f, 465f, -623f, -330f))))), vec4<f32>(-783f, 1f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-125f, -803f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -126f), _wgslsmith_f_op_f32(abs(-497f)))), vec4<bool>(false, true, true, true))), Struct_3(Struct_2(_wgslsmith_clamp_vec4_i32(u_input.c, -vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, -450i), ~vec4<i32>(u_input.b.x, -34602i, global3.a, 0i)), func_4(func_2(-350f, -1933f), u_input.c.zzw, -1748f), Struct_1(-1i | u_input.c.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, _wgslsmith_div_f32(-278f, 782f), _wgslsmith_f_op_f32(138f * 1024f)) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 1251f, -731f)))))), firstLeadingBit(vec4<u32>(4294967295u, global1.x & 1u, _wgslsmith_dot_vec2_u32(global1.zy >> (vec2<u32>(30889u, global1.x) % vec2<u32>(32u)), _wgslsmith_add_vec2_u32(vec2<u32>(0u, 76293u), vec2<u32>(1u, var_0))), abs(1u) | _wgslsmith_div_u32(u_input.a, 0u))), ~firstLeadingBit(u_input.c.yww));
    let var_2 = vec3<f32>(var_1.b.b.x, var_1.b.b.x, var_1.b.b.x);
    var_1 = Struct_4(var_1.a, var_1.b, reverseBits(select(max(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, var_0, var_1.c.x, 15113u), var_1.c), ~var_1.c), _wgslsmith_add_vec4_u32(var_1.c, vec4<u32>(31420u, var_1.c.x, global1.x, 1u)), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(global1.x, 0u), 32u)])), max(_wgslsmith_div_vec3_i32(-abs(u_input.c.www), -(~u_input.c.yxy)), ~(~vec3<i32>(u_input.c.x, global3.a, -2147483647i))));
    global0 = array<vec2<i32>, 25>();
    let var_3 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.b.b.x)))), _wgslsmith_f_op_f32(step(657f, var_1.b.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)), var_1.b.b.x)));
    let var_4 = 840f;
    var var_5 = ~0u ^ (global1.x & max(~countOneBits(23956u), reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, var_1.c.x), var_1.c.zx))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(global1.x, min(global1.x << (abs(var_1.c.x) % 32u), global1.x)));
}

