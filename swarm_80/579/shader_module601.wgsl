struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec4<u32>,
    c: i32,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
    d: vec3<i32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec4<f32>, 15>;

var<private> global2: Struct_1 = Struct_1(vec3<u32>(4294967295u, 4128u, 2703u));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_2) -> vec2<u32> {
    var var_0 = ~countOneBits(countOneBits(~vec4<u32>(19206u, global2.a.x, 1u, 31693u)));
    var_0 = ~vec4<u32>(4294967295u, global2.a.x, ~(~global2.a.x) ^ 0u, ~_wgslsmith_mult_u32(min(var_0.x, var_0.x), 59911u));
    global2 = Struct_1(var_0.zwy);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1545f * -1187f), _wgslsmith_f_op_f32(sign(988f))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(538f, 1150f) - _wgslsmith_f_op_f32(sign(795f))) + -1417f)));
    var var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1218f * _wgslsmith_f_op_f32(f32(-1f) * -889f)))) >= -192f;
    return var_0.zz;
}

fn func_2(arg_0: Struct_2, arg_1: u32) -> vec2<u32> {
    let var_0 = Struct_2(func_3(Struct_2(min(vec2<u32>(arg_0.a.x, global2.a.x), global2.a.xz), vec4<u32>(global2.a.x, 2225u, 1u, 4294967295u), arg_0.c, arg_0.d)) << (arg_0.b.zy % vec2<u32>(32u)), _wgslsmith_add_vec4_u32(~(vec4<u32>(arg_0.a.x, global2.a.x, arg_0.b.x, 0u) | vec4<u32>(global2.a.x, arg_0.b.x, arg_1, 4294967295u)), arg_0.b), -3209i, ~select(vec4<u32>(countOneBits(arg_1), arg_0.d.x, firstTrailingBit(24803u), 108942u), vec4<u32>(~1u, select(arg_1, arg_1, true), ~arg_0.d.x, arg_0.a.x), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false)), vec4<bool>(false, true, false, true), select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true)))));
    global1 = array<vec4<f32>, 15>();
    let var_1 = arg_0;
    global2 = Struct_1(_wgslsmith_add_vec3_u32(var_1.d.zzy, select(var_1.d.wzz, ~arg_0.d.yxz, select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true))));
    let var_2 = select(vec2<bool>(!any(vec4<bool>(false, true, false, false)) || select(true, true, true), select(any(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false))), true, ~var_1.d.x > 1u)), !(!vec2<bool>(true, all(vec4<bool>(true, true, false, false)))), select(select(vec2<bool>(any(vec3<bool>(true, true, true)), false), vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(false, true), true)), vec2<bool>(select(true, true, false), true), select(!select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false)), !select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(any(vec4<bool>(false, true, true, true)), true))));
    return vec2<u32>(~0u, min(arg_1, 38616u));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec4<f32>, arg_3: vec3<i32>) -> Struct_1 {
    var var_0 = Struct_1(vec3<u32>(~(~arg_1.d.x), abs(~arg_1.b.x << (func_3(arg_0).x % 32u)), arg_1.a.x));
    global1 = array<vec4<f32>, 15>();
    let var_1 = Struct_1(vec3<u32>(1u, ~arg_1.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.a.x, arg_1.a.x, 4294967295u) >> (vec3<u32>(4294967295u, global2.a.x, 78260u) % vec3<u32>(32u)), vec3<u32>(1u, global2.a.x, 0u)) | global2.a.x));
    let var_2 = 740f;
    global1 = array<vec4<f32>, 15>();
    return var_1;
}

fn func_1(arg_0: vec2<bool>) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2688f * 751f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-3509f)) * _wgslsmith_f_op_f32(599f + -453f))), _wgslsmith_f_op_f32(min(-715f, _wgslsmith_f_op_f32(-945f + _wgslsmith_div_f32(826f, -383f)))))) - -1000f);
    global2 = func_4(Struct_2(~max(func_2(Struct_2(vec2<u32>(33342u, 17731u), vec4<u32>(global2.a.x, 4294967295u, global2.a.x, global2.a.x), u_input.a, vec4<u32>(global2.a.x, global2.a.x, global2.a.x, global2.a.x)), 1u), global2.a.yz), ~(vec4<u32>(0u, 1u, 79174u, global2.a.x) << (vec4<u32>(1u, 4294967295u, 2534u, global2.a.x) % vec4<u32>(32u))), -u_input.c, vec4<u32>(_wgslsmith_add_u32(66015u, func_2(Struct_2(vec2<u32>(21192u, 4294967295u), vec4<u32>(global2.a.x, global2.a.x, 0u, global2.a.x), -37559i, vec4<u32>(1u, global2.a.x, global2.a.x, global2.a.x)), global2.a.x).x), global2.a.x, select(~global2.a.x, _wgslsmith_div_u32(4294967295u, global2.a.x), all(vec3<bool>(arg_0.x, arg_0.x, arg_0.x))), global2.a.x)), Struct_2(_wgslsmith_div_vec2_u32(vec2<u32>(1u, firstLeadingBit(global2.a.x)), _wgslsmith_mult_vec2_u32(~global2.a.yz, vec2<u32>(global2.a.x, 4294967295u))), _wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 17761u, 22247u, 0u), vec4<u32>(global2.a.x, global2.a.x, global2.a.x, global2.a.x)) ^ vec4<u32>(1u, global2.a.x, 36979u, 1u), _wgslsmith_mod_vec4_u32(firstTrailingBit(vec4<u32>(87667u, global2.a.x, 85232u, global2.a.x)), vec4<u32>(4294967295u, global2.a.x, 4294967295u, 4294967295u) & vec4<u32>(global2.a.x, 139472u, 84047u, global2.a.x))), u_input.c, _wgslsmith_mod_vec4_u32(~vec4<u32>(global2.a.x, 9895u, 0u, 981u), max(~vec4<u32>(global2.a.x, 21334u, global2.a.x, 4294967295u), ~vec4<u32>(global2.a.x, global2.a.x, global2.a.x, global2.a.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(277f, -331f, 150f, -1006f), vec4<f32>(-1000f, 1376f, 1278f, -264f))))), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(global2.a.x, global2.a.x), 15u)])), _wgslsmith_clamp_vec3_i32(firstLeadingBit(~vec3<i32>(-1i, -2147483647i, u_input.b.x)), reverseBits(u_input.b.zxy), u_input.b.zyw));
    var var_1 = _wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(~(min(0u & global2.a.x, global2.a.x & global2.a.x) ^ global2.a.x), 15u)]);
    global1 = array<vec4<f32>, 15>();
    let var_2 = global2.a.x << (_wgslsmith_mod_u32(4294967295u, 4294967295u) % 32u);
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 48961u;
    let var_0 = firstTrailingBit(countOneBits(u_input.c >> (global2.a.x % 32u)));
    var var_1 = Struct_1(vec3<u32>(~(~global2.a.x & 42514u), func_1(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true))) & _wgslsmith_add_u32(~1u, _wgslsmith_div_u32(0u, global2.a.x)), _wgslsmith_sub_u32(firstTrailingBit(_wgslsmith_mod_u32(global2.a.x, global2.a.x)), _wgslsmith_sub_u32(51762u, 11569u << (global2.a.x % 32u)))));
    let var_2 = var_1.a.x;
    let var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1641f * _wgslsmith_f_op_f32(max(1298f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1051f + -1569f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(364f, _wgslsmith_div_f32(-826f, -1570f)))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -581f))))));
    let x = u_input.a;
    s_output = StorageBuffer(select(global2.a.x, 1u, all(!select(vec2<bool>(true, false), vec2<bool>(true, true), false))), _wgslsmith_f_op_f32(-var_3), _wgslsmith_f_op_f32(-var_3), _wgslsmith_clamp_vec3_i32(vec3<i32>(-24416i, var_0, 5371i), _wgslsmith_clamp_vec3_i32(max(vec3<i32>(u_input.b.x, 0i, var_0), vec3<i32>(u_input.c, var_0, u_input.b.x)) << (~var_1.a % vec3<u32>(32u)), -vec3<i32>(21729i, 38140i, var_0), u_input.b.www ^ ~vec3<i32>(u_input.c, -1i, -1i)), vec3<i32>(-62289i, var_0, -12873i)), _wgslsmith_clamp_vec3_u32(~(~firstLeadingBit(vec3<u32>(var_1.a.x, 34392u, 1u))), vec3<u32>(func_1(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false))), 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), global2.a.yy)), ~var_1.a >> (var_1.a % vec3<u32>(32u))));
}

