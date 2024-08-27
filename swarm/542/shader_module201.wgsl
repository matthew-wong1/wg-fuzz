struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec4<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-1000f, 995f, -880f, -392f);

var<private> global1: vec2<i32> = vec2<i32>(-15323i, 1i);

var<private> global2: bool;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec4<u32>) -> i32 {
    let var_0 = _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -981f));
    global1 = abs(select(-(_wgslsmith_mod_vec2_i32(vec2<i32>(global1.x, 0i), vec2<i32>(global1.x, global1.x)) << (vec2<u32>(arg_1.x, 1u) % vec2<u32>(32u))), vec2<i32>(-22718i, ~(u_input.a ^ u_input.a)), true));
    var var_1 = countOneBits(~reverseBits(max(~16146u, arg_1.x)));
    let var_2 = select(!(!vec4<bool>(true, true, true, var_0 > var_0)), vec4<bool>(select(true, true, true), true, true, any(vec2<bool>(true, true))), true);
    var_1 = countOneBits(~(~2236u));
    return -firstTrailingBit(~1i);
}

fn func_3() -> f32 {
    global2 = false;
    var var_0 = Struct_1(_wgslsmith_add_i32(36389i, global1.x));
    var_0 = Struct_1(-(i32(-1i) * -2147483647i));
    var var_1 = Struct_3(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0.x + 1479f))));
    var var_2 = 0i;
    return global0.x;
}

fn func_4(arg_0: bool, arg_1: vec3<f32>) -> vec2<u32> {
    var var_0 = ~(~vec4<u32>(1u, 1u, 1u, 1u));
    var var_1 = _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(-vec3<i32>(global1.x, select(2326i, u_input.a, arg_0), u_input.a), _wgslsmith_sub_vec3_i32(min(vec3<i32>(0i, global1.x, 16387i), vec3<i32>(global1.x, -1i, global1.x)), firstLeadingBit(vec3<i32>(u_input.a, 0i, 0i))) & ~(-vec3<i32>(u_input.a, 24729i, 502i))), max(max(vec3<i32>(u_input.a, u_input.a, 14373i), max(vec3<i32>(-67051i, -2147483647i, u_input.a), vec3<i32>(1215i, -1i, global1.x))), ~vec3<i32>(1i, 0i, global1.x) >> (~var_0.zxy % vec3<u32>(32u))) ^ reverseBits(~max(vec3<i32>(0i, 23289i, global1.x), vec3<i32>(global1.x, -2147483647i, 1i))));
    var var_2 = _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, firstTrailingBit(var_0.x)), var_0.wx);
    let var_3 = Struct_2(Struct_1(func_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.x, 714f, arg_1.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, arg_1.x, global0.x)), select(vec3<bool>(true, arg_0, false), vec3<bool>(arg_0, true, arg_0), arg_0))), ~(~vec4<u32>(var_0.x, var_0.x, 4020u, var_0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(724f * -288f))) - global0.x));
    global0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x))) * _wgslsmith_f_op_f32(var_3.b - _wgslsmith_f_op_f32(f32(-1f) * -1008f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(254f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(-361f))))))), -334f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)))));
    return ~(min(~(vec2<u32>(69332u, var_0.x) << (vec2<u32>(62790u, 87406u) % vec2<u32>(32u))), ~(~var_0.wy)) | var_0.ww);
}

fn func_2() -> u32 {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(round(global0.x))));
    global1 = vec2<i32>(2348i, global1.x);
    global1 = (~vec2<i32>(_wgslsmith_sub_i32(27547i, u_input.a), _wgslsmith_mult_i32(global1.x, u_input.a)) << (~(_wgslsmith_clamp_vec2_u32(vec2<u32>(8491u, 4294967295u), vec2<u32>(4294967295u, 0u), vec2<u32>(0u, 14366u)) << (vec2<u32>(1u, 1u) % vec2<u32>(32u))) % vec2<u32>(32u))) >> (func_4(true, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -399f), var_0.a, _wgslsmith_f_op_f32(func_3())) + global0.yxz)) % vec2<u32>(32u));
    var var_1 = _wgslsmith_add_vec4_u32(select(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(~(~28658u), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(52625u, 17862u, 0u)), 22523u, max(0u, 2000u) << (_wgslsmith_div_u32(1u, 1u) % 32u)), vec4<bool>(global0.x <= _wgslsmith_f_op_f32(-var_0.a), true, true & (global0.x <= -501f), all(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false))))), firstLeadingBit(~vec4<u32>(_wgslsmith_mult_u32(1u, 4294967295u), 1u, ~4294967295u, ~0u)));
    let var_2 = any(select(vec3<bool>(all(vec3<bool>(true, true, true)), true, true), select(vec3<bool>(false, all(vec3<bool>(false, false, false)), true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true)), vec3<bool>(false, true, false)), false), !(all(vec2<bool>(false, true)) && false)));
    return max(_wgslsmith_clamp_u32(4294967295u, _wgslsmith_mult_u32(~(47412u >> (var_1.x % 32u)), reverseBits(var_1.x)), ~select(~1u, ~var_1.x, var_2)), ~(~var_1.x) >> (firstTrailingBit(countOneBits(1u)) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = false;
    var var_0 = firstLeadingBit(vec4<i32>(i32(-1i) * -u_input.a, ~(-23367i), ~(~global1.x) >> (1u % 32u), global1.x >> (~(~0u) % 32u)));
    global0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0.x, _wgslsmith_div_f32(global0.x, global0.x), global0.x, _wgslsmith_f_op_f32(global0.x * 471f)))), vec4<f32>(-2165f, 419f, _wgslsmith_div_f32(-945f, -914f), _wgslsmith_f_op_f32(2223f - _wgslsmith_f_op_f32(global0.x - 1000f)))))));
    global1 = -(~var_0.wx);
    var_0 = _wgslsmith_sub_vec4_i32(reverseBits(vec4<i32>(global1.x, -1i, _wgslsmith_mult_i32(0i, u_input.a) & firstTrailingBit(0i), func_1(_wgslsmith_f_op_vec3_f32(global0.yww + vec3<f32>(1092f, -618f, global0.x)), ~vec4<u32>(0u, 103199u, 0u, 38107u)))), ~vec4<i32>(-global1.x, min(-2147483647i, 0i), -2147483647i, _wgslsmith_mult_i32(var_0.x, var_0.x)) ^ ~max(abs(vec4<i32>(-1i, 2147483647i, 1353i, 0i)), select(vec4<i32>(var_0.x, global1.x, 0i, -13701i), vec4<i32>(-14534i, global1.x, global1.x, var_0.x), false)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), firstLeadingBit(vec4<u32>(886u, 0u, 13445u, 42057u))), 0u, _wgslsmith_add_u32(0u, 1u), func_2()) >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)), ~(~vec3<i32>(2147483647i, 0i, ~u_input.a)), _wgslsmith_mult_vec2_i32(~vec2<i32>(~6943i, 0i), ~(vec2<i32>(2147483647i, 0i) | vec2<i32>(var_0.x, var_0.x))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(839f, -469f, -1047f, global0.x) - vec4<f32>(-890f, -978f, global0.x, global0.x))))))), -u_input.a);
}

