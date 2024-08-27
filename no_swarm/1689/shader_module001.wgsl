struct Struct_1 {
    a: f32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-880f, vec2<bool>(true, false));

var<private> global1: vec4<u32> = vec4<u32>(21752u, 55345u, 1u, 0u);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> vec4<u32> {
    var var_0 = max(-31517i, 2147483647i);
    global1 = select(select(reverseBits(_wgslsmith_mult_vec4_u32(max(vec4<u32>(45032u, 4294967295u, u_input.e, 62930u), vec4<u32>(31847u, 18907u, 448u, global1.x)), vec4<u32>(u_input.d, 4294967295u, global1.x, u_input.d) ^ vec4<u32>(u_input.e, u_input.b.x, 40196u, global1.x))), vec4<u32>(u_input.e, 15551u, 1u, ~u_input.b.x), !vec4<bool>(all(vec4<bool>(false, true, true, arg_1.b.x)), !arg_1.b.x, arg_0, global0.b.x)), _wgslsmith_clamp_vec4_u32(firstTrailingBit(vec4<u32>(abs(0u), 87957u, 14436u, u_input.b.x)), ~firstTrailingBit(~vec4<u32>(3622u, u_input.d, 37976u, 4294967295u)), ~(~(vec4<u32>(u_input.d, global1.x, u_input.b.x, u_input.e) & vec4<u32>(u_input.d, u_input.e, global1.x, global1.x)))), vec4<bool>(all(vec2<bool>(any(vec4<bool>(arg_1.b.x, false, false, arg_0)), false)), any(!vec3<bool>(arg_0, false, arg_0)), select(false, arg_1.b.x, global0.b.x | arg_1.b.x), true));
    global1 = ~abs(select(vec4<u32>(~1u, _wgslsmith_mult_u32(1u, 62159u), 1u, u_input.e), firstTrailingBit(vec4<u32>(29149u, 5572u, global1.x, u_input.d)) | firstLeadingBit(vec4<u32>(global1.x, 1u, u_input.b.x, u_input.b.x)), vec4<bool>(all(vec3<bool>(false, global0.b.x, arg_0)), true, arg_1.b.x, false)));
    var var_1 = Struct_2(Struct_1(arg_1.a, arg_1.b), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a - arg_1.a) - _wgslsmith_f_op_f32(-arg_1.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-647f + arg_1.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.a))), 1795f)), 1662f);
    var_0 = u_input.a.x;
    return _wgslsmith_sub_vec4_u32(vec4<u32>((43019u << (~u_input.e % 32u)) << (_wgslsmith_mod_u32(u_input.e ^ global1.x, _wgslsmith_dot_vec4_u32(vec4<u32>(global1.x, 23740u, u_input.e, 4294967295u), vec4<u32>(global1.x, u_input.b.x, 4294967295u, 7474u))) % 32u), abs(global1.x), ~((u_input.d & 7946u) | firstLeadingBit(global1.x)), 17962u), _wgslsmith_clamp_vec4_u32(select(reverseBits(vec4<u32>(global1.x, 0u, global1.x, 0u)) & vec4<u32>(1u, u_input.b.x, 38208u, u_input.b.x), vec4<u32>(global1.x, 0u, 28782u, 4294967295u), arg_0), ~(~vec4<u32>(0u, global1.x, 1u, 0u)), firstTrailingBit(vec4<u32>(u_input.d, 13021u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, 1u, global1.x, 19680u), vec4<u32>(u_input.d, 1u, u_input.b.x, global1.x)), ~global1.x))));
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-1144f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(global0.a, 1170f), _wgslsmith_f_op_f32(f32(-1f) * -642f))))), 400f, 862f);
    var var_1 = !(!select(select(vec4<bool>(true, true, true, true), !vec4<bool>(false, true, arg_1.b.x, true), vec4<bool>(arg_1.b.x, true, arg_1.b.x, global0.b.x)), !vec4<bool>(global0.b.x, false, global0.b.x, arg_1.b.x), vec4<bool>(true, !global0.b.x, true, true)));
    global1 = _wgslsmith_clamp_vec4_u32(func_3(var_1.x, Struct_1(_wgslsmith_f_op_f32(arg_1.a * arg_1.a), var_1.ww)) >> (vec4<u32>(global1.x, ~global1.x, min(46069u, u_input.d), u_input.d) % vec4<u32>(32u)), reverseBits(~select(vec4<u32>(u_input.d, u_input.b.x, u_input.e, global1.x), vec4<u32>(4294967295u, 0u, 4294967295u, 1u), true)), countOneBits(~vec4<u32>(~global1.x, _wgslsmith_div_u32(4294967295u, global1.x), countOneBits(4294967295u), 1u)));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(110f, global0.a))), -1049f)) - _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(355f + -1133f))), _wgslsmith_f_op_f32(ceil(124f)), global0.a);
    var var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, global0.a));
    return Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_1.a, -1131f)) * 1f) * global0.a), -574f)), !(!global0.b));
}

fn func_1(arg_0: i32) -> Struct_1 {
    return func_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(2012f, global0.a, 927f) + vec3<f32>(-2594f, global0.a, global0.a)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a, global0.a, global0.a) - _wgslsmith_f_op_vec3_f32(vec3<f32>(291f, global0.a, global0.a) + vec3<f32>(-909f, global0.a, global0.a))), !(!vec3<bool>(false, true, global0.b.x)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-233f, _wgslsmith_f_op_f32(-global0.a), global0.a))), Struct_1(-194f, global0.b));
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(216f, _wgslsmith_f_op_f32(103f + _wgslsmith_f_op_f32(floor(315f))), global0.a));
    global1 = vec4<u32>(0u, 4294967295u, 1u, ~1u);
    global0 = func_1(u_input.c);
    global1 = vec4<u32>(28322u, 24680u, 0u, u_input.d);
    var var_1 = arg_2.b.x;
    return u_input.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec4<u32>(~(~(~(~1u))), ~select(~1u, 45007u, all(!vec2<bool>(false, global0.b.x))), _wgslsmith_add_u32(~abs(firstTrailingBit(global1.x)), ~u_input.d), ~abs(_wgslsmith_sub_u32(4371u & global1.x, 1u)));
    global1 = ~(~(~(~reverseBits(vec4<u32>(u_input.d, 32482u, 1u, 68506u)))));
    var var_0 = ~select(vec4<u32>(global1.x, 1u, func_4(func_1(-9921i), _wgslsmith_clamp_u32(u_input.b.x, global1.x, u_input.b.x), func_1(25023i)), abs(u_input.e << (4294967295u % 32u))), ~_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.e, u_input.e, 4294967295u, u_input.b.x), ~vec4<u32>(32005u, 6814u, u_input.b.x, 41333u)), select(vec4<bool>(!global0.b.x, true, true, global0.b.x), vec4<bool>(global0.b.x, true, true, global0.b.x), !select(vec4<bool>(true, false, false, global0.b.x), vec4<bool>(true, true, true, global0.b.x), vec4<bool>(false, global0.b.x, global0.b.x, global0.b.x))));
    var var_1 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-154f - -253f) * global0.a), _wgslsmith_f_op_f32(sign(global0.a))), vec2<bool>(true, func_1(_wgslsmith_mod_i32(-6116i, -30414i)).a < _wgslsmith_f_op_f32(f32(-1f) * -2156f)));
    var_0 = ~(vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_div_u32(24327u, var_0.x), 2401u, var_0.x), ~0u, global1.x, _wgslsmith_dot_vec4_u32(func_3(true, Struct_1(var_1.a, var_1.b)), vec4<u32>(var_0.x, 39339u, var_0.x, 1u))) << ((vec4<u32>(24081u, ~var_0.x, 4294967295u, u_input.d) << (vec4<u32>(~global1.x, u_input.b.x, var_0.x, abs(var_0.x)) % vec4<u32>(32u))) % vec4<u32>(32u)));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(712f - var_1.a))), var_1.b);
    let var_3 = Struct_2(Struct_1(var_1.a, var_1.b), _wgslsmith_f_op_vec4_f32(vec4<f32>(-518f, -487f, var_2.a, var_1.a) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-337f, global0.a))), global0.a, _wgslsmith_div_f32(413f, _wgslsmith_f_op_f32(-var_1.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_1.a)) + -1000f))), _wgslsmith_f_op_f32(-global0.a));
    let var_4 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.e, 553f);
}

