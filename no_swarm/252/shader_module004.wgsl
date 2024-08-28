struct Struct_1 {
    a: vec3<u32>,
    b: vec2<f32>,
    c: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: f32,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> vec4<f32> {
    let var_0 = Struct_1(~firstTrailingBit(u_input.c), _wgslsmith_div_vec2_f32(vec2<f32>(2153f, 517f), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(691f - -1000f), _wgslsmith_f_op_f32(round(-276f)))))), 4524u);
    let var_1 = !global0.x | global0.x;
    let var_2 = vec2<i32>(-u_input.a, u_input.d.x);
    global0 = vec4<bool>(any(global0.wz), true & !(min(var_2.x, 0i) > reverseBits(44907i)), false, false);
    global0 = select(select(vec4<bool>(global0.x || false, all(global0.yzw), any(select(vec4<bool>(false, false, false, var_1), vec4<bool>(true, var_1, var_1, true), var_1)), global0.x), vec4<bool>(false, any(!vec2<bool>(global0.x, global0.x)), all(vec2<bool>(true, true)), select(true, !var_1, 4294967295u != u_input.c.x)), vec4<bool>(var_1, false, _wgslsmith_f_op_f32(max(var_0.b.x, 1000f)) <= -348f, any(vec4<bool>(global0.x, global0.x, true, true)) && global0.x)), select(!(!select(vec4<bool>(var_1, false, false, var_1), vec4<bool>(false, true, global0.x, var_1), true)), !(!select(vec4<bool>(true, var_1, global0.x, false), vec4<bool>(var_1, global0.x, false, global0.x), false)), vec4<bool>(true, !(!var_1), select(true, global0.x, true), !var_1)), -411f < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.b.x, var_0.b.x)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.b.x, var_0.b.x, global0.x)) + _wgslsmith_f_op_f32(-1000f * var_0.b.x))));
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(1710f, var_0.b.x, -320f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(-1928f))))));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec3<f32>) -> f32 {
    var var_0 = u_input.d.x;
    var var_1 = true;
    var_0 = _wgslsmith_div_i32(_wgslsmith_mod_i32(select(select(0i, countOneBits(-23150i), any(vec2<bool>(global0.x, global0.x))), select(-u_input.b.x, 1i, !global0.x), arg_0.x > 100f), u_input.d.x), -49607i);
    var_0 = _wgslsmith_mult_i32(11127i, u_input.b.x & u_input.d.x);
    let var_2 = 46585u ^ u_input.c.x;
    return _wgslsmith_f_op_f32(ceil(arg_0.x));
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_1(u_input.c, vec2<f32>(350f, _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3())), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-114f, 225f, 600f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(289f, 395f, 1323f))))))), u_input.e);
    let var_1 = Struct_1(~u_input.c, _wgslsmith_f_op_vec2_f32(var_0.b - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.x, var_0.b.x)) * _wgslsmith_f_op_vec2_f32(floor(var_0.b))) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(max(var_0.b, var_0.b)))))), 31336u);
    var var_2 = 680f;
    let var_3 = true;
    var var_4 = var_1;
    return Struct_2(!global0.wyz, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -367f)), ~vec2<u32>(~var_4.a.x | _wgslsmith_add_u32(1u, u_input.c.x), 0u));
}

fn func_1() -> bool {
    let var_0 = func_2();
    let var_1 = _wgslsmith_dot_vec4_u32(~vec4<u32>(_wgslsmith_div_u32(15674u, ~var_0.c.x), 1u, 4294967295u ^ _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.c.x, var_0.c.x, 53372u, 7232u), vec4<u32>(u_input.c.x, 0u, 4294967295u, u_input.e)), ~_wgslsmith_sub_u32(var_0.c.x, 4294967295u)), vec4<u32>(1u, max(~var_0.c.x, ~(~u_input.c.x)), _wgslsmith_dot_vec4_u32(~min(vec4<u32>(23287u, 1u, 0u, var_0.c.x), vec4<u32>(55534u, var_0.c.x, u_input.e, 50368u)), ~vec4<u32>(u_input.e, 59515u, var_0.c.x, var_0.c.x)), ~(~_wgslsmith_add_u32(0u, var_0.c.x))));
    global0 = vec4<bool>(!any(vec3<bool>(global0.x, var_0.a.x, var_0.a.x)) == !(true | (-309f <= var_0.b)), 11541u == u_input.c.x, false, func_2().a.x);
    let var_2 = vec2<u32>(abs(0u ^ (_wgslsmith_mult_u32(0u, var_1) & 74627u)), var_0.c.x);
    let var_3 = Struct_1(_wgslsmith_mult_vec3_u32(u_input.c, vec3<u32>(var_2.x, var_1, ~u_input.c.x) << (u_input.c % vec3<u32>(32u))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(184f - var_0.b), _wgslsmith_f_op_f32(select(var_0.b, var_0.b, global0.x))) - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b, var_0.b))))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(round(var_0.b)), _wgslsmith_f_op_f32(-var_0.b)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2261f), _wgslsmith_f_op_f32(var_0.b * 1337f))))), _wgslsmith_add_u32(_wgslsmith_sub_u32(4294967295u, reverseBits(19618u)), _wgslsmith_dot_vec4_u32(vec4<u32>(56563u, var_0.c.x, var_2.x, 1u) << (vec4<u32>(5166u, 1u, 37504u, var_2.x) % vec4<u32>(32u)), vec4<u32>(var_2.x, 53598u, 23550u, var_1) ^ reverseBits(vec4<u32>(var_1, 8446u, 18362u, 0u)))));
    return all(vec3<bool>(var_0.a.x, global0.x, global0.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(global0.zzw, _wgslsmith_f_op_f32(exp2(1f)), _wgslsmith_clamp_vec2_u32(firstLeadingBit(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(76736u, 0u), u_input.c.xy), ~u_input.c.x)), ~firstLeadingBit(u_input.c.xx), u_input.c.xy));
    var var_1 = func_1();
    let var_2 = select(-firstLeadingBit(-countOneBits(vec3<i32>(2147483647i, 1i, u_input.b.x))), vec3<i32>(_wgslsmith_dot_vec3_i32(firstLeadingBit(~vec3<i32>(2147483647i, u_input.b.x, -21283i)), (vec3<i32>(-2147483647i, -31337i, u_input.d.x) >> (u_input.c % vec3<u32>(32u))) & vec3<i32>(u_input.a, 1i, 1i)), 2147483647i, u_input.b.x), select(var_0.a, select(global0.wxx, var_0.a, func_2().a), global0.wwx));
    let var_3 = Struct_1(~vec3<u32>(var_0.c.x, _wgslsmith_sub_u32(var_0.c.x, firstLeadingBit(1u)), 80328u), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0.b, var_0.b))))))), reverseBits(_wgslsmith_mult_u32(max(100886u, 9550u), u_input.e)));
    let var_4 = _wgslsmith_add_i32(firstTrailingBit(-7485i >> (~u_input.e % 32u)) << (0u % 32u), 0i);
    var_1 = !(((i32(-1i) * -var_4) == (var_2.x ^ firstTrailingBit(var_4))) || var_0.a.x);
    let var_5 = _wgslsmith_dot_vec3_i32(vec3<i32>(select(~var_2.x, _wgslsmith_div_i32(var_2.x, 0i), !var_0.a.x), ~var_4 ^ ~var_4, var_2.x) << (~(~vec3<u32>(87134u, 52397u, 1u)) % vec3<u32>(32u)), ~min(var_2, select(var_2 & var_2, firstLeadingBit(vec3<i32>(-1i, u_input.b.x, -65780i)), vec3<bool>(global0.x, var_0.a.x, var_0.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(675f, ~max(vec4<u32>(~60956u, 39453u, var_3.a.x ^ u_input.e, 14500u & var_0.c.x), abs(vec4<u32>(4294967295u, 1u, 4294967295u, var_3.c) >> (vec4<u32>(var_0.c.x, 10507u, var_3.c, u_input.e) % vec4<u32>(32u)))), -2343i, _wgslsmith_f_op_f32(-var_3.b.x));
}

