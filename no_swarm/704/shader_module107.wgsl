struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: i32,
    d: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: u32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(1665f, vec3<f32>(-155f, -1000f, 602f), 2875i, 47361u);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: Struct_1) -> u32 {
    global0 = Struct_1(global0.b.x, global0.b, -7028i, u_input.a.x);
    let var_0 = Struct_1(global0.a, _wgslsmith_f_op_vec3_f32(min(arg_0.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(step(global0.b, global0.b)))) - arg_0.b))), ~_wgslsmith_sub_i32(-global0.c, 1i), global0.d);
    global0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b.x - arg_0.a)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.b + var_0.b) * _wgslsmith_div_vec3_f32(vec3<f32>(198f, 725f, -1000f), vec3<f32>(935f, 1776f, -691f))) + arg_0.b))), reverseBits(77349i << (_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_0.d, global0.d, 0u, global0.d), ~vec4<u32>(global0.d, var_0.d, 9582u, var_0.d)) % 32u)), ~arg_0.d);
    let var_1 = _wgslsmith_mod_u32(0u, 4294967295u);
    var var_2 = -(-u_input.c.x << (_wgslsmith_dot_vec4_u32(~vec4<u32>(global0.d, arg_0.d, global0.d, var_1) ^ vec4<u32>(57176u, global0.d, global0.d, 62416u), firstLeadingBit(vec4<u32>(var_1, var_0.d, 16665u, var_1))) % 32u));
    return var_1;
}

fn func_1(arg_0: bool, arg_1: Struct_1) -> Struct_1 {
    var var_0 = arg_1.b.x;
    var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -652f)));
    let var_1 = vec4<bool>(_wgslsmith_clamp_u32(u_input.d.x, abs(arg_1.d), u_input.d.x) > u_input.d.x, true, true, arg_0);
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-arg_1.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_1.b.x)) - _wgslsmith_f_op_f32(-arg_1.a))), -153f), global0.b.x);
    var var_3 = Struct_1(arg_1.a, _wgslsmith_f_op_vec3_f32(-global0.b), ~(-1i), _wgslsmith_dot_vec4_u32(vec4<u32>(~arg_1.d | ~4294967295u, max(3449u, func_2(Struct_1(1449f, arg_1.b, global0.c, 0u))), min(func_2(arg_1), arg_1.d | u_input.b.x), abs(select(global0.d, arg_1.d, true))), ~_wgslsmith_mod_vec4_u32(~vec4<u32>(global0.d, 24163u, global0.d, global0.d), ~vec4<u32>(11485u, 8118u, global0.d, 84116u))));
    return Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_1.a, _wgslsmith_f_op_f32(2352f - var_3.a))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_2.x)))))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_3.b.x), var_3.b.x)), var_3.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -394f))) * _wgslsmith_f_op_f32(round(var_3.b.x))), _wgslsmith_f_op_f32(-1060f + _wgslsmith_f_op_f32(-arg_1.b.x))), countOneBits(_wgslsmith_mult_i32(-91305i, u_input.c.x)), countOneBits(arg_1.d));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    var var_0 = func_1(arg_3, Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1026f))), 878f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(176f, arg_1.a, global0.b.x), vec3<f32>(-1169f, -269f, 1446f))))), -2147483647i, ~1u));
    var var_1 = func_1(arg_3, Struct_1(_wgslsmith_f_op_f32(1111f - _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-185f, -1000f), -1137f, false))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, 696f, 1507f))))), _wgslsmith_mult_i32(-var_0.c, global0.c & func_1(arg_3, arg_2).c), reverseBits(var_0.d)));
    var var_2 = u_input.c.xy;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1113f, _wgslsmith_f_op_f32(round(-1111f))))));
    global0 = func_1(true && (~global0.c <= 1i), Struct_1(_wgslsmith_f_op_f32(1458f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-908f, global0.b.x)) + func_1(true, arg_2).a)), _wgslsmith_f_op_vec3_f32(select(func_1(true, Struct_1(var_0.b.x, vec3<f32>(-804f, -2103f, var_1.a), -5234i, 7361u)).b, arg_2.b, arg_3)), u_input.c.x, func_1(arg_3, Struct_1(_wgslsmith_div_f32(arg_2.b.x, 1394f), _wgslsmith_f_op_vec3_f32(-arg_1.b), 18344i, ~0u)).d));
    return Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a - -552f)))), var_1.b, func_1(false, Struct_1(-621f, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(floor(var_1.b)))), -62880i, 1u)).c, arg_2.d);
}

fn func_4(arg_0: Struct_1) -> vec4<bool> {
    global0 = Struct_1(-150f, global0.b, ~(-(~2147483647i)), u_input.a.x);
    global0 = func_1(true || (-386f < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -367f) - arg_0.b.x)), Struct_1(-1000f, _wgslsmith_f_op_vec3_f32(abs(arg_0.b)), -2147483647i, 18309u));
    global0 = Struct_1(_wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-1915f * -745f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(global0.b.x, -138f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global0.b.x, -148f)) * _wgslsmith_f_op_f32(f32(-1f) * -281f))), vec3<f32>(global0.a, global0.b.x, _wgslsmith_f_op_f32(step(-1399f, -503f))))), global0.c, arg_0.d);
    return vec4<bool>(func_3(firstTrailingBit(max(u_input.c.x, arg_0.c)), Struct_1(arg_0.a, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_0.a, global0.a, global0.a))), u_input.c.x, ~global0.d), arg_0, true).d >= ~0u, true, !all(!select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false))), (abs(-global0.c) | 2147483647i) != u_input.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(~u_input.b.x, 1u, firstTrailingBit(0u | u_input.d.x) | (_wgslsmith_add_u32(~global0.d, ~8147u) | u_input.d.x), _wgslsmith_mod_u32(74895u, 66326u));
    var var_1 = select(!func_4(func_3(firstLeadingBit(u_input.c.x), func_1(true, Struct_1(1050f, vec3<f32>(-1219f, global0.a, global0.a), global0.c, 0u)), func_1(true, Struct_1(307f, vec3<f32>(-544f, -236f, 1000f), 2147483647i, global0.d)), 638f <= global0.a)), vec4<bool>(false, true, true, !func_4(Struct_1(global0.a, global0.b, -747i, 1u)).x & true), any(func_4(func_1(true, func_3(global0.c, Struct_1(1573f, vec3<f32>(-537f, -1525f, -1448f), 12742i, 65925u), Struct_1(-1952f, global0.b, 23967i, 35520u), true))).xyx));
    let var_2 = ~_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(~firstTrailingBit(var_0.yw), vec2<u32>(4294967295u, abs(0u))), u_input.d.zz);
    let x = u_input.a;
    s_output = StorageBuffer(global0.c, ~_wgslsmith_add_u32(var_0.x, 38169u), 0i, _wgslsmith_add_u32(u_input.d.x, ~var_2), vec2<i32>(-global0.c, u_input.c.x));
}

