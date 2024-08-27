struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: vec2<i32>,
    d: vec4<u32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec3<bool>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
    c: i32,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_2,
    c: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 16> = array<vec4<bool>, 16>(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true));

var<private> global1: vec4<bool>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_4) -> f32 {
    return arg_1.c;
}

fn func_2() -> Struct_3 {
    global1 = vec4<bool>((~countOneBits(67338u) & u_input.a) > ~24265u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_4(vec4<i32>(0i, 0i, 1i, -2147483647i), Struct_2(-1298f, vec3<bool>(false, true, false)), 1760f), Struct_4(vec4<i32>(0i, 6557i, 4683i, 1i), Struct_2(-442f, global1.yxw), -208f)))) == _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1000f)), _wgslsmith_f_op_f32(f32(-1f) * -708f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -355f))), true, global1.x);
    let var_0 = _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(1i, -2147483647i, countOneBits(1i), select(64275i, 1i, global1.x)) << (countOneBits(vec4<u32>(u_input.a, 15053u, 4294967295u, u_input.a) ^ vec4<u32>(u_input.a, u_input.a, 1u, u_input.a)) % vec4<u32>(32u)), select(-vec4<i32>(-384i, 0i, 0i, -2147483647i), vec4<i32>(_wgslsmith_add_i32(0i, 2147483647i), 22774i, 0i, min(0i, 1i)), global0[_wgslsmith_index_u32(57732u, 16u)])), vec4<i32>(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(-21375i, -20860i, -14051i)), -_wgslsmith_mult_vec3_i32(vec3<i32>(21990i, 0i, -24640i), vec3<i32>(1i, 1i, 35595i))), -(~(-18477i)), ~2147483647i, -5430i));
    global0 = array<vec4<bool>, 16>();
    var var_1 = _wgslsmith_sub_vec4_u32(~firstTrailingBit(vec4<u32>(51018u, u_input.a, u_input.a, u_input.a)) ^ ((_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, 56067u, 9146u, u_input.a), vec4<u32>(8349u, 4294967295u, u_input.a, u_input.a), vec4<u32>(u_input.a, 52601u, u_input.a, u_input.a)) >> (vec4<u32>(4294967295u, 0u, 4294967295u, u_input.a) % vec4<u32>(32u))) << (_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(0u, 1u, 1u, u_input.a) ^ vec4<u32>(u_input.a, 22008u, 1u, u_input.a)) % vec4<u32>(32u))), firstTrailingBit(abs(vec4<u32>(u_input.a, u_input.a, 1u, 1u))) >> ((_wgslsmith_div_vec4_u32(abs(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)), ~vec4<u32>(u_input.a, 0u, 0u, 35325u)) & firstLeadingBit(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 4294967295u, 4294967295u, u_input.a), vec4<u32>(24025u, 54711u, 0u, 1u)))) % vec4<u32>(32u)));
    let var_2 = select(!global1.x | (var_0 > ~(-7364i)), global1.x, (_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(Struct_4(vec4<i32>(-43845i, -22936i, -2797i, -1i), Struct_2(-1035f, vec3<bool>(global1.x, true, global1.x)), -471f), Struct_4(vec4<i32>(2147483647i, var_0, 2147483647i, var_0), Struct_2(-1929f, vec3<bool>(global1.x, true, true)), 1050f))), _wgslsmith_div_f32(224f, 838f)) > _wgslsmith_f_op_f32(-239f * _wgslsmith_f_op_f32(-1867f + 185f))) | true);
    return Struct_3(!(!global1.xx), Struct_2(1f, vec3<bool>((var_2 | true) || (global1.x && false), var_0 >= _wgslsmith_sub_i32(-63490i, -1514i), !(global1.x & false))), firstTrailingBit(countOneBits(1i)));
}

fn func_1(arg_0: f32) -> vec2<bool> {
    var var_0 = func_2();
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(740f, var_0.b.a) - vec2<f32>(var_0.b.a, var_0.b.a)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.a, 407f)), true))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(636f, arg_0) * vec2<f32>(-120f, arg_0)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.a, 826f))))));
    let var_2 = vec4<u32>(abs(0u), 34365u, 35541u, ~abs((1u | u_input.a) << (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 1u), vec2<u32>(1u, u_input.a)) % 32u)));
    var var_3 = Struct_1(~var_2.xyw, max(var_2.x, ~(~var_2.x)), ~(~(-(vec2<i32>(0i, 1i) | vec2<i32>(var_0.c, var_0.c)))), _wgslsmith_sub_vec4_u32(~vec4<u32>(4294967295u, _wgslsmith_mult_u32(u_input.a, u_input.a), ~var_2.x, var_2.x), var_2), !var_0.b.b);
    let var_4 = vec3<i32>(var_3.c.x, _wgslsmith_dot_vec3_i32(~(-(~vec3<i32>(-11375i, var_3.c.x, 2147483647i))), countOneBits(min(vec3<i32>(var_0.c, 0i, -4952i), min(vec3<i32>(2147483647i, -12055i, -1i), vec3<i32>(var_0.c, var_3.c.x, -63111i))))), countOneBits(var_3.c.x));
    return vec2<bool>(true, global1.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(select(select(select(vec2<bool>(true, global1.x), select(vec2<bool>(global1.x, false), vec2<bool>(true, global1.x), global1.x), global1.yx), select(vec2<bool>(global1.x, false), global1.xx, func_1(992f)), func_2().a), global1.xz, vec2<bool>((global1.x && false) & true, false)), Struct_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(287f - _wgslsmith_div_f32(1196f, -954f)))), select(select(vec3<bool>(global1.x, false, true), vec3<bool>(global1.x, false, true), true), vec3<bool>(true, global1.x, true), !any(vec4<bool>(global1.x, false, false, true)))), _wgslsmith_clamp_i32(~_wgslsmith_clamp_i32(~1i, 1i, i32(-1i) * -22581i), 0i, ~_wgslsmith_div_i32(-2147483647i, i32(-1i) * -2147483647i)));
    var var_1 = var_0.b.b;
    var var_2 = ~vec4<u32>(u_input.a, ~(u_input.a | u_input.a), ~1u ^ u_input.a, 1u) >> (vec4<u32>((1u >> (u_input.a % 32u)) & u_input.a, reverseBits(u_input.a), ~7074u, 4294967295u) % vec4<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1881f), var_0.b.a))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(Struct_4(vec4<i32>(var_0.c, var_0.c, -2147483647i, -2256i), Struct_2(var_0.b.a, var_0.b.b), var_0.b.a), Struct_4(vec4<i32>(var_0.c, -1i, 0i, 145i), var_0.b, var_0.b.a))), _wgslsmith_f_op_f32(-var_0.b.a)) - -532f)));
}

