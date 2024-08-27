struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: f32,
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> i32 {
    var var_0 = Struct_1(u_input.a, arg_0.b & reverseBits(arg_0.b), ~(_wgslsmith_add_vec3_u32(~arg_0.c, ~vec3<u32>(0u, 90400u, 10213u)) | _wgslsmith_sub_vec3_u32(~arg_0.c, abs(arg_0.c))));
    let var_1 = vec3<u32>(arg_0.a, _wgslsmith_add_u32(~max(1u, arg_1.c.x), ~(4294967295u << (0u % 32u))), ~select(39726u, arg_1.c.x, true)) ^ vec3<u32>(min(~(~arg_0.c.x), 0u), max(var_0.c.x, arg_1.a), 42929u);
    var_0 = arg_1;
    let var_2 = select(arg_1.b.zz, vec2<i32>(arg_0.b.x << (~26127u % 32u), 1i), vec2<bool>(true, true));
    var_0 = arg_0;
    return max(-u_input.c, 2147483647i) & -2147483647i;
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: u32) -> vec3<bool> {
    let var_0 = Struct_1(0u, _wgslsmith_sub_vec3_i32(select(_wgslsmith_sub_vec3_i32(select(vec3<i32>(u_input.c, -13519i, u_input.c), vec3<i32>(35909i, u_input.c, u_input.c), true), vec3<i32>(u_input.c, 52982i, -1010i) & vec3<i32>(0i, u_input.c, u_input.c)), firstTrailingBit(vec3<i32>(11033i, u_input.c, u_input.c) & vec3<i32>(2147483647i, -2147483647i, u_input.c)), vec3<bool>(true, true, true)), -vec3<i32>(i32(-1i) * -50623i, func_3(Struct_1(arg_2, vec3<i32>(u_input.c, -296i, u_input.c), vec3<u32>(27335u, u_input.b, 1u)), Struct_1(17494u, vec3<i32>(u_input.c, -2147483647i, -1i), vec3<u32>(arg_0, u_input.b, arg_0)), 0u), -1i | u_input.c)), vec3<u32>(~reverseBits(arg_0 << (32410u % 32u)), _wgslsmith_add_u32(~_wgslsmith_sub_u32(arg_0, u_input.b), _wgslsmith_mod_u32(_wgslsmith_add_u32(arg_0, 117199u), ~u_input.b)), abs(~4294967295u)));
    let var_1 = u_input.b;
    return select(!vec3<bool>(any(vec4<bool>(true, true, true, true)), false, true), !select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), any(vec3<bool>(false, true, true))), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), all(vec2<bool>(false, true)))), all(vec4<bool>(select(false, false, true), true, true, var_0.b.x >= u_input.c))));
}

fn func_4(arg_0: f32, arg_1: vec3<bool>, arg_2: u32) -> Struct_1 {
    let var_0 = all(select(func_2(~arg_2 & (1u << (u_input.a % 32u)), 1588f, 1260u).xy, select(vec2<bool>(true, false), arg_1.yy, false), arg_1.x));
    var var_1 = _wgslsmith_sub_u32(firstLeadingBit(~_wgslsmith_mult_u32(arg_2 >> (u_input.b % 32u), arg_2)), ~(_wgslsmith_mult_u32(_wgslsmith_div_u32(45170u, u_input.b), ~0u) >> (~(39333u ^ arg_2) % 32u)));
    var_1 = ~1u;
    var_1 = ~72085u;
    let var_2 = Struct_1(1u, ~abs(vec3<i32>(u_input.c, firstTrailingBit(u_input.c), ~27508i)), ~vec3<u32>(4294967295u, countOneBits(~89084u), _wgslsmith_div_u32(~arg_2, _wgslsmith_clamp_u32(arg_2, u_input.a, 1u))));
    return Struct_1(8814u, max(countOneBits(firstTrailingBit(var_2.b)), ~var_2.b) & _wgslsmith_div_vec3_i32(var_2.b, -var_2.b), var_2.c);
}

fn func_1(arg_0: bool, arg_1: vec3<f32>, arg_2: i32) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_f32(-1f);
    var var_1 = func_4(_wgslsmith_f_op_f32(1531f + _wgslsmith_f_op_f32(trunc(var_0))), select(vec3<bool>(all(vec3<bool>(false, arg_0, arg_0)), !arg_0, arg_0 & any(vec4<bool>(arg_0, false, arg_0, false))), !vec3<bool>(arg_0, all(vec2<bool>(arg_0, arg_0)), arg_0), !func_2(~0u, _wgslsmith_f_op_f32(f32(-1f) * -298f), ~u_input.b)), 1u);
    var var_2 = Struct_1(~abs(~1022u >> (u_input.a % 32u)), ~var_1.b, ~max(~vec3<u32>(1u, 13622u, var_1.a), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, 19695u, var_1.a), _wgslsmith_add_vec3_u32(var_1.c, var_1.c))));
    var var_3 = select(firstLeadingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(abs(var_1.c.x), 39938u, ~0u, ~0u), vec4<u32>(4294967295u, _wgslsmith_mult_u32(4624u, var_1.c.x), u_input.a & var_2.c.x, 4294967295u | var_1.a))), min(vec4<u32>(var_2.a, 4294967295u, 51290u, firstTrailingBit(select(0u, 0u, true))), abs(vec4<u32>(abs(9899u), ~u_input.b, var_2.a, ~63884u))), select(vec4<bool>(arg_0, any(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, arg_0, arg_0), vec4<bool>(false, false, false, arg_0))), true, select(select(true, arg_0, true), !arg_0, arg_0)), vec4<bool>(arg_0, true, true, arg_0), !(!(!vec4<bool>(true, false, true, arg_0)))));
    var var_4 = Struct_1(_wgslsmith_dot_vec3_u32(~(~(~vec3<u32>(var_3.x, u_input.b, 8504u))), _wgslsmith_add_vec3_u32(~var_3.xyz, min(vec3<u32>(4294967295u, 0u, var_1.a), ~vec3<u32>(var_3.x, u_input.a, var_3.x)))), _wgslsmith_mult_vec3_i32(select(_wgslsmith_sub_vec3_i32(-var_1.b, var_1.b), -func_4(arg_1.x, vec3<bool>(arg_0, arg_0, true), 38557u).b, _wgslsmith_clamp_i32(-2147483647i, arg_2, arg_2) != 1i), vec3<i32>(~(~arg_2), (var_2.b.x | arg_2) & countOneBits(44075i), 1i)), (~(~vec3<u32>(0u, var_1.a, var_2.a)) << (select(~vec3<u32>(var_3.x, 4294967295u, var_1.c.x), var_1.c, !vec3<bool>(false, arg_0, true)) % vec3<u32>(32u))) >> (countOneBits(_wgslsmith_add_vec3_u32(vec3<u32>(var_3.x, 12636u, 1u) >> (vec3<u32>(var_1.a, 1u, u_input.b) % vec3<u32>(32u)), var_1.c ^ var_2.c)) % vec3<u32>(32u)));
    return var_1.b;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> StorageBuffer {
    let var_0 = countOneBits(vec3<i32>(arg_1.b.x, _wgslsmith_dot_vec2_i32((arg_0.b.zx ^ vec2<i32>(arg_0.b.x, -1i)) | _wgslsmith_mult_vec2_i32(arg_0.b.zz, vec2<i32>(arg_1.b.x, 1i)), abs(vec2<i32>(1i, arg_0.b.x)) << (vec2<u32>(3699u, 1u) % vec2<u32>(32u))), arg_0.b.x));
    var var_1 = all(select(vec4<bool>(true, true, !(arg_1.b.x > 2147483647i), !any(vec2<bool>(false, true))), select(select(vec4<bool>(true, false, true, false), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), false), true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, all(vec4<bool>(true, false, true, true)), true, true)), true & (any(vec3<bool>(true, false, false)) && true)));
    let var_2 = func_4(_wgslsmith_f_op_f32(f32(-1f) * -311f), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, any(vec2<bool>(false, true))), vec3<bool>(true, true, true)), !any(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false)))), ~_wgslsmith_sub_u32(~select(53425u, 26526u, true), select(1u, _wgslsmith_dot_vec3_u32(arg_1.c, vec3<u32>(26017u, u_input.b, arg_1.a)), select(true, false, false))));
    var var_3 = false;
    var_1 = true;
    return StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(vec3<f32>(1774f, -1575f, -370f), vec3<f32>(751f, -205f, 492f)), vec3<f32>(1335f, -876f, -1348f))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1004f), -366f, _wgslsmith_f_op_f32(f32(-1f) * -455f))))), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, arg_0.c.x, arg_1.c.x | arg_0.a), vec3<u32>(_wgslsmith_add_u32(u_input.a, 30243u), 24224u, 4294967295u)) << (firstLeadingBit(~min(vec3<u32>(u_input.b, u_input.b, arg_1.a), arg_1.c)) % vec3<u32>(32u)), arg_1.c, _wgslsmith_f_op_f32(-869f * -138f));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(Struct_1(48108u, -_wgslsmith_add_vec3_i32(vec3<i32>(u_input.c, 0i, u_input.c), vec3<i32>(u_input.c, u_input.c, -67634i)) & _wgslsmith_mult_vec3_i32(func_1(true, vec3<f32>(-603f, -529f, -2835f), 70191i), ~vec3<i32>(12467i, 38408i, 27720i)), select(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 8944u)), max(u_input.a, u_input.a), 0u), vec3<u32>(~u_input.a, 57250u, func_4(-1630f, vec3<bool>(false, false, false), 0u).a), !func_2(41627u, -1000f, u_input.b))), func_4(-326f, vec3<bool>(_wgslsmith_div_u32(u_input.a, u_input.b) < _wgslsmith_dot_vec2_u32(vec2<u32>(51430u, u_input.a), vec2<u32>(0u, 4294967295u)), ~u_input.b != 0u, func_2(1u, -514f, u_input.b).x), 11018u));
}

