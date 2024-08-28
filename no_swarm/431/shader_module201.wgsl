struct Struct_1 {
    a: u32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<i32>,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<f32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> bool {
    var var_0 = Struct_1(_wgslsmith_sub_u32(~firstTrailingBit(0u), _wgslsmith_div_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(17301u, 51944u), vec2<u32>(19646u, 11106u)), 39097u), firstLeadingBit(~5407u))), ~vec3<i32>(1i, 1i, 1i));
    let var_1 = ~var_0.b.x;
    var_0 = Struct_1(var_0.a, vec3<i32>(-(~_wgslsmith_mult_i32(-1i, 0i)), ~var_1, 2147483647i));
    let var_2 = Struct_4(Struct_3(-abs(u_input.a.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(569f, 619f, 2330f)))) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-916f, _wgslsmith_f_op_f32(-600f - -512f), _wgslsmith_f_op_f32(step(-477f, 1000f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-993f, 525f, 754f))))), Struct_2(Struct_1(_wgslsmith_add_u32(var_0.a, reverseBits(var_0.a)), ~vec3<i32>(var_0.b.x, -13235i, u_input.b)), Struct_1(var_0.a, vec3<i32>(~u_input.b, _wgslsmith_add_i32(1i, var_0.b.x), min(var_0.b.x, -1i))), abs(~vec4<i32>(var_1, var_0.b.x, var_0.b.x, 1i) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 4294967295u, var_0.a, var_0.a), vec4<u32>(4294967295u, var_0.a, 20154u, var_0.a), vec4<u32>(1u, var_0.a, 1u, var_0.a)) % vec4<u32>(32u))), Struct_1(abs(_wgslsmith_mod_u32(4294967295u, var_0.a)), abs(~vec3<i32>(-12437i, -1i, u_input.a.x))), !(~1u < ~var_0.a)));
    return true;
}

fn func_2(arg_0: vec2<i32>, arg_1: u32) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2501f, 1000f)) * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(686f, 956f)))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-784f, 2050f))))) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-533f, -558f), vec2<f32>(-166f, 594f)) + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1870f, 926f))))))));
    var var_1 = false && all(vec4<bool>(true, !func_3(), all(vec2<bool>(true, true)), all(vec2<bool>(true, true))));
    var var_2 = 34950u;
    let var_3 = select(min(countOneBits(firstLeadingBit(abs(vec4<i32>(u_input.a.x, u_input.a.x, 0i, -13976i)))), firstLeadingBit(vec4<i32>(_wgslsmith_mult_i32(u_input.a.x, u_input.a.x), -u_input.a.x, firstTrailingBit(27294i), u_input.a.x))), vec4<i32>(0i, countOneBits(arg_0.x), u_input.b, 0i), true);
    var var_4 = Struct_3(_wgslsmith_mod_i32(1i, _wgslsmith_div_i32(60319i, countOneBits(~u_input.b))));
    return Struct_4(Struct_3(-(~0i)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f), var_0.x), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(924f, -279f, var_0.x)))))))), Struct_2(Struct_1(min(arg_1, arg_1 & arg_1), var_3.wwx), Struct_1(_wgslsmith_mod_u32(0u, arg_1), -vec3<i32>(u_input.b, -5333i, arg_0.x)), var_3, Struct_1(arg_1, var_3.zyy), true));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec4<i32>) -> f32 {
    let var_0 = true;
    var var_1 = arg_1.x;
    var var_2 = func_2(u_input.a, ~_wgslsmith_mult_u32(1u, 4294967295u | _wgslsmith_clamp_u32(10452u, 4294967295u, 34520u)));
    var var_3 = _wgslsmith_f_op_f32(min(-568f, -1000f));
    var_3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(arg_0.x, _wgslsmith_f_op_f32(func_2(vec2<i32>(arg_1.x, u_input.b), 30899u).b.x * _wgslsmith_f_op_f32(round(var_2.b.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_2.b.x, -1413f))))));
    return 1088f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -542f));
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1759f);
    var var_1 = Struct_4(Struct_3(_wgslsmith_mult_i32(u_input.b, 2147483647i)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_1(vec3<f32>(-2773f, 471f, 931f), vec4<i32>(-28081i, 0i, -47017i, u_input.a.x))))), func_2(firstLeadingBit(vec2<i32>(0i, 0i)), _wgslsmith_sub_u32(15564u, 0u)).b.x, -203f) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -620f), _wgslsmith_f_op_f32(-1783f * _wgslsmith_f_op_f32(716f - 132f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(466f)))))), Struct_2(Struct_1(abs(1u), _wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, 1684i, u_input.b), vec3<i32>(u_input.b, u_input.a.x, u_input.a.x)), vec3<i32>(u_input.a.x, u_input.b, u_input.b))), func_2(_wgslsmith_sub_vec2_i32(u_input.a, u_input.a & vec2<i32>(u_input.a.x, u_input.b)), ~max(0u, 73251u)).c.a, ~(~_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, u_input.a.x, 66247i, u_input.b), vec4<i32>(21857i, 46713i, u_input.b, 2147483647i))), func_2(~u_input.a, 52435u).c.d, false));
    let var_2 = vec3<u32>(~firstTrailingBit(_wgslsmith_div_u32(select(var_1.c.a.a, var_1.c.d.a, true), var_1.c.d.a)), firstTrailingBit(var_1.c.a.a), ~var_1.c.b.a);
    var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(var_1.b.x))));
    var_0 = var_1.b.x;
    let var_3 = _wgslsmith_mult_vec3_u32(~(var_2 >> (select(_wgslsmith_sub_vec3_u32(vec3<u32>(var_1.c.b.a, 0u, var_1.c.b.a), vec3<u32>(var_2.x, var_1.c.d.a, 65176u)), vec3<u32>(var_1.c.a.a, var_1.c.a.a, 4294967295u) | vec3<u32>(var_2.x, 38300u, 45492u), func_2(u_input.a, 4294967295u).c.e) % vec3<u32>(32u))), ~var_2);
    let x = u_input.a;
    s_output = StorageBuffer(21523u, var_2.x, ~var_1.c.d.b.yx, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(var_1.b.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-789f, 276f, true)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(670f * -842f), var_1.b.x)), var_1.c.e)));
}

