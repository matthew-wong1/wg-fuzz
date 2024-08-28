struct Struct_1 {
    a: vec3<i32>,
    b: f32,
}

struct Struct_2 {
    a: u32,
    b: vec2<bool>,
    c: vec2<i32>,
}

struct Struct_3 {
    a: i32,
    b: vec4<bool>,
    c: f32,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<f32>,
    c: vec4<i32>,
}

struct Struct_5 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: f32,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 6>;

var<private> global1: vec2<u32>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_2(arg_0: bool) -> vec4<f32> {
    let var_0 = ~1u;
    global1 = u_input.a.ww;
    global0 = array<vec3<f32>, 6>();
    global1 = ~abs(~(~(~u_input.e.zx)));
    global0 = array<vec3<f32>, 6>();
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-933f, 383f, true)), -364f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -415f) + _wgslsmith_div_f32(-713f, -327f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(154f)), -324f), -1307f)), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(658f, _wgslsmith_div_f32(-549f, -1137f))), -552f), 622f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-660f - 1280f)))), -881f));
}

fn func_1(arg_0: vec2<u32>, arg_1: f32, arg_2: vec3<i32>) -> Struct_5 {
    let var_0 = true || all(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true)));
    var var_1 = vec3<bool>(all(vec3<bool>(var_0, true, !(!var_0))), !var_0, true);
    return Struct_5(_wgslsmith_f_op_vec4_f32(func_2(var_1.x)), ~(-_wgslsmith_div_vec3_i32(u_input.d, arg_2)), 362f, vec2<u32>(0u, 0u));
}

fn func_3() -> bool {
    var var_0 = Struct_4(Struct_3(u_input.d.x, select(vec4<bool>(select(true, true, true), true, any(vec4<bool>(false, true, false, true)), true), vec4<bool>(true, u_input.c <= 18577i, select(true, true, true), select(true, false, false)), true), _wgslsmith_f_op_f32(-2410f + 214f), Struct_1(u_input.d, 1f), Struct_2(_wgslsmith_clamp_u32(global1.x, firstLeadingBit(4294967295u), _wgslsmith_sub_u32(global1.x, global1.x)), vec2<bool>(all(vec3<bool>(false, false, true)), true), _wgslsmith_div_vec2_i32(vec2<i32>(0i, 19474i), u_input.d.xy))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1325f * 283f), -277f, _wgslsmith_f_op_f32(select(-376f, -1000f, true)), _wgslsmith_f_op_vec4_f32(func_2(true)).x) * _wgslsmith_f_op_vec4_f32(floor(func_1(u_input.a.xx, 578f, u_input.d).a))) + _wgslsmith_f_op_vec4_f32(func_2(all(vec2<bool>(true, true))))), select(_wgslsmith_sub_vec4_i32(~vec4<i32>(u_input.c, -2147483647i, u_input.c, u_input.c) ^ -vec4<i32>(u_input.d.x, -4793i, 10163i, 11218i), vec4<i32>(reverseBits(u_input.c), u_input.d.x | 24377i, ~2147483647i, 1i >> (0u % 32u))), -_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, u_input.d.x, -1i, -18215i) & vec4<i32>(u_input.c, 46287i, -1i, 43345i), _wgslsmith_sub_vec4_i32(vec4<i32>(18680i, -36460i, -1i, 2147483647i), vec4<i32>(u_input.c, u_input.c, u_input.d.x, u_input.d.x))), true));
    let var_1 = _wgslsmith_f_op_vec4_f32(var_0.b + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.b)), vec4<f32>(_wgslsmith_f_op_f32(-func_1(vec2<u32>(var_0.a.e.a, u_input.e.x), 1242f, vec3<i32>(u_input.d.x, var_0.c.x, -1i)).c), _wgslsmith_f_op_f32(1000f + var_0.b.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -531f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1194f + -894f), _wgslsmith_f_op_f32(var_0.a.d.b - var_0.a.c)))), true)));
    let var_2 = var_0.a.e;
    let var_3 = reverseBits(var_0.a.e.a);
    global1 = _wgslsmith_mult_vec2_u32(vec2<u32>(~countOneBits(~38202u), var_2.a), ~u_input.e.xy);
    return !(var_0.a.e.b.x && true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(u_input.a.xy, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(697f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(226f + -1145f) - _wgslsmith_f_op_f32(floor(-1298f))))), firstTrailingBit(vec3<i32>(-4369i, u_input.d.x, firstLeadingBit(u_input.c))));
    var var_1 = func_1(~(u_input.e.xy | _wgslsmith_mod_vec2_u32(abs(vec2<u32>(var_0.d.x, global1.x)), ~var_0.d)), _wgslsmith_f_op_f32(-var_0.c), _wgslsmith_mod_vec3_i32(~countOneBits(abs(var_0.b)), vec3<i32>(~u_input.c, ~u_input.d.x, -2147483647i) & u_input.d));
    global0 = array<vec3<f32>, 6>();
    var_1 = Struct_5(_wgslsmith_f_op_vec4_f32(-var_0.a), -_wgslsmith_mult_vec3_i32(var_1.b, var_1.b), _wgslsmith_f_op_f32(2066f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1f)))), reverseBits(~vec2<u32>(~46482u, var_0.d.x)));
    var var_2 = Struct_4(Struct_3(81367i, select(vec4<bool>(7810u >= var_0.d.x, true, 37073u >= var_1.d.x, func_3()), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), true))), 1000f, Struct_1(vec3<i32>(func_1(var_0.d, 166f, u_input.d).b.x, -2147483647i, 0i), var_0.c), Struct_2(57348u, select(vec2<bool>(true, false), vec2<bool>(false, true), true), var_0.b.xx)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.a) - var_1.a)), _wgslsmith_mod_vec4_i32(vec4<i32>(var_1.b.x, i32(-1i) * -10489i, var_0.b.x, -1i), ~firstTrailingBit(vec4<i32>(var_1.b.x, 19639i, 0i, var_0.b.x))) >> (firstTrailingBit(abs(~u_input.a)) % vec4<u32>(32u)));
    let var_3 = ~vec4<i32>(var_1.b.x, var_0.b.x, max(-28127i, u_input.d.x), var_0.b.x);
    var_2 = Struct_4(var_2.a, var_1.a, max(var_2.c, vec4<i32>(~var_0.b.x, var_2.c.x, -73253i, var_3.x)));
    let var_4 = _wgslsmith_dot_vec4_i32(-countOneBits(~(~var_3)), var_3);
    var var_5 = select(all(var_2.a.b.xx), select(select(true, var_2.a.b.x, false), any(vec4<bool>(true, false, var_2.a.b.x, var_2.a.b.x)) & var_2.a.b.x, false), var_2.a.e.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, -297f, var_1.a.x, 1f) + vec4<f32>(func_1(var_1.d, 1000f, var_3.xxw).c, 1f, 2074f, var_0.a.x)), var_0.a), var_1.b.xx);
}

