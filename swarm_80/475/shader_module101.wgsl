struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: f32,
    b: vec4<u32>,
    c: f32,
    d: i32,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: vec3<f32>,
    d: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec3<f32>,
    d: vec2<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: vec2<bool>;

var<private> global2: i32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: vec4<f32>, arg_1: bool, arg_2: u32) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(arg_0.wwz, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, 1000f, -1796f) - arg_0.zww)), vec3<bool>(all(!vec4<bool>(true, arg_1, false, arg_1)), !(arg_1 & global1.x), arg_1))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-960f, var_0.x, false)) * -749f), _wgslsmith_f_op_f32(-1750f * arg_0.x))) * -1238f);
    var var_2 = arg_2 <= _wgslsmith_clamp_u32(~arg_2, firstTrailingBit(countOneBits(4294967295u | arg_2)), _wgslsmith_div_u32(max(u_input.b.x, 49965u), firstTrailingBit(_wgslsmith_sub_u32(u_input.b.x, 1u))));
    var var_3 = true;
    let var_4 = Struct_1(~_wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(u_input.b, vec3<u32>(u_input.b.x, arg_2, arg_2)) << (_wgslsmith_sub_vec3_u32(u_input.b, u_input.b) % vec3<u32>(32u)), select(~vec3<u32>(1u, 48991u, 7016u), max(u_input.b, u_input.b), arg_1), u_input.b), 659f, firstLeadingBit(~reverseBits(~arg_2)), true);
    return Struct_3(-43251i);
}

fn func_1(arg_0: u32, arg_1: Struct_1) -> Struct_3 {
    return func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, arg_1.b, -1668f) + vec4<f32>(1095f, 580f, -984f, arg_1.b)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-452f, -407f, -1635f, 1000f), vec4<f32>(-949f, -1000f, 234f, global0.x), true))) + vec4<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(f32(-1f) * -1195f), -890f, _wgslsmith_f_op_f32(-108f + arg_1.b)))), all(!vec2<bool>(all(vec4<bool>(global1.x, true, true, arg_1.d)), all(vec2<bool>(arg_1.d, false)))), _wgslsmith_div_u32(_wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.b.x, arg_1.c), 1u), firstLeadingBit(arg_1.c)) >> (arg_1.a.x % 32u));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec3<u32>) -> f32 {
    let var_0 = ~_wgslsmith_mult_u32(~(arg_2.x & ~arg_2.x), arg_2.x);
    let var_1 = Struct_4(arg_0, Struct_1(vec3<u32>(max(31029u, arg_1.b.x), max(u_input.b.x, arg_1.b.x), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, arg_1.b.x, arg_1.b.x), vec3<u32>(56080u, 1u, var_0))) & firstTrailingBit(~vec3<u32>(var_0, 4294967295u, arg_2.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-411f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(global0.x)))), true)), 21318u, select(all(vec3<bool>(global1.x, false, global1.x)) && all(vec3<bool>(false, global1.x, global1.x)), -556f < _wgslsmith_f_op_f32(sign(112f)), true)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_1.a, global0.x, -338f), vec3<f32>(-1310f, 1054f, 645f))))))), Struct_3(u_input.a));
    var var_2 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(var_1.c.yy, var_1.c.xz)))), vec2<f32>(877f, _wgslsmith_f_op_f32(f32(-1f) * -360f))), _wgslsmith_f_op_vec2_f32(-var_1.c.yy)));
    var var_3 = ~func_2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-570f, global0.x, arg_1.a, 893f)) + vec4<f32>(global0.x, -180f, arg_1.c, var_2.x)))), (_wgslsmith_f_op_f32(148f + -1000f) < _wgslsmith_f_op_f32(trunc(var_1.b.b))) & false, _wgslsmith_mod_u32(~(~73706u), 39544u)).a;
    global2 = -firstLeadingBit(_wgslsmith_dot_vec4_i32(~vec4<i32>(60047i, arg_0.a, -24367i, arg_0.a), min(~vec4<i32>(-1i, var_1.a.a, -2147483647i, u_input.a), vec4<i32>(arg_0.a, 4108i, u_input.a, var_1.a.a))));
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(630f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(Struct_3(abs(u_input.a) ^ u_input.a), Struct_1(u_input.b, _wgslsmith_f_op_f32(func_3(func_1(4294967295u, Struct_1(vec3<u32>(42846u, 4294967295u, u_input.b.x), global0.x, u_input.b.x, true)), Struct_2(_wgslsmith_f_op_f32(-global0.x), vec4<u32>(4294967295u, u_input.b.x, 3891u, 78236u), _wgslsmith_f_op_f32(-1171f - global0.x), i32(-1i) * -55801i), ~vec3<u32>(u_input.b.x, 31753u, 21908u))), ~(_wgslsmith_sub_u32(0u, u_input.b.x) & u_input.b.x), all(select(select(vec4<bool>(false, false, false, global1.x), vec4<bool>(false, global1.x, global1.x, global1.x), vec4<bool>(global1.x, false, global1.x, true)), vec4<bool>(global1.x, false, false, global1.x), !vec4<bool>(true, global1.x, true, true)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, 1435f, -1067f) + vec3<f32>(-1776f, global0.x, global0.x)))))), func_1(reverseBits(u_input.b.x), Struct_1(vec3<u32>(u_input.b.x, 1u, ~4294967295u), _wgslsmith_f_op_f32(global0.x - global0.x), 1u, !all(vec2<bool>(false, true)))));
    var var_1 = var_0.b.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-572f, _wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(674f, -429f) - vec2<f32>(2570f, -1149f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1017f, 1000f)))))), var_0.b.c, vec3<f32>(-822f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(454f + _wgslsmith_f_op_f32(select(var_0.c.x, global0.x, var_0.b.d)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.b)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.b.b, global0.x))))), countOneBits(_wgslsmith_sub_vec2_u32(max(u_input.b.yz >> (vec2<u32>(20740u, u_input.b.x) % vec2<u32>(32u)), vec2<u32>(var_0.b.c, 0u)), ~vec2<u32>(29391u, u_input.b.x) << ((vec2<u32>(12538u, 4294967295u) >> (var_0.b.a.zy % vec2<u32>(32u))) % vec2<u32>(32u)))), abs(88462u));
}

