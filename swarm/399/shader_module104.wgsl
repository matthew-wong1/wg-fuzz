struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
}

struct Struct_3 {
    a: i32,
    b: f32,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
    c: i32,
    d: f32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_3) -> vec4<u32> {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1378f)), 1415f, _wgslsmith_f_op_f32(sign(257f)), 519f);
    let var_1 = -1000f;
    var_0 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.b), -642f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(arg_0.b)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-645f)))), _wgslsmith_f_op_f32(abs(-549f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1, var_1, 2329f, var_0.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b, 3914f, 462f, -788f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(697f, 1638f, 490f, 1000f)))) + _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-659f, var_1, var_0.x, -298f))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1097f, 275f, arg_0.b, -873f)))), vec4<f32>(_wgslsmith_f_op_f32(-1000f - var_1), arg_0.b, _wgslsmith_f_op_f32(sign(var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -802f)))), vec4<bool>(_wgslsmith_mod_i32(_wgslsmith_div_i32(u_input.c.x, -1i), ~2147483647i) == 2147483647i, all(vec3<bool>(true, true, true)), true, all(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), false)))));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1537f, 1169f, arg_0.b, var_1))) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-279f, arg_0.b, var_1, -618f), vec4<f32>(var_1, var_0.x, -359f, 445f))))))));
    let var_2 = !(!(!vec3<bool>(1075u > u_input.b.x, any(vec4<bool>(false, false, false, true)), u_input.b.x == 0u)));
    return vec4<u32>(61820u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.b.x, global0.x), countOneBits(vec3<u32>(global0.x, u_input.d.x, u_input.d.x))), global0.x | 28581u, u_input.a) ^ vec4<u32>(28939u, global0.x, global0.x, u_input.a);
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: vec4<u32>, arg_3: vec2<i32>) -> bool {
    global0 = select(~countOneBits(func_3(Struct_3(-1519i, 1333f))), ~firstTrailingBit(arg_2), true);
    var var_0 = 1u;
    var var_1 = select(firstLeadingBit(abs(_wgslsmith_mod_vec3_u32(arg_2.wwy, arg_2.wwy))) ^ ~vec3<u32>(global0.x << (global0.x % 32u), ~4294967295u, arg_2.x), _wgslsmith_mult_vec3_u32(arg_2.yzy, abs(abs(vec3<u32>(20707u, 1u, 1u)))) | min(reverseBits(vec3<u32>(arg_2.x, u_input.a, u_input.b.x)), global0.zwx), select(select(vec3<bool>(all(vec2<bool>(false, true)), true, select(false, false, false)), !select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true), select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), false), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), true), vec3<bool>(true, true, true))), select(select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), false), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true)), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(false, (arg_3.x != arg_3.x) == all(vec2<bool>(true, true)), false)));
    var_0 = countOneBits(~(~abs(~arg_2.x)));
    let var_2 = Struct_1(any(select(!select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), false), vec4<bool>(true, true, true, true), any(vec4<bool>(true, true, true, true)))), u_input.c, ~min((1u >> (global0.x % 32u)) << (_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, arg_2.x), vec2<u32>(var_1.x, 19278u)) % 32u), ~(25787u >> (var_1.x % 32u))));
    return any(select(!vec2<bool>(!var_2.a, true), !select(vec2<bool>(var_2.a, true), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(var_2.a, false), vec2<bool>(false, var_2.a))), false));
}

fn func_1(arg_0: vec2<i32>) -> vec3<u32> {
    let var_0 = !vec3<bool>(any(vec4<bool>(true, false, true, false)) | !all(vec4<bool>(true, true, true, false)), true, func_2(67472i, _wgslsmith_mod_i32(-arg_0.x, ~2147483647i), vec4<u32>(u_input.d.x, _wgslsmith_clamp_u32(global0.x, 4294967295u, global0.x), abs(u_input.d.x), ~4843u), u_input.c.yy));
    global0 = ~(~firstLeadingBit(abs(~vec4<u32>(2050u, u_input.a, 0u, 0u))));
    global0 = ~(((~vec4<u32>(15335u, 83565u, u_input.d.x, 1u) | select(vec4<u32>(45220u, global0.x, 55066u, 42329u), vec4<u32>(59471u, u_input.d.x, global0.x, global0.x), var_0.x)) >> (~(vec4<u32>(global0.x, u_input.a, 28155u, 48442u) >> (vec4<u32>(global0.x, global0.x, 46559u, u_input.a) % vec4<u32>(32u))) % vec4<u32>(32u))) ^ reverseBits(select(vec4<u32>(global0.x, 50429u, 49035u, u_input.b.x) | vec4<u32>(global0.x, 4294967295u, 0u, 1u), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, global0.x, global0.x), vec4<u32>(36312u, 17432u, 1u, 93478u)), !vec4<bool>(false, var_0.x, var_0.x, var_0.x))));
    let var_1 = arg_0.x;
    var var_2 = Struct_2(Struct_1(true, vec3<i32>(arg_0.x, var_1, 24274i), _wgslsmith_clamp_u32(1u, ~max(global0.x, 4294967295u), global0.x)), !var_0.xy);
    return u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~countOneBits(~(~vec4<u32>(u_input.d.x, global0.x, 0u, 23975u)));
    global0 = vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_div_u32(_wgslsmith_add_u32(u_input.a, u_input.b.x << (u_input.a % 32u)), 73314u), _wgslsmith_sub_u32(global0.x, ~u_input.d.x) & global0.x), 1u, 21343u, global0.x);
    var var_0 = Struct_1(any(!vec3<bool>(true, 34462i == u_input.c.x, true)), firstTrailingBit(_wgslsmith_mod_vec3_i32(firstTrailingBit(vec3<i32>(u_input.c.x, -1i, -13253i)), _wgslsmith_mult_vec3_i32(u_input.c, vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x)))) << (func_1(vec2<i32>(-20957i, -1i | u_input.c.x)) % vec3<u32>(32u)), max(u_input.d.x, u_input.a));
    var_0 = Struct_1(false, var_0.b, global0.x);
    let var_1 = -1i;
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-930f * 501f), _wgslsmith_f_op_f32(trunc(-1784f))), _wgslsmith_div_f32(-199f, _wgslsmith_f_op_f32(select(-502f, -1000f, true)))) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -461f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(1000f)), _wgslsmith_f_op_f32(round(-762f)))))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-986f, -732f))))), vec2<f32>(-348f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(613f)) - _wgslsmith_f_op_f32(floor(-301f)))), vec2<bool>(!all(vec3<bool>(var_0.a, true, false)), true))));
    let var_3 = !(-1000f >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_2.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-435f - -341f)))));
    let var_4 = max(~4294967295u, _wgslsmith_div_u32(~u_input.b.x ^ var_0.c, ~4294967295u)) >> (_wgslsmith_clamp_u32(~1u, _wgslsmith_div_u32(~_wgslsmith_div_u32(u_input.b.x, global0.x), _wgslsmith_dot_vec3_u32(global0.wzx, u_input.b >> (vec3<u32>(global0.x, 15648u, var_0.c) % vec3<u32>(32u)))), 39412u << (~select(u_input.d.x, 27756u, true) % 32u)) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(select(~(~18603u), ~9445u, var_0.a), _wgslsmith_sub_u32(46881u, global0.x)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, var_2.x, 979f, 912f)), vec4<f32>(-851f, var_2.x, _wgslsmith_f_op_f32(-var_2.x), -984f), var_0.a)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_2.x, var_2.x, 1352f, var_2.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, var_2.x, -102f, -301f) + vec4<f32>(-427f, var_2.x, var_2.x, -153f)))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(476f, var_2.x, var_2.x, -1071f)))))), var_3 | false)), -2147483647i, var_2.x, vec4<u32>(4294967295u, _wgslsmith_clamp_u32(firstTrailingBit(0u), u_input.d.x, var_0.c), global0.x, ~max(4294967295u, u_input.b.x)) >> (func_3(Struct_3(u_input.c.x, _wgslsmith_f_op_f32(-var_2.x))) % vec4<u32>(32u)));
}

