struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec3<f32> = vec3<f32>(493f, -683f, 758f);

var<private> global2: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(vec4<f32>(-2027f, 1382f, 235f, 632f), 4294967295u, -1002f), Struct_1(vec4<f32>(336f, 794f, -618f, -312f), 4294967295u, -401f), Struct_1(vec4<f32>(-752f, -1381f, -642f, 128f), 0u, 1097f), Struct_1(vec4<f32>(-701f, -393f, -954f, 252f), 73130u, 851f), Struct_1(vec4<f32>(1300f, -768f, -1495f, 712f), 1u, -595f), Struct_1(vec4<f32>(1205f, 168f, 527f, 545f), 0u, 1089f), Struct_1(vec4<f32>(1586f, -645f, -283f, 1305f), 49090u, -1480f), Struct_1(vec4<f32>(416f, 566f, 1733f, -836f), 94020u, 1000f), Struct_1(vec4<f32>(421f, -310f, -1000f, -1437f), 4294967295u, 214f), Struct_1(vec4<f32>(937f, 1531f, -234f, 423f), 9694u, 573f), Struct_1(vec4<f32>(1041f, 158f, -1000f, 1205f), 50408u, -195f), Struct_1(vec4<f32>(1350f, 1079f, 1708f, -978f), 22757u, 757f), Struct_1(vec4<f32>(849f, 253f, -769f, 336f), 42597u, -200f), Struct_1(vec4<f32>(163f, 952f, -1635f, 487f), 0u, 233f), Struct_1(vec4<f32>(-142f, -332f, -904f, 1881f), 62969u, 480f), Struct_1(vec4<f32>(-846f, 262f, 568f, 353f), 118000u, -124f), Struct_1(vec4<f32>(-2768f, -153f, 880f, 832f), 62456u, 464f), Struct_1(vec4<f32>(-780f, 336f, -1489f, -184f), 44009u, -538f), Struct_1(vec4<f32>(470f, 633f, 821f, -105f), 6040u, 1353f));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: vec2<f32>) -> vec4<f32> {
    global2 = array<Struct_1, 19>();
    global0 = Struct_1(global0.a, global0.b, -2060f);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(arg_0.a)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1404f, arg_2.x, -420f, global1.x)))));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec3<u32>) -> Struct_1 {
    var var_0 = global2[_wgslsmith_index_u32(43906u, 19u)];
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(Struct_1(vec4<f32>(-115f, var_0.c, -380f, 1766f), 4294967295u, 854f), u_input.a | u_input.b, _wgslsmith_f_op_vec2_f32(select(global1.yx, vec2<f32>(-585f, global1.x), vec2<bool>(false, true)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, 306f, global1.x, global0.a.x)) - _wgslsmith_f_op_vec4_f32(func_3(Struct_1(var_0.a, 67911u, -1000f), 0i, global0.a.yz)))))), (1u >> (u_input.c % 32u)) << (_wgslsmith_dot_vec2_u32(arg_1.xy, arg_1.zy) % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) + _wgslsmith_f_op_f32(-global1.x)))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(var_0.c)), 1f)))) * -1833f);
    var var_3 = arg_1 | arg_1;
    var_0 = global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(global0.b, 28493u), 19u)];
    return global2[_wgslsmith_index_u32(34783u, 19u)];
}

fn func_4(arg_0: Struct_1, arg_1: i32) -> Struct_1 {
    return func_2(-firstLeadingBit(_wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, 28459i) ^ vec2<i32>(u_input.a, 0i), vec2<i32>(u_input.a, -2147483647i) << (vec2<u32>(u_input.c, 5678u) % vec2<u32>(32u)))), reverseBits(_wgslsmith_mult_vec3_u32(vec3<u32>(~global0.b, arg_0.b, _wgslsmith_dot_vec4_u32(vec4<u32>(94585u, 11091u, arg_0.b, u_input.c), vec4<u32>(8801u, 0u, 4294967295u, 0u))), ~vec3<u32>(4294967295u, 0u, global0.b) ^ ~vec3<u32>(1168u, u_input.c, global0.b))));
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_1) -> u32 {
    global2 = array<Struct_1, 19>();
    let var_0 = u_input.a;
    var var_1 = vec2<u32>(35982u, global0.b);
    let var_2 = true;
    var var_3 = func_4(func_2(-(-vec2<i32>(var_0, -57254i) >> (abs(vec2<u32>(72302u, arg_1.b)) % vec2<u32>(32u))), vec3<u32>(arg_1.b, _wgslsmith_mult_u32(_wgslsmith_mod_u32(global0.b, arg_1.b), ~0u), 1u)), var_0 | 24027i);
    return firstLeadingBit(~4294967295u);
}

fn func_5(arg_0: vec4<i32>, arg_1: u32) -> Struct_1 {
    global1 = global0.a.yyw;
    var var_0 = func_4(global2[_wgslsmith_index_u32(0u ^ (1u >> (firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.b, 54216u, 4294967295u), vec3<u32>(79953u, arg_1, global0.b))) % 32u)), 19u)], _wgslsmith_mult_i32(arg_0.x, arg_0.x));
    var var_1 = select(vec3<bool>(true, true, true), vec3<bool>(true, any(vec4<bool>(true, true, true, true)) & select(var_0.b >= var_0.b, true, true), (i32(-1i) * -u_input.b) <= abs(u_input.b)), true);
    var_1 = vec3<bool>(!(!all(select(vec4<bool>(false, var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, var_1.x, false, false), vec4<bool>(false, var_1.x, var_1.x, var_1.x)))), all(vec3<bool>(!any(vec3<bool>(true, var_1.x, true)), true, !var_1.x)), ~(~global0.b) >= _wgslsmith_dot_vec2_u32(vec2<u32>(global0.b, arg_1) ^ _wgslsmith_clamp_vec2_u32(vec2<u32>(14237u, 1u), vec2<u32>(883u, u_input.c), vec2<u32>(4294967295u, 82515u)), ~vec2<u32>(1u, 1u)));
    let var_2 = select(!select(var_1.zz, !vec2<bool>(false, var_1.x), var_1.xy), vec2<bool>(arg_0.x >= (_wgslsmith_clamp_i32(arg_0.x, arg_0.x, -1i) >> (91593u % 32u)), any(!select(vec3<bool>(var_1.x, true, var_1.x), vec3<bool>(false, var_1.x, true), var_1.x))), _wgslsmith_add_u32(global0.b, 4294967295u) >= ~u_input.c);
    return global2[_wgslsmith_index_u32(0u, 19u)];
}

fn func_6(arg_0: f32, arg_1: Struct_1) -> Struct_1 {
    let var_0 = true || (_wgslsmith_div_i32(_wgslsmith_mult_i32(u_input.a, u_input.b) << (~4294967295u % 32u), u_input.b) >= 0i);
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(max(global0.a, _wgslsmith_f_op_vec4_f32(arg_1.a - _wgslsmith_f_op_vec4_f32(-global0.a)))), arg_1.a)), arg_1.b & u_input.c, 678f);
    let var_1 = ~(~_wgslsmith_mod_vec2_u32(~_wgslsmith_mult_vec2_u32(vec2<u32>(global0.b, 19164u), vec2<u32>(972u, u_input.c)), ~_wgslsmith_div_vec2_u32(vec2<u32>(arg_1.b, 1u), vec2<u32>(41695u, global0.b))));
    var var_2 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(reverseBits(0u), global0.b), 19u)];
    let var_3 = func_4(arg_1, ~select(u_input.b, abs(u_input.b) | 63397i, true));
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = global2[_wgslsmith_index_u32(~7141u, 19u)];
    global1 = global0.a.wzw;
    var var_0 = func_6(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global1.x - 129f))))) - global1.x), func_5(select(vec4<i32>(1i, -1i, u_input.a, u_input.b) << (vec4<u32>(11577u, 38663u, global0.b, u_input.c) % vec4<u32>(32u)), abs(vec4<i32>(u_input.b, -9786i, 8580i, u_input.a)), true) | firstLeadingBit(~vec4<i32>(21664i, u_input.b, 0i, 2147483647i)), ~_wgslsmith_mod_u32(~u_input.c, func_1(global0.a, Struct_1(global0.a, u_input.c, global1.x)))));
    global2 = array<Struct_1, 19>();
    global1 = global0.a.zxy;
    let var_1 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-var_0.a));
}

